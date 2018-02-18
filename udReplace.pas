unit udReplace;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, kbmMemTable, StdCtrls, ExtCtrls, SMDBGrid, ComCtrls;

type
  TdReplace = class(TForm)
    btnOK: TSpeedButton;
    btnCancel: TSpeedButton;
    lbFields: TListBox;
    edtOldValue: TLabeledEdit;
    edtNewValue: TLabeledEdit;
    cbCase: TCheckBox;
    cbPartialMatch: TCheckBox;
    pbReplace: TProgressBar;
    procedure btnOKClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    fDS : TkbmMemTable;
    fGrid : TSMDBGrid;
  public
    property DS : TkbmMemTable read fDS write fDS;
    property Grid : TSMDBGrid read fGrid write fGrid;
  end;

  procedure SearchAndReplace(var aDS : TkbmMemTable; aGrid : TSMDBGrid; aOwner : TComponent);

implementation

uses
   DB;

{$R *.dfm}

procedure SearchAndReplace(var aDS : TkbmMemTable; aGrid : TSMDBGrid; aOwner : TComponent);
var
   lReplace : TdReplace;
begin
   lReplace := TdReplace.Create(aOwner);
   try
      lReplace.DS := aDS;
      lReplace.Grid := aGrid;
      lReplace.ShowModal;
   finally
      FreeAndNil(lReplace);
   end;
end;

procedure TdReplace.btnCancelClick(Sender: TObject);
begin
   ModalResult := mrCancel;
end;

procedure TdReplace.btnOKClick(Sender: TObject);
var
   lBookMark : TBookmarkStr;
   lPartial : Boolean;
   lCaseSensitive : Boolean;
   lField : TField;
begin
   if edtOldValue.Text <> edtNewValue.Text then
   begin
      lPartial       := cbPartialMatch.Checked;
      lCaseSensitive := cbCase.Checked;

      fDS.DisableControls;
      lBookMark := fDS.Bookmark;
      try
         pbReplace.Position := 0;
         pbReplace.Max := fDS.RecordCount;
         fDS.First;
         while not fDS.eof do
         begin
            if fDS.FieldByName('selected').AsBoolean then
            begin
               lField := fDS.FieldByName(lbFields.Items[lbFields.ItemIndex]);
               if lCaseSensitive then
               begin
                  if (lPartial and (Pos(edtOldValue.Text, lField.AsString) <> 0))
                  or  (not lPartial and (edtOldValue.Text = lField.AsString)) then
                  begin
                     fDS.Edit;
                     lField.AsString := edtNewValue.Text;
                     fDS.FieldByName(lField.FieldName + '_changed').AsBoolean := True;
                     fDS.Post;
                  end;
               end
               else
               begin
                  if (lPartial and (Pos(UpperCase(edtOldValue.Text), UpperCase(lField.AsString)) <> 0))
                  or  (not lPartial and (UpperCase(edtOldValue.Text) = UpperCase(lField.AsString))) then
                  begin
                     fDS.Edit;
                     lField.AsString := edtNewValue.Text;
                     fDS.FieldByName(lField.FieldName + '_changed').AsBoolean := True;
                     fDS.Post;
                  end;
               end;
            end;
            fDS.Next;
            pbReplace.StepBy(1);
            Application.ProcessMessages;
         end;
         ModalResult := mrOk;
      finally
         fDS.Bookmark := lBookMark;
         fDS.EnableControls;
         pbReplace.Position := 0;
      end;
   end;
end;

procedure TdReplace.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_ESCAPE then
      Close;
end;

procedure TdReplace.FormShow(Sender: TObject);
var
   I : Integer;
   lFieldName : string;
begin
   lbFields.Items.Clear;
   lbFields.Items.BeginUpdate;
   try
      for I := 0 to Grid.Columns.Count - 1 do
      begin
         lFieldName := Grid.Columns[I].FieldName;
         if (UpperCase(lFieldName) <> 'CREATED') and
            (UpperCase(lFieldName) <> 'CREATED_BY') and
            (UpperCase(lFieldName) <> 'UPDATED') and
            (UpperCase(lFieldName) <> 'UPDATED_BY') and
            (UpperCase(lFieldName) <> 'SELECTED') then
         begin
            lbFields.Items.Add(lFieldName);
         end;
      end;
      lbFields.ItemIndex := 0;
   finally
      lbFields.Items.EndUpdate;
   end;
end;

end.
