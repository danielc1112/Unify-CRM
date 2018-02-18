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
  Russian=ru
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
Column0.Caption=Имя
Column1.Caption=Значение
[frmMain.FrameGenerators1.NewGenerator1]
Class=TMenuItem
Caption=Создать генератор
Hint=Создать новый генератор
[frmMain.FrameGenerators1.EditGenerator1]
Class=TMenuItem
Caption=Изменить генератор
Hint=Изменить текущий генератор
[frmMain.FrameGenerators1.DropGenerator1]
Class=TMenuItem
Caption=Удалить генератор
Hint=Удалить текущий генератор
[frmMain.Console1]
Class=TMenuItem
Caption=Консоль
Hint=
[frmMain.View1]
Class=TMenuItem
Caption=Просмотр
Hint=
[frmMain.Server1]
Class=TMenuItem
Caption=Сервер
Hint=
[frmMain.Database1]
Class=TMenuItem
Caption=База данных
Hint=
[frmMain.Maintenance2]
Class=TMenuItem
Caption=Обслуживание
Hint=
[frmMain.BackupRestore1]
Class=TMenuItem
Caption=Резервное копирование/Восстановление
Hint=
[frmMain.ConnectAs3]
Class=TMenuItem
Caption=Новое соединение...
Hint=Интерактивный SQL
[frmMain.Help1]
Class=TMenuItem
Caption=Помощь
Hint=
[frmMain.Maintenance1]
Class=TMenuItem
Caption=Обслуживание
Hint=
[frmMain.BackupRestore2]
Class=TMenuItem
Caption=Резервное копирование/Восстановление
Hint=
[frmMain.ConsoleExit]
Class=TAction
Caption=Выход
Hint=Завершить работу IBOConsole
[frmMain.ViewList]
Class=TAction
Caption=Список
Hint=
[frmMain.ViewReport]
Class=TAction
Caption=Таблица
Hint=
[frmMain.ViewIcon]
Class=TAction
Caption=Крупные
Hint=
[frmMain.ViewSmallIcon]
Class=TAction
Caption=Мелкие
Hint=
[frmMain.ViewProperties]
Class=TAction
Caption=Свойства ...
Hint=Просмотр свойств объекта
[frmMain.ViewSystem]
Class=TAction
Caption=Системные данные
Hint=
[frmMain.HelpContents]
Class=THelpContents
Caption=Содержание
Hint=
[frmMain.HelpOnHelp]
Class=THelpOnHelp
Caption=О системе справки
Hint=
[frmMain.HelpTopicSearch]
Class=THelpTopicSearch
Caption=Поиск темы
Hint=
[frmMain.HelpAbout]
Class=TAction
Caption=О программе ...
Hint=
[frmMain.EditCopy]
Class=TEditCopy
Caption=Копировать
Hint=Копировать в буфер обмена
[frmMain.EditCut]
Class=TEditCut
Caption=Вырезать
Hint=Удалить в буфер обмена
[frmMain.EditPaste]
Class=TEditPaste
Caption=Вставить
Hint=Вставить из буфера обмена
[frmMain.EditSelectAll]
Class=TEditSelectAll
Caption=Выделить все
Hint=Выделить все
[frmMain.EditUndo]
Class=TEditUndo
Caption=Отмена
Hint=Отменить последнее действие
[frmMain.EditFont]
Class=TAction
Caption=&Шрифт ...
Hint=Изменить шрифт
[frmMain.WindowList]
Class=TAction
Caption=&Окна
Hint=Список окон
[frmMain.UserAdd]
Class=TAction
Caption=Добавить пользователя ...
Hint=Ввод нового пользователя
[frmMain.UserModify]
Class=TAction
Caption=Изменить пользователя ...
Hint=Изменение информации о пользователе
[frmMain.UserDelete]
Class=TAction
Caption=Удалить пользователя
Hint=Удаление текущего пользователя
[frmMain.ServerLogout]
Class=TAction
Caption=Отключиться
Hint=Отключиться от текущего сервера
[frmMain.ServerSecurity]
Class=TAction
Caption=Права пользователей ...
Hint=Управление пользователями
[frmMain.ServerProperties]
Class=TAction
Caption=Свойства ...
Hint=Просмотр свойств сервера
[frmMain.DatabaseDisconnect]
Class=TAction
Caption=Отключиться от БД
Hint=Отключиться от текущей базы данных
[frmMain.DatabaseProperties]
Class=TAction
Caption=Свойства ...
Hint=Просмотр свойств базы данных
[frmMain.DatabaseStatistics]
Class=TAction
Caption=Статистика базы данных ...
Hint=Показать статистику базы данных
[frmMain.DatabaseShutdown]
Class=TAction
Caption=Shutdown ...
Hint=Shutdown the database
[frmMain.DatabaseSweep]
Class=TAction
Caption=Сборка "мусора"
Hint=Удалить старые версии записей из базы данных
[frmMain.DatabaseRecoverTrans]
Class=TAction
Caption=Восстановление транзакций ...
Hint=Восстановление limbo-транзакций
[frmMain.DatabaseMetadata]
Class=TAction
Caption=Просмотр метаданных ...
Hint=Просмотр метаданных текущей БД
[frmMain.DatabaseRestart]
Class=TAction
Caption=Database &Restart
Hint=Restart a database
[frmMain.DatabaseDrop]
Class=TAction
Caption=Удалить базу данных
Hint=Удалить текущую базу данных
[frmMain.DBCBackup]
Class=TAction
Caption=Резервное копирование базы данных
Hint=Выполнить резервное копирование базы данных
[frmMain.DatabaseUsers]
Class=TAction
Caption=Активные &Пользователи ...
Hint=Показать список пользователей, подключенных к серверу
[frmMain.DBCRestore]
Class=TAction
Caption=Восстановить базу данных
Hint=Восстановить базу данных из резервной копии
[frmMain.ServerLogin]
Class=TAction
Caption=Подключиться ...
Hint=Подключиться к серверу
[frmMain.ServerRegister]
Class=TAction
Caption=Регистрация ...
Hint=Зарегистрировать новый сервер
[frmMain.ServerUnregister]
Class=TAction
Caption=Удалить информацию о сервере
Hint=Удалить регистрационную информацию о сервере
[frmMain.ServerConnection]
Class=TAction
Caption=Тест соединения ...
Hint=Проверка подключения к серверу
[frmMain.ServerActionProps]
Class=TAction
Caption=Свойства ...
Hint=Просмотр свойств сервера
[frmMain.DatabaseRegister]
Class=TAction
Caption=Регистрация БД ...
Hint=Зарегистрировать базу данных
[frmMain.DatabaseUnregister]
Class=TAction
Caption=Удалить информацию о БД
Hint=Удалить регистрационную информацию о базе данных
[frmMain.DatabaseConnect]
Class=TAction
Caption=Подключиться
Hint=Подключиться к базе данных
[frmMain.DatabaseConnectAs]
Class=TAction
Caption=Подключиться как ...
Hint=Подключиться к базе данных под определенным именем пользователя
[frmMain.DatabaseCreate]
Class=TAction
Caption=Создать БД ...
Hint=Создать новую базу данных
[frmMain.DatabaseValidate]
Class=TAction
Caption=Проверка БД...
Hint=Проверить структуру БД
[frmMain.DatabaseActionsProperties]
Class=TAction
Caption=Свойства ...
Hint=Показать свойства базы данных
[frmMain.ExtToolsLaunchISQL]
Class=TAction
Caption=Интерактивный S&QL ...
Hint=Интерактивный SQL
[frmMain.ExtToolsConfigure]
Class=TAction
Caption=Настройка инструментов ...
Hint=Настройка инструментов
[frmMain.ExtToolDropDown]
Class=TAction
Caption=Инструменты
Hint=Инструменты
[frmMain.DatabaseBackup]
Class=TAction
Caption=Резервное копирование ...
Hint=Выполнить резервное копирование базы данных
[frmMain.DatabaseRestore]
Class=TAction
Caption=Восстановление ...
Hint=Восстановить базу данных из резервной копии
[frmMain.BackupRestoreModifyAlias]
Class=TAction
Caption=Изменить имя задания ...
Hint=Изменить имя задания на резервное копирование
[frmMain.BackupRestoreRemoveAlias]
Class=TAction
Caption=Удалить задание
Hint=Удалить текущее задание на резервное копирование
[frmMain.ViewServerLog]
Class=TAction
Caption=Журнал ...
Hint=Просмотр журнала сервера
[frmMain.ObjectDescription]
Class=TAction
Caption=Изменить описание ...
Hint=Изменить описание объекта
[frmMain.ObjectCreate]
Class=TAction
Caption=&Создать ...
Hint=Создать новый объект выбранного типа
[frmMain.ObjectModify]
Class=TAction
Caption=Изменить ...
Hint=Изменить текущий объект
[frmMain.ObjectDelete]
Class=TAction
Caption=Удалить ...
Hint=Удалить текущий объект
[frmMain.ObjectExtract]
Class=TAction
Caption=Извлечь ...
Hint=Извлечь метаданные для текущего объекта
[frmMain.ObjectProperties]
Class=TAction
Caption=Свойства ...
Hint=
[frmMain.ObjectRefresh]
Class=TAction
Caption=Обновить
Hint=
[frmMain.HighlightOptions]
Class=TAction
Caption=Настройки цветов
Hint=Настройки цветов
[frmMain.DatabaseWindows]
Class=TAction
Caption=Окна баз данных
Hint=
[frmMain.ActionOptions]
Class=TAction
Caption=Настройки...
Hint=
[frmMain.actHighlightOptions]
Class=TAction
Caption=Настройки цветов...
Hint=
[frmMain.Test1]
Class=TMenuItem
Caption=Тест
Hint=
[frmOptions]
Class=TfrmOptions
Caption=Настройки
Hint=
[frmOptions.btnApply]
Class=TButton
Caption=Применить
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
Caption=Язык
Hint=Выбор языка
[frmOptions.DDLRadioGroup]
Class=TGroupButton
Caption=Транзакции DDL
Hint=
Items.Count=2
Item0=Подтверждать автоматически
Item1=Подтверждать вручную
[frmOptions.CheckBox1]
Class=TCheckBox
Caption=Force Uppercase Identifier
Hint=
[frmOptions.ButtonChangeFont]
Class=TButton
Caption=Изменить шрифт
Hint=
[frmOptions.btnCancel]
Class=TButton
Caption=Отмена
Hint=
[frmEditorOptions]
Class=TfrmEditorOptions
Caption=Выделение синтаксиса в редакторе
Hint=
[frmEditorOptions.Label1]
Class=TLabel
Caption=Цвет
Hint=
[frmEditorOptions.Label2]
Class=TLabel
Caption=Элемент
Hint=
[frmEditorOptions.GroupBox1]
Class=TGroupBox
Caption=Стиль текста
Hint=
[frmEditorOptions.chkBold]
Class=TCheckBox
Caption=Полужирный
Hint=
[frmEditorOptions.chkItalic]
Class=TCheckBox
Caption=Курсив
Hint=
[frmEditorOptions.chkUnderline]
Class=TCheckBox
Caption=Подчеркнутый
Hint=
[frmEditorOptions.Button1]
Class=TButton
Caption=&OK
Hint=
[frmEditorOptions.Button2]
Class=TButton
Caption=Отмена
Hint=
[frmEditorOptions.GroupBox2]
Class=TGroupBox
Caption=Использовать умолчания для
Hint=
[frmEditorOptions.chkDefaultFG]
Class=TCheckBox
Caption=Default Foreground
Hint=
[frmEditorOptions.chkDefaultBG]
Class=TCheckBox
Caption=Default Background
Hint=
[frmEditorOptions.Label3]
Class=TLabel
Caption=Courier New
Hint=
[frmEditorOptions.ButtonChangeFont]
Class=TButton
Caption=Изменить шрифт
Hint=
[frmServerLogin]
Class=TfrmServerLogin
Caption=Регистрация на сервере
Hint=
[frmServerLogin.lblServerName]
Class=TLabel
Caption=Сервер:
Hint=
[frmServerLogin.lblUsername]
Class=TLabel
Caption=Пользователь:
Hint=
[frmServerLogin.lblPassword]
Class=TLabel
Caption=Пароль:
Hint=
[frmServerLogin.lblServer]
Class=TLabel
Caption=Локальный сервер
Hint=
[frmServerLogin.btnLogin]
Class=TButton
Caption=Подключиться
Hint=
[frmServerLogin.btnCancel]
Class=TButton
Caption=Отмена
Hint=
[frmUserInfo]
Class=TfrmUserInfo
Caption=Информация о пользователе
Hint=
[frmUserInfo.btnNew]
Class=TButton
Caption=Новый
Hint=
[frmUserInfo.btnApply]
Class=TButton
Caption=Применить
Hint=
[frmUserInfo.btnDelete]
Class=TButton
Caption=Удалить
Hint=
[frmUserInfo.btnClose]
Class=TButton
Caption=Закрыть
Hint=
[frmUserInfo.btnCancel]
Class=TButton
Caption=Отмена
Hint=
[frmUserInfo.gbOptionalInfo]
Class=TGroupBox
Caption=Дополнительная информация
Hint=
[frmUserInfo.lblFName]
Class=TLabel
Caption=Имя:
Hint=
[frmUserInfo.lblMName]
Class=TLabel
Caption=Отчество:
Hint=
[frmUserInfo.lblLName]
Class=TLabel
Caption=Фамилия:
Hint=
[frmUserInfo.gbRequiredInfo]
Class=TGroupBox
Caption= Необходимая информация
Hint=
[frmUserInfo.lblPassword]
Class=TLabel
Caption=Пароль:
Hint=
[frmUserInfo.lblConfirmPassword]
Class=TLabel
Caption=Подтверждение пароля:
Hint=
[frmUserInfo.lblUserName]
Class=TLabel
Caption=Пользователь:
Hint=
[frmUserInfo.NewUser]
Class=TAction
Caption=NewUser
Hint=
[frmUserInfo.ModifyUser]
Class=TAction
Caption=ModifyUser
Hint=
[frmUserInfo.DeleteUser]
Class=TAction
Caption=DeleteUser
Hint=
[frmServerProperties]
Class=TfrmServerProperties
Caption=Свойства сервера
Hint=
[frmServerProperties.pgcMain]
Class=TPageControl
Hint=
PageCount=2
[frmServerProperties.pgcMain.TabAlias]
Class=TTabSheet
Caption=Псевдоним
Hint=
[frmServerProperties.pgcMain.TabGeneral]
Class=TTabSheet
Caption=General
Hint=
[frmServerProperties.TabAlias]
Class=TTabSheet
Caption=Псевдоним
Hint=
[frmServerProperties.lblAliasName]
Class=TLabel
Caption=Псевдоним:
Hint=
[frmServerProperties.lblHostName]
Class=TLabel
Caption=&Host Name:
Hint=
[frmServerProperties.lblProtocol]
Class=TLabel
Caption=Сетевой протокол:
Hint=
[frmServerProperties.Label1]
Class=TLabel
Caption=Описание:
Hint=
[frmServerProperties.TabGeneral]
Class=TTabSheet
Caption=General
Hint=
[frmServerProperties.lblVersionCaption]
Class=TLabel
Caption=Версия:
Hint=
[frmServerProperties.lblCapabilities]
Class=TLabel
Caption=Capabilities:
Hint=
[frmServerProperties.lblAttachmentNoCaption]
Class=TLabel
Caption=Number of attachments:
Hint=
[frmServerProperties.lblDatabaseNocaption]
Class=TLabel
Caption=Число баз данных:
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
Caption=Unknown
Hint=
[frmServerProperties.lvDatabases]
Class=TListView
Hint=
Columns.Count=1
Column0.Caption=Attached Databases
[frmServerProperties.btnRefresh]
Class=TButton
Caption=Обновить
Hint=
[frmServerProperties.btnApply]
Class=TButton
Caption=Применить
Hint=
[frmServerProperties.btnCancel]
Class=TButton
Caption=&OK
Hint=
[frmServerProperties.Button1]
Class=TButton
Caption=Отмена
Hint=
[frmDBProperties]
Class=TfrmDBProperties
Caption=Свойства базы данных
Hint=
[frmDBProperties.lblServerName]
Class=TLabel
Caption=Сервер:
Hint=
[frmDBProperties.lblServer]
Class=TLabel
Caption=Локальный сервер
Hint=
[frmDBProperties.pgcMain]
Class=TPageControl
Hint=
PageCount=2
[frmDBProperties.pgcMain.TabAlias]
Class=TTabSheet
Caption=Псевдоним
Hint=
[frmDBProperties.pgcMain.TabGeneral]
Class=TTabSheet
Caption=General
Hint=
[frmDBProperties.TabAlias]
Class=TTabSheet
Caption=Псевдоним
Hint=
[frmDBProperties.lblAliasName]
Class=TLabel
Caption=Псевдоним:
Hint=
[frmDBProperties.lblFilename]
Class=TLabel
Caption=Файл:
Hint=
[frmDBProperties.btnSelFilename]
Class=TButton
Caption=...
Hint=Выбор БД
[frmDBProperties.TabGeneral]
Class=TTabSheet
Caption=General
Hint=
[frmDBProperties.lblOptions]
Class=TLabel
Caption=O&ptions:
Hint=
[frmDBProperties.gbSummaryInfo]
Class=TGroupBox
Caption= Итоговая информация
Hint=
[frmDBProperties.lblDBOwner]
Class=TLabel
Caption=Владелец:
Hint=
[frmDBProperties.lblDBPages]
Class=TLabel
Caption=Allocated DB Pages:
Hint=
[frmDBProperties.lblPageSize]
Class=TLabel
Caption=Размер страницы:
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
Column0.Caption=Secondary Files
Column1.Caption=Start Page
[frmDBProperties.btnApply]
Class=TButton
Caption=Применить
Hint=
[frmDBProperties.btnCancel]
Class=TButton
Caption=&OK
Hint=
[frmDBProperties.Button1]
Class=TButton
Caption=Отмена
Hint=
[frmDBStatistics]
Class=TfrmDBStatistics
Caption=Статистика базы данных
Hint=
[frmDBStatistics.lblOptions]
Class=TLabel
Caption=O&ption:
Hint=
[frmDBStatistics.lblDatabaseName]
Class=TLabel
Caption=База данных:
Hint=
[frmDBStatistics.lblDatabase]
Class=TLabel
Caption=AEKOOLMS002.FDB
Hint=AEKOOLMS002.FDB
[frmDBStatistics.btnOK]
Class=TButton
Caption=&OK
Hint=
[frmDBStatistics.btnCancel]
Class=TButton
Caption=Отмена
Hint=
[frmTextViewer]
Class=TfrmTextViewer
Caption=Метаданные
Hint=
[frmTextViewer.mnuFile]
Class=TMenuItem
Caption=Файл
Hint=
[frmTextViewer.mnuFiSaveAs]
Class=TMenuItem
Caption=Сохранить ...
Hint=Сохранить текущий файл с новым именем
[frmTextViewer.mnuFiPrint]
Class=TMenuItem
Caption=Печать
Hint=
[frmTextViewer.mnuFiExit]
Class=TMenuItem
Caption=Выход
Hint=Exit this application
[frmTextViewer.mnuEdit]
Class=TMenuItem
Caption=Правка
Hint=
[frmTextViewer.mnuEdFind]
Class=TMenuItem
Caption=Поиск
Hint=Искать строку
[frmTextViewer.EditCopy1]
Class=TEditCopy
Caption=Копировать
Hint=Копировать в буфер обмена
[frmTextViewer.EditCut1]
Class=TEditCut
Caption=Вырезать
Hint=Вырезать в буфер обмена
[frmTextViewer.EditPaste1]
Class=TEditPaste
Caption=Вставить
Hint=Вставить из буфера обмена
[frmTextViewer.EditSelectAll1]
Class=TEditSelectAll
Caption=Выделить все
Hint=
[frmTextViewer.EditUndo1]
Class=TEditUndo
Caption=&Undo
Hint=
[frmTextViewer.EditFont]
Class=TAction
Caption=Шрифт ...
Hint=Изменить шрифт
[frmDBShutdown]
Class=TfrmDBShutdown
Caption=Database Shutdown
Hint=
[frmDBShutdown.lblDatabaseName]
Class=TLabel
Caption=База данных:
Hint=
[frmDBShutdown.lblOptions]
Class=TLabel
Caption=O&ptions:
Hint=
[frmDBShutdown.stxDatabaseName]
Class=TLabel
Caption=AEKOOLMS002.FDB
Hint=AEKOOLMS002.FDB
[frmDBShutdown.btnOK]
Class=TButton
Caption=&OK
Hint=
[frmDBShutdown.btnCancel]
Class=TButton
Caption=Отмена
Hint=
[frmMessage]
Class=TfrmMessage
Caption=Информация
Hint=
[frmMessage.lblDetailMsg]
Class=TLabel
Caption=Подробнее:
Hint=
[frmMessage.lblSummaryMsg]
Class=TLabel
Caption=Незавершенные транзакции не обнаружены.
Hint=
[frmMessage.btnOK]
Class=TButton
Caption=&OK
Hint=
[frmDBBackup]
Class=TfrmDBBackup
Caption=Резервное копирование
Hint=
[frmDBBackup.lblOptions]
Class=TLabel
Caption=O&ptions:
Hint=
[frmDBBackup.gbDatabaseFile]
Class=TGroupBox
Caption= База данных
Hint=
[frmDBBackup.lblDatabaseServer]
Class=TLabel
Caption=Сервер:
Hint=
[frmDBBackup.lblDatabaseAlias]
Class=TLabel
Caption=Псевдоним:
Hint=
[frmDBBackup.lblDatabaseserverName]
Class=TLabel
Caption=Локальный сервер
Hint=
[frmDBBackup.gbBackupFiles]
Class=TGroupBox
Caption= Backup File(s)
Hint=
[frmDBBackup.lblBackupServer]
Class=TLabel
Caption=&Сервер:
Hint=
[frmDBBackup.lblBackupAlias]
Class=TLabel
Caption=Псевдоним:
Hint=
[frmDBBackup.btnOK]
Class=TButton
Caption=&OK
Hint=
[frmDBBackup.btnCancel]
Class=TButton
Caption=Отмена
Hint=
[frmMain.actDatabaseBackup]
Class=TAction
Caption=Резервное копирование
Hint=Выполнить резервное копирование базы данных
[frmDBRestore]
Class=TfrmDBRestore
Caption=Восстановление БД
Hint=
[frmDBRestore.lblOptions]
Class=TLabel
Caption=O&ptions:
Hint=
[frmDBRestore.gbDatabaseFiles]
Class=TGroupBox
Caption= База данных
Hint=
[frmDBRestore.lblDestinationServer]
Class=TLabel
Caption=Сервер:
Hint=
[frmDBRestore.lblDBAlias]
Class=TLabel
Caption=Псевдоним:
Hint=
[frmDBRestore.gbBackupFiles]
Class=TGroupBox
Caption= Backup File(s)
Hint=
[frmDBRestore.lblBackupServer]
Class=TLabel
Caption=Сервер:
Hint=
[frmDBRestore.lblBackupAlias]
Class=TLabel
Caption=Псевдоним:
Hint=
[frmDBRestore.lblBackupServerName]
Class=TLabel
Caption=Локальный сервер
Hint=
[frmDBRestore.btnOK]
Class=TButton
Caption=&OK
Hint=
[frmDBRestore.btnCancel]
Class=TButton
Caption=Отмена
Hint=
[frmDomains]
Class=TfrmDomains
Caption=Domain - BLOB_TEXT
[frmDomains.pgObjectEditor]
Class=TPageControl
Hint=
PageCount=5
[frmDomains.pgObjectEditor.tsMain]
Class=TTabSheet
Caption=Домен
[frmDomains.pgObjectEditor.tsDefault]
Class=TTabSheet
Caption=Умолчание
[frmDomains.pgObjectEditor.tsConstraint]
Class=TTabSheet
Caption=Ограничение
[frmDomains.pgObjectEditor.tsDescription]
Class=TTabSheet
Caption=Описание
[frmDomains.pgObjectEditor.tsDDL]
Class=TTabSheet
Caption=Метаданные
[frmDomains.tsMain]
Class=TTabSheet
Caption=Домен
[frmDomains.Label1]
Class=TLabel
Caption=Домен:
[frmDomains.Label3]
Class=TLabel
Caption=Тип:
[frmDomains.Label4]
Class=TLabel
Caption=Размер:
[frmDomains.Label9]
Class=TLabel
Caption=Набор символов:
[frmDomains.Label2]
Class=TLabel
Caption=Co&llate:
[frmDomains.Label14]
Class=TLabel
Caption=Точность:
[frmDomains.Label15]
Class=TLabel
Caption=&Scale:
[frmDomains.Label18]
Class=TLabel
Caption=&Sub Type:
[frmDomains.Label6]
Class=TLabel
Caption=Набор символов:
[frmDomains.Label11]
Class=TLabel
Caption=Размер сегмента:
[frmDomains.Label5]
Class=TLabel
Caption=Co&llate:
[frmDomains.chkColNotNull]
Class=TCheckBox
Caption=Not &Null
[frmDomains.Label10]
Class=TLabel
Caption=Массив:
[frmDomains.lvArray]
Class=TListView
Hint=
Columns.Count=2
Column0.Caption=Нижняя граница
Column1.Caption=Верхняя граница
[frmDomains.btnAddDimension]
Class=TButton
Caption=Добавить массив
[frmDomains.btnDeleteDimension]
Class=TButton
Caption=Удалить массив
[frmDomains.btnEditDimension]
Class=TButton
Caption=Изменить массив
[frmDomains.tsDefault]
Class=TTabSheet
Caption=Умолчание
[frmDomains.tsConstraint]
Class=TTabSheet
Caption=Ограничение
[frmDomains.tsDescription]
Class=TTabSheet
Caption=Описание
[frmDomains.tsDDL]
Class=TTabSheet
Caption=Метаданные
[frmServerRegister]
Class=TfrmServerRegister
Caption=Зарегистрировать сервер и подключиться
[frmServerRegister.gbServerInfo]
Class=TGroupBox
Caption= Информация о сервере
[frmServerRegister.lblServerName]
Class=TLabel
Caption=Имя сервера:
[frmServerRegister.lblProtocol]
Class=TLabel
Caption=Сетевой протокол:
[frmServerRegister.lblServerAlias]
Class=TLabel
Caption=Псевдоним:
[frmServerRegister.Label1]
Class=TLabel
Caption=Описание:
[frmServerRegister.rbLocalServer]
Class=TRadioButton
Caption=Локальный сервер
[frmServerRegister.rbRemoteServer]
Class=TRadioButton
Caption=Удаленный сервер
[frmServerRegister.chkSaveAlias]
Class=TCheckBox
Caption=Информация о псевдониме
[frmServerRegister.gbLoginInfo]
Class=TGroupBox
Caption= Login Information
[frmServerRegister.lblUsername]
Class=TLabel
Caption=Пользователь:
[frmServerRegister.lblPassword]
Class=TLabel
Caption=Пароль:
[frmServerRegister.btnOK]
Class=TButton
Caption=&OK
[frmServerRegister.btnCancel]
Class=TButton
Caption=Отмена
[frmCommDiag]
Class=TfrmCommDiag
Caption=Тест соединения
[frmCommDiag.pgcDiagnostics]
Class=TPageControl
Hint=
PageCount=4
[frmCommDiag.pgcDiagnostics.tabDBConnection]
Class=TTabSheet
Caption=Соединение с базой данных
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
Caption=DB Connection
[frmCommDiag.lblDBResults]
Class=TLabel
Caption=Результаты:
[frmCommDiag.gbDatabaseInfo]
Class=TGroupBox
Caption= Сведения о базе данных
[frmCommDiag.lblDatabase]
Class=TLabel
Caption=База данных:
[frmCommDiag.lblUsername]
Class=TLabel
Caption=Пользователь:
[frmCommDiag.lblPassword]
Class=TLabel
Caption=Пароль:
[frmCommDiag.btnSelDB]
Class=TButton
Caption=...
Hint=Выбор базы данных
[frmCommDiag.gbDBServerInfo]
Class=TGroupBox
Caption= Информация о сервере
[frmCommDiag.lblServerName]
Class=TLabel
Caption=Сервер:
[frmCommDiag.lblProtocol]
Class=TLabel
Caption=Сетевой протокол:
[frmCommDiag.rbLocalServer]
Class=TRadioButton
Caption=Локальный сервер
[frmCommDiag.rbRemoteServer]
Class=TRadioButton
Caption=Удаленный сервер
[frmCommDiag.tabTCPIP]
Class=TTabSheet
Caption=TCP/IP
[frmCommDiag.lblWinSockResults]
Class=TLabel
Caption=Результаты:
[frmCommDiag.gbTCPIPServerInfo]
Class=TGroupBox
Caption= Информация о сервере
[frmCommDiag.lblWinsockServer]
Class=TLabel
Caption=Хост:
[frmCommDiag.lblService]
Class=TLabel
Caption=Сервис:
[frmCommDiag.tabNetBEUI]
Class=TTabSheet
Caption=NetBEUI
[frmCommDiag.lblNetBeuiResults]
Class=TLabel
Caption=Результаты:
[frmCommDiag.gbNetBEUIServerInfo]
Class=TGroupBox
Caption= Информация о сервере
[frmCommDiag.lblNetBEUIServer]
Class=TLabel
Caption=Имя сервера:
[frmCommDiag.tabSPX]
Class=TTabSheet
Caption=SPX
[frmCommDiag.lblSPXResults]
Class=TLabel
Caption=Результаты:
[frmCommDiag.gbNovellServerInfo]
Class=TGroupBox
Caption= Информация о сервере
[frmCommDiag.lblSPXServer]
Class=TLabel
Caption=Имя сервера:
[frmCommDiag.btnTest]
Class=TButton
Caption=Тест
[frmCommDiag.btnCancel]
Class=TButton
Caption=Отмена
[frmBackupAliasProperties]
Class=TfrmBackupAliasProperties
Caption=Свойства Backup-псевдонима
[frmBackupAliasProperties.lblServerName]
Class=TLabel
Caption=Сервер:
[frmBackupAliasProperties.lblAliasName]
Class=TLabel
Caption=Псевдоним:
[frmBackupAliasProperties.lblDBServer]
Class=TLabel
Caption=Целевой сервер БД:
[frmBackupAliasProperties.lblDBAlias]
Class=TLabel
Caption=Целевой псевдоним БД:
[frmBackupAliasProperties.lblServer]
Class=TLabel
Caption=Локальный сервер
[frmBackupAliasProperties.btnApply]
Class=TButton
Caption=Применить
[frmBackupAliasProperties.btnOK]
Class=TButton
Caption=&OK
[frmBackupAliasProperties.Button1]
Class=TButton
Caption=Отмена
[frmDBConnections]
Class=TfrmDBConnections
Caption=Соединения с БД
[frmDBConnections.lvConnections]
Class=TListView
Hint=
Columns.Count=1
Column0.Caption=Пользователь
[frmDBConnections.btnOK]
Class=TButton
Caption=&OK
[dlgWindowList]
Class=TdlgWindowList
Caption=Активные окна
[dlgWindowList.ListView1]
Class=TListView
Hint=
Columns.Count=1
Column0.Caption=Окна
[dlgWindowList.SwitchTo]
Class=TAction
Caption=Переключиться ...
[dlgWindowList.Closewindow]
Class=TAction
Caption=Закрыть окно
[dlgWindowList.ActionCloseAll]
Class=TAction
Caption=Закрыть все
[frmDomains.ActionCompile]
Class=TAction
Caption=Компиляция
[frmEditorTable]
Class=TfrmEditorTable
Caption=Table - CATEGORIE
[frmEditorTable.pgcProperties]
Class=TPageControl
Hint=
PageCount=6
[frmEditorTable.pgcProperties.tabProperties]
Class=TTabSheet
Caption=Properties
[frmEditorTable.pgcProperties.tabData]
Class=TTabSheet
Caption=Данные
[frmEditorTable.pgcProperties.tabMetadata]
Class=TTabSheet
Caption=Метаданные
[frmEditorTable.pgcProperties.tabPermissions]
Class=TTabSheet
Caption=Permissions
[frmEditorTable.pgcProperties.tabDependencies]
Class=TTabSheet
Caption=Зависимости
[frmEditorTable.pgcProperties.tabDescription]
Class=TTabSheet
Caption=Описание
[frmEditorTable.tabProperties]
Class=TTabSheet
Caption=Свойства
[frmEditorTable.lvTableObjects]
Class=TListView
Hint=
Columns.Count=6
Column0.Caption=Имя
Column1.Caption=Тип
Column2.Caption=Кодировка
Column3.Caption=Сортировка
Column4.Caption=Умолчание
Column5.Caption=Не пусто
[frmEditorTable.tabData]
Class=TTabSheet
Caption=Данные
[frmEditorTable.dbgData]
Class=TDBGrid
Hint=
Columns.Count=1
Column0.Caption=
[frmEditorTable.DBNavigator1]
Class=TNavButton
Hint=Освежить данные
[frmEditorTable.IB_TransactionBar1]
Class=TIB_TransactionBar_Button
Hint=Закрыть текущую транзакцию
[frmEditorTable.tabMetadata]
Class=TTabSheet
Caption=Метаданные
[frmEditorTable.cbExtractData]
Class=TCheckBox
Caption=Извлечь данные таблицы
[frmEditorTable.tabPermissions]
Class=TTabSheet
Caption=Права
[frmEditorTable.lvPermissions]
Class=TListView
Hint=
Columns.Count=8
Column0.Caption=Объект
Column1.Caption=Просмотр
Column2.Caption=Удаление
Column3.Caption=Вставка
Column4.Caption=Изменение
Column5.Caption=Reference
Column6.Caption=Выполнение
Column7.Caption=Член
[frmEditorTable.Label1]
Class=TLabel
Caption=This permission includes GRANT OPTION
[frmEditorTable.tabDependencies]
Class=TTabSheet
Caption=Зависимости
[frmEditorTable.rbDependent]
Class=TRadioButton
Caption=Объекты, зависимые от текущего
Hint=Показать объекты, зависимые от текущего объекта
[frmEditorTable.rbDependedOn]
Class=TRadioButton
Caption=Объекты, от которых зависит текущий объект
Hint=Показать объекты, от которых зависит текущий объект
[frmEditorTable.tabDescription]
Class=TTabSheet
Caption=Описание
[frmEditorTable.ShowColumns]
Class=TAction
Caption=Поля
Hint=Показать поля таблицы
[frmEditorTable.ShowTriggers]
Class=TAction
Caption=Триггеры
Hint=Показать триггеры таблицы
[frmEditorTable.ShowCheckConstraints]
Class=TAction
Caption=Ограничения проверки
Hint=Показать ограничения проверки
[frmEditorTable.ShowIndexes]
Class=TAction
Caption=Индексы
Hint=Показать индексы
[frmEditorTable.ShowUniqueConstraints]
Class=TAction
Caption=Ограничения уникальности
Hint=Показать ограничения уникальности для текущей таблицы
[frmEditorTable.ShowReferentialConstraints]
Class=TAction
Caption=Ограничения ссылочной целостности
Hint=Показать ограничения ссылочной целостности для текущей таблицы
[frmEditorTable.EditCopy1]
Class=TEditCopy
Caption=Копировать
Hint=Копировать в буфер обмена
[frmEditorTable.EditCut1]
Class=TEditCut
Caption=Вырезать
Hint=Вырезать в буфер обмена
[frmEditorTable.EditPaste1]
Class=TEditPaste
Caption=Вставить
Hint=Вставить из буфера обмена
[frmEditorTable.EditSelectAll1]
Class=TEditSelectAll
Caption=Выделить все
[frmEditorTable.EditUndo1]
Class=TEditUndo
Caption=Отменить
[frmEditorTable.ActionNewObject]
Class=TAction
Caption=Создать...
[frmEditorTable.ActionEditObject]
Class=TAction
Caption=Правка...
[frmEditorTable.ActionDropObject]
Class=TAction
Caption=Удалить
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
Caption=Открыть
[frmEditorTable.ActionTableFilter]
Class=TAction
Caption=Фильтр
[frmEditorTable.ActionTableFormView]
Class=TAction
Caption=Форма
[frmEditorTable.ActionEmptyTable]
Class=TAction
Caption=Очистить таблицу
[frmEditorTable.ActionTableClearFilter]
Class=TAction
Caption=Очистить фильтр
[frmEditorTable.ActionCopyRecord]
Class=TAction
Caption=Копировать запись
[frmEditorTable.NewPrimaryKey1]
Class=TMenuItem
Caption=Новый первичный ключ
[frmEditorTable.Savetofile1]
Class=TMenuItem
Caption=Сохранить в файл...
[frmEditorTable.Loadfromfile1]
Class=TMenuItem
Caption=Загрузить из файла...
[frmEditorTable.Copy2]
Class=TMenuItem
Caption=Копировать
[frmEditorTable.Paste2]
Class=TMenuItem
Caption=Вставить
[frmEditorTable.Cut2]
Class=TMenuItem
Caption=Вырезать
[frmEditorTable.SavePictureDialog1.PreviewButton]
Class=TSpeedButton
Hint=Просмотр
[frmEditorTable.OpenPictureDialog1.PreviewButton]
Class=TSpeedButton
Hint=Просмотр
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
Caption=Структура
[frmViewEditor.pgObjectEditor.tsDependenciesView]
Class=TTabSheet
Caption=Зависимости
[frmViewEditor.pgObjectEditor.tsTriggerView]
Class=TTabSheet
Caption=Триггеры
[frmViewEditor.pgObjectEditor.tsData]
Class=TTabSheet
Caption=Данные
[frmViewEditor.pgObjectEditor.tsDoco]
Class=TTabSheet
Caption=Описание
[frmViewEditor.pgObjectEditor.tsGrants]
Class=TTabSheet
Caption=Grants
[frmViewEditor.tsSQL]
Class=TTabSheet
Caption=View
[frmViewEditor.tsTableView]
Class=TTabSheet
Caption=Структура
[frmViewEditor.lvFieldList]
Class=TListView
Hint=
Columns.Count=8
Column0.Caption=Поле
Column1.Caption=Тип
Column2.Caption=Sub Type
Column3.Caption=Домен
Column4.Caption=Not Null
Column5.Caption=Описание
Column6.Caption=Default Source
Column7.Caption=Computed Source
[frmViewEditor.tsDependenciesView]
Class=TTabSheet
Caption=Зависимости
[frmViewEditor.rbDependent]
Class=TRadioButton
Caption=Показать зависимые объекты
Hint=Показать объекты, зависящие от текущего
[frmViewEditor.rbDependedOn]
Class=TRadioButton
Caption=Показать объекты, от которых зависит текущий
Hint=Показать объекты, от которых зависит текущий объект
[frmViewEditor.tsTriggerView]
Class=TTabSheet
Caption=Триггеры
[frmViewEditor.Label1]
Class=TLabel
Caption=Display:
[frmViewEditor.tsData]
Class=TTabSheet
Caption=Данные
[frmViewEditor.navDataView]
Class=TNavButton
Hint=Обновить данные
[frmViewEditor.IB_TransactionBar1]
Class=TIB_TransactionBar_Button
Hint=Закрыть текущую транзакцию
[frmViewEditor.btnRefresh]
Class=TSpeedButton
Caption=Обновить
[frmViewEditor.grdDataView]
Class=TDBGrid
Hint=
Columns.Count=1
Column0.Caption=
[frmViewEditor.tsDoco]
Class=TTabSheet
Caption=Описание
[frmViewEditor.tsGrants]
Class=TTabSheet
Caption=Права
[frmViewEditor.lvPermissions]
Class=TListView
Hint=
Columns.Count=8
Column0.Caption=Объект
Column1.Caption=Select
Column2.Caption=Delete
Column3.Caption=Insert
Column4.Caption=Update
Column5.Caption=Reference
Column6.Caption=Execute
Column7.Caption=Member Of
[frmViewEditor.Label2]
Class=TLabel
Caption=Разрешение включает GRANT OPTION
[frmViewEditor.ActionCompile]
Class=TAction
Caption=Компиляция
[frmStoredProcedure]
Class=TfrmStoredProcedure
Caption=Хранимая процедура
[frmStoredProcedure.pgObjectEditor]
Class=TPageControl
Hint=
PageCount=7
[frmStoredProcedure.pgObjectEditor.tsStoredProc]
Class=TTabSheet
Caption=Правка
[frmStoredProcedure.pgObjectEditor.tsExecution]
Class=TTabSheet
Caption=Выполнение
[frmStoredProcedure.pgObjectEditor.tsDocoView]
Class=TTabSheet
Caption=Описание
[frmStoredProcedure.pgObjectEditor.tsDependencies]
Class=TTabSheet
Caption=Зависимости
[frmStoredProcedure.pgObjectEditor.tsGrants]
Class=TTabSheet
Caption=Права
[frmStoredProcedure.pgObjectEditor.tsDebuggerOutput]
Class=TTabSheet
Caption=Debugger Output
[frmStoredProcedure.pgObjectEditor.tsMetadata]
Class=TTabSheet
Caption=Метаданные
[frmStoredProcedure.tsStoredProc]
Class=TTabSheet
Caption=Редактировать
[frmStoredProcedure.Label2]
Class=TLabel
Caption=Имя:
[frmStoredProcedure.dbgParameters]
Class=TDBGrid
Hint=
Columns.Count=3
Column0.Caption=Тип
Column1.Caption=Параметр
Column2.Caption=Тип данных
[frmStoredProcedure.tsExecution]
Class=TTabSheet
Caption=Выполнение
[frmStoredProcedure.grdResults]
Class=TDBGrid
Hint=
Columns.Count=1
Column0.Caption=
[frmStoredProcedure.dbgValues]
Class=TDBGrid
Hint=
Columns.Count=3
Column0.Caption=Параметр
Column1.Caption=Тип
Column2.Caption=Значение
[frmStoredProcedure.tsDocoView]
Class=TTabSheet
Caption=Описание
[frmStoredProcedure.tsDependencies]
Class=TTabSheet
Caption=Зависимости
[frmStoredProcedure.rbDependent]
Class=TRadioButton
Caption=Показать зависимые объекты
Hint=Показать объекты, зависящие от текущего
[frmStoredProcedure.rbDependedOn]
Class=TRadioButton
Caption=Показать объекты, от которых зависит текущий
Hint=Показать объекты, от которых зависит текущий объект
[frmStoredProcedure.tsGrants]
Class=TTabSheet
Caption=Права
[frmStoredProcedure.lvPermissions]
Class=TListView
Hint=
Columns.Count=8
Column0.Caption=Объект
Column1.Caption=Просмотр
Column2.Caption=Удаление
Column3.Caption=Вставка
Column4.Caption=Изменение
Column5.Caption=Reference
Column6.Caption=Выполнение
Column7.Caption=Член
[frmStoredProcedure.Label1]
Class=TLabel
Caption=Разрешение включает GRANT OPTION
[frmStoredProcedure.tsDebuggerOutput]
Class=TTabSheet
Caption=Debugger Output
[frmStoredProcedure.tsMetadata]
Class=TTabSheet
Caption=Метаданные
[frmStoredProcedure.ActionExecute]
Class=TAction
Caption=Выполнить
[frmStoredProcedure.ActionCompile]
Class=TAction
Caption=Компиляция
[frmStoredProcedure.ActionCheckParams]
Class=TAction
Caption=Check Params
[frmStoredProcedure.ActionAddInputParam]
Class=TAction
Caption=Добавить входной параметр
[frmStoredProcedure.ActionEditParam]
Class=TAction
Caption=Изменить параметр
[frmStoredProcedure.ActionDeleteParam]
Class=TAction
Caption=Удалить параметр
[frmStoredProcedure.ActionMoveUp]
Class=TAction
Caption=Переместить вверх
[frmStoredProcedure.ActionMoveDown]
Class=TAction
Caption=Переместить вниз
[frmStoredProcedure.ActionAddOutputParam]
Class=TAction
Caption=Добавить выходной параметр
[frmUDFEditor]
Class=TfrmUDFEditor
Caption=Внешняя функция - new_udf
[frmUDFEditor.pgObjectEditor]
Class=TPageControl
Hint=
PageCount=3
[frmUDFEditor.pgObjectEditor.tsObject]
Class=TTabSheet
Caption=Свойства
[frmUDFEditor.pgObjectEditor.tsDocoView]
Class=TTabSheet
Caption=Описание
[frmUDFEditor.pgObjectEditor.tsDDL]
Class=TTabSheet
Caption=Метаданные
[frmUDFEditor.tsObject]
Class=TTabSheet
Caption=Свойства
[frmUDFEditor.lvUDFParams]
Class=TListView
Hint=
Columns.Count=2
Column0.Caption=Параметр
Column1.Caption=Способ передачи
[frmUDFEditor.Label5]
Class=TLabel
Caption=По:
[frmUDFEditor.Label4]
Class=TLabel
Caption=Возвращает:
[frmUDFEditor.Label3]
Class=TLabel
Caption=Библиотека:
[frmUDFEditor.Label2]
Class=TLabel
Caption=Точка входа:
[frmUDFEditor.Label1]
Class=TLabel
Caption=Имя:
[frmUDFEditor.Label6]
Class=TLabel
Caption=Входные параметры:
[frmUDFEditor.tsDocoView]
Class=TTabSheet
Caption=Описание
[frmUDFEditor.tsDDL]
Class=TTabSheet
Caption=Метаданные
[frmUDFEditor.ActionCompile]
Class=TAction
Caption=Компиляция
[frmExceptions]
Class=TfrmExceptions
Caption=Исключение - USERNAME_DUPLICATE
[frmExceptions.pgObjectEditor]
Class=TPageControl
Hint=
PageCount=3
[frmExceptions.pgObjectEditor.tsObject]
Class=TTabSheet
Caption=Исключение
[frmExceptions.pgObjectEditor.tsDocoView]
Class=TTabSheet
Caption=Описание
[frmExceptions.pgObjectEditor.tsDDL]
Class=TTabSheet
Caption=Метаданные
[frmExceptions.tsObject]
Class=TTabSheet
Caption=Исключение
[frmExceptions.Label1]
Class=TLabel
Caption=Имя исключения:
[frmExceptions.Label2]
Class=TLabel
Caption=Текст исключения:
[frmExceptions.tsDocoView]
Class=TTabSheet
Caption=Описание
[frmExceptions.tsDDL]
Class=TTabSheet
Caption=Метаданные
[frmExceptions.ActionCompile]
Class=TAction
Caption=Компиляция
[FrmEditorFilter]
Class=TFrmEditorFilter
Caption=Blob фильтр - новый фильтр
[FrmEditorFilter.objControl]
Class=TPageControl
Hint=
PageCount=3
[FrmEditorFilter.objControl.tabFilters]
Class=TTabSheet
Caption=Свойства
[FrmEditorFilter.objControl.tsMetadata]
Class=TTabSheet
Caption=Метаданные
[FrmEditorFilter.objControl.tsDescription]
Class=TTabSheet
Caption=Описание
[FrmEditorFilter.tabFilters]
Class=TTabSheet
Caption=Свойства
[FrmEditorFilter.Label11]
Class=TLabel
Caption=Модуль:
[FrmEditorFilter.Label12]
Class=TLabel
Caption=Точка входа:
[FrmEditorFilter.Label13]
Class=TLabel
Caption=&Input SubType:
[FrmEditorFilter.Label14]
Class=TLabel
Caption=&Output SubType:
[FrmEditorFilter.tsMetadata]
Class=TTabSheet
Caption=Метаданные
[FrmEditorFilter.tsDescription]
Class=TTabSheet
Caption=Описание
[FrmEditorFilter.actReset]
Class=TAction
Caption=&Reset Value
[FrmEditorFilter.ActionCompile]
Class=TAction
Caption=Компиляция
[frmRole]
Class=TfrmRole
Caption=Роль - NEW_ROLE
[frmRole.pgObjectEditor]
Class=TPageControl
Hint=
PageCount=2
[frmRole.pgObjectEditor.tsRole]
Class=TTabSheet
Caption=Роль
[frmRole.pgObjectEditor.tsDDLView]
Class=TTabSheet
Caption=Метаданные
[frmRole.tsRole]
Class=TTabSheet
Caption=Роль
[frmRole.Label1]
Class=TLabel
Caption=Роль:
[frmRole.tsDDLView]
Class=TTabSheet
Caption=Метаданные
[frmRole.ActionCompile]
Class=TAction
Caption=Компиляция
[dlgWisql]
Class=TdlgWisql
Caption=Интерактивный SQL
[dlgWisql.lblFileName]
Class=TLabel
[dlgWisql.pgcOutput]
Class=TPageControl
Hint=
PageCount=4
[dlgWisql.pgcOutput.tsParameters]
Class=TTabSheet
Caption=Параметры
[dlgWisql.pgcOutput.TabData]
Class=TTabSheet
Caption=Данные
[dlgWisql.pgcOutput.TabResults]
Class=TTabSheet
Caption=План
[dlgWisql.pgcOutput.TabStats]
Class=TTabSheet
Caption=Статистика
[dlgWisql.tsParameters]
Class=TTabSheet
Caption=Параметры
[dlgWisql.TabData]
Class=TTabSheet
Caption=Данные
[dlgWisql.dbgSQLResults]
Class=TDBGrid
Hint=
Columns.Count=1
Column0.Caption=
[dlgWisql.TabResults]
Class=TTabSheet
Caption=План
[dlgWisql.TabStats]
Class=TTabSheet
Caption=Статистика
[dlgWisql.lvStats]
Class=TListView
Hint=
Columns.Count=2
Column0.Caption=Статистика
Column1.Caption=Значение
[dlgWisql.IB_TransactionBarDefault]
Class=TIB_TransactionBar_Button
Hint=Закрыть текущую транзакцию
[dlgWisql.IB_TransactionBarDDL]
Class=TIB_TransactionBar_Button
Hint=Закрыть текущую транзакцию
[dlgWisql.File1]
Class=TMenuItem
Caption=Файл
[dlgWisql.mnuEdit1]
Class=TMenuItem
Caption=Правка
[dlgWisql.Edit1]
Class=TMenuItem
Caption=Запрос
[dlgWisql.Database1]
Class=TMenuItem
Caption=База данных
[dlgWisql.Help1]
Class=TMenuItem
Caption=Помощь
[dlgWisql.SQLReference1]
Class=TMenuItem
Caption=Справочник по SQL
[dlgWisql.DialectAction1]
Class=TAction
Caption=Диалект &1
[dlgWisql.DialectAction2]
Class=TAction
Caption=Диалект &2
[dlgWisql.DialectAction3]
Class=TAction
Caption=Диалект &3
[dlgWisql.QueryPrevious]
Class=TAction
Caption=Назад
Hint=Предыдущий запрос
[dlgWisql.QueryNext]
Class=TAction
Caption=Вперед
Hint=Следующий запрос
[dlgWisql.QueryExecute]
Class=TAction
Caption=Выполнить
Hint=Выполнить запрос
[dlgWisql.QueryLoadScript]
Class=TAction
Caption=Загрузить скрипт
Hint=Загрузить SQL скрипт
[dlgWisql.QuerySaveScript]
Class=TAction
Caption=Сохранить скрипт
Hint=Сохранить скрипт
[dlgWisql.QueryOptions]
Class=TAction
Caption=Параметры ...
Hint=Параметры запроса
[dlgWisql.QuerySaveOutput]
Class=TAction
Caption=Сохранить результат
Hint=Сохранить результат запроса
[dlgWisql.QueryPrepare]
Class=TAction
Caption=Подготовить
Hint=Подготовка текущего запроса к выполнению
[dlgWisql.EditOptions]
Class=TAction
Caption=Опции ...
Hint=Опции ISQL
[dlgWisql.FileClose]
Class=TAction
Caption=Закрыть
Hint=Закрыть окно ISQL
[dlgWisql.EditFind]
Class=TAction
Caption=Поиск ...
[dlgWisql.EditFont]
Class=TAction
Caption=Шрифт ...
[dlgWisql.EditCopy1]
Class=TEditCopy
Caption=Копировать
Hint=Копировать
[dlgWisql.EditCut1]
Class=TEditCut
Caption=Вырезать
Hint=Вырезать
[dlgWisql.EditPaste1]
Class=TEditPaste
Caption=Вставить
Hint=Вставить
[dlgWisql.EditSelectAll1]
Class=TEditSelectAll
Caption=Выделить все
[dlgWisql.EditUndo1]
Class=TEditUndo
Caption=Отмена
[dlgWisql.DatabaseConnectAs]
Class=TAction
Caption=Подключиться как ...
[dlgWisql.DatabaseDisconnect]
Class=TAction
Caption=Отключиться
[dlgWisql.DatabaseCreate]
Class=TAction
Caption=Создать БД ...
[dlgWisql.DatabaseDrop]
Class=TAction
Caption=Удалить БД ...
[dlgWisql.Print]
Class=TAction
Caption=Печать
[dlgWisql.SaveSQLHistory]
Class=TAction
Caption=Сохранить историю SQL
Hint=Сохранить историю SQL запросов
[dlgWisql.LoadSQLHistory]
Class=TAction
Caption=Загрузить историю SQL
Hint=Загрузить историю SQL запросов
[dlgWisql.QueryFetchAll]
Class=TAction
Caption=QueryFetchAll
Hint=Fetch All
[dlgWisql.NewConnection]
Class=TAction
Caption=Новое соединение...
[dlgWisql.EditRedo]
Class=TAction
Caption=Redo
[frmDBConnect]
Class=TfrmDBConnect
Caption=Database Connect
[frmDBConnect.lblDatabaseName]
Class=TLabel
Caption=База данных:
[frmDBConnect.lblUsername]
Class=TLabel
Caption=Пользователь:
[frmDBConnect.lblPassword]
Class=TLabel
Caption=Пароль:
[frmDBConnect.lblRole]
Class=TLabel
Caption=Роль:
[frmDBConnect.Label1]
Class=TLabel
Caption=Диалект клиента:
[frmDBConnect.Label2]
Class=TLabel
Caption=Набор символов
[frmDBConnect.lblDatabase]
Class=TLabel
Caption=AEKOOLMS002.FDB
[frmDBConnect.btnConnect]
Class=TButton
Caption=Соединение
[frmDBConnect.btnCancel]
Class=TButton
Caption=&Отмена
[frmDBConnect.cbCaseSensitive]
Class=TCheckBox
Caption=Регистрозависимое имя роли
[frmMain]
Class=TfrmMain
Caption=IBOConsole
[frmOptions.Label1]
Class=TLabel
Caption=Пример шрифта.^MThe quick brown fox jumped over the lazy dog back.
[frmSQLOptions]
Class=TfrmSQLOptions
Caption=Опции SQL
[frmSQLOptions.btnApply]
Class=TButton
Caption=Применить
[frmSQLOptions.btnOK]
Class=TButton
Caption=&OK
[frmSQLOptions.pgControl]
Class=TPageControl
Hint=
PageCount=2
[frmSQLOptions.pgControl.TabSheet1]
Class=TTabSheet
Caption=Опции
[frmSQLOptions.pgControl.TabSheet2]
Class=TTabSheet
Caption=Дополнительно
[frmSQLOptions.TabSheet1]
Class=TTabSheet
Caption=Опции
[frmSQLOptions.cbClearInput]
Class=TCheckBox
Caption=&Clear input window on success
[frmSQLOptions.TabSheet2]
Class=TTabSheet
Caption=Дополнительно
[frmSQLOptions.GroupBox1]
Class=TGroupBox
Caption=События SQL
[frmSQLOptions.Label1]
Class=TLabel
Caption=NOTE:
[frmSQLOptions.cbUpdateConnect]
Class=TCheckBox
Caption=Update IBOConsole on C&onnect
[frmSQLOptions.cbUpdateCreate]
Class=TCheckBox
Caption=Update IBOConsole on C&reate
[frmSQLOptions.rgTransactions]
Class=TGroupButton
Caption=Транзакции
Items.Count=2
Item0=Подтвердить при выходе
Item1=Откатить при выходе
[frmSQLOptions.btnCancel]
Class=TButton
Caption=Отмена
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
prompt0=Перезаписать %s
prompt1=Не удается открыть файл "%s".
prompt2=Not yet in Kylix
prompt3=Вы действительно хотите удалить текущую базу данных?
prompt4=Есть активные транзакции для текущей БД.^MПодтвердить их?^M^MОтвет НЕТ откатит активные транзакции.
prompt5=Данные сохранены в файл: %s
prompt6=формат не указан
prompt7=Сохранить данные запроса
prompt8=%s new %s must have a name.
prompt9=%s %s name is still the default. Are you sure you wish to use the default name?
prompt10=%s %s %s был(а) изменен(а). Сохранить изменения?
prompt11=Вы действительно хотите удалить регистрационную информацию для этой базы данных?
prompt12=Вы действительно хотите отсоединиться от этой базы данных?
prompt13=Сборка "мусора" для большой базы данных может занять^Mпродолжительное время и понизить производительность сервера.^MПродолжить?
prompt14=Вы действительно хотите удалить эту базу данных?
prompt15=Вы действительно хотите отсоединиться от этого сервера?
prompt16=Неверное значение параметра
prompt17=Восстановление Limbo-транзакций завершено.
prompt18=Врхняя граница массива должна быть больше, чем нижняя граница.
prompt19=Ограничение главного ключа должно иметь имя
prompt20=Ограничение уникальности должно иметь имя
prompt21=Выберите поля для главного ключа
prompt22=Выберите поля для уникального ключа
prompt23=Ограничение внешнего ключа должно иметь имя
prompt24=Выберите поля для внешнего ключа
prompt25=Выберите поле для ссылки во внешнем ключе
prompt26=Ограничение проверки должно иметь имя
prompt27=Ограничение проверки должно содержать выражение
prompt28=Вы действительно хотите удалить this dimension?
prompt29=Нельзя изменить описание до тех пор, пока объект не будет откомпилирован.
prompt30=Сохранить измененное описание?
prompt31=Исключение должно иметь сообщение.
prompt32=Новая таблица должна иметь имя.
prompt33=Setting Not Null require to set a value into existing null data or subsequent backup will be invalid^M^MDo you want to continue and specify a value to fill Nulls?
prompt34=Resetting Not Null is not safe if the field is used in a unique index, subsequent backup will be invalid^M^MDo you want to continue?
prompt35=Описание для %s %s было изменено. Сохранить?
prompt36=Выберите поля для использования в индексе
prompt37=Нельзя просмотреть метаданные до тех пор, пока объект не будет откомпилирован.
prompt38=You cannot change from Edit View until the object has been compiled.
prompt39=Транзакция активна - подтвердите или отмените ее перед изменением просмотра.
prompt40=Хранимая процедура была изменена. Перекомпилировать?
prompt41=Выполняется хранимая процедура...
prompt42=Хранимая процедура - %s - Выполняется
prompt43=Вы действительно хотите удалить %s %s ?
prompt44=Удалить все видимые записи из таблицы %s ?
prompt45=Не назначена позиция триггера.
prompt46=Не указано имя триггера.
prompt47=Не указана точка входа для UDF.
prompt48=Не указано имя библиотеки для UDF.
prompt49=Не указан выходной параметр для UDF.
prompt50=Вы действительно хотите удалить этот параметр?
prompt51=Are you sure you wish to delete this dimension?
prompt52=Поле должно иметь имя.
prompt53=Отсутствует имя домена.
prompt54=There is no computed by expression.
prompt55=Вы должны ввести параметр.
prompt56=Не удается получить план
prompt57=Unable to parse script
prompt58=Нет активного соединения
prompt59=Ошибка разбора выражения CONNECT.
prompt60=Подтвердите или откатите текущую транзакцию
prompt61=Ошибка разбора выражения CREATE.
prompt62=Неверный диалект
prompt63=Не удается открыть файл
prompt64=Диалект базы данных (%d) не соответствует диалекту клиента (%d).
prompt65=Не удается установить диалект клиента в %d
prompt66=Не удается вывести информацию массива
prompt67=Строка поиска '%s' не найдена
prompt68=Не удается провести разбор скрипта
prompt69=Are you sure that you want to un-register %s?
prompt70=Вы действительно хотите удалить "%s" из списка псевдонимов?
prompt71=Вы действительно хотите удалить пользователя: %s?
prompt72=Ошибка создания каталога %s. Операция отменена.
prompt73=Каталог %s не существует. Создать его?
prompt74=Ошибка при попытке соединения с '%s'. ^MВозможно это сервер более ранней версии. ^MКак следствие, многие функции не будут работать.
prompt75=Попытка соединиться с %s используя NetBEUI.%s%s
prompt76=Успешное соединение с %s через %s, именованный канал: %s %s.%S%S Тест соединения NetBEUI завершен успешно!
prompt77=Ошибка при попытке соединения с %s %s через именованный канал:%s%s%s%s Тест соединения NetBEUI завершен неудачно!
prompt78=Не удается инициализировать клиентскую библиотеку Netware.%s%s Тест соединения SPX завершен неудачно!
prompt79=Попытка соединиться с %s используя SPX.%s%s
prompt80=Ошибка при попытке соединения с %s %s через протокол SPX.%s%s Тест соединения SPX завершен неудачно!
prompt81=Успешное соединение с %s%s через протокол SPX. Тест соединения SPX завершен успешно!
prompt82=Ошибка при попытке соединения с %s%s через протокол SPX.%s%sВозможно отсутствует или неправильно установлен клиент NetWare. %s%sТест соединения SPX завершен неудачно!
prompt83=Вы пытаетесь удалить пользователя, под именем которого Вы зарегистрировались на сервере. %s Вы действительно хотите удалить пользователя %s?
prompt84=Попытка соединения с:
prompt85=Attaching    ... Passed!
prompt86=Detaching    ... Passed!
prompt87=An Server error has occurred while detaching.
prompt88=An Server error has occurred while attaching.
prompt89=Проверка соединения с сервером завершилась удачно!
prompt90=Проверка соединения с сервером завершилась неуспешно!
prompt91=Попытка соединения с %s.
prompt92=Socket for connection obtained.
prompt93=Socket Request Failed
prompt94=Remote Socket Request Failed
prompt95=Remote Socket did not respond
prompt96=Не удается соединиться с хостом '%s',
prompt97=через порт %s. Код ошибки:
prompt98=Установлено соединение с хостом '%s',
prompt99=через порт %s
prompt100=Тест соединения через TCP/IP завершен успешно!
prompt101=Тест соединения через TCP/IP завершен неудачно!
prompt102=Pinging %s [%s] with %d bytes of data:
prompt103=%d bytes from %s: icmp_seq=%d ttl=%d time%s%d ms
prompt104=Critical connection error
prompt105=Ну дается получить информацию о версии файла %s
prompt106=  Host Site: %s
prompt107=в состоянии limbo
prompt108=подтверждена
prompt109=откачена
prompt110=в неизвестном состоянии
prompt111=  Транзакция %d %s.
prompt112=  Remote Site: %s
prompt113=  Путь к БД: %s
prompt114=Рекомендованное действие: %s
prompt115=Please select an item from the Transactions tab.
prompt116=Исправление транзакции %s
prompt117=Select a transaction for information about that transaction.
prompt118=Secondary files unavailable.
prompt119=Владелеу базы данных недоступен.
prompt120=Интервал для очистки мусора (Sweep Interval) должен быть в пределах от %d до %d.
prompt121=Нельзя изменить свойства базы данных read-only.
prompt122=Null must be "NULL" or empty
prompt123=нельзя редактировать NULL
prompt124=После удаления объекта %s он будет недоступен!^MПродолжить?
prompt125=Укажите параметр проверки
prompt126=нельзя использовать для администрирования InterBase версии ниже, чем 6.0
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
ERR_SYSTEM_INIT=Ошибка инициализации.
ERR_USERNAME=Неверное имя пользователя.
ERR_PASSWORD=Неверный пароль.
ERR_PASSWORD_MISSMATCH=Пароль не соответствует паролю, введенному при подтверждении.
ERR_ADD_USER=Не удается добавить пользователя.
ERR_MODIFY_USER=Не удается изменить счет пользователя.
ERR_DELETE_USER=Не удается удалить пользователя.
ERR_GET_USERS=Не удается получить список пользователей.
ERR_GET_USER_INFO=Не удается получить информацию о пользователе.
ERR_SOURCE_DB=Неверное имя исходной базы данных.
ERR_DESTINATION_DB=Invalid destination database name. Please enter a valid database name.
ERR_SAME_SOURCE_DESTINATION=The source and destination must be different.
ERR_DB_FILE=Неверное имя файла базы данных или файл не существует.
ERR_SERVER_NAME=Неверное имя сервера.
ERR_PROTOCOL=Неверный сетевой протокол. Выберите протокол из списка.
ERR_BACKUP_DB=Резервное копирование завершено неудачно.
ERR_RESTORE_DB=Восстановление из резервной копии завершено неудачно.
ERR_GET_TABLES=Не удается получить список таблиц.
ERR_GET_VIEWS=Не удается получить список представлений.
ERR_SERVICE=Неверная служба. Выберите службу из списка.
ERR_NUMERIC_VALUE=Неверное целочисленное значение.
ERR_GET_TABLE_DATA=Не удается получить данные.
ERR_DB_ALIAS=Неверный псевдоним базы данных.
ERR_GET_ROLES=Не удается получить список ролей.
ERR_SERVER_LOGIN=Ошибка регистрации на сервере.
ERR_DB_CONNECT=Ошибка соединения с базой данных.
ERR_DB_DISCONNECT=Ошибка отключения от базы данных.
ERR_GET_PROCEDURES=Не удается получить список процедур.
ERR_GET_FUNCTIONS=Не удается получить список функций.
ERR_GET_GENERATORS=Не удается получить список генераторов.
ERR_GET_EXCEPTIONS=Не удается получить список исключений.
ERR_GET_BLOB_FILTERS=Не удается получить список BLOB-фильтров.
ERR_GET_COLUMNS=Не удается получить список столбцов.
ERR_GET_INDICES=Не удается получить список список индексов.
ERR_GET_REFERENTIAL_CONST=Не удается получить список ограничений ссылочной целостности.
ERR_GET_UNIQUE_CONST=Не удается получить список ограничений уникальности.
ERR_GET_CHECK_CONST=Не удается получить список ограничений проверки (CHECK).
ERR_GET_TRIGGERS=Не удается получить список триггеров.
ERR_GET_DDL=Ошибка извлечения метаданных.
ERR_INVALID_PROPERTY_VALUE=Неверное значение свойства.
ERR_GET_DEPENDENCIES=Не удается получить информацию о зависимостях.
ERR_GET_DB_PROPERTIES=Не удается получить информацию о свойствах базы данных.
ERR_DB_SIZE=Неверный размер файла базы данных.
ERR_ISQL_ERROR=Ошибка SQL
ERR_SERVER_SERVICE=Ошибка службы
ERR_EXTERNAL_EDITOR=Ошибка внешнего редактора
ERR_SERVER_ALIAS=Неверный псевдоним сервера.
ERR_BACKUP_ALIAS=Неверный псевдоним задания на резервное копирование.
ERR_DB_SHUTDOWN=Database shutdown unsuccessful.
ERR_MODIFY_DB_PROPERTIES=Не удается изменить свойства базы данных.
ERR_DROP_DATABASE=Ошибка удаления базы данных.
ERR_FILE_OPEN=Ошибка открытия файла.
ERR_INV_EDITOR=Неверно указан редактор.
ERR_EDITOR_MISSING=Внешний редактор не указан.
ERR_BAD_FORMAT=Не удается вывести BLOB (Не графический формат).
ERR_INV_DIALECT=Не удается изменить диалект клиента.
ERR_FOPEN=Ошибка открытия файла.
ERR_TEXT_NOT_FOUND=Строка не найдена.
ERR_PRINT=Не удается осуществить печать. Убедитесь в готовности принтера.
ERR_NO_PATH=Не указан путь для файла резервной копии или базы данных.
ERR_NO_FILES=Не указаны файлы для копирования/восстановления.
ERR_GET_DOMAINS=Не удается получить список доменов.
ERR_EXT_TOOL_ERROR=Не удается загрузить внешнюю программу
ERR_PROPERTIES=Не удается получить свойства объекта
ERR_ALIAS_EXISTS=Неверный псевдоним.  Этот псевдоним уже существует.
ERR_CANNOT_START_LOCALIB=Не удается запустить локальный Interbase.
ERR_SERVER_REGISTER=Ошибка при попытке регистрации сервера.
ERR_SERVER_UNREGISTER=Ошибка при попытке удаления регистрационной информации о сервере.
ERR_DATABASE_REGISTER=Ошибка при попытке регистрации базы данных.
ERR_DATABASE_UNREGISTER=Ошибка при попытке удаления регистрационной информации о базе данных.
ERR_DDL_EXECUTION=Ошибка при выполнении выражения DDL.
;****** Warnings ******
WAR_NO_PERMISSION=Недостаточно прав для этой операции.
WAR_SERVER_REGISTERED=Этот сервер уже зарегистрирован.
WAR_DUPLICATE_DB_ALIAS=Псевдоним базы данных уже существует.
WAR_BACKUP_FILE_REGISTERED=Файл резервной копии уже зарегистрирован.
WAR_DIALECT_MISMATCH=Диалект клиента не соответствует диалекту базы данных.
WAR_REMOTE_FILENAME=Указанное имя файла возможно содержит имя сервера.'+#13#10+'Некоторые операции могут работать некорректно.
WAR_PERSISTENT_UPDATE=Нельзя редактировать постоянную информацию.
;****** Information ******}
INF_ADD_USER_SUCCESS=Пользователь успешно добавлен.
INF_BACKUP_DB_SUCCESS=Резервное копирование завершено.
INF_RESTORE_DB_SUCCESS=Восстановление данных завершено.
INF_NO_PENDING_TRANSACTIONS=Незавершенные транзакции не обнаружены.
INF_RESTART_SERVER=Чтобы изменения вступили в силу, необходимо перезапустить сервер.
INF_DATABASE_SHUTDOWN=Database shutdown completed successfully.
INF_DATABASE_RESTARTED=Database restart completed successfully.
INF_SQL_SCRIPT=SQL скрипт выполнен.
INF_DATABASE_SWEEP=Сборка "мусора" завершена.
;****** InterBase Errors ******}
isc_gbak_db_exists=Чтобы перезаписать существующую БД, установите опцию Overwrite в TRUE
isc_gfix_invalid_sw=Недопустимый параметр для операции.
isc_gfix_incmp_sw=Конфликт параметров операции.
isc_gfix_retry=Не указана операция.
isc_gfix_retry_db=Не указана база данных для операции
isc_gbak_page_size_missing=Не указан размер страницы.
isc_gsec_cant_open_db=Не удается открыть базу данных с информацией о счетах пользователей (security database).
isc_gsec_no_usr_name=Отсутствует имя пользователя.^MПользователь должен быть указан для выполнения любых операций.
isc_gsec_err_add=Неизвестная ошибка при попытке добавления записи о пользователе.
isc_gsec_err_modify=Неизвестная ошибка при попытке изменения записи о пользователе.
isc_gsec_err_find_mod=Неизвестная ошибка при попытке поиска/изменения записи о пользователе
isc_gsec_err_rec_not_found=Информация о пользователе не найдена.
isc_gsec_err_delete=Неизвестная ошибка при попытке удаления записи о пользователе.
isc_gsec_err_find_del=Неизвестная ошибка при попытке поиска/удаления записи о пользователе.
isc_gsec_err_find_disp=Неизвестная ошибка при попытке поиска/вывода записи о пользователе.
isc_sys_request=Неизвестная ошибка при попытке открыть файл на сервере.
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
Action=Действие
Name=Имя
Active=Активно
Allow Nulls=
Can Defer=
Character Set=Кодировка
Collation=Сортировка
Connections=Соединения
Current Value=Текущее значение
Case Insensitive=Регистронезависимый
Database=База данных
Default Value=Умолчание
Delete Rule=
Descending=По убыванию
Description=Описание
Entry=
Error=Ошибка
Fields=Поля
Index=Indice
Initially Deferred=
Input=Ввод
Input/Output=Ввод/вывод
Last Accessed=
Match Option=
Member=Член
Message=Сообщение
Modified=Изменен
Module=Модуль
Metadata for=Метаданные для
New=Новый
Output=Вывод
Owner=Владелец
objects listed=объект(ов)
Parameter=Параметр
Position=Позиция
Path=Путь
Reference Table=
Read-Only=Только для чтения
Type=Тип
Unique=Уникальный
Update Rule=
Y=Y
N=N
Yes=Да
No=Нет
Open=Открыть
Form View=Форма
Grid View=Таблица
Server=Сервер
User=Пользователь
Warning=Предупреждение
Information=Информация
Confirmation=Подтверждение
Abort=Прервать
All=Все
Cancel=Отмена
Close=Закрыть
Help=Помощь
OK=OK
Retry=Повторить
Yes To All=Да для всех
No To All=Нет для всех
Active Windows on=
File=Файл
Interactive SQL=Интерактивный SQL
Rows Affected=
Not Available=Не доступен
Execution Time=Время выполнения
Prepare Time=Время подготовки
Starting Memory=
Current Memory=
Delta Memory=
Number of Buffers=Количество буферов
Reads=Операций чтения
Writes=Операций записи
Plan=План
Statement=
is unknown= неизвестный
Not Connected=
Client dialect=Диалект клиента
Version=Версия
All Options=
Data Pages=Страницы данных
Database Log=Журнал БД
Header Page=Страница заголовка
Index Pages=Страницы индексов
System Relations=
Show data for:=Показать данные для:
By Value=По значению
By Reference=По ссылке
No Connection=Нет соединения
Transaction=Транзакция
Commit=Потвердить
Rollback=Откатить
Unknown=Неизвестный
In Limbo=
Multi-Database Transaction=
Fixed=
Transportable=Переносимый
Non-Transportable=Непереносимый
True=Да
False=Нет
Process=Процесс
Ignore=Игнорировать
None=
To Screen=На экран
To File=В файл
Select Verbose File=
Select Database=Выбрать базу данных
Enabled=Доступен
Disabled=Недоступен
Forced Writes=
Sweep Interval=
Database Dialect=Диалект базы данных
Read Only=Только для чтения
No input=
Metadata Only=Только метаданные
Garbage Collection=Сбор мусора
Checksums=Контрольные суммы
Convert to Tables=Конвертировать в таблицы
Transactions in Limbo=
Verbose Output=Подробный вывод
Filename(s)=Имя(имена) файла(ов)
Size(Bytes)=Размер (байт)
Text File=Текстовый файл
All files=Все файлы
Format=Формат
Value for=Значение для
Replace NULL with=Заменить NULL
Validate Record Fragments=Исправлять фрагменты записей
Read Only Validation=Проверка в режиме Read Only
Ignore Checksum Errors=Игнорировать ошибки контрольных сумм
Service started at=Задание стартовало
Service ended at=Задание завершено
Running=Выполняется
Restore=Восстановить
Ignore=Игнорировать
Database Restore=Восстановить базу данных
Commit After Each Table=Выполнить Commit после каждой таблицы
Create Shadow Files=
Deactivate Indices=Отключить индексы
Validity Conditions=
Use All Space=Использовать все пространство
Pages=Страницы
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
Servers=
Server=
Databases=
Database=
Backup=
Users=
User=
Certificates=
Certificate=
Domains=
Domain=
Tables=
Table=
Views=
View=
Stored Procedures=
Stored Procedure=
External Functions=
External Function=
Generators=
Generator=
Exceptions=
Exception=
Blob Filters=
Blob Filter=
Roles=
Role=
Columns=
Column=
Indexes=
Index=
Referential Constraints=
Referential Constraint=
Unique Constraints=
Unique Constraint=
Check Constraints=
Check Constraint=
Triggers=
Trigger=
Server Log=
Unknown=
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
Servers=Серверы
Server=Сервер
Databases=Базы данных
Database=База данных
Backup=Резервное копирование
Users=Пользователи
User=Пользователь
Certificates=Сертификаты
Certificate=Сертификат
Domains=Домены
Domain=Домен
Tables=Таблицы
Table=Таблица
Views=Представления
View=Представление
Stored Procedures=Хранимые процедуры
Stored Procedure=Хранимая процедура
External Functions=Внешние функции
External Function=Внешняя функция
Generators=Генераторы
Generator=Генератор
Exceptions=Исключения
Exception=Исключение
Blob Filters=BLOB-фильтры
Blob Filter=BLOB-фильтр
Roles=Роли
Role=Роль
Columns=Столбцы
Column=Столбец
Indexes=Индексы
Index=Индекс
Referential Constraints=Ограничения ссылочной целостности
Referential Constraint=Ограничение ссылочной целостности
Unique Constraints=Ограничения уникальности
Unique Constraint=Ограничение уникальности
Check Constraints=Ограничения проверки (CHECK)
Check Constraint=Ограничение проверки (CHECK)
Triggers=Триггеры
Trigger=Триггер
Server Log=Журнал
Unknown=Неизвестный


