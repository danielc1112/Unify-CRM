unit uuPostalFind;

interface

uses
   Classes;

procedure FillWithStates(var aItems : TStringList);   
procedure PostalFind(var aSuburb, aPostcode, aState, aArea : String);
procedure FindAllSuburbs(var aSuburbs : TStringList; aState : String);

implementation

uses
  uuCoreData, SysUtils;

procedure FillWithStates(var aItems : TStringList);
begin
   aItems.Add('ACT');
   aItems.Add('VIC');
   aItems.Add('NSW');
   aItems.Add('NT');
   aItems.Add('QLD');
   aItems.Add('SA');
   aItems.Add('TAS');
   aItems.Add('VIC');
   aItems.Add('WA');
end;

procedure FindAllSuburbs(var aSuburbs : TStringList; aState : String);
var
   lQry : TIDQuery;
begin
   lQry := TIDQuery.Create(nil);
   lQry.RequestLive := False;
   lQry.ReadOnly := True;
   try
      lQry.SQL.Add('select suburb from postalfind');
      if aState <> '' then
         lQry.SQL.Add('where pstate = ' + QuotedStr(aState));
      lQry.Open;
      while not lQry.eof do
      begin
         aSuburbs.Add(lQry.FieldByName('suburb').AsString);
         lQry.Next;
      end;
   finally
      lQry.Close;
      FreeAndNil(lQry);
   end;
end;

procedure PostalFind(var aSuburb, aPostcode, aState, aArea : String);
var
   lQry : TIDQuery;

   procedure GrabRecord;
   begin
      if not lQry.FieldByName('postcode').IsNull then
         aPostcode := lQry.FieldByName('postcode').AsString;
      if not lQry.FieldByName('pstate').IsNull then
         aState := lQry.FieldByName('pstate').AsString;
      if not lQry.FieldByName('area').IsNull then
         aArea := lQry.FieldByName('area').AsString;
   end;
begin
   if (aSuburb <> '') and (aPostcode = '') then
   begin
      lQry := TIDQuery.Create(nil);
      lQry.RequestLive := False;
      lQry.ReadOnly := True;
      try
         //If there are more than one suburb, prefer teh one with the branch state if possible


         lQry.SQL.Add('select postcode, pstate, area from postalfind where suburb = ' + QuotedStr(aSuburb));
         lQry.Open;
         lQry.First;
         while not lQry.eof do
         begin
            if not lQry.FieldByName('postcode').IsNull then
               aPostcode := lQry.FieldByName('postcode').AsString;
            if not lQry.FieldByName('pstate').IsNull then
               aState := lQry.FieldByName('pstate').AsString;
            if not lQry.FieldByName('area').IsNull then
               aArea := lQry.FieldByName('area').AsString;
               
            if (CoreData.BranchState <> '') and (aState = CoreData.BranchState) then
               Break;

            lQry.Next;
         end;
      finally
         lQry.Close;
         FreeAndNil(lQry);
      end;
   end
   else if (aSuburb = '') and (aPostcode <> '') then
   begin
      lQry := TIDQuery.Create(nil);
      lQry.RequestLive := False;
      lQry.ReadOnly := True;
      try
         lQry.SQL.Add('select suburb, pstate, area from postalfind where postcode = ' + QuotedStr(aPostcode));
         lQry.Open;
         if not lQry.eof then
         begin
            if not lQry.FieldByName('suburb').IsNull then
               aSuburb := lQry.FieldByName('suburb').AsString;
            if not lQry.FieldByName('pstate').IsNull then
               aState := lQry.FieldByName('pstate').AsString;
            if not lQry.FieldByName('area').IsNull then
               aArea := lQry.FieldByName('area').AsString;
         end;
      finally
         lQry.Close;
         FreeAndNil(lQry);
      end;
   end;     
end;

end.
