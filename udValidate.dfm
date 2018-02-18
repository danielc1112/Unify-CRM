object dValidate: TdValidate
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Validate'
  ClientHeight = 208
  ClientWidth = 364
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object btnOK: TSpeedButton
    Left = 56
    Top = 140
    Width = 105
    Height = 45
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
    Left = 199
    Top = 140
    Width = 106
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
  object cbAddress: TCheckBox
    Left = 72
    Top = 24
    Width = 233
    Height = 17
    Caption = 'Suburb Postcode State Area'
    Checked = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    State = cbChecked
    TabOrder = 0
  end
  object pbValidate: TProgressBar
    Left = 0
    Top = 191
    Width = 364
    Height = 17
    Align = alBottom
    Smooth = True
    TabOrder = 1
  end
  object cbEmails: TCheckBox
    Left = 72
    Top = 47
    Width = 201
    Height = 17
    Caption = 'Verify Emails Online'
    Checked = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    State = cbChecked
    TabOrder = 2
  end
  object cbKeywords: TCheckBox
    Left = 72
    Top = 117
    Width = 201
    Height = 17
    Caption = 'Detect invalid keywords'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object cbCharCase: TCheckBox
    Left = 72
    Top = 70
    Width = 201
    Height = 17
    Caption = 'Correct Capitalisation'
    Checked = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    State = cbChecked
    TabOrder = 4
  end
  object cbDefaults: TCheckBox
    Left = 72
    Top = 93
    Width = 257
    Height = 17
    Caption = 'Replace blanks with default values'
    Checked = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    State = cbChecked
    TabOrder = 5
  end
  object idDNSResolver1: TIdDNSResolver
    QueryType = []
    WaitingTime = 5000
    AllowRecursiveQueries = True
    IPVersion = Id_IPv4
    Left = 296
    Top = 8
  end
  object idsmtp1: TIdSMTP
    SASLMechanisms = <>
    Left = 296
    Top = 48
  end
  object qryContactDropdowns: TIBOQuery
    IB_Connection = CoreData.dbUnify
    PreparedEdits = True
    PreparedInserts = True
    ReadOnly = True
    RecordCountAccurate = True
    SQL.Strings = (
      'select field_name, dropdown from contactdropdowns')
    Left = 8
    Top = 8
    object mtbContactDropdownsFIELD_NAME: TStringField
      FieldName = 'FIELD_NAME'
      Size = 32
    end
    object mtbContactDropdownsDROPDOWN: TStringField
      FieldName = 'DROPDOWN'
      Size = 32
    end
  end
  object qryKeywords: TIBOQuery
    IB_Connection = CoreData.dbUnify
    PreparedEdits = True
    PreparedInserts = True
    ReadOnly = True
    RecordCountAccurate = True
    SQL.Strings = (
      'select description from keyword')
    Left = 40
    Top = 8
    object mtbKeywordsDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Size = 32
    end
  end
end
