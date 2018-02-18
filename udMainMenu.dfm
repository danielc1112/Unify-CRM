inherited dMainMenu: TdMainMenu
  Caption = 'Unify'
  ClientHeight = 282
  ClientWidth = 485
  Position = poScreenCenter
  ExplicitWidth = 501
  ExplicitHeight = 320
  PixelsPerInch = 96
  TextHeight = 13
  object btnChangeUser: TSpeedButton [0]
    Left = 8
    Top = 216
    Width = 137
    Height = 41
    Caption = 'Change User'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = btnChangeUserClick
  end
  object btnRun: TSpeedButton [1]
    Left = 8
    Top = 173
    Width = 137
    Height = 41
    Caption = 'Run'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = btnRunClick
  end
  inherited sbBase: TStatusBar
    Top = 263
    Width = 485
    ExplicitTop = 263
    ExplicitWidth = 485
  end
  object lbMenu: TListBox
    Left = 8
    Top = 8
    Width = 137
    Height = 162
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemHeight = 25
    Items.Strings = (
      'Contacts'
      'Branches'
      'Users'
      'Reports'
      'Configuration'
      'Backup')
    ParentFont = False
    TabOrder = 1
    OnClick = lbMenuClick
    OnDblClick = lbMenuDblClick
  end
  object mmoProgDesc: TMemo
    Left = 160
    Top = 8
    Width = 313
    Height = 249
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    Lines.Strings = (
      '')
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
  end
end
