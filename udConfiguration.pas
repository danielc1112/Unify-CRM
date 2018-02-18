unit udConfiguration;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, udBaseEnquiry, ComCtrls, Buttons, Grids, DBGrids, SMDBGrid, DB,
  uuCoreData, ExtCtrls, StdCtrls, udBaseProgram, IBODataset, kbmMemTable, Spin,
  GradPnl;

type
  THackDBGrid = class(TSMDBGrid);

  TdConfiguration = class(TdBaseEnquiry)
    pgcConfiguration: TPageControl;
    tsGeneral: TTabSheet;
    tsUserLevels: TTabSheet;
    tsProgramAccess: TTabSheet;
    tsPostcode: TTabSheet;
    tsItems: TTabSheet;
    dbgUserLevels: TSMDBGrid;
    dbgItems: TSMDBGrid;
    dsUserLevels: TDataSource;
    dsPrograms: TDataSource;
    dsKeywords: TDataSource;
    dsPostalFind: TDataSource;
    dsItems: TDataSource;
    dbgPrograms: TSMDBGrid;
    dbgPostalFind: TSMDBGrid;
    pnlFilterCol: TPanel;
    lblFilterColor: TLabel;
    lblSelectedColor: TLabel;
    pnlSelectedCol: TPanel;
    lblConfigurationColor: TLabel;
    pnlConfigurationCol: TPanel;
    lblContactsColor: TLabel;
    pnlContactsCol: TPanel;
    lblBranchesColor: TLabel;
    pnlBranchesCol: TPanel;
    lblUsersCol: TLabel;
    pnlUsersCol: TPanel;
    cdOptions: TColorDialog;
    lblInActive: TLabel;
    pnlInActiveCol: TPanel;
    tsContactFields: TTabSheet;
    pgcContactFields: TPageControl;
    tsKeywords: TTabSheet;
    dbgKeywords: TSMDBGrid;
    tsFreeFields: TTabSheet;
    dbgFields: TSMDBGrid;
    dsFields: TDataSource;
    qryFields: TIBOQuery;
    qryContactFields: TIBOQuery;
    qryUsers: TIBOQuery;
    qryUsersUSER_ID: TStringField;
    qryUsersDISPLAY_NAME: TStringField;
    qryUserLevel: TIBOQuery;
    qryUserLeveluser_level_id: TStringField;
    qryUserLeveldescription: TStringField;
    edtDNS: TLabeledEdit;
    tsEmailDomain: TTabSheet;
    dbgEmailDomain: TSMDBGrid;
    dsEmailDomain: TDataSource;
    qryEmailDomains: TIBOQuery;
    qryFieldsFIELD_NAME: TStringField;
    qryFieldsDISPLAY_NAME: TStringField;
    qryFieldsDEFAULT_VALUE: TStringField;
    qryFieldsFIELD_TYPE: TStringField;
    qryFieldsCHAR_CASE: TStringField;
    qryFieldsCAN_SEARCH: TStringField;
    qryFieldsREQUIRED: TStringField;
    qryFieldsDISPLAY_ORDER: TIntegerField;
    qryFieldsCREATED: TDateTimeField;
    qryFieldsCREATED_BY: TStringField;
    qryFieldsUPDATED: TDateTimeField;
    qryFieldsUPDATED_BY: TStringField;
    lblWeeks: TLabel;
    edtPurgeHistory: TSpinEdit;
    lblPurge: TLabel;
    gbEmailVerification: TGroupBox;
    edtEmailFrom: TLabeledEdit;
    qryFieldsVISIBLE: TStringField;
    qryFieldsFSIZE: TIntegerField;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    edtDefaultBranch: TComboBox;
    lblDefaultBranch: TLabel;
    qryBranch: TIBOQuery;
    mtbBranchBRANCH_ID: TStringField;
    mtbBranchDESCRIPTION: TStringField;
    mtbBranchACTIVE_IND: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pgcConfigurationChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure pnlColClick(Sender: TObject);
    procedure pnlFilterColClick(Sender: TObject);
    procedure pnlSelectedColClick(Sender: TObject);
    procedure pnlConfigurationColClick(Sender: TObject);
    procedure pnlContactsColClick(Sender: TObject);
    procedure pnlBranchesColClick(Sender: TObject);
    procedure pnlUsersColClick(Sender: TObject);
    procedure pnlInActiveColClick(Sender: TObject);
    procedure pgcContactFieldsChange(Sender: TObject);
    procedure qryFieldsFIELD_TYPEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qryFieldsFIELD_TYPESetText(Sender: TField; const Text: string);
    procedure qryFieldsCHAR_CASEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qryFieldsCHAR_CASESetText(Sender: TField; const Text: string);
    procedure btnNewClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure qryDropdownBeforePost(DataSet: TDataSet);
    procedure qryFieldsNewRecord(DataSet: TDataSet);
    procedure qryUSER_IDGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qryUSER_LEVEL_IDGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qryUSER_LEVEL_IDSetText(Sender: TField; const Text: string);
    procedure qryCDAfterDelete(DataSet: TDataSet);
    procedure qryCDAfterScroll(DataSet: TDataSet);
    procedure qryCDAfterPost(DataSet: TDataSet);
    procedure qryKeywordsAfterDelete(DataSet: TDataSet);
    procedure qryKeywordsAfterPost(DataSet: TDataSet);
    procedure btnImportClick(Sender: TObject);
    procedure qryDropdownNewRecord(DataSet: TDataSet);
    procedure qryFieldsBeforePost(DataSet: TDataSet);
    procedure qryFieldsCREATED_BYGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qryFieldsUPDATED_BYGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qryKeywordsNewRecord(DataSet: TDataSet);
    procedure qryKeywordsCREATED_BYGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qryKeywordsUPDATED_BYGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure edtPurgeHistoryChange(Sender: TObject);
    procedure dbgFieldsDblClick(Sender: TObject);
    procedure edtDefaultBranchChange(Sender: TObject);
  private
    fQryUserLevels,
    fQryPrograms,
    fQryKeywords,
    fQryPostalFind,
    fQryItems : TIDQuery;
    fQueries : TStringList;
    fDataSources : TStringList;
    fGrids : TStringList;
    fFieldNames : TStringList;
    fDisplayNames : TStringList;
    fSelectedContactDropdownBefore : string;
    procedure SetFilterRowColor;
    procedure ShowSettings;
    procedure MakeNewDropdownTab(aFieldName, aDisplayName: String);
    procedure CreateCustomDropdowns;
    procedure AddLookupsToGrid;
    function GetMaxDisplayOrder: Integer;
    procedure CreateField(aFieldName, aFieldType, aDisplayName,
      aDefaultValue: String; aSize : Integer);
  protected
    function CanBeDeleted: Boolean; override;
  end;

implementation

uses uuGlobals, Math, udFieldOption;

{$R *.dfm}

procedure TdConfiguration.CreateCustomDropdowns;
var
   lFieldName, lDisplayName : string;
begin
   //Search contactfields table for dropdowns and create their tabs
   try
      qryContactFields.Open;
      while not qryContactFields.eof do
      begin
         if qryContactFields.FieldByName('field_type').AsString = FIELD_TYPE_DROPDOWN then
         begin
            lFieldName := Trim(qryContactFields.FieldByName('field_name').AsString);
            lDisplayName := Trim(qryContactFields.FieldByName('display_name').AsString);

            if lFieldName = '' then
               ShowMessage('Record found with field_name is empty!')
            else if lDisplayName = '' then
               ShowMessage('Record found with display_name is empty!')
            else
            begin
               MakeNewDropdownTab(lFieldName, lDisplayName);
            end;
         end;

         qryContactFields.Next;
      end;
   except
      on E:Exception do
      begin
         qryContactFields.Close;
         ShowMessage(E.Message);
         Self.Close;
      end;
   end;
end;

procedure TdConfiguration.FormCreate(Sender: TObject);
var
   lField : TField;
begin
  fQry := nil;
  fGrid := nil;
  fThing := '';
  fSelectedContactDropdownBefore := '';
  qryBranch.Open;
  inherited;
  fQueries := TStringList.Create;
  fDataSources := TStringList.Create;
  fGrids := TStringList.Create;
  fFieldNames := TStringList.Create;
  fDisplayNames := TStringList.Create;

  fQryUserLevels := TIDQuery.Create(nil, 'USERLEVEL', 'user_level_id');
  fQryPrograms   := TIDQuery.Create(nil, 'PROGRAM', 'program_id');
  fQryKeywords   := TIDQuery.Create(nil, 'KEYWORD', 'keyword_id');
  fQryPostalFind := TIDQuery.Create(nil, 'POSTALFIND', 'postalfind_id');
  fQryItems      := TIDQuery.Create(nil, 'ITEMS', 'item_id');

  fQryUserLevels.AfterScroll := qryAfterScroll;
  fQryPrograms.AfterScroll   := qryAfterScroll;
  fQryKeywords.AfterScroll   := qryCDAfterScroll;
  fQryPostalFind.AfterScroll := qryAfterScroll;
  fQryItems.AfterScroll      := qryAfterScroll;
  qryEmailDomains.AfterScroll      := qryAfterScroll;

  fQryUserLevels.AfterEdit := qryAfterEdit;
  fQryPrograms.AfterEdit   := qryAfterEdit;
  fQryKeywords.AfterEdit   := qryAfterEdit;
  fQryPostalFind.AfterEdit := qryAfterEdit;
  fQryItems.AfterEdit      := qryAfterEdit;
  qryEmailDomains.AfterEdit := qryAfterEdit;

  fQryUserLevels.AfterCancel := qryAfterCancel;
  fQryPrograms.AfterCancel   := qryAfterCancel;
  fQryKeywords.AfterCancel   := qryAfterCancel;
  fQryPostalFind.AfterCancel := qryAfterCancel;
  fQryItems.AfterCancel      := qryAfterCancel;
  qryEmailDomains.AfterCancel  := qryAfterCancel;

  fQryUserLevels.AfterDelete := qryAfterDelete;
  fQryPrograms.AfterDelete   := qryAfterDelete;
  fQryKeywords.AfterDelete   := qryKeywordsAfterDelete;
  fQryPostalFind.AfterDelete := qryAfterDelete;
  fQryItems.AfterDelete      := qryAfterDelete;
  qryEmailDomains.AfterDelete := qryAfterDelete;

  fQryUserLevels.AfterPost   := qryAfterPost;
  fQryPrograms.AfterPost     := qryAfterPost;
  fQryKeywords.AfterPost     := qryKeywordsAfterPost;
  fQryPostalFind.AfterPost   := qryAfterPost;
  fQryItems.AfterPost        := qryAfterPost;
  qryEmailDomains.AfterPost  := qryAfterPost;

  fQryKeywords.OnNewRecord   := qryKeywordsNewRecord;

  fQryUserLevels.SQL.Add('select * from userlevel order by level');
  fQryPrograms.SQL.Add('select * from program');
  fQryKeywords.SQL.Add('select * from keyword order by description');
  fQryPostalFind.SQL.Add('select * from postalfind order by suburb');
  fQryItems.SQL.Add('select * from items');

  fQryKeywords.FieldDefs.Clear;
  fQryKeywords.FieldDefs.Update;

  lField := fQryKeywords.FieldByName('created_by');
  lField.OnGetText := qryKeywordsCREATED_BYGetText;

  lField := fQryKeywords.FieldByName('updated_by');
  lField.OnGetText := qryKeywordsUPDATED_BYGetText;

  fQryPrograms.FieldDefs.Clear;
  fQryPrograms.FieldDefs.Update;

  lField := fQryPrograms.FieldByName('view_user_level_id');
  lField.OnGetText := qryUSER_LEVEL_IDGetText;
  lField.OnSetText := qryUSER_LEVEL_IDSetText;

  lField := fQryPrograms.FieldByName('create_user_level_id');
  lField.OnGetText := qryUSER_LEVEL_IDGetText;
  lField.OnSetText := qryUSER_LEVEL_IDSetText;

  lField := fQryPrograms.FieldByName('delete_user_level_id');
  lField.OnGetText := qryUSER_LEVEL_IDGetText;
  lField.OnSetText := qryUSER_LEVEL_IDSetText;

  lField := fQryPrograms.FieldByName('import_user_level_id');
  lField.OnGetText := qryUSER_LEVEL_IDGetText;
  lField.OnSetText := qryUSER_LEVEL_IDSetText;

  lField := fQryPrograms.FieldByName('export_user_level_id');
  lField.OnGetText := qryUSER_LEVEL_IDGetText;
  lField.OnSetText := qryUSER_LEVEL_IDSetText;

  qryUserLevel.Open;
  AddLookupsToGrid;

  qryUsers.Open;

  dsUserLevels.DataSet   := fQryUserLevels;
  dsPrograms.DataSet     := fQryPrograms;
  dsKeywords.DataSet     := fQryKeywords;
  dsPostalFind.DataSet   := fQryPostalFind;
  dsItems.DataSet        := fQryItems;
  dsEmailDomain.DataSet  := qryEmailDomains;

  dbgUserLevels.OnDrawColumnCell  := dbgDrawColumnCell;
  dbgPrograms.OnDrawColumnCell    := dbgDrawColumnCell;
  dbgKeywords.OnDrawColumnCell    := dbgDrawColumnCell;
  dbgPostalFind.OnDrawColumnCell  := dbgDrawColumnCell;
  dbgItems.OnDrawColumnCell       := dbgDrawColumnCell;
  dbgEmailDomain.OnDrawColumnCell := dbgDrawColumnCell;

  dbgUserLevels.DataSource  := dsUserLevels;
  dbgPrograms.DataSource    := dsPrograms;
  dbgKeywords.DataSource    := dsKeywords;
  dbgPostalFind.DataSource  := dsPostalFind;
  dbgItems.DataSource       := dsItems;
  dbgEmailDomain.DataSource := dsEmailDomain;

  CreateCustomDropdowns;

  qryFields.IB_Connection        := CoreData.DBConnection;
  qryContactFields.IB_Connection := CoreData.DBConnection;

  dsFields.DataSet := qryFields;

  qryBranch.First;
  while not qryBranch.eof do
  begin
     edtDefaultBranch.Items.Add(qryBranch.FieldByName('description').AsString);
     qryBranch.Next;
  end;
end;

procedure TdConfiguration.FormShow(Sender: TObject);
begin
   inherited;
   ShowSettings;
   SetFilterRowColor;
   pgcConfiguration.ActivePageIndex := 0;
   pgcContactFields.ActivePageIndex := 0;
   pgcConfigurationChange(Self);
   MaximizeProgram;
end;

procedure TdConfiguration.ShowSettings;
begin
   pnlFilterCol.Color        := gSettings.ColFilter;
   pnlSelectedCol.Color      := gSettings.ColSelected;
   pnlInActiveCol.Color      := gSettings.ColInActive;
   pnlConfigurationCol.Color := gSettings.ColBGConfiguration;
   pnlContactsCol.Color      := gSettings.ColBGContacts;
   pnlBranchesCol.Color      := gSettings.ColBGBranches;
   pnlUsersCol.Color         := gSettings.ColBGUsers;
   edtDNS.Text               := gSettings.DNSServerIP;
   edtEmailFrom.Text         := gSettings.EmailFrom;
   edtPurgeHistory.Text      := IntToStr(gSettings.HistoryPurgeWeeks);
   if qryBranch.Locate('branch_id', gSettings.DefaultBranch, []) then
      edtDefaultBranch.Text := qryBranch.FieldByName('description').AsString;
end;

procedure TdConfiguration.btnDeleteClick(Sender: TObject);
var
   lQry : TIBOQuery;
   lFieldName : string;
  I: Integer;
begin
   lFieldName := qryFields.FieldByName('field_name').AsString;
   inherited;
   if (pgcConfiguration.ActivePageIndex = 1) and (pgcContactFields.ActivePageIndex = 1) then
   begin
      lQry := TIBOQuery.Create(nil);
      lQry.IB_Connection := CoreData.DBConnection;

      //Check contacts for this field and warn
      CoreData.DBConnection.StartTransaction;
      try
         //Delete this column from contact table
         lQry.SQL.Clear;
         lQry.SQL.Add('alter table contact drop ' + lFieldName);
         lQry.ExecSQL;

         //Delete records from contactdropdown
         lQry.SQL.Clear;
         lQry.SQL.Add('delete from contactdropdowns where field_name = ' + QuotedStr(lFieldName));
         lQry.ExecSQL;

         //Make dropdown tab invisible
         for I := 0 to fFieldNames.Count - 1 do
         begin
            if fFieldNames[I] = lFieldName then
            begin
               (fQueries.Objects[I] as TIBOQuery).Close;
               pgcContactFields.Pages[I + 2].TabVisible := False;
            end;
         end;

         CoreData.DBConnection.Commit;
      except
         on E: Exception do
         begin
            CoreData.DBConnection.Rollback;
            ShowMessage(E.Message);
         end;
      end;
   end;
end;

procedure TdConfiguration.btnImportClick(Sender: TObject);
var
   lBookMark : TBookmarkStr;
begin
   inherited;
   if (pgcConfiguration.ActivePageIndex = 1) and (pgcContactFields.ActivePageIndex = 1) then
   begin
      //Cycle through fields, if fieldname not in qrycontactfields
      lBookMark := fQry.Bookmark;
      try
         fQry.First;
         while not fQry.eof do
         begin
            if not fFieldNames.IndexOf(fQry.FieldByName('field_name').AsString) = -1 then
            begin
               CreateField(fQry.FieldByName('field_name').AsString,
                  fQry.FieldByName('field_type').AsString,
                  fQry.FieldByName('display_name').AsString,
                  fQry.FieldByName('default_value').AsString,
                  fQry.FieldByName('fsize').AsInteger);
            end;
            fQry.Next;
         end;
      finally
         fQry.Bookmark := lBookMark;
      end;
   end;
end;

procedure TdConfiguration.btnNewClick(Sender: TObject);
begin
   inherited;
   if (pgcConfiguration.ActivePageIndex = 1) and (pgcContactFields.ActivePageIndex = 1) then
   begin
      //TODO : 2 fields can't have the same field_name or display_name
      if ShowFieldOptions(fQry, Self, 'New Field') then
      begin
         CreateField(fQry.FieldByName('field_name').AsString,
            fQry.FieldByName('field_type').AsString,
            fQry.FieldByName('display_name').AsString,
            fQry.FieldByName('default_value').AsString,
            fQry.FieldByName('fsize').AsInteger);
      end;
   end;
   DetermineControlStatus;
end;

procedure TdConfiguration.CreateField(aFieldName, aFieldType, aDisplayName, aDefaultValue : String; aSize : Integer);
var
   lQry : TIBOQuery;
begin
   lQry := TIBOQuery.Create(nil);
   lQry.IB_Connection := CoreData.DBConnection;
   CoreData.DBConnection.StartTransaction;
   try
      //Create new contact table column with default value
      lQry.SQL.Clear;
      if aFieldType = FIELD_TYPE_DATETIME then
         lQry.SQL.Add('alter table contact add ' + aFieldName + ' timestamp')
      else if aFieldType = FIELD_TYPE_NUMBER then
         lQry.SQL.Add('alter table contact add ' + aFieldName + ' float')
      else
         lQry.SQL.Add('alter table contact add ' + aFieldName + ' varchar(' + IntToStr(aSize) + ')');
      lQry.ExecSQL;

      if aFieldType = FIELD_TYPE_DROPDOWN then
         MakeNewDropdownTab(aFieldName, aDisplayName);

      CoreData.DBConnection.Commit;

      //update contacts with default value
      if aDefaultValue <> '' then
      begin
         lQry.SQL.Clear;
         lQry.SQL.Add('update contact set ' + aFieldName + ' = ' + QuotedStr(aDefaultValue));
         lQry.ExecSQL;
      end;
   except
      on E: Exception do
      begin
         CoreData.DBConnection.Rollback;
         ShowMessage(E.Message);
      end;
   end;
end;

procedure TdConfiguration.dbgFieldsDblClick(Sender: TObject);
begin
   inherited;
   if (pgcConfiguration.ActivePageIndex = 1) and (pgcContactFields.ActivePageIndex = 1) then
   begin
      //TODO : 2 fields can't have the same field_name or display_name
      if ShowFieldOptions(fQry, Self, 'Edit Field') then
      begin

      end;
   end;
   DetermineControlStatus;
end;

procedure TdConfiguration.edtDefaultBranchChange(Sender: TObject);
var
   lBranchID : string;
begin
   inherited;
   if qryBranch.Locate('description', Trim(edtDefaultBranch.Text), []) then
      lBranchID := qryBranch.FieldByName('branch_id').AsString
   else
      lBranchID := '';
   gSettings.DefaultBranch := lBranchID;
   CoreData.SaveSetting('DefaultBranch', gSettings.DefaultBranch);
end;

procedure TdConfiguration.edtPurgeHistoryChange(Sender: TObject);
begin
  inherited;
  if Trim(edtPurgeHistory.Text) <> '' then
  begin
     gSettings.HistoryPurgeWeeks := StrToInt(Trim(edtPurgeHistory.Text));
     CoreData.SaveSetting('HistoryPurgeWeeks', IntToStr(gSettings.HistoryPurgeWeeks));
  end;
end;

function TdConfiguration.CanBeDeleted : Boolean;
begin
   Result := True;
end;

procedure TdConfiguration.MakeNewDropdownTab(aFieldName, aDisplayName : String);
var
   lNewTab : TTabSheet;
   lGrid : TSMDBGrid;
   lDataSource : TDataSource;
   lQry : TIBOQuery;
begin
   //Add tab
   lNewTab := TTabSheet.Create(pgcContactFields);
   lNewTab.Caption := aDisplayName;
   lNewTab.PageControl := pgcContactFields;

   //add grid
   lGrid := TSMDBGrid.Create(nil);
   lGrid.Parent := lNewTab;
   lGrid.Align := alClient;
   lGrid.OnDrawColumnCell  := dbgDrawColumnCell;
   lGrid.GridStyle.FilterColor   := gSettings.ColFilter;
   lGrid.ExOptions := lGrid.ExOptions + [eoBooleanAsCheckBox, eoRowNumber, eoShowFilterBar, eoAnyKeyFilter];
   lGrid.Flat := True;
   lGrid.ReadOnly := False;

   //grid columns
   with lGrid.Columns.Add do
   begin
      FieldName := 'dropdown';
      Title.Caption := 'Value';
   end;

   with lGrid.Columns.Add do
   begin
      FieldName := 'description';
      Title.Caption := 'Description';
   end;

   with lGrid.Columns.Add do
   begin
      FieldName := 'active_ind';
      Title.Caption := 'Active';
      PickList.Add('Y');
      PickList.Add('N');
   end;

   //add datasource
   lDataSource := TDataSource.Create(nil);

   //add query
   lQry := TIBOQuery.Create(nil);
   lQry.IB_Connection := CoreData.DBConnection;
   lQry.RequestLive := True;
   lQry.ReadOnly := False;
   lQry.SQL.Add('select field_name, dropdown, description, active_ind from contactdropdowns where field_name = ' + QuotedStr(aFieldName) + ' order by dropdown');

   //Query events
   lQry.OnNewRecord := qryDropdownNewRecord;
   lQry.AfterScroll := qryCDAfterScroll;
   lQry.AfterEdit   := qryAfterEdit;
   lQry.AfterCancel := qryAfterCancel;
   lQry.AfterDelete := qryCDAfterDelete;
   lQry.AfterPost   := qryCDAfterPost;
   lQry.BeforePost  := qryDropdownBeforePost;

   lDataSource.DataSet := lQry;
   lGrid.DataSource := lDataSource;

   fGrids.AddObject(aFieldName, lGrid);
   fDataSources.AddObject(aFieldName, lDataSource);
   fQueries.AddObject(aFieldName, lQry);
   fFieldNames.Add(aFieldName);
   fDisplayNames.Add(aDisplayName);
end;

procedure TdConfiguration.qryCDAfterScroll(DataSet: TDataSet);
begin
   inherited;
   if Assigned(fGrid) and DataSet.Active and (DataSet.RecNo > 99) then
   begin
      fGrid.WidthOfIndicator := 26 +
         (IND_WIDTH*Floor(Log10(DataSet.RecNo)) - IND_WIDTH);
   end
   else if Assigned(fGrid) then
      fGrid.WidthOfIndicator := 26;

   if Assigned(fQry) and fQry.Active and (not fQry.eof) then
   begin
      if (pgcContactFields.ActivePageIndex = 0) then
         fSelectedContactDropdownBefore := fQry.FieldByName('description').AsString
      else if (pgcContactFields.ActivePageIndex > 1) then
         fSelectedContactDropdownBefore := fQry.FieldByName('dropdown').AsString;
   end;
end;

procedure TdConfiguration.qryCDAfterDelete(DataSet: TDataSet);
var
   lQry : TIBOQuery;
   lFieldName : string;
begin
   inherited;
   //TODO: set it to be the default value
   lFieldName := fFieldNames[pgcContactFields.ActivePageIndex - 2];
   lQry := TIDQuery.Create(nil);
   lQry.Unidirectional := True;
   lQry.SQL.Add('update contact ');
   lQry.SQL.Add(' set ' + lFieldName + ' = ' + QuotedStr(''));
   lQry.SQL.Add(' where ' + lFieldName + ' = ' + QuotedStr(fSelectedContactDropdownBefore));
   ShowProgress('Updating contacts...');
   try
      lQry.ExecSQL;
   finally
      lQry.Free;
      HideProgress;
      DetermineControlStatus;
   end;
end;

procedure TdConfiguration.qryCDAfterPost(DataSet: TDataSet);
var
   lQry : TIBOQuery;
   lFieldName : string;
begin
   inherited;
   lFieldName := fFieldNames[pgcContactFields.ActivePageIndex - 2];
   lQry := TIDQuery.Create(nil);
   lQry.Unidirectional := True;
   lQry.SQL.Add('update contact ');
   lQry.SQL.Add(' set ' + lFieldName + ' = ' + QuotedStr(fQry.FieldByName('dropdown').AsString));
   lQry.SQL.Add(' where ' + lFieldName + ' = ' + QuotedStr(fSelectedContactDropdownBefore));
   ShowProgress('Updating contacts...');
   try
      lQry.ExecSQL;
   finally
      lQry.Free;
      HideProgress;
      DetermineControlStatus;
   end;
end;

procedure TdConfiguration.qryKeywordsAfterDelete(DataSet: TDataSet);
var
   lQry : TIBOQuery;
   lStr : string;
   lPart : string;
   lPos : Integer;
begin
   inherited;
   lQry := TIDQuery.Create(nil);
   lQry.Unidirectional := True;
   lQry.SQL.Add('select keywords from contact ');
   lQry.SQL.Add(' where keywords like ' + QuotedStr('%' + KEYWORD_DELIMITER + fSelectedContactDropdownBefore + KEYWORD_DELIMITER + '%'));
   ShowProgress('Updating contacts...');
   try
      lQry.Open;
      while not lQry.eof do
      begin
         lStr := lQry.FieldByName('keywords').AsString;
         lPart := KEYWORD_DELIMITER + fSelectedContactDropdownBefore + KEYWORD_DELIMITER;
         lPos := AnsiPos(lPart, lStr);
         if lPos <> 0 then
         begin
            if (lPos > 1) and ((lPos + Length(lPart)) < Length(lStr)) then //not first, not last
               Delete(lStr, lPos + 1, Length(lPart) - 1)
            else if (lPos + Length(lPart)) < Length(lStr) then //keywords after it, not before it
               Delete(lStr, lPos, Length(lPart) - 1)
            else if (lPos > 1) then //keywords before it, not after it
               Delete(lStr, lPos + 1, Length(lPart) - 1)
            else //it's the only keyword
               lStr := '';
            lQry.Edit;
            lQry.FieldByName('keywords').AsString := lStr;
            lQry.Post;
         end;
         lQry.Next;
      end;
   finally
      lQry.Close;
      lQry.Free;
      HideProgress;
      DetermineControlStatus;
   end;
end;

procedure TdConfiguration.qryKeywordsNewRecord(DataSet: TDataSet);
begin
   inherited;
   DataSet.FieldByName('active_ind').AsString := IND_YES;
   DetermineControlStatus;
end;

procedure TdConfiguration.qryKeywordsAfterPost(DataSet: TDataSet);
var
   lQry : TIBOQuery;
   lStr, lPart, lNewPart : string;
   lPos : Integer;
   lNewStr : string;
   lEndPart : string;
begin
   inherited;
   lQry := TIDQuery.Create(nil);
   lQry.Unidirectional := True;
   lQry.SQL.Add('select keywords from contact');
   lQry.SQL.Add(' where keywords like ' + QuotedStr('%' + KEYWORD_DELIMITER + fSelectedContactDropdownBefore + KEYWORD_DELIMITER + '%'));
   ShowProgress('Updating contacts...');
   try
      lQry.Open;
      while not lQry.eof do
      begin
         lStr := lQry.FieldByName('keywords').AsString;
         lPart := KEYWORD_DELIMITER + fSelectedContactDropdownBefore + KEYWORD_DELIMITER;
         lNewPart := KEYWORD_DELIMITER + fQryKeywords.FieldByName('description').AsString + KEYWORD_DELIMITER;
         lPos := AnsiPos(lPart, lStr);
         if lPos <> 0 then
         begin
            lNewStr := Copy(lStr, 1, lPos - 1);
            lEndPart := Copy(lStr, lPos + Length(lPart), Length(lStr) - Length(lPart) - lPos + 1);
            lNewStr := lNewStr + lNewPart;
            lNewStr := lNewStr + lEndPart;
            lQry.Edit;
            lQry.FieldByName('keywords').AsString := lNewStr;
            lQry.Post;
         end;
         lQry.Next;
      end;
   finally
      lQry.Close;
      lQry.Free;
      HideProgress;
      DetermineControlStatus;
   end;
end;

procedure TdConfiguration.qryDropdownNewRecord(DataSet: TDataSet);
begin
   inherited;
   if not fImporting then
   begin
      DataSet.FieldByName('active_ind').AsString := IND_YES;
      DetermineControlStatus;
   end;
end;

procedure TdConfiguration.qryDropdownBeforePost(DataSet: TDataSet);
begin
   inherited;
   if (fFieldNames[pgcContactFields.ActivePageIndex - 2] = '') then
   begin
      if not Assigned(DataSet.FieldByName('field_name')) then
         ShowMessage('Error: field_name not assigned')
      else
         ShowMessage('Error: FieldName array is empty');
      Abort;
   end
   else
      DataSet.FieldByName('field_name').AsString := fFieldNames[pgcContactFields.ActivePageIndex - 2];
end;

procedure TdConfiguration.qryFieldsNewRecord(DataSet: TDataSet);
begin
   inherited;
   qryFields.FieldByName('field_type').AsString := FIELD_TYPE_FREE;
   qryFields.FieldByName('fsize').AsInteger     := 32;
   qryFields.FieldByName('char_case').AsString  := CHAR_UNCAPITALISED;
   qryFields.FieldByName('can_search').AsString := IND_YES;
   qryFields.FieldByName('required').AsString   := IND_NO;
   qryFields.FieldByName('display_order').AsInteger := GetMaxDisplayOrder + 1;
   qryFields.FieldByName('visible').AsString    := IND_YES;
end;

procedure TdConfiguration.qryFieldsUPDATED_BYGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
   if qryUsers.Locate('user_id', Sender.AsString, []) then
      Text := qryUsers.FieldByName('display_name').AsString;
end;

function TdConfiguration.GetMaxDisplayOrder : Integer;
var
   lQry : TIBOQuery;
begin
   Result := 0;
   lQry := TIBOQuery.Create(nil);
   lQry.IB_Connection := CoreData.dbUnify;
   try
      lQry.SQL.Add('select max(display_order) as max_display_order from contactfields');
      lQry.Open;
      if not lQry.eof then
      begin
         Result := lQry.FieldByName('max_display_order').AsInteger;
      end;
   finally
      lQry.Close;
      lQry.Free;
   end;
end;

procedure TdConfiguration.qryFieldsBeforePost(DataSet: TDataSet);
begin
  inherited;
   if DataSet.State in [dsInsert] then
   begin
      DataSet.FieldByName('created_by').AsString := CoreData.UserID;
      DataSet.FieldByName('created').AsDateTime  := Now;
      DataSet.FieldByName('updated_by').AsString := CoreData.UserID;
      DataSet.FieldByName('updated').AsDateTime  := Now;
   end
   else if DataSet.State in [dsEdit]  then
   begin
      DataSet.FieldByName('updated_by').AsString := CoreData.UserID;
      DataSet.FieldByName('updated').AsDateTime  := Now;
   end;
end;

procedure TdConfiguration.qryFieldsCHAR_CASEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
   inherited;
   if Sender.AsString = CHAR_CAPITALISED then
      Text := 'Capitalised'
   else if Sender.AsString = CHAR_UPPERCASE then
      Text := 'Uppercase'
   else if Sender.AsString = CHAR_LOWERCASE then
      Text := 'Lowercase'
   else if Sender.AsString = CHAR_UNCAPITALISED then
      Text := 'Uncapitalised';
end;

procedure TdConfiguration.qryFieldsCHAR_CASESetText(Sender: TField;
  const Text: string);
begin
   inherited;
   if Text = 'Capitalised' then
      Sender.AsString := CHAR_CAPITALISED
   else if Text = 'Uppercase' then
      Sender.AsString := CHAR_UPPERCASE
   else if Text = 'Lowercase' then
      Sender.AsString := CHAR_LOWERCASE
   else if Text = 'Uncapitalised' then
      Sender.AsString := CHAR_UNCAPITALISED
   else
      Sender.AsString := '';
end;

procedure TdConfiguration.qryKeywordsCREATED_BYGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
   if qryUsers.Locate('user_id', Sender.AsString, []) then
      Text := qryUsers.FieldByName('display_name').AsString;
end;

procedure TdConfiguration.qryKeywordsUPDATED_BYGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
   if qryUsers.Locate('user_id', Sender.AsString, []) then
      Text := qryUsers.FieldByName('display_name').AsString;
end;

procedure TdConfiguration.qryFieldsCREATED_BYGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
   if qryUsers.Locate('user_id', Sender.AsString, []) then
      Text := qryUsers.FieldByName('display_name').AsString;
end;

procedure TdConfiguration.qryFieldsFIELD_TYPEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
   inherited;
   if Sender.AsString = FIELD_TYPE_FREE then
      Text := 'Free Text'
   else if Sender.AsString = FIELD_TYPE_DROPDOWN then
      Text := 'Dropdown'
   else if Sender.AsString = FIELD_TYPE_DATETIME then
      Text := 'DateTime'
   else if Sender.AsString = FIELD_TYPE_NUMBER then
      Text := 'Number'
end;

procedure TdConfiguration.qryFieldsFIELD_TYPESetText(Sender: TField;
  const Text: string);
begin
   inherited;
   if Text = 'Free Text' then
      Sender.AsString := FIELD_TYPE_FREE
   else if Text = 'Dropdown' then
      Sender.AsString := FIELD_TYPE_DROPDOWN
   else if Text = 'DateTime' then
      Sender.AsString := FIELD_TYPE_DATETIME
   else if Text = 'Number' then
      Sender.AsString := FIELD_TYPE_NUMBER
   else
      Sender.AsString := '';
end;

procedure TdConfiguration.pgcConfigurationChange(Sender: TObject);
begin
   inherited;
   fSelectedContactDropdownBefore := '';
   btnSaveClick(Self);
   if pgcConfiguration.ActivePageIndex = 1 then
   begin
      pgcContactFieldsChange(Self);
   end
   else if pgcConfiguration.ActivePageIndex = 2 then
   begin
      fQry := TIDQuery(dsUserLevels.DataSet);
      fGrid := dbgUserLevels;
      fThing := 'User Level';
   end
   else if pgcConfiguration.ActivePageIndex = 3 then
   begin
      fQry := dsPrograms.DataSet;
      fGrid := dbgPrograms;
      fThing := 'Program';
   end
   else if pgcConfiguration.ActivePageIndex = 4 then
   begin
      fQry := dsPostalFind.DataSet;
      fGrid := dbgPostalFind;
      fThing := 'Postcode';
   end
   else if pgcConfiguration.ActivePageIndex = 5 then
   begin
      fQry := dsItems.DataSet;
      fGrid := dbgItems;
      fThing := 'Item';
   end
   else if pgcConfiguration.ActivePageIndex = 6 then
   begin
      fQry := dsEmailDomain.DataSet;
      fGrid := dbgEmailDomain;
      fThing := 'Email Domain';
   end
   else
   begin
      fQry := nil;
      fGrid := nil;
      fThing := '';
   end;

   SetHints;

   btnNew.Visible    := (pgcConfiguration.ActivePageIndex <> 0) and (pgcConfiguration.ActivePageIndex <> 3);
   btnSave.Visible   := pgcConfiguration.ActivePageIndex <> 0;
   btnCancel.Visible := pgcConfiguration.ActivePageIndex <> 0;
   btnDelete.Visible := (pgcConfiguration.ActivePageIndex <> 0) and (pgcConfiguration.ActivePageIndex <> 3);
   btnImport.Visible := (pgcConfiguration.ActivePageIndex <> 0) and (pgcConfiguration.ActivePageIndex <> 3);
   btnExport.Visible := pgcConfiguration.ActivePageIndex <> 0;

   if Assigned(fQry) and (not fQry.Active) then
      fQry.Open;
end;

procedure TdConfiguration.pgcContactFieldsChange(Sender: TObject);
begin
   inherited;
   fSelectedContactDropdownBefore := '';
   if pgcContactFields.ActivePageIndex = 0 then
   begin
      fQry := dsKeywords.DataSet;
      fGrid := dbgKeywords;
      fThing := 'Keywords';
   end
   else if pgcContactFields.ActivePageIndex = 1 then
   begin
      fQry := dsFields.DataSet;
      fGrid := dbgFields;
      fThing := 'Field';
   end
   else
   begin
      fQry := TDataSet(fQueries.Objects[pgcContactFields.ActivePageIndex - 2]);
      fGrid := TSMDBGrid(fGrids.Objects[pgcContactFields.ActivePageIndex - 2]);
      fThing := fDisplayNames[pgcContactFields.ActivePageIndex - 2];
   end;

   SetHints;

   btnNew.Visible    := True;
   btnSave.Visible   := True;
   btnCancel.Visible := True;
   btnDelete.Visible := True;
   btnImport.Visible := True;
   btnExport.Visible := True;

   if Assigned(fQry) and (not fQry.Active) then
   begin
      fQry.Open;
   end;

   if Assigned(fQry) and fQry.Active and (not fQry.eof) then
   begin
      if (pgcContactFields.ActivePageIndex = 0) then
         fSelectedContactDropdownBefore := fQry.FieldByName('description').AsString
      else if (pgcContactFields.ActivePageIndex > 1) then
         fSelectedContactDropdownBefore := fQry.FieldByName('dropdown').AsString;
   end;
end;

procedure TdConfiguration.pnlBranchesColClick(Sender: TObject);
begin
  pnlColClick(Sender);
  gSettings.ColBGBranches := pnlBranchesCol.Color;
  CoreData.SaveSetting('ColBGBranches', ColorToString(gSettings.ColBGBranches));
end;

procedure TdConfiguration.pnlColClick(Sender: TObject);
begin
   cdOptions.Color := (Sender as TPanel).Color;
   if cdOptions.Execute then
      (Sender as TPanel).Color := cdOptions.Color;
end;

procedure TdConfiguration.pnlConfigurationColClick(Sender: TObject);
begin
  pnlColClick(Sender);
  gSettings.ColBGConfiguration := pnlConfigurationCol.Color;
  CoreData.SaveSetting('ColBGConfiguration', ColorToString(gSettings.ColBGConfiguration));
  ColorThePanel(gSettings.ColBGConfiguration, clBlack);
end;

procedure TdConfiguration.pnlContactsColClick(Sender: TObject);
begin
  pnlColClick(Sender);
  gSettings.ColBGContacts := pnlContactsCol.Color;
  CoreData.SaveSetting('ColBGContacts', ColorToString(gSettings.ColBGContacts));
end;

procedure TdConfiguration.pnlFilterColClick(Sender: TObject);
begin
  pnlColClick(Sender);
  gSettings.ColFilter := pnlFilterCol.Color;
  CoreData.SaveSetting('ColFilter', ColorToString(gSettings.ColFilter));
  SetFilterRowColor;
end;

procedure TdConfiguration.pnlInActiveColClick(Sender: TObject);
begin
  pnlColClick(Sender);
  gSettings.ColInactive := pnlInactiveCol.Color;
  CoreData.SaveSetting('ColInactive', ColorToString(gSettings.ColInactive));
end;

procedure TdConfiguration.pnlSelectedColClick(Sender: TObject);
begin
  pnlColClick(Sender);
  gSettings.ColSelected := pnlSelectedCol.Color;
  CoreData.SaveSetting('ColSelected', ColorToString(gSettings.ColSelected));
end;

procedure TdConfiguration.pnlUsersColClick(Sender: TObject);
begin
  pnlColClick(Sender);
  gSettings.ColBGUsers := pnlUsersCol.Color;
  CoreData.SaveSetting('ColBGUsers', ColorToString(gSettings.ColBGUsers));
end;

procedure TdConfiguration.SetFilterRowColor;
begin
   dbgUserLevels.GridStyle.FilterColor   := gSettings.ColFilter;
   dbgPrograms.GridStyle.FilterColor     := gSettings.ColFilter;
   dbgKeywords.GridStyle.FilterColor     := gSettings.ColFilter;
   dbgPostalFind.GridStyle.FilterColor   := gSettings.ColFilter;
   dbgItems.GridStyle.FilterColor        := gSettings.ColFilter;
end;

procedure TdConfiguration.qryUSER_IDGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
   if qryUsers.Locate('user_id', Sender.AsString, []) then
      Text := qryUsers.FieldByName('display_name').AsString;
end;

procedure TdConfiguration.AddLookupsToGrid;
var
   lUserLevelDesc : string;
begin
   qryUserLevel.First;
   while not qryUserLevel.eof do
   begin
      lUserLevelDesc := qryUserLevel.FieldByName('DESCRIPTION').AsString;
      dbgPrograms.Columns[1].PickList.Add(lUserLevelDesc);
      dbgPrograms.Columns[2].PickList.Add(lUserLevelDesc);
      dbgPrograms.Columns[3].PickList.Add(lUserLevelDesc);
      dbgPrograms.Columns[4].PickList.Add(lUserLevelDesc);
      dbgPrograms.Columns[5].PickList.Add(lUserLevelDesc);
      qryUserLevel.Next;
   end;
   qryUserLevel.First;
end;

procedure TdConfiguration.qryUSER_LEVEL_IDGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
   if qryUserLevel.Locate('user_level_id', Sender.AsString, []) then
      Text := qryUserLevel.FieldByName('description').AsString;
end;

procedure TdConfiguration.qryUSER_LEVEL_IDSetText(Sender: TField; const Text: string);
begin
   if qryUserLevel.Locate('description', Text, []) then
      Sender.AsString := qryUserLevel.FieldByName('user_level_id').AsString
   else
      Sender.AsString := '';
end;

procedure TdConfiguration.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   gSettings.DNSServerIP := edtDNS.Text;
   CoreData.SaveSetting('DNSServerIP', gSettings.DNSServerIP);

   gSettings.EmailFrom := edtEmailFrom.Text;
   CoreData.SaveSetting('EmailFrom', gSettings.EmailFrom);
   
   qryBranch.Close;
   qryUserLevel.Close;
   qryUsers.Close;
   if Assigned(fQueries) then
   begin
      FreeAndNil(fQueries);
   end;
   if Assigned(fDataSources) then
   begin
      FreeAndNil(fDataSources);
   end;
   if Assigned(fGrids) then
   begin
      FreeAndNil(fGrids);
   end;
   if Assigned(fFieldNames) then
   begin
      FreeAndNil(fFieldNames);
   end;
   if Assigned(fDisplayNames) then
   begin
      FreeAndNil(fDisplayNames);
   end;

   if Assigned(fQryUserLevels) then
   begin
      if fQryUserLevels.Active then
         fQryUserLevels.Close;
      FreeAndNil(fQryUserLevels);
   end;
   if Assigned(fQryPrograms) then
   begin
      if fQryPrograms.Active then
         fQryPrograms.Close;
      FreeAndNil(fQryPrograms);
   end;
   if Assigned(fQryKeywords) then
   begin
      if fQryKeywords.Active then
         fQryKeywords.Close;
      FreeAndNil(fQryKeywords);
   end;
   if Assigned(fQryPostalFind) then
   begin
      if fQryPostalFind.Active then
         fQryPostalFind.Close;
      FreeAndNil(fQryPostalFind);
   end;
   if Assigned(fQryItems) then
   begin
      if fQryItems.Active then
         fQryItems.Close;
      FreeAndNil(fQryItems);
   end;
   qryEmailDomains.Close;
   fqry := nil;
   inherited;
end;

end.
