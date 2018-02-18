unit udNewUser;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, udBaseNew, DB, Buttons, StdCtrls, Mask, DBCtrls, IBODataset;

type
  TdNewUser = class(TdBaseNew)
    edtUserName: TDBEdit;
    lblUserName: TLabel;
    edtPassword: TDBEdit;
    lblPassword: TLabel;
    edtDisplayName: TDBEdit;
    lbl1: TLabel;
    lblUserLevel: TLabel;
    btnContact: TButton;
    lblContact: TLabel;
    cbActive: TCheckBox;
    lblConfirmPassword: TLabel;
    edtConfirmPassword: TEdit;
    qryContact: TIBOQuery;
    qryUserLevel: TIBOQuery;
    mtbUserLeveluser_level_id: TStringField;
    mtbUserLeveldescription: TStringField;
    edtUserLevel: TComboBox;
    procedure FormShow(Sender: TObject);
    procedure btnContactClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure edtPasswordChange(Sender: TObject);
  private
    fLoaded, fPasswordChanged : Boolean;
    procedure AttachDBControls;

  protected
    function ValidateRecord: Boolean; override;
  end;

  procedure ShowUser(aParent : TWinControl; var aDS : TDataSet; aCaption : String);

implementation

uses uuGlobals, udAttachContact;

{$R *.dfm}

procedure ShowUser(aParent : TWinControl; var aDS : TDataSet; aCaption : String);
var
   ldNewUser : TdNewUser;
begin
   ldNewUser := TdNewUser.Create(aParent);
   ldNewUser.Caption := aCaption;
   ldNewUser.DS := aDS;
   try
      ldNewUser.ShowModal;
   finally
      FreeAndNil(ldNewUser);
   end;
end;

procedure TdNewUser.AttachDBControls;
begin
   //field names from user table
   edtUserName.DataField    := 'user_name';
   edtPassword.DataField    := 'password';
   edtDisplayName.DataField := 'display_name';

   edtUserName.DataSource     := dsNew;
   edtPassword.DataSource     := dsNew;
   edtDisplayName.DataSource  := dsNew;

   dsNew.DataSet := DS;
end;

function TdNewUser.ValidateRecord : Boolean;
begin
   Result := False;
   if edtUserName.Text = '' then
      ShowMessage('Username cannot be blank')
   else if edtPassword.Text = '' then
      ShowMessage('Password cannot be blank')
   else if fPasswordChanged and (edtPassword.Text <> edtConfirmPassword.Text) then
      ShowMessage('Confirm Password does not match')
   else
      Result := True;
end;

procedure TdNewUser.btnContactClick(Sender: TObject);
var
   lContactId, lFirst, lLast : string;
begin
   inherited;
   if FindContact(Self, lContactId, lFirst, lLast) then
   begin
      fDS.FieldByName('contact_id').AsString := lContactId;
      lblContact.Caption := lFirst + ' ' + lLast;
   end;
end;

procedure TdNewUser.btnOKClick(Sender: TObject);
begin
  if qryUserLevel.Locate('description', edtUserLevel.Text, []) then
     fDS.FieldByName('user_level_id').AsString := qryUserLevel.FieldByName('user_level_id').AsString;

  if cbActive.Checked then
     fDS.FieldByName('active_ind').AsString := IND_YES
  else
     fDS.FieldByName('active_ind').AsString := IND_NO;
  inherited;
end;

procedure TdNewUser.edtPasswordChange(Sender: TObject);
begin
  inherited;
  if fLoaded then
  begin
     fPasswordChanged := True;
     edtConfirmPassword.Visible := True;
     lblConfirmPassword.Visible := True;
  end;
end;

procedure TdNewUser.FormShow(Sender: TObject);
var
   lFirst, lLast : TField;
begin
   fLoaded := False;
   inherited;
   fPasswordChanged := False;
   edtConfirmPassword.Visible := False;
   AttachDBControls;
   lblContact.Caption := '';


   if fDS.FieldByName('contact_id').AsString <> '' then
   begin
      try
         qryContact.ParamByName('contact_id').AsString := fDS.FieldByName('contact_id').AsString;
         qryContact.Open;
         lFirst := qryContact.FindField('nfirst');
         lLast  := qryContact.FindField('nlast');
         if (Assigned(lFirst) and Assigned(lLast)) then
         begin
            if (not qryContact.eof) then
               lblContact.Caption := lFirst.AsString + ' ' + lLast.AsString;
         end
         else
         begin
            btnContact.Enabled := False;
            lblContact.Caption := '';
         end;
      finally
         qryContact.Close;
      end;
   end;

   cbActive.Checked := fDS.FieldByName('active_ind').AsString = IND_YES;

   //user level dropdown
   qryUserLevel.Open;
   while not qryUserLevel.eof do
   begin
      edtUserLevel.Items.Add(qryUserLevel.FieldByName('DESCRIPTION').AsString);
      qryUserLevel.Next;
   end;

   if qryUserLevel.Locate('user_level_id', fDS.FieldByName('user_level_id').AsString, []) then
      edtUserLevel.Text := qryUserLevel.FieldByName('description').AsString;

   fLoaded := True;
end;

end.
