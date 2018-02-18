unit udKeywords;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, kbmMemTable, ComCtrls;

type
  TdKeywords = class(TForm)
    lbK: TListBox;
    btnAdd: TButton;
    btnDelete: TButton;
    pbKeywords: TProgressBar;
    procedure FormCreate(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
  private
    fDS : TkbmMemTable;
    procedure AddKeywords;
    procedure PutInEdit;

  public
    property DS : TkbmMemTable read fDS write fDS;
  end;

  procedure AddRemoveKeywords(var aDS : TkbmMemTable; aOwner : TComponent);

implementation

uses
   uuCoreData, DB, uuGlobals;

{$R *.dfm}

procedure AddRemoveKeywords(var aDS : TkbmMemTable; aOwner : TComponent);
var
   lKeywords : TdKeywords;
begin
   lKeywords := TdKeywords.Create(aOwner);
   try
      lKeywords.DS := aDS;
      lKeywords.ShowModal;
   finally
      FreeAndNil(lKeywords);
   end;
end;

procedure TdKeywords.AddKeywords;
var
   lQry : TIDQuery;
begin
   lbK.Sorted := True;
   lbK.Items.Clear;
   //Get all keywords and fill up the listbox
   lQry := TIDQuery.Create(nil);
   try
      lQry.SQL.Add('select description from keyword order by description');
      lQry.Open;
      while not lQry.eof do
      begin
         lbK.Items.Add(lQry.FieldByName('description').AsString);
         lQry.Next;
      end;
   finally
      lQry.Close;
      lQry.Free;
      if lbK.Items.Count <> 0 then
         lbK.Selected[0] := True;
   end;
end;

procedure TdKeywords.PutInEdit;
begin
   if not (fDS.State in [dsEdit]) then
      fDS.Edit;
end;

procedure TdKeywords.FormCreate(Sender: TObject);
begin
   AddKeywords;
end;

procedure TdKeywords.btnAddClick(Sender: TObject);
var
   lBookMark : TBookmarkStr;
   lKeywordSelected : string;
   lContactKeywords : string;
   lKeywordsAdded : Integer;
   lMessageStr : string;

   procedure AddKeywordToContact;
   begin
      lContactKeywords := fDS.FieldByName('keywords').AsString;
      if AnsiPos(KEYWORD_DELIMITER + lKeywordSelected + KEYWORD_DELIMITER, lContactKeywords) = 0 then
      begin
         PutInEdit;
         if lContactKeywords = '' then
            fDS.FieldByName('keywords').AsString := KEYWORD_DELIMITER + lKeywordSelected + KEYWORD_DELIMITER
         else
            fDS.FieldByName('keywords').AsString := fDS.FieldByName('keywords').AsString + lKeywordSelected + KEYWORD_DELIMITER;
         fDS.Post;
         Inc(lKeywordsAdded);
      end;
   end;
begin
   //Check if keyword is active
   lKeywordSelected := lbK.Items[lbK.ItemIndex];
   lKeywordsAdded := 0;

   fDS.DisableControls;
   lBookMark := fDS.Bookmark;
   try
      pbKeywords.Position := 0;
      pbKeywords.Max := fDS.RecordCount;
      fDS.First;
      while not fDS.eof do
      begin
         if fDS.FieldByName('selected').AsBoolean then
         begin
            AddKeywordToContact;
         end;
         fDS.Next;
         pbKeywords.StepBy(1);
         Application.ProcessMessages;
      end;

      //Show statistics
      lMessageStr := 'The keyword ' + lKeywordSelected + ' has been added to ' + IntToStr(lKeywordsAdded) + ' contacts.';
      ShowMessage(lMessageStr);
      ModalResult := mrOk;
   finally
      fDS.Bookmark := lBookMark;
      fDS.EnableControls;
      pbKeywords.Position := 0;
   end;
end;

procedure TdKeywords.btnDeleteClick(Sender: TObject);
var
   lBookMark : TBookmarkStr;
   lKeywordSelected : string;
   lContactKeywords : string;
   lKeywordsRemoved : Integer;
   lMessageStr : string;

   procedure RemoveKeywordFromContact;
   var
      I : Integer;
      lNewContactKeywords : string;
      lKeywords : TStringList;
   begin
      lContactKeywords := fDS.FieldByName('keywords').AsString;
      if AnsiPos(KEYWORD_DELIMITER + lKeywordSelected + KEYWORD_DELIMITER, lContactKeywords) <> 0 then
      begin
         PutInEdit;
         if lContactKeywords = KEYWORD_DELIMITER + lKeywordSelected + KEYWORD_DELIMITER then
            fDS.FieldByName('keywords').AsString := ''
         else
         begin
            //This means the selected keyword is there and needs to be removed
            //and it is not the only keyword present.

            lNewContactKeywords := '';
            lKeywords := TStringList.Create;
            try
               SplitSQL(lKeywords, lContactKeywords, KEYWORD_DELIMITER, True);
               if lKeywords.Count <> 0 then
                  lNewContactKeywords := KEYWORD_DELIMITER;
               for I := 0 to lKeywords.Count - 1 do
               begin
                  if lKeywords[I] <> lKeywordSelected then
                     lNewContactKeywords := lNewContactKeywords + lKeywords[I] + KEYWORD_DELIMITER;
               end;
               fDS.FieldByName('keywords').AsString := lNewContactKeywords;
            finally
               FreeAndNil(lKeywords);
            end;
         end;
         fDS.Post;
         Inc(lKeywordsRemoved);
      end;
   end;
begin
   //Check if keyword is active
   lKeywordSelected := lbK.Items[lbK.ItemIndex];
   lKeywordsRemoved := 0;

   fDS.DisableControls;
   lBookMark := fDS.Bookmark;
   try
      pbKeywords.Position := 0;
      pbKeywords.Max := fDS.RecordCount;
      fDS.First;
      while not fDS.eof do
      begin
         if fDS.FieldByName('selected').AsBoolean then
         begin
            RemoveKeywordFromContact;
         end;
         fDS.Next;
         pbKeywords.StepBy(1);
         Application.ProcessMessages;
      end;

      //Show statistics
      lMessageStr := 'The keyword ' + lKeywordSelected + ' has been removed from ' + IntToStr(lKeywordsRemoved) + ' contacts.';
      ShowMessage(lMessageStr);
      ModalResult := mrOk;
   finally
      fDS.Bookmark := lBookMark;
      fDS.EnableControls;
      pbKeywords.Position := 0;
   end;
end;

end.
