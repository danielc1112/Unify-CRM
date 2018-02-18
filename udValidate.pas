unit udValidate;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, kbmMemTable, ComCtrls, IdTCPClient,
  IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase, IdSMTP,
  IdBaseComponent, IdComponent, IdTCPConnection, IdDNSResolver, DB, IBODataset;

type
  TdValidate = class(TForm)
    btnOK: TSpeedButton;
    btnCancel: TSpeedButton;
    cbAddress: TCheckBox;
    pbValidate: TProgressBar;
    cbEmails: TCheckBox;
    idDNSResolver1: TIdDNSResolver;
    idsmtp1: TIdSMTP;
    qryContactDropdowns: TIBOQuery;
    mtbContactDropdownsFIELD_NAME: TStringField;
    mtbContactDropdownsDROPDOWN: TStringField;
    qryKeywords: TIBOQuery;
    mtbKeywordsDESCRIPTION: TStringField;
    cbKeywords: TCheckBox;
    cbCharCase: TCheckBox;
    cbDefaults: TCheckBox;
    procedure btnCancelClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    fDS, fFields : TkbmMemTable;
    function VerifyEmail(const email: string): Boolean;
    function Ping(const AHost: string; const ATimes: integer): Boolean;
  public
    property DS : TkbmMemTable read fDS write fDS;
    property Fields : TkbmMemTable read fFields write fFields;
  end;

  procedure Validate(var aDS : TkbmMemTable; var aFields : TkbmMemTable; aOwner : TComponent);

implementation

uses
   uuPostalFind, uuGlobals, IdIcmpClient, uuCoreData;

{$R *.dfm}

procedure Validate(var aDS : TkbmMemTable; var aFields : TkbmMemTable; aOwner : TComponent);
var
   lValidate : TdValidate;
begin
   lValidate := TdValidate.Create(aOwner);
   try
      lValidate.DS := aDS;
      lValidate.Fields := aFields;
      lValidate.ShowModal;
   finally
      FreeAndNil(lValidate);
   end;
end;

procedure TdValidate.btnCancelClick(Sender: TObject);
begin
   ModalResult := mrCancel;
end;

procedure TdValidate.btnOKClick(Sender: TObject);
var
   lBookMark : TBookmarkStr;
   lEmailV : Boolean;
   lArea : string;
   lField : TField;
   lACorrected, lECorrected, lCCorrected, lKCorrected, lDCorrected : Integer;
   lStartTime, lTotalTime : Int64;
   lMessageStr : string;

   procedure ValidateRecord;
   var
      lSuburb, lPostcode, lState : string;
      lKeywordsStr : string;
      lKeywords : TStringList;
      I : Integer;
      lStr : string;
      lAddressIncremented, lCharCaseIncremented, lDefaultIncremented : Boolean;

      procedure PutInEdit;
      begin
         if not (fDS.State in [dsEdit]) then
            fDS.Edit;
      end;

      function IsKeyword(aKeyword : String) : Boolean;
      begin
         Result := qryKeywords.Locate('description', aKeyword, []);
      end;

      function IsInDropdown(aFieldName, aValue : String) : Boolean;
      begin
         qryContactDropdowns.Filtered := False;
         qryContactDropdowns.Filter   := 'field_name = ';
         qryContactDropdowns.Filtered := True;
         Result := qryContactDropdowns.Locate('dropdown', aValue, []);
      end;

      procedure IncAddress;
      begin
         if not lAddressIncremented then
         begin
            Inc(lACorrected);
            lAddressIncremented := True;
         end;
      end;

      procedure IncCharCase;
      begin
         if not lCharCaseIncremented then
         begin
            Inc(lCCorrected);
            lCharCaseIncremented := True;
         end;
      end;

      procedure IncDefault;
      begin
         if not lDefaultIncremented then
         begin
            Inc(lDCorrected);
            lDefaultIncremented := True;
         end;
      end;
   begin
      lCharCaseIncremented := False;
      lAddressIncremented  := False;
      lDefaultIncremented  := False;

      //Correct capitalisation
      if cbCharCase.Checked then
      begin
         for I := 0 to fDS.Fields.Count - 1 do
         begin
            if fFields.Locate('field_name', fDS.Fields[I].FieldName, []) then
            begin
               if (fFields.FieldByName('field_type').AsString = FIELD_TYPE_FREE) or
                  (fFields.FieldByName('field_type').AsString = FIELD_TYPE_DROPDOWN) then
               begin
                  if fFields.FieldByName('char_case').AsString = CHAR_UPPERCASE then
                  begin
                     lStr := UpperCase(fDS.Fields[I].AsString);
                     if fDS.Fields[I].AsString <> lStr then
                     begin
                        PutInEdit;
                        fDS.Fields[I].AsString := lStr;
                        IncCharCase;
                     end;
                  end
                  else if fFields.FieldByName('char_case').AsString = CHAR_LOWERCASE then
                  begin
                     lStr := Lowercase(fDS.Fields[I].AsString);
                     if fDS.Fields[I].AsString <> lStr then
                     begin
                        PutInEdit;
                        fDS.Fields[I].AsString := lStr;
                        IncCharCase;
                     end;
                  end
                  else if fFields.FieldByName('char_case').AsString = CHAR_CAPITALISED then
                  begin
                     lStr := Capitalise(fDS.Fields[I].AsString);
                     if fDS.Fields[I].AsString <> lStr then
                     begin
                        PutInEdit;
                        fDS.Fields[I].AsString := lStr;
                        IncCharCase;
                     end;
                  end;
               end;
            end;
         end;
      end;

      //Replace blanks with defaults
      if cbDefaults.Checked then
      begin
         for I := 0 to fDS.Fields.Count - 1 do
         begin
            if fFields.Locate('field_name', fDS.Fields[I].FieldName, []) then
            begin
               if (fFields.FieldByName('field_type').AsString = FIELD_TYPE_FREE) or
                  (fFields.FieldByName('field_type').AsString = FIELD_TYPE_DROPDOWN) then
               begin
                  if (fFields.FieldByName('default_value').AsString <> '') and
                     (fDS.Fields[I].AsString = '') then
                  begin
                     PutInEdit;
                     fDS.Fields[I].AsString := fFields.FieldByName('default_value').AsString;
                     IncDefault;
                  end;
               end;
            end
            else if fDS.Fields[I].FieldName = 'branch_id' then
            begin
               if (fDS.Fields[I].AsString = '') and (gSettings.DefaultBranch <> '') then
               begin
                  PutInEdit;
                  fDS.Fields[I].AsString := gSettings.DefaultBranch;
                  IncDefault;
               end;
            end;     
         end;
      end;

      //Validate keywords
      if cbKeywords.Checked then
      begin
          lKeywordsStr := fDS.FieldByName('keywords').AsString;
          lKeywords := TStringList.Create;
          try
             SplitSQL(lKeywords, lKeywordsStr, '$', True);
             for I := 0 to lKeywords.Count - 1 do
             begin
                if (lKeywords[I] <> '') and (not IsKeyword(lKeywords[I])) then
                begin
                   PutInEdit;
                   fDS.FieldByName('keywords_wrong').AsBoolean := True;
                   Inc(lKCorrected);
                   Break;
                end;
             end;
          finally
             FreeAndNil(lKeywords);
          end;
      end;

      if cbAddress.Checked then
      begin
         lAddressIncremented := False;
         lField := fDS.FindField('suburb');
         if Assigned(lField) then
            lSuburb := lField.AsString
         else
            lSuburb := '';

         lField := fDS.FindField('postcode');
         if Assigned(lField) then
            lPostcode := lField.AsString
         else
            lPostcode := '';

         lField := fDS.FindField('cstate');
         if Assigned(lField) then
            lState := lField.AsString
         else
            lState := '';

         lField := fDS.FindField('area');
         if Assigned(lField) then
            lArea := lField.AsString
         else
            lArea := '';

         PostalFind(lSuburb, lPostcode, lState, lArea);

         lField := fDS.FindField('suburb');
         if Assigned(lField) and (lSuburb <> lField.AsString) then
         begin
            PutInEdit;
            lField.AsString := lSuburb;
            IncAddress;
         end;

         lField := fDS.FindField('postcode');
         if Assigned(lField) and (lPostcode <> lField.AsString) then
         begin
            PutInEdit;
            lField.AsString := lPostcode;
            IncAddress;
         end;

         lField := fDS.FindField('cstate');
         if Assigned(lField) and (lState <> lField.AsString) then
         begin
            PutInEdit;
            lField.AsString := lState;
            IncAddress;
         end;
         
         lField := fDS.FindField('area');
         if Assigned(lField) and (lArea <> lField.AsString) then
         begin
            PutInEdit;
            lField.AsString := lArea;
            IncAddress;
         end;
      end;

      if cbEmails.Checked{ and lEmailV} then
      begin
         if (fDS.FieldByName('email').AsString <> '') and
            (fDS.FieldByName('email_valid').AsString <> IND_YES) and
            (fDS.FieldByName('email_valid').AsString <> IND_NO) then
         begin
            PutInEdit;
            if VerifyEmail(fDS.FieldByName('email').AsString) then
            begin
               fDS.FieldByName('email_valid').AsString := IND_YES;
               CoreData.InsertEmailDomain(fDS.FieldByName('email').AsString)
            end
            else
            begin
               fDS.FieldByName('email_valid').AsString := IND_NO;
            end;
            Inc(lECorrected);
         end;
      end;

      if fDS.State in [dsEdit] then
         fDS.Post;
   end;

begin
   if cbAddress.Checked or cbEmails.Checked or cbKeywords.Checked or cbCharcase.Checked or cbDefaults.Checked then
   begin
      lACorrected := 0;
      lECorrected := 0;
      lCCorrected := 0;
      lKCorrected := 0;
      lDCorrected := 0;

      //Ping google.com to check internet connection
      //lEmailV := True;
      if cbEmails.Checked then
      begin
         if not Ping(gSettings.DNSServerIP, 4) then
         begin
            ShowMessage('Unify is not sure if you are connected to the internet.' + ^M +
            'So if Unify can''t connect to the DNS Server you have configured, ' + ^M +
            'Unify will mistakenly think all emails are invalid.');

            //lEmailV := False;
         end;
      end;

      lStartTime := GetTickCount;
      qryKeywords.Open;
      qryContactDropdowns.Open;
      fDS.DisableControls;
      lBookMark := fDS.Bookmark;
      try
         pbValidate.Position := 0;
         pbValidate.Max := fDS.RecordCount;
         fDS.First;
         while not fDS.eof do
         begin
            if fDS.FieldByName('selected').AsBoolean then
            begin
               ValidateRecord;
            end;
            fDS.Next;
            pbValidate.StepBy(1);
            Application.ProcessMessages;
         end;

         //Show statistics
         lMessageStr := '';
         if lACorrected <> 0 then
            lMessageStr := lMessageStr + IntToStr(lACorrected) + ' addresses were corrected' + ^M;
         if lECorrected <> 0 then
            lMessageStr := lMessageStr + IntToStr(lECorrected) + ' emails were verified' + ^M;
         if lCCorrected <> 0 then
            lMessageStr := lMessageStr + IntToStr(lCCorrected) + ' records with capitalisations corrected' + ^M;
         if lDCorrected <> 0 then
            lMessageStr := lMessageStr + IntToStr(lDCorrected) + ' records with default values inserted' + ^M;
         if lKCorrected <> 0 then
            lMessageStr := lMessageStr + IntToStr(lKCorrected) + ' records with invalid keywords were detected (marked as purple, use Winbrow.exe to fix them)' + ^M;
         if lMessageStr = '' then
            lMessageStr := 'No changes or verifications made, these records are valid.'
         else
         begin
            lTotalTime := GetTickCount - lStartTime;
            lMessageStr := lMessageStr + 'in ' + FloatToStr(lTotalTime/1000) + ' seconds. Press ''Only Show Changed'' to see them.';
         end;
         ShowMessage(lMessageStr);
         ModalResult := mrOk;
      finally
         fDS.Bookmark := lBookMark;
         fDS.EnableControls;
         pbValidate.Position := 0;
         qryKeywords.Close;
         qryContactDropdowns.Close;
      end;
   end
   else
      ShowMessage('Select an option');
end;

function TdValidate.Ping(const AHost : string; const ATimes : integer) : Boolean;
var
   i : integer;
begin
   Result := True;
   if ATimes > 0 then
   begin
      with TIdIcmpClient.Create(Self) do
      begin
         try
            Host := AHost;
       {Pinguer le client}
            for i:=0 to Pred(ATimes) do
            begin
               try
                  Ping();
               except
                  Result := False;
                  Exit;
               end;
            end;
         finally
            Free;
         end;
      end;
   end;
end;
//AHost =>server to ping
//ATimes =>number of pings to send

procedure TdValidate.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_ESCAPE then
      Close;
end;

procedure TdValidate.FormShow(Sender: TObject);
begin
   cbEmails.Enabled := Assigned(DS.FindField('email'));
   cbEmails.Checked := cbEmails.Enabled;
   cbAddress.Enabled := Assigned(DS.FindField('suburb')) and Assigned(DS.FindField('cstate')) and Assigned(DS.FindField('postcode'));
   cbEmails.Checked := cbAddress.Enabled;
end;

function TdValidate.VerifyEmail(const email: string): Boolean;
var
  I: Integer;
  user, domain: string;
begin
  Result := False;

  I := Pos('@', email);
  if I = 0 then Exit;

  user := Copy(email, 1, I-1);
  domain := Copy(email, I+1, MaxInt);

  IdDNSResolver1.Host := gSettings.DNSServerIP;
  IdDNSResolver1.QueryType := [qtMX];

  try
    IdDNSResolver1.Resolve(domain);
  except
    Exit;
  end;

  for I := 0 to IdDNSResolver1.QueryResult.Count-1 do
  begin
    if IdDNSResolver1.QueryResult[I] is TMXRecord then
    begin
      IdSMTP1.Host := TMXRecord(IdDNSResolver1.QueryResult[I]).ExchangeServer;
      try
        IdSMTP1.Connect;
        try
          IdSMTP1.SendCmd('MAIL FROM:<' + gSettings.EmailFrom + '>', 250);
          IdSMTP1.SendCmd('RCPT TO:<'+email+'>', [250, 251]);
          //IdSMTP1.Verify(user);
          Result := True;
          Exit;
        finally
          IdSMTP1.Disconnect;
        end;
      except
      end;
    end;
  end;
end;

end.
