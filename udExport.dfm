object dExport: TdExport
  Left = 0
  Top = 0
  Caption = 'Export'
  ClientHeight = 542
  ClientWidth = 312
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  DesignSize = (
    312
    542)
  PixelsPerInch = 96
  TextHeight = 13
  object btnExport: TSpeedButton
    Left = 66
    Top = 485
    Width = 73
    Height = 31
    Anchors = [akLeft, akTop, akBottom]
    Caption = 'Export'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = btnExportClick
  end
  object dbgExport: TSMDBGrid
    Left = 8
    Top = 8
    Width = 294
    Height = 338
    Anchors = [akLeft, akTop, akRight]
    DataSource = dsExport
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgExportCellClick
    OnDrawColumnCell = dbgExportDrawColumnCell
    Flat = True
    BandsFont.Charset = DEFAULT_CHARSET
    BandsFont.Color = clWindowText
    BandsFont.Height = -11
    BandsFont.Name = 'Tahoma'
    BandsFont.Style = []
    Groupings = <>
    GridStyle.Style = gsCustom
    GridStyle.OddColor = clWindow
    GridStyle.EvenColor = clWindow
    TitleHeight.PixelCount = 24
    FooterColor = clBtnFace
    ExOptions = [eoBooleanAsCheckBox, eoDisableDelete, eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoAutoSave, eoBLOBEditor, eoTitleWordWrap, eoFilterAutoApply]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 22
    ScrollBars = ssHorizontal
    Columns = <
      item
        Expanded = False
        FieldName = 'Field'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Field Name'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 187
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DisplayName'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Display Name'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'Include'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 70
        Visible = True
        InplaceEditor = ieCheckbox
      end>
  end
  object btnSelectAll: TButton
    Left = 72
    Top = 352
    Width = 75
    Height = 25
    Anchors = [akLeft, akTop, akBottom]
    Caption = 'Select All'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = btnSelectAllClick
  end
  object btnUnSelectAll: TButton
    Left = 153
    Top = 352
    Width = 75
    Height = 25
    Anchors = [akLeft, akTop, akBottom]
    Caption = 'UnSelect All'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = btnUnSelectAllClick
  end
  object edtDelimiter: TLabeledEdit
    Left = 209
    Top = 397
    Width = 39
    Height = 24
    Anchors = [akLeft, akTop, akBottom]
    EditLabel.Width = 41
    EditLabel.Height = 13
    EditLabel.Caption = 'Delimiter'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    LabelPosition = lpLeft
    ParentFont = False
    TabOrder = 3
    Text = ','
  end
  object btnCancel: TButton
    Left = 155
    Top = 485
    Width = 73
    Height = 31
    Anchors = [akLeft, akTop, akBottom]
    Caption = 'Cancel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ModalResult = 2
    ParentFont = False
    TabOrder = 4
  end
  object mmoExport: TMemo
    Left = 346
    Top = 354
    Width = 33
    Height = 34
    TabOrder = 5
    Visible = False
    WordWrap = False
  end
  object pbExport: TProgressBar
    Left = 0
    Top = 525
    Width = 312
    Height = 17
    Align = alBottom
    Smooth = True
    TabOrder = 6
  end
  object cbExcel: TCheckBox
    Left = 96
    Top = 462
    Width = 97
    Height = 17
    Anchors = [akLeft, akTop, akBottom]
    Caption = 'Open in Excel'
    Checked = True
    State = cbChecked
    TabOrder = 7
  end
  object cbKeywordsCol: TCheckBox
    Left = 58
    Top = 439
    Width = 175
    Height = 17
    Anchors = [akLeft, akTop, akBottom]
    Caption = 'Keywords as separate columns'
    TabOrder = 8
  end
  object rgOutput: TRadioGroup
    Left = 17
    Top = 383
    Width = 114
    Height = 50
    Anchors = [akLeft, akTop, akBottom]
    Caption = 'Output'
    ItemIndex = 1
    Items.Strings = (
      'Field Names'
      'Display Names')
    TabOrder = 9
    OnClick = rgOutputClick
  end
  object dsExport: TDataSource
    DataSet = mtbExport
    Left = 224
    Top = 96
  end
  object mtbExport: TkbmMemTable
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
    BeforeScroll = mtbExportBeforeScroll
    Left = 192
    Top = 96
    object mtbExportField: TStringField
      FieldName = 'Field'
      Size = 50
    end
    object mtbExportDisplayName: TStringField
      FieldName = 'DisplayName'
      Size = 32
    end
    object mtbExportInclude: TBooleanField
      FieldName = 'Include'
    end
  end
  object qryUsers: TIBOQuery
    IB_Connection = CoreData.dbUnify
    PreparedEdits = True
    PreparedInserts = True
    ReadOnly = True
    RecordCountAccurate = True
    SQL.Strings = (
      'select user_id, display_name from users')
    Left = 232
    Top = 352
    object mtbUsersUSER_ID: TStringField
      FieldName = 'USER_ID'
      Required = True
      Size = 14
    end
    object mtbUsersDISPLAY_NAME: TStringField
      FieldName = 'DISPLAY_NAME'
      Size = 32
    end
  end
  object qryBranch: TIBOQuery
    IB_Connection = CoreData.dbUnify
    PreparedEdits = True
    PreparedInserts = True
    ReadOnly = True
    RecordCountAccurate = True
    SQL.Strings = (
      'select branch_id, description, active_ind from branch')
    Left = 232
    Top = 424
    object mtbBranchBRANCH_ID: TStringField
      FieldName = 'BRANCH_ID'
      Required = True
      Size = 14
    end
    object mtbBranchDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Size = 32
    end
    object mtbBranchACTIVE_IND: TStringField
      FieldName = 'ACTIVE_IND'
      Size = 1
    end
  end
end
