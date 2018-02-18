unit uuGlobals;

interface

uses
   Classes, Graphics, IBODataset, StdCtrls;

const
   DEF_COLINACTIVE        = $00BFCEFF;
   DEF_COLSELECTED        = $00FFB3B3;
   DEF_COLFILTER          = $00AAFFFF;
   DEF_COLBGCONFIGURATION = clWindow;
   DEF_COLBGCONTACTS      = clWindow;
   DEF_COLBGBRANCHES      = clWindow;
   DEF_COLBGUSERS         = clWindow;
   DEF_DNSSERVERIP        = '8.8.8.8';
   DEF_EMAILFROM          = 'labnol@labnol.org';
   DEF_HISTORYPURGEWEEKS  = 52;

   FIELD_TYPE_FREE        = 'F';
   FIELD_TYPE_DROPDOWN    = 'D';
   FIELD_TYPE_DATETIME    = 'T';
   FIELD_TYPE_NUMBER      = 'N';

   CHAR_CAPITALISED       = 'C';
   CHAR_UPPERCASE         = 'U';
   CHAR_LOWERCASE         = 'L';
   CHAR_UNCAPITALISED     = 'N';
   
   SEARCH_TYPE_EXACT      = 'E';
   SEARCH_TYPE_CONTAINS   = 'C';
   SEARCH_TYPE_STARTS     = 'S';
   SEARCH_TYPE_ENDS       = 'N';

   IND_WIDTH              = 12;

type
  TSettings = Record
     ColInactive : TColor;
     ColSelected : TColor;
     ColFilter : TColor;
     ColBGConfiguration : TColor;
     ColBGContacts : TColor;
     ColBGBranches : TColor;
     ColBGUsers : TColor;
     DNSServerIP : string;
     EmailFrom : string;
     LastBackup : string;
     BackupFolder : string;
     HistoryPurgeWeeks : Integer;
     DefaultBranch : string;
  end;

function ConvertDateToDBFormat(Value : TDateTime) : String;   
procedure SplitSQL(var aStrList : TStringList; aSQL : String; aDelimiter : Char; aStrict : Boolean);
function RegStrToBool(aStr : String) : Boolean;
function RegBoolToStr(aBool : Boolean) : String;
function ChooseFolder(var aNotChosen : Boolean;
   aCaption : String; aDefaultFolder : String; aOwner: TComponent) : String;
function OpenFile(aCSV : Boolean; var aNotChosen : Boolean;
   aCaption : String; aDefaultFolder : String; aOwner: TComponent) : String;
function SaveFile(aCSV : Boolean; var aNotChosen : Boolean;
   aCaption : String; aDefaultFile : String; aOwner: TComponent) : String;
procedure DisplayMail(aAddress, aSubject, aBody: string);
function IsEmailAddressValid(aAddress: string): Boolean;
function IsEmailDomainValid(const aDomain: string): Boolean;
function ValidStr(CharSet: string; theString: string): boolean;
function  Tokenize(aString: string; aDelimiters: string; aTrim: Boolean = False): TStringList; overload;
function ConfirmMessage(aMsg : String) : Boolean;
function Capitalise(aStr : String) : string;
function IsFieldValid(const Key: Char) : Char;
procedure MoveKeyword(aFrom, aTo : TListBox);

var
   gWin7 : Boolean;
   gSettings : TSettings;

const
   IND_YES = 'Y';
   IND_NO = 'N';
   KEYWORD_DELIMITER = '$';
   BadCharSet = [' ', '/', ',', '\', '+', '-', '*', '=', '!', '@', '#', '$', '%', '^', '&', '(', ')', '[', ']', '.', '''', '"', ';', ':', '_', '~', '`', '<', '>', '?', '{', '}'];
   SYMBOLS = [WideChar('~'), WideChar('!'), WideChar('@'), WideChar('#'), WideChar('$'), WideChar('%'), WideChar('^'), WideChar('&'), WideChar('*'), WideChar('('), WideChar(')'), WideChar('-'), WideChar('_'), WideChar('+'), WideChar('='), WideChar('{'), WideChar('['), WideChar('}'), WideChar(']'), WideChar('|'), WideChar('\'), WideChar(':'), WideChar(';'), WideChar('"'), WideChar(''''), WideChar('<'), WideChar('>'), WideChar(','), WideChar('.'), WideChar('?') ,WideChar('/')];
   ALPHANUMERAL = [WideChar('a')..WideChar('z'), WideChar('A')..WideChar('Z'), WideChar('0')..WideChar('9'), WideChar(' ')];
   VALID_LABEL_CHARS = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!#$%&''*+-/=?^_`{|}~.:';
   ALPHABETIC_CHARS  = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';

implementation

uses
   Dialogs, SysUtils, FileCtrl, ShellAPI, Windows, Controls;

procedure MoveKeyword(aFrom, aTo : TListBox);
var
   I : Integer;
   lToDelete : array of Boolean;
begin
   SetLength(lToDelete, aFrom.Items.Count);
   for I := 0 to aFrom.Items.Count - 1 do
   begin
      if aFrom.Selected[I] then
      begin
         aTo.Items.Add(aFrom.Items[I]);
      end;
      lToDelete[I] := aFrom.Selected[I];
   end;
   for I := Length(lToDelete) - 1 downto 0 do
   begin
      if lToDelete[I] then
         aFrom.Items.Delete(I);
   end;
   if aFrom.Items.Count <> 0 then
      aFrom.Selected[0] := True;
   if aTo.Items.Count <> 0 then
      aTo.Selected[0] := True;
end;

function IsFieldValid(const Key: Char) : Char;
begin
   //#8 is BACKSPACE
   if ((Key in [',']) or (Key = #13)) then
      Result := #0
   else
      Result := Key;
end;

function ConfirmMessage(aMsg : String) : Boolean;
begin
   Result := (MessageDlg(aMsg, mtConfirmation, [mbOK, mbCancel], 0) = mrOK);
end;

procedure DisplayMail(aAddress, aSubject, aBody: string);
var
   pCh: String;
begin
  pCh := 'mailto:' + aAddress + '?subject=' + aSubject + '&body=' + aBody;
  ShellExecute(0, 'open', PAnsiChar(pCh), nil, nil, SW_SHOWNORMAL);
end;

function ConvertDateToDBFormat(Value : TDateTime) : String;
var
  Year  : Word;
  Month : Word;
  Day   : Word;
begin
  DecodeDate(Value,Year,Month,Day);
  Result := Format('%d/%d/%d',[Month,Day,Year]);
end;

function Capitalise(aStr : String) : string;
var
   lFlag : Boolean;
   i : Byte;
   t : string;
begin
   lFlag := True;
   t := '';
   for i := 1 to Length(aStr) do
   begin
      if lFlag then
         AppendStr(t, UpCase(aStr[i]))
      else
         AppendStr(t, aStr[i]);
      lFlag := (aStr[i] = ' ');
   end;
   Result := t;
end;

procedure SplitSQL(var aStrList : TStringList; aSQL : String; aDelimiter : Char; aStrict : Boolean);
begin
   if AnsiPos(aDelimiter, aSQL) <> 0 then
   begin
      aStrList.Clear;
      aStrList.StrictDelimiter := aStrict;
      aStrList.Delimiter := aDelimiter;
      aStrList.DelimitedText := aSQL;
   end
   else
      aStrList.Add(aSQL);
end;

function RegStrToBool(aStr : String) : Boolean;
begin
   //should be done with a ifthen ternary statement
   if aStr = 'Y' then
      Result := True
   else
      Result := False;
end;

function RegBoolToStr(aBool : Boolean) : String;
begin
   if aBool then
      Result := 'Y'
   else
      Result := 'N';
end;

function ChooseFolder(var aNotChosen : Boolean;
   aCaption : String; aDefaultFolder : String; aOwner: TComponent) : String;
var
  OpenDialog: TFileOpenDialog;
begin
   Result := '';
   aNotChosen := False;
   OpenDialog := nil;
   
   if gWin7 then
      OpenDialog := TFileOpenDialog.Create(aOwner);
   try
      if gWin7 then
      begin
         if DirectoryExists(aDefaultFolder) then
            OpenDialog.DefaultFolder := aDefaultFolder;

         OpenDialog.Options := OpenDialog.Options + [fdoPickFolders];

         if (not OpenDialog.Execute) then
            aNotChosen := True
         else
            Result := OpenDialog.FileName;
      end
      else
      begin
         aNotChosen := not SelectDirectory(aCaption, aDefaultFolder, Result, [sdNewFolder]);
      end;
   finally
      if gWin7 then
         OpenDialog.Free;
   end;

end;

function OpenFile(aCSV : Boolean; var aNotChosen : Boolean;
   aCaption : String; aDefaultFolder : String; aOwner: TComponent) : String;
var
   OpenDialog: TFileOpenDialog;
   Dialog : TOpenDialog;
begin
   aNotChosen := True;
   OpenDialog := nil;
   Dialog := nil;
   
   if gWin7 then
      OpenDialog := TFileOpenDialog.Create(aOwner)
   else
      Dialog := TOpenDialog.Create(aOwner);
   try
      if gWin7 then
      begin
         if aCSV then
         begin
            with OpenDialog.FileTypes.Add do
            begin
               DisplayName := 'csv file';
               FileMask := '*.csv';
            end;
         end;
         OpenDialog.DefaultFolder := aDefaultFolder;
         aNotChosen := not OpenDialog.Execute;
         Result := OpenDialog.FileName;
      end
      else
      begin
         //Dialog.Filter :=
         Dialog.InitialDir := aDefaultFolder;
         aNotChosen := not Dialog.Execute;
         Result := Dialog.FileName;
      end;
   finally
      if gWin7 then
         OpenDialog.Free
      else
         Dialog.Free;
   end;

end;

function SaveFile(aCSV : Boolean; var aNotChosen : Boolean;
   aCaption : String; aDefaultFile : String; aOwner: TComponent) : String;
var
   SaveDialog: TFileSaveDialog;
   Dialog : TSaveDialog;
begin
   aNotChosen := True;
   Dialog := nil;
   SaveDialog := nil;

   if gWin7 then
      SaveDialog := TFileSaveDialog.Create(aOwner)
   else
      Dialog := TSaveDialog.Create(aOwner);

   try

      if gWin7 then
      begin
         if aCSV then
         begin
            SaveDialog.DefaultExtension := 'csv';
            with SaveDialog.FileTypes.Add do
            begin
               DisplayName := 'csv file';
               FileMask := '*.csv';
            end;
         end;
         SaveDialog.FileName := aDefaultFile;
         aNotChosen := not SaveDialog.Execute;
         Result := SaveDialog.FileName;
      end
      else
      begin
         //Dialog.Filter :=
         Dialog.InitialDir := aDefaultFile;
         aNotChosen := not Dialog.Execute;
         Result := Dialog.FileName;
      end;
   finally
      if gWin7 then
         SaveDialog.Free
      else
         Dialog.Free;
   end;

end;

function ValidStr(CharSet: string; theString: string): boolean;
{****************************************************************************
|
| Description       :   Ensure theString only contains characters from the
|                       CharSet.
|
| Input Parameters  :   CharSet: string - Set of valid characters
|                       theString: string - any old string we're validating.
|
| Return Values     :   True: the string is valid
|                       False: no its not.
********************************************************************************}
var
   i: integer;
begin
   result := true;
   for i := 1 to Length(theString) do
   begin
      if Pos(theString[i], CharSet) = 0 then
      begin
         result := false;
         break;
      end;
   end;
end; // of function Indexof

function IsEmailAddressValid(aAddress: string): Boolean;
{*******************************************************************************
|
| Description        :  Validates given Email address using the following rules:
}
//          NOTE     :  Change in commenting style made to handle special
//                      characters in description.
//
//   * Email addresses are 7-bit ascii; each character has a value from 1 to 127
//   * The email has a localpart on the left of an @, the domain on the right.
//     Neither the localpart nor the domain may be empty.
//   * The localpart must be 64 characters or less.
//   * The localpart can consist of labels separated by dots but there can not
//     be two successive dots, nor can it start or end with a dot.
//   * Labels can either be quoted or unquoted.
//      - Unquoted labels must have at least one character.
//         > This can only contain a-z, A-Z, 0?9, or any of !#$%&?*+-/=?^_`{|}~.
//      - Quoted labels have a " at the beginning and end.
//         > There does not need to be anything between the quotes. (Weird.)
//         > Tab, CR, LF, ", [, \, ^ must not exist in the email address unescaped.
//         > Only CR and LF can?t be escaped with a \ before the character.
//   * The domain can be bracketed, unbracketed, or an IP address..
//      - An unbracketed domain consists of labels separated by periods and less
//        than 253 characters. No domain can start with a period, end with a
//        period, or have two successive periods.
//         > Labels consist of a-z, A-Z, 0?9, or one of !#$%&?*+-/=?^_`{|}~.
//         > Labels must be less than 63 characters.
//         > Labels must not start with a hyphen, end with a hyphen, or contain
//           two successive hyphens.
//         > The right-most label must be all alphabetic.
//      - A bracketed domain starts with [, ends with ] and the contents (after
//        unescaping) must be less than 245 characters.
//         > CR, LF, {, }, |, and ^ are not allowed unescaped.
//         > If there is a \, any character except CR or LF is allowed.
//         > Labels must be less than 63 characters.
//         > Labels must not start with a hyphen, end with a hyphen, or contain
//           two successive hyphens.
//         > The right-most label must be all alphabetic.
//      - IP addresses can be specified as 123.45.67.89 or 73f0:2bba::0562:0011
//        (IPv4 or IPv6).
{
| Returns:
|             True   :  if the email address is valid
|             False  :  if the email address is not valid
|
********************************************************************************}
var
   lAt:        integer;
   i:          integer;
   lLocalPart: string;
   lDomain:    string;
   lLabels:    TStringList;
begin
   result := true;
   // Email addresses are 7-bit ascii; each character has a value from 1 to 127
   if aAddress = '' then
      {-------------------------------------------------------------------------
      | BCD - I prefer to state that an empty string is an invalid email address
      | (as per RFC), but existing legacy code never bothered checking if they
      | had an empty string before calling this method, so we have to return
      | true to handle that case.
      }
//      result := false
      result := true
   else
   begin
      // The email has a localpart on the left of an @, the domain on the right.
      lAt := Pos('@', aAddress);
      // ensure there is an '@'
      if lAt > 0 then
      begin
         lLocalPart := Copy(aAddress, 1, lAt - 1);
         lDomain    := Copy(aAddress, lAt + 1, Length(aAddress) - lAt);

         {-------------------------------------------------------------------------
         | LOCAL PART (text on the left of the @)
         }
         // Neither the localpart nor the domain may be empty
         // The localpart must be 64 characters or less
         if (lLocalPart <> '') and (Length(lLocalPart) <= 64) then
         begin
            // The localpart can consist of labels separated by dots but there can
            // not be two successive dots, nor can it start or end with a dot.
            if (lLocalPart[1] <> '.') and (lLocalPart[Length(lLocalPart)] <> '.') and (Pos('..', lLocalPart) = 0) then
            begin
               // Labels can either be quoted or unquoted.
               // But we're not going to check for quoted labels now (because quoted labels can contain escape characters and tabs, newlines, etc... yuch!)

               lLabels := Tokenize(lLocalPart, '.');
               try // finally free the Labels
                  for i := 0 to lLabels.Count - 1 do
                  begin
                     // Unquoted labels must have at least one character.
                     // This can only contain a-z, A-Z, 0?9, or any of !#$%&?*+-/=?^_`{|}~.
                     result := (Length(lLabels[i]) > 0) and ValidStr(VALID_LABEL_CHARS, lLabels[i]);
                     if not result then
                        break;
                  end;
               finally
                  FreeAndNil(lLabels);
               end; // try...finally
            end // LocalPart has correct dot usage
            else
               result := false;
         end // LocalPart is not empty
         else
            result := false;


         {-------------------------------------------------------------------------
         | DOMAIN PART (text on the right of the @)
         }
         // Neither the localpart nor the domain may be empty
         // The domain can be bracketed, unbracketed, or an IP address.
         // An unbracketed domain consists of labels separated by periods and less than 253 characters.
         if result and (not IsEmailDomainValid(lDomain)) then
            result := false;
      end // We have an '@' character
      else
         result := false;
   end; // Address is not empty
end; // function IsEmailAddressValid


function IsEmailDomainValid(const aDomain : String) : Boolean;
var
   i       : Integer;
   lLabels : TStringList;
begin
   Result := True;
   // The domain can be bracketed, unbracketed, or an IP address.
   // An unbracketed domain consists of labels separated by periods and less than 253 characters.
   if (aDomain <> '') and (Length(aDomain) < 253) then
   begin
      // No domain can start with a period, end with a period, or have two successive periods.
      if (aDomain[1] <> '.') and (aDomain[Length(aDomain)] <> '.') and (Pos('..', aDomain) = 0) then
      begin
         // Domains can either be bracketed or unbracketed.
         // But we're not going to check for bracketed domains now.

         lLabels := Tokenize(aDomain, '.');
         try // finally free the Labels
            // there must be at least 2 labels in the domain
            if lLabels.Count >= 2 then
            begin
               for i := 0 to lLabels.Count - 1 do
               begin
                  // Labels consist of a-z, A-Z, 0?9, or one of !#$%&?*+-/=?^_`{|}~.
                  // Labels must be less than 63 characters.
                  result := ValidStr(VALID_LABEL_CHARS, lLabels[i]) and (Length(lLabels[i]) < 63);

                  // Labels must not start with a hyphen, end with a hyphen, or contain two successive hyphens.
                  if result and ((aDomain[1] = '-') or (aDomain[Length(aDomain)] = '-') or (Pos('--', aDomain) > 0)) then
                     result := false;

                  if not result then
                     break;
               end; // for all domain labels

               if result then
                  // The right-most label must be all alphabetic.
                  result := ValidStr(ALPHABETIC_CHARS, lLabels[lLabels.Count - 1]);
            end
            else
               result := false;

         finally
            FreeAndNil(lLabels);
         end; // try...finally
      end // Domain has correct dot usage
      else
         result := false;
   end // Domain is not empty
   else
      result := false;
end;

function Tokenize(aString: string; aDelimiters: string; aTrim: Boolean = False): TStringList;
{*******************************************************************************
|
| Description        :  Split the search string into words and load each word
|                       into a Stringlist.
|
|                       Ensure that the returned stringlist is freed when your
|                       finished with it!
|
| Input Parameters   :  aString  - The string of keywords to be split
|                       aDelimiters - The set of characters that will delimit
|                                      each work or token.
|                       aTrim - Trim each of the final stringlist contents
|
| Return Values      :  A stringlist containing the tokenized data
|
| Note : 2 different tokenize functions from TdSelectList and uuSupplements
|        have been merged into this Tokenzie functon and moved here.
|
| Note : A Delphi 2007 TStringList component has an internal Tokenizer.
|        Check the Delimiter and DelimitedText properties.
|
| ******************************************************************************
| Maintenance Log
|
| Task   Date     Who   Description
| ------ -------- ---   --------------------------------------------------------
| 016484 20101015 DKN   Added a Trim parameter.
| 012416 20080912 DKN   Copied to this unit.
| 007817 20030608 BCD   Created (copied bits from SplitKeywords by PTO).
********************************************************************************}
var
   lResultList:   TStringList;
   lTheWord:      string;
   lLength:       integer;
   i:             integer;
   lTempChar:     char;
   lDelimiter:    Boolean;
begin
   lResultList := TStringList.Create;
   lLength := Length(aString);
   lTheWord := '';

   //check for a valid entry and count the number of words entered
   for i := 1 to lLength do
   begin
      lTempChar := aString[i];
      lDelimiter := Pos(lTempChar, aDelimiters) <> 0;
      if not lDelimiter then
         lTheWord := lTheWord + lTempChar;

      if lDelimiter or (i = lLength) then //we have a word
      begin
         if aTrim then
            lTheWord := Trim(lTheWord);
         if(Length(lTheWord) > 0) then
            lResultList.Add(lTheWord);
         lTheWord := '';
      end;
   end;
   Result := lResultList;
end; // Tokenize


end.
