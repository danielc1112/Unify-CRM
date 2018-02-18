object dAttachContact: TdAttachContact
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Find Contact'
  ClientHeight = 363
  ClientWidth = 371
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
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object btnOK: TSpeedButton
    Left = 112
    Top = 317
    Width = 65
    Height = 38
    Caption = 'OK'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = btnOKClick
  end
  object btnCancel: TSpeedButton
    Left = 183
    Top = 317
    Width = 65
    Height = 38
    Caption = 'Cancel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = btnCancelClick
  end
  object dbgContact: TSMDBGrid
    Left = 8
    Top = 8
    Width = 353
    Height = 304
    DataSource = dsContact
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
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
    ExOptions = [eoBooleanAsCheckBox, eoENTERlikeTAB, eoKeepSelection, eoRowNumber, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar, eoAnyKeyFilter, eoFilterAutoApply]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 26
    DefaultRowHeight = 23
    ScrollBars = ssHorizontal
    Columns = <
      item
        Expanded = False
        FieldName = 'nfirst'
        Title.Caption = 'First'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nlast'
        Title.Caption = 'Last'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 150
        Visible = True
      end>
  end
  object qryContact: TIBOQuery
    IB_Connection = CoreData.dbUnify
    PreparedEdits = True
    PreparedInserts = True
    ReadOnly = True
    RecordCountAccurate = True
    SQL.Strings = (
      'select contact_id, nfirst, nlast from contact')
    Left = 112
    Top = 176
    object mtbContactCONTACT_ID: TStringField
      FieldName = 'CONTACT_ID'
      Required = True
      Size = 14
    end
    object mtbContactNFIRST: TStringField
      FieldName = 'NFIRST'
      Size = 32
    end
    object mtbContactNLAST: TStringField
      FieldName = 'NLAST'
      Size = 32
    end
  end
  object dsContact: TDataSource
    Left = 144
    Top = 176
  end
end
