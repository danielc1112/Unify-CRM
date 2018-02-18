inherited dContactsByP: TdContactsByP
  Align = alNone
  Caption = 'Contacts By Suburb'
  ClientWidth = 975
  OnClose = FormClose
  ExplicitLeft = -76
  ExplicitTop = -62
  ExplicitWidth = 991
  PixelsPerInch = 96
  TextHeight = 13
  object btnExport: TSpeedButton [1]
    Left = 847
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
    ExplicitLeft = 572
  end
  inherited btnExit: TSpeedButton
    Left = 914
    ExplicitLeft = 788
  end
  inherited sbBase: TStatusBar
    Width = 975
    ExplicitWidth = 849
  end
  inherited pnlProgess: TPanel
    Width = 355
    ExplicitWidth = 229
    inherited lblProgress: TLabel
      Width = 353
      Height = 47
    end
  end
  object dbgReport: TSMDBGrid
    AlignWithMargins = True
    Left = 3
    Top = 60
    Width = 969
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
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar, eoAnyKeyFilter, eoFilterAutoApply]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 23
    ScrollBars = ssHorizontal
    Columns = <
      item
        Expanded = False
        FieldName = 'SUBURB'
        Title.Caption = 'Suburb'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'POSTCODE'
        Title.Caption = 'Postcode'
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
        FieldName = 'AREA'
        Title.Caption = 'Area'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CSTATE'
        Title.Caption = 'State'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CONTACTS'
        Title.Caption = 'Contacts'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 70
        Visible = True
      end>
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
    SQL.Strings = (
      
        'select c.suburb, c.postcode, c.area, c.cstate, count(c.contact_i' +
        'd) as contacts from contact c'
      
        'left join postalfind pf on ((c.suburb = pf.suburb) and (c.postco' +
        'de = pf.postcode))'
      'where c.active_ind = '#39'Y'#39
      'group by c.suburb, c.postcode, c.area, c.cstate'
      'order by contacts desc')
    Left = 264
    Top = 264
    object qryReportSUBURB: TStringField
      FieldName = 'SUBURB'
      Size = 32
    end
    object qryReportPOSTCODE: TStringField
      FieldName = 'POSTCODE'
      Size = 12
    end
    object qryReportAREA: TStringField
      FieldName = 'AREA'
      Size = 32
    end
    object qryReportCSTATE: TStringField
      FieldName = 'CSTATE'
      Size = 12
    end
    object qryReportCONTACTS: TIntegerField
      FieldName = 'CONTACTS'
      ReadOnly = True
      Required = True
    end
  end
end
