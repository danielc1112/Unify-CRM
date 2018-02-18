unit udAttachContact;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, SMDBGrid, DB, IBODataset, Buttons, uuCoreData;

type
  TdAttachContact = class(TForm)
    dbgContact: TSMDBGrid;
    qryContact: TIBOQuery;
    dsContact: TDataSource;
    btnOK: TSpeedButton;
    btnCancel: TSpeedButton;
    mtbContactCONTACT_ID: TStringField;
    mtbContactNFIRST: TStringField;
    mtbContactNLAST: TStringField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnOKClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
  private
    fContactId : string;
    fFirst, fLast : string;
  public
    function SelectedContactId: String;
    function SelectedFirst: String;
    function SelectedLast: String;
    property ContactId : string read fContactId;
    property First : string read fFirst;
    property Last : string read fLast;
  end;

  function FindContact(aParent : TWinControl; var aContactId : String; var aFirst : String; var aLast : String) : Boolean;

implementation

uses uuGlobals;

{$R *.dfm}

function FindContact(aParent : TWinControl; var aContactId : String; var aFirst : String; var aLast : String) : Boolean;
var
   lAttachContact : TdAttachContact;
begin
   lAttachContact := TdAttachContact.Create(aParent);
   try
      Result := (lAttachContact.ShowModal = mrOk);
      if Result then
      begin
         aContactId   := lAttachContact.ContactId;
         aFirst       := lAttachContact.First;
         aLast        := lAttachContact.Last;
      end;
   finally
      FreeAndNil(lAttachContact);
   end;
end;

function TdAttachContact.SelectedContactId : String;
begin
   Result := '';
   if qryContact.Active and (not qryContact.eof) then
      Result := qryContact.FieldByName('contact_id').AsString;
end;

function TdAttachContact.SelectedFirst : String;
begin
   Result := '';
   if qryContact.Active and (not qryContact.eof) then
      Result := qryContact.FieldByName('nfirst').AsString;
end;

function TdAttachContact.SelectedLast : String;
begin
   Result := '';
   if qryContact.Active and (not qryContact.eof) then
      Result := qryContact.FieldByName('nlast').AsString;
end;

procedure TdAttachContact.btnCancelClick(Sender: TObject);
begin
   ModalResult := mrCancel;
end;

procedure TdAttachContact.btnOKClick(Sender: TObject);
begin
   fContactId := SelectedContactId;
   fFirst := SelectedFirst;
   fLast := SelectedLast;
   ModalResult := mrOk;
end;

procedure TdAttachContact.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   qryContact.Close;
end;

procedure TdAttachContact.FormCreate(Sender: TObject);
begin
   qryContact.IB_Connection := CoreData.dbUnify;
   dsContact.DataSet := qryContact;
   dbgContact.DataSource := dsContact;
   dbgContact.GridStyle.FilterColor := gSettings.ColFilter;
end;

procedure TdAttachContact.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_ESCAPE then
      Close;
end;

procedure TdAttachContact.FormShow(Sender: TObject);
begin
   qryContact.Open;
end;

end.
