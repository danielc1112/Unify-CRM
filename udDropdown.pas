unit udDropdown;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, SMDBGrid, DB, kbmMemTable, DBCtrls, StdCtrls;

type
  TComboRec = class(TObject)
  public
    Value: string;
    Desc: string;
    MaxWidth : Integer;
  end;

  TdDropdown = class(TForm)
    dbgDropdown: TSMDBGrid;
    mtb1: TkbmMemTable;
    ds1: TDataSource;
    mtb1Value: TStringField;
    mtb1desc: TStringField;
    procedure dbgDropdownCellClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    fIndex : Integer;
    fDBCB : TDBComboBox;
    fCB : TComboBox;
  public
    property ChosenIndex : Integer read fIndex write fIndex;
    property DBCB : TDBComboBox read fDBCB write fDBCB;
    property CB : TComboBox read fCB write fCB;
  end;

  function ShowDropdown(aParent : TWinControl; var aCB : TDBComboBox; var aIndex : Integer; aCaption : String) : Boolean; overload;
  function ShowDropdown(aParent : TWinControl; var aCB : TComboBox; var aIndex : Integer; aCaption : String) : Boolean; overload;

implementation

{$R *.dfm}

function ShowDropdown(aParent : TWinControl; var aCB : TDBComboBox; var aIndex : Integer; aCaption : String) : Boolean;
var
   ldDropdown : TdDropdown;
begin
   ldDropdown := TdDropdown.Create(aParent);
   ldDropdown.Caption := aCaption;
   ldDropdown.DBCB := aCB;
   ldDropdown.ChosenIndex := aIndex;
   try
      Result := ldDropdown.ShowModal = mrOK;
      aIndex := ldDropdown.ChosenIndex;
   finally
      FreeAndNil(ldDropdown);
   end;
end;

function ShowDropdown(aParent : TWinControl; var aCB : TComboBox; var aIndex : Integer; aCaption : String) : Boolean;
var
   ldDropdown : TdDropdown;
begin
   ldDropdown := TdDropdown.Create(aParent);
   ldDropdown.Caption := aCaption;
   ldDropdown.CB := aCB;
   ldDropdown.ChosenIndex := aIndex;
   try
      Result := ldDropdown.ShowModal = mrOK;
      aIndex := ldDropdown.ChosenIndex;
   finally
      FreeAndNil(ldDropdown);
   end;
end;

procedure TdDropdown.FormShow(Sender: TObject);
var
   I : Integer;
begin
   mtb1.Open;
   if Assigned(CB) then
   begin
      for I := 0 to CB.Items.Count - 1 do
      begin
         mtb1.Append;
         mtb1Value.AsString := TComboRec(CB.Items.Objects[I]).Value;
         mtb1Desc.AsString  := TComboRec(CB.Items.Objects[I]).Desc;
         mtb1.Post;
      end;
   end
   else if Assigned(DBCB) then
   begin
      for I := 0 to DBCB.Items.Count - 1 do
      begin
         mtb1.Append;
         mtb1Value.AsString := TComboRec(DBCB.Items.Objects[I]).Value;
         mtb1Desc.AsString  := TComboRec(DBCB.Items.Objects[I]).Desc;
         mtb1.Post;
      end;
   end;     

   Self.Height := 6 + (mtb1.RecordCount + 3)*dbgDropdown.TitleHeight.PixelCount;
   if Self.Height > 600 then
      Self.Height := 600;
   mtb1.RecNo := ChosenIndex + 1;
end;

procedure TdDropdown.dbgDropdownCellClick(Column: TColumn);
begin
   ChosenIndex := mtb1.RecNo - 1;
   ModalResult := mrOK;
end;

procedure TdDropdown.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   mtb1.Close;
end;

procedure TdDropdown.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_ESCAPE then
      Close;
end;

end.
