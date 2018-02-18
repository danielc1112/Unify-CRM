object dLoadSearch: TdLoadSearch
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Load Search'
  ClientHeight = 278
  ClientWidth = 529
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
  object btnCancel: TSpeedButton
    Left = 336
    Top = 225
    Width = 185
    Height = 45
    Caption = 'Cancel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = btnCancelClick
  end
  object btnOK: TSpeedButton
    Left = 8
    Top = 227
    Width = 177
    Height = 45
    Caption = 'Load'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = btnOKClick
  end
  object btnDelete: TSpeedButton
    Left = 220
    Top = 225
    Width = 85
    Height = 45
    Caption = 'Delete'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = btnDeleteClick
  end
  object dbgInsertSQL: TSMDBGrid
    Left = 8
    Top = 8
    Width = 513
    Height = 213
    DataSource = dsSavedSearch
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
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
    ExOptions = [eoBooleanAsCheckBox, eoDisableDelete, eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoAutoSave, eoBLOBEditor, eoTitleWordWrap, eoFilterAutoApply]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 22
    ScrollBars = ssHorizontal
    Columns = <
      item
        Expanded = False
        FieldName = 'DESCRIPTION'
        Title.Alignment = taCenter
        Title.Caption = 'Description'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 250
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CREATED'
        Title.Alignment = taCenter
        Title.Caption = 'Created'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CREATED_BY'
        Title.Alignment = taCenter
        Title.Caption = 'Created By'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 114
        Visible = True
      end>
  end
  object qrySavedSearch: TIBOQuery
    IB_Connection = CoreData.dbUnify
    PreparedEdits = True
    PreparedInserts = True
    RecordCountAccurate = True
    RequestLive = True
    SQL.Strings = (
      'select * from savedsearch')
    Left = 272
    Top = 80
    object mtbSavedSearchSAVED_SEARCH_ID: TStringField
      FieldName = 'SAVED_SEARCH_ID'
      Required = True
      Size = 14
    end
    object mtbSavedSearchDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Size = 32
    end
    object qrySavedSearchCREATED: TDateTimeField
      FieldName = 'CREATED'
    end
    object mtbSavedSearchCREATED_BY: TStringField
      FieldName = 'CREATED_BY'
      OnGetText = mtbSavedSearchCREATED_BYGetText
      Size = 14
    end
  end
  object dsSavedSearch: TDataSource
    DataSet = qrySavedSearch
    Left = 96
    Top = 112
  end
  object qryUsers: TIBOQuery
    IB_Connection = CoreData.dbUnify
    PreparedEdits = True
    PreparedInserts = True
    ReadOnly = True
    RecordCountAccurate = True
    SQL.Strings = (
      'select user_id, display_name from users')
    Left = 368
    Top = 128
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
end
