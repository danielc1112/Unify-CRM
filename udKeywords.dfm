object dKeywords: TdKeywords
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Add/Remove Keywords'
  ClientHeight = 436
  ClientWidth = 173
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lbK: TListBox
    Left = 8
    Top = 8
    Width = 157
    Height = 375
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemHeight = 13
    MultiSelect = True
    ParentFont = False
    TabOrder = 0
  end
  object btnAdd: TButton
    Left = 8
    Top = 389
    Width = 75
    Height = 25
    Caption = 'Add'
    TabOrder = 1
    OnClick = btnAddClick
  end
  object btnDelete: TButton
    Left = 89
    Top = 389
    Width = 75
    Height = 25
    Caption = 'Remove'
    TabOrder = 2
    OnClick = btnDeleteClick
  end
  object pbKeywords: TProgressBar
    Left = 0
    Top = 419
    Width = 173
    Height = 17
    Align = alBottom
    Smooth = True
    TabOrder = 3
    ExplicitLeft = -191
    ExplicitTop = 191
    ExplicitWidth = 364
  end
end
