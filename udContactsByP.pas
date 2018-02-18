unit udContactsByP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, udBaseProgram, StdCtrls, ExtCtrls, ComCtrls, Buttons, Grids, DBGrids,
  SMDBGrid, DB, IBODataset, GradPnl;

type
  TdContactsByP = class(TdBaseProgram)
    dbgReport: TSMDBGrid;
    btnExport: TSpeedButton;
    dsReport: TDataSource;
    qryReport: TIBOQuery;
    qryReportSUBURB: TStringField;
    qryReportPOSTCODE: TStringField;
    qryReportAREA: TStringField;
    qryReportCSTATE: TStringField;
    qryReportCONTACTS: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnExportClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    procedure ShowReport;
  public
  end;

  procedure ContactsByPostcode(aOwner : TComponent);

implementation

uses uuCoreData;

{$R *.dfm}

procedure ContactsByPostcode(aOwner : TComponent);
var
   lContactsByP : TdContactsByP;
begin
   lContactsByP := TdContactsByP.Create(aOwner);
   try
      lContactsByP.ShowModal;
   finally
      FreeAndNil(lContactsByP);
   end;
end;

procedure TdContactsByP.btnExportClick(Sender: TObject);
begin
   inherited;
   ExportQuery(qryReport, dbgReport, 'ContactsBySuburb');
end;

procedure TdContactsByP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if qryReport.Active then
      qryReport.Close;
   inherited;
end;

procedure TdContactsByP.FormCreate(Sender: TObject);
begin
   inherited;
   qryReport.IB_Connection := CoreData.dbUnify;
   qryReport.ReadOnly := True;
   qryReport.RequestLive := True;
end;

procedure TdContactsByP.FormShow(Sender: TObject);
begin
   inherited;
   ShowReport;
end;

procedure TdContactsByP.ShowReport;
begin
   if qryReport.Active then
      qryReport.Close;
   qryReport.Open;   
end;

end.
