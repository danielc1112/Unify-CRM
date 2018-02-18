inherited dDuplicates: TdDuplicates
  Align = alNone
  Caption = 'Group Contacts'
  ClientWidth = 966
  Position = poOwnerFormCenter
  OnClose = FormClose
  ExplicitWidth = 982
  PixelsPerInch = 96
  TextHeight = 13
  inherited btnExit: TSpeedButton
    Left = 905
    ExplicitLeft = 342
  end
  object btnExport: TSpeedButton [2]
    Left = 838
    Top = 0
    Width = 61
    Height = 57
    Anchors = [akTop, akRight]
    Caption = '&Export'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    OnClick = btnExportClick
    ExplicitLeft = 566
  end
  object lblField: TLabel [3]
    Left = 19
    Top = 19
    Width = 66
    Height = 19
    Caption = 'Group By'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl1: TLabel [4]
    Left = 587
    Top = 19
    Width = 94
    Height = 19
    Caption = 'With At Least'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  inherited sbBase: TStatusBar
    Width = 966
    ExplicitWidth = 966
  end
  inherited pnlProgess: TPanel
    Width = 563
    ExplicitWidth = 563
    inherited lblProgress: TLabel
      Width = 561
      Height = 47
    end
  end
  object dbgReport: TSMDBGrid
    AlignWithMargins = True
    Left = 3
    Top = 60
    Width = 960
    Height = 436
    Margins.Top = 60
    Align = alClient
    DataSource = dsReport
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
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
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoShowFooter, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar, eoAnyKeyFilter, eoFilterAutoApply]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 23
    ScrollBars = ssHorizontal
    Columns = <
      item
        Expanded = False
        FieldName = 'DUPLICATE'
        Title.Caption = 'Field Name'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 208
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CCOUNT'
        PickList.Strings = (
          'Y'
          'N')
        Title.Caption = 'Count'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 78
        Visible = True
        FooterValue = 0
        FooterType = ftSum
      end
      item
        Expanded = False
        FieldName = 'sub_perc'
        Title.Caption = '%'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Perc'
        Title.Caption = 'Overall %'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 92
        Visible = True
      end>
  end
  object cboGroupBy: TComboBox
    Left = 91
    Top = 16
    Width = 129
    Height = 27
    DropDownCount = 20
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemHeight = 19
    ParentFont = False
    TabOrder = 3
    OnChange = cboGroupByChange
  end
  object edtCount: TSpinEdit
    Left = 687
    Top = 16
    Width = 57
    Height = 29
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxValue = 0
    MinValue = 0
    ParentFont = False
    TabOrder = 4
    Value = 0
    OnChange = edtCountChange
  end
  object btnConditions: TButton
    Left = 344
    Top = 16
    Width = 113
    Height = 28
    Caption = 'Conditions...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = btnConditionsClick
  end
  object dsReport: TDataSource
    DataSet = qryReport
    Left = 304
    Top = 264
  end
  object qryReport: TIBOQuery
    IB_Connection = CoreData.dbUnify
    PreparedEdits = True
    PreparedInserts = True
    ReadOnly = True
    RecordCountAccurate = True
    OnCalcFields = qryReportCalcFields
    SQL.Strings = (
      
        'select active_ind as duplicate, count(active_ind) as ccount from' +
        ' contact'
      'group by active_ind')
    Left = 264
    Top = 264
    object mtbReportDUPLICATE: TStringField
      FieldName = 'DUPLICATE'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object mtbReportCCOUNT: TIntegerField
      FieldName = 'CCOUNT'
      ReadOnly = True
      Required = True
    end
    object mtbReportsub_perc: TFloatField
      FieldKind = fkCalculated
      FieldName = 'sub_perc'
      Calculated = True
    end
    object mtbReportPerc: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Perc'
      Calculated = True
    end
  end
  object qryFields: TIBOQuery
    IB_Connection = CoreData.dbUnify
    PreparedEdits = True
    PreparedInserts = True
    ReadOnly = True
    RecordCountAccurate = True
    SQL.Strings = (
      'select field_name, display_name from contactfields'
      'order by display_order')
    Left = 8
    Top = 16
    object mtbFieldsFIELD_NAME: TStringField
      FieldName = 'FIELD_NAME'
      Required = True
      Size = 32
    end
    object mtbFieldsDISPLAY_NAME: TStringField
      FieldName = 'DISPLAY_NAME'
      Required = True
      Size = 32
    end
  end
  object qryContactCount: TIBOQuery
    IB_Connection = CoreData.dbUnify
    PreparedEdits = True
    PreparedInserts = True
    ReadOnly = True
    RecordCountAccurate = True
    OnCalcFields = qryReportCalcFields
    SQL.Strings = (
      'select count(*) as contactcount from contact')
    Left = 424
    Top = 192
    object mtbContactCountCONTACTCOUNT: TIntegerField
      FieldName = 'CONTACTCOUNT'
      ReadOnly = True
      Required = True
    end
  end
end
