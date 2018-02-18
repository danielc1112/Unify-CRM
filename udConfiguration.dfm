inherited dConfiguration: TdConfiguration
  Caption = 'Configuration'
  ClientHeight = 623
  ClientWidth = 961
  OnClose = FormClose
  ExplicitWidth = 977
  ExplicitHeight = 661
  PixelsPerInch = 96
  TextHeight = 13
  inherited btnExit: TSpeedButton
    Left = 900
    ExplicitLeft = 611
  end
  object pgcConfiguration: TPageControl [8]
    AlignWithMargins = True
    Left = 3
    Top = 60
    Width = 955
    Height = 541
    Margins.Top = 60
    ActivePage = tsContactFields
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnChange = pgcConfigurationChange
    object tsGeneral: TTabSheet
      Caption = 'General'
      object lblFilterColor: TLabel
        Left = 52
        Top = 65
        Width = 48
        Height = 13
        Caption = 'Filter Row'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblSelectedColor: TLabel
        Left = 52
        Top = 84
        Width = 61
        Height = 13
        Caption = 'Selected Cell'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblConfigurationColor: TLabel
        Left = 52
        Top = 106
        Width = 65
        Height = 13
        Caption = 'Configuration'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblContactsColor: TLabel
        Left = 52
        Top = 125
        Width = 43
        Height = 13
        Caption = 'Contacts'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblBranchesColor: TLabel
        Left = 52
        Top = 147
        Width = 44
        Height = 13
        Caption = 'Branches'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblUsersCol: TLabel
        Left = 52
        Top = 169
        Width = 27
        Height = 13
        Caption = 'Users'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblInActive: TLabel
        Left = 52
        Top = 46
        Width = 39
        Height = 13
        Caption = 'Inactive'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblWeeks: TLabel
        Left = 269
        Top = 359
        Width = 45
        Height = 19
        Caption = 'Weeks'
      end
      object lblPurge: TLabel
        Left = 27
        Top = 359
        Width = 173
        Height = 19
        Caption = 'Purge User History After'
      end
      object lbl2: TLabel
        Left = 30
        Top = 424
        Width = 505
        Height = 13
        Caption = 
          'Notes: To enable partial address validation, you must have the c' +
          'ontact fields '#39'suburb'#39', '#39'postcode'#39', '#39'cstate'#39
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl3: TLabel
        Left = 65
        Top = 443
        Width = 390
        Height = 13
        Caption = 
          'To link postcodes to areas, you must have the contact fields '#39'po' +
          'stcode'#39' and '#39'area'#39
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl4: TLabel
        Left = 65
        Top = 462
        Width = 373
        Height = 13
        Caption = 
          'To link users with contacts, you must have the contact fields '#39'n' +
          'first'#39' and '#39'nlast'#39
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblDefaultBranch: TLabel
        Left = 27
        Top = 392
        Width = 103
        Height = 19
        Caption = 'Default Branch'
      end
      object pnlFilterCol: TPanel
        Left = 30
        Top = 65
        Width = 16
        Height = 16
        ParentBackground = False
        TabOrder = 0
        OnClick = pnlFilterColClick
      end
      object pnlSelectedCol: TPanel
        Left = 30
        Top = 84
        Width = 16
        Height = 16
        ParentBackground = False
        TabOrder = 1
        OnClick = pnlSelectedColClick
      end
      object pnlConfigurationCol: TPanel
        Left = 30
        Top = 106
        Width = 16
        Height = 16
        ParentBackground = False
        TabOrder = 2
        OnClick = pnlConfigurationColClick
      end
      object pnlContactsCol: TPanel
        Left = 30
        Top = 125
        Width = 16
        Height = 16
        ParentBackground = False
        TabOrder = 3
        OnClick = pnlContactsColClick
      end
      object pnlBranchesCol: TPanel
        Left = 30
        Top = 147
        Width = 16
        Height = 16
        ParentBackground = False
        TabOrder = 4
        OnClick = pnlBranchesColClick
      end
      object pnlUsersCol: TPanel
        Left = 30
        Top = 169
        Width = 16
        Height = 16
        ParentBackground = False
        TabOrder = 5
        OnClick = pnlUsersColClick
      end
      object pnlInActiveCol: TPanel
        Left = 30
        Top = 46
        Width = 16
        Height = 16
        ParentBackground = False
        TabOrder = 6
        OnClick = pnlInActiveColClick
      end
      object edtPurgeHistory: TSpinEdit
        Left = 206
        Top = 356
        Width = 57
        Height = 29
        MaxValue = 0
        MinValue = 1
        TabOrder = 7
        Value = 0
        OnChange = edtPurgeHistoryChange
      end
      object gbEmailVerification: TGroupBox
        Left = 30
        Top = 219
        Width = 360
        Height = 118
        Caption = 'Email Verification'
        TabOrder = 8
        object lbl1: TLabel
          Left = 17
          Top = 96
          Width = 327
          Height = 13
          Caption = 
            'Note: To use this feature you must have a contact field called '#39 +
            'email'#39
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object edtDNS: TLabeledEdit
          Left = 159
          Top = 59
          Width = 85
          Height = 27
          EditLabel.Width = 101
          EditLabel.Height = 19
          EditLabel.Caption = 'DNS Server IP'
          LabelPosition = lpLeft
          TabOrder = 0
        end
        object edtEmailFrom: TLabeledEdit
          Left = 159
          Top = 26
          Width = 182
          Height = 27
          EditLabel.Width = 143
          EditLabel.Height = 19
          EditLabel.Caption = 'From Email Address'
          LabelPosition = lpLeft
          TabOrder = 1
        end
      end
      object edtDefaultBranch: TComboBox
        Left = 136
        Top = 391
        Width = 145
        Height = 27
        ItemHeight = 19
        TabOrder = 9
        OnChange = edtDefaultBranchChange
      end
    end
    object tsContactFields: TTabSheet
      Caption = 'Contact Fields'
      ImageIndex = 8
      object pgcContactFields: TPageControl
        Left = 0
        Top = 0
        Width = 947
        Height = 507
        ActivePage = tsFreeFields
        Align = alClient
        TabOrder = 0
        OnChange = pgcContactFieldsChange
        object tsKeywords: TTabSheet
          Caption = 'Keywords'
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object dbgKeywords: TSMDBGrid
            Left = 0
            Top = 0
            Width = 939
            Height = 473
            Align = alClient
            DataSource = dsKeywords
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -16
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
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
            ExOptions = [eoBooleanAsCheckBox, eoENTERlikeTAB, eoKeepSelection, eoRowNumber, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar, eoAnyKeyFilter, eoFilterAutoApply]
            RegistryKey = 'Software\Scalabium'
            RegistrySection = 'SMDBGrid'
            WidthOfIndicator = 26
            DefaultRowHeight = 23
            ScrollBars = ssHorizontal
            Columns = <
              item
                Expanded = False
                FieldName = 'description'
                Title.Caption = 'Keyword'
                Width = 200
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'active_ind'
                PickList.Strings = (
                  'Y'
                  'N')
                Title.Caption = 'Active'
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'created_by'
                ReadOnly = True
                Title.Caption = 'Created By'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'created'
                ReadOnly = True
                Title.Caption = 'Created'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'updated_ by'
                ReadOnly = True
                Title.Caption = 'Updated By'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'updated'
                ReadOnly = True
                Title.Caption = 'Updated'
                Width = 100
                Visible = True
              end>
          end
        end
        object tsFreeFields: TTabSheet
          Caption = 'Fields'
          ImageIndex = 1
          object dbgFields: TSMDBGrid
            Left = 0
            Top = 0
            Width = 939
            Height = 473
            Align = alClient
            DataSource = dsFields
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -16
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDblClick = dbgFieldsDblClick
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
                FieldName = 'FIELD_NAME'
                ReadOnly = True
                Title.Caption = 'Field Name'
                Width = 141
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DISPLAY_NAME'
                Title.Caption = 'Display Name'
                Width = 166
                Visible = True
              end
              item
                DropDownRows = 3
                Expanded = False
                FieldName = 'FIELD_TYPE'
                ReadOnly = True
                Title.Caption = 'Type'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DEFAULT_VALUE'
                Title.Caption = 'Default Value'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CHAR_CASE'
                PickList.Strings = (
                  'Capitalised'
                  'Uppercase'
                  'Lowercase'
                  'Uncapitalised')
                Title.Caption = 'Case'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CAN_SEARCH'
                PickList.Strings = (
                  'Y'
                  'N')
                Title.Caption = 'Can Search'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'REQUIRED'
                PickList.Strings = (
                  'Y'
                  'N')
                Title.Caption = 'Required'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DISPLAY_ORDER'
                Title.Caption = 'Display Order'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FSIZE'
                ReadOnly = True
                Title.Caption = 'Size'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CREATED_BY'
                ReadOnly = True
                Title.Caption = 'Created By'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CREATED'
                ReadOnly = True
                Title.Caption = 'Created'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'UPDATED_BY'
                ReadOnly = True
                Title.Caption = 'Updated By'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'UPDATED'
                ReadOnly = True
                Title.Caption = 'Updated'
                Visible = True
              end>
          end
        end
      end
    end
    object tsUserLevels: TTabSheet
      Caption = 'User Levels'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object dbgUserLevels: TSMDBGrid
        Left = 0
        Top = 0
        Width = 947
        Height = 507
        Align = alClient
        DataSource = dsUserLevels
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
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
        ExOptions = [eoBooleanAsCheckBox, eoENTERlikeTAB, eoKeepSelection, eoRowNumber, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar, eoAnyKeyFilter, eoFilterAutoApply]
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 26
        DefaultRowHeight = 23
        ScrollBars = ssHorizontal
        Columns = <
          item
            Expanded = False
            FieldName = 'description'
            Title.Caption = 'Name'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'level'
            Title.Caption = 'Level'
            Width = 40
            Visible = True
          end>
      end
    end
    object tsProgramAccess: TTabSheet
      Caption = 'Program Access'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object dbgPrograms: TSMDBGrid
        Left = 0
        Top = 0
        Width = 947
        Height = 507
        Align = alClient
        DataSource = dsPrograms
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
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
            FieldName = 'description'
            Title.Caption = 'Program Name'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'view_user_level_id'
            Title.Caption = 'Can View'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'create_user_level_id'
            Title.Caption = 'Can Create'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'delete_user_level_id'
            Title.Caption = 'Can Delete'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'import_user_level_id'
            Title.Caption = 'Can Import'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'export_user_level_id'
            Title.Caption = 'Can Export'
            Visible = True
          end>
      end
    end
    object tsPostcode: TTabSheet
      Caption = 'Postcodes'
      ImageIndex = 5
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object dbgPostalFind: TSMDBGrid
        Left = 0
        Top = 0
        Width = 947
        Height = 507
        Align = alClient
        DataSource = dsPostalFind
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
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
        ExOptions = [eoBooleanAsCheckBox, eoENTERlikeTAB, eoKeepSelection, eoRowNumber, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar, eoAnyKeyFilter, eoFilterAutoApply]
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 26
        DefaultRowHeight = 23
        ScrollBars = ssHorizontal
        Columns = <
          item
            Expanded = False
            FieldName = 'suburb'
            Title.Caption = 'Suburb'
            Width = 180
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'postcode'
            Title.Caption = 'Postcode'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pstate'
            Title.Caption = 'State'
            Width = 55
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'area'
            Title.Caption = 'Area'
            Width = 180
            Visible = True
          end>
      end
    end
    object tsItems: TTabSheet
      Caption = 'Items'
      ImageIndex = 6
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object dbgItems: TSMDBGrid
        Left = 0
        Top = 0
        Width = 947
        Height = 507
        Align = alClient
        DataSource = dsItems
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
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
        ExOptions = [eoBooleanAsCheckBox, eoENTERlikeTAB, eoKeepSelection, eoRowNumber, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar, eoAnyKeyFilter, eoFilterAutoApply]
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 26
        DefaultRowHeight = 23
        ScrollBars = ssHorizontal
        Columns = <
          item
            Expanded = False
            FieldName = 'description'
            Title.Caption = 'Item Name'
            Width = 300
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'active_ind'
            PickList.Strings = (
              'Y'
              'N')
            Title.Caption = 'Active'
            Width = 50
            Visible = True
          end>
      end
    end
    object tsEmailDomain: TTabSheet
      Caption = 'Email Domains'
      ImageIndex = 6
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object dbgEmailDomain: TSMDBGrid
        Left = 0
        Top = 0
        Width = 947
        Height = 507
        Align = alClient
        DataSource = dsEmailDomain
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
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
        ExOptions = [eoBooleanAsCheckBox, eoENTERlikeTAB, eoKeepSelection, eoRowNumber, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar, eoAnyKeyFilter, eoFilterAutoApply]
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 26
        DefaultRowHeight = 23
        ScrollBars = ssHorizontal
        Columns = <
          item
            Expanded = False
            FieldName = 'email_domain'
            Title.Caption = 'Email Domain'
            Width = 300
            Visible = True
          end>
      end
    end
  end
  inherited sbBase: TStatusBar
    Top = 604
    Width = 961
    ExplicitTop = 604
    ExplicitWidth = 961
  end
  inherited pnlProgess: TPanel
    Width = 479
    Height = 154
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 2
    ExplicitWidth = 479
    ExplicitHeight = 154
    inherited lblProgress: TLabel
      Width = 477
      Height = 152
    end
  end
  inherited dsEnquiry: TDataSource
    Top = 224
  end
  object dsUserLevels: TDataSource
    Left = 176
    Top = 144
  end
  object dsPrograms: TDataSource
    Left = 216
    Top = 144
  end
  object dsKeywords: TDataSource
    Left = 184
    Top = 272
  end
  object dsPostalFind: TDataSource
    Left = 264
    Top = 144
  end
  object dsItems: TDataSource
    Left = 304
    Top = 144
  end
  object cdOptions: TColorDialog
    Left = 48
    Top = 296
  end
  object dsFields: TDataSource
    DataSet = qryFields
    Left = 216
    Top = 272
  end
  object qryFields: TIBOQuery
    IB_Connection = CoreData.dbUnify
    PreparedEdits = True
    PreparedInserts = True
    RecordCountAccurate = True
    BeforePost = qryFieldsBeforePost
    OnNewRecord = qryFieldsNewRecord
    RequestLive = True
    SQL.Strings = (
      'select *  from contactfields order by display_order')
    Left = 224
    Top = 232
    object qryFieldsFIELD_NAME: TStringField
      FieldName = 'FIELD_NAME'
      Required = True
      Size = 32
    end
    object qryFieldsDISPLAY_NAME: TStringField
      FieldName = 'DISPLAY_NAME'
      Required = True
      Size = 32
    end
    object qryFieldsDEFAULT_VALUE: TStringField
      FieldName = 'DEFAULT_VALUE'
      Size = 32
    end
    object qryFieldsFIELD_TYPE: TStringField
      FieldName = 'FIELD_TYPE'
      Required = True
      OnGetText = qryFieldsFIELD_TYPEGetText
      OnSetText = qryFieldsFIELD_TYPESetText
      Size = 1
    end
    object qryFieldsCHAR_CASE: TStringField
      FieldName = 'CHAR_CASE'
      Required = True
      OnGetText = qryFieldsCHAR_CASEGetText
      OnSetText = qryFieldsCHAR_CASESetText
      Size = 1
    end
    object qryFieldsCAN_SEARCH: TStringField
      FieldName = 'CAN_SEARCH'
      Required = True
      Size = 1
    end
    object qryFieldsREQUIRED: TStringField
      FieldName = 'REQUIRED'
      Required = True
      Size = 1
    end
    object qryFieldsDISPLAY_ORDER: TIntegerField
      FieldName = 'DISPLAY_ORDER'
      Required = True
    end
    object qryFieldsCREATED: TDateTimeField
      FieldName = 'CREATED'
    end
    object qryFieldsCREATED_BY: TStringField
      FieldName = 'CREATED_BY'
      OnGetText = qryFieldsCREATED_BYGetText
      Size = 14
    end
    object qryFieldsUPDATED: TDateTimeField
      FieldName = 'UPDATED'
    end
    object qryFieldsUPDATED_BY: TStringField
      FieldName = 'UPDATED_BY'
      OnGetText = qryFieldsUPDATED_BYGetText
      Size = 14
    end
    object qryFieldsVISIBLE: TStringField
      FieldName = 'VISIBLE'
      Required = True
      Size = 1
    end
    object qryFieldsFSIZE: TIntegerField
      FieldName = 'FSIZE'
      Required = True
    end
  end
  object qryContactFields: TIBOQuery
    PreparedEdits = True
    PreparedInserts = True
    RecordCountAccurate = True
    DataSource = dsFields
    RequestLive = True
    SQL.Strings = (
      'select * from contactfields')
    Left = 272
    Top = 232
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
  object dsEmailDomain: TDataSource
    Left = 344
    Top = 144
  end
  object qryEmailDomains: TIBOQuery
    IB_Connection = CoreData.dbUnify
    PreparedEdits = True
    PreparedInserts = True
    RecordCountAccurate = True
    RequestLive = True
    SQL.Strings = (
      'select email_domain from emaildomain')
    Left = 520
    Top = 160
  end
  object qryBranch: TIBOQuery
    IB_Connection = CoreData.dbUnify
    PreparedEdits = True
    PreparedInserts = True
    ReadOnly = True
    RecordCountAccurate = True
    SQL.Strings = (
      'select branch_id, description, active_ind from branch')
    Left = 680
    Top = 16
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
