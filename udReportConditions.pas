unit udReportConditions;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ComCtrls, StdCtrls, ExtCtrls, uuSearchCriteria, DB,
  kbmMemTable, IBODataset;

type
  TdReportConditions = class(TForm)
    cboBranch: TComboBox;
    lbl3: TLabel;
    cbActive: TCheckBox;
    lbFields: TListBox;
    pnlField: TPanel;
    lblFieldValue: TLabel;
    btnClear: TButton;
    gbSearchType: TGroupBox;
    rbExact: TRadioButton;
    rbContains: TRadioButton;
    rbStarts: TRadioButton;
    cbCaseSensitive: TCheckBox;
    rbEnds: TRadioButton;
    gbRange: TGroupBox;
    lbl2: TLabel;
    lbl4: TLabel;
    edtFrom: TEdit;
    edtTo: TEdit;
    dtpTo: TDateTimePicker;
    dtpFrom: TDateTimePicker;
    rbValue: TRadioButton;
    rbRange: TRadioButton;
    edtFieldValue: TEdit;
    cboDFieldValue: TComboBox;
    btnClearSearch: TButton;
    btnLoadSearch: TButton;
    btnSaveSearch: TButton;
    mtbFields: TkbmMemTable;
    mtbFieldsfield_name: TStringField;
    mtbFieldsdisplay_name: TStringField;
    mtbFieldschar_case: TStringField;
    mtbFieldsfield_type: TStringField;
    mtbFieldsfield_value: TStringField;
    mtbFieldsdefault_value: TStringField;
    mtbFieldssearch_type: TStringField;
    mtbFieldscase_sensitive: TBooleanField;
    mtbFieldscan_search: TStringField;
    mtbFieldsrequired: TStringField;
    mtbFieldsfrom: TStringField;
    mtbFieldsto: TStringField;
    mtbFieldsranged: TBooleanField;
    mtbFieldsfromdate: TDateTimeField;
    mtbFieldstodate: TDateTimeField;
    mtbFieldssearched: TBooleanField;
    mtbFieldsvisible: TBooleanField;
    mtbFieldsfsize: TIntegerField;
    qryBranch: TIBOQuery;
    mtbBranchBRANCH_ID: TStringField;
    mtbBranchDESCRIPTION: TStringField;
    mtbBranchACTIVE_IND: TStringField;
    qryUsers: TIBOQuery;
    mtbUsersUSER_ID: TStringField;
    mtbUsersDISPLAY_NAME: TStringField;
    qryContactDropdowns: TIBOQuery;
    mtbContactDropdownsFIELD_NAME: TStringField;
    mtbContactDropdownsDROPDOWN: TStringField;
    btnOk: TButton;
    mtbContactDropdownsDESCRIPTION: TStringField;
    btnDontUseOr: TSpeedButton;
    btnUseOr: TSpeedButton;
    lbKToUseOr: TListBox;
    lbKUsedOr: TListBox;
    lbl5: TLabel;
    lbEKToUseOr: TListBox;
    lbl6: TLabel;
    lbEKUsedOr: TListBox;
    btnEUseOr: TSpeedButton;
    btnEDontUseOr: TSpeedButton;
    lbl7: TLabel;
    lbKToUseAnd: TListBox;
    lbKUsedAnd: TListBox;
    btnUseAnd: TSpeedButton;
    btnDontUseAnd: TSpeedButton;
    lbEKToUseAnd: TListBox;
    btnEUseAnd: TSpeedButton;
    btnEDontUseAnd: TSpeedButton;
    lbEKUsedAnd: TListBox;
    lbl1: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnLoadSearchClick(Sender: TObject);
    procedure btnSaveSearchClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
  private
    fSearch : TSearch;
    fWhereClause : String;
  public
    property WhereClause : String read fWhereClause write fWhereClause;
  end;

procedure ReportConditions(var aWhereClause : String; aOwner : TComponent);

implementation

uses uuGlobals, udSaveSearch, udLoadSearch;

{$R *.dfm}

procedure ReportConditions(var aWhereClause : String; aOwner : TComponent);
var
   lReportConditions : TdReportConditions;
begin
   lReportConditions := TdReportConditions.Create(aOwner);
   try
      lReportConditions.WhereClause := aWhereClause;
      lReportConditions.ShowModal;
      aWhereClause := lReportConditions.WhereClause;
   finally
      FreeAndNil(lReportConditions);
   end;
end;

procedure TdReportConditions.FormShow(Sender: TObject);
begin
   inherited;
   qryBranch.Open;
   qryUsers.Open;
   qryContactDropdowns.Open;

   fSearch := TSearch.Create(Self, mtbFields, lbFields,
     lbKUsedOr, lbEKUsedAnd, lbKToUseOr, lbEKToUseAnd,
     lbKUsedAnd, lbEKUsedOr, lbKToUseAnd, lbEKToUseOr,
     cboBranch, cbActive, qryUsers,
     rbValue, rbRange, rbExact, rbContains, rbStarts, rbEnds,
     cbCaseSensitive, edtFieldValue, cboDFieldValue,
     btnClear, dtpFrom, dtpTo,
     lblFieldValue, gbSearchType, gbRange,
     qryContactDropdowns, edtFrom, edtTo,
     btnClearSearch, qryBranch,
     btnUseOr, btnDontUseOr, btnEUseAnd, btnEDontUseAnd,
     btnUseAnd, btnDontUseAnd, btnEUseOr, btnEDontUseOr);

   fSearch.PopulateFieldsMemoryTable;
end;

procedure TdReportConditions.btnLoadSearchClick(Sender: TObject);
var
   lSavedSearchId : string;
begin
   inherited;
   lSavedSearchId := '';
   LoadSearch(lSavedSearchId, Self);
   if lSavedSearchId <> '' then
   begin
      fSearch.PopulateSearch(lSavedSearchId);
   end;
end;

procedure TdReportConditions.btnOkClick(Sender: TObject);
begin
   fWhereClause := fSearch.AddWhereClause;
   inherited;
end;

procedure TdReportConditions.btnSaveSearchClick(Sender: TObject);
var
   lActive : string;
begin
   inherited;
   if cbActive.State = cbChecked then
      lActive := IND_YES
   else if cbActive.State = cbChecked then
      lActive := IND_NO
   else
      lActive := '';
   SaveSearch(mtbFields, cboBranch.Text, lActive,
      fSearch.GetKeywordsIncludedOr, fSearch.GetKeywordsExcludedAnd,
      fSearch.GetKeywordsIncludedAnd, fSearch.GetKeywordsExcludedOr, Self);
end;

procedure TdReportConditions.FormDestroy(Sender: TObject);
begin
   qryUsers.Close;
   qryBranch.Close;
   qryContactDropdowns.Close;
   if mtbFields.Active then
      mtbFields.Close;
   if Assigned(fSearch) then
      FreeAndNil(fSearch);
   inherited;
end;

end.
