unit uuCoreData;

interface

uses
  SysUtils, Classes, DB, kbmMemTable, IB_Access, IBODataset,
  DBTables, IB_Components;

const
   A_VIEW   = 'V';
   A_CREATE = 'C';
   A_DELETE = 'D';
   A_IMPORT = 'I';
   A_EXPORT = 'E';

type
  TCoreData = class(TDataModule)
    mtbSettings: TkbmMemTable;
    dbUnify: TIBODatabase;
    qryUserAccess: TQuery;
    trUnify: TIB_Transaction;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    fDBServer : string;
    fDBPath : string;
    fDBUserName : string;
    fDBPassword : string;
    fBranchID : string;
    fBranchName : string;
    fBranchState : string;
    fIDPrefix : string;
    fUserID : string;
    fUserLevel : Integer;
    fUserLevelDesc : string;
    fUserDisplayName : string;
    fFailed : Boolean;
    procedure LoadIni;
    procedure OpenDB;
    procedure SetBranchInfo;
    procedure LoadSettings;
    procedure SetUserID(const aUserID : String);
    function  DCDecrypt(ToBeDecrypted: String; Key: Word): String;
    function  DCEncrypt(ToBeEncrypted: String; Key: Word): String;
    procedure LogActivity(aProgram : string; aActivityInd : String);
    procedure PurgeUserHistory;
  public
    property  Failed : Boolean read fFailed write fFailed;
    property  DBConnection : TIBODatabase read dbUnify;
    property  BranchID : String read fBranchID write fBranchID;
    property  BranchName : string read fBranchName write fBranchName;
    property  BranchState : string read fBranchState write fBranchState;
    property  IDPrefix : string read fIDPrefix write fIDPrefix;
    property  UserID : String read fUserID write SetUserID;
    property  UserDisplayName : String read fUserDisplayName write fUserDisplayName;
    property  UserLevel : Integer read fUserLevel write fUserLevel;
    property  UserLevelDesc : string read fUserLevelDesc write fUserLevelDesc;
    procedure Init;
    procedure InsertEmailDomain(aEmail: String);
    procedure AddAreaToPostalFind(aPostcode, aArea: String);
    procedure SaveSetting(aName, aValue: String);
    function  CheckUserAccess(aProgram: string; aActivity: String): Boolean;
  end;

  TIDQuery = class(TIBOQuery)
      procedure MyBeforePost(DataSet: TDataSet);
    private
      fQryNextNum : TIBOQuery;
      fTableName : string;
      fPrimaryKey : string;

      function GetNextAlphaSeq(AString: String; aStep : Integer = 1): String;
    public
      constructor Create(AOwner: TComponent; aTableName : String = ''; aPrimaryKey : String = '');
      destructor Destroy; override;
      function NextPrimaryKey(const aSetKey : Boolean) : String;
      property TableName : string read fTableName;
  end;

var
   gCoreData : TCoreData;

function CoreData : TCoreData;

implementation

{$R *.dfm}

uses
   IniFiles, Dialogs, IB_Session, uuGlobals, Graphics;

constructor TIDQuery.Create(AOwner: TComponent; aTableName : String = ''; aPrimaryKey : String = '');
begin
   inherited Create(AOwner);
   IB_Connection := CoreData.DBConnection;
   ReadOnly := False;
   RequestLive := True;

   fTableName := aTableName;
   fPrimaryKey := aPrimaryKey;

   if (aTableName <> '') and (aPrimaryKey <> '') then
   begin
      BeforePost := MyBeforePost;

      if Assigned(fQryNextNum) then
      begin
         fQryNextNum.Close;
         FreeAndNil(fQryNextNum);
      end;

      fQryNextNum := TIBOQuery.Create(nil);
      fQryNextNum.IB_Connection := CoreData.DBConnection;
   end;
end;

destructor TIDQuery.Destroy;
begin
   if Assigned(fQryNextNum) then
   begin
      fQryNextNum.Close;
      FreeAndNil(fQryNextNum);
   end;
   inherited;
end;

function TIDQuery.NextPrimaryKey(const aSetKey : Boolean) : String;
var
   lId, lNextId : string;
begin
   Result := '';
   if fQryNextNum.Active then
       fQryNextNum.Close;
   try
      try
         fQryNextNum.SQL.Clear;
         fQryNextNum.SQL.Add('select nextnum_id from nextnum where table_name = ' + QuotedStr(fTableName));
         fQryNextNum.Open;
         if not fQryNextNum.eof then
         begin
            lId := fQryNextNum.FieldByName('nextnum_id').AsString;
            lNextId := GetNextAlphaSeq(lId);
            Result := CoreData.IDPrefix + lNextId;
            if aSetKey then
               Self.FieldByName(fPrimaryKey).AsString := Result;

            //update NEXTNUM table
            fQryNextNum.SQL.Clear;
            fQryNextNum.SQL.Add('update nextnum set nextnum_id = ' + QuotedStr(lNextId));
            fQryNextNum.SQL.Add(' where table_name = ' + QuotedStr(fTableName));
            fQryNextNum.ExecSQL;
         end;
      except
         raise;
      end;
   finally
      fQryNextNum.Close;
   end;
end;

procedure TIDQuery.MyBeforePost(DataSet: TDataSet);
{*******************************************************************************
|
| Description       :   This is executed after inserting a record. It grabs the
|                       id for a particular table from the NEXTNUM table and
|                       calculates the next alphanumeric key uses that for the
|                       primary key of the table to ensure uniqueness.
|
| ******************************************************************************}
begin
   inherited;

   if DataSet.State in [dsInsert] then
   begin
      NextPrimaryKey(True);
      FieldByName('created_by').AsString := CoreData.UserID;
      if Assigned(FindField('updated_by')) then
         FieldByName('updated_by').AsString := CoreData.UserID;
   end
   else if DataSet.State in [dsEdit]  then
   begin
      if Assigned(FindField('updated_by')) then
         FieldByName('updated_by').AsString := CoreData.UserID;
   end;
end;

function TIDQuery.GetNextAlphaSeq(AString: String; aStep : Integer = 1): String;
{*******************************************************************************
|
| Description       :   Takes an alphanumeric string and "increments" it -
|                       e.g.  GetNextAlphaSeq('11a') = '11b',
|                             GetNextAlphaSeq('19z') = '1a0'
|
| ******************************************************************************}
const
   DOMAIN = '0123456789abcdefghijklmnopqrstuvwxyz';
var
   lDomainMax : Integer;
   lDomainNum : Integer;
   lModPos    : Integer;
   lChar      : Char;
   lIncChar   : Boolean;
begin
   Result     := LowerCase(aString);
   lDomainMax := Length(DOMAIN);
   lModPos    := Length(aString);
   lIncChar   := True;
   while (lModPos >= 1) and lIncChar do
   begin
      lChar      := Result[lModPos];
      lDomainNum := Pos(lChar, DOMAIN);
      Inc(lDomainNum, aStep);
      if lDomainNum > lDomainMax then
      begin
         aStep        := lDomainNum div lDomainMax;
         lDomainNum   := lDomainNum mod lDomainMax;
      end
      else if (lDomainNum <= 0) then     //negative step!
      begin
         aStep        := (lDomainNum div lDomainMax)    - 1;
         lDomainNum   := 36 - Abs(lDomainNum mod lDomainMax);
      end
      else
         lIncChar     := False;
      Result[lModPos] := DOMAIN[lDomainNum];
      Dec(lModPos);
   end;
end;

//*************************CORE DATA******************************

function CoreData : TCoreData;
begin
   if not Assigned(gCoreData) then
      gCoreData := TCoreData.Create(nil);
   Result := gCoreData;
end;

procedure TCoreData.DataModuleCreate(Sender: TObject);
begin
   fFailed := False;
   LoadIni;
   if fIDPrefix = '' then
   begin
      ShowMessage('IDPrefix not set in Unify.ini');
      //raise;
   end;
end;

procedure TCoreData.Init;
begin
   try
      OpenDB;
      SetBranchInfo;
      LoadSettings;
      PurgeUserHistory;
  except
      on E : EIB_ISCError do
      begin
         ShowMessage('Restart your Firebird Guardian Windows Service');
         raise;
      end;
      on E : Exception do
      begin
         ShowMessage(E.Message);
         fFailed := True;
      end;
  end;
end;

procedure TCoreData.PurgeUserHistory;
var
   lQry : TIDQuery;
   lPurgeBefore : TDateTime;
begin
   lPurgeBefore := Date - (7*gSettings.HistoryPurgeWeeks);
   lQry := TIDQuery.Create(nil);
   try
      lQry.SQL.Clear;
      lQry.SQL.Add('delete from activitylog');
      lQry.SQL.Add(' where created < ' + QuotedStr(ConvertDateToDBFormat(lPurgeBefore)));
      lQry.ExecSQL;
   finally
      FreeAndNil(lQry);
   end;
end;

procedure TCoreData.DataModuleDestroy(Sender: TObject);
begin
   mtbSettings.Close;
   dbUnify.Connected := False;
   inherited;
end;

procedure TCoreData.LoadIni;
var
   lIni : TIniFile;
   lIniPath : String;
begin
  lIniPath := ExtractFilePath(ParamStr(0)) + '\Unify.ini';

  if not FileExists(lIniPath) then
  begin
     ShowMessage('Cannot find Unify.ini');
     //raise;
  end
  else
  begin
    lIni := TIniFile.Create(lIniPath);
    try
      fDBServer       := lIni.ReadString('data','Server','');
      fDBPath         := lIni.ReadString('data','DBPath','');
      fIDPrefix       := lIni.ReadString('data','IDPrefix','');
      fDBUserName     := {DCDecrypt(}lIni.ReadString('data','UserName',''){,723)};
      fDBPassword     := {DCDecrypt(}lIni.ReadString('data','Password',''){,723)};
    finally
      lIni.Free;
    end;
  end;
end;

procedure TCoreData.OpenDB;
begin
   dbUnify.Connected  := False;
   dbUnify.DatabaseName := 'UNIFY.BFX';
   dbUnify.Path       := fDBPath;
   dbUnify.Username   := fDBUserName;
   dbUnify.Password   := fDBPassword;
   dbUnify.Server     := fDBServer;
   dbUnify.Protocol   := cpTCP_IP;
   dbUnify.Open;
end;

procedure TCoreData.SetBranchInfo;
var
   lQry : TIDQuery;
begin
   lQry := TIDQuery.Create(nil);
   try
      //load access level from USER table
      lQry.SQL.Clear;
      lQry.SQL.Add('select branch_id, description, bstate from branch');
      lQry.SQL.Add(' where branch_prefix = ' + QuotedStr(fIDPrefix));
      lQry.Open;
      if not lQry.eof then
      begin
         fBranchID    := lQry.FieldByName('branch_id').AsString;
         fBranchName  := lQry.FieldByName('description').AsString;
         fBranchState := lQry.FieldByName('bstate').AsString;
      end;
   finally
      lQry.Close;
      FreeAndNil(lQry);
   end;
end;

procedure TCoreData.LoadSettings;
var
   lQry : TIDQuery;
begin
   //Load gSettings from SETTINGS table. If none exist, use a default value
   lQry := TIDQuery.Create(nil);
   try
      lQry.SQL.Clear;
      lQry.SQL.Add('select name, dvalue from settings');
      lQry.SQL.Add(' where branch_id = ' + QuotedStr(fBranchID));
      lQry.Open;

      if lQry.Locate('name', 'ColInActive', []) then
         gSettings.ColInActive := StringToColor(lQry.FieldByName('dvalue').AsString)
      else
         gSettings.ColInActive := DEF_COLINACTIVE;

      if lQry.Locate('name', 'ColSelected', []) then
         gSettings.ColSelected := StringToColor(lQry.FieldByName('dvalue').AsString)
      else
         gSettings.ColSelected := DEF_COLSELECTED;

      if lQry.Locate('name', 'ColFilter', []) then
         gSettings.ColFilter := StringToColor(lQry.FieldByName('dvalue').AsString)
      else
         gSettings.ColFilter := DEF_COLFILTER;

      if lQry.Locate('name', 'ColBGConfiguration', []) then
         gSettings.ColBGConfiguration := StringToColor(lQry.FieldByName('dvalue').AsString)
      else
         gSettings.ColBGConfiguration := DEF_COLBGCONFIGURATION;

      if lQry.Locate('name', 'ColBGContacts', []) then
         gSettings.ColBGContacts := StringToColor(lQry.FieldByName('dvalue').AsString)
      else
         gSettings.ColBGContacts := DEF_COLBGCONTACTS;

      if lQry.Locate('name', 'ColBGBranches', []) then
         gSettings.ColBGBranches := StringToColor(lQry.FieldByName('dvalue').AsString)
      else
         gSettings.ColBGBranches := DEF_COLBGBRANCHES;

      if lQry.Locate('name', 'ColBGUsers', []) then
         gSettings.ColBGUsers := StringToColor(lQry.FieldByName('dvalue').AsString)
      else
         gSettings.ColBGUsers := DEF_COLBGUSERS;

      if lQry.Locate('name', 'DNSServerIP', []) then
         gSettings.DNSServerIP := lQry.FieldByName('dvalue').AsString
      else
         gSettings.DNSServerIP := DEF_DNSSERVERIP;

      if lQry.Locate('name', 'EmailFrom', []) then
         gSettings.EmailFrom := lQry.FieldByName('dvalue').AsString
      else
         gSettings.EmailFrom := DEF_EMAILFROM;

      if lQry.Locate('name', 'LastBackup', []) then
         gSettings.LastBackup := lQry.FieldByName('dvalue').AsString
      else
         gSettings.LastBackup := '';

      if lQry.Locate('name', 'BackupFolder', []) then
         gSettings.BackupFolder := lQry.FieldByName('dvalue').AsString
      else
         gSettings.BackupFolder := '';

      if lQry.Locate('name', 'HistoryPurgeWeeks', []) then
         gSettings.HistoryPurgeWeeks := StrToInt(lQry.FieldByName('dvalue').AsString)
      else
         gSettings.HistoryPurgeWeeks := DEF_HISTORYPURGEWEEKS;

      if lQry.Locate('name', 'DefaultBranch', []) then
         gSettings.DefaultBranch := lQry.FieldByName('dvalue').AsString
      else
         gSettings.DefaultBranch := '';
   finally
      lQry.Close;
      FreeAndNil(lQry);
   end;
end;

procedure TCoreData.SetUserID(const aUserID : String);
var
   lQry : TIDQuery;
begin
   lQry := TIDQuery.Create(nil);
   try
      //load access level from USER table
      lQry.SQL.Clear;
      lQry.SQL.Add('select users.display_name, userlevel.level, userlevel.description from userlevel');
      lQry.SQL.Add(' join users on (users.user_level_id = userlevel.user_level_id)');
      lQry.SQL.Add(' where users.user_id = ' + QuotedStr(aUserID));
      lQry.Open;
      if not lQry.eof then
      begin
         fUserLevel := lQry.FieldByName('level').AsInteger;
         fUserLevelDesc := lQry.FieldByName('description').AsString;
         fUserDisplayName := lQry.FieldByName('display_name').AsString;
         fUserID := aUserID; //only change user when all is ok.
      end
      else
      begin
         ShowMessage('This user does not have a user level');
      end;
   finally
      lQry.Close;
      FreeAndNil(lQry);
   end;
end;

function TCoreData.DCDecrypt(ToBeDecrypted: String; Key: Word): String;
// This function is windows only decryption
const
  C1    = 005510300;
  C2    = 21178;
  ModNo = 17;
var
  I: byte;
begin
  Result := '';
  for I := 1 to Length(ToBeDecrypted) do
  begin
    Key := (Key * C1 + C2) mod ModNo;
    Result := Result + char(byte(ToBeDecrypted[I]) + Key);
  end;
end;

function TCoreData.DCEncrypt(ToBeEncrypted: String; Key: Word): String;
// This function is windows only encryption
const
  C1    = 005510300;
  C2    = 21178;
  ModNo = 17;
var
  I: byte;
begin
  Result := '';
  for I := 1 to Length(ToBeEncrypted) do
  begin
    Key := (Key * C1 + C2) mod ModNo;
    Result := Result + char(byte(ToBeEncrypted[I]) - Key);
  end;
end;

procedure TCoreData.InsertEmailDomain(aEmail : String);
var
   lPos : Integer;
   lQry : TIBOQuery;
begin
   lPos := AnsiPos('@', aEmail);
   if lPos <> 0 then
   begin
      Delete(aEmail, 1, lPos);
      if aEmail <> '' then
      begin
         lQry := TIBOQuery.Create(nil);
         lQry.ReadOnly := False;
         lQry.RequestLive := True;
         lQry.IB_Connection := dbUnify;
         lQry.SQL.Add('select email_domain from emaildomain');
         try
            lQry.Open;
            if not lQry.Locate('email_domain', aEmail, []) then
            begin
               lQry.Insert;
               lQry.FieldByName('email_domain').AsString := aEmail;
               lQry.Post;
            end;
         finally
            lQry.Close;
            lQry.Free;
         end;
      end;
   end;
end;

procedure TCoreData.AddAreaToPostalFind(aPostcode, aArea : String);
var
   lQry : TIBOQuery;
begin
   if (aPostcode <> '') and (aArea <> '') then
   begin
      lQry := TIBOQuery.Create(nil);
      lQry.IB_Connection := dbUnify;
      lQry.SQL.Clear;
      lQry.SQL.Add('update postalfind set area = ' +
         QuotedStr(aArea) + ' where postcode = ' + QuotedStr(aPostcode));
      try
         lQry.ExecSQL;
      finally
         lQry.Free;
      end;
   end;
end;

procedure TCoreData.SaveSetting(aName : string; aValue : String);
var
   lQry : TIDQuery;
begin
   lQry := TIDQuery.Create(nil, 'SETTINGS', 'setting_id');
   try
      lQry.SQL.Clear;
      lQry.SQL.Add('select * from settings where branch_id = ' + QuotedStr(CoreData.BranchID));
      lQry.Open;
      if lQry.Locate('name',aName, []) then
      begin
         lQry.Edit;
         lQry.FieldByName('dvalue').AsString    := aValue;
      end
      else
      begin
         lQry.Append;
         lQry.FieldByName('name').AsString      := aName;
         lQry.FieldByName('dvalue').AsString    := aValue;
         lQry.FieldByName('branch_id').AsString := CoreData.BranchID;
      end;
      lQry.Post;
   finally
      lQry.Close;
      FreeAndNil(lQry);
   end;
end;

procedure TCoreData.LogActivity(aProgram : string; aActivityInd : String);
var
   lQry : TIDQuery;
   lPQry : TIDQuery;
   lNextPrimaryKey : String;
   lProgramId : string;
begin
   lQry := TIDQuery.Create(nil,'ACTIVITYLOG','activitylog_id');
   lPQry := TIDQuery.Create(nil);
   try
      try
         lPQry.SQL.Clear;
         lPQry.SQL.Add('select program_id from program where program_name = ' + QuotedStr(aProgram));
         lPQry.Open;
         if not lPQry.eof then
         begin
            lProgramId := lPQry.FieldByName('program_id').AsString;
            lPQry.Close;

            lNextPrimaryKey := lQry.NextPrimaryKey(False);
            lQry.SQL.Clear;
            lQry.SQL.Add('insert into activitylog(activitylog_id, program_id, activity_ind, created_by)');
            lQry.SQL.Add(' VALUES(' + QuotedStr(lNextPrimaryKey) + ', ' + QuotedStr(lProgramId) + ', ' + QuotedStr(aActivityInd) + ', ' + QuotedStr(CoreData.UserID) + ')');
            lQry.ExecSQL;
         end;
      except
         raise;
      end;
   finally
      if lQry.Active then
         lQry.Close;
      if lPQry.Active then
         lPQry.Close;
      FreeAndNil(lPQry);
      FreeAndNil(lQry);
   end;
end;

function TCoreData.CheckUserAccess(aProgram : string; aActivity: String) : Boolean;
var
   lQry : TIBOQuery;
begin
   Result := True;
   lQry := TIBOQuery.Create(nil);
   lQry.IB_Connection := CoreData.dbUnify;
   try
      lQry.SQL.Add('select userlevel.level from program ');
      if aActivity = A_VIEW then
      begin
         lQry.SQL.Add('join userlevel on (userlevel.user_level_id = program.view_user_level_id)');
      end
      else if aActivity = A_CREATE then
      begin
         lQry.SQL.Add('join userlevel on (userlevel.user_level_id = program.create_user_level_id)');
      end
      else if aActivity = A_DELETE then
      begin
         lQry.SQL.Add('join userlevel on (userlevel.user_level_id = program.delete_user_level_id)');
      end
      else if aActivity = A_IMPORT then
      begin
         lQry.SQL.Add('join userlevel on (userlevel.user_level_id = program.import_user_level_id)');
      end
      else if aActivity = A_EXPORT then
      begin
         lQry.SQL.Add('join userlevel on (userlevel.user_level_id = program.export_user_level_id)');
      end;

      lQry.SQL.Add('where program_name = ' + QuotedStr(aProgram));
      lQry.Open;
      if (not lQry.eof) then
         Result := CoreData.UserLevel <= lQry.FieldByName('level').AsInteger;
      lQry.Close;

      if Result then
         LogActivity(aProgram, aActivity);
   finally
      if lQry.Active then
         lQry.Close;
      lQry.Free;
   end;
end;

initialization

finalization
   if Assigned(gCoreData) then FreeAndNil(gCoreData);

end.
