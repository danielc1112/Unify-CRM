object dReplace: TdReplace
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Search And Replace'
  ClientHeight = 413
  ClientWidth = 397
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
    Left = 172
    Top = 348
    Width = 105
    Height = 45
    Caption = 'Replace'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = btnOKClick
  end
  object btnCancel: TSpeedButton
    Left = 283
    Top = 348
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
  object lbFields: TListBox
    Left = 8
    Top = 8
    Width = 146
    Height = 385
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemHeight = 19
    ParentFont = False
    TabOrder = 0
  end
  object edtOldValue: TLabeledEdit
    Left = 172
    Top = 128
    Width = 201
    Height = 27
    EditLabel.Width = 69
    EditLabel.Height = 19
    EditLabel.Caption = 'Old Value'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -16
    EditLabel.Font.Name = 'Tahoma'
    EditLabel.Font.Style = []
    EditLabel.ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object edtNewValue: TLabeledEdit
    Left = 172
    Top = 208
    Width = 201
    Height = 27
    EditLabel.Width = 75
    EditLabel.Height = 19
    EditLabel.Caption = 'New Value'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -16
    EditLabel.Font.Name = 'Tahoma'
    EditLabel.Font.Style = []
    EditLabel.ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object cbCase: TCheckBox
    Left = 216
    Top = 264
    Width = 137
    Height = 17
    Caption = 'Case Sensitive'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object cbPartialMatch: TCheckBox
    Left = 216
    Top = 296
    Width = 137
    Height = 17
    Caption = 'Partial Match'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object pbReplace: TProgressBar
    Left = 0
    Top = 396
    Width = 397
    Height = 17
    Align = alBottom
    Smooth = True
    TabOrder = 5
  end
end
