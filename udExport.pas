unit udExport;
{
  Jan 2015 Code By: Daniel Campbell
}
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, SMDBGrid, StdCtrls, Buttons, DB, ExtCtrls, uuCoreData,
  kbmMemTable, ComCtrls, IBODataset;

type
  THackDBGrid = class(TSMDBGrid);

  TdExport = class(TForm)
    dbgExport: TSMDBGrid;
    btnSelectAll: TButton;
    btnUnSelectAll: TButton;
    btnExport: TSpeedButton;
    dsExport: TDataSource;
    edtDelimiter: TLabeledEdit;
    mtbExport: TkbmMemTable;
    mtbExportField: TStringField;
    mtbExportInclude: TBooleanField;
    btnCancel: TButton;
    mmoExport: TMemo;
    pbExport: TProgressBar;
    cbExcel: TCheckBox;
    cbKeywordsCol: TCheckBox;
    qryUsers: TIBOQuery;
    mtbUsersUSER_ID: TStringField;
    mtbUsersDISPLAY_NAME: TStringField;
    rgOutput: TRadioGroup;
    mtbExportDisplayName: TStringField;
    qryBranch: TIBOQuery;
    mtbBranchBRANCH_ID: TStringField;
    mtbBranchDESCRIPTION: TStringField;
    mtbBranchACTIVE_IND: TStringField;
    procedure btnExportClick(Sender: TObject);
    procedure btnSelectAllClick(Sender: TObject);
    procedure btnUnSelectAllClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dbgExportDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgExportCellClick(Column: TColumn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure rgOutputClick(Sender: TObject);
    procedure mtbExportBeforeScroll(DataSet: TDataSet);
  private
     fQry : TDataset;
     fFileName : string;
     fLoading : Boolean;
     fIEType : string;
     procedure AllSelect(aSelect: Boolean);
  public
     procedure SetUp(aQry : TDataSet; aGrid : TSMDBGrid; aFileName : String; aIEType : string = '');
  end;

implementation

uses uuGlobals, ShellAPI;

{$R *.dfm}

procedure TdExport.SetUp(aQry : TDataSet; aGrid : TSMDBGrid; aFileName : String; aIEType : string = '');
var
   I : Integer;
begin
   dsExport.DataSet := mtbExport;
   fQry := aQry;
   fIEType := aIEType;
   cbKeywordsCol.Visible := fIEType = 'C';
   rgOutput.Visible      := fIEType = 'C';
   fFileName := aFileName;
   qryUsers.Open;
   if fIEType = 'C' then
   begin
      qryBranch.Open;
   end;
   //Populate memory table
   mtbExport.Close;
   mtbExport.Open;
   fLoading := True;
   for I := 0 to aGrid.Columns.Count - 1 do
   begin
      if UpperCase(aGrid.Columns[I].FieldName) <> 'SELECTED' then
      begin
         mtbExport.Append;
         mtbExportField.AsString := aGrid.Columns[I].FieldName;
         if (fIEType = 'C') then
            mtbExportDisplayName.AsString := aGrid.Columns[I].Title.Caption;
         mtbExportInclude.AsBoolean := True;
         mtbExport.Post;
      end;
   end;
   if (fIEType = 'C') then
   begin
      mtbExport.Append;
      mtbExportField.AsString       := 'keywords';
      mtbExportDisplayName.AsString := 'Keywords';
      mtbExportInclude.AsBoolean := True;
      mtbExport.Post;

      rgOutput.ItemIndex := 1; //Display names
      rgOutputClick(self);
   end;
   fLoading := False;
   mtbExport.First;
end;

procedure TdExport.btnExportClick(Sender: TObject);
var
   lLine : String;
   I : Integer;
   lFileName : String;
   lNotChosen : Boolean;
   lKQry : TIDQuery;
   lKeywords : string;
   lPart : string;
   lPos : Integer;
   lKeywordsIncluded : Boolean;
   lDelimiter : string;

   procedure AddDelimiter;
   begin
      if lLine <> '' then
         lLine := lLine + lDelimiter;
   end;

   function IsFieldIncluded(aFieldName : String) : Boolean;
   begin
      Result := mtbExport.Locate('Field', aFieldName, []) and mtbExportInclude.AsBoolean;
   end;

   function FieldDisplayName(aFieldName : String) : String;
   begin
      mtbExport.FieldByName('display_name').AsString;
   end;

   function DisplayName(aUserId : String) : String;
   begin
      if qryUsers.Locate('user_id', aUserId, []) then
         Result := qryUsers.FieldByName('display_name').AsString
      else
         Result := '';
   end;

   function BranchName(aBranchId : String) : String;
   begin
      if qryBranch.Locate('branch_id', aBranchId, []) then
         Result := qryBranch.FieldByName('description').AsString
      else
         Result := '';
   end;
begin
   if mtbExport.State in [dsEdit] then
      mtbExport.Post;

   lDelimiter := edtDelimiter.Text;
   mmoExport.Lines.Clear;
   pbExport.Position := 0;
   pbExport.Max := fQry.RecordCount;
   mtbExport.DisableControls;

   lKQry := nil;
   if (fIEType = 'C') then //exporting contacts
   begin
      lKQry := TIDQuery.Create(nil);
      lKQry.ReadOnly := True;
      lKQry.SQL.Add('select description from keyword order by description');
      lKQry.Open;
   end;

   try
      //Field Titles
      lLine := '';
      for I := 0 to fQry.Fields.Count - 1 do
      begin
         if IsFieldIncluded(fQry.Fields[I].FieldName) and (fQry.Fields[I].FieldName <> 'keywords') then
         begin
            AddDelimiter;
            if (fIEType = 'C') and (rgOutput.ItemIndex = 1) then
               lLine := lLine + mtbExport.FieldByName('displayname').AsString
            else
               lLine := lLine + fQry.Fields[I].FieldName;
         end;
      end;

      lKeywordsIncluded := IsFieldIncluded('keywords');

      if (fIEType = 'C') and lKeywordsIncluded then
      begin
         if cbKeywordsCol.Checked then
         begin
            lKQry.First;
            while not lKQry.eof do
            begin
               AddDelimiter;
               lLine := lLine + lKQry.FieldByName('description').AsString;
               lKQry.Next;
            end;
         end
         else
            lLine := lLine + edtDelimiter.Text + 'Keywords';
      end;

      mmoExport.Lines.Add(lLine);

      //Data
      fQry.First;
      while not fQry.eof do
      begin
         lLine := '';
         for I := 0 to fQry.Fields.Count - 1 do
         begin
            if IsFieldIncluded(fQry.Fields[I].FieldName) and (fQry.Fields[I].FieldName <> 'keywords') then
            begin
               AddDelimiter;
               if (fQry.Fields[I].FieldName = 'created_by') or (fQry.Fields[I].FieldName = 'updated_by') then
                  lLine := lLine + DisplayName(fQry.Fields[I].AsString)
               else if (fQry.Fields[I].FieldName = 'branch_id') then
                  lLine := lLine + BranchName(fQry.Fields[I].AsString)
               else
                  lLine := lLine + fQry.Fields[I].AsString;
            end;
         end;

         //keywords
         if (fIEType = 'C') and lKeywordsIncluded then
         begin
            lKeywords := fQry.FieldByName('keywords').AsString;
            if cbKeywordsCol.Checked then
            begin
               lKQry.First;
               while not lKQry.eof do
               begin
                  AddDelimiter;
                  lPart := KEYWORD_DELIMITER + lKQry.FieldByName('description').AsString + KEYWORD_DELIMITER;
                  lPos := AnsiPos(lPart, lKeywords);
                  if lPos <> 0 then
                  begin
                     lLine := lLine + IND_YES;
                  end;
                  lKQry.Next;
               end;
            end
            else
            begin
               AddDelimiter;
               lLine := lLine + lKeywords;
            end;
         end;

         mmoExport.Lines.Add(lLine);
         pbExport.StepBy(1);
         Application.ProcessMessages;
         fQry.Next;
      end;

      lFileName := SaveFile(True, lNotChosen, '', fFileName, self);

      if not lNotChosen then
      begin
         mmoExport.Lines.SaveToFile(lFileName);
         //Open it in Excel. It will depend on the file types default program
         if cbExcel.Checked then
            ShellExecute(Handle, 'open', PChar(lFileName), nil, nil, SW_SHOWNORMAL);
      end;
   finally
      if Assigned(lKQry) then
      begin
         lKQry.Close;
         lKQry.Free;
      end;
      mtbExport.EnableControls;
      pbExport.Position := 0;
      Application.ProcessMessages;
   end;
end;

procedure TdExport.btnSelectAllClick(Sender: TObject);
begin
   AllSelect(True);
end;

procedure TdExport.btnUnSelectAllClick(Sender: TObject);
begin
   AllSelect(False);
end;

procedure TdExport.dbgExportCellClick(Column: TColumn);
begin
//   if Column.Index = 1 then
//      if mtbExport.State in [dsEdit] then
//         mtbExport.Post;
end;

procedure TdExport.dbgExportDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
   lDataSet : TDataSet;
   lGrid : TSMDBGrid;
begin
   lGrid := (Sender as TSMDBGrid);
   lDataSet := lGrid.DataSource.DataSet;
   if Assigned(lDataSet) then
   begin
      if (THackDBGrid(lGrid).DataLink.ActiveRecord + 1 = THackDBGrid(lGrid).Row) then
      begin
         with lGrid.Canvas.Font do
         begin
            Style := Style + [fsBold];
            Color := clBlack;
         end;
      end;
   end;

   lGrid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TdExport.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   qryUsers.Close;
   if fIEType = 'C' then
   begin
      qryBranch.Close;
   end;
end;

procedure TdExport.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_ESCAPE then
      Close;
end;

procedure TdExport.mtbExportBeforeScroll(DataSet: TDataSet);
begin
   if mtbExport.State in [dsEdit] then
      mtbExport.Post;
end;

procedure TdExport.AllSelect(aSelect : Boolean);
var
   lBookMark : TBookMarkStr;
begin
   mtbExport.DisableControls;
   lBookMark := mtbExport.Bookmark;
   try
      mtbExport.First;
      while not mtbExport.eof do
      begin
         mtbExport.Edit;
         mtbExportInclude.AsBoolean := aSelect;
         mtbExport.Post;
         mtbExport.Next;
      end;
   finally
      mtbExport.Bookmark := lBookMark;
      mtbExport.EnableControls;
   end;
end;

procedure TdExport.rgOutputClick(Sender: TObject);
begin
   dbgExport.Columns[0].Visible := rgOutput.ItemIndex = 0;
   if dbgExport.Columns[0].Visible then
      dbgExport.Columns[0].Width := 187;
   dbgExport.Columns[1].Visible := rgOutput.ItemIndex = 1;
   if dbgExport.Columns[1].Visible then
      dbgExport.Columns[1].Width := 187;
end;

end.
