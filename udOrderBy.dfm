object dOrderBy: TdOrderBy
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Order By'
  ClientHeight = 230
  ClientWidth = 390
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 16
    Top = 22
    Width = 63
    Height = 19
    Caption = 'Order By'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 21
    Top = 71
    Width = 58
    Height = 19
    Caption = 'Then By'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 21
    Top = 119
    Width = 58
    Height = 19
    Caption = 'Then By'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object btnOK: TSpeedButton
    Left = 80
    Top = 177
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
    Left = 207
    Top = 177
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
  object edtFirst: TComboBox
    Left = 85
    Top = 19
    Width = 145
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemHeight = 19
    ParentFont = False
    TabOrder = 0
  end
  object edtSecond: TComboBox
    Left = 85
    Top = 68
    Width = 145
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemHeight = 19
    ParentFont = False
    TabOrder = 1
  end
  object edtThird: TComboBox
    Left = 85
    Top = 116
    Width = 145
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemHeight = 19
    ParentFont = False
    TabOrder = 2
  end
  object edtOrder: TComboBox
    Left = 256
    Top = 68
    Width = 113
    Height = 27
    DropDownCount = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemHeight = 19
    ItemIndex = 0
    ParentFont = False
    TabOrder = 3
    Text = 'Ascending'
    Items.Strings = (
      'Ascending'
      'Descending')
  end
end
