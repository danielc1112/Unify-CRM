unit uuSearchCriteria;

interface

uses
   IBODataset, kbmMemTable, StdCtrls, ComCtrls, Forms, Controls, Types, DB, Buttons;

type
  TSearch = class
  private
     fForm : TForm;
     fFields : TkbmMemTable;
     flbKUsedOr, flbEKUsedAnd, flbKToUseOr, flbEKToUseAnd : TListbox;
     flbKUsedAnd, flbEKUsedOr, flbKToUseAnd, flbEKToUseOr : TListbox;
     flbFields : TListbox;
     fEdtBranch : TComboBox;
     fCbActive : TCheckBox;
     fQryUsers : TIBOQuery;
     fRbValue, fRbRange, fRbExact, fRbContains, fRbStarts, fRbEnds : TRadioButton;
     fCbCaseSensitive : TCheckbox;
     fEdtFieldValue : TEdit;
     fEdtDFieldValue : TComboBox;
     fBtnClear : TButton;
     fdtpFrom, fdtpTo : TDateTimePicker;
     flblFieldValue : TLabel;
     fgbSearchType, fGbRange : TGroupBox;
     fqryContactDropdowns : TIBOQuery;
     fedtFrom, fedtTo : TEdit;
     fbtnClearSearch : TButton;
     fqryBranch : TIBOQuery;
     fbtnUseOr, fbtnDontUseOr, fbtnEUseAnd, fbtnEDontUseAnd : TSpeedButton;
     fbtnUseAnd, fbtnDontUseAnd, fbtnEUseOr, fbtnEDontUseOr : TSpeedButton;
    procedure cbCaseSensitiveClick(Sender: TObject);
    procedure edtDFieldValueChange(Sender: TObject);
    procedure edtDFieldValueDropdown(Sender: TObject);
    procedure edtFieldValueChange(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
    procedure dtpFromChange(Sender: TObject);
    procedure dtpToChange(Sender: TObject);
    procedure FillDropdown(aFieldName: string);
    procedure lbFieldsClick(Sender: TObject);
    procedure edtFromChange(Sender: TObject);
    procedure edtToChange(Sender: TObject);
    procedure rbContainsClick(Sender: TObject);
    procedure rbEndsClick(Sender: TObject);
    procedure rbExactClick(Sender: TObject);
    procedure rbRangeClick(Sender: TObject);
    procedure rbStartsClick(Sender: TObject);
    procedure rbValueClick(Sender: TObject);
    procedure mtbFieldsCalcFields(DataSet: TDataSet);
    procedure lbFieldsDrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure btnClearSearchClick(Sender: TObject);
    procedure btnUseOrClick(Sender: TObject);
    procedure btnDontUseOrClick(Sender: TObject);
    procedure btnEDontUseAndClick(Sender: TObject);
    procedure btnEUseAndClick(Sender: TObject);
    procedure btnUseAndClick(Sender: TObject);
    procedure btnDontUseAndClick(Sender: TObject);
    procedure btnEDontUseOrClick(Sender: TObject);
    procedure btnEUseOrClick(Sender: TObject);

  public
     constructor Create(aForm : TForm; aFields : TkbmMemTable; albFields : TListBox;
        albKUsedOr, albEKUsedAnd, albKToUseOr, albEKToUseAnd : TListbox;
        albKUsedAnd, albEKUsedOr, albKToUseAnd, albEKToUseOr : TListbox;
        aEdtBranch : TComboBox; aCbActive : TCheckbox; aQryUsers : TIBOQuery;
        aRbValue, aRbRange, aRbExact, aRbContains, aRbStarts, aRbEnds : TRadioButton;
        aCbCaseSensitive : TCheckbox; aEdtFieldValue : TEdit; aEdtDFieldValue : TComboBox;
        aBtnClear : TButton; adtpFrom, adtpTo : TDateTimePicker;
        alblFieldValue : TLabel; agbSearchType, agbRange : TGroupBox;
        aqryContactDropdowns : TIBOQuery; aedtFrom, aedtTo : TEdit;
        abtnClearSearch : TButton; aqryBranch : TIBOQuery;
        abtnUseOr, abtnDontUseOr, abtnEUseAnd, abtnEDontUseAnd : TSpeedButton;
        abtnUseAnd, abtnDontUseAnd, abtnEUseOr, abtnEDontUseOr : TSpeedButton);
     function  AddWhereClause : String;
     procedure PopulateFieldsMemoryTable;
     procedure ResetKeywords;
     procedure PopulateSearch(aSavedSearchId : String);
     function  GetKeywordsExcludedAnd: string;
     function  GetKeywordsIncludedOr: string;
     function  GetKeywordsExcludedOr: string;
     function  GetKeywordsIncludedAnd: string;
  end;

implementation

uses uuGlobals, SysUtils, Dialogs, uuCoreData, Classes, udDropdown;

constructor TSearch.Create(aForm : TForm; aFields : TkbmMemTable; albFields : TListBox;
   albKUsedOr, albEKUsedAnd, albKToUseOr, albEKToUseAnd : TListbox;
   albKUsedAnd, albEKUsedOr, albKToUseAnd, albEKToUseOr : TListbox;
   aEdtBranch : TComboBox; aCbActive : TCheckbox; aQryUsers : TIBOQuery;
   aRbValue, aRbRange, aRbExact, aRbContains, aRbStarts, aRbEnds : TRadioButton;
   aCbCaseSensitive : TCheckbox; aEdtFieldValue : TEdit; aEdtDFieldValue : TComboBox;
   aBtnClear : TButton; adtpFrom, adtpTo : TDateTimePicker;
   alblFieldValue : TLabel; agbSearchType, agbRange : TGroupBox;
   aqryContactDropdowns : TIBOQuery; aedtFrom, aedtTo : TEdit;
   abtnClearSearch : TButton; aqryBranch : TIBOQuery;
   abtnUseOr, abtnDontUseOr, abtnEUseAnd, abtnEDontUseAnd : TSpeedButton;
   abtnUseAnd, abtnDontUseAnd, abtnEUseOr, abtnEDontUseOr : TSpeedButton);
begin
   inherited Create;
   fForm            := aForm;
   fFields          := aFields;
   flbFields        := albFields;
   flbKUsedOr       := albKUsedOr;
   flbEKUsedAnd     := albEKUsedAnd;
   flbKToUseOr      := albKToUseOr;
   flbEKToUseAnd    := albEKToUseAnd;
   flbKUsedAnd      := albKUsedAnd;
   flbEKUsedOr      := albEKUsedOr;
   flbKToUseAnd     := albKToUseAnd;
   flbEKToUseOr     := albEKToUseOr;
   fEdtBranch       := aEdtBranch;
   fCbActive        := aCbActive;
   fQryUsers        := aQryUsers;
   fRbValue         := aRbValue;
   fRbRange         := aRbRange;
   fRbExact         := aRbExact;
   fRbContains      := aRbContains;
   fRbStarts        := aRbStarts;
   fRbEnds          := aRbEnds;
   fCbCaseSensitive := aCbCaseSensitive;
   fEdtFieldValue   := aEdtFieldValue;
   fEdtDFieldValue  := aEdtDFieldValue;
   fBtnClear        := aBtnClear;
   fdtpFrom         := adtpFrom;
   fdtpTo           := adtpTo;
   flblFieldValue   := alblFieldValue;
   fgbSearchType    := agbSearchType;
   fgbRange         := agbRange;
   fqryContactDropdowns := aqryContactDropdowns;
   fedtFrom         := aedtFrom;
   fedtTo           := aedtTo;
   fbtnClearSearch  := abtnClearSearch;
   fqryBranch       := aqryBranch;
   fbtnUseOr        := abtnUseOr;
   fbtnDontUseOr    := abtnDontUseOr;
   fbtnEUseAnd      := abtnEUseAnd;
   fbtnEDontUseAnd  := abtnEDontUseAnd;
   fbtnUseAnd       := abtnUseAnd;
   fbtnDontUseAnd   := abtnDontUseAnd;
   fbtnEUseOr       := abtnEUseOr;
   fbtnEDontUseOr   := abtnEDontUseOr;

   //Events
   flbFields.OnClick        := lbFieldsClick;
   fCbCaseSensitive.OnClick := cbCaseSensitiveClick;
   fEdtDFieldValue.OnChange := edtDFieldValueChange;
   fEdtDFieldValue.OnDropdown := edtDFieldValueDropdown;
   fEdtFieldValue.OnChange  := edtFieldValueChange;
   fbtnClear.OnClick        := btnClearClick;
   fdtpFrom.OnChange        := dtpFromChange;
   fdtpTo.OnChange          := dtpToChange;
   fedtFrom.OnChange        := edtFromChange;
   fedtTo.OnChange          := edtToChange;
   frbContains.OnClick      := rbContainsClick;
   frbEnds.OnClick          := rbEndsClick;
   frbExact.OnClick         := rbExactClick;
   frbRange.OnClick         := rbRangeClick;
   frbStarts.OnClick        := rbStartsClick;
   frbValue.OnClick         := rbValueClick;
   fFields.OnCalcFields     := mtbFieldsCalcFields;
   flbFields.OnDrawItem     := lbFieldsDrawItem;
   fbtnClearSearch.OnClick  := btnClearSearchClick;
   fbtnUseOr.OnClick        := btnUseOrClick;
   fbtnDontUseOr.OnClick    := btnDontUseOrClick;
   fbtnEUseAnd.OnClick      := btnEUseAndClick;
   fbtnEDontUseAnd.OnClick  := btnEDontUseAndClick;
   fbtnUseAnd.OnClick       := btnUseAndClick;
   fbtnDontUseAnd.OnClick   := btnDontUseAndClick;
   fbtnEUseOr.OnClick       := btnEUseOrClick;
   fbtnEDontUseOr.OnClick   := btnEDontUseOrClick;

   ResetKeywords;
end;

procedure TSearch.PopulateFieldsMemoryTable;
var
   lQry : TIBOQuery;
   lDisplayName : string;
begin
   //Branch dropdown
   fqryBranch.First;
   fedtBranch.Items.Clear;
   while not fqryBranch.eof do
   begin
      fedtBranch.Items.Add(fqryBranch.FieldByName('DESCRIPTION').AsString);
      fqryBranch.Next;
   end;

   fFields.Open;

   lQry := TIBOQuery.Create(nil);
   lQry.IB_Connection := CoreData.DBConnection;
   lQry.SQL.Add('select field_name, display_name, char_case, field_type, default_value, can_search, required, visible, fsize from contactfields order by display_order');
   try
      lQry.Open;
      while not lQry.eof do
      begin
         fFields.Append;
         fFields.FieldByName('field_name').AsString  := lQry.FieldByName('field_name').AsString;
         fFields.FieldByName('display_name').AsString    := lQry.FieldByName('display_name').AsString;
         fFields.FieldByName('char_case').AsString       := lQry.FieldByName('char_case').AsString;
         fFields.FieldByName('search_type').AsString     := SEARCH_TYPE_CONTAINS;
         fFields.FieldByName('case_sensitive').AsBoolean := False;
         fFields.FieldByName('default_value').AsString   := lQry.FieldByName('default_value').AsString;
         fFields.FieldByName('can_search').AsString      := lQry.FieldByName('can_search').AsString;
         fFields.FieldByName('required').AsString        := lQry.FieldByName('required').AsString;
         fFields.FieldByName('field_type').AsString      := lQry.FieldByName('field_type').AsString;
         fFields.FieldByName('visible').AsBoolean        := RegStrToBool(lQry.FieldByName('visible').AsString);
         fFields.FieldByName('fsize').AsInteger          := lQry.FieldByName('fsize').AsInteger;
         fFields.Post;

         lQry.Next;
      end;
   finally
      lQry.Close;
      FreeAndNil(lQry);
   end;

   fFields.Append;
   fFields.FieldByName('field_name').AsString      := 'created_by';
   fFields.FieldByName('display_name').AsString    := 'Created By';
   fFields.FieldByName('char_case').AsString       := CHAR_UNCAPITALISED;
   fFields.FieldByName('search_type').AsString     := SEARCH_TYPE_CONTAINS;
   fFields.FieldByName('case_sensitive').AsBoolean := False;
   fFields.FieldByName('default_value').AsString   := '';
   fFields.FieldByName('can_search').AsString      := IND_YES;
   fFields.FieldByName('required').AsString        := IND_NO;
   fFields.FieldByName('field_type').AsString      := FIELD_TYPE_FREE;
   fFields.FieldByName('fsize').AsInteger          := 14;
   fFields.Post;

   fFields.Append;
   fFields.FieldByName('field_name').AsString      := 'created';
   fFields.FieldByName('display_name').AsString    := 'Created';
   fFields.FieldByName('char_case').AsString       := CHAR_UNCAPITALISED;
   fFields.FieldByName('search_type').AsString     := SEARCH_TYPE_CONTAINS;
   fFields.FieldByName('case_sensitive').AsBoolean := False;
   fFields.FieldByName('default_value').AsString   := '';
   fFields.FieldByName('can_search').AsString      := IND_YES;
   fFields.FieldByName('required').AsString        := IND_NO;
   fFields.FieldByName('field_type').AsString      := FIELD_TYPE_DATETIME;
   fFields.Post;

   fFields.Append;
   fFields.FieldByName('field_name').AsString      := 'updated_by';
   fFields.FieldByName('display_name').AsString    := 'Updated By';
   fFields.FieldByName('char_case').AsString       := CHAR_UNCAPITALISED;
   fFields.FieldByName('search_type').AsString     := SEARCH_TYPE_CONTAINS;
   fFields.FieldByName('case_sensitive').AsBoolean := False;
   fFields.FieldByName('default_value').AsString   := '';
   fFields.FieldByName('can_search').AsString      := IND_YES;
   fFields.FieldByName('required').AsString        := IND_NO;
   fFields.FieldByName('field_type').AsString      := FIELD_TYPE_FREE;
   fFields.FieldByName('fsize').AsInteger          := 14;
   fFields.Post;

   fFields.Append;
   fFields.FieldByName('field_name').AsString      := 'updated';
   fFields.FieldByName('display_name').AsString    := 'Updated';
   fFields.FieldByName('char_case').AsString       := CHAR_UNCAPITALISED;
   fFields.FieldByName('search_type').AsString     := SEARCH_TYPE_CONTAINS;
   fFields.FieldByName('case_sensitive').AsBoolean := False;
   fFields.FieldByName('default_value').AsString   := '';
   fFields.FieldByName('can_search').AsString      := IND_YES;
   fFields.FieldByName('required').AsString        := IND_NO;
   fFields.FieldByName('field_type').AsString      := FIELD_TYPE_DATETIME;
   fFields.Post;

   flbFields.Items.BeginUpdate;
   try
      fFields.First;
      while not fFields.eof do
      begin
         lDisplayName := fFields.FieldByName('display_name').AsString;
         if fFields.FieldByName('can_search').AsString = IND_YES then
            flbFields.Items.Add(lDisplayName);
         fFields.Next;
      end;
      fFields.First;
   finally
      flbFields.Items.EndUpdate;
      flbFields.ItemIndex := 0;
   end;
   flbFields.OnClick(Self);
end;

procedure TSearch.ResetKeywords;
var
   lQry : TIDQuery;
begin
   flbKToUseOr.Sorted := True;
   flbEKToUseAnd.Sorted := True;
   flbKUsedOr.Sorted := True;
   flbEKUsedAnd.Sorted := True;
   flbKToUseAnd.Sorted := True;
   flbEKToUseOr.Sorted := True;
   flbKUsedAnd.Sorted := True;
   flbEKUsedOr.Sorted := True;

   flbKToUseOr.Items.Clear;
   flbEKToUseAnd.Items.Clear;
   flbKUsedOr.Items.Clear;
   flbEKUsedAnd.Items.Clear;
   flbKToUseAnd.Items.Clear;
   flbEKToUseOr.Items.Clear;
   flbKUsedAnd.Items.Clear;
   flbEKUsedOr.Items.Clear;
   //Get all keywords and fill up the listbox
   lQry := TIDQuery.Create(nil);
   try
      lQry.SQL.Add('select description from keyword order by description');
      lQry.Open;
      while not lQry.eof do
      begin
         flbKToUseOr.Items.Add(lQry.FieldByName('description').AsString);
         flbEKToUseAnd.Items.Add(lQry.FieldByName('description').AsString);
         flbKToUseAnd.Items.Add(lQry.FieldByName('description').AsString);
         flbEKToUseOr.Items.Add(lQry.FieldByName('description').AsString);
         lQry.Next;
      end;
   finally
      lQry.Close;
      lQry.Free;
      if flbKToUseOr.Items.Count <> 0 then
         flbKToUseOr.Selected[0] := True;
      if flbEKToUseAnd.Items.Count <> 0 then
         flbEKToUseAnd.Selected[0] := True;
      if flbKToUseAnd.Items.Count <> 0 then
         flbKToUseAnd.Selected[0] := True;
      if flbEKToUseOr.Items.Count <> 0 then
         flbEKToUseOr.Selected[0] := True;
   end;
end;


function TSearch.GetKeywordsIncludedOr : string;
var
   I : Integer;
begin
   Result := '';
   if flbKUsedOr.Items.Count <> 0 then
   begin
      Result := KEYWORD_DELIMITER;
      for I := 0 to flbKUsedOr.Items.Count - 1 do
      begin
         Result := Result + flbKUsedOr.Items[I] + KEYWORD_DELIMITER;
      end;
   end;
end;

function TSearch.GetKeywordsExcludedAnd : string;
var
   I : Integer;
begin
   Result := '';
   if flbEKUsedAnd.Items.Count <> 0 then
   begin
      Result := KEYWORD_DELIMITER;
      for I := 0 to flbEKUsedAnd.Items.Count - 1 do
      begin
         Result := Result + flbEKUsedAnd.Items[I] + KEYWORD_DELIMITER;
      end;
   end;
end;

function TSearch.GetKeywordsIncludedAnd : string;
var
   I : Integer;
begin
   Result := '';
   if flbKUsedAnd.Items.Count <> 0 then
   begin
      Result := KEYWORD_DELIMITER;
      for I := 0 to flbKUsedAnd.Items.Count - 1 do
      begin
         Result := Result + flbKUsedAnd.Items[I] + KEYWORD_DELIMITER;
      end;
   end;
end;

function TSearch.GetKeywordsExcludedOr : string;
var
   I : Integer;
begin
   Result := '';
   if flbEKUsedOr.Items.Count <> 0 then
   begin
      Result := KEYWORD_DELIMITER;
      for I := 0 to flbEKUsedOr.Items.Count - 1 do
      begin
         Result := Result + flbEKUsedOr.Items[I] + KEYWORD_DELIMITER;
      end;
   end;
end;

function TSearch.AddWhereClause : String;
var
   lWhereAdded : Boolean;
   I : Integer;
   lFieldName : string;
   lFieldValue : string;
   lFrom, lTo : string;
   lFromDate, lToDate : TDateTime;
   lUserID : string;
   lSearchType : string;
   lCaseSensitive : Boolean;

   procedure AddWhere;
   begin
      if not lWhereAdded then
      begin
         Result := Result + ' where ';
         lWhereAdded := True;
      end
      else
         Result := Result + ' and ';
   end;
begin
   lWhereAdded := False;
   Result := '';

   if fEdtBranch.Text <> '' then
   begin
      Result := Result + ' join branch on (branch.branch_id = contact.branch_id)';
      AddWhere;
      Result := Result + ' (branch.description = ' + QuotedStr(fEdtBranch.Text) + ')';
   end;
   if fCbActive.State in [cbChecked, cbUnchecked] then
   begin
      AddWhere;
      if fCbActive.Checked then
         Result := Result + ' (contact.active_ind = ' + QuotedStr(IND_YES) + ')'
      else
         Result := Result + ' (contact.active_ind = ' + QuotedStr(IND_NO) + ')'
   end;
   //Only include contacts that have any of these keywords
   if flbKUsedOr.Items.Count <> 0 then
   begin
      AddWhere;
      Result := Result + '(';
      for I := 0 to flbKUsedOr.Items.Count - 1 do
      begin
         Result := Result + ' (UPPER(contact.keywords) LIKE UPPER(' + QuotedStr('%' + KEYWORD_DELIMITER + flbKUsedOr.Items[I] + KEYWORD_DELIMITER + '%') + '))';
         if I <> flbKUsedOr.Items.Count - 1 then
            Result := Result + ' or ';
      end;
      Result := Result + ')';
   end;
   //Only include contacts that have all of these keywords
   if flbKUsedAnd.Items.Count <> 0 then
   begin
      AddWhere;
      Result := Result + '(';
      for I := 0 to flbKUsedAnd.Items.Count - 1 do
      begin
         Result := Result + ' (UPPER(contact.keywords) LIKE UPPER(' + QuotedStr('%' + KEYWORD_DELIMITER + flbKUsedAnd.Items[I] + KEYWORD_DELIMITER + '%') + '))';
         if I <> flbKUsedAnd.Items.Count - 1 then
            Result := Result + ' and ';
      end;
      Result := Result + ')';
   end;
   //Exclude contacts that have all of these keywords
   if flbEKUsedAnd.Items.Count <> 0 then
   begin
      AddWhere;
      Result := Result + '(';
      Result := Result + ' ((contact.keywords = '''') or (contact.keywords is null)) or ';
      for I := 0 to flbEKUsedAnd.Items.Count - 1 do
      begin
         Result := Result + ' (UPPER(contact.keywords) NOT LIKE UPPER(' + QuotedStr('%' + KEYWORD_DELIMITER + flbEKUsedAnd.Items[I] + KEYWORD_DELIMITER + '%') + '))';
         if I <> flbEKUsedAnd.Items.Count - 1 then
            Result := Result + ' and ';
      end;
      Result := Result + ')';
   end;
   //Exclude contacts that have any of these keywords
   if flbEKUsedOr.Items.Count <> 0 then
   begin
      AddWhere;
      Result := Result + '(';
      Result := Result + ' ((contact.keywords = '''') or (contact.keywords is null)) or ';
      for I := 0 to flbEKUsedOr.Items.Count - 1 do
      begin
         Result := Result + ' (UPPER(contact.keywords) NOT LIKE UPPER(' + QuotedStr('%' + KEYWORD_DELIMITER + flbEKUsedOr.Items[I] + KEYWORD_DELIMITER + '%') + '))';
         if I <> flbEKUsedOr.Items.Count - 1 then
            Result := Result + ' or ';
      end;
      Result := Result + ')';
   end;

   //custom field searching
   if fFields.Active then
   begin
      fFields.First;
      while not fFields.eof do
      begin
         if (fFields.FieldByName('can_search').AsString = IND_YES) then
         begin
            lFieldName  := fFields.FieldByName('field_name').AsString;
            if not fFields.FieldByName('ranged').AsBoolean then
            begin
               lFieldValue := fFields.FieldByName('field_value').AsString;
               if (lFieldValue <> '') then
               begin
                  if (UpperCase(lFieldName) = 'CREATED_BY') or
                     (UpperCase(lFieldName) = 'UPDATED_BY') then
                  begin
                     if fQryUsers.Locate('display_name', lFieldValue, []) then
                        lUserID := fQryUsers.FieldByName('user_id').AsString
                     else
                        lUserID := '';
                     if lUserID <> '' then
                     begin
                        AddWhere;
                        Result := Result + ' contact.' + lFieldName + ' = ' + QuotedStr(lUserID)
                     end
                     else
                        ShowMessage('User: ' + lFieldValue + ' not found. The search will ignore this part.');
                  end
                  else
                  begin
                     AddWhere;
                     lSearchType := fFields.FieldByName('search_type').AsString;
                     lCaseSensitive := fFields.FieldByName('case_sensitive').AsBoolean;
                     if lSearchType = SEARCH_TYPE_EXACT then
                     begin
                        if lCaseSensitive then
                           Result := Result + ' contact.' + lFieldName + ' = ' + QuotedStr(lFieldValue)
                        else
                           Result := Result + ' UPPER(contact.' + lFieldName + ') = ' + QuotedStr(UpperCase(lFieldValue))
                     end
                     else if lSearchType = SEARCH_TYPE_CONTAINS then
                     begin
                        if lCaseSensitive then
                           Result := Result + ' contact.' + lFieldName + ' LIKE ' + QuotedStr('%' + lFieldValue + '%')
                        else
                           Result := Result + ' UPPER(contact.' + lFieldName + ') LIKE ' + QuotedStr('%' + UpperCase(lFieldValue) + '%');
                     end
                     else if lSearchType = SEARCH_TYPE_STARTS then
                     begin
                        if lCaseSensitive then
                           Result := Result + ' contact.' + lFieldName + ' LIKE ' + QuotedStr(lFieldValue + '%')
                        else
                           Result := Result + ' UPPER(contact.' + lFieldName + ') LIKE ' + QuotedStr(UpperCase(lFieldValue) + '%');
                     end
                     else if lSearchType = SEARCH_TYPE_ENDS then
                     begin
                        if lCaseSensitive then
                           Result := Result + ' contact.' + lFieldName + ' LIKE ' + QuotedStr('%' + lFieldValue)
                        else
                           Result := Result + ' UPPER(contact.' + lFieldName + ') LIKE ' + QuotedStr('%' + UpperCase(lFieldValue));
                     end;
                  end;
               end;
            end
            else //Ranged
            begin
               if fFields.FieldByName('field_type').AsString = FIELD_TYPE_DATETIME then
               begin
                  lFromDate := fFields.FieldByName('fromdate').AsDateTime;
                  lToDate   := fFields.FieldByName('todate').AsDateTime;
                  if (lFromDate <> 0) then
                  begin
                     AddWhere;
                     Result := Result + ' contact.' + lFieldName + ' >= ' + QuotedStr(ConvertDateToDBFormat(lFromDate))
                  end;

                  if (lToDate <> 0) then
                  begin
                     AddWhere;
                     Result := Result + ' contact.' + lFieldName + ' <= ' + QuotedStr(ConvertDateToDBFormat(lToDate))
                  end;
               end
               else
               begin
                  lFrom := fFields.FieldByName('from').AsString;
                  lTo   := fFields.FieldByName('to').AsString;
                  if (lFrom <> '') then
                  begin
                     AddWhere;
                     Result := Result + ' contact.' + lFieldName + ' >= ' + QuotedStr(lFrom)
                  end;

                  if (lTo <> '') then
                  begin
                     AddWhere;
                     Result := Result + ' contact.' + lFieldName + ' <= ' + QuotedStr(lTo)
                  end;
               end;
            end;
         end;
         fFields.Next;
      end;
      fFields.First;
   end;
end;

procedure TSearch.PopulateSearch(aSavedSearchId : String);
var
   lQry : TIBOQuery;
   lFieldSearchIndex : Integer;
   lKeywords : TStringList;
   I : Integer;
begin
   ResetKeywords;
   lFieldSearchIndex := flbFields.ItemIndex;
   lQry := TIBOQuery.Create(nil);
   lQry.IB_Connection := CoreData.dbUnify;
   lQry.SQL.Add('select * from savedsearchdtl where saved_search_id = ' + QuotedStr(aSavedSearchId));
   try
      lQry.Open;
      while not lQry.eof do
      begin
         if fFields.Locate('field_name', lQry.FieldByName('field_name').AsString, []) then
         begin
            fFields.Edit;
            fFields.FieldByName('ranged').AsBoolean         := RegStrToBool(lQry.FieldByName('ranged').AsString);
            fFields.FieldByName('field_value').AsString     := lQry.FieldByName('field_value').AsString;
            fFields.FieldByName('search_type').AsString     := lQry.FieldByName('search_type').AsString;
            fFields.FieldByName('case_sensitive').AsBoolean := RegStrToBool(lQry.FieldByName('case_sensitive').AsString);
            fFields.FieldByName('from').AsString            := lQry.FieldByName('eFrom').AsString;
            fFields.FieldByName('to').AsString              := lQry.FieldByName('eTo').AsString;
            fFields.FieldByName('fromdate').AsDateTime      := lQry.FieldByName('from_date').AsDateTime;
            fFields.FieldByName('todate').AsDateTime        := lQry.FieldByName('to_date').AsDateTime;
            fFields.Post;
         end
         else if lQry.FieldByName('field_name').AsString = 'branch_id' then
         begin
            fedtBranch.Text := lQry.FieldByName('field_value').AsString;
         end
         else if lQry.FieldByName('field_name').AsString = 'active_ind' then
         begin
            if lQry.FieldByName('field_value').AsString = '' then
               fcbActive.State := cbGrayed
            else if lQry.FieldByName('field_value').AsString = IND_YES then
               fcbActive.Checked := True
            else
               fcbActive.Checked := False
         end
         else if lQry.FieldByName('field_name').AsString = 'keywords_included_or' then
         begin
            lKeywords := TStringList.Create;
            try
               if lQry.FieldByName('field_value').AsString <> '' then
                  SplitSQL(lKeywords, lQry.FieldByName('field_value').AsString, KEYWORD_DELIMITER, True);
               for I := 0 to lKeywords.Count - 1 do
               begin
                  if lKeywords[I] <> '' then
                  begin
                     flbKToUseOr.ItemIndex := flbKToUseOr.Items.IndexOf(lKeywords[I]);
                     MoveKeyword(flbKToUseOr, flbKUsedOr);
                  end;
               end;
            finally
               FreeAndNil(lKeywords);
            end;
         end
         else if lQry.FieldByName('field_name').AsString = 'keywords_excluded_and' then
         begin
            lKeywords := TStringList.Create;
            try
               if lQry.FieldByName('field_value').AsString <> '' then
                  SplitSQL(lKeywords, lQry.FieldByName('field_value').AsString, KEYWORD_DELIMITER, True);
               for I := 0 to lKeywords.Count - 1 do
               begin
                  if lKeywords[I] <> '' then
                  begin
                     flbEKToUseAnd.ItemIndex := flbEKToUseAnd.Items.IndexOf(lKeywords[I]);
                     MoveKeyword(flbEKToUseAnd, flbEKUsedAnd);
                  end;
               end;
            finally
               FreeAndNil(lKeywords);
            end;
         end
         else if lQry.FieldByName('field_name').AsString = 'keywords_included_and' then
         begin
            lKeywords := TStringList.Create;
            try
               if lQry.FieldByName('field_value').AsString <> '' then
                  SplitSQL(lKeywords, lQry.FieldByName('field_value').AsString, KEYWORD_DELIMITER, True);
               for I := 0 to lKeywords.Count - 1 do
               begin
                  if lKeywords[I] <> '' then
                  begin
                     flbKToUseAnd.ItemIndex := flbKToUseAnd.Items.IndexOf(lKeywords[I]);
                     MoveKeyword(flbKToUseAnd, flbKUsedAnd);
                  end;
               end;
            finally
               FreeAndNil(lKeywords);
            end;
         end
         else if lQry.FieldByName('field_name').AsString = 'keywords_excluded_or' then
         begin
            lKeywords := TStringList.Create;
            try
               if lQry.FieldByName('field_value').AsString <> '' then
                  SplitSQL(lKeywords, lQry.FieldByName('field_value').AsString, KEYWORD_DELIMITER, True);
               for I := 0 to lKeywords.Count - 1 do
               begin
                  if lKeywords[I] <> '' then
                  begin
                     flbEKToUseOr.ItemIndex := flbEKToUseOr.Items.IndexOf(lKeywords[I]);
                     MoveKeyword(flbEKToUseOr, flbEKUsedOr);
                  end;
               end;
            finally
               FreeAndNil(lKeywords);
            end;
         end;
         lQry.Next;
      end;
   finally
      lQry.Close;
      lQry.Free;
      flbFields.ItemIndex := lFieldSearchIndex;
      flbFields.OnClick(fForm);
   end;
end;

procedure TSearch.lbFieldsDrawItem(Control: TWinControl; Index: Integer;
  Rect: TRect; State: TOwnerDrawState);
begin
   with Control as TListBox do
   begin
      Canvas.FillRect(Rect);
      if Boolean(flbFields.Items.Objects[Index]) then
      begin
         Canvas.Brush.Color := $00BFFFBF;
      end;

      Canvas.TextOut(Rect.Left + 2, Rect.Top, Items[Index]);
   end;
end;

/////////EVENTS/////////
procedure TSearch.btnClearSearchClick(Sender: TObject);
begin
   inherited;
   fedtBranch.Text := '';
   fcbActive.Checked := True;
   ResetKeywords;

   fFields.First;
   while not fFields.eof do
   begin
      fFields.Edit;
      fFields.FieldByName('field_value').AsString     := '';
      fFields.FieldByName('search_type').AsString     := SEARCH_TYPE_CONTAINS;
      fFields.FieldByName('ranged').AsBoolean         := False;
      fFields.FieldByName('case_sensitive').AsBoolean := False;
      fFields.FieldByName('from').AsString            := '';
      fFields.FieldByName('to').AsString              := '';
      fFields.FieldByName('fromdate').AsDateTime      := 0;
      fFields.FieldByName('todate').AsDateTime        := 0;
      fFields.Post;
      fFields.Next;
   end;
   fFields.First;
   flbFields.ItemIndex := 0;
   flbFields.OnClick(fForm);
end;

procedure TSearch.mtbFieldsCalcFields(DataSet: TDataSet);
var
   lSearched : Boolean;
begin
   inherited;
   lSearched := False;
   if fFields.FieldByName('ranged').AsBoolean then
   begin
      if fFields.FieldByName('field_type').AsString = FIELD_TYPE_DATETIME then
      begin
         if (fFields.FieldByName('fromdate').AsDateTime <> 0) or (fFields.FieldByName('todate').AsDateTime <> 0) then
            lSearched := True;
      end
      else
      begin
         if (fFields.FieldByName('from').AsString <> '') or (fFields.FieldByName('to').AsString <> '') then
            lSearched := True;
      end;
   end
   else if fFields.FieldByName('field_value').AsString <> '' then
   begin
      lSearched := True;
   end;
   fFields.FieldByName('searched').AsBoolean := lSearched;
   flbFields.Items.Objects[flbFields.ItemIndex] := Pointer(lSearched);
end;

procedure TSearch.lbFieldsClick(Sender: TObject);
var
   lIsDateTime, lNotNumber, lUserID, lDropdown : Boolean;
begin
   inherited;

   if fFields.Locate('display_name', flbFields.Items[flbFields.ItemIndex], []) then
   begin
      lDropdown   := fFields.FieldByName('field_type').AsString = FIELD_TYPE_DROPDOWN;
      lIsDateTime := fFields.FieldByName('field_type').AsString = FIELD_TYPE_DATETIME;
      lNotNumber  := fFields.FieldByName('field_type').AsString <> FIELD_TYPE_NUMBER;
      lUserID     := (UpperCase(flbFields.Items[flbFields.ItemIndex]) = 'CREATED BY') or
                     (UpperCase(flbFields.Items[flbFields.ItemIndex]) = 'UPDATED BY');
      fedtDFieldValue.Items.Clear;
      fedtDFieldValue.Visible := lDropdown;
      if lDropdown then
      begin
         FillDropdown(fFields.FieldByName('field_name').AsString);
      end;

      if lUserID then
      begin
         fedtFieldValue.Visible := True;
         fbtnClear.Visible      := True;
         fgbSearchType.Visible  := False;
         fedtFrom.Visible       := False;
         fedtTo.Visible         := False;
         flblFieldValue.Visible := True;
         frbValue.Visible       := True;
         if lIsDateTime then
         begin
            frbValue.Checked := True;
            frbValue.OnClick(fForm);
         end;
         fdtpFrom.Visible       := False;
         fdtpTo.Visible         := False;
         fgbRange.Visible       := False;
         frbRange.Visible       := False;
      end
      else
      begin
         fedtFieldValue.Visible := (not lIsDateTime) and (not lDropdown);
         fbtnClear.Visible      := not lIsDateTime;
         fgbSearchType.Visible  := (not lIsDateTime) and lNotNumber;
         fedtFrom.Visible       := not lIsDateTime;
         fedtTo.Visible         := not lIsDateTime;
         flblFieldValue.Visible := not lIsDateTime;
         frbValue.Visible       := not lIsDateTime;
         if lIsDateTime then
         begin
            frbRange.Checked := True;
            frbRange.OnClick(fForm);
         end;
         fdtpFrom.Visible       := lIsDateTime;
         fdtpTo.Visible         := lIsDateTime;
         fgbRange.Visible       := True;
         frbRange.Visible       := True;
      end;

      if not lIsDateTime then
      begin
         if lDropdown then
            fedtFieldValue.Text := fFields.FieldByName('field_value').AsString
         else
            fedtFieldValue.Text := fFields.FieldByName('field_value').AsString;
         fedtFrom.Text       := fFields.FieldByName('from').AsString;
         fedtTo.Text         := fFields.FieldByName('to').AsString;
      end
      else
      begin
         fedtFieldValue.Text := '';
         fedtDFieldValue.Text := '';
         fdtpFrom.DateTime   := fFields.FieldByName('fromdate').AsDateTime;
         fdtpTo.DateTime     := fFields.FieldByName('todate').AsDateTime;
      end;

      if fFields.FieldByName('search_type').AsString = SEARCH_TYPE_EXACT then
      begin
         frbEnds.Checked      := False;
         frbExact.Checked     := True;
         frbContains.Checked  := False;
         frbStarts.Checked    := False;
      end
      else if fFields.FieldByName('search_type').AsString = SEARCH_TYPE_CONTAINS then
      begin
         frbEnds.Checked      := False;
         frbContains.Checked  := True;
         frbExact.Checked     := False;
         frbStarts.Checked    := False;
      end
      else if fFields.FieldByName('search_type').AsString = SEARCH_TYPE_STARTS then
      begin
         frbEnds.Checked      := False;
         frbExact.Checked     := False;
         frbContains.Checked  := False;
         frbStarts.Checked    := True;
      end
      else if fFields.FieldByName('search_type').AsString = SEARCH_TYPE_ENDS then
      begin
         frbExact.Checked     := False;
         frbContains.Checked  := False;
         frbStarts.Checked    := False;
         frbEnds.Checked      := True;
      end;

      fcbCaseSensitive.Checked := fFields.FieldByName('case_sensitive').AsBoolean;

      frbValue.Checked := not fFields.FieldByName('ranged').AsBoolean;
      frbRange.Checked := fFields.FieldByName('ranged').AsBoolean;
   end;
end;

procedure TSearch.edtFromChange(Sender: TObject);
begin
   inherited;
   if fFields.Locate('display_name', flbFields.Items[flbFields.ItemIndex], []) then
   begin
      if not (fFields.State in [dsEdit]) then
         fFields.Edit;
      fFields.FieldByName('from').AsString := fedtFrom.Text;
      fFields.Post;
   end;
   frbRange.Checked := True;
   frbRange.OnClick(fForm);
end;

procedure TSearch.edtToChange(Sender: TObject);
begin
   inherited;
   if fFields.Locate('display_name', flbFields.Items[flbFields.ItemIndex], []) then
   begin
      if not (fFields.State in [dsEdit]) then
         fFields.Edit;
      fFields.FieldByName('to').AsString := fedtTo.Text;
      fFields.Post;
   end;
   frbRange.Checked := True;
   frbRange.OnClick(fForm);
end;

procedure TSearch.dtpFromChange(Sender: TObject);
begin
   inherited;
   if fFields.Locate('display_name', flbFields.Items[flbFields.ItemIndex], []) then
   begin
      if not (fFields.State in [dsEdit]) then
         fFields.Edit;
      fFields.FieldByName('fromdate').AsDateTime := fdtpFrom.DateTime;
      fFields.Post;
   end;
end;

procedure TSearch.dtpToChange(Sender: TObject);
begin
   inherited;
   if fFields.Locate('display_name', flbFields.Items[flbFields.ItemIndex], []) then
   begin
      if not (fFields.State in [dsEdit]) then
         fFields.Edit;
      fFields.FieldByName('todate').AsDateTime := fdtpTo.DateTime;
      fFields.Post;
   end;
end;

procedure TSearch.rbContainsClick(Sender: TObject);
begin
   if fFields.Locate('display_name', flbFields.Items[flbFields.ItemIndex], []) then
   begin
      frbValue.Checked := True;
      frbValue.OnClick(Self);
      frbEnds.Checked    := not frbContains.Checked;
      frbExact.Checked   := not frbContains.Checked;
      frbStarts.Checked  := not frbContains.Checked;
      fFields.Edit;
      fFields.FieldByName('search_type').AsString := SEARCH_TYPE_CONTAINS;
      fFields.Post;
   end;
end;

procedure TSearch.rbEndsClick(Sender: TObject);
begin
   if fFields.Locate('display_name', flbFields.Items[flbFields.ItemIndex], []) then
   begin
      frbValue.Checked := True;
      frbValue.OnClick(fForm);
      frbExact.Checked     := not frbEnds.Checked;
      frbContains.Checked  := not frbEnds.Checked;
      frbStarts.Checked    := not frbEnds.Checked;
      fFields.Edit;
      fFields.FieldByName('search_type').AsString := SEARCH_TYPE_ENDS;
      fFields.Post;
   end;
end;

procedure TSearch.rbExactClick(Sender: TObject);
begin
   if fFields.Locate('display_name', flbFields.Items[flbFields.ItemIndex], []) then
   begin
      frbValue.Checked := True;
      frbValue.OnClick(Self);
      frbEnds.Checked     := not frbExact.Checked;
      frbContains.Checked := not frbExact.Checked;
      frbStarts.Checked   := not frbExact.Checked;
      fFields.Edit;
      fFields.FieldByName('search_type').AsString := SEARCH_TYPE_EXACT;
      fFields.Post;
   end;
end;

procedure TSearch.rbRangeClick(Sender: TObject);
begin
   if fFields.Locate('display_name', flbFields.Items[flbFields.ItemIndex], []) then
   begin
      frbValue.Checked := not frbRange.Checked;
      if fedtFieldValue.Visible then
         fbtnClear.Enabled  := frbValue.Checked and (fedtFieldValue.Text <> '')
      else if fedtDFieldValue.Visible then
         fbtnClear.Enabled  := frbValue.Checked and (fedtDFieldValue.Text <> '');
      fFields.Edit;
      fFields.FieldByName('ranged').AsBoolean := frbRange.Checked;
      fFields.Post;
   end;
end;

procedure TSearch.rbStartsClick(Sender: TObject);
begin
   if fFields.Locate('display_name', flbFields.Items[flbFields.ItemIndex], []) then
   begin
      frbValue.Checked := True;
      frbValue.OnClick(Self);
      frbExact.Checked     := not frbStarts.Checked;
      frbContains.Checked  := not frbStarts.Checked;
      frbEnds.Checked      := not frbStarts.Checked;
      fFields.Edit;
      fFields.FieldByName('search_type').AsString := SEARCH_TYPE_STARTS;
      fFields.Post;
   end;
end;

procedure TSearch.rbValueClick(Sender: TObject);
begin
   if fFields.Locate('display_name', flbFields.Items[flbFields.ItemIndex], []) then
   begin
      frbRange.Checked       := not frbValue.Checked;
      if fedtFieldValue.Visible then
         fbtnClear.Enabled      := frbRange.Checked and (fedtFieldValue.Text <> '')
      else
         fbtnClear.Enabled      := frbRange.Checked and (fedtDFieldValue.Text <> '');
      fFields.Edit;
      fFields.FieldByName('ranged').AsBoolean := frbRange.Checked;
      fFields.Post;
   end;
end;

procedure TSearch.btnClearClick(Sender: TObject);
begin
   if fFields.Locate('display_name', flbFields.Items[flbFields.ItemIndex], []) then
   begin
      if not (fFields.State in [dsEdit]) then
         fFields.Edit;
      fFields.FieldByName('field_value').AsString := '';
      fFields.Post;
   end;
   fedtFieldValue.Text := '';
   fedtDFieldValue.Text := '';
end;

procedure TSearch.edtFieldValueChange(Sender: TObject);
begin
   inherited;
   if fFields.Locate('display_name', flbFields.Items[flbFields.ItemIndex], []) then
   begin
      if not (fFields.State in [dsEdit]) then
         fFields.Edit;
      fFields.FieldByName('field_value').AsString := fedtFieldValue.Text;
      fFields.Post;
   end;
   frbValue.Checked := True;
   frbValue.OnClick(fForm);
   fbtnClear.Enabled := fedtFieldValue.Text <> '';
end;

procedure TSearch.edtDFieldValueDropdown(Sender: TObject);
var
   lCB : TComboBox;
   lIndex : Integer;
begin
   lCB := Sender as TComboBox;
   lIndex := lCB.ItemIndex;
   ShowDropdown(fForm, lCB, lIndex, 'Choose ' + flbFields.Items[flbFields.ItemIndex]);
   lCB.ItemIndex := lIndex;
   edtDFieldValueChange(fForm);
end;

procedure TSearch.edtDFieldValueChange(Sender: TObject);
begin
   inherited;
   if fFields.Locate('display_name', flbFields.Items[flbFields.ItemIndex], []) then
   begin
      if not (fFields.State in [dsEdit]) then
         fFields.Edit;
      fFields.FieldByName('field_value').AsString := fedtDFieldValue.Text;
      fFields.Post;
   end;
   frbValue.Checked := True;
   frbValue.OnClick(fForm);
   fbtnClear.Enabled := fedtDFieldValue.Text <> '';
end;

procedure TSearch.cbCaseSensitiveClick(Sender: TObject);
begin
   if fFields.Locate('display_name', flbFields.Items[flbFields.ItemIndex], []) then
   begin
      frbValue.Checked := True;
      frbValue.OnClick(fForm);
      fFields.Edit;
      fFields.FieldByName('case_sensitive').AsBoolean := fcbCaseSensitive.Checked;
      fFields.Post;
   end;
   inherited;
end;

procedure TSearch.FillDropdown(aFieldName : string);
var
   lComboRec : TComboRec;
begin
   fqryContactDropdowns.First;
   while not fqryContactDropdowns.eof do
   begin
      if fqryContactDropdowns.FieldByName('FIELD_NAME').AsString = aFieldName then
      begin
         lComboRec := TComboRec.Create;
         lComboRec.Value := fqryContactDropdowns.FieldByName('DROPDOWN').AsString;
         lComboRec.Desc  := fqryContactDropdowns.FieldByName('DESCRIPTION').AsString;
         fedtDFieldValue.Items.AddObject(lComboRec.Value, lComboRec);
      end;
      fqryContactDropdowns.Next;
   end;
end;

///////////////KEYWORD BUTTONS////////////

procedure TSearch.btnUseOrClick(Sender: TObject);
begin
   inherited;
   MoveKeyword(flbKToUseOr, flbKUsedOr);
   //TODO: If they have already excluded a keyword which they have just chosen
   //to include, then move this excluded keyword back to available to exclude.
end;

procedure TSearch.btnDontUseOrClick(Sender: TObject);
begin
   inherited;
   MoveKeyword(flbKUsedOr, flbKToUseOr);
end;

procedure TSearch.btnEUseAndClick(Sender: TObject);
begin
   inherited;
   MoveKeyword(flbEKToUseAnd, flbEKUsedAnd);
end;

procedure TSearch.btnEDontUseAndClick(Sender: TObject);
begin
   inherited;
   MoveKeyword(flbEKUsedAnd, flbEKToUseAnd);
end;

procedure TSearch.btnUseAndClick(Sender: TObject);
begin
   inherited;
   MoveKeyword(flbKToUseAnd, flbKUsedAnd);
   //TODO: If they have already excluded a keyword which they have just chosen
   //to include, then move this excluded keyword back to available to exclude.
end;

procedure TSearch.btnDontUseAndClick(Sender: TObject);
begin
   inherited;
   MoveKeyword(flbKUsedAnd, flbKToUseAnd);
end;

procedure TSearch.btnEUseOrClick(Sender: TObject);
begin
   inherited;
   MoveKeyword(flbEKToUseOr, flbEKUsedOr);
end;

procedure TSearch.btnEDontUseOrClick(Sender: TObject);
begin
   inherited;
   MoveKeyword(flbEKUsedOr, flbEKToUseOr);
end;

end.
