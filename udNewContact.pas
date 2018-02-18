unit udNewContact;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, udBaseNew, Buttons, StdCtrls, Mask, DBCtrls, DB, kbmMemTable,
  uuCoreData, IBODataset;

type
  TdNewContact = class(TdBaseNew)
    lbKeywordsToUse: TListBox;
    lbKeywordsUsed: TListBox;
    lbl3: TLabel;
    btnUse: TSpeedButton;
    btnDontUse: TSpeedButton;
    lbl7: TLabel;
    lbl8: TLabel;
    qryEmailDomain: TIBOQuery;
    mtbEmailDomainEMAIL_DOMAIN: TStringField;
    qryContactDropdowns: TIBOQuery;
    mtbContactDropdownsFIELD_NAME: TStringField;
    mtbContactDropdownsDROPDOWN: TStringField;
    lblAt: TLabel;
    mtbContactDropdownsDESCRIPTION: TStringField;
    procedure btnUseClick(Sender: TObject);
    procedure btnDontUseClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure fSuburbExit(Sender: TObject);
    procedure fPostcodeExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    fKeywordsChanged : Boolean;
    fFields : TkbmMemTable;
    fDTP : TStringList;

    fEmailDomain : TComboBox;
    fEmail : TEdit;

    fSuburb : TDBComboBox;
    fState: TDBComboBox;
    fPostcode: TDBEdit;
    procedure SuburbPostalFind;
    procedure PostcodePostalFind;
    procedure FillEmailDomains;
    function GetEmail: string;
    procedure SetEmail(aEmail: String);
    procedure MakeNewControl(aFieldType, aFieldName, aDisplayName: string;
      aLeft, aTop: Integer);
    procedure CreateCustomControls;
    procedure cboDropDown(Sender: TObject);
  public
    property Fields : TkbmMemTable read fFields write fFields;
  end;

function ShowContact(aParent : TWinControl; var aDS : TDataSet; var aFields : TkbmMemTable; aCaption : String) : Boolean;

implementation

uses uuGlobals, uuPostalFind, ComCtrls, udDropdown;


{$R *.dfm}

function ShowContact(aParent : TWinControl; var aDS : TDataSet; var aFields : TkbmMemTable; aCaption : String) : Boolean;
var
   ldNewContact : TdNewContact;
begin
   ldNewContact := TdNewContact.Create(aParent);
   ldNewContact.Caption := aCaption;
   ldNewContact.DS := aDS;
   ldNewContact.Fields := aFields;
   try
      Result := ldNewContact.ShowModal = mrOK;
   finally
      FreeAndNil(ldNewContact);
   end;
end;

procedure TdNewContact.MakeNewControl(aFieldType, aFieldName, aDisplayName : string; aLeft, aTop : Integer);
var
   lEdit : TDBEdit;
   lEEdit : TEdit;
   lComboBox : TDBComboBox;
   lEComboBox : TComboBox;
   lDTP : TDateTimePicker;
   lLabel : TLabel;
   lComboRec : TComboRec;
begin
   lLabel := TLabel.Create(self);
   lLabel.Parent := Self;
   lLabel.Left := aLeft;
   lLabel.Top  := aTop + 4;
   lLabel.Font.Size := 10;
   lLabel.Caption := aDisplayName;

   if aFieldName = 'suburb' then
   begin
      lComboBox := TDBComboBox.Create(self); //the form will free it
      lComboBox.Parent := Self;
      lComboBox.Left := aLeft + 120;
      lComboBox.Top  := aTop;
      lComboBox.Width := 220;
      lComboBox.Font.Size := 10;
      lComboBox.DataSource := dsNew;
      lComboBox.DataField := aFieldName;
      lComboBox.OnKeyDown := edtKeyDown;
      lComboBox.OnKeyPress := edtKeyPress;
      lComboBox.OnExit := fSuburbExit;
      fSuburb := lComboBox;
   end
   else if aFieldName = 'postcode' then
   begin
      lEdit := TDBEdit.Create(self); //the form will free it
      lEdit.Parent := Self;
      lEdit.Left := aLeft + 120;
      lEdit.Top  := aTop;
      lEdit.Width := 220;
      lEdit.Font.Size := 10;
      lEdit.DataSource := dsNew;
      lEdit.DataField := aFieldName;
      lEdit.OnKeyDown := edtKeyDown;
      lEdit.OnKeyPress := edtKeyPress;
      lEdit.OnExit := fPostcodeExit;
      fPostcode := lEdit;
   end
   else if aFieldName = 'cstate' then
   begin
      lComboBox := TDBComboBox.Create(self); //the form will free it
      lComboBox.Parent := Self;
      lComboBox.Left := aLeft + 120;
      lComboBox.Top  := aTop;
      lComboBox.Width := 220;
      lComboBox.Font.Size := 10;
      lComboBox.DataSource := dsNew;
      lComboBox.DataField := aFieldName;
      lComboBox.OnKeyDown := edtKeyDown;
      lComboBox.OnKeyPress := edtKeyPress;
      fState := lComboBox;
   end
   else if aFieldName = 'email' then
   begin
      //email
      lEEdit := TEdit.Create(self); //the form will free it
      lEEdit.Parent := Self;
      lEEdit.Left := aLeft + 120;
      lEEdit.Top  := aTop;
      lEEdit.Width := 120;
      lEEdit.Font.Size := 10;
      lEEdit.OnKeyDown := edtKeyDown;
      lEEdit.OnKeyPress := edtKeyPress;
      fEmail := lEEdit;

      //@ symbol
      lblAt.Left := lEEdit.Left  + lEEdit.Width + 1;
      lblAt.Top  := aTop;
      lblAt.Visible := True;

      //email domain
      lEComboBox := TComboBox.Create(self); //the form will free it
      lEComboBox.Parent := Self;
      lEComboBox.Left := lblAt.Left + 20;
      lEComboBox.Top  := aTop;
      lEComboBox.Width := 80;
      lEComboBox.Font.Size := 10;
      lEComboBox.OnKeyDown := edtKeyDown;
      lEComboBox.OnKeyPress := edtKeyPress;
      fEmailDomain := lEComboBox;
   end     
   else if (aFieldType = FIELD_TYPE_FREE) or (aFieldType = FIELD_TYPE_NUMBER) then
   begin
      lEdit := TDBEdit.Create(self); //the form will free it
      lEdit.Parent := Self;
      lEdit.Left := aLeft + 120;
      lEdit.Top  := aTop;
      lEdit.Width := 220;
      lEdit.Font.Size := 10;
      lEdit.DataSource := dsNew;
      lEdit.DataField := aFieldName;
      lEdit.OnKeyDown := edtKeyDown;
      lEdit.OnKeyPress := edtKeyPress;
   end
   else if aFieldType = FIELD_TYPE_DROPDOWN then
   begin
      lComboBox := TDBComboBox.Create(self); //the form will free it
      lComboBox.Parent := Self;
      lComboBox.Left := aLeft + 120;
      lComboBox.Top  := aTop;
      lComboBox.Width := 220;
      lComboBox.Font.Size := 10;
      lComboBox.DataSource := dsNew;
      lComboBox.DataField := aFieldName;
      lComboBox.OnDropDown := cboDropdown;
      qryContactDropdowns.First;
      while not qryContactDropdowns.eof do
      begin
         if qryContactDropdowns.FieldByName('FIELD_NAME').AsString = aFieldName then
         begin
            lComboRec := TComboRec.Create;
            lComboRec.Value := qryContactDropdowns.FieldByName('DROPDOWN').AsString;
            lComboRec.Desc  := qryContactDropdowns.FieldByName('DESCRIPTION').AsString;
            lComboBox.Items.AddObject(lComboRec.Value, lComboRec);
         end;
         qryContactDropdowns.Next;
      end;
      lComboBox.OnKeyDown := edtKeyDown;
      lComboBox.OnKeyPress := edtKeyPress;
   end
   else if aFieldType = FIELD_TYPE_DATETIME then
   begin
      lDTP := TDateTimePicker.Create(self); //the form will free it
      lDTP.Parent := Self;
      lDTP.Left := aLeft + 120;
      lDTP.Top  := aTop;
      lDTP.Width := 220;
      lDTP.Font.Size := 10;
      lDTP.DateTime := fDS.FieldByName(aFieldName).AsDateTime;
      lDTP.OnKeyDown := edtKeyDown;
      lDTP.OnKeyPress := edtKeyPress;
      fDTP.AddObject(aFieldName, lDTP);
   end;         
end;

procedure TdNewContact.CreateCustomControls;
var
   lLeft, lTop : Integer;
   lFieldType, lDisplayName, lFieldName : string;
   lFieldNumber : Integer;
const
   FIELD_SPACE = 380;
begin
   fDTP := TStringList.Create;
   qryContactDropdowns.Open;

   lLeft := 10;
   lTop := 14;
   lFieldNumber := 1;
   fFields.First; //Now sitting on the first custom field
   while not fFields.eof do
   begin
      lFieldName := fFields.FieldByName('field_name').AsString;
      if (lFieldName <> 'created_by') and (lFieldName <> 'created') and
         (lFieldName <> 'updated_by') and (lFieldName <> 'updated') then
      begin
         lFieldType := fFields.FieldByName('field_type').AsString;
         lDisplayName := fFields.FieldByName('display_name').AsString;
         if (lFieldNumber = 10) or (lFieldNumber = 26) then
         begin
            lTop := 14;
            lLeft := lLeft + FIELD_SPACE;
            if (lFieldNumber = 26) then
            begin
               Self.ClientWidth := Self.ClientWidth + FIELD_SPACE;
               btnOK.Left := btnOK.Left + 165;
               btnCancel.Left := btnCancel.Left + 165;
               lblTitleBy.Left := lblTitleBy.Left + 165;
               lblBy.Left := lblBy.Left + 165;
               lbKeywordsUsed.Height := 228;
            end;
         end;
         MakeNewControl(lFieldType, lFieldName, lDisplayName,  lLeft, lTop);
         lTop := lTop + 30;
         lFieldNumber := lFieldNumber + 1;
      end;
      fFields.Next;
   end;
   qryContactDropdowns.Close;
end;

procedure TdNewContact.cboDropDown(Sender: TObject);
var
   lCB : TDBComboBox;
   lIndex : Integer;
begin
   lCB := Sender as TDBComboBox;
   lIndex := lCB.ItemIndex;
   ShowDropdown(Self, lCB, lIndex, 'Choose a value');
   lCB.ItemIndex := lIndex;
   if not (fDS.State in [dsEdit]) then
      fDS.Edit;
   fDS.FieldByName(lCB.DataField).AsString := lCB.Text;
end;

procedure TdNewContact.FillEmailDomains;
begin
   fEmailDomain.Items.Clear;
   try
      qryEmailDomain.Open;
      while not qryEmailDomain.eof do
      begin
         fEmailDomain.Items.Add(qryEmailDomain.FieldByName('email_domain').AsString);
         qryEmailDomain.Next;
      end;
   finally
      qryEmailDomain.Close;
   end;
end;

procedure TdNewContact.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   inherited;
   if Assigned(fDTP) then
      FreeAndNil(fDTP);
end;

procedure TdNewContact.FormShow(Sender: TObject);
var
   lKeywords : TStringList;
   I : Integer;
   lQry : TIDQuery;
   lSuburbs, lStates : TStringList;
   lState : string;
   lField : TField;
begin
  inherited;
  fKeywordsChanged := False;
  CreateCustomControls;
  dsNew.DataSet := DS;

  lField := fDS.FindField('email');
  if Assigned(lField) then
  begin
     FillEmailDomains;
     SetEmail(lField.AsString);
  end;

  lField := fDS.FindField('suburb');
  if Assigned(lField) then
  begin
     //Fill suburb combobox with suburbs
     lSuburbs := TStringList.Create;
     try
        lState := fState.Text;
        FindAllSuburbs(lSuburbs, lState);
        fSuburb.Items.Clear;
        for I := 0 to lSuburbs.Count - 1 do
        begin
           fSuburb.Items.Add(lSuburbs[I]);
        end;
     finally
        FreeAndNil(lSuburbs);
     end;
  end;

  lField := fDS.FindField('cstate');
  if Assigned(lField) then
  begin
     //Fill state combobox with states
     lStates := TStringList.Create;
     try
        FillWithStates(lStates);
        fState.Items.Clear;
        for I := 0 to lStates.Count - 1 do
        begin
           fState.Items.Add(lStates[I]);
        end;
     finally
        FreeAndNil(lStates);
     end;
  end;

  //Get keywords of member and fill up the listbox
  lKeywords := TStringList.Create;
  try
     if DS.FieldByName('keywords').AsString <> '' then
        SplitSQL(lKeywords, DS.FieldByName('keywords').AsString, KEYWORD_DELIMITER, True);
     for I := 0 to lKeywords.Count - 1 do
     begin
         if lKeywords[I] <> '' then
            lbKeywordsUsed.Items.Add(lKeywords[I]);
     end;

     //Get all keywords not used yet
     lQry := TIDQuery.Create(nil);
     try
        lQry.SQL.Add('select description from keyword where active_ind = ' + QuotedStr('Y') + ' order by description');
        lQry.Open;
        while not lQry.eof do
        begin
           if lKeywords.IndexOf(lQry.FieldByName('description').AsString) = -1 then //if not found
              lbKeywordsToUse.Items.Add(lQry.FieldByName('description').AsString);
           lQry.Next;
        end;
     finally
        lQry.Free;
     end;
  finally
     lKeywords.Free;
  end;
  lbKeywordsToUse.ItemIndex := 0;
end;

procedure TdNewContact.SetEmail(aEmail : String);
var
   lPosOfSeparator : Integer;
begin
   lPosOfSeparator := AnsiPos('@', aEmail);
   fEmail.Text  := Copy(aEmail, 1, lPosOfSeparator - 1);
   fEmailDomain.Text := Copy(aEmail, lPosOfSeparator + 1, Length(aEmail) - lPosOfSeparator);
end;

function TdNewContact.GetEmail : string;
begin
   if (fEmail.Text = '') and (fEmailDomain.Text = '') then
      Result := ''
   else
      Result := fEmail.Text + '@' + fEmailDomain.Text;
end;

procedure TdNewContact.btnUseClick(Sender: TObject);
begin
   inherited;
   MoveKeyword(lbKeywordsToUse, lbKeywordsUsed);
   fKeywordsChanged := True;
end;

procedure TdNewContact.fPostcodeExit(Sender: TObject);
begin
   inherited;
   PostcodePostalFind;
end;

procedure TdNewContact.fSuburbExit(Sender: TObject);
begin
   inherited;
   SuburbPostalFind;
end;

procedure TdNewContact.SuburbPostalFind;
var
   lSuburb, lPostcode, lState, lArea : string;
   lField : TField;
begin
   lField := DS.FindField('suburb');
   if Assigned(lField) then
      lSuburb    := fSuburb.Text
   else
      lSuburb    := '';

   lField := DS.FindField('postcode');
   if Assigned(lField) then
      lPostcode    := fPostcode.Text
   else
      lPostcode    := '';

   lField := DS.FindField('cstate');
   if Assigned(lField) then
      lState    := fState.Text
   else
      lState    := '';

   lField := DS.FindField('area');
   if Assigned(lField) then
      lArea := DS.FieldByName('area').AsString
   else
      lArea := '';

   PostalFind(lSuburb, lPostcode, lState, lArea);

   //populate suburb, cstate and postcode
   lField := DS.FindField('postcode');
   if Assigned(lField) then
      lField.AsString := lPostcode;

   lField := DS.FindField('cstate');
   if Assigned(lField) then
      DS.FieldByName('cstate').AsString   := lState;

   lField := DS.FindField('area');
   if Assigned(lField) then
      lField.AsString := lArea;   
end;

procedure TdNewContact.PostcodePostalFind;
var
   lSuburb, lPostcode, lState, lArea : string;
   lField : TField;
begin
   lField := DS.FindField('suburb');
   if Assigned(lField) then
      lSuburb    := fSuburb.Text
   else
      lSuburb    := '';

   lField := DS.FindField('postcode');
   if Assigned(lField) then
      lPostcode    := fPostcode.Text
   else
      lPostcode    := '';

   lField := DS.FindField('cstate');
   if Assigned(lField) then
      lState    := fState.Text
   else
      lState    := '';

   lField := DS.FindField('area');
   if Assigned(lField) then
      lArea := DS.FieldByName('area').AsString
   else
      lArea := '';

   PostalFind(lSuburb, lPostcode, lState, lArea);

   //populate suburb, cstate and postcode
   lField := DS.FindField('suburb');
   if Assigned(lField) then
      lField.AsString := lSuburb;

   lField := DS.FindField('cstate');
   if Assigned(lField) then
      lField.AsString   := lState;

   lField := DS.FindField('area');   
   if Assigned(lField) then
      lField.AsString := lArea;
end;

procedure TdNewContact.btnDontUseClick(Sender: TObject);
begin
   inherited;
   MoveKeyword(lbKeywordsUsed, lbKeywordsToUse);
end;

procedure TdNewContact.btnOKClick(Sender: TObject);
var
   I : Integer;
   lMemberKeywords : string;
   lEmailNow : string;
   lField : TField;
begin
   if fKeywordsChanged then
   begin
      lMemberKeywords := '';
      if lbKeywordsUsed.Items.Count <> 0 then
         lMemberKeywords := KEYWORD_DELIMITER;

      for I := 0 to lbKeywordsUsed.Items.Count - 1 do
         lMemberKeywords := lMemberKeywords + lbKeywordsUsed.Items[I] + KEYWORD_DELIMITER;

      DS.FieldByName('keywords').AsString := lMemberKeywords;
   end;

   lField := DS.FindField('email');
   if Assigned(lField) then
   begin
      lEmailNow := GetEmail;
      if lEmailNow <> lField.AsString then
      begin
          lField.AsString := lEmailNow;
      end;
   end;

   for I := 0 to fDTP.Count - 1 do
   begin
      if (DS.FieldByName(fDTP[I]).AsDateTime <> (TDateTimePicker(fDTP.Objects[I])).DateTime) then
      begin
         DS.FieldByName(fDTP[I]).AsDateTime := (TDateTimePicker(fDTP.Objects[I])).DateTime;
      end;
   end;

   inherited;
end;

end.
