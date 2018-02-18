inherited dUsers: TdUsers
  Caption = 'Users'
  ExplicitWidth = 917
  ExplicitHeight = 556
  PixelsPerInch = 96
  TextHeight = 13
  object dbgUsers: TSMDBGrid [9]
    AlignWithMargins = True
    Left = 3
    Top = 60
    Width = 895
    Height = 436
    Margins.Top = 60
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = dbgUsersDblClick
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
    ExOptions = [eoBooleanAsCheckBox, eoENTERlikeTAB, eoKeepSelection, eoRowNumber, eoShowLookup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar, eoAnyKeyFilter, eoFilterAutoApply]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 26
    DefaultRowHeight = 23
    ScrollBars = ssHorizontal
    Columns = <
      item
        Expanded = False
        FieldName = 'active_ind'
        PickList.Strings = (
          'Y'
          'N')
        Title.Caption = 'Active'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'user_name'
        Title.Caption = 'User Name'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'display_name'
        Title.Caption = 'Display Name'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'user_level_id'
        Title.Caption = 'User Level'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'contact_id'
        ReadOnly = True
        Title.Caption = 'Contact'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'created_by'
        ReadOnly = True
        Title.Caption = 'Created by'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'created'
        ReadOnly = True
        Title.Caption = 'Created'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'updated_by'
        ReadOnly = True
        Title.Caption = 'Updated by'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'updated'
        ReadOnly = True
        Title.Caption = 'Updated'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 100
        Visible = True
      end>
  end
  inherited pnlProgess: TPanel
    inherited lblProgress: TLabel
      Width = 78
      Height = 19
    end
  end
  object qryUserLevel: TIBOQuery
    IB_Connection = CoreData.dbUnify
    PreparedEdits = True
    PreparedInserts = True
    ReadOnly = True
    RecordCountAccurate = True
    SQL.Strings = (
      'select user_level_id, description from userlevel')
    Left = 552
    Top = 16
    object qryUserLeveluser_level_id: TStringField
      FieldName = 'user_level_id'
      Required = True
      Size = 14
    end
    object qryUserLeveldescription: TStringField
      FieldName = 'description'
      Size = 32
    end
  end
  object qryContact: TIBOQuery
    IB_Connection = CoreData.dbUnify
    PreparedEdits = True
    PreparedInserts = True
    ReadOnly = True
    RecordCountAccurate = True
    SQL.Strings = (
      'select contact_id, nfirst, nlast from contact')
    Left = 600
    Top = 16
    object mtbContactCONTACT_ID: TStringField
      FieldName = 'CONTACT_ID'
      Required = True
      Size = 14
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
    Left = 640
    Top = 16
    object qryUsersUSER_ID: TStringField
      FieldName = 'USER_ID'
      Required = True
      Size = 14
    end
    object qryUsersDISPLAY_NAME: TStringField
      FieldName = 'DISPLAY_NAME'
      Size = 32
    end
  end
end
