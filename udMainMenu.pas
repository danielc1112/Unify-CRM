unit udMainMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, udBase, ComCtrls, StdCtrls, ToolWin, JvExComCtrls, JvToolBar,
  udBaseProgram, Buttons;

type
  TdMainMenu = class(TdBaseScreen)
    lbMenu: TListBox;
    btnChangeUser: TSpeedButton;
    mmoProgDesc: TMemo;
    btnRun: TSpeedButton;
    procedure lbMenuDblClick(Sender: TObject);
    procedure btnChangeUserClick(Sender: TObject);
    procedure lbMenuClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnRunClick(Sender: TObject);
  private
    procedure RunProgram(aProgName: String);
  public

  end;

var
  dMainMenu: TdMainMenu;

implementation

uses
   uuCoreData, udContacts, udBranches, udReports, udUserLogon, uuGlobals, udUsers,
   udConfiguration, udBackup, IB_Session;
{$R *.dfm}

const
   CONTACTS      = 'Contacts';
   BRANCHES      = 'Branches';
   USERS         = 'Users';
   CONFIGURATION = 'Configuration';
   REPORTS       = 'Reports';
   BACKUP        = 'Backup';
   USERCHANGE    = 'UserChange';

procedure TdMainMenu.btnRunClick(Sender: TObject);
begin
  inherited;
  RunProgram(lbMenu.Items[lbMenu.ItemIndex]);
end;

procedure TdMainMenu.btnChangeUserClick(Sender: TObject);
begin
   inherited;
   RunProgram(USERCHANGE);
   UpdateStatus;
end;

procedure TdMainMenu.FormShow(Sender: TObject);
begin
   try
      CoreData.Init;
      RunProgram(USERCHANGE);
      if CoreData.UserID = '' then
         Close;
      UpdateStatus;
      lbMenu.Items.Clear;
      lbMenu.Items.Add(CONTACTS);
      lbMenu.Items.Add(BRANCHES);
      lbMenu.Items.Add(USERS);
      lbMenu.Items.Add(REPORTS);
      lbMenu.Items.Add(CONFIGURATION);
      lbMenu.Items.Add(BACKUP);
      gWin7 := CheckWin32Version(6,1); //Windows 7 or higher
      inherited;
      lbMenu.ItemIndex := 0;
      lbMenuClick(Self);
   except
      Close;
   end;
end;

procedure TdMainMenu.lbMenuClick(Sender: TObject);
var
   lProg : string;
begin
   inherited;
   lProg := lbMenu.Items[lbMenu.ItemIndex];
   with mmoProgDesc.Lines do
   begin
      Clear;
      if lProg = CONTACTS then
      begin
         mmoProgDesc.Lines.Add('-Create, Edit, Delete Contacts');
         mmoProgDesc.Lines.Add('-Import/Export Contacts');
         mmoProgDesc.Lines.Add('-Order Contacts By Fields');
         mmoProgDesc.Lines.Add('-Bulk Replace Field Values');
         mmoProgDesc.Lines.Add('-Online Email Verfication & Partial Address Validation');
         mmoProgDesc.Lines.Add('-Partial Address Validation');
      end
      else if lProg = BRANCHES then
      begin
         mmoProgDesc.Lines.Add('-Create, Edit, Delete Branches');
         mmoProgDesc.Lines.Add('-Import/Export Branches');
      end
      else if lProg = USERS then
      begin
         mmoProgDesc.Lines.Add('-Create, Edit, Delete Users');
         mmoProgDesc.Lines.Add('-Import/Export Users');
      end
      else if lProg = REPORTS then
      begin
         mmoProgDesc.Lines.Add('-User History Report');
         mmoProgDesc.Lines.Add('-Contacts by Suburb Report');
         mmoProgDesc.Lines.Add('-Group Contacts Report');
      end
      else if lProg = CONFIGURATION then
      begin
         mmoProgDesc.Lines.Add('-General Settings');
         mmoProgDesc.Lines.Add('-Create/Edit/Delete/Import/Export:');
         mmoProgDesc.Lines.Add('User Levels');
         mmoProgDesc.Lines.Add('Program Access');
         mmoProgDesc.Lines.Add('Keywords');
         mmoProgDesc.Lines.Add('Contact Fields');
         mmoProgDesc.Lines.Add('Postcodes');
         mmoProgDesc.Lines.Add('Email Domains');
         mmoProgDesc.Lines.Add('Items');
      end
      else if lProg = BACKUP then
      begin
         mmoProgDesc.Lines.Add('-Backup the database into a .fbk file, to be restored later');
         mmoProgDesc.Lines.Add('using IBOConsole');
      end;
   end;
end;

procedure TdMainMenu.lbMenuDblClick(Sender: TObject);
begin
   inherited;
   RunProgram(lbMenu.Items[lbMenu.ItemIndex]);
end;

procedure TdMainMenu.RunProgram(aProgName : String);
var
   lProg : TForm;
begin
   lProg := nil;
   if aProgName = CONTACTS then
   begin
      if CheckUserLogin('dContacts', A_VIEW) then
         lProg := TdContacts.Create(nil);
   end
   else if aProgName = BRANCHES then
   begin
      if CheckUserLogin('dBranches', A_VIEW) then
         lProg := TdBranches.Create(nil);
   end
   else if aProgName = USERS then
   begin
      if CheckUserLogin('dUsers', A_VIEW) then
         lProg := TdUsers.Create(nil);
   end
   else if aProgName = REPORTS then
   begin
      if CheckUserLogin('dReports', A_VIEW) then
         lProg := TdReports.Create(nil);
   end
   else if aProgName = CONFIGURATION then
   begin
      if CheckUserLogin('dConfiguration', A_VIEW) then
         lProg := TdConfiguration.Create(nil);
   end
   else if aProgName = BACKUP then
   begin
      if CheckUserLogin('dBackup', A_VIEW) then
         lProg := TdBackup.Create(nil);
   end   
   else if aProgName = USERCHANGE then
   begin
      lProg := TdUserLogon.Create(nil);
   end;

   if Assigned(lProg) then
   begin
      try
         lProg.ShowModal;
      finally
         FreeAndNil(lProg);
      end;
   end;
end;

end.
