inherited dNewBranch: TdNewBranch
  Caption = 'New Branch'
  ClientHeight = 373
  ClientWidth = 333
  ExplicitWidth = 349
  ExplicitHeight = 411
  PixelsPerInch = 96
  TextHeight = 16
  inherited btnOK: TSpeedButton
    Left = 88
    Top = 305
    Width = 73
    ExplicitLeft = 88
    ExplicitTop = 305
    ExplicitWidth = 73
  end
  inherited btnCancel: TSpeedButton
    Left = 167
    Top = 305
    Width = 74
    ExplicitLeft = 167
    ExplicitTop = 305
    ExplicitWidth = 74
  end
  object lblPhone: TLabel [2]
    Left = 47
    Top = 79
    Width = 35
    Height = 16
    Caption = 'Phone'
  end
  object lblMobile: TLabel [3]
    Left = 45
    Top = 101
    Width = 37
    Height = 16
    Caption = 'Mobile'
  end
  object lblEmail: TLabel [4]
    Left = 51
    Top = 134
    Width = 31
    Height = 16
    Caption = 'Email'
  end
  object lblStreet1: TLabel [5]
    Left = 40
    Top = 164
    Width = 42
    Height = 16
    Caption = 'Street1'
  end
  object lblStreet2: TLabel [6]
    Left = 40
    Top = 191
    Width = 42
    Height = 16
    Caption = 'Street2'
  end
  object lblSuburb: TLabel [7]
    Left = 41
    Top = 221
    Width = 41
    Height = 16
    Caption = 'Suburb'
  end
  object lblPostcode: TLabel [8]
    Left = 29
    Top = 251
    Width = 53
    Height = 16
    Caption = 'PostCode'
  end
  object lblState: TLabel [9]
    Left = 180
    Top = 254
    Width = 30
    Height = 16
    Caption = 'State'
  end
  object lblBranchName: TLabel [10]
    Left = 8
    Top = 26
    Width = 76
    Height = 16
    Caption = 'Branch Name'
  end
  inherited lblTitleBy: TLabel
    Left = 59
    Top = 349
    ExplicitLeft = 59
    ExplicitTop = 349
  end
  inherited lblBy: TLabel
    Left = 132
    Top = 349
    ExplicitLeft = 132
    ExplicitTop = 349
  end
  object edtEmail: TDBEdit [13]
    Left = 88
    Top = 131
    Width = 193
    Height = 24
    TabOrder = 3
    OnKeyDown = edtKeyDown
    OnKeyPress = edtKeyPress
  end
  object edtStreet1: TDBEdit [14]
    Left = 88
    Top = 161
    Width = 193
    Height = 24
    TabOrder = 4
    OnKeyDown = edtKeyDown
    OnKeyPress = edtKeyPress
  end
  object edtStreet2: TDBEdit [15]
    Left = 88
    Top = 191
    Width = 193
    Height = 24
    TabOrder = 5
    OnKeyDown = edtKeyDown
    OnKeyPress = edtKeyPress
  end
  object edtPostcode: TDBEdit [16]
    Left = 88
    Top = 251
    Width = 81
    Height = 24
    TabOrder = 7
    OnKeyDown = edtKeyDown
    OnKeyPress = edtKeyPress
  end
  object edtState: TDBComboBox [17]
    Left = 216
    Top = 251
    Width = 65
    Height = 24
    ItemHeight = 16
    TabOrder = 8
    OnKeyDown = edtKeyDown
    OnKeyPress = edtKeyPress
  end
  object edtBranchName: TDBEdit [18]
    Left = 90
    Top = 23
    Width = 193
    Height = 24
    TabOrder = 0
    OnKeyDown = edtKeyDown
    OnKeyPress = edtKeyPress
  end
  object edtSuburb: TDBComboBox [19]
    Left = 88
    Top = 221
    Width = 193
    Height = 24
    ItemHeight = 16
    TabOrder = 6
    OnKeyDown = edtKeyDown
    OnKeyPress = edtKeyPress
  end
  object edtMobile: TDBEdit [20]
    Left = 88
    Top = 101
    Width = 193
    Height = 24
    TabOrder = 2
    OnKeyDown = edtKeyDown
    OnKeyPress = edtKeyPress
  end
  object edtPhone: TDBEdit [21]
    Left = 88
    Top = 71
    Width = 193
    Height = 24
    TabOrder = 1
    OnKeyDown = edtKeyDown
    OnKeyPress = edtKeyPress
  end
  object cbActive: TCheckBox [22]
    Left = 132
    Top = 281
    Width = 65
    Height = 17
    Caption = 'Active'
    TabOrder = 9
  end
  inherited qryUsers: TIBOQuery
    Left = 296
  end
end
