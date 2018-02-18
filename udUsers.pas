unit udUsers;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, udBaseEnquiry, DB, Grids, SMDBGrid, ComCtrls, Buttons,
  IBODataset, ExtCtrls, DBGrids, StdCtrls, GradPnl;

type
  TdUsers = class(TdBaseEnquiry)
    qryUserLevel: TIBOQuery;
    qryUserLeveluser_level_id: TStringField;
    qryUserLeveldescription: TStringField;
    dbgUsers: TSMDBGrid;
    qryContact: TIBOQuery;
    qryUsers: TIBOQuery;
    qryUsersUSER_ID: TStringField;
    qryUsersDISPLAY_NAME: TStringField;
    mtbContactCONTACT_ID: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryUSER_LEVEL_IDGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qryUSER_LEVEL_IDSetText(Sender: TField; const Text: string);
    procedure qryCONTACT_IDGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qryUSER_IDGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qryNewRecord(DataSet: TDataSet);
    procedure dbgUsersDblClick(Sender: TObject);
  private
    procedure AddFields;
    procedure AddLookupsToGrid;
  protected
    function CanBeDeleted: Boolean; override;
  end;

implementation

uses uuCoreData, udNewUser, uuGlobals;

{$R *.dfm}

procedure TdUsers.btnNewClick(Sender: TObject);
begin
  inherited;
  ShowUser(Self, TDataSet(fqry), 'New User');
  DetermineControlStatus;
end;

function TdUsers.CanBeDeleted: Boolean;
begin
   Result := True;
end;

procedure TdUsers.dbgUsersDblClick(Sender: TObject);
begin
   inherited;
   btnSaveClick(Self);
   fqry.Edit;
   ShowUser(Self, TDataSet(fqry), 'Edit User');
   DetermineControlStatus;
end;

procedure TdUsers.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  qryUserLevel.Close;
  qryContact.Close;
  qryUsers.Close;
end;

procedure TdUsers.AddFields;
var
   lField : TField;
begin
   (fqry as TIDQuery).SQL.Add('select * from users');

   fqry.FieldDefs.Clear;
   fqry.FieldDefs.Update;

   lField := fqry.FieldByName('user_level_id');
   lField.OnGetText := qryUSER_LEVEL_IDGetText;
   lField.OnSetText := qryUSER_LEVEL_IDSetText;

   lField := fqry.FieldByName('contact_id');
   lField.OnGetText := qryCONTACT_IDGetText;
   lField.ReadOnly := True;

   lField := fqry.FieldByName('created_by');
   lField.OnGetText := qryUSER_IDGetText;
   lField.ReadOnly := True;

   lField := fqry.FieldByName('created');
   lField.ReadOnly := True;

   lField := fqry.FieldByName('updated_by');
   lField.OnGetText := qryUSER_IDGetText;
   lField.ReadOnly := True;

   lField := fqry.FieldByName('updated');
   lField.ReadOnly := True;
end;

procedure TdUsers.FormCreate(Sender: TObject);
begin
   fqry := TIDQuery.Create(nil, 'USERS', 'user_id');

   fGrid := dbgUsers;
   dsEnquiry.DataSet := fqry;
   fGrid.DataSource  := dsEnquiry;
   fGrid.OnDrawColumnCell  := dbgDrawColumnCell;
   inherited;
   fThing := 'User';
   SetHints;
end;

procedure TdUsers.AddLookupsToGrid;
begin
   qryUserLevel.First;
   while not qryUserLevel.eof do
   begin
      fGrid.Columns[3].PickList.Add(qryUserLevel.FieldByName('DESCRIPTION').AsString);
      qryUserLevel.Next;
   end;
   qryUserLevel.First;
end;

procedure TdUsers.qryNewRecord(DataSet: TDataSet);
begin
   fqry.FieldByName('active_ind').AsString := IND_YES;
end;

procedure TdUsers.FormShow(Sender: TObject);
begin
   inherited;
   ColorThePanel(gSettings.ColBGUsers, clBlack);
   qryUserLevel.Open;
   qryContact.Open;
   qryUsers.Open;
   AddFields;
   AddLookupsToGrid;
   (fqry as TIDQuery).OnNewRecord := qryNewRecord;
   (fqry as TIDQuery).Open;
   MaximizeProgram;
   btnDelete.Visible := False;
end;

procedure TdUsers.qryUSER_LEVEL_IDGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
   if qryUserLevel.Locate('user_level_id', Sender.AsString, []) then
      Text := qryUserLevel.FieldByName('description').AsString;
end;

procedure TdUsers.qryUSER_LEVEL_IDSetText(Sender: TField; const Text: string);
begin
   if qryUserLevel.Locate('description', Text, []) then
      Sender.AsString := qryUserLevel.FieldByName('user_level_id').AsString
   else
      Sender.AsString := '';
end;

procedure TdUsers.qryCONTACT_IDGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
   if (Assigned(qryContact.FindField('nfirst')) and Assigned(qryContact.FindField('nlast'))) then
   begin
      if qryContact.Locate('contact_id', Sender.AsString, []) then
         Text := qryContact.FieldByName('nfirst').AsString + ' ' + qryContact.FieldByName('nlast').AsString;
   end
   else
      Text := '';
end;

procedure TdUsers.qryUSER_IDGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
   if qryUsers.Locate('user_id', Sender.AsString, []) then
      Text := qryUsers.FieldByName('display_name').AsString;
end;

end.
