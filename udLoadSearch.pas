unit udLoadSearch;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, kbmMemTable, Grids, DBGrids, SMDBGrid, DB,
  IBODataset;

type
  TdLoadSearch = class(TForm)
    btnCancel: TSpeedButton;
    btnOK: TSpeedButton;
    btnDelete: TSpeedButton;
    dbgInsertSQL: TSMDBGrid;
    qrySavedSearch: TIBOQuery;
    dsSavedSearch: TDataSource;
    mtbSavedSearchSAVED_SEARCH_ID: TStringField;
    mtbSavedSearchDESCRIPTION: TStringField;
    qrySavedSearchCREATED: TDateTimeField;
    mtbSavedSearchCREATED_BY: TStringField;
    qryUsers: TIBOQuery;
    mtbUsersUSER_ID: TStringField;
    mtbUsersDISPLAY_NAME: TStringField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnCancelClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnDeleteClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure mtbSavedSearchCREATED_BYGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    fSavedSearchId : string;
  public
    property SavedSearchID : string read fSavedSearchId write fSavedSearchId;
  end;

  function LoadSearch(var aSavedSearchID : String; aOwner : TComponent) : Boolean;

implementation

uses uuCoreData;

{$R *.dfm}

function LoadSearch(var aSavedSearchID : String; aOwner : TComponent) : Boolean;
var
   lLoadSearch : TdLoadSearch;
begin
   lLoadSearch := TdLoadSearch.Create(aOwner);
   try
      Result := lLoadSearch.ShowModal = mrOK;
      if Result then
         aSavedSearchID := lLoadSearch.SavedSearchID;
   finally
      FreeAndNil(lLoadSearch);
   end;
end;

procedure TdLoadSearch.btnCancelClick(Sender: TObject);
begin
   ModalResult := mrCancel;
end;

procedure TdLoadSearch.btnDeleteClick(Sender: TObject);
var
   lSavedSearchID : string;
   lQry : TIBOQuery;
begin
   if not qrySavedSearch.eof then
   begin
      lSavedSearchID := qrySavedSearch.FieldByName('saved_search_id').AsString;
      lQry := TIBOQuery.Create(nil);
      lQry.IB_Connection := CoreData.dbUnify;
      lQry.SQL.Add('delete from savedsearchdtl where saved_search_id = ' + QuotedStr(lSavedSearchID));
      try
         lQry.ExecSQL;
         qrySavedSearch.Delete;
      finally
         lQry.Free;
      end;
   end;
end;

procedure TdLoadSearch.btnOKClick(Sender: TObject);
begin
   SavedSearchID := qrySavedSearch.FieldByName('saved_search_id').AsString;
   ModalResult := mrOk;
end;

procedure TdLoadSearch.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   qrySavedSearch.Close;
   qryUsers.Close;
   inherited;
end;

procedure TdLoadSearch.FormCreate(Sender: TObject);
begin
   qryUsers.Open;
end;

procedure TdLoadSearch.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_ESCAPE then
      Close;
end;

procedure TdLoadSearch.FormShow(Sender: TObject);
begin
   inherited;
   qrySavedSearch.Open;
end;

procedure TdLoadSearch.mtbSavedSearchCREATED_BYGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
   if qryUsers.Locate('user_id', Sender.AsString, []) then
      Text := qryUsers.FieldByName('display_name').AsString;
end;

end.
