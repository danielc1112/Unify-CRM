;{************************************************************************
;  This File was written by Lorenzo Mengoni - (Ancona, Italy)
;  and it'part of IBOConsole
;  for suggestion and contributions email to lorenzo@mengoni.com
;  This software is distributed under the License GPL and is distributed on
;  an "AS IS" basis, WITHOUT WARRANTY OF ANY KIND, either
;  express or implied. if you live in a country where this is not applicable
;  do not use it at all.
;
;  This file is a starting point for localization of IBOConsole
;  This are predefined language constant for now:
;
;  Brazilian Portuguese=pt-br
;  Bulgarian=bg
;  Catalan=ca
;  Chinese Traditional=cn-trad
;  Chinese big5=cn-big5
;  Chinese gb2312=cn-gb2312
;  Croatian=hr
;  Czech=cz
;  Danish=da
;  Dutch=nl
;  English=en
;  Estonian=et
;  French=fr
;  German=de
;  Greek-Modern=el
;  Italiano=it
;  Japanese=ja
;  Korean=ko
;  Luxembourgeois=ltz
;  Norwegian=no
;  Norwegian Nynorsk=nn
;  Polish=pl
;  Portugese=pt
;  Romanian=ro
;  Russian=ru
;  Slovak=sk
;  Spanish=es
;  Swedish=sv
;
;
;  IBOConsole look in the same folder of exe for the file
;  IBOConsole.lang.pt-br for Brazilian Portuguese,
;  IBOConsole.lang.ca for Catalan and so on...
;  I made the Italian file so, if You make a language file I'll give You
;  the credit on my site and in the About Form of program.
;  If the language is not in the list above, I'll add it on the program
;  Thanks in advance to anyone will help me.
;  Send the file at lorenzo@mengoni.com
;
;Warning:
;localize only the right side
;do not localize and leave case as is on the left side
; example:
;--obj-path----- --Italian--
;Column0.Caption=Nome
;Column1.Caption=Valore
;
;the section is the path of component in the form, so don't change od localize it
;use ^M to insert a line break, useful in label caption
;
[frmMain.FrameGenerators1.DBGrid1]
Class=TDBGrid
Hint=
Columns.Count=2
Column0.Caption=Naam
Column1.Caption=waarde
[frmMain.FrameGenerators1.NewGenerator1]
Class=TMenuItem
Caption=Nieuwe Generator
Hint=
[frmMain.FrameGenerators1.EditGenerator1]
Class=TMenuItem
Caption=Generator bewerken
Hint=
[frmMain.FrameGenerators1.DropGenerator1]
Class=TMenuItem
Caption=Generator verwijderen
Hint=
[frmMain.Console1]
Class=TMenuItem
Caption=&Console
Hint=
[frmMain.View1]
Class=TMenuItem
Caption=&Venster
Hint=
[frmMain.Server1]
Class=TMenuItem
Caption=&Server
Hint=
[frmMain.Database1]
Class=TMenuItem
Caption=&Databank
Hint=
[frmMain.Maintenance2]
Class=TMenuItem
Caption=&Onderhoud
Hint=
[frmMain.BackupRestore1]
Class=TMenuItem
Caption=Backup / Restore
Hint=
[frmMain.ConnectAs3]
Class=TMenuItem
Caption=Nieuwe connectie...
Hint=Interactive SQL
[frmMain.Help1]
Class=TMenuItem
Caption=&Help
Hint=
[frmMain.Maintenance1]
Class=TMenuItem
Caption=&Onderhoud
Hint=
[frmMain.BackupRestore2]
Class=TMenuItem
Caption=Backup / Restore
Hint=
[frmMain.ConsoleExit]
Class=TAction
Caption=&Afsluiten
Hint=IBOConsole afsluiten
[frmMain.ViewList]
Class=TAction
Caption=&Lijst
Hint=
[frmMain.ViewReport]
Class=TAction
Caption=&Details
Hint=
[frmMain.ViewIcon]
Class=TAction
Caption=&Groot
Hint=
[frmMain.ViewSmallIcon]
Class=TAction
Caption=Kl&ein
Hint=
[frmMain.ViewProperties]
Class=TAction
Caption=&Eigenschappen ...
Hint=Object eigenschappen bekijken
[frmMain.ViewSystem]
Class=TAction
Caption=S&ysteemgegevens
Hint=
[frmMain.HelpContents]
Class=THelpContents
Caption=&Inhoud
Hint=
[frmMain.HelpOnHelp]
Class=THelpOnHelp
Caption=&Help bij Help
Hint=
[frmMain.HelpTopicSearch]
Class=THelpTopicSearch
Caption=&Onderwerp zoeken
Hint=
[frmMain.HelpAbout]
Class=TAction
Caption=&Info ...
Hint=
[frmMain.EditCopy]
Class=TEditCopy
Caption=&Kopieren
Hint=Kopieren
[frmMain.EditCut]
Class=TEditCut
Caption=Kn&ippen
Hint=Knippen
[frmMain.EditPaste]
Class=TEditPaste
Caption=&Plakken
Hint=Plakken
[frmMain.EditSelectAll]
Class=TEditSelectAll
Caption=&Alles selecteren
Hint=
[frmMain.EditUndo]
Class=TEditUndo
Caption=&Ongedaan maken
Hint=
[frmMain.EditFont]
Class=TAction
Caption=&Lettertype ...
Hint=Lettertype veranderen
[frmMain.WindowList]
Class=TAction
Caption=&Vensters
Hint=
[frmMain.UserAdd]
Class=TAction
Caption=&Gebruiker toevoegen ...
Hint=Nieuwe gebruiker toevoegen
[frmMain.UserModify]
Class=TAction
Caption=&gebruiker aanpassen ...
Hint=Pas een gebruiker aan
[frmMain.UserDelete]
Class=TAction
Caption=Gebruiker &verwijderen
Hint=De gebruiker verwijderen
[frmMain.ServerLogout]
Class=TAction
Caption=A&fmelden
Hint=afmelden van de huidige server
[frmMain.ServerSecurity]
Class=TAction
Caption=Gebruiker &Beveiliging ...
Hint=Gebruikers beheren
[frmMain.ServerProperties]
Class=TAction
Caption=&Eigenschappen ...
Hint=Server eigenschappen bekijken
[frmMain.DatabaseDisconnect]
Class=TAction
Caption=&Connectie verbreken
Hint=Connectie met huidige databank verbreken
[frmMain.DatabaseProperties]
Class=TAction
Caption=&Eigenschappen ...
Hint=Eigenschappen van de databank tonen
[frmMain.DatabaseStatistics]
Class=TAction
Caption=&Databank statistieken ...
Hint=Toon databank statistieken
[frmMain.DatabaseShutdown]
Class=TAction
Caption=&Databank afsluiten ...
Hint=Databank afsluiten
[frmMain.DatabaseSweep]
Class=TAction
Caption=&Sweep
Hint=Databank sweep uitvoeren
[frmMain.DatabaseRecoverTrans]
Class=TAction
Caption=&Transacties herstellen ...
Hint=Limbo transacties herstellen
[frmMain.DatabaseMetadata]
Class=TAction
Caption=&Metadata bekijken...
Hint=Databank Metadata bekijken
[frmMain.DatabaseRestart]
Class=TAction
Caption=Databank &opnieuw starten
Hint=Databank opnieuw starten
[frmMain.DatabaseDrop]
Class=TAction
Caption=Databank verwijderen
Hint=De huidige databank verwijderen
[frmMain.DBCBackup]
Class=TAction
Caption=Databank Backup
Hint=Een databank backup maken
[frmMain.DatabaseUsers]
Class=TAction
Caption=Aangemelde &gebruikers ...
Hint=De lijst van gebruikers die nu geconnecteerd zijn bekijken.
[frmMain.DBCRestore]
Class=TAction
Caption=Databank terugzetten
Hint=Databank terugzetten
[frmMain.ServerLogin]
Class=TAction
Caption=Aanme&lden ...
Hint=Aanmelden bij de geselecteerde server
[frmMain.ServerRegister]
Class=TAction
Caption=&Registreren ...
Hint=Een nieuwe server registreren
[frmMain.ServerUnregister]
Class=TAction
Caption=&Registratie verwijderen
Hint=De registratie van een server verwijderen
[frmMain.ServerConnection]
Class=TAction
Caption=&Diagnose verbinding...
Hint=Diagnose van de server verbinding
[frmMain.ServerActionProps]
Class=TAction
Caption=&Eigenschappen ...
Hint=Server eigenschappen bekijken
[frmMain.DatabaseRegister]
Class=TAction
Caption=&Registreren ...
Hint=Registreer een nieuwe databank
[frmMain.DatabaseUnregister]
Class=TAction
Caption=&Registratie verwijderen
Hint=Registratie van de huidige databank verwijderen
[frmMain.DatabaseConnect]
Class=TAction
Caption=&Verbinden
Hint=Verbinden met de geselecteerde databank
[frmMain.DatabaseConnectAs]
Class=TAction
Caption=Verbinden &als ...
Hint=Verbinden met de geselecteerde databank met opgave van een gebruikersnaam
[frmMain.DatabaseCreate]
Class=TAction
Caption=&Aanmaken databank ...
Hint=Een nieuwe databank aanmaken
[frmMain.DatabaseValidate]
Class=TAction
Caption=&Validatie ...
Hint=Validatie van de databank structuur
[frmMain.DatabaseActionsProperties]
Class=TAction
Caption=Eigenschappen ...
Hint=Toon de eigenschappen van de databank
[frmMain.ExtToolsLaunchISQL]
Class=TAction
Caption=Interactieve S&QL ...
Hint=Interactieve SQL
[frmMain.ExtToolsConfigure]
Class=TAction
Caption=&Configuratie gereedschappen ...
Hint=
[frmMain.ExtToolDropDown]
Class=TAction
Caption=&Gereedschappen
Hint=
[frmMain.DatabaseBackup]
Class=TAction
Caption=&Backup ...
Hint=Databank Back up maken
[frmMain.DatabaseRestore]
Class=TAction
Caption=&Backup terugzetten ...
Hint=Databank backup terugzetten
[frmMain.BackupRestoreModifyAlias]
Class=TAction
Caption=&Wijzig Backup Alias ...
Hint=Wijzig een bestaand backup alias
[frmMain.BackupRestoreRemoveAlias]
Class=TAction
Caption=&Alias verwijderen
Hint=Verwijder het huidige backup alias
[frmMain.ViewServerLog]
Class=TAction
Caption=&Logboek bekijken ...
Hint=Bekijk het logboek voor de huidige server
[frmMain.ObjectDescription]
Class=TAction
Caption=&Omschrijving bewerken ...
Hint=De omschrijving van een object wijzigen
[frmMain.ObjectCreate]
Class=TAction
Caption=&Aanmaken ...
Hint=Een nieuw object aanmaken van het geselecteerde type
[frmMain.ObjectModify]
Class=TAction
Caption=&Wijzigen ...
Hint=Huidige object wijzigen
[frmMain.ObjectDelete]
Class=TAction
Caption=&Verwijderen ...
Hint=Verwijder het huidige object
[frmMain.ObjectExtract]
Class=TAction
Caption=E&xtraheren ...
Hint=Toon de metadata voor het huidige object
[frmMain.ObjectProperties]
Class=TAction
Caption=&Eigenschappen ...
Hint=
[frmMain.ObjectRefresh]
Class=TAction
Caption=&Hernieuwen
Hint=
[frmMain.HighlightOptions]
Class=TAction
Caption=Opties tekstopmaak
Hint=
[frmMain.DatabaseWindows]
Class=TAction
Caption=Databank &vensters
Hint=
[frmMain.ActionOptions]
Class=TAction
Caption=Opties...
Hint=
[frmMain.actHighlightOptions]
Class=TAction
Caption=Opties tekstopmaak...
Hint=
[frmMain.Test1]
Class=TMenuItem
Caption=Test
Hint=
[frmOptions]
Class=TfrmOptions
Caption=Opties
Hint=
[frmOptions.btnApply]
Class=TButton
Caption=&Toepassen
Hint=
[frmOptions.btnOK]
Class=TButton
Caption=&OK
Hint=
[frmOptions.pgControl]
Class=TPageControl
Hint=
PageCount=1
[frmOptions.pgControl.TabSheet2]
Class=TTabSheet
Caption=IBOConsole
Hint=
[frmOptions.TabSheet2]
Class=TTabSheet
Caption=IBOConsole
Hint=
[frmOptions.Label2]
Class=TLabel
Caption=.........
Hint=
[frmOptions.LabelLanguage]
Class=TLabel
Caption=Taal
Hint=
[frmOptions.DDLRadioGroup]
Class=TGroupButton
Caption=&Manueel Committen
Hint=
Items.Count=2
Item0=&Automatisch Committen
Item1=&Manueel Committen
[frmOptions.CheckBox1]
Class=TCheckBox
Caption=Namen steeds in hoofdletters
Hint=
[frmOptions.ButtonChangeFont]
Class=TButton
Caption=Lettertype aanpassen
Hint=
[frmOptions.btnCancel]
Class=TButton
Caption=&Annuleren
Hint=
[frmEditorOptions]
Class=TfrmEditorOptions
Caption=Syntax werkscherm Opties
Hint=
[frmEditorOptions.Label1]
Class=TLabel
Caption=Kleur
Hint=
[frmEditorOptions.Label2]
Class=TLabel
Caption=Element
Hint=
[frmEditorOptions.GroupBox1]
Class=TGroupBox
Caption=Tekst Stijl
Hint=
[frmEditorOptions.chkBold]
Class=TCheckBox
Caption=&Vetjes
Hint=
[frmEditorOptions.chkItalic]
Class=TCheckBox
Caption=&Schuin
Hint=
[frmEditorOptions.chkUnderline]
Class=TCheckBox
Caption=&Onderlijnd
Hint=
[frmEditorOptions.Button1]
Class=TButton
Caption=&Ok
Hint=
[frmEditorOptions.Button2]
Class=TButton
Caption=&Annuleren
Hint=
[frmEditorOptions.GroupBox2]
Class=TGroupBox
Caption=Standaard gebruiken voor
Hint=
[frmEditorOptions.chkDefaultFG]
Class=TCheckBox
Caption=Voorgrond
Hint=
[frmEditorOptions.chkDefaultBG]
Class=TCheckBox
Caption=Achtergrond
Hint=
[frmEditorOptions.Label3]
Class=TLabel
Caption=Courier New
Hint=
[frmEditorOptions.ButtonChangeFont]
Class=TButton
Caption=Lettertype wijzigen
Hint=
[frmServerLogin]
Class=TfrmServerLogin
Caption=Aanmelden bij server
Hint=
[frmServerLogin.lblServerName]
Class=TLabel
Caption=Server:
Hint=
[frmServerLogin.lblUsername]
Class=TLabel
Caption=&Gebruikersnaam:
Hint=
[frmServerLogin.lblPassword]
Class=TLabel
Caption=&Wachtwoord:
Hint=
[frmServerLogin.lblServer]
Class=TLabel
Caption=Lokale Server
Hint=
[frmServerLogin.btnLogin]
Class=TButton
Caption=Aan&melden
Hint=
[frmServerLogin.btnCancel]
Class=TButton
Caption=&Annuleren
Hint=
[frmUserInfo]
Class=TfrmUserInfo
Caption=Gebruikersinformatie
Hint=
[frmUserInfo.btnNew]
Class=TButton
Caption=&Nieuwe
Hint=
[frmUserInfo.btnApply]
Class=TButton
Caption=&Toepassen
Hint=
[frmUserInfo.btnDelete]
Class=TButton
Caption=&Verwijderen
Hint=
[frmUserInfo.btnClose]
Class=TButton
Caption=&Sluiten
Hint=
[frmUserInfo.btnCancel]
Class=TButton
Caption=&Annuleren
Hint=
[frmUserInfo.gbOptionalInfo]
Class=TGroupBox
Caption= Optionele Informatie 
Hint=
[frmUserInfo.lblFName]
Class=TLabel
Caption=V&oornaam:
Hint=
[frmUserInfo.lblMName]
Class=TLabel
Caption=T&weede naam:
Hint=
[frmUserInfo.lblLName]
Class=TLabel
Caption=&Familienaam:
Hint=
[frmUserInfo.gbRequiredInfo]
Class=TGroupBox
Caption= Verplichte informatie 
Hint=
[frmUserInfo.lblPassword]
Class=TLabel
Caption=Wa&chtwoord:
Hint=
[frmUserInfo.lblConfirmPassword]
Class=TLabel
Caption=Bevestig Wac&htwoord:
Hint=
[frmUserInfo.lblUserName]
Class=TLabel
Caption=&Gebruikersnaam:
Hint=
[frmUserInfo.NewUser]
Class=TAction
Caption=Nieuwe gebruiker
Hint=
[frmUserInfo.ModifyUser]
Class=TAction
Caption=Gebruiker wijzigen
Hint=
[frmUserInfo.DeleteUser]
Class=TAction
Caption=Gebruiker verwijderen
Hint=
[frmServerProperties]
Class=TfrmServerProperties
Caption=Server eigenschappen
Hint=
[frmServerProperties.pgcMain]
Class=TPageControl
Hint=
PageCount=2
[frmServerProperties.pgcMain.TabAlias]
Class=TTabSheet
Caption=Alias
Hint=
[frmServerProperties.pgcMain.TabGeneral]
Class=TTabSheet
Caption=Algemeen
Hint=
[frmServerProperties.TabAlias]
Class=TTabSheet
Caption=Alias
Hint=
[frmServerProperties.lblAliasName]
Class=TLabel
Caption=A&lias Naam:
Hint=
[frmServerProperties.lblHostName]
Class=TLabel
Caption=&Machine Naam:
Hint=
[frmServerProperties.lblProtocol]
Class=TLabel
Caption=&Netwerk Protocol:
Hint=
[frmServerProperties.Label1]
Class=TLabel
Caption=&Omschrijving:
Hint=
[frmServerProperties.TabGeneral]
Class=TTabSheet
Caption=Algemeen
Hint=
[frmServerProperties.lblVersionCaption]
Class=TLabel
Caption=Versie:
Hint=
[frmServerProperties.lblCapabilities]
Class=TLabel
Caption=Mogelijkheden:
Hint=
[frmServerProperties.lblAttachmentNoCaption]
Class=TLabel
Caption=Aantal connecties:
Hint=
[frmServerProperties.lblDatabaseNocaption]
Class=TLabel
Caption=Aantal databanken:
Hint=
[frmServerProperties.lblDatabaseNo]
Class=TLabel
Caption=?
Hint=
[frmServerProperties.lblAttachmentNo]
Class=TLabel
Caption=?
Hint=
[frmServerProperties.lblVersion]
Class=TLabel
Caption=Onbekend
Hint=
[frmServerProperties.lvDatabases]
Class=TListView
Hint=
Columns.Count=1
Column0.Caption=Actieve Databanken
[frmServerProperties.btnRefresh]
Class=TButton
Caption=&Hernieuwen
Hint=
[frmServerProperties.btnApply]
Class=TButton
Caption=&Toepassen
Hint=
[frmServerProperties.btnCancel]
Class=TButton
Caption=&OK
Hint=
[frmServerProperties.Button1]
Class=TButton
Caption=&Annuleren
Hint=
[frmDBProperties]
Class=TfrmDBProperties
Caption=Databank eigenschappen
Hint=
[frmDBProperties.lblServerName]
Class=TLabel
Caption=Server:
Hint=
[frmDBProperties.lblServer]
Class=TLabel
Caption=Lokale Server
Hint=
[frmDBProperties.pgcMain]
Class=TPageControl
Hint=
PageCount=2
[frmDBProperties.pgcMain.TabAlias]
Class=TTabSheet
Caption=Alias
Hint=
[frmDBProperties.pgcMain.TabGeneral]
Class=TTabSheet
Caption=Algemeen
Hint=
[frmDBProperties.TabAlias]
Class=TTabSheet
Caption=Alias
Hint=
[frmDBProperties.lblAliasName]
Class=TLabel
Caption=A&lias Naam:
Hint=
[frmDBProperties.lblFilename]
Class=TLabel
Caption=&Bestand:
Hint=
[frmDBProperties.btnSelFilename]
Class=TButton
Caption=...
Hint=Kies databank
[frmDBProperties.TabGeneral]
Class=TTabSheet
Caption=Algemeen
Hint=
[frmDBProperties.lblOptions]
Class=TLabel
Caption=O&pties:
Hint=
[frmDBProperties.gbSummaryInfo]
Class=TGroupBox
Caption= Samenvattende Informatie      
Hint=
[frmDBProperties.lblDBOwner]
Class=TLabel
Caption=Owner:
Hint=
[frmDBProperties.lblDBPages]
Class=TLabel
Caption=Toegewezen DB Paginas:
Hint=
[frmDBProperties.lblPageSize]
Class=TLabel
Caption=Groote Pagina:
Hint=
[frmDBProperties.lblOwner]
Class=TLabel
Caption=SYSDBA
Hint=
[frmDBProperties.lblPages]
Class=TLabel
Caption=20750
Hint=
[frmDBProperties.lblPgSize]
Class=TLabel
Caption=4096
Hint=
[frmDBProperties.lvSecondaryFiles]
Class=TListView
Hint=
Columns.Count=2
Column0.Caption=Secondaire bestanden
Column1.Caption=Start Pagina
[frmDBProperties.btnApply]
Class=TButton
Caption=&Toepassen
Hint=
[frmDBProperties.btnCancel]
Class=TButton
Caption=&OK
Hint=
[frmDBProperties.Button1]
Class=TButton
Caption=&Annuleren
Hint=
[frmDBStatistics]
Class=TfrmDBStatistics
Caption=Databank Statistieken
Hint=
[frmDBStatistics.lblOptions]
Class=TLabel
Caption=O&pties:
Hint=
[frmDBStatistics.lblDatabaseName]
Class=TLabel
Caption=Databank:
Hint=
[frmDBStatistics.lblDatabase]
Class=TLabel
Caption=
Hint=
[frmDBStatistics.btnOK]
Class=TButton
Caption=&OK
Hint=
[frmDBStatistics.btnCancel]
Class=TButton
Caption=&Annuleren
Hint=
[frmTextViewer]
Class=TfrmTextViewer
Caption=Databank Metadata
Hint=
[frmTextViewer.mnuFile]
Class=TMenuItem
Caption=&Bestand
Hint=
[frmTextViewer.mnuFiSaveAs]
Class=TMenuItem
Caption=&Opslaan ...
Hint=Huidig bestand opslaan met een nieuwe naam
[frmTextViewer.mnuFiPrint]
Class=TMenuItem
Caption=Af&drukken
Hint=
[frmTextViewer.mnuFiExit]
Class=TMenuItem
Caption=A&fsluiten
Hint=Exit this application
[frmTextViewer.mnuEdit]
Class=TMenuItem
Caption=&Bewerken
Hint=
[frmTextViewer.mnuEdFind]
Class=TMenuItem
Caption=&Zoeken
Hint=Zoeken naar een tekst
[frmTextViewer.EditCopy1]
Class=TEditCopy
Caption=&Kopiëren
Hint=Kopiëren
[frmTextViewer.EditCut1]
Class=TEditCut
Caption=Kn&ippen
Hint=Knippen
[frmTextViewer.EditPaste1]
Class=TEditPaste
Caption=&Plakken
Hint=Plakken
[frmTextViewer.EditSelectAll1]
Class=TEditSelectAll
Caption=&Alles selecteren
Hint=
[frmTextViewer.EditUndo1]
Class=TEditUndo
Caption=&Ongedaan maken
Hint=
[frmTextViewer.EditFont]
Class=TAction
Caption=&Lettertype ...
Hint=Lettertype aanpassen
[frmDBShutdown]
Class=TfrmDBShutdown
Caption=Databank afsluiten
Hint=
[frmDBShutdown.lblDatabaseName]
Class=TLabel
Caption=Databank:
Hint=
[frmDBShutdown.lblOptions]
Class=TLabel
Caption=O&pties:
Hint=
[frmDBShutdown.stxDatabaseName]
Class=TLabel
Caption=
Hint=
[frmDBShutdown.btnOK]
Class=TButton
Caption=&OK
Hint=
[frmDBShutdown.btnCancel]
Class=TButton
Caption=&Annuleren
Hint=
[frmMessage]
Class=TfrmMessage
Caption=Informatie
Hint=
[frmMessage.lblDetailMsg]
Class=TLabel
Caption=Detail bericht:
Hint=
[frmMessage.lblSummaryMsg]
Class=TLabel
Caption=Er werden geen hangende transacties gevonden.
Hint=
[frmMessage.btnOK]
Class=TButton
Caption=&OK
Hint=
[frmDBBackup]
Class=TfrmDBBackup
Caption=Databank Backup
Hint=
[frmDBBackup.lblOptions]
Class=TLabel
Caption=O&pties:
Hint=
[frmDBBackup.gbDatabaseFile]
Class=TGroupBox
Caption= Databank        
Hint=
[frmDBBackup.lblDatabaseServer]
Class=TLabel
Caption=Server:
Hint=
[frmDBBackup.lblDatabaseAlias]
Class=TLabel
Caption=&Alias:
Hint=
[frmDBBackup.lblDatabaseserverName]
Class=TLabel
Caption=Lokale Server
Hint=
[frmDBBackup.gbBackupFiles]
Class=TGroupBox
Caption= Backup bestand(en)        
Hint=
[frmDBBackup.lblBackupServer]
Class=TLabel
Caption=&Server:
Hint=
[frmDBBackup.lblBackupAlias]
Class=TLabel
Caption=A&lias:
Hint=
[frmDBBackup.btnOK]
Class=TButton
Caption=&OK
Hint=
[frmDBBackup.btnCancel]
Class=TButton
Caption=&Annuleren
Hint=
[frmMain.actDatabaseBackup]
Class=TAction
Caption=Databank Backup
Hint=Databank backup
[frmDBRestore]
Class=TfrmDBRestore
Caption=Backup terugzetten
Hint=
[frmDBRestore.lblOptions]
Class=TLabel
Caption=O&pties:
Hint=
[frmDBRestore.gbDatabaseFiles]
Class=TGroupBox
Caption= Databank
Hint=
[frmDBRestore.lblDestinationServer]
Class=TLabel
Caption=&Server:
Hint=
[frmDBRestore.lblDBAlias]
Class=TLabel
Caption=A&lias:
Hint=
[frmDBRestore.gbBackupFiles]
Class=TGroupBox
Caption= Backup bestand(en)
Hint=
[frmDBRestore.lblBackupServer]
Class=TLabel
Caption=Server:
Hint=
[frmDBRestore.lblBackupAlias]
Class=TLabel
Caption=&Alias:
Hint=
[frmDBRestore.lblBackupServerName]
Class=TLabel
Caption=Lokale Server
Hint=
[frmDBRestore.btnOK]
Class=TButton
Caption=&OK
Hint=
[frmDBRestore.btnCancel]
Class=TButton
Caption=&Annuleren
Hint=
[frmDomains]
Class=TfrmDomains
Caption=Domein - BLOB_TEXT
[frmDomains.pgObjectEditor]
Class=TPageControl
Hint=
PageCount=5
[frmDomains.pgObjectEditor.tsMain]
Class=TTabSheet
Caption=Domain
[frmDomains.pgObjectEditor.tsDefault]
Class=TTabSheet
Caption=Standaard
[frmDomains.pgObjectEditor.tsConstraint]
Class=TTabSheet
Caption=Constraint
[frmDomains.pgObjectEditor.tsDescription]
Class=TTabSheet
Caption=Description
[frmDomains.pgObjectEditor.tsDDL]
Class=TTabSheet
Caption=Metadata
[frmDomains.tsMain]
Class=TTabSheet
Caption=Domain
[frmDomains.Label1]
Class=TLabel
Caption=&Domain:
[frmDomains.Label3]
Class=TLabel
Caption=&Type:
[frmDomains.Label4]
Class=TLabel
Caption=&Lengte:
[frmDomains.Label9]
Class=TLabel
Caption=C&har Set:
[frmDomains.Label2]
Class=TLabel
Caption=Co&llatie:
[frmDomains.Label14]
Class=TLabel
Caption=&Precisie:
[frmDomains.Label15]
Class=TLabel
Caption=&Schaal:
[frmDomains.Label18]
Class=TLabel
Caption=&Sub Type:
[frmDomains.Label6]
Class=TLabel
Caption=C&har Set:
[frmDomains.Label11]
Class=TLabel
Caption=Segment groo&tte:
[frmDomains.Label5]
Class=TLabel
Caption=Co&llatie:
[frmDomains.chkColNotNull]
Class=TCheckBox
Caption=Verp&licht
[frmDomains.Label10]
Class=TLabel
Caption=&Array:
[frmDomains.lvArray]
Class=TListView
Hint=
Columns.Count=2
Column0.Caption=Ondergrens
Column1.Caption=Bovengrens
[frmDomains.btnAddDimension]
Class=TButton
Caption=&Dimensie toevoegen
[frmDomains.btnDeleteDimension]
Class=TButton
Caption=&Dimensie verwijderen
[frmDomains.btnEditDimension]
Class=TButton
Caption=&Dimensie bewerken
[frmDomains.tsDefault]
Class=TTabSheet
Caption=standaard
[frmDomains.tsConstraint]
Class=TTabSheet
Caption=Constraint
[frmDomains.tsDescription]
Class=TTabSheet
Caption=Omschrijving
[frmDomains.tsDDL]
Class=TTabSheet
Caption=Metadata
[frmServerRegister]
Class=TfrmServerRegister
Caption=Server registreren en verbinding maken
[frmServerRegister.gbServerInfo]
Class=TGroupBox
Caption= Server Informatie
[frmServerRegister.lblServerName]
Class=TLabel
Caption=S&erver Naam:
[frmServerRegister.lblProtocol]
Class=TLabel
Caption=&Netwerk Protocol:
[frmServerRegister.lblServerAlias]
Class=TLabel
Caption=&Alias Naam:
[frmServerRegister.Label1]
Class=TLabel
Caption=&Omschrijving:
[frmServerRegister.rbLocalServer]
Class=TRadioButton
Caption=&Lokale Server
[frmServerRegister.rbRemoteServer]
Class=TRadioButton
Caption=An&dere Server
[frmServerRegister.chkSaveAlias]
Class=TCheckBox
Caption=Alia&s Informatie bewaren
[frmServerRegister.gbLoginInfo]
Class=TGroupBox
Caption= Login Informatie
[frmServerRegister.lblUsername]
Class=TLabel
Caption=&Gebruikersnaam:
[frmServerRegister.lblPassword]
Class=TLabel
Caption=&Wachtwoord:
[frmServerRegister.btnOK]
Class=TButton
Caption=&OK
[frmServerRegister.btnCancel]
Class=TButton
Caption=&Annuleren
[frmCommDiag]
Class=TfrmCommDiag
Caption=Communicatie Diagnose
[frmCommDiag.pgcDiagnostics]
Class=TPageControl
Hint=
PageCount=4
[frmCommDiag.pgcDiagnostics.tabDBConnection]
Class=TTabSheet
Caption=DB verbinding
[frmCommDiag.pgcDiagnostics.tabTCPIP]
Class=TTabSheet
Caption=TCP/IP
[frmCommDiag.pgcDiagnostics.tabNetBEUI]
Class=TTabSheet
Caption=NetBEUI
[frmCommDiag.pgcDiagnostics.tabSPX]
Class=TTabSheet
Caption=SPX
[frmCommDiag.tabDBConnection]
Class=TTabSheet
Caption=DB verbinding
[frmCommDiag.lblDBResults]
Class=TLabel
Caption=&Results:
[frmCommDiag.gbDatabaseInfo]
Class=TGroupBox
Caption= Databank Informatie
[frmCommDiag.lblDatabase]
Class=TLabel
Caption=&Databank:
[frmCommDiag.lblUsername]
Class=TLabel
Caption=&Gebruikersnaam:
[frmCommDiag.lblPassword]
Class=TLabel
Caption=&Wachtwoord:
[frmCommDiag.btnSelDB]
Class=TButton
Caption=...
Hint=Kies databank
[frmCommDiag.gbDBServerInfo]
Class=TGroupBox
Caption= Server Informatie
[frmCommDiag.lblServerName]
Class=TLabel
Caption=&Server Naam:
[frmCommDiag.lblProtocol]
Class=TLabel
Caption=&Netwerk Protocol:
[frmCommDiag.rbLocalServer]
Class=TRadioButton
Caption=&Lokale Server
[frmCommDiag.rbRemoteServer]
Class=TRadioButton
Caption=Ande&re Server
[frmCommDiag.tabTCPIP]
Class=TTabSheet
Caption=TCP/IP
[frmCommDiag.lblWinSockResults]
Class=TLabel
Caption=&Resultaten:
[frmCommDiag.gbTCPIPServerInfo]
Class=TGroupBox
Caption= Server Informatie
[frmCommDiag.lblWinsockServer]
Class=TLabel
Caption=&Machine:
[frmCommDiag.lblService]
Class=TLabel
Caption=&Service:
[frmCommDiag.tabNetBEUI]
Class=TTabSheet
Caption=NetBEUI
[frmCommDiag.lblNetBeuiResults]
Class=TLabel
Caption=&Resultaten:
[frmCommDiag.gbNetBEUIServerInfo]
Class=TGroupBox
Caption= Server Informatie
[frmCommDiag.lblNetBEUIServer]
Class=TLabel
Caption=&Server Naam:
[frmCommDiag.tabSPX]
Class=TTabSheet
Caption=SPX
[frmCommDiag.lblSPXResults]
Class=TLabel
Caption=&Resultaten:
[frmCommDiag.gbNovellServerInfo]
Class=TGroupBox
Caption= Server Informatie
[frmCommDiag.lblSPXServer]
Class=TLabel
Caption=&Server Naam:
[frmCommDiag.btnTest]
Class=TButton
Caption=&Testen
[frmCommDiag.btnCancel]
Class=TButton
Caption=&Annuleren
[frmBackupAliasProperties]
Class=TfrmBackupAliasProperties
Caption=Backup alias eigenschappen
[frmBackupAliasProperties.lblServerName]
Class=TLabel
Caption=Server:
[frmBackupAliasProperties.lblAliasName]
Class=TLabel
Caption=&Alias Naam:
[frmBackupAliasProperties.lblDBServer]
Class=TLabel
Caption= Doel Databank &Server:
[frmBackupAliasProperties.lblDBAlias]
Class=TLabel
Caption= Doel &Databank Alias:
[frmBackupAliasProperties.lblServer]
Class=TLabel
Caption=Lokale Server
[frmBackupAliasProperties.btnApply]
Class=TButton
Caption=&Toepassen
[frmBackupAliasProperties.btnOK]
Class=TButton
Caption=&OK
[frmBackupAliasProperties.Button1]
Class=TButton
Caption=&Annuleren
[frmDBConnections]
Class=TfrmDBConnections
Caption=Databank verbindingen
[frmDBConnections.lvConnections]
Class=TListView
Hint=
Columns.Count=1
Column0.Caption=Gebruiker
[frmDBConnections.btnOK]
Class=TButton
Caption=&OK
[dlgWindowList]
Class=TdlgWindowList
Caption=Actieve vensters
[dlgWindowList.ListView1]
Class=TListView
Hint=
Columns.Count=1
Column0.Caption=Vensters
[dlgWindowList.SwitchTo]
Class=TAction
Caption=&Activeren ...
[dlgWindowList.Closewindow]
Class=TAction
Caption=Venster &sluiten
[dlgWindowList.ActionCloseAll]
Class=TAction
Caption=Alle &vensters sluiten
[frmDomains.ActionCompile]
Class=TAction
Caption=&Compileren
[frmEditorTable]
Class=TfrmEditorTable
Caption=Tabel - CATEGORIE
[frmEditorTable.pgcProperties]
Class=TPageControl
Hint=
PageCount=6
[frmEditorTable.pgcProperties.tabProperties]
Class=TTabSheet
Caption=Eigenschappen
[frmEditorTable.pgcProperties.tabData]
Class=TTabSheet
Caption=Gegevens
[frmEditorTable.pgcProperties.tabMetadata]
Class=TTabSheet
Caption=Metadata
[frmEditorTable.pgcProperties.tabPermissions]
Class=TTabSheet
Caption=Beveiliging
[frmEditorTable.pgcProperties.tabDependencies]
Class=TTabSheet
Caption=Afhankelijkheden
[frmEditorTable.pgcProperties.tabDescription]
Class=TTabSheet
Caption=Omschrijving
[frmEditorTable.tabProperties]
Class=TTabSheet
Caption=Eigenschappen
[frmEditorTable.lvTableObjects]
Class=TListView
Hint=
Columns.Count=6
Column0.Caption=Naam
Column1.Caption=Type
Column2.Caption=Karakters
Column3.Caption=Collatie
Column4.Caption=Standaard waarde
Column5.Caption=Mag leeg
[frmEditorTable.tabData]
Class=TTabSheet
Caption=Data
[frmEditorTable.dbgData]
Class=TDBGrid
Hint=
Columns.Count=1
Column0.Caption=
[frmEditorTable.DBNavigator1]
Class=TNavButton
Hint=Gegevens hernieuwen
[frmEditorTable.IB_TransactionBar1]
Class=TIB_TransactionBar_Button
Hint=Huidige Transactie sluiten
[frmEditorTable.tabMetadata]
Class=TTabSheet
Caption=Metadata
[frmEditorTable.cbExtractData]
Class=TCheckBox
Caption=Tabel gegevens extraheren
[frmEditorTable.tabPermissions]
Class=TTabSheet
Caption=Beveiliging
[frmEditorTable.lvPermissions]
Class=TListView
Hint=
Columns.Count=8
Column0.Caption=Object
Column1.Caption=Select
Column2.Caption=Delete
Column3.Caption=Insert
Column4.Caption=Update
Column5.Caption=Reference
Column6.Caption=Execute
Column7.Caption=Member Of
[frmEditorTable.Label1]
Class=TLabel
Caption=Deze beveiliging bevat GRANT OPTION
[frmEditorTable.tabDependencies]
Class=TTabSheet
Caption=Afhankelijkheden
[frmEditorTable.rbDependent]
Class=TRadioButton
Caption=Toon &afhankelijke Objecten
Hint=Toon objecten die afhangen van het huidige object
[frmEditorTable.rbDependedOn]
Class=TRadioButton
Caption=Toon objecten waarvan huidige afhankelijk is
Hint=Toon objecten waarvan huidige object afhankelijk is
[frmEditorTable.tabDescription]
Class=TTabSheet
Caption=Omschrijving
[frmEditorTable.ShowColumns]
Class=TAction
Caption=Velden
Hint=Toon velden voor de tabel
[frmEditorTable.ShowTriggers]
Class=TAction
Caption=Triggers
Hint=Toon triggers voor de tabel
[frmEditorTable.ShowCheckConstraints]
Class=TAction
Caption=Check Constraints
Hint=Toon Check Constraints
[frmEditorTable.ShowIndexes]
Class=TAction
Caption=Indexen
Hint=Toon indexen
[frmEditorTable.ShowUniqueConstraints]
Class=TAction
Caption=Unique Constraints
Hint=Toon unique constraints voor de tabel
[frmEditorTable.ShowReferentialConstraints]
Class=TAction
Caption=Referential Constraints
Hint=Toon referential constraints
[frmEditorTable.EditCopy1]
Class=TEditCopy
Caption=&Kopiëren
Hint=Kopiëren
[frmEditorTable.EditCut1]
Class=TEditCut
Caption=Kn&ippen
Hint=Knippen
[frmEditorTable.EditPaste1]
Class=TEditPaste
Caption=&Plakken
Hint=Plakken
[frmEditorTable.EditSelectAll1]
Class=TEditSelectAll
Caption=&Alles selecteren
[frmEditorTable.EditUndo1]
Class=TEditUndo
Caption=&Ongedaan maken
[frmEditorTable.ActionNewObject]
Class=TAction
Caption=Nieuwe...
[frmEditorTable.ActionEditObject]
Class=TAction
Caption=Bewerken...
[frmEditorTable.ActionDropObject]
Class=TAction
Caption=Verwijderen
[frmEditorTable.ActionGrantSelect]
Class=TAction
Caption=Select
[frmEditorTable.ActionGrantDelete]
Class=TAction
Caption=Delete
[frmEditorTable.ActionGrantInsert]
Class=TAction
Caption=Insert
[frmEditorTable.ActionGrantUpdate]
Class=TAction
Caption=Update
[frmEditorTable.ActionGrantReference]
Class=TAction
Caption=Reference
[frmEditorTable.ActionGrantExecute]
Class=TAction
Caption=Execute
[frmEditorTable.ActionGrantAll]
Class=TAction
Caption=Grant All
[frmEditorTable.ActionRevokeAll]
Class=TAction
Caption=Revoke All
[frmEditorTable.ActionOpenTable]
Class=TAction
Caption=Open
[frmEditorTable.ActionTableFilter]
Class=TAction
Caption=Filteren
[frmEditorTable.ActionTableFormView]
Class=TAction
Caption=Form View
[frmEditorTable.ActionEmptyTable]
Class=TAction
Caption=Lege Tabel
[frmEditorTable.ActionTableClearFilter]
Class=TAction
Caption=Filter leegmaken
[frmEditorTable.ActionCopyRecord]
Class=TAction
Caption=Record kopiëren
[frmEditorTable.NewPrimaryKey1]
Class=TMenuItem
Caption=Nieuwe Primaire sleutel
[frmEditorTable.Savetofile1]
Class=TMenuItem
Caption=Opslaan in bestand...
[frmEditorTable.Loadfromfile1]
Class=TMenuItem
Caption=Uit bestand laden...
[frmEditorTable.Copy2]
Class=TMenuItem
Caption=Kopiëren
[frmEditorTable.Paste2]
Class=TMenuItem
Caption=Plakken
[frmEditorTable.Cut2]
Class=TMenuItem
Caption=Knippen
[frmEditorTable.SavePictureDialog1.PreviewButton]
Class=TSpeedButton
Hint=Voorbeeld op scherm
[frmEditorTable.OpenPictureDialog1.PreviewButton]
Class=TSpeedButton
Hint=Voorbeeld op scherm
[frmViewEditor]
Class=TfrmViewEditor
Caption=View - NEW_VIEW
[frmViewEditor.pgObjectEditor]
Class=TPageControl
Hint=
PageCount=7
[frmViewEditor.pgObjectEditor.tsSQL]
Class=TTabSheet
Caption=View
[frmViewEditor.pgObjectEditor.tsTableView]
Class=TTabSheet
Caption=Structuur
[frmViewEditor.pgObjectEditor.tsDependenciesView]
Class=TTabSheet
Caption=Afhankelijkheden
[frmViewEditor.pgObjectEditor.tsTriggerView]
Class=TTabSheet
Caption=Triggers
[frmViewEditor.pgObjectEditor.tsData]
Class=TTabSheet
Caption=Gegevens
[frmViewEditor.pgObjectEditor.tsDoco]
Class=TTabSheet
Caption=Omschrijving
[frmViewEditor.pgObjectEditor.tsGrants]
Class=TTabSheet
Caption=Grants
[frmViewEditor.tsSQL]
Class=TTabSheet
Caption=View
[frmViewEditor.tsTableView]
Class=TTabSheet
Caption=Structuur
[frmViewEditor.lvFieldList]
Class=TListView
Hint=
Columns.Count=8
Column0.Caption=Veld naam
Column1.Caption=Veld Type
Column2.Caption=Sub Type
Column3.Caption=Domein
Column4.Caption=Verplicht
Column5.Caption=Omschrijving
Column6.Caption=Standaard bron
Column7.Caption=Berekende bron
[frmViewEditor.tsDependenciesView]
Class=TTabSheet
Caption=Afhankelijkheden
[frmViewEditor.rbDependent]
Class=TRadioButton
Caption=Toon afhankelijke objecten
Hint=Toon objecten die van het huidige object afhangen
[frmViewEditor.rbDependedOn]
Class=TRadioButton
Caption=Toon objecten waarvan afhankelijk
Hint=Toon objecten waarvan het huidige object afhankelijk is
[frmViewEditor.tsTriggerView]
Class=TTabSheet
Caption=Triggers
[frmViewEditor.Label1]
Class=TLabel
Caption=Toon:
[frmViewEditor.tsData]
Class=TTabSheet
Caption=Gegevens
[frmViewEditor.navDataView]
Class=TNavButton
Hint=Gegevens hernieuwen
[frmViewEditor.IB_TransactionBar1]
Class=TIB_TransactionBar_Button
Hint=Huidige transactie afsluiten
[frmViewEditor.btnRefresh]
Class=TSpeedButton
Caption=&Hernieuwen
[frmViewEditor.grdDataView]
Class=TDBGrid
Hint=
Columns.Count=1
Column0.Caption=
[frmViewEditor.tsDoco]
Class=TTabSheet
Caption=Omschrijving
[frmViewEditor.tsGrants]
Class=TTabSheet
Caption=Grants
[frmViewEditor.lvPermissions]
Class=TListView
Hint=
Columns.Count=8
Column0.Caption=Object
Column1.Caption=Select
Column2.Caption=Delete
Column3.Caption=Insert
Column4.Caption=Update
Column5.Caption=Reference
Column6.Caption=Execute
Column7.Caption=Member Of
[frmViewEditor.Label2]
Class=TLabel
Caption=Deze beveiliging bevat GRANT OPTION
[frmViewEditor.ActionCompile]
Class=TAction
Caption=Compileren
[frmStoredProcedure]
Class=TfrmStoredProcedure
Caption=Stored Procedure
[frmStoredProcedure.pgObjectEditor]
Class=TPageControl
Hint=
PageCount=7
[frmStoredProcedure.pgObjectEditor.tsStoredProc]
Class=TTabSheet
Caption=Bewerken
[frmStoredProcedure.pgObjectEditor.tsExecution]
Class=TTabSheet
Caption=Uitvoeren
[frmStoredProcedure.pgObjectEditor.tsDocoView]
Class=TTabSheet
Caption=Omschrijving
[frmStoredProcedure.pgObjectEditor.tsDependencies]
Class=TTabSheet
Caption=Afhankelijkheden
[frmStoredProcedure.pgObjectEditor.tsGrants]
Class=TTabSheet
Caption=Grants
[frmStoredProcedure.pgObjectEditor.tsDebuggerOutput]
Class=TTabSheet
Caption=Debugger Output
[frmStoredProcedure.pgObjectEditor.tsMetadata]
Class=TTabSheet
Caption=Metadata
[frmStoredProcedure.tsStoredProc]
Class=TTabSheet
Caption=Bewerken
[frmStoredProcedure.Label2]
Class=TLabel
Caption=Naam:
[frmStoredProcedure.dbgParameters]
Class=TDBGrid
Hint=
Columns.Count=3
Column0.Caption=Type
Column1.Caption=Parameter
Column2.Caption=Data Type
[frmStoredProcedure.tsExecution]
Class=TTabSheet
Caption=Uitvoeren
[frmStoredProcedure.grdResults]
Class=TDBGrid
Hint=
Columns.Count=1
Column0.Caption=
[frmStoredProcedure.dbgValues]
Class=TDBGrid
Hint=
Columns.Count=3
Column0.Caption=Parameter
Column1.Caption=Type
Column2.Caption=Waarde
[frmStoredProcedure.tsDocoView]
Class=TTabSheet
Caption=Omschrijving
[frmStoredProcedure.tsDependencies]
Class=TTabSheet
Caption=Afhankelijkheden
[frmStoredProcedure.rbDependent]
Class=TRadioButton
Caption=Toon &afhankelijke objecten
Hint=Toon afhankelijke objecten van dit object
[frmStoredProcedure.rbDependedOn]
Class=TRadioButton
Caption=Toon objecten waarvan afhankelijk
Hint=Toon objecten waarvan huidig object afhankelijk is
[frmStoredProcedure.tsGrants]
Class=TTabSheet
Caption=Grants
[frmStoredProcedure.lvPermissions]
Class=TListView
Hint=
Columns.Count=8
Column0.Caption=Object
Column1.Caption=Select
Column2.Caption=Delete
Column3.Caption=Insert
Column4.Caption=Update
Column5.Caption=Reference
Column6.Caption=Execute
Column7.Caption=Member Of
[frmStoredProcedure.Label1]
Class=TLabel
Caption=Deze beveiliging bevat GRANT OPTION
[frmStoredProcedure.tsDebuggerOutput]
Class=TTabSheet
Caption=Debugger Output
[frmStoredProcedure.tsMetadata]
Class=TTabSheet
Caption=Metadata
[frmStoredProcedure.ActionExecute]
Class=TAction
Caption=Uitvoeren
[frmStoredProcedure.ActionCompile]
Class=TAction
Caption=Compileren
[frmStoredProcedure.ActionCheckParams]
Class=TAction
Caption=Parameters nagaan
[frmStoredProcedure.ActionAddInputParam]
Class=TAction
Caption=Input Parameter toevoegen
[frmStoredProcedure.ActionEditParam]
Class=TAction
Caption=Parameter bewerken
[frmStoredProcedure.ActionDeleteParam]
Class=TAction
Caption=Parameter verwijderen
[frmStoredProcedure.ActionMoveUp]
Class=TAction
Caption=Naar boven
[frmStoredProcedure.ActionMoveDown]
Class=TAction
Caption=Naar onder
[frmStoredProcedure.ActionAddOutputParam]
Class=TAction
Caption=Output parameter toevoegen
[frmUDFEditor]
Class=TfrmUDFEditor
Caption=Externe Functie - new_udf
[frmUDFEditor.pgObjectEditor]
Class=TPageControl
Hint=
PageCount=3
[frmUDFEditor.pgObjectEditor.tsObject]
Class=TTabSheet
Caption=Eigenschappen
[frmUDFEditor.pgObjectEditor.tsDocoView]
Class=TTabSheet
Caption=Omschrijving
[frmUDFEditor.pgObjectEditor.tsDDL]
Class=TTabSheet
Caption=Metadata
[frmUDFEditor.tsObject]
Class=TTabSheet
Caption=Eigenschappen
[frmUDFEditor.lvUDFParams]
Class=TListView
Hint=
Columns.Count=2
Column0.Caption=Parameter
Column1.Caption=Aanroep wijze
[frmUDFEditor.Label5]
Class=TLabel
Caption=&Door:
[frmUDFEditor.Label4]
Class=TLabel
Caption=&Resultaat:
[frmUDFEditor.Label3]
Class=TLabel
Caption=&Bibliotheek naam:
[frmUDFEditor.Label2]
Class=TLabel
Caption=&Toegangspunt:
[frmUDFEditor.Label1]
Class=TLabel
Caption=&Naam:
[frmUDFEditor.Label6]
Class=TLabel
Caption=Input &Parameters:
[frmUDFEditor.tsDocoView]
Class=TTabSheet
Caption=Omschrijving
[frmUDFEditor.tsDDL]
Class=TTabSheet
Caption=Metadata
[frmUDFEditor.ActionCompile]
Class=TAction
Caption=Compileren
[frmExceptions]
Class=TfrmExceptions
Caption=Exception - USERNAME_DUPLICATE
[frmExceptions.pgObjectEditor]
Class=TPageControl
Hint=
PageCount=3
[frmExceptions.pgObjectEditor.tsObject]
Class=TTabSheet
Caption=Exception
[frmExceptions.pgObjectEditor.tsDocoView]
Class=TTabSheet
Caption=Omschrijving
[frmExceptions.pgObjectEditor.tsDDL]
Class=TTabSheet
Caption=Metadata
[frmExceptions.tsObject]
Class=TTabSheet
Caption=Exception
[frmExceptions.Label1]
Class=TLabel
Caption=&Exception Naam:
[frmExceptions.Label2]
Class=TLabel
Caption=Exception &Tekst:
[frmExceptions.tsDocoView]
Class=TTabSheet
Caption=Omschrijving
[frmExceptions.tsDDL]
Class=TTabSheet
Caption=Metadata
[frmExceptions.ActionCompile]
Class=TAction
Caption=Compileren
[FrmEditorFilter]
Class=TFrmEditorFilter
Caption=Blob Filter - new_filter
[FrmEditorFilter.objControl]
Class=TPageControl
Hint=
PageCount=3
[FrmEditorFilter.objControl.tabFilters]
Class=TTabSheet
Caption=Eigenschappen
[FrmEditorFilter.objControl.tsMetadata]
Class=TTabSheet
Caption=Metadata
[FrmEditorFilter.objControl.tsDescription]
Class=TTabSheet
Caption=Omschrijving
[FrmEditorFilter.tabFilters]
Class=TTabSheet
Caption=Eigenschappen
[FrmEditorFilter.Label11]
Class=TLabel
Caption=&Module Naam:
[FrmEditorFilter.Label12]
Class=TLabel
Caption=&Toegangspunt:
[FrmEditorFilter.Label13]
Class=TLabel
Caption=&Input SubType:
[FrmEditorFilter.Label14]
Class=TLabel
Caption=&Output SubType:
[FrmEditorFilter.tsMetadata]
Class=TTabSheet
Caption=Metadata
[FrmEditorFilter.tsDescription]
Class=TTabSheet
Caption=Omschrijving
[FrmEditorFilter.actReset]
Class=TAction
Caption=Waarde he&rzetten
[FrmEditorFilter.ActionCompile]
Class=TAction
Caption=&Compileren
[frmRole]
Class=TfrmRole
Caption=Rol - NEW_ROLE
[frmRole.pgObjectEditor]
Class=TPageControl
Hint=
PageCount=2
[frmRole.pgObjectEditor.tsRole]
Class=TTabSheet
Caption=Rol
[frmRole.pgObjectEditor.tsDDLView]
Class=TTabSheet
Caption=Metadata
[frmRole.tsRole]
Class=TTabSheet
Caption=Rol
[frmRole.Label1]
Class=TLabel
Caption=Naam &Rol:
[frmRole.tsDDLView]
Class=TTabSheet
Caption=Metadata
[frmRole.ActionCompile]
Class=TAction
Caption=&Compileren
[dlgWisql]
Class=TdlgWisql
Caption=Interactieve SQL
[dlgWisql.lblFileName]
Class=TLabel
[dlgWisql.pgcOutput]
Class=TPageControl
Hint=
PageCount=4
[dlgWisql.pgcOutput.tsParameters]
Class=TTabSheet
Caption=Parameters
[dlgWisql.pgcOutput.TabData]
Class=TTabSheet
Caption=Gegevens
[dlgWisql.pgcOutput.TabResults]
Class=TTabSheet
Caption=Plan
[dlgWisql.pgcOutput.TabStats]
Class=TTabSheet
Caption=Statistieken
[dlgWisql.tsParameters]
Class=TTabSheet
Caption=Parameters
[dlgWisql.TabData]
Class=TTabSheet
Caption=Gegevens
[dlgWisql.dbgSQLResults]
Class=TDBGrid
Hint=
Columns.Count=1
Column0.Caption=
[dlgWisql.TabResults]
Class=TTabSheet
Caption=Plan
[dlgWisql.TabStats]
Class=TTabSheet
Caption=Statistieken
[dlgWisql.lvStats]
Class=TListView
Hint=
Columns.Count=2
Column0.Caption=Statistiek
Column1.Caption=Waarde
[dlgWisql.IB_TransactionBarDefault]
Class=TIB_TransactionBar_Button
Hint=Huidige transactie afsluiten
[dlgWisql.IB_TransactionBarDDL]
Class=TIB_TransactionBar_Button
Hint=Huidige transactie afsluiten
[dlgWisql.File1]
Class=TMenuItem
Caption=&Bestand
[dlgWisql.mnuEdit1]
Class=TMenuItem
Caption=B&ewerken
[dlgWisql.Edit1]
Class=TMenuItem
Caption=&Query
[dlgWisql.Database1]
Class=TMenuItem
Caption=&Databank
[dlgWisql.Help1]
Class=TMenuItem
Caption=&Help
[dlgWisql.SQLReference1]
Class=TMenuItem
Caption=&SQL Referentie
[dlgWisql.DialectAction1]
Class=TAction
Caption=Dialect &1
[dlgWisql.DialectAction2]
Class=TAction
Caption=Dialect &2
[dlgWisql.DialectAction3]
Class=TAction
Caption=Dialect &3
[dlgWisql.QueryPrevious]
Class=TAction
Caption=&Vorige
Hint=Vorige Query
[dlgWisql.QueryNext]
Class=TAction
Caption=&Volgende
Hint=Volgende Query
[dlgWisql.QueryExecute]
Class=TAction
Caption=&Uitvoeren
Hint=Query uitvoeren
[dlgWisql.QueryLoadScript]
Class=TAction
Caption=&Script laden
Hint=Load SQL Script
[dlgWisql.QuerySaveScript]
Class=TAction
Caption=&Script opslaan
Hint=Opslaan script
[dlgWisql.QueryOptions]
Class=TAction
Caption=O&pties ...
Hint=Query Opties
[dlgWisql.QuerySaveOutput]
Class=TAction
Caption=Bewaar &resultaat
Hint=Bewaar het resultaat van de query
[dlgWisql.QueryPrepare]
Class=TAction
Caption=&Voorbereiden
Hint=Bereid de query voor om uit te voeren
[dlgWisql.EditOptions]
Class=TAction
Caption=&Opties ...
Hint=Toon ISQL Opties
[dlgWisql.FileClose]
Class=TAction
Caption=&Sluiten
Hint=Sluit het ISQL venster
[dlgWisql.EditFind]
Class=TAction
Caption=&Zoeken ...
[dlgWisql.EditFont]
Class=TAction
Caption=&Lettertype ...
[dlgWisql.EditCopy1]
Class=TEditCopy
Caption=&Kopiëren
Hint=Kopiëren
[dlgWisql.EditCut1]
Class=TEditCut
Caption=Kn&ippen
Hint=Knippen
[dlgWisql.EditPaste1]
Class=TEditPaste
Caption=&Plakken
Hint=Plakken
[dlgWisql.EditSelectAll1]
Class=TEditSelectAll
Caption=&Alles selecteren
[dlgWisql.EditUndo1]
Class=TEditUndo
Caption=&Ongedaan maken
[dlgWisql.DatabaseConnectAs]
Class=TAction
Caption=Verbinden &als ...
[dlgWisql.DatabaseDisconnect]
Class=TAction
Caption=&Verbinding sluiten
[dlgWisql.DatabaseCreate]
Class=TAction
Caption=&Databank aanmaken ...
[dlgWisql.DatabaseDrop]
Class=TAction
Caption=Databank ver&wijderen
[dlgWisql.Print]
Class=TAction
Caption=A&fdrukken
[dlgWisql.SaveSQLHistory]
Class=TAction
Caption=SQL Historiek bewaren
Hint=SQL Historiek bewaren
[dlgWisql.LoadSQLHistory]
Class=TAction
Caption=SQL Historiek inlezen
Hint=SQL Historiek inlezen
[dlgWisql.QueryFetchAll]
Class=TAction
Caption=Alles ophalen
Hint=Alles ophalen
[dlgWisql.NewConnection]
Class=TAction
Caption=Nieuwe verbinding...
[dlgWisql.EditRedo]
Class=TAction
Caption=Opnieuw uitvoeren
[frmDBConnect]
Class=TfrmDBConnect
Caption=Databank verbinden
[frmDBConnect.lblDatabaseName]
Class=TLabel
Caption=Databank:
[frmDBConnect.lblUsername]
Class=TLabel
Caption=&Gebruikersnaam:
[frmDBConnect.lblPassword]
Class=TLabel
Caption=&Wachtwoord:
[frmDBConnect.lblRole]
Class=TLabel
Caption=&Rol:
[frmDBConnect.Label1]
Class=TLabel
Caption=Client &Dialect:
[frmDBConnect.Label2]
Class=TLabel
Caption=Karakter &Set
[frmDBConnect.lblDatabase]
Class=TLabel
Caption=
[frmDBConnect.btnConnect]
Class=TButton
Caption=Ver&binden
[frmDBConnect.btnCancel]
Class=TButton
Caption=&Annuleren
[frmDBConnect.cbCaseSensitive]
Class=TCheckBox
Caption=Rol (Hoofdlettergevoelig)
[frmMain]
Class=TfrmMain
Caption=IBOConsole
[frmOptions.Label1]
Class=TLabel
Caption=Voorbeeld huidig lettertype.^MThe quick brown fox jumped over the lazy dog.
[frmSQLOptions]
Class=TfrmSQLOptions
Caption=SQL Opties
[frmSQLOptions.btnApply]
Class=TButton
Caption=&Toepassen
[frmSQLOptions.btnOK]
Class=TButton
Caption=&OK
[frmSQLOptions.pgControl]
Class=TPageControl
Hint=
PageCount=2
[frmSQLOptions.pgControl.TabSheet1]
Class=TTabSheet
Caption=Opties
[frmSQLOptions.pgControl.TabSheet2]
Class=TTabSheet
Caption=Geavanceerd
[frmSQLOptions.TabSheet1]
Class=TTabSheet
Caption=Opties
[frmSQLOptions.cbClearInput]
Class=TCheckBox
Caption=&Ingave venster leegmaken bij succes
[frmSQLOptions.TabSheet2]
Class=TTabSheet
Caption=Geavanceerd
[frmSQLOptions.GroupBox1]
Class=TGroupBox
Caption=SQL gebeurtenissen
[frmSQLOptions.Label1]
Class=TLabel
Caption=NOTE:
[frmSQLOptions.cbUpdateConnect]
Class=TCheckBox
Caption=IBOConsole bijwerken bij verbinden
[frmSQLOptions.cbUpdateCreate]
Class=TCheckBox
Caption=IBOConsole bijwerken bij Aan&maken
[frmSQLOptions.rgTransactions]
Class=TGroupButton
Caption=Ro&llback bij afsluiten
Items.Count=2
Item0=&Commit bij afsluiten
Item1=Ro&llback bij afsluiten
[frmSQLOptions.btnCancel]
Class=TButton
Caption=&Annuleren
;
;
;
;
[prompts]
;
;to insert a line break use ^M
;be careful to leave the same number of %s and %d in text!!
;
; Prompt used in confirm and warning dialog box defined in unit LMMessageDialog.pas
; and called in substitution of MessageDlg
;
prompt0=OK om %s te vervangen
prompt1=Kon het bestand "%s" niet openen.
prompt2=Nog niet in kylix
prompt3=Geselecteerde databank verwijderen, bent U zeker ?
prompt4=Er zijn nog actieve Transacties.^MWilt U deze committen?^M^MNee kiezen zal de transacties rollbacken
prompt5=Gegevens bewaard in bestand: %s
prompt6=Formaat niet aangegeven
prompt7=Query resultaat bewaren
prompt8=%s nieuw %s moet een naam hebben.
prompt9=%s %s naam is nog steeds de standaard. Bent U zeker dat U de standaard naam wil gebruiken?
prompt10=%s %s %s is gewijzigd. Wilt U de wijzigingen bewaren?
prompt11=Bent U zeker dat U de registrate vande databank wil verwijderen?
prompt12=Bent U zeker dat U de verbinding met de geselecteerde databank wil verbreken?
prompt13=Een grote databank sweepen kan lang duren en vormt een grote belasting voor de server. Wenst U de sweep alsnog uit te voeren?
prompt14=Bent U zeker dat U de geselecteerde databank wil verwijderen?
prompt15=Bent U zeker dat U de verbinding met de server wil verbreken?
prompt16=Ongeldige optie waarde
prompt17=Herstellen van Limbo transacties compleet.
prompt18=De bovengrens van de reeks moet kleiner zijn dan de ondergrens.
prompt19=De primaire sleutel constraint moet een naam hebben
prompt20=De unieke sleutel constraint moet een naam hebben
prompt21=Selecteer de velden voor de primaire sleutel
prompt22=Selecteer de velden voor de unieke sleutel
prompt23=De externe sleutel bepreking moet een naam hebben
prompt24=Kies het veld dat U wil gebruiken voor de foreign key.
prompt25=Kies het veld dat U wil gebruiken voor de foreign key referentie.
prompt26=De Check beperking moet een naam hebben
prompt27=De Check beperking moet een uitdrukking bevatten
prompt28=Bent U zeker dat U deze dimensie wil verwijderen?
prompt29=De omschrijving kan niet worden veranderd alvorens het object gecompileerd is.
prompt30=Veranderingen in de omschrijving bewaren?
prompt31=De uitzondering moet een bericht hebben.
prompt32=De nieuwe tabelmoet een naam hebben.
prompt33=Een veld verplicht maken vereist dat een waarde wordt ingevuld in bestaande velden, of backups zullen onbruikbaar zijn^M^MWil U voortgaan en een in te vullen waarde specifieren?
prompt34=Verplicht veld ongedaan maken is onveilig indien het veld deel uitmaakt van een unieke index, backups zullen onbruikbaar zijn^M^MWenst U voort te gaan?
prompt35=De omschrijving voor %s %s is gewijzigd. Wenst U de verandering te bewaren?
prompt36=Selecteer de velden die in de index gebruikt moeten worden
prompt37=U kan de metadata niet bekijken totdat het object gecompileerd is.
prompt38=U kan de scherm layout niet veranderen totdat het object gecompileerd is.
prompt39=Er is een actieve transactie voor de resultaten - Doe een Commit of Rollback alvorens de layout te veranderen.
prompt40=De Stored Procedure broncode is gewijzigd. Opnieuw compileren?
prompt41=Stored Procedure uitvoeren...
prompt42=Stored Procedure - %s - Bezig
prompt43=%s %s verwijderen - bent U zeker?
prompt44=Wilt U alle zichtbare records uit tabel %s verwijderen ?
prompt45=De trigger moet een positie krijgen.
prompt46=De trigger moet een naam hebben.
prompt47=De UDF moet een togangspunt hebben.
prompt48=De UDF moet een bibliotheek hebben.
prompt49=De UDF moet een resultaat parameter hebben.
prompt50=Bent U zeker dat U deze parameter wil verwijderen?
prompt51=Bent U zeker dat U deze dimensie wil verwijderen?
prompt52=Het veld moet een naam hebben.
prompt53=De domein naam is leeg.
prompt54=Er is geen uitdrukking voor de berekening.
prompt55=U moet een parameter ingeven.
prompt56=Het Plan kon niet worden opgehaald
prompt57=Kon het script niet valideren
prompt58=Geen actieve verbinding
prompt59=Er was een fout bij het scannen van het CONNECT commando.
prompt60=Huidige transactie Committen of Rollbacken
prompt61=Er was een fout bij het scannen van het CREATE commando.
prompt62=Ongeldig client dialect
prompt63=Kon het bestand niet openen
prompt64=Databank dialect (%d) stemnt niet overeen met client dialect (%d).
prompt65=Kon het client dialect niet instellen op %d
prompt66=Kon de reeks informatie niet tonen
prompt67=Zoek term '%s' niet gevonden
prompt68=Kon het script niet parsen
prompt69=Bent U zeker dat U de registratie van %s wil verwijderen?
prompt70=Bent U zeker dat U "%s" uit de alias lijst wil verwijderen?
prompt71=Bent U zeker dat U gebruiker: %s wil verwijderen?
prompt72=Er is een fout opgetreden bij het aanmaken van de map %s. De operatie werd afgelast
prompt73=De map %s bestaat niet. Wilt U ze aanmaken?
prompt74=Er is een fout opgetreden tijdens het connecteren met '%s'. Deze server kan een eerdere versie zijn. Hierdoor kunnen sommige mogelijkheden van het programma niet functioneren.
prompt75=Probeer een verbinding te maken met %s met NetBEUI.%s%s
prompt76=Met succes verbonden met %s met gebruik van %s de volgende benoemde pijp: %s %s.%S%S NetBEUI Communicatie test geslaagd!
prompt77=Een fout trad op tijdens de verbinding met %s%s gebruik makende van de volgende benoemde pijp:%s%s%s%sNetBEUI Communicatie Test mislukt!
prompt78=Kon de Netware client bibliotheek niet initializeren.%s%sSPX Communicatie test mislukt!
prompt79=Tracht te verbinden met %s gebruik makend van SPX.%s%s
prompt80=Een fout trad op tijdens de verbinding met %s%s gebruik makend van het SPX protocol.%s%sSPX Communicatie test mislukt!
prompt81=Met succes verbonden met %s%s met gebruik van het SPX protocol.SPX Communication Test geslaagd!
prompt82=Een fout trad op tijdens de verbinding met %s%s gebruik makend van het SPX protocol.%s%sU hebt de correcte netware client niet geinstalleerd.%s%sSPX Communicatie test mislukt!
prompt83=De gebruiker die U wenst te verwijderen is de gebruiker waarmee U bent aangemeld.%s Bent U zeker dat U de volgende gebruik wil verwijderen: %s?
prompt84=Tracht te verbinden met:
prompt85=Verbinden met   ... Passed!
prompt86=Verbinding ongedaan maken    ... Passed!
prompt87=Er trad een server fout op bij het verbreken van de verbinding.
prompt88=Er trad een server fout op bij het leggen van de verbinding.
prompt89=Server Communicatie test geslaagd!
prompt90=Server Communicatie test mislukt!
prompt91=Probeer verbinding te maken met %s.
prompt92=Socket voor verbinding verkregen.
prompt93=Socket aanvraag mislukt
prompt94=Verre socket aanvraag mislukt
prompt95=Verre socket heeft niet geantwoord
prompt96=Kon geen verbinding maken met machine '%s',
prompt97=op poort %s. Fout Nr: 
prompt98=Verbinding gemaakt met machine '%s',
prompt99=op poort %s
prompt100=TCP/IP Communicatie test geslaagd!
prompt101=TCP/IP Communicatie test mislukt!
prompt102=Pingen %s [%s] met %d bytes data:
prompt103=%d bytes van %s: icmp_seq=%d ttl=%d time%s%d ms
prompt104=Kritieke verbindingsfout
prompt105=Kan bestands versie infmatie niet ophalen voor %s
prompt106=  Server machine: %s
prompt107=is in limbo
prompt108=is gecommit
prompt109=is rolled back
prompt110=is in een ongekende toestand
prompt111=  Transactie %d %s.
prompt112=  Andere machine: %s
prompt113=  Databank Pad: %s
prompt114=Aanbevolen actie: %s
prompt115=Kies een item uit de Transacties.
prompt116=Herstellen transactie %s
prompt117=Kies een transactie voor informatie over die transactie.
prompt118=Secundaire bestanden niet beschikbaar.
prompt119=Databank eigenaar niet beschikbaar.
prompt120=Het Sweep interval moet een waarde zijn tussen %d en %d.  Geef een geldige waarde voor het interval.
prompt121=Databank eigenschappen kunnen niet aangepast worden als de databank alleen-lezen is.
prompt122=Null moet "NULL" zijn of leeg
prompt123=Kan NULL niet bewerken
prompt124=Wanneer %s verwijderd is kan het niet meer aangesproken worden.^MWilt U voortgaan?
prompt125=U moet een validatie optie opgeven
prompt126=Kan niet gebruikt worden om pre-InterBase 6.0 servers te beheren.
;
;
[error_messages]
; Heading un message box used to show errors, unit frmuMessage.pas
;
;Warning:
;localize only the right side
;do not localize and leave case as is on the left side
;
;
ERR_SYSTEM_INIT=Initializatie fout.
ERR_USERNAME=Ongeldige gebruikersnaam. Geef een geldige gebruikersnaam.
ERR_PASSWORD=Ongeldig wachtwoord. Geef een geldig wachtwoord.
ERR_PASSWORD_MISSMATCH=Het wachtwoord komt niet overeen met het de bevestiging.
ERR_ADD_USER=Kon geen gebruiker toevoegen.
ERR_MODIFY_USER=Kon de gebruikersgegevens niet wijzigen.
ERR_DELETE_USER=Kon de gebruiker niet verwijderen.
ERR_GET_USERS=Kon de gebruikerslijst niet ophalen.
ERR_GET_USER_INFO=Kon de gebruikersinformatie niet ophalen.
ERR_SOURCE_DB=Ongeldige bron databank naam. Gelieve een geldige databank naam op te geven.
ERR_DESTINATION_DB=Ongeldige doel databank naam. Gelieve een geldige databank naam op te geven.
ERR_SAME_SOURCE_DESTINATION=Bron en doel moeten verschillend zijn.
ERR_DB_FILE=Ongeldig of onbestaand databank bestand.
ERR_SERVER_NAME=Ongeldige server naam. Gelieve een geldige server naam op te geven.
ERR_PROTOCOL=Ongeldig netwerk protocol. Gelieve een netwerk protocol uit de lijst te kiezen.
ERR_BACKUP_DB=Databank backup mislukt.
ERR_RESTORE_DB=Databank terugezetten mislukt.
ERR_GET_TABLES=Kon geen lijst van tabellen ophalen.
ERR_GET_VIEWS=Kon geen lijst van views ophalen..
ERR_SERVICE=Ongeldige service. Geleieve een service uit de lijst te selecteren.
ERR_NUMERIC_VALUE=Ongeldige numerische waarde. Gelieve een geldige numerische waarde op te geven.
ERR_GET_TABLE_DATA=Kon de gegevens niet ophalen.
ERR_DB_ALIAS=Ongeldig databank alias. Gelieve een geldige databank naam op te geven.
ERR_GET_ROLES=Kon de lijst van rollen niet ophalen.
ERR_SERVER_LOGIN=Fout bij het aanmelden aan de gevraagde server.
ERR_DB_CONNECT=Fout bij het verbinden met de gevraagde databank.
ERR_DB_DISCONNECT=Fout bij het verbreken van de verbinding met de databank.
ERR_GET_PROCEDURES=Kon geen lijst van procedures ophalen.
ERR_GET_FUNCTIONS=Kon geen lijst van functies ophalen.
ERR_GET_GENERATORS=Kon geen lijst van generatore ophalen.
ERR_GET_EXCEPTIONS=Kon geen lijst van uitzonderingen ophalen.
ERR_GET_BLOB_FILTERS=Kon geen lijst van blob filters ophalen.
ERR_GET_COLUMNS=Kon geen lijst van velden ophalen.
ERR_GET_INDICES=Kon geen lijst van indices ophalen.
ERR_GET_REFERENTIAL_CONST=Kon geen lijst van verwijzingsbeperkingen ophalen.
ERR_GET_UNIQUE_CONST=Kon geen lijst van unieke beperkingen ophalen.
ERR_GET_CHECK_CONST=Kon geen lijst van check beperkingen ophalen.
ERR_GET_TRIGGERS=Kon geen lijst van triggers ophalen.
ERR_GET_DDL=Er is een fout opgetreden bij het extraheren van metadata informatie.
ERR_INVALID_PROPERTY_VALUE=Ongeldige waarde voor eigenschap.
ERR_GET_DEPENDENCIES=Er is een fout opgetreden bij het ophalen van afhankelijkheidsinformatie.
ERR_GET_DB_PROPERTIES=r is een fout opgetreden wij het ophalen de databank eigenschappen.
ERR_DB_SIZE=Ongeldige grootte van databank bestand.
ERR_ISQL_ERROR=SQL fout
ERR_SERVER_SERVICE=Service fout
ERR_EXTERNAL_EDITOR=Externe bewerkingsfout
ERR_SERVER_ALIAS=Ongeldig server alias. Gelieve een geldig server alias op te geven.
ERR_BACKUP_ALIAS=Ongeldig backup alias. Gelieve een geldig backup alias op te geven.
ERR_DB_SHUTDOWN=Database afsluiten mislukt.
ERR_MODIFY_DB_PROPERTIES=Kon de databank eigenschappen niet wijzigen.
ERR_DROP_DATABASE=Er is een fout opgetreden bij het verwijderen van de databank.
ERR_FILE_OPEN=Er is een fout opgetreden bij het openen van het bestand.
ERR_INV_EDITOR=Het aangegegevn bewerkingsprogramma is niet geldig.
ERR_EDITOR_MISSING=Het aangegegevn bewerkingsprogramma is niet opgegeven.
ERR_BAD_FORMAT=Kon de blob niet tonen. Het formaat is niet grafisch.
ERR_INV_DIALECT=Kon het client dialect niet wijzigen.
ERR_FOPEN=Fout bij het openen van het bestand.
ERR_TEXT_NOT_FOUND=Zoekterm niet gevonden.
ERR_PRINT=Kon niet afdrukken. Zorg ervoor dat uw printer geïnstalleerd is en correct functioneert.
ERR_NO_PATH=Er werd geen bestandsnaam opgegeven voor de back-up of de databank.
ERR_NO_FILES=Er werd geen bestandsnaam opgegeven voor de back-up of het terugzetten van de databank.
ERR_GET_DOMAINS=Kon de lijst van domeinen niet ophalen.
ERR_EXT_TOOL_ERROR=Kon het externe gereedschap niet starten
ERR_PROPERTIES=Kon de eigenschappen van het object niet ophalen.
ERR_ALIAS_EXISTS=Ongeldig alias.  Dit alias bestaat reeds.
ERR_CANNOT_START_LOCALIB=Kan de lokale interbase niet starten.
ERR_SERVER_REGISTER=Er is een fout opgetreden bij het registreren van een server.
ERR_SERVER_UNREGISTER=Er is een fout opgetreden bij het verwijderen van een server-registratie.
ERR_DATABASE_REGISTER=Er is een fout opgetreden bij het registreren van een databank.
ERR_DATABASE_UNREGISTER=Er is een fout opgetreden bij het verwijderen van een databank-registratie.
ERR_DDL_EXECUTION=Er is een fout opgetreden tijdens het uitvoeren van een DDL commando.
;****** Warnings ******
WAR_NO_PERMISSION=Niet genoeg rechten voor deze operatie.
WAR_SERVER_REGISTERED=De server is reeds geregistreerd.
WAR_DUPLICATE_DB_ALIAS=Dit databank alias bestaat reeds.
WAR_BACKUP_FILE_REGISTERED=Het backup bestand is reeds geregistreerd.
WAR_DIALECT_MISMATCH=Het client dialect stemt niet overeen met het databank dialect.
WAR_REMOTE_FILENAME=De opgegeven bestandsnaam mag een servernaam bevatten.'+#13#10+'Sommige operaties zullen dan echter niet werken.
WAR_PERSISTENT_UPDATE=Kan de persistente informatie niet wijzigen.
;****** Information ******}
INF_ADD_USER_SUCCESS=De gebruiker werd met succes toegevoegd.
INF_BACKUP_DB_SUCCESS=Databank backup voltooid.
INF_RESTORE_DB_SUCCESS=Databank terugzetten voltooid.
INF_NO_PENDING_TRANSACTIONS=Er werden geen hangende transacties gevonden.
INF_RESTART_SERVER=U moet de server herstarten voor de veranderingen actief worden.
INF_DATABASE_SHUTDOWN=Databank met succes afgesloten.
INF_DATABASE_RESTARTED=Databank met succes opgestart.
INF_SQL_SCRIPT=SQL script voltooid.
INF_DATABASE_SWEEP=Databank sweep voltooid.
;****** InterBase Errors ******}
isc_gbak_db_exists=Om een bestaande databank te overschrijven, moet de 'overschrijven' optie opnstaan.
isc_gfix_invalid_sw=Een ongeldige parameter werd opgegeven voor deze operatie.
isc_gfix_incmp_sw=Er zijn conflicterende parameters opgegeven voor deze operatie.
isc_gfix_retry=Er werd geen operatie opgegeven.
isc_gfix_retry_db=Er werd geen databank opgegeven voor deze operatie.
isc_gbak_page_size_missing=De paginagrootte moet opgegegevn worden.
isc_gsec_cant_open_db=De beveiligingsdatabank kon niet geopend worden.
isc_gsec_no_usr_name=Ontbrekende gebruikersnaam. Een gebruikersnaam is vereist voor alle operaties.
isc_gsec_err_add=Een onbekende fout is opgetreden tijdens het toevoegen van het gebruikersrecord.
isc_gsec_err_modify=Een onbekende fout is opgetreden tijdens het wijzigen van het gebruikersrecord.
isc_gsec_err_find_mod=Een onbekende fout is opgetreden tijdens het zoeken/wijzigen van het gebruikersrecord.
isc_gsec_err_rec_not_found=De gebruikersinformatie werd niet gevonden.
isc_gsec_err_delete=Een onbekende fout is opgetreden tijdens het verwijderen van het gebruikersrecord.
isc_gsec_err_find_del=Een onbekende fout is opgetreden tijdens het zoeken/verwijderen van het gebruikersrecord.
isc_gsec_err_find_disp=Een onbekende fout is opgetreden tijdens het zoeken/tonen van het gebruikersrecord.
isc_sys_request=Een onbekende fout is opgetreden tijdens het openen van een bestand op de server.
;
;Warning:
;localize only the right side
;do not localize and leave case as is on the left side
;
;
[global]
;
; this are short expressions that are used in gui controls, if not supplied,
; they will display in English
;
Action=Actie
Name=Naam
Active=Actief
Allow Nulls=Mag leeg
Can Defer=Kan verlaten
Character Set=Karakter set
Collation=Collatie
Connections=Verbindingen
Current Value=Huidige waarde
Case Insensitive=Hoofdletterongevoelig
Database=Databank
Default Value=Standaard waarde
Delete Rule=Regel voor verwijderen
Descending=Neergaand
Description=Omschrijving
Entry=Toegangspunt
Error=Fout
Fields=Velden
Index=Index
Initially Deferred=Initieel verlaat
Input=Inkomend
Input/Output=inkomend/uitgaand
Last Accessed=Laatste toegang
Match Option=Corresponderende Optie
Member=Lid
Message=Boodschap
Modified=gewijzigd
Module=Module
Metadata for=Metadata voor
New=Nieuw
Output=Output
Owner=Eigenaar
objects listed=Getoonde objecten
Parameter=Parameter
Position=Positie
Path=Pad
Reference Table=referentietabel
Read-Only=Alleen-lezen
Type=Type
Unique=Unieke
Update Rule=Rol bijwerken
Y=J
N=N
Yes=Ja
No=Nee
Open=Openen
Form View=Scherm layout
Grid View=Rooster layout
Server=Server
User=Gebruiker
Warning=Waarschuwing
Information=Informatie
Confirmation=Bevestiging
Abort=Afbreken
All=Alles
Cancel=Annuleren
Close=Sluiten
Help=Help
OK=OK
Retry=Opnieuw
Yes To All=Ja op alles
No To All=Nee op alles
Active Windows on=Actieve vensters op
File=Bestand
Interactive SQL=Interactieve SQL
Rows Affected=Getroffen rijen
Not Available=Niet beschikbaar
Execution Time=Uitvoeringstijd
Prepare Time=Voorbereidingstijd
Starting Memory=Start geheugen
Current Memory=Huidig geheugen
Delta Memory=Verschil in geheugen
Number of Buffers=Aantal buffers
Reads=Leesoperaties
Writes=Schrijfoperaties
Plan=Plan
Statement=Commando
is unknown=is onbekend
Not Connected=Niet verbonden
Client dialect=Client dialect
Version=Versie
All Options=Alle opties
Data Pages=Gegevens paginas
Database Log=Databank logboek
Header Page=Hoofding pagina
Index Pages=Index paginas
System Relations=Systeemrelaties
Show data for:=Toon gegevens voor:
By Value=Via waarde
By Reference=Via referentie
No Connection=Geen verbinding
Transaction=Transactie
Commit=Commit
Rollback=Rollback
Unknown=Onbekend
In Limbo=In limbo
Multi-Database Transaction=Multi-databank transactie
Fixed=Vaste
Transportable=Transporteerbaar
Non-Transportable=Niet-transporteerbaar
True=Waar
False=Onwaar
Process=Proces
Ignore=Negeren
None=Geen
To Screen=Naar scherm
To File=Naar bestand
Select Verbose File=Kies log bestand
Select Database=Kies databank
Enabled=Actief
Disabled=Niet actief
Forced Writes=Verplicht schrijven
Sweep Interval=Sweep interval
Database Dialect=Databank dialect
Read Only=Alleen-lezen
No input=Geen ingave
Metadata Only=Alleen metadata
Garbage Collection=Vuilnis verzamelen.
Checksums=Checksom
Convert to Tables=Omzetten naar tabellen
Transactions in Limbo=Transacties in Limbo
Verbose Output=Uitgebreide log
Filename(s)=Bestandsnam(en)
Size(Bytes)=Grootte(bytes)
Text File=Tekst bestand
All files=Alle bestanden
Format=Formaat
Value for=Waarde voor
Replace NULL with=NULL veranderen door
Validate Record Fragments=Record delen valideren
Read Only Validation=Alleen-lezen validatie
Ignore Checksum Errors=Checksom fouten negeren
Service started at=Service gestart op
Service ended at=Service geëindigd op
Running=Bezig
Restore=Terugzetten
Ignore=Negeren
Database Restore=Databank terugzeten
Commit After Each Table=Commit na elke tabel
Create Shadow Files=Schaduw bestanden aanmaken
Deactivate Indices=Indexen deactiveren
Validity Conditions=Validatie regels
Use All Space=Alle ruimte gebruiken
Pages=Paginas
;
;
;
[node_articles]
; As Italians knows (like I am), there are some language that don't have
; undefined gender, in Italian everything is male or female, whe don't have "it".
; In English can be said "the server" and "the servers", in Italian whe say
; "Il Server" and "I Servers" italian articles also have gender,
; so in Italian whe can have four forms of the same article
; single male, plural male, single female and plural female
; but the articles are more than one "il" "lo"
;
Servers=De
Server=De
Databases=De
Database=De
Backup=De
Users=De
User=De
Certificates=De
Certificate=De
Domains=De
Domain=De
Tables=De
Table=De
Views=De
View=De
Stored Procedures=De
Stored Procedure=De
External Functions=De
External Function=De
Generators=De
Generator=De
Exceptions=De
Exception=De
Blob Filters=De
Blob Filter=De
Roles=De
Role=De
Columns=De
Column=De
Indexes=De
Index=De
Referential Constraints=De
Referential Constraint=De
Unique Constraints=De
Unique Constraint=De
Check Constraints=De
Check Constraint=De
Triggers=De
Trigger=De
Server Log=De
Unknown=De
;
;
;
[node_types]
;
; Localize here the name of the object in main form left treeview and editor forms
; example:
;---English-- --Italian--
;Certificates=Certificati
;Certificate=Certificato
;
;
Servers=Servers
Server=Server
Databases=Databanken
Database=Databank
Backup=Backup
Users=Gebruikers
User=Gebruiker
Certificates=Certificaten
Certificate=Certificaat
Domains=Domeinen
Domain=Domein
Tables=Tabellen
Table=Tabel
Views=Views
View=View
Stored Procedures=Stored Procedures
Stored Procedure=Stored Procedures
External Functions=Externe Functies
External Function=Externe Functie
Generators=Generatoren
Generator=Generator
Exceptions=Uitzonderingen
Exception=Uitzondering
Blob Filters=Blob Filters
Blob Filter=Blob Filter
Roles=Rollen
Role=Rol
Columns=Kolommen
Column=Kolom
Indexes=Indices
Index=Index
Referential Constraints=Referentiele beperkingen
Referential Constraint=Referentiele beperking
Unique Constraints=Unieke beperkingen
Unique Constraint=Unieke beperking
Check Constraints=Check beperkingen
Check Constraint=Check beperkingen
Triggers=Triggers
Trigger=Trigger
Server Log=Server logboek
Unknown=Onbekend