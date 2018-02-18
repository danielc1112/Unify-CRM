unit udOrderBy;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, kbmMemTable, SMDBGrid;

type
  TdOrderBy = class(TForm)
    edtFirst: TComboBox;
    edtSecond: TComboBox;
    edtThird: TComboBox;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    btnOK: TSpeedButton;
    btnCancel: TSpeedButton;
    edtOrder: TComboBox;
    procedure btnOKClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    fDS : TkbmMemTable;
    fGrid : TSMDBGrid;
  public
    property DS : TkbmMemTable read fDS write fDS;
    property Grid : TSMDBGrid read fGrid write fGrid;
  end;

  procedure OrderBy(aDS : TkbmMemTable; aGrid : TSMDBGrid; aOwner : TComponent);

implementation

{$R *.dfm}

procedure OrderBy(aDS : TkbmMemTable; aGrid : TSMDBGrid; aOwner : TComponent);
var
   lOrderBy : TdOrderBy;
begin
   lOrderBy := TdOrderBy.Create(aOwner);
   try
      lOrderBy.DS := aDS;
      lOrderBy.Grid := aGrid;
      lOrderBy.ShowModal;
   finally
      FreeAndNil(lOrderBy);
   end;
end;

procedure TdOrderBy.btnCancelClick(Sender: TObject);
begin
   ModalResult := mrCancel;
end;

procedure TdOrderBy.btnOKClick(Sender: TObject);
var
   lFieldNames : string;
   lNotFirst : Boolean;

   procedure AddColon;
   begin
      if lNotFirst then
         lFieldNames := lFieldNames + ':';
      lNotFirst := True;
   end;
begin
   lNotFirst := False;
   lFieldNames := '';
//IndexDef := IndexDefs.AddIndexDef;
//IndexDef.Name := 'yourUniqueName';
//IndexDef.Fields := 'yourFieldName';
//IndexDef.Options := [ixCaseInsensitive, ixDescending];
//yourTkbmMemTable.Indexes.Add(IndexDef);

   if edtFirst.Text <> '' then
   begin
      AddColon;
      lFieldNames := lFieldNames + edtFirst.Text;
   end
   else if edtSecond.Text <> '' then
   begin
      AddColon;
      lFieldNames := lFieldNames + edtSecond.Text;
   end
   else if edtThird.Text <> '' then
   begin
      AddColon;
      lFieldNames := lFieldNames + edtThird.Text;
   end;

   if edtOrder.Text = 'Ascending' then
      fDS.SortOn(lFieldNames, [])
   else if edtOrder.Text = 'Descending' then
      fDS.SortOn(lFieldNames, [mtcoDescending]);
   ModalResult := mrOk;
end;

procedure TdOrderBy.FormShow(Sender: TObject);
var
   I : Integer;
begin
   edtFirst.Items.Clear;
   edtSecond.Items.Clear;
   edtThird.Items.Clear;

   //Fill dropdowns with field names from grid
   for I := 0 to Grid.Columns.Count - 1 do
   begin
      edtFirst.Items.Add(Grid.Columns[I].FieldName);
      edtSecond.Items.Add(Grid.Columns[I].FieldName);
      edtThird.Items.Add(Grid.Columns[I].FieldName);
   end;
end;

end.
