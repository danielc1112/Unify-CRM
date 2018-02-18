unit udBaseEnquiry;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, udBaseProgram, ToolWin, ComCtrls, JvExComCtrls, JvToolBar, Grids,
  DBGrids, SMDBGrid, DB, IBODataset, Buttons, uuCoreData, ExtCtrls, StdCtrls,
  GradPnl;

type
  THackDBGrid = class(TSMDBGrid);

  TdBaseEnquiry = class(TdBaseProgram)
    dsEnquiry: TDataSource;
    btnNew: TSpeedButton;
    btnSave: TSpeedButton;
    btnCancel: TSpeedButton;
    btnDelete: TSpeedButton;
    btnImport: TSpeedButton;
    btnExport: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSaveClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnExportClick(Sender: TObject);
    procedure btnImportClick(Sender: TObject);
    procedure qryAfterCancel(DataSet: TDataSet);
    procedure qryAfterDelete(DataSet: TDataSet);
    procedure dbgDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure qryAfterScroll(DataSet: TDataSet);
    procedure qryAfterEdit(DataSet: TDataSet);
    procedure qryAfterPost(DataSet: TDataSet);
  private
    procedure DetermineSaveCancelStatus;
  protected
    fqry : TDataSet;
    fGrid : TSMDBGrid;
    fGeneratingData : Boolean;
    fThing : string;
    fImporting : Boolean;
    fApplyingChanges : Boolean;
    procedure DetermineControlStatus; virtual;
    function CanBeDeleted: Boolean; virtual;
    procedure SetHints;
  public

  end;

implementation

uses uuGlobals, Math;

{$R *.dfm}

procedure TdBaseEnquiry.FormCreate(Sender: TObject);
begin
   fThing := '';
   fImporting := False;
   fApplyingChanges := False;
   fGeneratingData := False;
   inherited;

   if Assigned(fGrid) then
      fGrid.GridStyle.FilterColor := gSettings.ColFilter;
   if Assigned(fqry) then //won't be assigned in the configuration screen
   begin
      fqry.AfterDelete := qryAfterDelete;
      fqry.AfterScroll := qryAfterScroll;
      fqry.AfterCancel := qryAfterCancel;
      fqry.AfterEdit   := qryAfterEdit;
      fqry.AfterPost   := qryAfterPost;
   end;
end;

procedure TdBaseEnquiry.SetHints;
begin
   if fThing <> '' then
   begin
      btnNew.Hint := 'Create a new ' + fThing;
      btnSave.Hint := 'Save changes to ' + fThing;
      btnCancel.Hint := 'Cancel changes to ' + fThing;
      btnDelete.Hint := 'Delete the selected ' + fThing;
      btnImport.Hint := 'Import ' + fThing + 's from an Excel spreadsheet (.csv file)';
      btnExport.Hint := 'Export ' + fThing + 's to an Excel spreadsheet (.csv file)';
   end;
end;

function TdBaseEnquiry.CanBeDeleted: Boolean;
begin
   Result := True;
end;

procedure TdBaseEnquiry.qryAfterCancel(DataSet: TDataSet);
begin
   inherited;
   DetermineControlStatus;
end;

procedure TdBaseEnquiry.qryAfterDelete(DataSet: TDataSet);
begin
   inherited;
   DetermineControlStatus;
end;

procedure TdBaseEnquiry.qryAfterEdit(DataSet: TDataSet);
begin
   inherited;
   DetermineSaveCancelStatus;
end;

procedure TdBaseEnquiry.qryAfterPost(DataSet: TDataSet);
begin
   inherited;
   DetermineSaveCancelStatus;
end;

procedure TdBaseEnquiry.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if Assigned(fqry) and (fqry is TIDQuery) then
   begin
      if fqry.Active then
         fqry.Close;
      FreeAndNil(fqry);
   end;

   inherited;
end;

procedure TdBaseEnquiry.btnCancelClick(Sender: TObject);
begin
   inherited;
   if Assigned(fqry) and fqry.Active and (fqry.State in [dsInsert, dsEdit]) then
   begin
      fqry.Cancel;
   end;
end;

procedure TdBaseEnquiry.btnDeleteClick(Sender: TObject);
begin
   inherited;
   if Assigned(fqry) and fqry.Active and (not fqry.IsEmpty) and CheckUserLogin(Self.Name, A_DELETE) then
   begin
      if CanBeDeleted and ConfirmMessage('Are you sure you want to delete this ' + fThing + '?') then
      begin
         fqry.Delete;
      end;
   end;
end;

procedure TdBaseEnquiry.DetermineControlStatus;
var
   lNonEmpty : Boolean;
   lEditing : Boolean;
begin
   lNonEmpty := not fqry.IsEmpty;
   lEditing := fqry.State in [dsInsert, dsEdit];
   btnExport.Enabled := True;
   btnCancel.Enabled := lNonEmpty and lEditing;
   btnSave.Enabled   := lNonEmpty and lEditing;
   btnDelete.Enabled := lNonEmpty;
end;

procedure TdBaseEnquiry.DetermineSaveCancelStatus;
var
   lEditing : Boolean;
begin
   if (not fGeneratingData) and (not fImporting) and (not fApplyingChanges) then
   begin
      lEditing := fqry.State in [dsInsert, dsEdit];
      btnSave.Enabled   := lEditing;
      btnCancel.Enabled := lEditing;
   end;
end;

procedure TdBaseEnquiry.btnExitClick(Sender: TObject);
begin
   btnSaveClick(self);
   inherited;
end;

procedure TdBaseEnquiry.btnExportClick(Sender: TObject);
begin
   inherited;
   btnSaveClick(self);
   if Assigned(fqry) and fqry.Active and CheckUserLogin(Self.Name, A_EXPORT) then
      ExportQuery(fqry, fGrid, fThing);
   DetermineControlStatus;
end;

procedure TdBaseEnquiry.btnImportClick(Sender: TObject);
begin
   inherited;
   btnSaveClick(self);
   if Assigned(fqry) and fqry.Active and CheckUserLogin(Self.Name, A_IMPORT) then
   begin
      fImporting := True;
      ImportIntoQuery(fqry, fGrid);
      fImporting := False;
   end;
   DetermineControlStatus;
end;

procedure TdBaseEnquiry.btnNewClick(Sender: TObject);
begin
   inherited;
   btnSaveClick(self);
   if Assigned(fqry) and fqry.Active and CheckUserLogin(Self.Name, A_CREATE) then
      fqry.Insert;
end;

procedure TdBaseEnquiry.btnSaveClick(Sender: TObject);
begin
  if Assigned(fqry) and fqry.Active and (fqry.State in [dsInsert, dsEdit]) then
     fqry.Post;
  inherited;
end;

procedure TdBaseEnquiry.qryAfterScroll(DataSet: TDataSet);
begin
   if Assigned(fGrid) and DataSet.Active and (DataSet.RecNo > 99) then
   begin
      fGrid.WidthOfIndicator := 26 +
         (IND_WIDTH*Floor(Log10(DataSet.RecNo)) - IND_WIDTH);
   end
   else if Assigned(fGrid) then
      fGrid.WidthOfIndicator := 26
end;

procedure TdBaseEnquiry.dbgDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
   lGrid : TSMDBGrid;
   lDataSet : TDataSet;
   lField : TField;
begin
   inherited;
   lGrid := (Sender as TSMDBGrid);
   lDataSet := lGrid.DataSource.DataSet;
   if Assigned(lDataSet) then
   begin
      lField := lDataSet.FindField('active_ind');
      if Assigned(lField) and (lField.AsString = IND_NO) then
      begin
         lGrid.Canvas.Brush.Color := gSettings.ColInactive;
      end;

      if (THackDBGrid(lGrid).DataLink.ActiveRecord + 1 = THackDBGrid(lGrid).Row) then
      begin
         lGrid.Canvas.Font.Color := clBlack;
         if (gdSelected in State) then
            lGrid.Canvas.Brush.Color := gSettings.ColSelected;
      end;
   end;
   lGrid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

end.
