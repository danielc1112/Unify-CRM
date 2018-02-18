unit udFieldOption;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, udBaseNew, DB, Buttons, StdCtrls, Mask, DBCtrls, ExtCtrls, IBODataset,
  Spin;

type
  TdFieldOption = class(TdBaseNew)
    lblFieldName: TLabel;
    lblDisplayName: TLabel;
    edtFieldName: TDBEdit;
    edtdisplayname: TDBEdit;
    cbCanSearch: TCheckBox;
    cbRequired: TCheckBox;
    edtDefaultValue: TDBEdit;
    lbl1: TLabel;
    edtSize: TSpinEdit;
    lbl2: TLabel;
    pnlType: TPanel;
    rbFreeField: TRadioButton;
    rbDropdown: TRadioButton;
    rbDateTime: TRadioButton;
    rbNumber: TRadioButton;
    pnlCase: TPanel;
    rbCapitalised: TRadioButton;
    rbUppercase: TRadioButton;
    rbLowercase: TRadioButton;
    rbUnCapitalised: TRadioButton;
    procedure FormShow(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure edtFieldNameKeyPress(Sender: TObject; var Key: Char);
    procedure rbFreeFieldClick(Sender: TObject);
    procedure rbDropdownClick(Sender: TObject);
    procedure rbDateTimeClick(Sender: TObject);
    procedure rbNumberClick(Sender: TObject);
    procedure rbCapitalisedClick(Sender: TObject);
    procedure rbUppercaseClick(Sender: TObject);
    procedure rbLowercaseClick(Sender: TObject);
    procedure rbUnCapitalisedClick(Sender: TObject);
  private
    procedure Setup;
    function IsFieldNameValid(const Key: Char): Char;
    { Private declarations }
  public
    { Public declarations }
  end;

  function ShowFieldOptions(aDS : TDataSet; aOwner : TComponent; aCaption : String) : Boolean;

implementation

uses uuGlobals;

{$R *.dfm}

function ShowFieldOptions(aDS : TDataSet; aOwner : TComponent; aCaption : String) : Boolean;
var
   lFieldOption : TdFieldOption;
begin
   lFieldOption := TdFieldOption.Create(aOwner);
   try
      lFieldOption.Caption := aCaption;
      lFieldOption.DS := aDS;
      Result := lFieldOption.ShowModal = mrOK;
   finally
      FreeAndNil(lFieldOption);
   end;
end;

function TdFieldOption.IsFieldNameValid(const Key: Char) : Char;
begin
   //#8 is BACKSPACE
   if not (IsCharAlphaNumeric(Key) or (Key in ['_']) or (Key = #8)) then
      Result := #0
   else
      Result := Key;
end;

procedure TdFieldOption.btnOKClick(Sender: TObject);
begin
   if Trim(edtFieldName.Text) = '' then
   begin
      ShowMessage('Field name is blank');
      Exit;
   end;
   if Trim(edtDisplayName.Text) = '' then
   begin
      ShowMessage('Display name is blank');
      Exit;
   end;

   if rbFreeField.Checked then
      fDS.FieldByName('field_type').AsString := FIELD_TYPE_FREE
   else if rbDropdown.Checked then
      fDS.FieldByName('field_type').AsString := FIELD_TYPE_DROPDOWN
   else if rbDatetime.Checked then
      fDS.FieldByName('field_type').AsString := FIELD_TYPE_DATETIME
   else if rbNumber.Checked then
      fDS.FieldByName('field_type').AsString := FIELD_TYPE_NUMBER;

   if rbCapitalised.Checked then
      fDS.FieldByName('char_case').AsString := CHAR_CAPITALISED
   else if rbUppercase.Checked then
      fDS.FieldByName('char_case').AsString := CHAR_UPPERCASE
   else if rbLowercase.Checked then
      fDS.FieldByName('char_case').AsString := CHAR_LOWERCASE
   else if rbUnCapitalised.Checked then
      fDS.FieldByName('char_case').AsString := CHAR_UNCAPITALISED;

   if cbCanSearch.Checked then
      fDS.FieldByName('can_search').AsString := IND_YES
   else
      fDS.FieldByName('can_search').AsString := IND_NO;

   if cbRequired.Checked then
      fDS.FieldByName('required').AsString := IND_YES
   else
      fDS.FieldByName('required').AsString := IND_NO;

   fDS.FieldByName('fsize').AsInteger := StrToInt(edtSize.Text);

   inherited;
end;

procedure TdFieldOption.edtFieldNameKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := IsFieldNameValid(Key);
end;

procedure TdFieldOption.FormShow(Sender: TObject);
begin
   inherited;
   dsNew.DataSet := fDS;
   Setup;
   if not (fDS.State in [dsInsert, dsEdit]) then
      fDS.Edit;
end;

procedure TdFieldOption.rbCapitalisedClick(Sender: TObject);
begin
   inherited;
   rbUppercase.Checked := False;
   rbLowercase.Checked := False;
   rbUnCapitalised.Checked   := False;
end;

procedure TdFieldOption.rbDateTimeClick(Sender: TObject);
begin
   inherited;
   rbFreeField.Checked := False;
   rbDropdown.Checked := False;
   rbNumber.Checked   := False;

   edtDefaultValue.Enabled := False;
   pnlCase.Enabled          := False;
end;

procedure TdFieldOption.rbDropdownClick(Sender: TObject);
begin
   inherited;
   rbFreeField.Checked := False;
   rbDateTime.Checked := False;
   rbNumber.Checked   := False;

   edtDefaultValue.Enabled := True;
   pnlCase.Enabled          := True;
end;

procedure TdFieldOption.rbFreeFieldClick(Sender: TObject);
begin
   inherited;
   rbDropdown.Checked := False;
   rbDateTime.Checked := False;
   rbNumber.Checked   := False;

   edtDefaultValue.Enabled := True;
   pnlCase.Enabled          := True;
end;

procedure TdFieldOption.rbLowercaseClick(Sender: TObject);
begin
   inherited;
   rbCapitalised.Checked := False;
   rbUppercase.Checked := False;
   rbUnCapitalised.Checked   := False;
end;

procedure TdFieldOption.rbNumberClick(Sender: TObject);
begin
   inherited;
   rbFreeField.Checked  := False;
   rbDropdown.Checked   := False;
   rbDatetime.Checked   := False;

   edtDefaultValue.Enabled := False;
   pnlCase.Enabled          := False;
end;

procedure TdFieldOption.rbUnCapitalisedClick(Sender: TObject);
begin
   inherited;
   rbCapitalised.Checked := False;
   rbUppercase.Checked   := False;
   rbLowercase.Checked   := False;
end;

procedure TdFieldOption.rbUppercaseClick(Sender: TObject);
begin
   inherited;
   rbCapitalised.Checked     := False;
   rbLowercase.Checked       := False;
   rbUnCapitalised.Checked   := False;
end;

procedure TdFieldOption.Setup;
var
   lFieldType : string;
   lFieldCase : string;
begin
   lFieldType := fDS.FieldByName('field_type').AsString;
   if lFieldType = FIELD_TYPE_FREE then
      rbFreeField.Checked := True
   else if lFieldType = FIELD_TYPE_DROPDOWN then
      rbDropdown.Checked := True
   else if lFieldType = FIELD_TYPE_DATETIME then
      rbDatetime.Checked := True
   else if lFieldType = FIELD_TYPE_NUMBER then
      rbNumber.Checked := True;

   lFieldCase := fDS.FieldByName('char_case').AsString;
   if lFieldCase = CHAR_CAPITALISED then
      rbCapitalised.Checked := True
   else if lFieldCase = CHAR_UPPERCASE then
      rbUppercase.Checked := True
   else if lFieldCase = CHAR_LOWERCASE then
      rbLowercase.Checked := True
   else if lFieldCase = CHAR_UNCAPITALISED then
      rbUnCapitalised.Checked := True;

   cbCanSearch.Checked := fDS.FieldByName('can_search').AsString = IND_YES;
   cbRequired.Checked  := fDS.FieldByName('required').AsString = IND_YES;

   edtSize.Text := IntToStr(fDS.FieldByName('fsize').AsInteger);

   if Caption = 'Edit Field' then
   begin
      edtFieldName.Enabled := False;
      pnlType.Enabled := False;
      edtSize.Enabled := False;
   end;
end;

end.
