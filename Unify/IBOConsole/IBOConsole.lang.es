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
;  Catalan=ca
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
;  Russian=ru
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
Column0.Caption=Nombre
Column1.Caption=Valor
[frmMain.FrameGenerators1.NewGenerator1]
Class=TMenuItem
Caption=Nuevo Generador
Hint=
[frmMain.FrameGenerators1.EditGenerator1]
Class=TMenuItem
Caption=Editar Generador
Hint=
[frmMain.FrameGenerators1.DropGenerator1]
Class=TMenuItem
Caption=Eliminar Generador
Hint=
[frmMain.Console1]
Class=TMenuItem
Caption=&Consola
Hint=
[frmMain.View1]
Class=TMenuItem
Caption=&Ver
Hint=
[frmMain.Server1]
Class=TMenuItem
Caption=&Servidor
Hint=
[frmMain.Database1]
Class=TMenuItem
Caption=Base de &Datos
Hint=
[frmMain.Maintenance2]
Class=TMenuItem
Caption=&Mantenimiento
Hint=
[frmMain.BackupRestore1]
Class=TMenuItem
Caption=Respaldo / Recuperación
Hint=
[frmMain.ConnectAs3]
Class=TMenuItem
Caption=Nueva conexión ...
Hint=SQL Interactivo
[frmMain.Help1]
Class=TMenuItem
Caption=Ay&uda
Hint=
[frmMain.Maintenance1]
Class=TMenuItem
Caption=&Mantenimiento
Hint=
[frmMain.BackupRestore2]
Class=TMenuItem
Caption=Respaldo / Recuperación
Hint=
[frmMain.ConsoleExit]
Class=TAction
Caption=&Salir
Hint=Salir de IBOConsole
[frmMain.ViewList]
Class=TAction
Caption=&Lista
Hint=
[frmMain.ViewReport]
Class=TAction
Caption=&Detalles
Hint=
[frmMain.ViewIcon]
Class=TAction
Caption=Iconos Gr&andes
Hint=
[frmMain.ViewSmallIcon]
Class=TAction
Caption=Ico&nos Pequeños
Hint=
[frmMain.ViewProperties]
Class=TAction
Caption=&Propiedades ...
Hint=Ver Propiedades de los Objetos
[frmMain.ViewSystem]
Class=TAction
Caption=Datos del S&istema
Hint=
[frmMain.HelpContents]
Class=THelpContents
Caption=&Contenido
Hint=
[frmMain.HelpOnHelp]
Class=THelpOnHelp
Caption=Ay&uda sobre la Ayuda
Hint=
[frmMain.HelpTopicSearch]
Class=THelpTopicSearch
Caption=Búsqueda de &Topicos
Hint=
[frmMain.HelpAbout]
Class=TAction
Caption=&Acerca de ...
Hint=
[frmMain.EditCopy]
Class=TEditCopy
Caption=&Copiar
Hint=Copiar
[frmMain.EditCut]
Class=TEditCut
Caption=Cor&tar
Hint=Cortar
[frmMain.EditPaste]
Class=TEditPaste
Caption=&Pegar
Hint=Pegar
[frmMain.EditSelectAll]
Class=TEditSelectAll
Caption=Seleccionar &Todo
Hint=
[frmMain.EditUndo]
Class=TEditUndo
Caption=&Deshacer
Hint=
[frmMain.EditFont]
Class=TAction
Caption=&Fuente ...
Hint=Cambiar la fuente
[frmMain.WindowList]
Class=TAction
Caption=&Ventanas
Hint=
[frmMain.UserAdd]
Class=TAction
Caption=&Agregar Usuario ...
Hint=Agregar un nuevo usuario
[frmMain.UserModify]
Class=TAction
Caption=&Modificar Usuario ...
Hint=Modificar datos de un usuario
[frmMain.UserDelete]
Class=TAction
Caption=&Borrar Usuario
Hint=Borrar un usuario
[frmMain.ServerLogout]
Class=TAction
Caption=D&esconectar
Hint=Desconectar del servidor seleccionado
[frmMain.ServerSecurity]
Class=TAction
Caption=&Administración de Usuarios ...
Hint=Administración de Usuarios del servidor
[frmMain.ServerProperties]
Class=TAction
Caption=&Propiedades ...
Hint=Mostrar propiedades del Servidor
[frmMain.DatabaseDisconnect]
Class=TAction
Caption=&Desconectar
Hint=Desconectar de la Base de Datos seleccionada
[frmMain.DatabaseProperties]
Class=TAction
Caption=&Propiedades ...
Hint=Mostrar propiedades de la Base de Datos
[frmMain.DatabaseStatistics]
Class=TAction
Caption=&Estadísticas de la Base de Datos ...
Hint=Desplegar estadísticas de la base de datos
[frmMain.DatabaseShutdown]
Class=TAction
Caption=&Detener ...
Hint=Detiene el acceso de los usuarios normales a la base de datos
[frmMain.DatabaseSweep]
Class=TAction
Caption=&Barrido
Hint=Ejecuta un barrido en la Base de Datos
[frmMain.DatabaseRecoverTrans]
Class=TAction
Caption=Recuperación de &Transacciones ...
Hint=Recupera transacciones en el limbo
[frmMain.DatabaseMetadata]
Class=TAction
Caption=Ver &Metadatos ...
Hint=Ver Metadatos de la Base de Datos
[frmMain.DatabaseRestart]
Class=TAction
Caption=&Reiniciar Base de Datos
Hint=Reiniciar la base de datos
[frmMain.DatabaseDrop]
Class=TAction
Caption=&Eliminar Base de Datos
Hint=Elimina la base de datos seleccionada
[frmMain.DBCBackup]
Class=TAction
Caption=Respaldar Base de Datos
Hint=Sacar un respaldo de la base de datos
[frmMain.DatabaseUsers]
Class=TAction
Caption=&Usuarios Conectados ...
Hint=Ver la lista de usuarios actualmente conectados al servidor
[frmMain.DBCRestore]
Class=TAction
Caption=Recuperar Base de Datos
Hint=Recuperar la base de datos desde un respaldo
[frmMain.ServerLogin]
Class=TAction
Caption=&Conectar ...
Hint=Conectar al servidor seleccionado
[frmMain.ServerRegister]
Class=TAction
Caption=&Registrar ...
Hint=Registrar un nuevo Servidor
[frmMain.ServerUnregister]
Class=TAction
Caption=&Des-Registrar
Hint=Desregistrar un Servidor
[frmMain.ServerConnection]
Class=TAction
Caption=&Diagnostique la Conexión ...
Hint=Diagnostique la conexión a un servidor
[frmMain.ServerActionProps]
Class=TAction
Caption=&Propiedades ...
Hint=Ver propiedades del Servidor
[frmMain.DatabaseRegister]
Class=TAction
Caption=&Registrar ...
Hint=Registrar una nueva Base de Datos
[frmMain.DatabaseUnregister]
Class=TAction
Caption=&Desregistrar
Hint=Desregistrar la Base de Datos seleccionada
[frmMain.DatabaseConnect]
Class=TAction
Caption=&Conectar
Hint=Conectar a la Base de Datos seleccionada
[frmMain.DatabaseConnectAs]
Class=TAction
Caption=Conectar C&omo ...
Hint=Conectar a la Base de Datos seleccionada especificando un usuario
[frmMain.DatabaseCreate]
Class=TAction
Caption=C&rear Base de Datos ...
Hint=Crear una nueva Base de Datos
[frmMain.DatabaseValidate]
Class=TAction
Caption=&Validación ...
Hint=Validar la estructura de la Base de Datos
[frmMain.DatabaseActionsProperties]
Class=TAction
Caption=Propiedades ...
Hint=Mostrar propiedades de la Base de Datos
[frmMain.ExtToolsLaunchISQL]
Class=TAction
Caption=S&QL Interactivo ...
Hint=SQL Interactivo
[frmMain.ExtToolsConfigure]
Class=TAction
Caption=&Configurar Herramientas ...
Hint=
[frmMain.ExtToolDropDown]
Class=TAction
Caption=&Herramientas
Hint=
[frmMain.DatabaseBackup]
Class=TAction
Caption=&Respaldo ...
Hint=Respaldar una Base de Datos
[frmMain.DatabaseRestore]
Class=TAction
Caption=&Recuperar ...
Hint=Recuperar una Base de Datos de un respaldo
[frmMain.BackupRestoreModifyAlias]
Class=TAction
Caption=&Modificar Alias del Respaldo ...
Hint=Modificar el alias de un respaldo existente
[frmMain.BackupRestoreRemoveAlias]
Class=TAction
Caption=&Borrar Alias
Hint=Borrar el alias del respaldo seleccionado
[frmMain.ViewServerLog]
Class=TAction
Caption=&Ver archivo de Registro ...
Hint=Ver archivo de registro del servidor seleccionado
[frmMain.ObjectDescription]
Class=TAction
Caption=Editar &Descripción ...
Hint=Cambiar la descripción de un objeto
[frmMain.ObjectCreate]
Class=TAction
Caption=&Crear ...
Hint=Crear un nuevo objeto del tipo seleccionado
[frmMain.ObjectModify]
Class=TAction
Caption=&Modificar ...
Hint=Modificar el objeto seleccionado
[frmMain.ObjectDelete]
Class=TAction
Caption=&Borrar ...
Hint=Eliminar el objeto seleccionado
[frmMain.ObjectExtract]
Class=TAction
Caption=E&xtractar ...
Hint=Extractar metadatos del objeto seleccionado
[frmMain.ObjectProperties]
Class=TAction
Caption=&Propiedades ...
Hint=
[frmMain.ObjectRefresh]
Class=TAction
Caption=&Actualizar
Hint=
[frmMain.HighlightOptions]
Class=TAction
Caption=Opciones para Destacar Sintaxis
Hint=
[frmMain.DatabaseWindows]
Class=TAction
Caption=&Ventanas de Base de Datos
Hint=
[frmMain.ActionOptions]
Class=TAction
Caption=Opciones ...
Hint=
[frmMain.actHighlightOptions]
Class=TAction
Caption=Opciones para Destacar Sintaxis ...
Hint=
[frmMain.Test1]
Class=TMenuItem
Caption=Probar
Hint=
[frmOptions]
Class=TfrmOptions
Caption=Opciones
Hint=
[frmOptions.btnApply]
Class=TButton
Caption=A&plicar
Hint=
[frmOptions.btnOK]
Class=TButton
Caption=&Aceptar
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
Caption=Idioma
Hint=
[frmOptions.DDLRadioGroup]
Class=TGroupButton
Caption=Transacciones DDL
Hint=
Items.Count=2
Item0=Commit &Automático
Item1=Commit &Manual
[frmOptions.CheckBox1]
Class=TCheckBox
Caption=Forzar Identificadores en Mayúsculas
Hint=
[frmOptions.ButtonChangeFont]
Class=TButton
Caption=Cambiar Fuente
Hint=
[frmOptions.btnCancel]
Class=TButton
Caption=&Cancelar
Hint=
[frmEditorOptions]
Class=TfrmEditorOptions
Caption=Opciones de Sintaxis del Editor
Hint=
[frmEditorOptions.Label1]
Class=TLabel
Caption=Color
Hint=
[frmEditorOptions.Label2]
Class=TLabel
Caption=Elemento
Hint=
[frmEditorOptions.GroupBox1]
Class=TGroupBox
Caption=Estilo de Texto
Hint=
[frmEditorOptions.chkBold]
Class=TCheckBox
Caption=&Negrita
Hint=
[frmEditorOptions.chkItalic]
Class=TCheckBox
Caption=&Cursiva
Hint=
[frmEditorOptions.chkUnderline]
Class=TCheckBox
Caption=&Subrayada
Hint=
[frmEditorOptions.Button1]
Class=TButton
Caption=&Aceptar
Hint=
[frmEditorOptions.Button2]
Class=TButton
Caption=&Cancelar
Hint=
[frmEditorOptions.GroupBox2]
Class=TGroupBox
Caption=Use opciones por omisión para
Hint=
[frmEditorOptions.chkDefaultFG]
Class=TCheckBox
Caption=Primer plano por omisión
Hint=
[frmEditorOptions.chkDefaultBG]
Class=TCheckBox
Caption=Fondo por omisión
Hint=
[frmEditorOptions.Label3]
Class=TLabel
Caption=Courier New
Hint=
[frmEditorOptions.ButtonChangeFont]
Class=TButton
Caption=Cambiar Fuente
Hint=
[frmServerLogin]
Class=TfrmServerLogin
Caption=Conectar al Servidor
Hint=
[frmServerLogin.lblServerName]
Class=TLabel
Caption=Servidor:
Hint=
[frmServerLogin.lblUsername]
Class=TLabel
Caption=&Nombre de Usuario:
Hint=
[frmServerLogin.lblPassword]
Class=TLabel
Caption=&Clave:
Hint=
[frmServerLogin.lblServer]
Class=TLabel
Caption=Servidor Local
Hint=
[frmServerLogin.btnLogin]
Class=TButton
Caption=&Conectar
Hint=
[frmServerLogin.btnCancel]
Class=TButton
Caption=&Cancelar
Hint=
[frmUserInfo]
Class=TfrmUserInfo
Caption=Información del Usuario
Hint=
[frmUserInfo.btnNew]
Class=TButton
Caption=&Nuevo
Hint=
[frmUserInfo.btnApply]
Class=TButton
Caption=A&plicar
Hint=
[frmUserInfo.btnDelete]
Class=TButton
Caption=&Borrar
Hint=
[frmUserInfo.btnClose]
Class=TButton
Caption=&Cerrar
Hint=
[frmUserInfo.btnCancel]
Class=TButton
Caption=&Cancelar
Hint=
[frmUserInfo.gbOptionalInfo]
Class=TGroupBox
Caption= Información Opcional    
Hint=
[frmUserInfo.lblFName]
Class=TLabel
Caption=&Primer Nombre:
Hint=
[frmUserInfo.lblMName]
Class=TLabel
Caption=&Segundo Nombre:
Hint=
[frmUserInfo.lblLName]
Class=TLabel
Caption=&Apellidos:
Hint=
[frmUserInfo.gbRequiredInfo]
Class=TGroupBox
Caption= Required Information    
Hint=
[frmUserInfo.lblPassword]
Class=TLabel
Caption=&Clave:
Hint=
[frmUserInfo.lblConfirmPassword]
Class=TLabel
Caption=C&onfirme Clave:
Hint=
[frmUserInfo.lblUserName]
Class=TLabel
Caption=&Nombre de Usuario:
Hint=
[frmUserInfo.NewUser]
Class=TAction
Caption=Nuevo Usuario
Hint=
[frmUserInfo.ModifyUser]
Class=TAction
Caption=Modificar Usuario
Hint=
[frmUserInfo.DeleteUser]
Class=TAction
Caption=Borrar Usuario
Hint=
[frmServerProperties]
Class=TfrmServerProperties
Caption=Propiedades del Servidor
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
Caption=General
Hint=
[frmServerProperties.TabAlias]
Class=TTabSheet
Caption=Alias
Hint=
[frmServerProperties.lblAliasName]
Class=TLabel
Caption=A&lias:
Hint=
[frmServerProperties.lblHostName]
Class=TLabel
Caption=Nombre del &Equipo:
Hint=
[frmServerProperties.lblProtocol]
Class=TLabel
Caption=Protocolo de &Red:
Hint=
[frmServerProperties.Label1]
Class=TLabel
Caption=&Descripción:
Hint=
[frmServerProperties.TabGeneral]
Class=TTabSheet
Caption=General
Hint=
[frmServerProperties.lblVersionCaption]
Class=TLabel
Caption=Versión:
Hint=
[frmServerProperties.lblCapabilities]
Class=TLabel
Caption=Capacidades:
Hint=
[frmServerProperties.lblAttachmentNoCaption]
Class=TLabel
Caption=Número de conexiones:
Hint=
[frmServerProperties.lblDatabaseNocaption]
Class=TLabel
Caption=Número de bases de datos:
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
Caption=Desconocida
Hint=
[frmServerProperties.lvDatabases]
Class=TListView
Hint=
Columns.Count=1
Column0.Caption=Bases de Datos Conectadas
[frmServerProperties.btnRefresh]
Class=TButton
Caption=&Actualizar
Hint=
[frmServerProperties.btnApply]
Class=TButton
Caption=A&plicar
Hint=
[frmServerProperties.btnCancel]
Class=TButton
Caption=&Aceptar
Hint=
[frmServerProperties.Button1]
Class=TButton
Caption=&Cancelar
Hint=
[frmDBProperties]
Class=TfrmDBProperties
Caption=Propiedades de la Base de Datos
Hint=
[frmDBProperties.lblServerName]
Class=TLabel
Caption=Servidor:
Hint=
[frmDBProperties.lblServer]
Class=TLabel
Caption=Servidor Local
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
Caption=General
Hint=
[frmDBProperties.TabAlias]
Class=TTabSheet
Caption=Alias
Hint=
[frmDBProperties.lblAliasName]
Class=TLabel
Caption=A&lias:
Hint=
[frmDBProperties.lblFilename]
Class=TLabel
Caption=&Archivo:
Hint=
[frmDBProperties.btnSelFilename]
Class=TButton
Caption=...
Hint=Seleccionar base de datos
[frmDBProperties.TabGeneral]
Class=TTabSheet
Caption=General
Hint=
[frmDBProperties.lblOptions]
Class=TLabel
Caption=O&pciones:
Hint=
[frmDBProperties.gbSummaryInfo]
Class=TGroupBox
Caption= Resumen de Información         
Hint=
[frmDBProperties.lblDBOwner]
Class=TLabel
Caption=Propietario:
Hint=
[frmDBProperties.lblDBPages]
Class=TLabel
Caption=Páginas asignadas:
Hint=
[frmDBProperties.lblPageSize]
Class=TLabel
Caption=Tamaño de Página:
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
Column0.Caption=Archivos Secundarios
Column1.Caption=Página de Inicio
[frmDBProperties.btnApply]
Class=TButton
Caption=A&plicar
Hint=
[frmDBProperties.btnCancel]
Class=TButton
Caption=&Aceptar
Hint=
[frmDBProperties.Button1]
Class=TButton
Caption=&Cancelar
Hint=
[frmDBStatistics]
Class=TfrmDBStatistics
Caption=Estadísticas de la Base de Datos
Hint=
[frmDBStatistics.lblOptions]
Class=TLabel
Caption=O&pción:
Hint=
[frmDBStatistics.lblDatabaseName]
Class=TLabel
Caption=Base de Datos:
Hint=
[frmDBStatistics.lblDatabase]
Class=TLabel
Caption=AEKOOLMS002.FDB
Hint=AEKOOLMS002.FDB
[frmDBStatistics.btnOK]
Class=TButton
Caption=&Aceptar
Hint=
[frmDBStatistics.btnCancel]
Class=TButton
Caption=&Cancelar
Hint=
[frmTextViewer]
Class=TfrmTextViewer
Caption=Metadatos de la Base de Datos
Hint=
[frmTextViewer.mnuFile]
Class=TMenuItem
Caption=&Archivo
Hint=
[frmTextViewer.mnuFiSaveAs]
Class=TMenuItem
Caption=&Guardar ...
Hint=Guardar archivo actual bajo un nuevo nombre
[frmTextViewer.mnuFiPrint]
Class=TMenuItem
Caption=&Imprimir
Hint=
[frmTextViewer.mnuFiExit]
Class=TMenuItem
Caption=&Salir
Hint=Salir de esta aplicacción
[frmTextViewer.mnuEdit]
Class=TMenuItem
Caption=&Editar
Hint=
[frmTextViewer.mnuEdFind]
Class=TMenuItem
Caption=&Buscar
Hint=Buscar un texto
[frmTextViewer.EditCopy1]
Class=TEditCopy
Caption=&Copiar
Hint=Copiar
[frmTextViewer.EditCut1]
Class=TEditCut
Caption=Cor&tar
Hint=Cortar
[frmTextViewer.EditPaste1]
Class=TEditPaste
Caption=&Pegar
Hint=Pegar
[frmTextViewer.EditSelectAll1]
Class=TEditSelectAll
Caption=Seleccionar &Todo
Hint=
[frmTextViewer.EditUndo1]
Class=TEditUndo
Caption=&Deshacer
Hint=
[frmTextViewer.EditFont]
Class=TAction
Caption=&Fuente ...
Hint=Cambiar la fuente
[frmDBShutdown]
Class=TfrmDBShutdown
Caption=Detener la Base de Datos
Hint=
[frmDBShutdown.lblDatabaseName]
Class=TLabel
Caption=Base de Datos:
Hint=
[frmDBShutdown.lblOptions]
Class=TLabel
Caption=O&pciones:
Hint=
[frmDBShutdown.stxDatabaseName]
Class=TLabel
Caption=AEKOOLMS002.FDB
Hint=AEKOOLMS002.FDB
[frmDBShutdown.btnOK]
Class=TButton
Caption=&Aceptar
Hint=
[frmDBShutdown.btnCancel]
Class=TButton
Caption=&Cancelar
Hint=
[frmMessage]
Class=TfrmMessage
Caption=Información
Hint=
[frmMessage.lblDetailMsg]
Class=TLabel
Caption=Detalle del Mensaje:
Hint=
[frmMessage.lblSummaryMsg]
Class=TLabel
Caption=No se encontraron transacciones pendientes.
Hint=
[frmMessage.btnOK]
Class=TButton
Caption=&Aceptar
Hint=
[frmDBBackup]
Class=TfrmDBBackup
Caption=Respaldar Base de Datos
Hint=
[frmDBBackup.lblOptions]
Class=TLabel
Caption=O&pciones:
Hint=
[frmDBBackup.gbDatabaseFile]
Class=TGroupBox
Caption= Base de Datos    
Hint=
[frmDBBackup.lblDatabaseServer]
Class=TLabel
Caption=Servidor:
Hint=
[frmDBBackup.lblDatabaseAlias]
Class=TLabel
Caption=&Alias:
Hint=
[frmDBBackup.lblDatabaseserverName]
Class=TLabel
Caption=Servidor Local
Hint=
[frmDBBackup.gbBackupFiles]
Class=TGroupBox
Caption= Archivo(s) de Respaldo        
Hint=
[frmDBBackup.lblBackupServer]
Class=TLabel
Caption=&Servidor:
Hint=
[frmDBBackup.lblBackupAlias]
Class=TLabel
Caption=A&lias:
Hint=
[frmDBBackup.btnOK]
Class=TButton
Caption=&Aceptar
Hint=
[frmDBBackup.btnCancel]
Class=TButton
Caption=&Cancelar
Hint=
[frmMain.actDatabaseBackup]
Class=TAction
Caption=Respaldar Base de Datos
Hint=Respaldar una Base de Datos
[frmDBRestore]
Class=TfrmDBRestore
Caption=Recuperar Base de Datos
Hint=
[frmDBRestore.lblOptions]
Class=TLabel
Caption=O&pciones:
Hint=
[frmDBRestore.gbDatabaseFiles]
Class=TGroupBox
Caption= Base de Datos
Hint=
[frmDBRestore.lblDestinationServer]
Class=TLabel
Caption=&Servidor:
Hint=
[frmDBRestore.lblDBAlias]
Class=TLabel
Caption=A&lias:
Hint=
[frmDBRestore.gbBackupFiles]
Class=TGroupBox
Caption= Archivo(s) de Respaldo
Hint=
[frmDBRestore.lblBackupServer]
Class=TLabel
Caption=Servidor:
Hint=
[frmDBRestore.lblBackupAlias]
Class=TLabel
Caption=&Alias:
Hint=
[frmDBRestore.lblBackupServerName]
Class=TLabel
Caption=Servidor Local
Hint=
[frmDBRestore.btnOK]
Class=TButton
Caption=&Aceptar
Hint=
[frmDBRestore.btnCancel]
Class=TButton
Caption=&Cancelar
Hint=
[frmDomains]
Class=TfrmDomains
Caption=Dominio - BLOB_TEXT
[frmDomains.pgObjectEditor]
Class=TPageControl
Hint=
PageCount=5
[frmDomains.pgObjectEditor.tsMain]
Class=TTabSheet
Caption=Dominio
[frmDomains.pgObjectEditor.tsDefault]
Class=TTabSheet
Caption=Por Omisión
[frmDomains.pgObjectEditor.tsConstraint]
Class=TTabSheet
Caption=Constraint
[frmDomains.pgObjectEditor.tsDescription]
Class=TTabSheet
Caption=Descripción
[frmDomains.pgObjectEditor.tsDDL]
Class=TTabSheet
Caption=Metadato
[frmDomains.tsMain]
Class=TTabSheet
Caption=Dominio
[frmDomains.Label1]
Class=TLabel
Caption=&Dominio:
[frmDomains.Label3]
Class=TLabel
Caption=&Tipo:
[frmDomains.Label4]
Class=TLabel
Caption=&Largo:
[frmDomains.Label9]
Class=TLabel
Caption=Conj.&Carácteres:
[frmDomains.Label2]
Class=TLabel
Caption=Co&llate:
[frmDomains.Label14]
Class=TLabel
Caption=&Precisión:
[frmDomains.Label15]
Class=TLabel
Caption=&Escala:
[frmDomains.Label18]
Class=TLabel
Caption=&Sub Tipo:
[frmDomains.Label6]
Class=TLabel
Caption=Conj.&Carácteres:
[frmDomains.Label11]
Class=TLabel
Caption=T&amaño del Segmento:
[frmDomains.Label5]
Class=TLabel
Caption=Co&llate:
[frmDomains.chkColNotNull]
Class=TCheckBox
Caption=No &Nulo
[frmDomains.Label10]
Class=TLabel
Caption=&Arreglo:
[frmDomains.lvArray]
Class=TListView
Hint=
Columns.Count=2
Column0.Caption=Límite Inferior
Column1.Caption=Límite Superior
[frmDomains.btnAddDimension]
Class=TButton
Caption=&Agregar Dimensión
[frmDomains.btnDeleteDimension]
Class=TButton
Caption=&Borrar Dimensión
[frmDomains.btnEditDimension]
Class=TButton
Caption=&Editar Dimensión
[frmDomains.tsDefault]
Class=TTabSheet
Caption=Por Omisión
[frmDomains.tsConstraint]
Class=TTabSheet
Caption=Restricción
[frmDomains.tsDescription]
Class=TTabSheet
Caption=Descripción
[frmDomains.tsDDL]
Class=TTabSheet
Caption=Metadato
[frmServerRegister]
Class=TfrmServerRegister
Caption=Registrar Servidor y Conectarse
[frmServerRegister.gbServerInfo]
Class=TGroupBox
Caption= Información del Servidor 
[frmServerRegister.lblServerName]
Class=TLabel
Caption=Nombre del S&ervidor:
[frmServerRegister.lblProtocol]
Class=TLabel
Caption=Protocolo de &Red:
[frmServerRegister.lblServerAlias]
Class=TLabel
Caption=&Alias:
[frmServerRegister.Label1]
Class=TLabel
Caption=&Descripción:
[frmServerRegister.rbLocalServer]
Class=TRadioButton
Caption=Servidor &Local
[frmServerRegister.rbRemoteServer]
Class=TRadioButton
Caption=Servidor &Remoto
[frmServerRegister.chkSaveAlias]
Class=TCheckBox
Caption=&Guardar Información de Alias
[frmServerRegister.gbLoginInfo]
Class=TGroupBox
Caption= Información de Acceso 
[frmServerRegister.lblUsername]
Class=TLabel
Caption=Nombre de &Usuario:
[frmServerRegister.lblPassword]
Class=TLabel
Caption=&Clave:
[frmServerRegister.btnOK]
Class=TButton
Caption=&Aceptar
[frmServerRegister.btnCancel]
Class=TButton
Caption=&Cancelar
[frmCommDiag]
Class=TfrmCommDiag
Caption=Diagnóstico de Comunicaciones
[frmCommDiag.pgcDiagnostics]
Class=TPageControl
Hint=
PageCount=4
[frmCommDiag.pgcDiagnostics.tabDBConnection]
Class=TTabSheet
Caption=Conexión BdD
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
Caption=Conexión BdD
[frmCommDiag.lblDBResults]
Class=TLabel
Caption=&Resultados:
[frmCommDiag.gbDatabaseInfo]
Class=TGroupBox
Caption= Información de la Base de Datos
[frmCommDiag.lblDatabase]
Class=TLabel
Caption=Base de &Datos:
[frmCommDiag.lblUsername]
Class=TLabel
Caption=Nombre de &Usuario:
[frmCommDiag.lblPassword]
Class=TLabel
Caption=&Clave:
[frmCommDiag.btnSelDB]
Class=TButton
Caption=...
Hint=Seleccionar base de datos
[frmCommDiag.gbDBServerInfo]
Class=TGroupBox
Caption= Información del Servidor
[frmCommDiag.lblServerName]
Class=TLabel
Caption=Nombre del &Servidor:
[frmCommDiag.lblProtocol]
Class=TLabel
Caption=Protocolo de &Red:
[frmCommDiag.rbLocalServer]
Class=TRadioButton
Caption=Servidor &Local
[frmCommDiag.rbRemoteServer]
Class=TRadioButton
Caption=Servidor R&emoto
[frmCommDiag.tabTCPIP]
Class=TTabSheet
Caption=TCP/IP
[frmCommDiag.lblWinSockResults]
Class=TLabel
Caption=&Resultados:
[frmCommDiag.gbTCPIPServerInfo]
Class=TGroupBox
Caption= Información del Servidor
[frmCommDiag.lblWinsockServer]
Class=TLabel
Caption=&Equipo:
[frmCommDiag.lblService]
Class=TLabel
Caption=&Servicio:
[frmCommDiag.tabNetBEUI]
Class=TTabSheet
Caption=NetBEUI
[frmCommDiag.lblNetBeuiResults]
Class=TLabel
Caption=&Resultados:
[frmCommDiag.gbNetBEUIServerInfo]
Class=TGroupBox
Caption= Información del Servidor
[frmCommDiag.lblNetBEUIServer]
Class=TLabel
Caption=Nombre del &Servidor:
[frmCommDiag.tabSPX]
Class=TTabSheet
Caption=SPX
[frmCommDiag.lblSPXResults]
Class=TLabel
Caption=&Resultados:
[frmCommDiag.gbNovellServerInfo]
Class=TGroupBox
Caption= Información del Servidor
[frmCommDiag.lblSPXServer]
Class=TLabel
Caption=Nombre del &Servidor:
[frmCommDiag.btnTest]
Class=TButton
Caption=&Probar
[frmCommDiag.btnCancel]
Class=TButton
Caption=&Cancelar
[frmBackupAliasProperties]
Class=TfrmBackupAliasProperties
Caption=Propiedades del Alias de Respaldo
[frmBackupAliasProperties.lblServerName]
Class=TLabel
Caption=Servidor:
[frmBackupAliasProperties.lblAliasName]
Class=TLabel
Caption=&Alias:
[frmBackupAliasProperties.lblDBServer]
Class=TLabel
Caption=&Servidor de Destino:
[frmBackupAliasProperties.lblDBAlias]
Class=TLabel
Caption=Alias de Base de &Datos de Destino:
[frmBackupAliasProperties.lblServer]
Class=TLabel
Caption=Servidor Local
[frmBackupAliasProperties.btnApply]
Class=TButton
Caption=A&plicar
[frmBackupAliasProperties.btnOK]
Class=TButton
Caption=&Aceptar
[frmBackupAliasProperties.Button1]
Class=TButton
Caption=&Cancelar
[frmDBConnections]
Class=TfrmDBConnections
Caption=Conexiones a Base de Datos
[frmDBConnections.lvConnections]
Class=TListView
Hint=
Columns.Count=1
Column0.Caption=Nombre de Usuario
[frmDBConnections.btnOK]
Class=TButton
Caption=&Aceptar
[dlgWindowList]
Class=TdlgWindowList
Caption=Ventanas Activas
[dlgWindowList.ListView1]
Class=TListView
Hint=
Columns.Count=1
Column0.Caption=Ventanas
[dlgWindowList.SwitchTo]
Class=TAction
Caption=Ca&mbiar A...
[dlgWindowList.Closewindow]
Class=TAction
Caption=&Cerrar Ventana
[dlgWindowList.ActionCloseAll]
Class=TAction
Caption=Cerrar &Todas
[frmDomains.ActionCompile]
Class=TAction
Caption=&Compilar
[frmEditorTable]
Class=TfrmEditorTable
Caption=Tabla - CATEGORIE
[frmEditorTable.pgcProperties]
Class=TPageControl
Hint=
PageCount=6
[frmEditorTable.pgcProperties.tabProperties]
Class=TTabSheet
Caption=Propiedades
[frmEditorTable.pgcProperties.tabData]
Class=TTabSheet
Caption=Datos
[frmEditorTable.pgcProperties.tabMetadata]
Class=TTabSheet
Caption=Metadatos
[frmEditorTable.pgcProperties.tabPermissions]
Class=TTabSheet
Caption=Permisos
[frmEditorTable.pgcProperties.tabDependencies]
Class=TTabSheet
Caption=Dependencias
[frmEditorTable.pgcProperties.tabDescription]
Class=TTabSheet
Caption=Descripción
[frmEditorTable.tabProperties]
Class=TTabSheet
Caption=Propiedades
[frmEditorTable.lvTableObjects]
Class=TListView
Hint=
Columns.Count=6
Column0.Caption=Nombre
Column1.Caption=Tipo
Column2.Caption=Conj.Carácteres
Column3.Caption=Collation
Column4.Caption=Valor por Omisión
Column5.Caption=Permitir Nulos
[frmEditorTable.tabData]
Class=TTabSheet
Caption=Datos
[frmEditorTable.dbgData]
Class=TDBGrid
Hint=
Columns.Count=1
Column0.Caption=
[frmEditorTable.DBNavigator1]
Class=TNavButton
Hint=Actualizar Datos
[frmEditorTable.IB_TransactionBar1]
Class=TIB_TransactionBar_Button
Hint=Cerrar Transacción Actual
[frmEditorTable.tabMetadata]
Class=TTabSheet
Caption=Metadatos
[frmEditorTable.cbExtractData]
Class=TCheckBox
Caption=Extractar datos de tabla
[frmEditorTable.tabPermissions]
Class=TTabSheet
Caption=Permisos
[frmEditorTable.lvPermissions]
Class=TListView
Hint=
Columns.Count=8
Column0.Caption=Objeto
Column1.Caption=Selecionar
Column2.Caption=Borrar
Column3.Caption=Insertar
Column4.Caption=Modificar
Column5.Caption=Referenciar
Column6.Caption=Ejecutar
Column7.Caption=Miembro de
[frmEditorTable.Label1]
Class=TLabel
Caption=Estos permisos incluyen Opción de Conceder (Grant Option)
[frmEditorTable.tabDependencies]
Class=TTabSheet
Caption=Dependencias
[frmEditorTable.rbDependent]
Class=TRadioButton
Caption=Mostar Objetos &Dependientes
Hint=Desplegar objetos que dependen del objeto actualmente seleccionado
[frmEditorTable.rbDependedOn]
Class=TRadioButton
Caption=Mostrar Dependencias &Sobre Objetos
Hint=Mostrar los objetos de los cuales depende el objeto actualmente seleccionado
[frmEditorTable.tabDescription]
Class=TTabSheet
Caption=Descripción
[frmEditorTable.ShowColumns]
Class=TAction
Caption=Columnas
Hint=Mostrar Columnas de la tabla
[frmEditorTable.ShowTriggers]
Class=TAction
Caption=Triggers
Hint=Mostrar triggers de la tabla
[frmEditorTable.ShowCheckConstraints]
Class=TAction
Caption=Controles de Validez
Hint=Mostrar Controles de Validez
[frmEditorTable.ShowIndexes]
Class=TAction
Caption=Indices
Hint=Mostrar Indices
[frmEditorTable.ShowUniqueConstraints]
Class=TAction
Caption=Llaves Primarias
Hint=Mostrar Llaves Primarias de la tabla
[frmEditorTable.ShowReferentialConstraints]
Class=TAction
Caption=Integridad Referencial
Hint=Mostrar Integridad Referencial
[frmEditorTable.EditCopy1]
Class=TEditCopy
Caption=&Copiar
Hint=Copiar
[frmEditorTable.EditCut1]
Class=TEditCut
Caption=Cor&tar
Hint=Cortar
[frmEditorTable.EditPaste1]
Class=TEditPaste
Caption=&Pegar
Hint=Pegar
[frmEditorTable.EditSelectAll1]
Class=TEditSelectAll
Caption=Selecionar &Todo
[frmEditorTable.EditUndo1]
Class=TEditUndo
Caption=&Deshacer
[frmEditorTable.ActionNewObject]
Class=TAction
Caption=Nuevo...
[frmEditorTable.ActionEditObject]
Class=TAction
Caption=Editar...
[frmEditorTable.ActionDropObject]
Class=TAction
Caption=Eliminar
[frmEditorTable.ActionGrantSelect]
Class=TAction
Caption=Seleccionar
[frmEditorTable.ActionGrantDelete]
Class=TAction
Caption=Borrar
[frmEditorTable.ActionGrantInsert]
Class=TAction
Caption=Insertar
[frmEditorTable.ActionGrantUpdate]
Class=TAction
Caption=Modificar
[frmEditorTable.ActionGrantReference]
Class=TAction
Caption=Referenciar
[frmEditorTable.ActionGrantExecute]
Class=TAction
Caption=Ejecutar
[frmEditorTable.ActionGrantAll]
Class=TAction
Caption=Conceder Todo
[frmEditorTable.ActionRevokeAll]
Class=TAction
Caption=Revocar Todo
[frmEditorTable.ActionOpenTable]
Class=TAction
Caption=Abrir
[frmEditorTable.ActionTableFilter]
Class=TAction
Caption=Filtrar
[frmEditorTable.ActionTableFormView]
Class=TAction
Caption=Vista de Forma
[frmEditorTable.ActionEmptyTable]
Class=TAction
Caption=Vaciar Tabla
[frmEditorTable.ActionTableClearFilter]
Class=TAction
Caption=Limpiar Filtro
[frmEditorTable.ActionCopyRecord]
Class=TAction
Caption=Copiar Registro
[frmEditorTable.NewPrimaryKey1]
Class=TMenuItem
Caption=Nueva Llave Primaria
[frmEditorTable.Savetofile1]
Class=TMenuItem
Caption=Guardar a Archivo...
[frmEditorTable.Loadfromfile1]
Class=TMenuItem
Caption=Cargar desde Archivo...
[frmEditorTable.Copy2]
Class=TMenuItem
Caption=Copiar
[frmEditorTable.Paste2]
Class=TMenuItem
Caption=Pegar
[frmEditorTable.Cut2]
Class=TMenuItem
Caption=Cortar
[frmEditorTable.SavePictureDialog1.PreviewButton]
Class=TSpeedButton
Hint=Vista Previa
[frmEditorTable.OpenPictureDialog1.PreviewButton]
Class=TSpeedButton
Hint=Vista Previa
[frmViewEditor]
Class=TfrmViewEditor
Caption=Vista - NEW_VIEW
[frmViewEditor.pgObjectEditor]
Class=TPageControl
Hint=
PageCount=7
[frmViewEditor.pgObjectEditor.tsSQL]
Class=TTabSheet
Caption=Vista
[frmViewEditor.pgObjectEditor.tsTableView]
Class=TTabSheet
Caption=Estructura
[frmViewEditor.pgObjectEditor.tsDependenciesView]
Class=TTabSheet
Caption=Dependencias
[frmViewEditor.pgObjectEditor.tsTriggerView]
Class=TTabSheet
Caption=Triggers
[frmViewEditor.pgObjectEditor.tsData]
Class=TTabSheet
Caption=Datos
[frmViewEditor.pgObjectEditor.tsDoco]
Class=TTabSheet
Caption=Descripción
[frmViewEditor.pgObjectEditor.tsGrants]
Class=TTabSheet
Caption=Concesiones
[frmViewEditor.tsSQL]
Class=TTabSheet
Caption=Vista
[frmViewEditor.tsTableView]
Class=TTabSheet
Caption=Estructura
[frmViewEditor.lvFieldList]
Class=TListView
Hint=
Columns.Count=8
Column0.Caption=Nombre de Campo
Column1.Caption=Tipo de Campo
Column2.Caption=Sub Tipo
Column3.Caption=Dominio
Column4.Caption=No Nulo
Column5.Caption=Descripción
Column6.Caption=Origen por Omisión
Column7.Caption=Origen Calculado
[frmViewEditor.tsDependenciesView]
Class=TTabSheet
Caption=Dependencias
[frmViewEditor.rbDependent]
Class=TRadioButton
Caption=Mostar Objetos &Dependientes
Hint=Desplegar objetos que dependen del objeto actualmente seleccionado
[frmViewEditor.rbDependedOn]
Class=TRadioButton
Caption=Mostrar Dependencias &Sobre Objetos
Hint=Mostrar los objetos de los cuales depende el objeto actualmente seleccionado
[frmViewEditor.tsTriggerView]
Class=TTabSheet
Caption=Triggers
[frmViewEditor.Label1]
Class=TLabel
Caption=Desplegar:
[frmViewEditor.tsData]
Class=TTabSheet
Caption=Datos
[frmViewEditor.navDataView]
Class=TNavButton
Hint=Actualizar Datos
[frmViewEditor.IB_TransactionBar1]
Class=TIB_TransactionBar_Button
Hint=Cerrar Transacción Actual
[frmViewEditor.btnRefresh]
Class=TSpeedButton
Caption=&Actualizar
[frmViewEditor.grdDataView]
Class=TDBGrid
Hint=
Columns.Count=1
Column0.Caption=
[frmViewEditor.tsDoco]
Class=TTabSheet
Caption=Descripción
[frmViewEditor.tsGrants]
Class=TTabSheet
Caption=Concesiones
[frmViewEditor.lvPermissions]
Class=TListView
Hint=
Columns.Count=8
Column0.Caption=Objeto
Column1.Caption=Seleccionar
Column2.Caption=Borrar
Column3.Caption=Insertar
Column4.Caption=Modificar
Column5.Caption=Referenciar
Column6.Caption=Ejecutar
Column7.Caption=Miembro de
[frmViewEditor.Label2]
Class=TLabel
Caption=Estos permisos incluyen Opción de Conceder (Grant Option)
[frmViewEditor.ActionCompile]
Class=TAction
Caption=Compilar
[frmStoredProcedure]
Class=TfrmStoredProcedure
Caption=Procedimiento Almacenado
[frmStoredProcedure.pgObjectEditor]
Class=TPageControl
Hint=
PageCount=7
[frmStoredProcedure.pgObjectEditor.tsStoredProc]
Class=TTabSheet
Caption=Editar
[frmStoredProcedure.pgObjectEditor.tsExecution]
Class=TTabSheet
Caption=Ejecución
[frmStoredProcedure.pgObjectEditor.tsDocoView]
Class=TTabSheet
Caption=Descripción
[frmStoredProcedure.pgObjectEditor.tsDependencies]
Class=TTabSheet
Caption=Dependencias
[frmStoredProcedure.pgObjectEditor.tsGrants]
Class=TTabSheet
Caption=Concesiones
[frmStoredProcedure.pgObjectEditor.tsDebuggerOutput]
Class=TTabSheet
Caption=Salida del Depurador
[frmStoredProcedure.pgObjectEditor.tsMetadata]
Class=TTabSheet
Caption=Metadatos
[frmStoredProcedure.tsStoredProc]
Class=TTabSheet
Caption=Editar
[frmStoredProcedure.Label2]
Class=TLabel
Caption=Nombre:
[frmStoredProcedure.dbgParameters]
Class=TDBGrid
Hint=
Columns.Count=3
Column0.Caption=Tipo
Column1.Caption=Parámetro
Column2.Caption=Tipo de Dato
[frmStoredProcedure.tsExecution]
Class=TTabSheet
Caption=Ejecución
[frmStoredProcedure.grdResults]
Class=TDBGrid
Hint=
Columns.Count=1
Column0.Caption=
[frmStoredProcedure.dbgValues]
Class=TDBGrid
Hint=
Columns.Count=3
Column0.Caption=Parámetro
Column1.Caption=Tipo
Column2.Caption=Valor
[frmStoredProcedure.tsDocoView]
Class=TTabSheet
Caption=Descripción
[frmStoredProcedure.tsDependencies]
Class=TTabSheet
Caption=Dependencias
[frmStoredProcedure.rbDependent]
Class=TRadioButton
Caption=Mostar Objetos &Dependientes
Hint=Desplegar objetos que dependen del objeto actualmente seleccionado
[frmStoredProcedure.rbDependedOn]
Class=TRadioButton
Caption=Mostrar Dependencias &Sobre Objetos
Hint=Mostrar los objetos de los cuales depende el objeto actualmente seleccionado
[frmStoredProcedure.tsGrants]
Class=TTabSheet
Caption=Concesiones
[frmStoredProcedure.lvPermissions]
Class=TListView
Hint=
Columns.Count=8
Column0.Caption=Objeto
Column1.Caption=Seleccionar
Column2.Caption=Borrar
Column3.Caption=Insertar
Column4.Caption=Modificar
Column5.Caption=Referenciar
Column6.Caption=Ejecutar
Column7.Caption=Miembro de
[frmStoredProcedure.Label1]
Class=TLabel
Caption=Estos permisos incluyen Opción de Conceder (Grant Option)
[frmStoredProcedure.tsDebuggerOutput]
Class=TTabSheet
Caption=Salida del Depurador
[frmStoredProcedure.tsMetadata]
Class=TTabSheet
Caption=Metadatos
[frmStoredProcedure.ActionExecute]
Class=TAction
Caption=Ejecutar
[frmStoredProcedure.ActionCompile]
Class=TAction
Caption=Compilar
[frmStoredProcedure.ActionCheckParams]
Class=TAction
Caption=Verificar Parámetros
[frmStoredProcedure.ActionAddInputParam]
Class=TAction
Caption=Agregar Parámetro de Entrada
[frmStoredProcedure.ActionEditParam]
Class=TAction
Caption=Editar Parametro
[frmStoredProcedure.ActionDeleteParam]
Class=TAction
Caption=Borrar Parámetro
[frmStoredProcedure.ActionMoveUp]
Class=TAction
Caption=Mover Arriba
[frmStoredProcedure.ActionMoveDown]
Class=TAction
Caption=Mover Abajo
[frmStoredProcedure.ActionAddOutputParam]
Class=TAction
Caption=Agregar Parámetro de Salida
[frmUDFEditor]
Class=TfrmUDFEditor
Caption=Función Externa - new_udf
[frmUDFEditor.pgObjectEditor]
Class=TPageControl
Hint=
PageCount=3
[frmUDFEditor.pgObjectEditor.tsObject]
Class=TTabSheet
Caption=Propiedades
[frmUDFEditor.pgObjectEditor.tsDocoView]
Class=TTabSheet
Caption=Descripción
[frmUDFEditor.pgObjectEditor.tsDDL]
Class=TTabSheet
Caption=Metadatos
[frmUDFEditor.tsObject]
Class=TTabSheet
Caption=Propiedades
[frmUDFEditor.lvUDFParams]
Class=TListView
Hint=
Columns.Count=2
Column0.Caption=Parámetro
Column1.Caption=Calling Mechanism
[frmUDFEditor.Label5]
Class=TLabel
Caption=&Por:
[frmUDFEditor.Label4]
Class=TLabel
Caption=&Retornos:
[frmUDFEditor.Label3]
Class=TLabel
Caption=Nombre de &Biblioteca:
[frmUDFEditor.Label2]
Class=TLabel
Caption=Punto de &Entrada:
[frmUDFEditor.Label1]
Class=TLabel
Caption=&Nombre:
[frmUDFEditor.Label6]
Class=TLabel
Caption=P&arámetros de Entrada:
[frmUDFEditor.tsDocoView]
Class=TTabSheet
Caption=Descripción
[frmUDFEditor.tsDDL]
Class=TTabSheet
Caption=Metadatos
[frmUDFEditor.ActionCompile]
Class=TAction
Caption=Compilar
[frmExceptions]
Class=TfrmExceptions
Caption=Excepción - USERNAME_DUPLICATE
[frmExceptions.pgObjectEditor]
Class=TPageControl
Hint=
PageCount=3
[frmExceptions.pgObjectEditor.tsObject]
Class=TTabSheet
Caption=Excepción
[frmExceptions.pgObjectEditor.tsDocoView]
Class=TTabSheet
Caption=Descripción
[frmExceptions.pgObjectEditor.tsDDL]
Class=TTabSheet
Caption=Metadatos
[frmExceptions.tsObject]
Class=TTabSheet
Caption=Excepción
[frmExceptions.Label1]
Class=TLabel
Caption=Nombre de &Excepción:
[frmExceptions.Label2]
Class=TLabel
Caption=&Texto de Excepción:
[frmExceptions.tsDocoView]
Class=TTabSheet
Caption=Descripción
[frmExceptions.tsDDL]
Class=TTabSheet
Caption=Metadatos
[frmExceptions.ActionCompile]
Class=TAction
Caption=Compilar
[FrmEditorFilter]
Class=TFrmEditorFilter
Caption=Filtro de Blob - new_filter
[FrmEditorFilter.objControl]
Class=TPageControl
Hint=
PageCount=3
[FrmEditorFilter.objControl.tabFilters]
Class=TTabSheet
Caption=Propiedades
[FrmEditorFilter.objControl.tsMetadata]
Class=TTabSheet
Caption=Metadatos
[FrmEditorFilter.objControl.tsDescription]
Class=TTabSheet
Caption=Descripción
[FrmEditorFilter.tabFilters]
Class=TTabSheet
Caption=Propiedades
[FrmEditorFilter.Label11]
Class=TLabel
Caption=Nombre de &Módulo:
[FrmEditorFilter.Label12]
Class=TLabel
Caption=Punto de &Entrada:
[FrmEditorFilter.Label13]
Class=TLabel
Caption=Subtipo de E&ntrada:
[FrmEditorFilter.Label14]
Class=TLabel
Caption=Subtipo de &Salida:
[FrmEditorFilter.tsMetadata]
Class=TTabSheet
Caption=Metadatos
[FrmEditorFilter.tsDescription]
Class=TTabSheet
Caption=Descripción
[FrmEditorFilter.actReset]
Class=TAction
Caption=&Restaurar Valor
[FrmEditorFilter.ActionCompile]
Class=TAction
Caption=&Compilar
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
Caption=Metadatos
[frmRole.tsRole]
Class=TTabSheet
Caption=Rol
[frmRole.Label1]
Class=TLabel
Caption=Nombre de &Rol:
[frmRole.tsDDLView]
Class=TTabSheet
Caption=Metadatos
[frmRole.ActionCompile]
Class=TAction
Caption=&Compilar
[dlgWisql]
Class=TdlgWisql
Caption=SQL Interactivo
[dlgWisql.lblFileName]
Class=TLabel
[dlgWisql.pgcOutput]
Class=TPageControl
Hint=
PageCount=4
[dlgWisql.pgcOutput.tsParameters]
Class=TTabSheet
Caption=Parámetros
[dlgWisql.pgcOutput.TabData]
Class=TTabSheet
Caption=Datos
[dlgWisql.pgcOutput.TabResults]
Class=TTabSheet
Caption=Plan
[dlgWisql.pgcOutput.TabStats]
Class=TTabSheet
Caption=Estadísticas
[dlgWisql.tsParameters]
Class=TTabSheet
Caption=Parámetros
[dlgWisql.TabData]
Class=TTabSheet
Caption=Datos
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
Caption=Estadísticas
[dlgWisql.lvStats]
Class=TListView
Hint=
Columns.Count=2
Column0.Caption=Estadísticas
Column1.Caption=Valor
[dlgWisql.IB_TransactionBarDefault]
Class=TIB_TransactionBar_Button
Hint=Cerrar Transacción Actual
[dlgWisql.IB_TransactionBarDDL]
Class=TIB_TransactionBar_Button
Hint=Cerrar Transacción Actual
[dlgWisql.File1]
Class=TMenuItem
Caption=&Archivo
[dlgWisql.mnuEdit1]
Class=TMenuItem
Caption=&Editar
[dlgWisql.Edit1]
Class=TMenuItem
Caption=&Consulta
[dlgWisql.Database1]
Class=TMenuItem
Caption=Base de &Datos
[dlgWisql.Help1]
Class=TMenuItem
Caption=Ay&uda
[dlgWisql.SQLReference1]
Class=TMenuItem
Caption=Referencia &SQL
[dlgWisql.DialectAction1]
Class=TAction
Caption=Dialecto &1
[dlgWisql.DialectAction2]
Class=TAction
Caption=Dialecto &2
[dlgWisql.DialectAction3]
Class=TAction
Caption=Dialecto &3
[dlgWisql.QueryPrevious]
Class=TAction
Caption=&Previo
Hint=Consulta Previa
[dlgWisql.QueryNext]
Class=TAction
Caption=&Siguiente
Hint=Consulta Siguiente
[dlgWisql.QueryExecute]
Class=TAction
Caption=&Ejecutar
Hint=Ejecutar Consulta
[dlgWisql.QueryLoadScript]
Class=TAction
Caption=&Cargar Script
Hint=Cargar un Script SQL
[dlgWisql.QuerySaveScript]
Class=TAction
Caption=&Guardar Script
Hint=Guardar Script
[dlgWisql.QueryOptions]
Class=TAction
Caption=O&pciones ...
Hint=Options de Consulta
[dlgWisql.QuerySaveOutput]
Class=TAction
Caption=G&uardar Salida
Hint=Guardar la salida de la consulta
[dlgWisql.QueryPrepare]
Class=TAction
Caption=P&reparar
Hint=Preparar la consulta actual antes de la ejecución
[dlgWisql.EditOptions]
Class=TAction
Caption=&Opciones ...
Hint=Mostrar Opciones de ISQL
[dlgWisql.FileClose]
Class=TAction
Caption=&Cerrar
Hint=Cerrar la ventana ISQL
[dlgWisql.EditFind]
Class=TAction
Caption=&Buscar ...
[dlgWisql.EditFont]
Class=TAction
Caption=&Fuente ...
[dlgWisql.EditCopy1]
Class=TEditCopy
Caption=&Copiar
Hint=Copiar
[dlgWisql.EditCut1]
Class=TEditCut
Caption=Cor&tar
Hint=Cortar
[dlgWisql.EditPaste1]
Class=TEditPaste
Caption=&Pegar
Hint=Pegar
[dlgWisql.EditSelectAll1]
Class=TEditSelectAll
Caption=Seleccionar &Todo
[dlgWisql.EditUndo1]
Class=TEditUndo
Caption=&Deshacer
[dlgWisql.DatabaseConnectAs]
Class=TAction
Caption=Conectar C&omo ...
[dlgWisql.DatabaseDisconnect]
Class=TAction
Caption=&Desconectar
[dlgWisql.DatabaseCreate]
Class=TAction
Caption=&Crear Base de Datos ...
[dlgWisql.DatabaseDrop]
Class=TAction
Caption=&Eliminar Base de Datos
[dlgWisql.Print]
Class=TAction
Caption=&Imprimir
[dlgWisql.SaveSQLHistory]
Class=TAction
Caption=Guardar Historia SQL
Hint=Guardar Historia SQL
[dlgWisql.LoadSQLHistory]
Class=TAction
Caption=Cargar Historia SQL
Hint=Cargar Historia SQL
[dlgWisql.QueryFetchAll]
Class=TAction
Caption=Traer Todos los Datos
Hint=Hacer un "Fetch All"
[dlgWisql.NewConnection]
Class=TAction
Caption=Nueva Conexión...
[dlgWisql.EditRedo]
Class=TAction
Caption=Rehacer
[frmDBConnect]
Class=TfrmDBConnect
Caption=Conectar Base de Datos
[frmDBConnect.lblDatabaseName]
Class=TLabel
Caption=Base de Datos:
[frmDBConnect.lblUsername]
Class=TLabel
Caption=Nombre de &Usuario:
[frmDBConnect.lblPassword]
Class=TLabel
Caption=&Clave:
[frmDBConnect.lblRole]
Class=TLabel
Caption=&Rol:
[frmDBConnect.Label1]
Class=TLabel
Caption=&Dialecto del Cliente:
[frmDBConnect.Label2]
Class=TLabel
Caption=Conj.C&arácteres
[frmDBConnect.lblDatabase]
Class=TLabel
Caption=AEKOOLMS002.FDB
[frmDBConnect.btnConnect]
Class=TButton
Caption=C&onectar
[frmDBConnect.btnCancel]
Class=TButton
Caption=&Cancelar
[frmDBConnect.cbCaseSensitive]
Class=TCheckBox
Caption=Nombre de Rol Sensitivo &May/Min.
[frmMain]
Class=TfrmMain
Caption=IBOConsole
[frmOptions.Label1]
Class=TLabel
Caption=Ejemplo de la Fuente Actual.^MEl rápido zorro café saltó sobre la espalda del ^Mperro perezoso.
[frmSQLOptions]
Class=TfrmSQLOptions
Caption=Opciones SQL
[frmSQLOptions.btnApply]
Class=TButton
Caption=A&plicar
[frmSQLOptions.btnOK]
Class=TButton
Caption=&Aceptar
[frmSQLOptions.pgControl]
Class=TPageControl
Hint=
PageCount=2
[frmSQLOptions.pgControl.TabSheet1]
Class=TTabSheet
Caption=Opciones
[frmSQLOptions.pgControl.TabSheet2]
Class=TTabSheet
Caption=Advanzadas
[frmSQLOptions.TabSheet1]
Class=TTabSheet
Caption=Opciones
[frmSQLOptions.cbClearInput]
Class=TCheckBox
Caption=&Limpiar ventana de entrada en éxito
[frmSQLOptions.TabSheet2]
Class=TTabSheet
Caption=Advanzadas
[frmSQLOptions.GroupBox1]
Class=TGroupBox
Caption=Eventos SQL
[frmSQLOptions.Label1]
Class=TLabel
Caption=NOTA:
[frmSQLOptions.cbUpdateConnect]
Class=TCheckBox
Caption=Actualizar IBOConsole al C&onectar
[frmSQLOptions.cbUpdateCreate]
Class=TCheckBox
Caption=Actualizar IBOConsole al C&rear
[frmSQLOptions.rgTransactions]
Class=TGroupButton
Caption=Ro&llback al salir
Items.Count=2
Item0=&Commit al salir
Item1=Ro&llback al salir
[frmSQLOptions.btnCancel]
Class=TButton
Caption=&Cancelar
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
prompt0=Sobreescribir %s
prompt1=No se pudo abrir archivo "%s".
prompt2=No aún en Kylix
prompt3=Está seguro de querer eliminar la base de datos seleccionada?
prompt4=Las Transacciones están activas.^M¿Desea hacer commit a las transacciones?^M^MAl elegir NO se hará rollback a las transacciones activas.
prompt5=Datos guardados en archivo: %s
prompt6=formato no especificado
prompt7=Guardar Salida de la Consulta
prompt8=%s nuevo(a) %s debe tener un nombre.
prompt9=%s nombre de %s es aún por omisión. ¿Está seguro de querer usar el nombre por omisión?
prompt10=%s %s %s ha cambiado. ¿Desea guaradar los cambios?
prompt11=¿Está seguro que desea des-registrar la base de datos seleccionada?
prompt12=¿Está seguro que desea cerrar la conexión a la base de datos seleccionada?
prompt13=Barrer una base de datos grande puede un tiempo largo y puede impactar el desempeño del servidor durante ese tiempo. ¿Desea hacer el barrido?
prompt14=¿Está seguro que desea eliminar la base de datos seleccionada?
prompt15=¿Está seguro que desea cerrar la conexión al servidor seleccionado?
prompt16=Valor de opción inválido
prompt17=Recuperación de transacciones en el Limbo terminada.
prompt18=Límite superior del Arreglo debe ser mayor que el límite inferior.
prompt19=Llave Primaria debe tener un nombre
prompt20=Llave Unica debe tener un nombre
prompt21=Por favor seleccione el(los) campo(s) a ser usados en Llave Primaria
prompt22=Por favor seleccione el(los) campo(s) a ser usados en Llave Unica
prompt23=Llave Foránea debe tener un nombre
prompt24=Por favor seleccione el campo a ser usados en Llave Foránea
prompt25=Por favor seleccione el campo a ser referenciado en Llave Foránea
prompt26=Control de Validez debe tener un nombre
prompt27=Control de Validez debe contener una expresión
prompt28=¿Está seguro que desea borrar esta dimensión?
prompt29=No puede cambiar la descripción hasta hasta que el objeto haya sido compilado.
prompt30=¿Guardar cambios a la descripción?
prompt31=La Excepción debe tener un mensaje.
prompt32=La nueva tabla debe tener un nombre.
prompt33=Asignar No Nulos requiere que se asignen valores a los datos nulos existentes o respaldos subsecuentes serán inválidos^M^M¿Desea continuar y especificar un valor para rellenar los Nulos?
prompt34=Asignar No Nulo no es seguro si el campo es usado en un índice único, respaldos subsecuentes serán inválidos^M^M¿Desea continuar?
prompt35=The Description for %s %s has changed. Do you wish to save changes?
prompt36=Please select columns(s) to be used in the Index
prompt37=You cannot view the Metadata until the object has been compiled.
prompt38=You cannot change from Edit View until the object has been compiled.
prompt39=There is an open transaction for the results - Commit or Rollback before changing View.
prompt40=Stored Procedure source has changed. Recompile?
prompt41=Executing Stored Procedure...
prompt42=Stored Procedure - %s - Running
prompt43=Are you shure to drop %s %s ?
prompt44=Do You want to delete all visible records from table %s ?
prompt45=Trigger must be assigned a position.
prompt46=Trigger must have a name.
prompt47=The UDF must have an Entry Point.
prompt48=The UDF must have a Library Name.
prompt49=The UDF must have a Return Parameter.
prompt50=Are you sure you want to delete this Parameter?
prompt51=Are you sure you wish to delete this dimension?
prompt52=The column must have a name.
prompt53=The domain name is empty.
prompt54=There is no computed by expression.
prompt55=You must enter a Parameter.
prompt56=Plan could not be retrieved
prompt57=Unable to parse script
prompt58=No active connection
prompt59=An error occured parsing CONNECT statement.
prompt60=Commit or Rollback the current transaction
prompt61=An error occured parsing CREATE statement.
prompt62=Invalid client dialect
prompt63=Unable to open file
prompt64=Database dialect (%d) does not match client dialect (%d).
prompt65=Unable to set the client dialect to %d
prompt66=Unable to display Array Information
prompt67=Search string '%s' not found
prompt68=Unable to parse script
prompt69=Are you sure that you want to un-register %s?
prompt70=Are you sure that you want to remove "%s" from the alias list?
prompt71=Are you sure that you want to delete user: %s?
prompt72=An error occurred while attemting to create directory %s. Operation cancelled.
prompt73=The directory %s does not exist. Do you wish to create it?
prompt74=An error occured while trying to connect to '%s'. This server may be an earlier version. As a result many features will be not work properly.
prompt75=Attempting to attach to %s using NetBEUI.%s%s
prompt76=Attached successfully to %s using %s the following named pipe: %s %s.%S%S NetBEUI Communication Test Passed!
prompt77=An error occurred attempting to connect to %s%susing the following named pipe:%s%s%s%sNetBEUI Communication Test Failed!
prompt78=Could not initialize Netware client library.%s%sSPX Communication Test Failed!
prompt79=Attempting to attach to %s using SPX.%s%s
prompt80=An error occurred attempting to connect to %s%susing the SPX protocol.%s%sSPX Communication Test Failed!
prompt81=Attached successfully to %s%s   using the SPX protocol.SPX Communication Test Passed!
prompt82=An error occurred attempting to connect to %s%s   using the SPX protocol.%s%sYou do not seem to have the proper NetWare client installed.%s%sSPX Communication Test Failed!
prompt83=The user you wish to delete is the same user you are logged into the server as.%s Are you sure that you want to delete user: %s?
prompt84=Attempting to connect to:
prompt85=Attaching    ... Passed!
prompt86=Detaching    ... Passed!
prompt87=An Server error has occurred while detaching.
prompt88=An Server error has occurred while attaching.
prompt89=Server Communication Test Passed!
prompt90=Server Communication Test Failed!
prompt91=Attempting connection to %s.
prompt92=Socket for connection obtained.
prompt93=Socket Request Failed
prompt94=Remote Socket Request Failed
prompt95=Remote Socket did not respond
prompt96=Failed to connect to host '%s',
prompt97=on port %s. Error Num: 
prompt98=Connection established to host '%s',
prompt99=on port %s
prompt100=TCP/IP Communication Test Passed!
prompt101=TCP/IP Communication Test Failed!
prompt102=Pinging %s [%s] with %d bytes of data:
prompt103=%d bytes from %s: icmp_seq=%d ttl=%d time%s%d ms
prompt104=Critical connection error
prompt105=Can't get file version information for %s
prompt106=  Host Site: %s
prompt107=is in limbo
prompt108=has been committed
prompt109=has been rolled back
prompt110=is in an unknown state
prompt111=  Transaction %d %s.
prompt112=  Remote Site: %s
prompt113=  Database Path: %s
prompt114=Recommended Action: %s
prompt115=Please select an item from the Transactions tab.
prompt116=Repairing transaction %s
prompt117=Select a transaction for information about that transaction.
prompt118=Secondary files unavailable.
prompt119=Database owner unavailable.
prompt120=The Sweep Interval must be a value from %d to %d.  Please enter a valid sweep interval value.
prompt121=Database Properties cannot be changed while the database is read-only.
prompt122=Null must be "NULL" or empty
prompt123=can't Edit NULL
prompt124=Once %s is dropped it can no longer be accessed.^MDo you wish to continue?
prompt125=You must specify a validation option
prompt126=can not be used to administer pre-InterBase 6.0 servers
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
ERR_SYSTEM_INIT=Initialization failure.
ERR_USERNAME=Invalid username. Please enter a valid username.
ERR_PASSWORD=Invalid password. Please enter a valid password.
ERR_PASSWORD_MISSMATCH=The password does not match the confirmation password.
ERR_ADD_USER=Unable to add user.
ERR_MODIFY_USER=Unable to modify user account.
ERR_DELETE_USER=Unable to delete user.
ERR_GET_USERS=Unable to retrieve user list.
ERR_GET_USER_INFO=Unable to retrieve user information.
ERR_SOURCE_DB=Invalid source database name. Please enter a valid database name.
ERR_DESTINATION_DB=Invalid destination database name. Please enter a valid database name.
ERR_SAME_SOURCE_DESTINATION=The source and destination must be different.
ERR_DB_FILE=Invalid database file or the file does not exist.
ERR_SERVER_NAME=Invalid server name. Please enter a valid server name.
ERR_PROTOCOL=Invalid network protocol. Please select a network protocol from the list.
ERR_BACKUP_DB=Database backup failed.
ERR_RESTORE_DB=Database restore failed.
ERR_GET_TABLES=Unable to retrieve a list of tables.
ERR_GET_VIEWS=Unable to retrieve a list of views.
ERR_SERVICE=Invalid service. Please select a service from the list.
ERR_NUMERIC_VALUE=Invalid numeric value. Please enter a valid numeric value.
ERR_GET_TABLE_DATA=Unable to retrieve data.
ERR_DB_ALIAS=Invalid database alias. Please enter a valid database name.
ERR_GET_ROLES=Unable to retrieve a list of roles.
ERR_SERVER_LOGIN=Error logging into the requested server.
ERR_DB_CONNECT=Error connecting to the requested database.
ERR_DB_DISCONNECT=Error disconnecting from database.
ERR_GET_PROCEDURES=Unable to retrieve a list of procedures.
ERR_GET_FUNCTIONS=Unable to retrieve a list of functions.
ERR_GET_GENERATORS=Unable to retrieve a list of generators.
ERR_GET_EXCEPTIONS=Unable to retrieve a list of exceptions.
ERR_GET_BLOB_FILTERS=Unable to retrieve a list of blob filters.
ERR_GET_COLUMNS=Unable to retrieve a list of columns.
ERR_GET_INDICES=Unable to retrieve a list of indices.
ERR_GET_REFERENTIAL_CONST=Unable to retrieve a list of referential constraints.
ERR_GET_UNIQUE_CONST=Unable to retrieve a list of unique constraints.
ERR_GET_CHECK_CONST=Unable to retrieve a list of check constraints.
ERR_GET_TRIGGERS=Unable to retrieve a list of triggers.
ERR_GET_DDL=An error occured while attempting to extract metadata information.
ERR_INVALID_PROPERTY_VALUE=Invalid Property Value.
ERR_GET_DEPENDENCIES=An error occured while attempting to extract dependency information.
ERR_GET_DB_PROPERTIES=An error occured while attempting to retrieve database properties.
ERR_DB_SIZE=Invalid database file size.
ERR_ISQL_ERROR=SQL Error
ERR_SERVER_SERVICE=Service Error
ERR_EXTERNAL_EDITOR=External Editor Error
ERR_SERVER_ALIAS=Invalid server alias. Please enter a valid server alias.
ERR_BACKUP_ALIAS=Invalid backup alias. Please enter a valid backup alias.
ERR_DB_SHUTDOWN=Database shutdown unsuccessful.
ERR_MODIFY_DB_PROPERTIES=Unable to modify database properties.
ERR_DROP_DATABASE=An error occured while attempting to drop the database.
ERR_FILE_OPEN=An error occured while attempting to open file.
ERR_INV_EDITOR=The editor specified is invalid.
ERR_EDITOR_MISSING=The external editor is not specified.
ERR_BAD_FORMAT=Unable to display blob.  The format is not graphical.
ERR_INV_DIALECT=Unable to change the client dialect.
ERR_FOPEN=Error occured opening file.
ERR_TEXT_NOT_FOUND=Search string not found.
ERR_PRINT=Unable to print.  Make sure your printer is installed and working.
ERR_NO_PATH=No path was specified for the backup file or database.
ERR_NO_FILES=No files were specified for backup or restore.
ERR_GET_DOMAINS=Unable to retrieve a list of domains.
ERR_EXT_TOOL_ERROR=Unable to launch external tool
ERR_PROPERTIES=Unable to retrieve properties for the object
ERR_ALIAS_EXISTS=Invalid alias.  This alias already exists.
ERR_CANNOT_START_LOCALIB=Cannot start local interbase.
ERR_SERVER_REGISTER=An error enounter while trying to register a server.
ERR_SERVER_UNREGISTER=An error enounter while trying to unregister a server.
ERR_DATABASE_REGISTER=An error enounter while trying to register a database.
ERR_DATABASE_UNREGISTER=An error enounter while trying to unregister a database.
ERR_DDL_EXECUTION=An error occured while trying to excute a DDL statement.
;****** Warnings ******
WAR_NO_PERMISSION=Insufficient rights for this operation.
WAR_SERVER_REGISTERED=The server is already registered.
WAR_DUPLICATE_DB_ALIAS=This database alias already exists.
WAR_BACKUP_FILE_REGISTERED=The backup file is already registered.
WAR_DIALECT_MISMATCH=The client dialect does not match the database dialect.
WAR_REMOTE_FILENAME=The file name specified may contain a server name.'+#13#10+'Some operations may not work correctly.
WAR_PERSISTENT_UPDATE=Cannot update persistent information.
;****** Information ******}
INF_ADD_USER_SUCCESS=The user was added successfully.
INF_BACKUP_DB_SUCCESS=Database backup completed.
INF_RESTORE_DB_SUCCESS=Database restore completed.
INF_NO_PENDING_TRANSACTIONS=No pending transactions were found.
INF_RESTART_SERVER=You must restart the server in order for the changes to go into effect.
INF_DATABASE_SHUTDOWN=Database shutdown completed successfully.
INF_DATABASE_RESTARTED=Database restart completed successfully.
INF_SQL_SCRIPT=SQL script done.
INF_DATABASE_SWEEP=Database sweep completed.
;****** InterBase Errors ******}
isc_gbak_db_exists=To overwrite an existing database, set the Overwrite option to TRUE
isc_gfix_invalid_sw=An invalid option was specified for the operation.
isc_gfix_incmp_sw=The parameters for this operation are conflicting.
isc_gfix_retry=An operation was not specified.
isc_gfix_retry_db=A database was not specified for the operation
isc_gbak_page_size_missing=The page size must be specified.
isc_gsec_cant_open_db=The security database could not be opened.
isc_gsec_no_usr_name=User name missing.  A user name must be specified for all operations.
isc_gsec_err_add=An unknown error was encountered while attempting to add the user record.
isc_gsec_err_modify=An unknown error was encountered while attempting to modify the user record.
isc_gsec_err_find_mod=An unknown error was encountered while attempting to find/modify the user record.
isc_gsec_err_rec_not_found=The information for the user was not found.
isc_gsec_err_delete=An unknown error was encountered while attempting to delete the user record.
isc_gsec_err_find_del=An unknown error was encountered while attempting to find/delete the user record.
isc_gsec_err_find_disp=An unknown error was encountered while attempting to find/display the user record.
isc_sys_request=An unknown error attempting to open a file on the server.
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
Action=Acción
Name=Nombre
Active=Activo
Allow Nulls=Permitir Nulos
Can Defer=Puede Aplazar
Character Set=Conjunto de Carácteres
Collation=Collation
Connections=Conexiones
Current Value=Valor Actual
Case Insensitive=No sensible a Mayúsculas/Minúsculas
Database=Base de Datos
Default Value=Valor por Omisión
Delete Rule=Regla de Borrado
Descending=Descendente
Description=Descripción
Entry=Entrada
Error=Error
Fields=Campos
Index=Indice
Initially Deferred=Inicialmente Aplazado
Input=Entrada
Input/Output=Entrada/Salida
Last Accessed=Ultimo Acceso
Match Option=Opción de Calce
Member=Miembro
Message=Mensaje
Modified=Modificado
Module=Módulo
Metadata for=Metadato para
New=Nuevo
Output=Salida
Owner=Propietario
objects listed=objetos listados
Parameter=Parámatro
Position=Posición
Path=Ruta
Reference Table=Tabla de Referencia
Read-Only=Sólo Lectura
Type=Tipo
Unique=Unico
Update Rule=Regla de Actualización
Y=S
N=N
Yes=Si
No=No
Open=Abrir
Form View=Vista de Forma
Grid View=Vista de Grilla
Server=Servidor
User=Usuario
Warning=Precaución
Information=Información
Confirmation=Confirmación
Abort=Abortar
All=Todo
Cancel=Cancelar
Close=Cerrar
Help=Ayuda
OK=Aceptar
Retry=Reintentar
Yes To All=Si a Todo
No To All=No a Todo
Active Windows on=Ventana Activa en
File=Archivo
Interactive SQL=SQL Interactivo
Rows Affected=Filas Afectadas
Not Available=No Disponible
Execution Time=Tiempo de Ejecución
Prepare Time=Tiempo de Preparación
Starting Memory=Memoria Inicial
Current Memory=Memoria Actual
Delta Memory=Diferencia de Memoria
Number of Buffers=Número de Buffers
Reads=Leídas
Writes=Escritas
Plan=Plan
Statement=Instrucción
is unknown=es desconocida
Not Connected=No Conectada
Client dialect=Dialecto del Cliente
Version=Versión
All Options=Todas las Opciones
Data Pages=Páginas de Datos
Database Log=Registro de la Base de Datos
Header Page=Encabezado de Página
Index Pages=Páginas de Indice
System Relations=Relaciones del Sistema
Show data for:=Mostrar datos para:
By Value=Por Valor
By Reference=Por Referencia
No Connection=Ninguna Conexión
Transaction=Transacción
Commit=Commit
Rollback=Rollback
Unknown=Desconocido
In Limbo=En el Limbo
Multi-Database Transaction=Transacción Multi-Base de Datos
Fixed=Corregido
Transportable=Transportable
Non-Transportable=No Transportable
True=Verdadero
False=Falso
Process=Procesar
Ignore=Ignorar
None=Ninguno
To Screen=A Pantalla
To File=A Archivo
Select Verbose File=Seleccionar Archivo de Salida
Select Database=Seleccionar Base de Datos
Enabled=Habilitada
Disabled=Deshabilitada
Forced Writes=Escritura Forzada
Sweep Interval=Intervalo de Barrido
Database Dialect=Dialecto de la Base de Datos
Read Only=Sólo Lectura
No input=Ninguna Entrada
Metadata Only=Sólo Metadatos
Garbage Collection=Recolección de Basura
Checksums=Checksums
Convert to Tables=Convertir a Tablas
Transactions in Limbo=Transacciones en el Limbo
Verbose Output=Salida Verbosa
Filename(s)=Nombre de Archivo
Size(Bytes)=Tamaño(Bytes)
Text File=Archivo de Texto
All files=Todos los Archivos
Format=Formato
Value for=Valor para
Replace NULL with=Reemplazar NULL con
Validate Record Fragments=Validar Registros Fragmentados
Read Only Validation=validación Sólo de Lectura
Ignore Checksum Errors=Ignorar Errores de Checksum
Service started at=Servicio Iniciado en
Service ended at=Servicio Terminado en
Running=Ejecutando
Restore=Recuperar
Ignore=Ignorar
Database Restore=
Commit After Each Table=Commit después de cada Tabla
Create Shadow Files=Crear Archivos Sombra
Deactivate Indices=Desactivar Indices
Validity Conditions=Condiciones de Validez
Use All Space=Use Todo el Espacio
Pages=Páginas
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
Servers=Los
Server=El
Databases=Las
Database=La
Backup=El
Users=Los
User=El
Certificates=Los
Certificate=El
Domains=Los
Domain=El
Tables=Las
Table=La
Views=Las
View=La
Stored Procedures=Los
Stored Procedure=El
External Functions=Las
External Function=La
Generators=Los
Generator=El
Exceptions=Las
Exception=La
Blob Filters=Los
Blob Filter=El
Roles=Los
Role=El
Columns=Las
Column=La
Indexes=Los
Index=El
Referential Constraints=Las
Referential Constraint=La
Unique Constraints=La
Unique Constraint=Las
Check Constraints=Las
Check Constraint=La
Triggers=Los
Trigger=El
Server Log=El
Unknown=Lo
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
Servers=Servidores
Server=Servidor
Databases=Bases de Datos
Database=Base de Datos
Backup=Respaldo
Users=Usuarios
User=Usuario
Certificates=Certificados
Certificate=Certificado
Domains=Dominios
Domain=Dominio
Tables=Tablas
Table=Tabla
Views=Vistas
View=Vista
Stored Procedures=Procedimientos Almacenados
Stored Procedure=Procedimiento Almacenado
External Functions=Funciones Externas
External Function=Función Externa
Generators=Generadores
Generator=Generador
Exceptions=Excepciones
Exception=Excepción
Blob Filters=Filtros de Blob
Blob Filter=Filtro de Blob
Roles=Roles
Role=Rol
Columns=Columnas
Column=Columna
Indexes=Indices
Index=Indice
Referential Constraints=Integridades Referenciales
Referential Constraint=Integridad Referencial
Unique Constraints=Llaves Primarias
Unique Constraint=Llave Primaria
Check Constraints=Controles de Validez
Check Constraint=Control de Validez
Triggers=Triggers
Trigger=Trigger
Server Log=Server Log
Unknown=Desconocido


