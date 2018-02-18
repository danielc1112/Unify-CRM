unit udSaveSearch;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, kbmMemTable, Buttons, StdCtrls, ExtCtrls;

type
  TdSaveSearch = class(TForm)
    edtSearch: TLabeledEdit;
    btnOK: TSpeedButton;
    btnCancel: TSpeedButton;
    procedure btnCancelClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    procedure Save(aFields: TkbmMemTable; aBranch : string; aActive : string;
       aKeywordsIncludedOr, aKeywordsExcludedAnd : string;
       aKeywordsIncludedAnd, aKeywordsExcludedOr : string);
  public

  end;

procedure SaveSearch(var aFields : TkbmMemTable; aBranch : string; aActive : string;
  aKeywordsIncludedOr, aKeywordsExcludedAnd : string;
  aKeywordsIncludedAnd, aKeywordsExcludedOr : string; aOwner : TComponent);

implementation

uses
   uuCoreData, IBODataset, DB;

{$R *.dfm}

procedure SaveSearch(var aFields : TkbmMemTable; aBranch : string; aActive : string;
   aKeywordsIncludedOr, aKeywordsExcludedAnd : string;
   aKeywordsIncludedAnd, aKeywordsExcludedOr : string; aOwner : TComponent);
var
   lSaveSearch : TdSaveSearch;
begin
   lSaveSearch := TdSaveSearch.Create(aOwner);
   try
      if lSaveSearch.ShowModal = mrOk then
      begin
         lSaveSearch.Save(aFields, aBranch, aActive,
           aKeywordsIncludedOr, aKeywordsExcludedAnd,
           aKeywordsIncludedAnd, aKeywordsExcludedOr);
      end;
   finally
      FreeAndNil(lSaveSearch);
   end;
end;

procedure TdSaveSearch.Save(aFields : TkbmMemTable; aBranch : string; aActive : string;
   aKeywordsIncludedOr, aKeywordsExcludedAnd : string;
   aKeywordsIncludedAnd, aKeywordsExcludedOr : string);
var
   lQryHeader : TIDQuery;
   lQryDtl    : TIBOQuery;
   lSavedSearchId : string;
   lBookMark : TBookmarkStr;
begin
   lQryHeader := TIDQuery.Create(nil, 'SAVEDSEARCH', 'saved_search_id');

   lQryDtl    := TIBOQuery.Create(nil);
   lQryDtl.IB_Connection := CoreData.dbUnify;
   lQryDtl.RequestLive := True;
   lQryDtl.ReadOnly := False;
   lBookMark := aFields.Bookmark;
   try
      lQryHeader.SQL.Add('select * from savedsearch');
      lQryHeader.Open;
      lQryHeader.Append;
      lQryHeader.FieldByName('description').AsString := edtSearch.Text;
      lQryHeader.Post;

      lSavedSearchId := lQryHeader.FieldByName('saved_search_id').AsString;

      lQryDtl.SQL.Add('select * from savedsearchdtl');
      lQryDtl.Open;

      lQryDtl.Append;
      lQryDtl.FieldByName('saved_search_id').AsString  := lSavedSearchId;
      lQryDtl.FieldByName('field_name').AsString  := 'branch_name';
      lQryDtl.FieldByName('field_value').AsString := aBranch;
      lQryDtl.Post;

      lQryDtl.Append;
      lQryDtl.FieldByName('saved_search_id').AsString  := lSavedSearchId;
      lQryDtl.FieldByName('field_name').AsString  := 'active_ind';
      lQryDtl.FieldByName('field_value').AsString := aActive;
      lQryDtl.Post;

      lQryDtl.Append;
      lQryDtl.FieldByName('saved_search_id').AsString  := lSavedSearchId;
      lQryDtl.FieldByName('field_name').AsString  := 'keywords_included_or';
      lQryDtl.FieldByName('field_value').AsString := aKeywordsIncludedOr;
      lQryDtl.Post;

      lQryDtl.Append;
      lQryDtl.FieldByName('saved_search_id').AsString  := lSavedSearchId;
      lQryDtl.FieldByName('field_name').AsString  := 'keywords_excluded_and';
      lQryDtl.FieldByName('field_value').AsString := aKeywordsExcludedAnd;
      lQryDtl.Post;

      lQryDtl.Append;
      lQryDtl.FieldByName('saved_search_id').AsString  := lSavedSearchId;
      lQryDtl.FieldByName('field_name').AsString  := 'keywords_included_and';
      lQryDtl.FieldByName('field_value').AsString := aKeywordsIncludedAnd;
      lQryDtl.Post;

      lQryDtl.Append;
      lQryDtl.FieldByName('saved_search_id').AsString  := lSavedSearchId;
      lQryDtl.FieldByName('field_name').AsString  := 'keywords_excluded_or';
      lQryDtl.FieldByName('field_value').AsString := aKeywordsExcludedOr;
      lQryDtl.Post;

      aFields.First;
      while not aFields.eof do
      begin
         lQryDtl.Append;
         lQryDtl.FieldByName('saved_search_id').AsString := lSavedSearchId;
         lQryDtl.FieldByName('field_name').AsString      := aFields.FieldByName('field_name').AsString;
         lQryDtl.FieldByName('field_value').AsString     := aFields.FieldByName('field_value').AsString;
         lQryDtl.FieldByName('ranged').AsString          := aFields.FieldByName('ranged').AsString;
         lQryDtl.FieldByName('case_sensitive').AsString  := aFields.FieldByName('case_sensitive').AsString;
         lQryDtl.FieldByName('field_type').AsString      := aFields.FieldByName('field_type').AsString;
         lQryDtl.FieldByName('search_type').AsString     := aFields.FieldByName('search_type').AsString;
         lQryDtl.FieldByName('efrom').AsString           := aFields.FieldByName('from').AsString;
         lQryDtl.FieldByName('eto').AsString             := aFields.FieldByName('to').AsString;
         lQryDtl.FieldByName('from_date').AsDateTime     := aFields.FieldByName('fromdate').AsDateTime;
         lQryDtl.FieldByName('to_date').AsDateTime       := aFields.FieldByName('todate').AsDateTime;
         lQryDtl.Post;

         aFields.Next;
      end;
   finally
      lQryDtl.Free;
      lQryHeader.Close;
      lQryHeader.Free;
      aFields.Bookmark := lBookMark;
   end;
end;

procedure TdSaveSearch.btnCancelClick(Sender: TObject);
begin
   ModalResult := mrCancel;
end;

procedure TdSaveSearch.btnOKClick(Sender: TObject);
begin
   if Trim(edtSearch.Text) = '' then
   begin
      ShowMessage('Your saved search must have a description');
      Exit;
   end;
   ModalResult := mrOK;
end;

procedure TdSaveSearch.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_ESCAPE then
      Close;
end;

end.
