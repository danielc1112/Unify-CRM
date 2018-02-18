object dShowColumns: TdShowColumns
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Show Columns'
  ClientHeight = 565
  ClientWidth = 292
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object btnOK: TSpeedButton
    Left = 98
    Top = 517
    Width = 79
    Height = 31
    Caption = 'OK'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = btnOKClick
  end
  object dbgColumns: TSMDBGrid
    Left = 8
    Top = 8
    Width = 265
    Height = 466
    DataSource = dsColumns
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
        FieldName = 'display_name'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Column'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 160
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'visible'
        Title.Alignment = taCenter
        Title.Caption = 'Show'
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
    Left = 56
    Top = 480
    Width = 75
    Height = 25
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
    Left = 145
    Top = 480
    Width = 75
    Height = 25
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
  object dsColumns: TDataSource
    Left = 120
    Top = 144
  end
  object qryContactFields: TIBOQuery
    IB_Connection = CoreData.dbUnify
    PreparedEdits = True
    PreparedInserts = True
    RecordCountAccurate = True
    RequestLive = True
    SQL.Strings = (
      'select * from contactfields')
    Left = 176
    Top = 360
  end
end
