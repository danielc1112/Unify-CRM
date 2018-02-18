unit udContacts;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, udBaseEnquiry, ToolWin, ComCtrls, JvExComCtrls, JvToolBar, StdCtrls,
  Grids, DBGrids, SMDBGrid, JvExStdCtrls, JvMemo, ExtCtrls, DB, DBTables,
  kbmMemTable, IBODataset, uuCoreData, Buttons, udBaseProgram, IdBaseComponent,
  IdComponent, IdTCPConnection, IdDNSResolver, IdTCPClient,
  IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase, IdSMTP, DBCtrls,
  Mask, GradPnl, uuSearchCriteria;

type
  THackDBGrid = class(TSMDBGrid);

  TdContacts = class(TdBaseEnquiry)
    pgcContacts: TPageControl;
    tsGenerate: TTabSheet;
    tsContacts: TTabSheet;
    tsEmail: TTabSheet;
    pbGenerate: TProgressBar;
    dbgContacts: TSMDBGrid;
    dbgEmailed: TSMDBGrid;
    pb1: TProgressBar;
    btnSend: TButton;
    dbgAttachments: TSMDBGrid;
    mmoMessage: TJvMemo;
    edtSubject: TLabeledEdit;
    dsContacts: TDataSource;
    mtbContacts: TkbmMemTable;
    mtbEmailed: TkbmMemTable;
    dsEmailed: TDataSource;
    mtbAttachments: TkbmMemTable;
    dsAttachments: TDataSource;
    qryGenerate: TIBOQuery;
    edtBranch: TComboBox;
    lbl3: TLabel;
    btnOrderBy: TSpeedButton;
    btnSelectAll: TButton;
    btnUnSelectAll: TButton;
    btnEmail: TSpeedButton;
    lbKToUseOr: TListBox;
    lbl5: TLabel;
    lbKUsedOr: TListBox;
    btnUseOr: TSpeedButton;
    btnDontUseOr: TSpeedButton;
    lbEKUsedAnd: TListBox;
    btnEDontUseAnd: TSpeedButton;
    btnEUseAnd: TSpeedButton;
    lbEKToUseAnd: TListBox;
    cbActive: TCheckBox;
    btnReplace: TSpeedButton;
    btnValidate: TSpeedButton;
    mtbFields: TkbmMemTable;
    mtbFieldsfield_name: TStringField;
    mtbFieldsdisplay_name: TStringField;
    mtbFieldsfield_value: TStringField;
    mtbFieldssearch_type: TStringField;
    mtbFieldscase_sensitive: TBooleanField;
    btnClearSearch: TButton;
    mtbFieldscan_search: TStringField;
    mtbFieldsfield_type: TStringField;
    qryUsers: TIBOQuery;
    qryUsersUSER_ID: TStringField;
    qryUsersDISPLAY_NAME: TStringField;
    qryContactDropdowns: TIBOQuery;
    qryContactDropdownsFIELD_NAME: TStringField;
    qryContactDropdownsDROPDOWN: TStringField;
    qryBranch: TIBOQuery;
    qryBranchBRANCH_ID: TStringField;
    qryBranchDESCRIPTION: TStringField;
    mtbFieldsrequired: TStringField;
    mtbFieldsfrom: TStringField;
    mtbFieldsto: TStringField;
    mtbFieldsranged: TBooleanField;
    mtbFieldsdefault_value: TStringField;
    lbFields: TListBox;
    pnlField: TPanel;
    lblFieldValue: TLabel;
    btnClear: TButton;
    gbSearchType: TGroupBox;
    rbExact: TRadioButton;
    rbContains: TRadioButton;
    rbStarts: TRadioButton;
    gbRange: TGroupBox;
    lbl2: TLabel;
    lbl4: TLabel;
    rbValue: TRadioButton;
    rbRange: TRadioButton;
    mtbFieldschar_case: TStringField;
    edtFieldValue: TEdit;
    edtFrom: TEdit;
    edtTo: TEdit;
    qryFieldsfromdate: TDateTimeField;
    qryFieldstodate: TDateTimeField;
    dtpTo: TDateTimePicker;
    dtpFrom: TDateTimePicker;
    mtbBranchACTIVE_IND: TStringField;
    btnSaveSearch: TButton;
    btnLoadSearch: TButton;
    cbCaseSensitive: TCheckBox;
    mtbFieldssearched: TBooleanField;
    btnOnlyChanges: TButton;
    btnShowColumns: TButton;
    mtbFieldsvisible: TBooleanField;
    edtDFieldValue: TComboBox;
    btnGenerate: TSpeedButton;
    btnClearList: TSpeedButton;
    btnApplyChanges: TSpeedButton;
    rbEnds: TRadioButton;
    mtbFieldsfsize: TIntegerField;
    mtbContactDropdownsDESCRIPTION: TStringField;
    lbl1: TLabel;
    lbl6: TLabel;
    lbEKToUseOr: TListBox;
    btnEDontUseOr: TSpeedButton;
    btnEUseOr: TSpeedButton;
    lbEKUsedOr: TListBox;
    lbKUsedAnd: TListBox;
    lbKToUseAnd: TListBox;
    lbl7: TLabel;
    btnUseAnd: TSpeedButton;
    btnDontUseAnd: TSpeedButton;
    cbViewSQL: TCheckBox;
    btnKeywords: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure btnGenerateClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnNewClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnOrderByClick(Sender: TObject);
    procedure btnApplyChangesClick(Sender: TObject);
    procedure mtbContactsFieldChange(Sender: TField);
    procedure mtbContactsNewRecord(DataSet: TDataSet);
    procedure dbgContactsDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnSelectAllClick(Sender: TObject);
    procedure btnUnSelectAllClick(Sender: TObject);
    procedure btnEmailClick(Sender: TObject);
    procedure dbgContactsDblClick(Sender: TObject);
    procedure btnClearListClick(Sender: TObject);
    procedure btnReplaceClick(Sender: TObject);
    procedure btnValidateClick(Sender: TObject);
    procedure pgcContactsChange(Sender: TObject);
    procedure qryUSER_IDGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qryBRANCH_IDGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qryBRANCH_IDSetText(Sender: TField; const Text: string);
    procedure btnDeleteClick(Sender: TObject);
    procedure mtbContactsAfterScroll(DataSet: TDataSet);
    procedure DTPChange(Sender: TObject);
    procedure DTPDropDown(Sender: TObject);
    procedure dbgContactsKeyPress(Sender: TObject; var Key: Char);
    procedure dbgContactsColExit(Sender: TObject);
    procedure btnSaveSearchClick(Sender: TObject);
    procedure btnLoadSearchClick(Sender: TObject);
    procedure btnExportClick(Sender: TObject);
    procedure btnImportClick(Sender: TObject);
    procedure btnOnlyChangesClick(Sender: TObject);
    procedure btnShowColumnsClick(Sender: TObject);
    procedure dbgContactsMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure dbgContactsMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure btnKeywordsClick(Sender: TObject);

  private
    fAnyChanges : Boolean;
    fDTP : TStringList;
    fSearch : TSearch;
    procedure SetAnyChanges(aAnyChanges : Boolean);
    procedure SetupGridAndMemoryTable;
    function GetFieldType(aType: String): TFieldType;
    procedure AddPrimaryFields;
    procedure DetermineDeleteButton;
    procedure CreateAllDateTimePickers;
    procedure MouseScrollUp(aUp: Boolean);
    procedure SelectAllContacts(aValue: Boolean);
  protected
    procedure DetermineControlStatus; override;
    function CanBeDeleted: Boolean;override;
  public
    property AnyChanges : Boolean read fAnyChanges write SetAnyChanges;
  end;

implementation

uses udNewContact, udOrderBy, StrUtils, uuGlobals, Math, udValidate, udReplace,
  udSaveSearch, udLoadSearch, udShowColumns, udKeywords;

const
   CHANGED_COLOR = $00FFDDDD;

{$R *.dfm}

procedure TdContacts.DTPChange(Sender : TObject);
begin
   if dbgContacts.DataSource.State in [dsEdit, dsInsert] then
     dbgContacts.SelectedField.Value := (Sender as TDateTimePicker).DateTime;
end;

procedure TdContacts.DTPDropDown(Sender : TObject);
begin
   if not (mtbContacts.State in [dsEdit, dsInsert]) then
      mtbContacts.Edit;
end;

procedure TdContacts.DetermineControlStatus;
var
   lNonEmpty, lEditing : Boolean;
begin
   lNonEmpty := not mtbContacts.eof;
   lEditing := mtbContacts.State in [dsInsert, dsEdit];
   btnExport.Enabled  := lNonEmpty;
   btnCancel.Enabled  := lNonEmpty and lEditing;
   btnSave.Enabled    := lNonEmpty and lEditing;
   btnDelete.Enabled  := lNonEmpty;
   btnOrderBy.Enabled := lNonEmpty;
   btnReplace.Enabled := lNonEmpty;
   btnEmail.Enabled   := lNonEmpty;
   btnValidate.Enabled  := lNonEmpty;
   btnKeywords.Enabled  := lNonEmpty;
   btnSelectAll.Enabled := lNonEmpty;
   btnUnSelectAll.Enabled := lNonEmpty;
   btnClearList.Enabled := True;
   if lNonEmpty then
      btnGenerate.Caption := 'Add To List'
   else
      btnGenerate.Caption := 'Generate';

   if lNonEmpty then
   begin
      DetermineDeleteButton;
   end;
end;

procedure TdContacts.SetAnyChanges(aAnyChanges : Boolean);
begin
   fAnyChanges := aAnyChanges;
   btnApplyChanges.Enabled := fAnyChanges;
   btnOnlyChanges.Enabled  := fAnyChanges;
end;

procedure TdContacts.AddPrimaryFields;
begin
   mtbContacts.FieldDefs.Clear;
   with mtbContacts.FieldDefs.AddFieldDef do
   begin
      Name := 'selected';
      DataType := ftBoolean;
   end;
   with mtbContacts.FieldDefs.AddFieldDef do
   begin
      Name := 'haschanged';
      DataType := ftBoolean;
   end;
   with mtbContacts.FieldDefs.AddFieldDef do
   begin
      Name := 'was_inserted';
      DataType := ftBoolean;
   end;
   with mtbContacts.FieldDefs.AddFieldDef do
   begin
      Name := 'was_deleted';
      DataType := ftBoolean;
   end;
   with mtbContacts.FieldDefs.AddFieldDef do
   begin
      Name := 'keywords_wrong';
      DataType := ftBoolean;
   end;
   with mtbContacts.FieldDefs.AddFieldDef do
   begin
      Name := 'contact_id';
      DataType := ftString;
      Size := 14;
   end;
   with mtbContacts.FieldDefs.AddFieldDef do
   begin
      Name := 'contact_id_changed';
      DataType := ftBoolean;
   end;
   with mtbContacts.FieldDefs.AddFieldDef do
   begin
      Name := 'active_ind';
      DataType := ftString;
      Size := 1;
   end;
   with mtbContacts.FieldDefs.AddFieldDef do
   begin
      Name := 'active_ind_changed';
      DataType := ftBoolean;
   end;
   with mtbContacts.FieldDefs.AddFieldDef do
   begin
      Name := 'branch_id';
      DataType := ftString;
      Size := 14;
   end;
   with mtbContacts.FieldDefs.AddFieldDef do
   begin
      Name := 'branch_id_changed';
      DataType := ftBoolean;
   end;
   with mtbContacts.FieldDefs.AddFieldDef do
   begin
      Name := 'email_valid';
      DataType := ftString;
      Size := 1;
   end;
   with mtbContacts.FieldDefs.AddFieldDef do
   begin
      Name := 'email_valid_changed';
      DataType := ftBoolean;
   end;
   with mtbContacts.FieldDefs.AddFieldDef do
   begin
      Name := 'keywords';
      DataType := ftString;
      Size := 331;
   end;
   with mtbContacts.FieldDefs.AddFieldDef do
   begin
      Name := 'keywords_changed';
      DataType := ftBoolean;
   end;
end;

procedure TdContacts.SetupGridAndMemoryTable;
var
   lFieldName, lDisplayName, lFieldType : string;
   lField : TField;
   lColumn : TSMDBColumn;
begin
   AddPrimaryFields;

   //Branch dropdown
   qryBranch.First;
   while not qryBranch.eof do
   begin
      if qryBranch.FieldByName('ACTIVE_IND').AsString = IND_YES then
         dbgContacts.Columns[2].Picklist.Add(qryBranch.FieldByName('DESCRIPTION').AsString);
      qryBranch.Next;
   end;

   //edtBranch.Text := CoreData.BranchName;

   mtbFields.First;
   while not mtbFields.eof do
   begin
      lFieldName   := mtbFields.FieldByName('field_name').AsString;
      lDisplayName := mtbFields.FieldByName('display_name').AsString;
      lFieldType   := mtbFields.FieldByName('field_type').AsString;

      if (lFieldType = FIELD_TYPE_DATETIME) or (lFieldType = FIELD_TYPE_NUMBER) then
         mtbContacts.FieldDefs.Add(lFieldName, GetFieldType(lFieldType),
            0, RegStrToBool(mtbFields.FieldByName('required').AsString))
      else
         mtbContacts.FieldDefs.Add(lFieldName, GetFieldType(lFieldType),
            mtbFields.FieldByName('fsize').AsInteger, RegStrToBool(mtbFields.FieldByName('required').AsString));
      mtbContacts.FieldDefs.Add(lFieldName + '_changed', ftBoolean);

      lColumn := dbgContacts.Columns.Add;
      lColumn.Visible := mtbFields.FieldByName('visible').AsBoolean;
      lColumn.Width := 110;
      lColumn.FieldName := lFieldName;
      lColumn.Title.Caption := lDisplayName;
      if lFieldType = FIELD_TYPE_DROPDOWN then
      begin
         qryContactDropdowns.First;
         while not qryContactDropdowns.eof do
         begin
            if qryContactDropdowns.FieldByName('FIELD_NAME').AsString = lFieldName then
               lColumn.Picklist.Add(qryContactDropdowns.FieldByName('DROPDOWN').AsString);
            qryContactDropdowns.Next;
         end;
      end;

      if (lFieldName = 'created_by') or (lFieldName = 'created') or
         (lFieldName = 'updated_by') or (lFieldName = 'updated') then
         lColumn.ReadOnly := True;

      mtbFields.Next;
   end;
   
   mtbFields.First;
   mtbContacts.CreateTable;

   lField := mtbContacts.FieldByName('branch_id');
   lField.OnGetText := qryBRANCH_IDGetText;
   lField.OnSetText := qryBRANCH_IDSetText;

   lField := mtbContacts.FieldByName('created_by');
   lField.OnGetText := qryUSER_IDGetText;

   lField := mtbContacts.FieldByName('updated_by');
   lField.OnGetText := qryUSER_IDGetText;
end;

procedure TdContacts.FormCreate(Sender: TObject);
var
   I : Integer;
begin
   AnyChanges  := False;
   qryBranch.Open;
   qryUsers.Open;
   qryContactDropdowns.Open;

   fSearch := TSearch.Create(Self, mtbFields, lbFields,
     lbKUsedOr, lbEKUsedAnd, lbKToUseOr, lbEKToUseAnd,
     lbKUsedAnd, lbEKUsedOr, lbKToUseAnd, lbEKToUseOr,
     edtBranch, cbActive, qryUsers,
     rbValue, rbRange, rbExact, rbContains, rbStarts, rbEnds,
     cbCaseSensitive, edtFieldValue, edtDFieldValue,
     btnClear, dtpFrom, dtpTo,
     lblFieldValue, gbSearchType, gbRange,
     qryContactDropdowns, edtFrom, edtTo,
     btnClearSearch, qryBranch,
     btnUseOr, btnDontUseOr, btnEUseAnd, btnEDontUseAnd,
     btnUseAnd, btnDontUseAnd, btnEUseOr, btnEDontUseOr);

   fSearch.PopulateFieldsMemoryTable;
   SetupGridAndMemoryTable;

   fqry := mtbContacts;
   fGrid := dbgContacts;
   inherited;

   fThing := 'Contact';
   SetHints;

   dsContacts.DataSet := mtbContacts;
   dbgContacts.DataSource := dsContacts;

   dsAttachments.DataSet := mtbAttachments;
   dbgAttachments.DataSource := dsAttachments;

   dsEmailed.DataSet := mtbEmailed;
   dbgEmailed.DataSource := dsEmailed;

   for I := 0 to dbgContacts.Columns.Count - 1 do
   begin
      if (not (AnsiPos('_changed', dbgContacts.Columns[I].FieldName) <> 0)) and
         ('CREATED'    <> UpperCase(dbgContacts.Columns[I].FieldName)) and
         ('CREATED_BY' <> UpperCase(dbgContacts.Columns[I].FieldName)) and
         ('UPDATED'    <> UpperCase(dbgContacts.Columns[I].FieldName)) and
         ('UPDATED_BY' <> UpperCase(dbgContacts.Columns[I].FieldName)) and
         ('SELECTED'   <> UpperCase(dbgContacts.Columns[I].FieldName)) then
      begin
         mtbContacts.FieldByName(dbgContacts.Columns[I].FieldName).OnChange :=
            mtbContactsFieldChange;
      end;
   end;
   mtbContacts.FieldByName('email_valid').OnChange := mtbContactsFieldChange;
   mtbContacts.FieldByName('keywords').OnChange := mtbContactsFieldChange;
end;

procedure TdContacts.CreateAllDateTimePickers;
var
   lDTP : TDateTimePicker;
   I : Integer;
begin
   fDTP := TStringList.Create;
   for I := 0 to dbgContacts.Columns.Count - 1 do
   begin
      if dbgContacts.Columns[I].Field.DataType = ftDateTime then
      begin
         lDTP := TDateTimePicker.Create(nil);
         lDTP.Parent := dbgContacts;
         lDTP.Visible := False;
         lDTP.OnChange := DTPChange;
         lDTP.OnDropDown := DTPDropDown;
         fDTP.AddObject(IntToStr(I), lDTP);
      end;
   end;
end;

procedure TdContacts.FormShow(Sender: TObject);
begin
   inherited;
   CreateAllDateTimePickers;

   ColorThePanel(gSettings.ColBGContacts, clBlack);
   pgcContacts.ActivePageIndex := 0;
   pgcContactsChange(Self);
   mtbContacts.Open;
   
   MaximizeProgram;
end;

procedure TdContacts.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if fAnyChanges and ConfirmMessage('Apply changes before exiting?') then
   begin
      btnApplyChangesClick(Self);
   end;

   inherited;
   if Assigned(fDTP) then
   begin
      fDTP.Clear;
      fDTP.Destroy;
   end;
   qryUsers.Close;
   qryBranch.Close;
   qryContactDropdowns.Close;
   mtbContacts.Close;
   if mtbFields.Active then
      mtbFields.Close;
   if Assigned(fSearch) then
      FreeAndNil(fSearch);
end;

procedure TdContacts.mtbContactsAfterScroll(DataSet: TDataSet);
begin
   inherited;
   DetermineDeleteButton;
end;

procedure TdContacts.DetermineDeleteButton;
begin
   if mtbContacts.FieldByName('was_deleted').AsBoolean then
   begin
      btnDelete.Caption := 'UnDelete';
      btnDelete.Width := 80;
   end
   else
   begin
      btnDelete.Caption := 'Delete';
      btnDelete.Width := 61;
   end;
end;

procedure TdContacts.mtbContactsFieldChange(Sender: TField);
begin
   inherited;
   if not fGeneratingData  then
   begin
      //Capitalisation
      if mtbFields.Locate('field_name', Sender.FieldName, []) then
      begin
          fGeneratingData := True;
          if mtbFields.FieldByName('char_case').AsString = CHAR_UPPERCASE then
             Sender.Text := UpperCase(Sender.Text)
          else if mtbFields.FieldByName('char_case').AsString = CHAR_LOWERCASE then
             Sender.Text := LowerCase(Sender.Text)
          else if mtbFields.FieldByName('char_case').AsString = CHAR_CAPITALISED then
             Sender.Text := Capitalise(Sender.Text);
          fGeneratingData := False;   
      end;

      mtbContacts.FieldByName(Sender.FieldName + '_changed').AsBoolean := True;
      mtbContacts.FieldByName('haschanged').AsBoolean := True;
      AnyChanges := True;
   end;
end;

procedure TdContacts.mtbContactsNewRecord(DataSet: TDataSet);
var
   lFieldName : string;
begin
   inherited;
   mtbContacts.FieldByName('selected').AsBoolean    := True;

   if not fGeneratingData then
   begin
      mtbContacts.FieldByName('active_ind').AsString          := IND_YES;
      mtbContacts.FieldByName('active_ind_changed').AsBoolean := True;
      mtbContacts.FieldByName('branch_id').AsString           := gSettings.DefaultBranch;
      mtbContacts.FieldByName('branch_id_changed').AsBoolean  := True;
      mtbContacts.FieldByName('cstate').AsString              := CoreData.BranchState;
      mtbContacts.FieldByName('cstate_changed').AsBoolean     := True;

      //Custom Default Values
      mtbFields.First;
      while not mtbFields.eof do
      begin
         if mtbFields.FieldByName('default_value').AsString <> '' then
         begin
            lFieldName := mtbFields.FieldByName('field_name').AsString;
            mtbContacts.FieldByName(lFieldName).AsString := mtbFields.FieldByName('default_value').AsString;
            mtbContacts.FieldByName(lFieldName + '_changed').AsBoolean := True;
         end;
         mtbFields.Next;
      end;

      mtbContacts.FieldByName('haschanged').AsBoolean  := True;
      mtbContacts.FieldByName('was_inserted').AsBoolean := True;
      AnyChanges := True;
   end;
end;

procedure TdContacts.pgcContactsChange(Sender: TObject);
var
   lGridPage : Boolean;
begin
   inherited;
   lGridPage := pgcContacts.ActivePageIndex <> 0;
   btnSave.Visible     := lGridPage;
   btnCancel.Visible   := lGridPage;
   btnDelete.Visible   := lGridPage;
   btnImport.Visible   := lGridPage;
   btnExport.Visible   := lGridPage;
   btnOrderBy.Visible  := lGridPage;
   btnReplace.Visible  := lGridPage;
   btnKeywords.Visible := lGridPage;
   btnEmail.Visible    := lGridPage;
   btnValidate.Visible := lGridPage;
   DetermineControlStatus;
end;

function TdContacts.GetFieldType(aType : String) : TFieldType;
begin
   if (aType = FIELD_TYPE_DATETIME) then
      Result := ftDateTime
   else if (aType = FIELD_TYPE_NUMBER) then
      Result := ftFloat
   else
      Result := ftString
end;

procedure TdContacts.btnSaveSearchClick(Sender: TObject);
var
   lActive : string;
begin
   inherited;
   if cbActive.State = cbChecked then
      lActive := IND_YES
   else if cbActive.State = cbChecked then
      lActive := IND_NO
   else
      lActive := '';
   SaveSearch(mtbFields, edtBranch.Text, lActive,
      fSearch.GetKeywordsIncludedOr, fSearch.GetKeywordsExcludedAnd,
      fSearch.GetKeywordsIncludedAnd, fSearch.GetKeywordsExcludedOr, Self);
end;

procedure TdContacts.btnShowColumnsClick(Sender: TObject);
begin
   inherited;
   ShowColumns(mtbFields, dbgContacts, Self);
end;

procedure TdContacts.btnSelectAllClick(Sender: TObject);
begin
   inherited;
   SelectAllContacts(True);
end;

procedure TdContacts.btnUnSelectAllClick(Sender: TObject);
begin
   inherited;
   SelectAllContacts(False);
end;

procedure TdContacts.SelectAllContacts(aValue : Boolean);
var
   lBookMark : TBookmarkStr;
begin
   btnSaveClick(Self);
   mtbContacts.DisableControls;
   lBookMark := mtbContacts.Bookmark;
   fApplyingChanges := True;
   try
      mtbContacts.First;
      while not mtbContacts.eof do
      begin
         mtbContacts.Edit;
         mtbContacts.FieldByName('selected').AsBoolean := aValue;
         mtbContacts.Post;
         mtbContacts.Next;
      end;
   finally
      mtbContacts.Bookmark := lBookMark;
      mtbContacts.EnableControls;
      fApplyingChanges := False;
   end;
end;

procedure TdContacts.btnValidateClick(Sender: TObject);
begin
  inherited;
  btnSaveClick(Self);
  fApplyingChanges := True;
  Validate(mtbContacts, mtbFields, Self);
  fApplyingChanges := False;
end;

procedure TdContacts.btnDeleteClick(Sender: TObject);
begin
   if mtbContacts.FieldByName('was_deleted').AsBoolean or ConfirmMessage('Are you sure you want to delete this contact?') then
   begin
      if not (mtbContacts.State in [dsEdit, dsInsert]) then
      begin
         mtbContacts.Edit;
      end;
      mtbContacts.FieldByName('was_deleted').AsBoolean := not mtbContacts.FieldByName('was_deleted').AsBoolean;
      AnyChanges := True;
      mtbContacts.Post;
      DetermineControlStatus;
   end;
end;

procedure TdContacts.btnExportClick(Sender: TObject);
begin
   btnSaveClick(self);
   if Assigned(fqry) and fqry.Active and CheckUserLogin(Self.Name, A_EXPORT) then
      ExportQuery(fqry, fGrid, fThing, 'C');
   DetermineControlStatus;
end;

procedure TdContacts.btnApplyChangesClick(Sender: TObject);
var
   lBookMark : TBookmarkStr;
   lQry : TIDQuery;
   lSQL : string;
   lField : TField;
   lInsertRecord, lUpdateRecord, lDeleteRecord : Boolean;
   lTrimPoint : Integer;
   lActFieldName : string;
   lNextPrimaryKey : string;
   lAnyChanges : Boolean;
   lError : string;
begin
   inherited;
   btnSaveClick(Self);
   if AnyChanges then
   begin
      fApplyingChanges := True;
      lAnyChanges := False;
      mtbContacts.DisableControls;
      lBookMark := mtbContacts.Bookmark;
      lQry := TIDQuery.Create(nil, 'CONTACT', 'contact_id');
      ShowProgress('Applying Changes...');
      try
         mtbContacts.First;
         while not mtbContacts.eof do
         begin
            lDeleteRecord := False;
            if mtbContacts.FieldByName('selected').AsBoolean then
            begin
               lUpdateRecord := False;
               lInsertRecord := False;

               if mtbContacts.FieldByName('was_deleted').AsBoolean then
               begin
                  lSQL := 'delete from contact';
                  lDeleteRecord := True;
               end
               else if mtbContacts.FieldByName('was_inserted').AsBoolean then
               begin
                  lNextPrimaryKey := lQry.NextPrimaryKey(False);
                  lSQL := 'insert into CONTACT (contact_id, created_by, created, updated_by, updated';
                  for lField in mtbContacts.Fields do
                  begin
                     lTrimPoint := Pos('_changed', lField.FieldName);
                     if (lTrimPoint <> 0) and lField.AsBoolean then
                     begin
                        if not lInsertRecord then
                        begin
                           mtbContacts.Edit;
                           mtbContacts.FieldByName('created_by').AsString := CoreData.UserID;
                           mtbContacts.FieldByName('created').AsDateTime  := Now;
                           mtbContacts.FieldByName('updated_by').AsString := CoreData.UserID;
                           mtbContacts.FieldByName('updated').AsDateTime  := Now;
                        end;
                        lInsertRecord := True;
                        lActFieldName := AnsiLeftStr(lField.FieldName, lTrimPoint - 1);
                        lSQL := lSQL + ', ' + lActFieldName;
                     end;
                  end;
                  lSQL := lSQL + ') VALUES (' + QuotedStr(lNextPrimaryKey) + ', ' +
                  QuotedStr(mtbContacts.FieldByName('created_by').AsString) + ', ' +
                  QuotedStr(ConvertDateToDBFormat(mtbContacts.FieldByName('created').AsDateTime)) + ', ' +
                  QuotedStr(mtbContacts.FieldByName('updated_by').AsString) + ', ' +
                  QuotedStr(ConvertDateToDBFormat(mtbContacts.FieldByName('updated').AsDateTime));
                  for lField in mtbContacts.Fields do
                  begin
                     lTrimPoint := Pos('_changed', lField.FieldName);
                     if (lTrimPoint <> 0) and lField.AsBoolean then
                     begin
                        lActFieldName := AnsiLeftStr(lField.FieldName, lTrimPoint - 1);
                        lSQL := lSQL + ', ';
                        if (mtbContacts.FieldByName(lActFieldName).DataType = ftDateTime) then
                           lSQL := lSQL + QuotedStr(ConvertDateToDBFormat(mtbContacts.FieldByName(lActFieldName).AsDateTime))
                        else if (mtbContacts.FieldByName(lActFieldName).DataType = ftBoolean) then
                        begin
                           if (mtbContacts.FieldByName(lActFieldName).AsBoolean) then
                              lSQL := lSQL + QuotedStr(IND_YES)
                           else
                              lSQL := lSQL + QuotedStr(IND_NO);
                        end
                        else
                           lSQL := lSQL + QuotedStr(mtbContacts.FieldByName(lActFieldName).AsString);
                        lField.AsBoolean := False;
                     end;
                  end;
                  lSQL := lSQL + ')';
               end
               else if mtbContacts.FieldByName('haschanged').AsBoolean then
               begin
                  lSQL := 'update CONTACT set ';
                  for lField in mtbContacts.Fields do
                  begin
                     if lField.FieldName <> 'contact_id' then
                     begin
                        lTrimPoint := Pos('_changed', lField.FieldName);
                        if (lTrimPoint <> 0) and lField.AsBoolean then
                        begin
                           if not lUpdateRecord then
                           begin
                              mtbContacts.Edit;
                              lUpdateRecord := True;
                              mtbContacts.FieldByName('updated_by').AsString := CoreData.UserID;
                              mtbContacts.FieldByName('updated').AsDateTime  := Now;
                              lSQL := lSQL + 'updated_by' + ' = ' + QuotedStr(mtbContacts.FieldByName('updated_by').AsString);
                              lSQL := lSQL + ', updated' + ' = ' +
                              QuotedStr(ConvertDateToDBFormat(mtbContacts.FieldByName('updated').AsDateTime));
                           end;
                           lActFieldName := AnsiLeftStr(lField.FieldName, lTrimPoint - 1);
                           lSQL := lSQL + ', ';
                           if (mtbContacts.FieldByName(lActFieldName).DataType = ftDateTime) then
                              lSQL := lSQL + lActFieldName + ' = ' +
                              QuotedStr(ConvertDateToDBFormat(mtbContacts.FieldByName(lActFieldName).AsDateTime))
                           else if (mtbContacts.FieldByName(lActFieldName).DataType = ftBoolean) then
                           begin
                              if (mtbContacts.FieldByName(lActFieldName).AsBoolean) then
                                 lSQL := lSQL + lActFieldName + ' = ' + QuotedStr(IND_YES)
                              else
                                 lSQL := lSQL + lActFieldName + ' = ' + QuotedStr(IND_NO);
                           end
                           else
                              lSQL := lSQL + lActFieldName + ' = ' + QuotedStr(mtbContacts.FieldByName(lActFieldName).AsString);
                           lField.AsBoolean := False;
                        end;
                     end;
                  end;
               end;

               if lUpdateRecord or lDeleteRecord then
                  lSQL := lSQL + ' where contact_id = ' + QuotedStr(mtbContacts.FieldByName('contact_id').AsString);

               if lUpdateRecord or lInsertRecord then
               begin
                  mtbContacts.FieldByName('was_inserted').AsBoolean := False;
                  mtbContacts.FieldByName('haschanged').AsBoolean  := False;
                  mtbContacts.Post;

                  try
                     lQry.SQL.Clear;
                     lQry.SQL.Add(lSQL);
                     lQry.ExecSQL;
                  except
                     on E : Exception do
                     begin
                        if lInsertRecord then
                           lError := 'Error inserting record ' + IntToStr(mtbContacts.RecNo) + #13#10 +
                           E.Message + #13#10 + lSQL
                        else
                           lError := 'Error updating record ' + IntToStr(mtbContacts.RecNo) + #13#10 +
                           E.Message + #13#10 + lSQL;
                        ShowMessage(lError);
                     end;
                  end;

                  if Assigned(mtbContacts.FindField('area')) and Assigned(mtbContacts.FindField('postcode')) then
                     CoreData.AddAreaToPostalFind(mtbContacts.FieldByName('postcode').AsString, mtbContacts.FieldByName('area').AsString);
               end
               else if lDeleteRecord then
               begin
                  try
                     lQry.SQL.Clear;
                     lQry.SQL.Add(lSQL);
                     lQry.ExecSQL;
                  except
                     on E : Exception do
                     begin
                        lError := 'Error deleting record ' + IntToStr(mtbContacts.RecNo) + #13#10 +
                           E.Message + #13#10 + lSQL;
                        ShowMessage(lError);   
                     end;
                  end;
                  mtbContacts.Delete;
               end;
            end
            else if mtbContacts.FieldByName('was_inserted').AsBoolean or
                    mtbContacts.FieldByName('haschanged').AsBoolean or
                    mtbContacts.FieldByName('was_deleted').AsBoolean then
               lAnyChanges := True; //there is a row that's changed but not selected

            if not lDeleteRecord then
               mtbContacts.Next;
         end;
      finally
         FreeAndNil(lQry);
         if not mtbContacts.IsEmpty then
            mtbContacts.Bookmark := lBookMark;
         mtbContacts.EnableControls;
         AnyChanges := lAnyChanges;
         fApplyingChanges := False;
         HideProgress;
      end;
   end;
end;

procedure TdContacts.btnClearListClick(Sender: TObject);
begin
  inherited;
  mtbContacts.Close;
  mtbContacts.Open;
  DetermineControlStatus;
  AnyChanges := False;
end;

function TdContacts.CanBeDeleted : Boolean;
begin
   Result := True;
end;

procedure TdContacts.dbgContactsColExit(Sender: TObject);
var
   lDTP : TDateTimePicker;
   lIndex : Integer;
begin
   inherited;
   lIndex := fDTP.IndexOf(IntToStr(dbgContacts.SelectedIndex));
   if lIndex <> -1 then
   begin
      lDTP := fDTP.Objects[lIndex] as TDateTimePicker;
      lDTP.Visible := False;
   end;
end;

procedure TdContacts.dbgContactsDblClick(Sender: TObject);
begin
   inherited;
   btnSaveClick(Self);
   mtbContacts.Edit;
   ShowContact(Self, TDataSet(mtbContacts), mtbFields, 'Edit Contact');
   DetermineControlStatus;
end;

procedure TdContacts.dbgContactsDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
   lGrid : TSMDBGrid;
   lDataSet : TDataSet;
   lField : TField;
   lIndex : Integer;
   lDTP : TDateTimePicker;
begin
   inherited;
   lGrid := (Sender as TSMDBGrid);
   lDataSet := lGrid.DataSource.DataSet;
   if Assigned(lDataSet) then
   begin
      //blue row if row changed
      if lDataSet.FieldByName('haschanged').AsBoolean or
         lDataSet.FieldByName('was_inserted').AsBoolean then
      begin
         lGrid.Canvas.Brush.Color := CHANGED_COLOR;
      end
      else //red row if inactive
      begin
         lField := lDataSet.FindField('active_ind');
         if Assigned(lField) and (lField.AsString = IND_NO) then
         begin
            lGrid.Canvas.Brush.Color := gSettings.ColInactive;
         end;
      end;

      //Bold font for any field that changes
      lField := lDataSet.FindField(Column.FieldName + '_changed');
      if Assigned(lField) then
      begin
          if lField.AsBoolean then
              lGrid.Canvas.Font.Style := lGrid.Canvas.Font.Style + [fsBold]
          else
              lGrid.Canvas.Font.Style := lGrid.Canvas.Font.Style - [fsBold];
      end;

      if (THackDBGrid(lGrid).DataLink.ActiveRecord + 1 = THackDBGrid(lGrid).Row) then
      begin
         lGrid.Canvas.Font.Color := clBlack;
         if (gdSelected in State) then
            lGrid.Canvas.Brush.Color := gSettings.ColSelected;
      end;

      lField := lDataSet.FindField('email_valid');
      if Assigned(lField) and (Column.FieldName = 'email') then
      begin
         if lField.AsString = IND_YES then
            lGrid.Canvas.Font.Color := clGreen
         else if lField.AsString = IND_NO then
            lGrid.Canvas.Font.Color := clRed
         else
            lGrid.Canvas.Font.Color := clBlack;
      end;

      //red font and strike if deleted
      lField := lDataSet.FindField('was_deleted');
      if Assigned(lField) and lField.AsBoolean then
      begin
         lGrid.Canvas.Font.Color := clRed;
         lGrid.Canvas.Font.Style := lGrid.Canvas.Font.Style + [fsStrikeOut];
      end;

      //purple if keywords wrong
      lField := lDataSet.FindField('keywords_wrong');
      if Assigned(lField) and lField.AsBoolean then
      begin
         lGrid.Canvas.Brush.Color := $00FFA4FF;
      end;

      //datetimepickers
      if (gdFocused in State) and (not Column.ReadOnly) then
      begin
         lIndex := fDTP.IndexOf(IntToStr(Column.Index));
         if lIndex <> -1 then
         begin
            lDTP := fDTP.Objects[lIndex] as TDateTimePicker;
            lDTP.Left := Rect.Left + dbgContacts.Left - 2;
            lDTP.Top  := Rect.Top + dbgContacts.Top - 2;
            lDTP.Width := Rect.Right - Rect.Left + 2;
            lDTP.Height := Rect.Bottom - Rect.Top + 2;
            lDTP.Visible := True;
            lDTP.BringToFront;
         end;
      end;
   end;
   lGrid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TdContacts.dbgContactsKeyPress(Sender: TObject; var Key: Char);
var
   lDTP : TDateTimePicker;
   lIndex : Integer;
begin
   inherited;
   if (Key = ',') then
      Key := #0
   else if (Key = Chr(9)) then
      Exit;

   lIndex := fDTP.IndexOf(IntToStr(dbgContacts.SelectedIndex));
   if lIndex <> -1 then
   begin
      lDTP := fDTP.Objects[lIndex] as TDateTimePicker;
      lDTP.SetFocus;
      SendMessage(lDTP.Handle, WM_CHAR, word(key), 0);
   end;
end;

procedure TdContacts.dbgContactsMouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
   inherited;
   MouseScrollUp(False);
end;

procedure TdContacts.dbgContactsMouseWheelUp(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
   inherited;
   MouseScrollUp(True);
end;

procedure TdContacts.MouseScrollUp(aUp: Boolean);
var
   I : Integer;
begin
   if mtbContacts.Active then
   begin
      mtbContacts.DisableControls;
      try
         if aUp then
         begin
            for I := 0 to 5 - 1 do
               mtbContacts.Prior;
         end
         else
            for I := 0 to 5 - 1 do
               mtbContacts.Next;
      finally
         mtbContacts.EnableControls;
      end;
   end;
end;

procedure TdContacts.btnEmailClick(Sender: TObject);
var
   lBookMark : TBookmarkStr;
   lAllEmails : string;
begin
   inherited;
   //TODO Progress bar

   lAllEmails := '';
   btnSaveClick(self);
   mtbContacts.DisableControls;
   lBookMark := mtbContacts.Bookmark;
   try
      mtbContacts.First;
      while not mtbContacts.eof do
      begin
         if mtbContacts.FieldByName('selected').AsBoolean then
            lAllEmails := lAllEmails + mtbContacts.FieldByName('email').AsString + ';';

         mtbContacts.Next;
      end;

      DisplayMail(lAllEmails, 'test subject', 'test body');
   finally
      mtbContacts.Bookmark := lBookMark;
      mtbContacts.EnableControls;
   end;
end;

procedure TdContacts.btnGenerateClick(Sender: TObject);
   procedure AddGeneratedContactsToList;
   var
      lListWasEmpty : Boolean;
   begin
      pbGenerate.Position := 0;
      pbGenerate.Visible := True;
      lListWasEmpty := mtbContacts.IsEmpty;
      mtbContacts.DisableControls;
      try
         qryGenerate.Open;
         pbGenerate.Max := qryGenerate.RecordCount;
         qryGenerate.First;
         while not qryGenerate.eof do
         begin
            if lListWasEmpty or (not mtbContacts.Locate('contact_id', qryGenerate.FieldByName('contact_id').AsString, [])) then
            begin
               mtbContacts.Append;
               mtbContacts.FieldByName('contact_id').AsString       := qryGenerate.FieldByName('contact_id').AsString;
               mtbContacts.FieldByName('active_ind').AsString       := qryGenerate.FieldByName('active_ind').AsString;
               mtbContacts.FieldByName('branch_id').AsString        := qryGenerate.FieldByName('branch_id').AsString;
               mtbContacts.FieldByName('email_valid').AsString      := qryGenerate.FieldByName('email_valid').AsString;
               mtbContacts.FieldByName('keywords').AsString         := qryGenerate.FieldByName('keywords').AsString;

               mtbFields.First;
               while not mtbFields.eof do
               begin
                  if mtbFieldsfield_type.AsString = FIELD_TYPE_DATETIME then
                     mtbContacts.FieldByName(mtbFieldsfield_name.AsString).AsDateTime := qryGenerate.FieldByName(mtbFieldsfield_name.AsString).AsDateTime
                  else if mtbFieldsfield_type.AsString = FIELD_TYPE_NUMBER then
                     mtbContacts.FieldByName(mtbFieldsfield_name.AsString).AsFloat := qryGenerate.FieldByName(mtbFieldsfield_name.AsString).AsFloat
                  else
                  begin
                     mtbContacts.FieldByName(mtbFieldsfield_name.AsString).AsString := qryGenerate.FieldByName(mtbFieldsfield_name.AsString).AsString;
                  end;
                  mtbFields.Next;
               end;

               mtbContacts.Post;
            end;
            qryGenerate.Next;
            pbGenerate.StepBy(1);
            Application.ProcessMessages;
         end;
      finally
         qryGenerate.Close;
         pbGenerate.Visible := False;
         mtbContacts.First;
         mtbContacts.EnableControls;
      end;
   end;
begin
   inherited;
   fGeneratingData := True;
   qryGenerate.SQL.Clear;
   qryGenerate.SQL.Add('select * from contact');
   qryGenerate.SQL.Add(fSearch.AddWhereClause);
   if cbViewSQL.Checked then
      ShowMessage(qryGenerate.SQL.Text);
   AddGeneratedContactsToList;
   fGeneratingData := False;
   pgcContacts.ActivePageIndex := 1;
   pgcContactsChange(Self);
   DetermineControlStatus;
end;

procedure TdContacts.btnImportClick(Sender: TObject);
begin
   btnSaveClick(self);
   if Assigned(fqry) and fqry.Active and CheckUserLogin(Self.Name, A_IMPORT) then
   begin
      fImporting := True;
      ImportIntoQuery(fqry, fGrid, 'C');
      fImporting := False;
   end;
   DetermineControlStatus;
end;

procedure TdContacts.btnKeywordsClick(Sender: TObject);
begin
  inherited;
  btnSaveClick(Self);
  fApplyingChanges := True;
  AddRemoveKeywords(mtbContacts, Self);
  fApplyingChanges := False;
end;

procedure TdContacts.btnLoadSearchClick(Sender: TObject);
var
   lSavedSearchId : string;
begin
   inherited;
   lSavedSearchId := '';
   LoadSearch(lSavedSearchId, Self);
   if lSavedSearchId <> '' then
   begin
      fSearch.PopulateSearch(lSavedSearchId);
   end;
end;

procedure TdContacts.btnNewClick(Sender: TObject);
begin
   //Dont call inherited which calls qry.Insert
   //That would normally calculate the next primary key
   //but we'll calculate that when applying changes
   btnSaveClick(self);
   if mtbContacts.Active then
   begin
      mtbContacts.Append;
      ShowContact(Self, TDataSet(mtbContacts), mtbFields, 'New Contact');
      if mtbContacts.IsEmpty then
         AnyChanges := False;
      if pgcContacts.ActivePageIndex = 0 then
         pgcContacts.ActivePageIndex := 1;
      DetermineControlStatus;
   end;
end;

procedure TdContacts.btnOnlyChangesClick(Sender: TObject);
begin
   inherited;
   btnSaveClick(self);
   mtbContacts.DisableControls;
   try
      mtbContacts.First;
      while not mtbContacts.eof do
      begin
         if (not mtbContacts.FieldByName('was_inserted').AsBoolean) and
            (not mtbContacts.FieldByName('haschanged').AsBoolean) and
            (not mtbContacts.FieldByName('was_deleted').AsBoolean) then
         begin
            mtbContacts.Delete;  //This will just remove it from the grid
         end
         else
            mtbContacts.Next;
      end;
   finally
      mtbContacts.First;
      mtbContacts.EnableControls;
      DetermineControlStatus;
   end;
end;

procedure TdContacts.btnOrderByClick(Sender: TObject);
begin
   inherited;
   btnSaveClick(self);
   OrderBy(mtbContacts, dbgContacts, Self);
end;

procedure TdContacts.btnReplaceClick(Sender: TObject);
begin
   inherited;
   SearchAndReplace(mtbContacts, dbgContacts, Self);
end;

procedure TdContacts.qryUSER_IDGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
   if qryUsers.Locate('user_id', Sender.AsString, []) then
      Text := qryUsers.FieldByName('display_name').AsString;
end;

procedure TdContacts.qryBRANCH_IDGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
   if qryBranch.Locate('branch_id', Sender.AsString, []) then
      Text := qryBranch.FieldByName('description').AsString;
end;

procedure TdContacts.qryBRANCH_IDSetText(Sender: TField; const Text: string);
begin
   if qryBranch.Locate('description', Text, []) then
      Sender.AsString := qryBranch.FieldByName('branch_id').AsString
   else
      Sender.AsString := '';
end;

end.
