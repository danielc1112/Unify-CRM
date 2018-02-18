unit udBase;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Grids, DBGrids, SMDBGrid, ToolWin, JvExComCtrls, JvToolBar,
  uuCoreData;

type
  TdBaseScreen = class(TForm)
    sbBase: TStatusBar;
    procedure FormShow(Sender: TObject);
  protected
    procedure UpdateStatus;
    function CheckUserLogin(aProgram: string; aActivity: String): Boolean;
  public
    { Public declarations }
  end;

implementation

uses udUserLogon;

{$R *.dfm}

procedure TdBaseScreen.FormShow(Sender: TObject);
begin
   UpdateStatus;
end;

procedure TdBaseScreen.UpdateStatus;
begin
   sbBase.Panels[0].Text := 'Branch: ' + CoreData.BranchName;
   sbBase.Panels[1].Text := 'User: ' + CoreData.UserDisplayName;
   sbBase.Panels[2].Text := 'User Level: ' + CoreData.UserLevelDesc;
end;

function TdBaseScreen.CheckUserLogin(aProgram : string; aActivity: String) : Boolean;
var
   lUserLogin : TdUserLogon;
   lShowAgain : Boolean;
begin
   Result := CoreData.CheckUserAccess(aProgram, aActivity);
   lShowAgain := not Result;
   while lShowAgain do
   begin
      ShowMessage('Your user level is not high enough');
      lUserLogin := TdUserLogon.Create(nil);
      try
         if lUserLogin.ShowModal = mrOK then
         begin
            Result := CoreData.CheckUserAccess(aProgram, aActivity);
            UpdateStatus;
            lShowAgain := not Result;
         end
         else
            lShowAgain := False;
      finally
         lUserLogin.Free;
      end;
   end;
end;

end.
