unit udBackup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, udBaseProgram, ComCtrls, Buttons, ExtCtrls, AbBase, AbBrowse,
  AbZBrows, AbZipper, IB_Components, IBOServices, StdCtrls, Mask, JvExMask,
  JvToolEdit, GradPnl;

type
  TdBackup = class(TdBaseProgram)
    btnBackup: TButton;
    lbl1: TLabel;
    lblLastBackup: TLabel;
    lblFolder: TLabel;
    btnFolder: TSpeedButton;
    procedure btnBackupClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnFolderClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
   uuCoreData, ShellAPI, uuGlobals;
{$R *.dfm}

procedure TdBackup.btnBackupClick(Sender: TObject);
var
//   lIBBS : TIBOBackupService;
//   StartInfo: TStartupInfo;
//   ProcInfo: TProcessInformation;
//   procHandle : THandle;
   lCommandToRun : string;
   lYear, lMonth, lDay, lHour, lMin, lSec, lMSec: Word;
   lNow : TDateTime;
   lNowString : string;
begin
   inherited;
   if lblFolder.Caption = '' then
      ShowMessage('Choose a Backup folder first')
   else if DirectoryExists(ExtractFileDir(lblFolder.Caption)) then
   begin
      lNow := Now;
      DecodeDate(lNow, lYear, lMonth, lDay);
      DecodeTime(lNow, lHour, lMin, lSec, lMSec);
      lNowString :=  IntToStr(lDay) + '-' + IntToStr(lMonth) + '-' + IntToStr(lYear) + '-' + IntToStr(lHour) + '-' + IntToStr(lMin) + '-' + IntToStr(lSec);
      if gWin7 then
         lCommandToRun := '/C cd C:\Program Files (x86)\Firebird\Firebird_2_5\bin && '
      else
         lCommandToRun := '/C cd C:\Program Files\Firebird\Firebird_2_5\bin && ';
      lCommandToRun := lCommandToRun + 'gbak -backup -user "' + CoreData.dbUnify.Username + '"';
      lCommandToRun := lCommandToRun + ' -password "' + CoreData.dbUnify.Password + '"';
      lCommandToRun := lCommandToRun + ' "' + CoreData.dbUnify.Path + '" "' + lblFolder.Caption + '\UnifyBackup' + lNowString + '.fbk" -v';
      ShellExecute(0, nil, 'cmd.exe', PChar(lCommandToRun), nil, SW_SHOW);
      gSettings.LastBackup := DateTimeToStr(Now);
      CoreData.SaveSetting('LastBackup', gSettings.LastBackup);
      lblLastBackup.Caption := gSettings.LastBackup;
   end
   else
   begin
      ShowMessage('Backup folder does not exist');
   end;
end;

procedure TdBackup.btnFolderClick(Sender: TObject);
var
   lNotChosen : Boolean;
   lFolder : string;
begin
   inherited;
   lFolder := ChooseFolder(lNotChosen, 'Backup Folder', lblFolder.Caption, Self);
   if not lNotChosen then
   begin
      lblFolder.Caption := lFolder;
      CoreData.SaveSetting('BackupFolder', lblFolder.Caption);
   end;
end;

procedure TdBackup.FormShow(Sender: TObject);
begin
  inherited;
  lblLastBackup.Caption := gSettings.LastBackup;
  lblFolder.Caption := gSettings.BackupFolder;
end;

end.
