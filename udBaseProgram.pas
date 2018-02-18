unit udBaseProgram;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, udBase, ToolWin, ComCtrls, JvExComCtrls, JvToolBar, uuCoreData,
  Buttons, DB, ExtCtrls, SMDBGrid, StdCtrls, IBODataset, GradPnl;

type
  TdBaseProgram = class(TdBaseScreen)
    btnExit: TSpeedButton;
    pnlProgess: TPanel;
    lblProgress: TLabel;
    grdntpnl1: TGradientPanel;
    procedure btnExitClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
  private

  protected
    procedure ImportIntoQuery(aQry : TDataSet; aGrid : TSMDBGrid; aIEType : string = '');
    procedure ExportQuery(aQry : TDataset; aGrid : TSMDBGrid; aFileName : String; aIEType : string = '');
    procedure ShowProgress(aProgress: String);
    procedure HideProgress;
    procedure MaximizeProgram;
    procedure ColorThePanel(aColorFrom, aColorTo : TColor);
  public
    
  end;

implementation

uses
   uuGlobals, udExport;

{$R *.dfm}

procedure TdBaseProgram.ColorThePanel(aColorFrom, aColorTo : TColor);
begin
   grdntpnl1.ColorFrom := aColorFrom;
   grdntpnl1.ColorTo   := aColorTo;
   grdntpnl1.Direction := TopToBottom;
end;

procedure TdBaseProgram.ShowProgress(aProgress : String);
begin
   lblProgress.Caption := aProgress;
   pnlProgess.Width := 200;
   pnlProgess.Left := Trunc((Self.Width - pnlProgess.Width)/2);
   pnlProgess.Top := Trunc((Self.Height - pnlProgess.Height)/2);
   pnlProgess.Visible := True;
   pnlProgess.BringToFront;
   Application.ProcessMessages;
end;

procedure TdBaseProgram.HideProgress;
begin
   pnlProgess.Visible := False;
   //Application.ProcessMessages;
end;

procedure TdBaseProgram.FormCreate(Sender: TObject);
begin
  inherited;
  //Not sure why this has to be here, access violation if not
end;

procedure TdBaseProgram.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   inherited;
   if Key = VK_ESCAPE then
      Close;
end;

procedure TdBaseProgram.ExportQuery(aQry : TDataset; aGrid : TSMDBGrid; aFileName : String; aIEType : string = '');
var
   lBookMark : TBookMarkStr;
   lExportForm : TdExport;
begin
   if Assigned(aQry) and aQry.Active then
   begin
      lBookMark := aQry.Bookmark;
      aQry.DisableControls;
      lExportForm := TdExport.Create(Self);
      try
         lExportForm.SetUp(aQry, aGrid, aFileName, aIEType);
         lExportForm.ShowModal;
      finally
         FreeAndNil(lExportForm);
         aQry.Bookmark := lBookMark;
         aQry.EnableControls;
      end;
   end;
end;

procedure ShowList(aWords : TStringList);
var
   lStr : string;
   K : Integer;
begin
   lStr := '';
   for K := 0 to aWords.Count - 1 do
      lStr := lStr + aWords[K] + ',' + #13#10;
   ShowMessage(lStr);
end;

procedure TdBaseProgram.ImportIntoQuery(aQry : TDataSet; aGrid : TSMDBGrid; aIEType : string = '');
var
   I, J : Integer;
   lTitles, lWords, lColumns : TStringList;
   lFileNotChosen : Boolean;
   lFileName : String;
   lBookMark : TBookMarkStr;
   lLine : String;
   lImportFile : TextFile;
   lError : string;
   lCreated : Integer;
   lBQry, lKQry : TIDQuery;
   lBranchId : String;
   lSepKeywordMode : Boolean;
   lKeywords : TStringList;
   lIndex : Integer;
   lKWs : string;
   
   procedure GetColumnList;
   var
      K : Integer;
   begin
      lColumns.Clear;
      for K := 0 to aGrid.Columns.Count - 1 do
      begin
         if (UpperCase(aGrid.Columns[K].FieldName) <> 'CREATED') and
            (UpperCase(aGrid.Columns[K].FieldName) <> 'CREATED_BY') and
            (UpperCase(aGrid.Columns[K].FieldName) <> 'UPDATED') and
            (UpperCase(aGrid.Columns[K].FieldName) <> 'UPDATED_BY') and
            (UpperCase(aGrid.Columns[K].FieldName) <> 'SELECTED') then
         begin
            lColumns.Add(UpperCase(aGrid.Columns[K].FieldName));
         end;
      end;
   end;

   procedure IgnoreDBInfo;
   var
      K : Integer;
   begin
      for K := 0 to lTitles.Count - 1 do
      begin
         if (UpperCase(lTitles[K]) = 'CREATED') then
         begin
            lCreated := K - 1;
         end;
      end;
   end;

   procedure RemoveDBInfo(var aList : TStringList);
   begin
      if lCreated <> 0 then
      begin
         aList.Delete(lCreated);
         aList.Delete(lCreated);
         aList.Delete(lCreated);
         aList.Delete(lCreated);
         //ShowList(aList);
      end;
   end;

   function BranchID(aBranchName : String; var aBranchId : String) : Boolean;
   begin
      aBranchId := '';
      if Trim(aBranchName) = '' then
      begin
         aBranchId := '';
         Result := True;
      end
      else if lBQry.Locate('description', aBranchName, []) then
      begin
         aBranchId := lBQry.FieldByName('branch_id').AsString;
         Result := True;
      end
      else
         Result := False;
   end;

   function ValidateTitle : Boolean;
   var
      K : Integer;
      lKeywordsNotFound : string;
   begin
      Result := True;
      if aIEType = 'C' then
      begin
         if (Uppercase(lTitles[lTitles.Count - 1]) = 'KEYWORDS') and ((lTitles.Count - 1) = lColumns.Count) then
         begin
            lSepKeywordMode := False;
         end
         else if lTitles.Count = (lColumns.Count + lKeywords.Count) then
         begin
            lSepKeywordMode := True;
            lKeywordsNotFound := '';
            for K := 0 to lTitles.Count - 1 do
            begin
               if (not lColumns.Find(lTitles[K], lIndex)) and (not lKeywords.Find(lTitles[K], lIndex)) then
               begin
                  if lKeywordsNotFound = '' then
                     lKeywordsNotFound := lTitles[K]
                  else
                     lKeywordsNotFound := lKeywordsNotFound + ',' + lTitles[K];
                  Result := False;
               end;
            end;
            if lKeywordsNotFound <> '' then
               ShowMessage('IMPORT FAILED.' + #13#10 + #13#10 + 'Fields or Keywords not found:' + #13#10 + lKeywordsNotFound);
         end
         else
         begin
            ShowMessage('IMPORT FAILED.' + #13#10 + #13#10 + 'The number of fields do not match');
            Result := False;
         end;
      end
      else if lTitles.Count <> lColumns.Count then
      begin
         ShowMessage('IMPORT FAILED.' + #13#10 + #13#10 + 'The number of fields do not match');
         Result := False;
      end;
   end;

   function ValidateLine(aLine : Integer) : Boolean;
   begin
      Result := True;
      lError := 'IMPORT FAILED.' + #13#10 + #13#10;
      if aIEType = 'C' then //Contact Import
      begin
         if not lSepKeywordMode then
         begin
            if ((lWords.Count - 1) > lColumns.Count) then
            begin
               ShowMessage(lError + 'There are too many commas on line ' + IntToStr(aLine) + #13#10 + #13#10);
               Result := False;
            end
            else if ((lWords.Count - 1) < lColumns.Count) then
            begin
               ShowMessage(lError + 'There are not enough commas on line ' + IntToStr(aLine) + #13#10 + #13#10);
               Result := False;
            end;
         end
         else
         begin
            if lWords.Count > (lColumns.Count + lKeywords.Count) then
            begin
               ShowMessage(lError + 'There are too many commas on line ' + IntToStr(aLine) + #13#10 + #13#10);
               Result := False;
            end
            else if lWords.Count < (lColumns.Count + lKeywords.Count) then
            begin
               ShowMessage(lError + 'There are not enough commas on line ' + IntToStr(aLine) + #13#10 + #13#10);
               Result := False;
            end
         end;
      end
      else if lColumns.Count <> lWords.Count then //Not a contact Import
      begin
         if lColumns.Count < lWords.Count then
            lError := lError + 'There are too many commas on line ' + IntToStr(aLine) + #13#10 + #13#10
         else
            lError := lError + 'There are not enough commas on line ' + IntToStr(aLine) + #13#10 + #13#10;
         lError := lError + 'FieldCount: ' + IntToStr(lColumns.Count) +
           '   CSVFieldCount: ' + IntToStr(lWords.Count);

         ShowMessage(lError);
         Result := False;
      end;
   end;

   procedure AddKeyWord(aKeyword : string; var aKeywords : String);
   begin
      if aKeywords = '' then
         aKeywords := KEYWORD_DELIMITER + aKeyword + KEYWORD_DELIMITER
      else
         aKeywords := aKeywords + aKeyword + KEYWORD_DELIMITER;
   end;

begin
   inherited;
   if Assigned(aQry) then
   begin
      lSepKeywordMode := False;
      lBranchId := '';
      if aIEType = 'C' then
      begin
         lBQry := TIDQuery.Create(nil);
         lBQry.ReadOnly := True;
         lBQry.SQL.Add('select branch_id, description from branch');
         lBQry.Open;

         lKeywords := TStringList.Create;
         lKeywords.Sorted := True;
         lKQry := TIDQuery.Create(nil);
         try
            lKQry.SQL.Add('select description from keyword order by description');
            lKQry.Open;
            while not lKQry.eof do
            begin
               lKeywords.Add(lKQry.FieldByName('description').AsString);
               lKQry.Next;
            end;
         finally
            lKQry.Free;
         end;
      end;

      lWords := TStringList.Create;
      lTitles := TStringList.Create;
      lColumns := TStringList.Create;
      lColumns.Sorted := True;
      lBookMark := aQry.Bookmark;
      GetColumnList;
      aQry.DisableControls;
      I := 1; //line number
      lCreated   := 0;
      lFileName := OpenFile(True, lFileNotChosen, '', '', self);
      try
         if not lFileNotChosen then
         begin
            ShowProgress('Importing...');

            AssignFile(lImportFile, lFileName);
            Reset(lImportFile);
            if aIEType <> 'C' then
               CoreData.DBConnection.StartTransaction;
            try
               lTitles.Clear;
               while not EOF(lImportFile) do
               begin
                  ReadLn(lImportFile, lLine);

                  lWords.Clear;
                  if I = 1 then  //First look at fieldnames on the top
                  begin
                     //check fields match
                     SplitSQL(lTitles, lLine, ',', True);
                     IgnoreDBInfo;
                     RemoveDBInfo(lTitles);
                     //ShowList(lTitles);
                     if not ValidateTitle then
                     begin
                        Abort;
                     end;
                  end
                  else //Now look at each row and make sure the number of words
                  begin
                     SplitSQL(lWords, lLine, ',', True);
                     RemoveDBInfo(lWords);
                     if not ValidateLine(I) then
                     begin
                        Abort;
                     end;

                     //Add this line to the database
                     aQry.Append;
                     for J := 0 to lWords.Count - 1 do
                     begin
                        if UpperCase(lTitles[J]) = 'BRANCH_ID' then
                        begin
                           if BranchID(lWords[J], lBranchId) then
                               aQry.FieldByName('branch_id').AsString := lBranchId
                           else
                           begin
                              lError := 'IMPORT FAILED.' + #13#10 + #13#10;
                              lError := lError + 'Branch name ' + lWords[J] + ' is not defined in the database. Line ' + IntToStr(I);
                              lError := lError + #13#10 + 'Either create the branch or fix the .csv file';
                              ShowMessage(lError);
                              Abort;
                           end;
                        end
                        else if UpperCase(lTitles[J]) = 'ACTIVE_IND' then
                        begin
                            if lWords[J] <> IND_NO then
                            begin
                               if lWords[J] = 'n' then
                                  aQry.FieldByName('active_ind').AsString := IND_NO
                               else
                                  aQry.FieldByName('active_ind').AsString := IND_YES
                            end;
                        end
                        else if (aIEType = 'C') and lSepKeywordMode then
                        begin
                           //Is this a keyword or a field?
                           if lKeywords.Find(lTitles[J], lIndex) then
                           begin
                              //The title is a keyword, so it must be yes, no or empty
                              if (lWords[J] = '') or (UpperCase(lWords[J]) = 'NO') or (UpperCase(lWords[J]) = 'N') then
                              begin
                                 //Do nothing. No keyword to add
                              end
                              else if (UpperCase(lWords[J]) = 'YES') or (UpperCase(lWords[J]) = 'Y') then
                              begin
                                 lKWs := aQry.FieldByName('keywords').AsString;
                                 AddKeyWord(lTitles[J], lKWs);
                                 aQry.FieldByName('keywords').AsString := lKWs;
                              end     
                              else
                              begin
                                 lError := 'IMPORT FAILED.' + #13#10 + #13#10;
                                 lError := lError + 'All keyword column values must be ''Yes'', ''No'' or nothing. Line ' + IntToStr(I);
                                 ShowMessage(lError);
                                 Abort;
                              end;
                           end
                           else
                              aQry.FieldByName(lTitles[J]).AsString := lWords[J];
                        end
                        else
                           aQry.FieldByName(lTitles[J]).AsString := lWords[J];
                     end;
                     aQry.Post;
                  end;
                  I := I + 1; //line number
               end;
               if aIEType <> 'C' then
                  CoreData.DBConnection.Commit;
               CloseFile(lImportFile);
            except
               on E: EAbort do
               begin
                  if aIEType <> 'C' then
                     CoreData.DBConnection.Rollback;
                  CloseFile(lImportFile);
               end;
               on E: Exception do
               begin
                  if aIEType <> 'C' then
                     CoreData.DBConnection.Rollback;
                  CloseFile(lImportFile);
                  ShowMessage(E.Message);
               end;
            end;
         end;
      finally
         FreeAndNil(lTitles);
         FreeAndNil(lWords);
         FreeAndNil(lColumns);
         HideProgress;
         aQry.Bookmark := lBookMark;
         aQry.EnableControls;
         aQry.Refresh;
         if aIEType = 'C' then
         begin
            lBQry.Close;
            lBQry.Free;
            FreeAndNil(lKeywords);
         end;
      end;
   end;
end;

procedure TdBaseProgram.MaximizeProgram;
begin
   //Self.ClientWidth := Screen.Width - 15;
   //Self.ClientHeight := Screen.Height - 120;
   grdntpnl1.Width := Self.ClientWidth;
end;

procedure TdBaseProgram.btnExitClick(Sender: TObject);
begin
   inherited;
   Close;
end;

end.
