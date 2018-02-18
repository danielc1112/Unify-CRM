unit udNewBranch;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, udBaseNew, Buttons, StdCtrls, DBCtrls, Mask, uuCoreData, DB,
  IBODataset;

type
  TdNewBranch = class(TdBaseNew)
    edtPhone: TDBEdit;
    lblPhone: TLabel;
    lblMobile: TLabel;
    edtMobile: TDBEdit;
    lblEmail: TLabel;
    edtEmail: TDBEdit;
    edtStreet1: TDBEdit;
    lblStreet1: TLabel;
    lblStreet2: TLabel;
    edtStreet2: TDBEdit;
    lblSuburb: TLabel;
    lblPostcode: TLabel;
    edtPostcode: TDBEdit;
    edtState: TDBComboBox;
    lblState: TLabel;
    lblBranchName: TLabel;
    edtBranchName: TDBEdit;
    edtSuburb: TDBComboBox;
    cbActive: TCheckBox;
    procedure FormShow(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
  private
    procedure AttachDBControls;
  public
    { Public declarations }
  end;

  procedure ShowBranch(aParent : TWinControl; var aDS : TDataSet; aCaption : String);

implementation

uses uuPostalFind, uuGlobals;

{$R *.dfm}

procedure ShowBranch(aParent : TWinControl; var aDS : TDataSet; aCaption : String);
var
   ldNewBranch : TdNewBranch;
begin
   ldNewBranch := TdNewBranch.Create(aParent);
   ldNewBranch.Caption := aCaption;
   ldNewBranch.DS := aDS;
   try
      ldNewBranch.ShowModal;
   finally
      FreeAndNil(ldNewBranch);
   end;
end;

procedure TdNewBranch.AttachDBControls;
begin
   //field names from branch table
   edtBranchName.DataField  := 'description';
   edtPhone.DataField       := 'phone';
   edtMobile.DataField      := 'mobile';
   edtEmail.DataField       := 'email';
   edtStreet1.DataField     := 'street1';
   edtStreet2.DataField     := 'street2';
   edtSuburb.DataField      := 'suburb';
   edtPostcode.DataField    := 'postcode';
   edtState.DataField       := 'bstate';

   edtBranchName.DataSource := dsNew;
   edtPhone.DataSource      := dsNew;
   edtMobile.DataSource     := dsNew;
   edtEmail.DataSource      := dsNew;
   edtStreet1.DataSource    := dsNew;
   edtStreet2.DataSource    := dsNew;
   edtSuburb.DataSource     := dsNew;
   edtPostcode.DataSource   := dsNew;
   edtState.DataSource      := dsNew;
      
   dsNew.DataSet := DS;
end;

procedure TdNewBranch.btnOKClick(Sender: TObject);
begin
  fDS.FieldByName('active_ind').AsString := RegBoolToStr(cbActive.Checked);
  inherited;
  CoreData.InsertEmailDomain(fDS.FieldByName('email').AsString);
end;

procedure TdNewBranch.FormShow(Sender: TObject);
var
   lStates, lSuburbs : TStringList;
   lState : string;
   I : Integer;
begin
  inherited;

  AttachDBControls;

  cbActive.Checked := fDS.FieldByName('active_ind').AsString = IND_YES;
  
  //Fill suburb combobox with suburbs
  lSuburbs := TStringList.Create;
  try
     lState := edtState.Text;
     FindAllSuburbs(lSuburbs, lState);
     edtSuburb.Items.Clear;
     for I := 0 to lSuburbs.Count - 1 do
     begin
        edtSuburb.Items.Add(lSuburbs[I]);
     end;
  finally
     FreeAndNil(lSuburbs);
  end;

  //Fill state combobox with states
  lStates := TStringList.Create;
  try
     FillWithStates(lStates);
     edtState.Items.Clear;
     for I := 0 to lStates.Count - 1 do
     begin
        edtState.Items.Add(lStates[I]);
     end;
  finally
     FreeAndNil(lStates);
  end;
end;

end.
