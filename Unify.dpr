program Unify;

uses
  Forms,
  udBase in 'udBase.pas' {dBaseScreen},
  uuCoreData in 'uuCoreData.pas' {CoreData: TDataModule},
  udMainMenu in 'udMainMenu.pas' {dMainMenu},
  udBaseProgram in 'udBaseProgram.pas' {dBaseProgram},
  udBaseEnquiry in 'udBaseEnquiry.pas' {dBaseEnquiry},
  udBranches in 'udBranches.pas' {dBranches},
  udContacts in 'udContacts.pas' {dContacts},
  udBaseNew in 'udBaseNew.pas' {dBaseNew},
  udNewBranch in 'udNewBranch.pas' {dNewBranch},
  udNewContact in 'udNewContact.pas' {dNewContact},
  uuPostalFind in 'uuPostalFind.pas',
  uuGlobals in 'uuGlobals.pas',
  udReports in 'udReports.pas' {dReports},
  udUserLogon in 'udUserLogon.pas' {dUserLogon},
  udUsers in 'udUsers.pas' {dUsers},
  udExport in 'udExport.pas' {dExport},
  udOrderBy in 'udOrderBy.pas' {dOrderBy},
  udNewUser in 'udNewUser.pas' {dNewUser},
  udBackup in 'udBackup.pas' {dBackup},
  udConfiguration in 'udConfiguration.pas' {dConfiguration},
  udValidate in 'udValidate.pas' {dValidate},
  udReplace in 'udReplace.pas' {dReplace},
  udFieldOption in 'udFieldOption.pas' {dFieldOption},
  udAttachContact in 'udAttachContact.pas' {dAttachContact},
  udSaveSearch in 'udSaveSearch.pas' {dSaveSearch},
  udLoadSearch in 'udLoadSearch.pas' {dLoadSearch},
  udUserHistory in 'udUserHistory.pas' {dUserHistory},
  udShowColumns in 'udShowColumns.pas' {dShowColumns},
  udContactsByP in 'udContactsByP.pas' {dContactsByP},
  udDuplicateContacts in 'udDuplicateContacts.pas' {dDuplicates},
  udReportConditions in 'udReportConditions.pas' {dReportConditions},
  uuSearchCriteria in 'uuSearchCriteria.pas',
  udDropdown in 'udDropdown.pas' {dDropdown},
  udKeywords in 'udKeywords.pas' {dKeywords};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdMainMenu, dMainMenu);
  Application.Run;
end.
