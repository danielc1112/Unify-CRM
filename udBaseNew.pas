unit udBaseNew;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, uuCoreData, DB, kbmMemTable, StdCtrls, IBODataset;

type
  TdBaseNew = class(TForm)
    btnOK: TSpeedButton;
    btnCancel: TSpeedButton;
    dsNew: TDataSource;
    lblTitleBy: TLabel;
    lblBy: TLabel;
    qryUsers: TIBOQuery;
    mtbUsersUSER_ID: TStringField;
    mtbUsersDISPLAY_NAME: TStringField;
    procedure btnOKClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure edtKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtKeyPress(Sender: TObject; var Key: Char);
  private
    function GetDisplayName(aUserId: String): string;

  protected
    fDS : TDataset;
    function ValidateRecord : Boolean; virtual;
  property
    DS : TDataset read fDS write fDS;
  end;

implementation

uses uuGlobals;

{$R *.dfm}

function TdBaseNew.ValidateRecord : Boolean;
begin
   Result := True; //override in child dialogs
end;

procedure TdBaseNew.edtKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   inherited;
   if (Key = VK_RETURN) then
   begin
      keybd_event(VK_TAB, 0, 0, 0);
      keybd_event(VK_TAB, 0, KEYEVENTF_KEYUP, 0);
   end;
end;

procedure TdBaseNew.edtKeyPress(Sender: TObject; var Key: Char);
begin
   inherited;
   Key := IsFieldValid(Key);
end;

procedure TdBaseNew.btnOKClick(Sender: TObject);
begin
   if ValidateRecord then
   begin
      fDS.Post;
      ModalResult := mrOk;
   end;
end;

procedure TdBaseNew.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_ESCAPE then
   begin
      fDS.Cancel;
      ModalResult := mrCancel;
   end;
end;

procedure TdBaseNew.FormShow(Sender: TObject);
begin

   if Assigned(fDS) and fDS.Active then
   begin
      qryUsers.Open;
      if fDS.FieldByName('created').AsDateTime < fDS.FieldByName('updated').AsDateTime then
      begin
         lblBy.Caption := GetDisplayName(fDS.FieldByName('updated_by').AsString) + ' ' + fDS.FieldByName('updated').AsString;
         lblTitleBy.Caption := 'Updated By:';
      end
      else
      begin
         lblBy.Caption := GetDisplayName(fDS.FieldByName('created_by').AsString) + ' ' + fDS.FieldByName('created').AsString;
         lblTitleBy.Caption := 'Created By:';
      end;
      qryUsers.Close;
   end;
end;

function TdBaseNew.GetDisplayName(aUserId : String) : string;
begin
   if qryUsers.Locate('user_id', aUserId, []) then
      Result := qryUsers.FieldByName('display_name').AsString;
end;

procedure TdBaseNew.btnCancelClick(Sender: TObject);
begin
   fDS.Cancel;
   ModalResult := mrCancel;
end;

end.
