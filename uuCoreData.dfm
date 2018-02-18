object CoreData: TCoreData
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 150
  Width = 215
  object mtbSettings: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '7.18.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 32
    Top = 24
  end
  object dbUnify: TIBODatabase
    CacheStatementHandles = False
    SQLDialect = 3
    Params.Strings = (
      'SQL DIALECT=3'
      
        'PATH=C:\Users\CampbellD\Documents\RAD Studio\Projects\Unify\Unif' +
        'y\UNIFY.BFX'
      'PROTOCOL=TCP/IP'
      'USER NAME=SYSDBA'
      'SERVER=127.0.01')
    Isolation = tiCommitted
    Left = 112
    Top = 48
    SavedPassword = '.JuMbLe.01.432B0639073E0E4B49'
  end
  object qryUserAccess: TQuery
    DatabaseName = 'UnifyDB'
    SQL.Strings = (
      'select access_level_id from users'
      'where user_name = :user_name')
    Left = 136
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'user_name'
        ParamType = ptUnknown
      end>
  end
  object trUnify: TIB_Transaction
    IB_Connection = dbUnify
    Isolation = tiCommitted
    Left = 56
    Top = 96
  end
end
