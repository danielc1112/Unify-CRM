unit udBranches;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, udBaseEnquiry, ToolWin, ComCtrls, JvExComCtrls, JvToolBar, Grids,
  DBGrids, SMDBGrid, DB, DBTables, IBODataset, Buttons, ExtCtrls, StdCtrls,
  GradPnl;

type
  TdBranches = class(TdBaseEnquiry)
    dbgBranches: TSMDBGrid;
    qryUsers: TIBOQuery;
    qryUsersUSER_ID: TStringField;
    qryUsersDISPLAY_NAME: TStringField;
    procedure btnNewClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qryUSER_IDGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryNewRecord(DataSet: TDataSet);
    procedure dbgBranchesDblClick(Sender: TObject);
    procedure qryBranchAfterDelete(DataSet: TDataSet);
  private
    procedure AddFields;

  protected
    function CanBeDeleted: Boolean; override;
  end;

implementation

uses
  uuCoreData, udNewBranch, uuGlobals;

{$R *.dfm}

procedure TdBranches.btnNewClick(Sender: TObject);
begin
  inherited;
  ShowBranch(Self, TDataSet(fqry), 'New Branch');
  DetermineControlStatus;
end;

function TdBranches.CanBeDeleted: Boolean;
begin
   Result := True;
end;

procedure TdBranches.dbgBranchesDblClick(Sender: TObject);
begin
   inherited;
   btnSaveClick(Self);
   fQry.Edit;
   ShowBranch(Self, TDataSet(fqry), 'Edit Branch');
   DetermineControlStatus;
end;

procedure TdBranches.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  qryUsers.Close;
end;

procedure TdBranches.FormCreate(Sender: TObject);
begin
   fqry := TIDQuery.Create(nil, 'BRANCH', 'branch_id');
   fqry.OnNewRecord := qryNewRecord;
   fqry.AfterDelete := qryBranchAfterDelete;
   fGrid := dbgBranches;
   dsEnquiry.DataSet := fqry;
   fGrid.DataSource  := dsEnquiry;
   fGrid.OnDrawColumnCell  := dbgDrawColumnCell;
   SetHints;
   inherited;
   fThing := 'Branch';
   SetHints;
end;

procedure TdBranches.qryBranchAfterDelete(DataSet: TDataSet);
var
   lQry : TIBOQuery;
begin
   inherited;
   if DataSet.FieldByName('branch_id').AsString <> '' then
   begin
      lQry := TIDQuery.Create(nil);
      lQry.SQL.Add('update contact set branch_id = ' + QuotedStr(''));
      lQry.SQL.Add(' where branch_id = ' + QuotedStr(DataSet.FieldByName('branch_id').AsString));
      ShowProgress('Updating contacts...');
      try
         lQry.ExecSQL;
      finally
         lQry.Free;
         HideProgress;
      end;
   end;
   inherited;
end;

procedure TdBranches.qryNewRecord(DataSet: TDataSet);
begin
   inherited;
   fqry.FieldByName('active_ind').AsString := IND_YES;
end;

procedure TdBranches.AddFields;
var
   lField : TField;
begin
   (fqry as TIDQuery).SQL.Clear;
   (fqry as TIDQuery).SQL.Add('select * from branch');

   fqry.FieldDefs.Clear;
   fqry.FieldDefs.Update;

   lField := fqry.FieldByName('created_by');
   lField.OnGetText := qryUSER_IDGetText;
   lField.ReadOnly := True;

   lField := fqry.FieldByName('created');
   lField.ReadOnly := True;

   lField := fqry.FieldByName('updated_by');
   lField.OnGetText := qryUSER_IDGetText;
   lField.ReadOnly := True;

   lField := fqry.FieldByName('updated');
   lField.ReadOnly := True;
end;

procedure TdBranches.FormShow(Sender: TObject);
begin
  inherited;
  ColorThePanel(gSettings.ColBGBranches, clBlack);
  AddFields;
  qryUsers.Open;
  (fqry as TIDQuery).Open;
  MaximizeProgram;
end;

procedure TdBranches.qryUSER_IDGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
   if qryUsers.Locate('user_id', Sender.AsString, []) then
      Text := qryUsers.FieldByName('display_name').AsString;
end;

end.
