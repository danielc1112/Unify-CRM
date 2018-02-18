unit udDuplicateContacts;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, udBaseProgram, StdCtrls, ExtCtrls, ComCtrls, Buttons, GradPnl, Grids,
  DBGrids, SMDBGrid, DB, IBODataset, Spin;

type
  TdDuplicates = class(TdBaseProgram)
    dbgReport: TSMDBGrid;
    dsReport: TDataSource;
    qryReport: TIBOQuery;
    btnExport: TSpeedButton;
    cboGroupBy: TComboBox;
    lblField: TLabel;
    qryFields: TIBOQuery;
    mtbFieldsFIELD_NAME: TStringField;
    mtbFieldsDISPLAY_NAME: TStringField;
    edtCount: TSpinEdit;
    lbl1: TLabel;
    mtbReportPerc: TFloatField;
    mtbReportDUPLICATE: TStringField;
    mtbReportCCOUNT: TIntegerField;
    qryContactCount: TIBOQuery;
    mtbContactCountCONTACTCOUNT: TIntegerField;
    btnConditions: TButton;
    mtbReportsub_perc: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnExportClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cboGroupByChange(Sender: TObject);
    procedure qryReportCalcFields(DataSet: TDataSet);
    procedure cboWhereChange(Sender: TObject);
    procedure cboOperatorChange(Sender: TObject);
    procedure edtValueChange(Sender: TObject);
    procedure edtCountChange(Sender: TObject);
    procedure btnConditionsClick(Sender: TObject);
  private
    fContactCount : Integer;
    fWhereClause : string;
    procedure ShowReport;
    procedure FillComboBox;
    procedure ContactCount;
  public

  end;

  procedure Duplicates(aOwner : TComponent);

implementation

uses uuCoreData, udReportConditions;

{$R *.dfm}

procedure Duplicates(aOwner : TComponent);
var
   lDuplicates : TdDuplicates;
begin
   lDuplicates := TdDuplicates.Create(aOwner);
   try
      lDuplicates.ShowModal;
   finally
      FreeAndNil(lDuplicates);
   end;
end;

procedure TdDuplicates.FormCreate(Sender: TObject);
begin
   inherited;
   fWhereClause := '';
   qryReport.IB_Connection := CoreData.dbUnify;
   qryReport.ReadOnly := True;
   qryReport.RequestLive := True;
end;

procedure TdDuplicates.FormShow(Sender: TObject);
begin
   inherited;
   FillComboBox;
   ContactCount;
end;

procedure TdDuplicates.qryReportCalcFields(DataSet: TDataSet);
var
   lTotalCount : Integer;
begin
   inherited;
   lTotalCount := dbgReport.Columns[1].FooterValue;
   if lTotalCount <> 0 then
      qryReport.FieldByName('sub_perc').AsCurrency := FloatToCurr(100*qryReport.FieldByName('ccount').AsInteger/lTotalCount)
   else
      qryReport.FieldByName('sub_perc').AsCurrency := 0;
   qryReport.FieldByName('Perc').AsCurrency     := FloatToCurr(100*qryReport.FieldByName('ccount').AsInteger/fContactCount);
end;

procedure TdDuplicates.cboGroupByChange(Sender: TObject);
begin
   inherited;
   ShowReport;
end;

procedure TdDuplicates.cboOperatorChange(Sender: TObject);
begin
   inherited;
   ShowReport;
end;

procedure TdDuplicates.cboWhereChange(Sender: TObject);
begin
   inherited;
   ShowReport;
end;

procedure TdDuplicates.edtCountChange(Sender: TObject);
begin
   inherited;
   ShowReport;
end;

procedure TdDuplicates.edtValueChange(Sender: TObject);
begin
   inherited;
   ShowReport;
end;

procedure TdDuplicates.FillComboBox;
begin
   cboGroupBy.Items.Clear;
   qryFields.IB_Connection := CoreData.dbUnify;
   qryFields.ReadOnly := True;
   qryFields.RequestLive := True;
   try
      qryFields.Open;
      qryFields.First;
      while not qryFields.eof do
      begin
         cboGroupBy.Items.Add(qryFields.FieldByName('field_name').AsString);
         qryFields.Next;
      end;
   finally
      qryFields.Close;
   end;
end;

procedure TdDuplicates.ShowReport;
var
   lGroupBy : string;
   lMinCount : Integer;
begin
   lGroupBy  := Trim(cboGroupBy.Text);
   lMinCount := edtCount.Value;

   if lGroupBy = '' then
   begin
      ShowMessage('You must choose a field to group by.');
      cboGroupBy.SetFocus;
      Exit;
   end;
   if cboGroupBy.Items.IndexOf(lGroupBy) = -1 then
   begin
      ShowMessage('Field not found: ' + lGroupBy);
      cboGroupBy.SetFocus;
      cboGroupBy.SelectAll;
      Exit;
   end;

   dbgReport.Columns[0].Title.Caption := lGroupBy;
   if qryReport.Active then
      qryReport.Close;

   qryReport.SQL.Clear;
   qryReport.SQL.Add('select ' + lGroupBy + ' as duplicate, count(' + lGroupBy + ') as ccount from contact');
   qryReport.SQL.Add(fWhereClause);
   qryReport.SQL.Add(' group by ' + lGroupBy);
   if lMinCount >= 0 then
      qryReport.SQL.Add(' having count(' + lGroupBy + ') >= ' + QuotedStr(IntToStr(lMinCount)));
   qryReport.SQL.Add(' order by ccount desc');
   qryReport.Open;
   dbgReport.CalculateTotals;
end;

procedure TdDuplicates.ContactCount;
begin
   fContactCount := 0;
   try
      qryContactCount.Open;
      fContactCount := qryContactCount.FieldByName('contactcount').AsInteger;
   finally
      qryContactCount.Close;
   end;
end;

procedure TdDuplicates.btnConditionsClick(Sender: TObject);
begin
  inherited;
  fWhereClause := '';
  ReportConditions(fWhereClause, Self);
  ShowReport;
  if fWhereClause <> '' then
     btnConditions.Font.Style := btnConditions.Font.Style + [fsBold]
  else
     btnConditions.Font.Style := btnConditions.Font.Style - [fsBold];
end;

procedure TdDuplicates.btnExportClick(Sender: TObject);
begin
  inherited;
  ExportQuery(qryReport, dbgReport, 'Duplicate Contacts');
end;

procedure TdDuplicates.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if qryReport.Active then
      qryReport.Close;
   inherited;
end;

end.
