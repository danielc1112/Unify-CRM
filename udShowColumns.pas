unit udShowColumns;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, SMDBGrid, Buttons, StdCtrls, kbmMemTable, DB,
  IBODataset;

type
  TdShowColumns = class(TForm)
    dbgColumns: TSMDBGrid;
    btnSelectAll: TButton;
    btnUnSelectAll: TButton;
    btnOK: TSpeedButton;
    dsColumns: TDataSource;
    qryContactFields: TIBOQuery;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure btnSelectAllClick(Sender: TObject);
    procedure btnUnSelectAllClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnOKClick(Sender: TObject);
  private
    fDS : TkbmMemTable;
    fGrid : TSMDBGrid;
    procedure AllSelect(aSelect: Boolean);
    procedure SetFieldVisible(aDisplayName, aVisible: String);
  public
    property DS : TkbmMemTable read fDS write fDS;
    property Grid : TSMDBGrid read fGrid write fGrid;

  end;

procedure ShowColumns(var aDS : TkbmMemTable; aGrid : TSMDBGrid; aOwner : TComponent);

implementation

uses uuGlobals, uuCoreData;

{$R *.dfm}

procedure ShowColumns(var aDS : TkbmMemTable; aGrid : TSMDBGrid; aOwner : TComponent);
var
   lShowColumns : TdShowColumns;
begin
   lShowColumns := TdShowColumns.Create(aOwner);
   try
      lShowColumns.DS := aDS;
      lShowColumns.Grid := aGrid;
      lShowColumns.ShowModal;
   finally
      FreeAndNil(lShowColumns);
   end;
end;

procedure TdShowColumns.AllSelect(aSelect : Boolean);
var
   lBookMark : TBookMarkStr;
begin
   DS.DisableControls;
   lBookMark := DS.Bookmark;
   try
      DS.First;
      while not DS.eof do
      begin
         DS.Edit;
         DS.FieldByName('visible').AsBoolean := aSelect;
         DS.Post;
         DS.Next;
      end;
   finally
      DS.Bookmark := lBookMark;
      DS.EnableControls;
   end;
end;

procedure TdShowColumns.btnOKClick(Sender: TObject);
begin
   if DS.State in [dsEdit] then
      DS.Post;
   ModalResult := mrOk;
end;

procedure TdShowColumns.btnSelectAllClick(Sender: TObject);
begin
   AllSelect(True);
end;

procedure TdShowColumns.btnUnSelectAllClick(Sender: TObject);
begin
   AllSelect(False);
end;

procedure TdShowColumns.FormClose(Sender: TObject; var Action: TCloseAction);
var
   I : Integer;
begin
   for I := 0 to Grid.Columns.Count - 1 do
   begin
      if DS.Locate('display_name', Grid.Columns[I].Title.Caption,[]) then
      begin
         Grid.Columns[I].Visible := DS.FieldByName('visible').AsBoolean;
         SetFieldVisible(Grid.Columns[I].Title.Caption, RegBoolToStr(Grid.Columns[I].Visible));
      end;
   end;   
end;

procedure TdShowColumns.SetFieldVisible(aDisplayName : string; aVisible : String);
begin
   qryContactFields.Open;
   try
      if qryContactFields.Locate('display_name', aDisplayName,[]) then
      begin
         if aVisible <> qryContactFields.FieldByName('visible').AsString then
         begin
            qryContactFields.Edit;
            qryContactFields.FieldByName('visible').AsString := aVisible;
            qryContactFields.Post;
         end;
      end;
   finally
      qryContactFields.Close;
   end;
end;

procedure TdShowColumns.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_ESCAPE then
      Close;
end;

procedure TdShowColumns.FormShow(Sender: TObject);
begin
   dbgColumns.DataSource := dsColumns;
   dsColumns.DataSet := DS;
   DS.First;
end;

end.
