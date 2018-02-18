inherited dFieldOption: TdFieldOption
  Caption = 'Field Options'
  ClientHeight = 346
  ClientWidth = 333
  ExplicitWidth = 349
  ExplicitHeight = 384
  PixelsPerInch = 96
  TextHeight = 16
  inherited btnOK: TSpeedButton
    Left = 87
    Top = 287
    ExplicitLeft = 87
    ExplicitTop = 287
  end
  inherited btnCancel: TSpeedButton
    Left = 167
    Top = 287
    ExplicitLeft = 167
    ExplicitTop = 287
  end
  object lblFieldName: TLabel [2]
    Left = 26
    Top = 10
    Width = 79
    Height = 19
    Caption = 'Field Name'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblDisplayName: TLabel [3]
    Left = 8
    Top = 41
    Width = 97
    Height = 19
    Caption = 'Display Name'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  inherited lblTitleBy: TLabel
    Left = 55
    Top = 325
    ExplicitLeft = 55
    ExplicitTop = 325
  end
  inherited lblBy: TLabel
    Left = 128
    Top = 325
    ExplicitLeft = 128
    ExplicitTop = 325
  end
  object lbl1: TLabel [6]
    Left = 8
    Top = 74
    Width = 94
    Height = 19
    Caption = 'Default Value'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl2: TLabel [7]
    Left = 25
    Top = 247
    Width = 28
    Height = 19
    Caption = 'Size'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edtdisplayname: TDBEdit [8]
    Left = 111
    Top = 39
    Width = 194
    Height = 27
    DataField = 'display_name'
    DataSource = dsNew
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnKeyDown = edtKeyDown
    OnKeyPress = edtKeyPress
  end
  object edtFieldName: TDBEdit [9]
    Left = 111
    Top = 8
    Width = 194
    Height = 27
    DataField = 'field_name'
    DataSource = dsNew
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnKeyPress = edtFieldNameKeyPress
  end
  object cbCanSearch: TCheckBox [10]
    Left = 181
    Top = 233
    Width = 97
    Height = 17
    Caption = 'Can Search'
    TabOrder = 3
  end
  object cbRequired: TCheckBox [11]
    Left = 181
    Top = 256
    Width = 97
    Height = 17
    Caption = 'Required'
    TabOrder = 4
  end
  object edtDefaultValue: TDBEdit [12]
    Left = 111
    Top = 72
    Width = 194
    Height = 27
    DataField = 'default_value'
    DataSource = dsNew
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnKeyDown = edtKeyDown
    OnKeyPress = edtKeyPress
  end
  object edtSize: TSpinEdit [13]
    Left = 59
    Top = 244
    Width = 65
    Height = 29
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxValue = 300
    MinValue = 1
    ParentFont = False
    TabOrder = 5
    Value = 1
  end
  object pnlType: TPanel [14]
    Left = 8
    Top = 118
    Width = 145
    Height = 108
    Caption = 'Type'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    VerticalAlignment = taAlignTop
    object rbFreeField: TRadioButton
      Left = 8
      Top = 20
      Width = 113
      Height = 17
      Caption = 'Free Field'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = rbFreeFieldClick
    end
    object rbDropdown: TRadioButton
      Left = 8
      Top = 40
      Width = 113
      Height = 17
      Caption = 'Dropdown'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = rbDropdownClick
    end
    object rbDateTime: TRadioButton
      Left = 8
      Top = 60
      Width = 113
      Height = 17
      Caption = 'DateTime'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = rbDateTimeClick
    end
    object rbNumber: TRadioButton
      Left = 8
      Top = 80
      Width = 113
      Height = 17
      Caption = 'Number'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = rbNumberClick
    end
  end
  object pnlCase: TPanel [15]
    Left = 180
    Top = 119
    Width = 145
    Height = 108
    Caption = 'Case'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    VerticalAlignment = taAlignTop
    object rbCapitalised: TRadioButton
      Left = 9
      Top = 20
      Width = 113
      Height = 17
      Caption = 'Capitalised'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = rbCapitalisedClick
    end
    object rbUppercase: TRadioButton
      Left = 8
      Top = 40
      Width = 113
      Height = 17
      Caption = 'Uppercase'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = rbUppercaseClick
    end
    object rbLowercase: TRadioButton
      Left = 8
      Top = 60
      Width = 113
      Height = 17
      Caption = 'Lowercase'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = rbLowercaseClick
    end
    object rbUnCapitalised: TRadioButton
      Left = 8
      Top = 80
      Width = 113
      Height = 17
      Caption = 'UnCapitalised'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = rbUnCapitalisedClick
    end
  end
  inherited dsNew: TDataSource
    Left = 200
    Top = 32
  end
end
