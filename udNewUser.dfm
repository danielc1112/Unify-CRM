inherited dNewUser: TdNewUser
  Caption = 'New User'
  ClientHeight = 300
  ClientWidth = 325
  ExplicitWidth = 341
  ExplicitHeight = 338
  PixelsPerInch = 96
  TextHeight = 16
  inherited btnOK: TSpeedButton
    Left = 88
    Top = 232
    ExplicitLeft = 88
    ExplicitTop = 232
  end
  inherited btnCancel: TSpeedButton
    Left = 159
    Top = 232
    ExplicitLeft = 159
    ExplicitTop = 232
  end
  object lblUserName: TLabel [2]
    Left = 56
    Top = 26
    Width = 58
    Height = 16
    Caption = 'Username'
  end
  object lblPassword: TLabel [3]
    Left = 59
    Top = 56
    Width = 55
    Height = 16
    Caption = 'Password'
  end
  object lbl1: TLabel [4]
    Left = 38
    Top = 111
    Width = 77
    Height = 16
    Caption = 'Display Name'
  end
  object lblUserLevel: TLabel [5]
    Left = 55
    Top = 141
    Width = 59
    Height = 16
    Caption = 'User Level'
  end
  object lblContact: TLabel [6]
    Left = 89
    Top = 180
    Width = 56
    Height = 16
    Caption = 'lblContact'
  end
  object lblConfirmPassword: TLabel [7]
    Left = 10
    Top = 83
    Width = 104
    Height = 16
    Caption = 'Confirm Password'
    Visible = False
  end
  inherited lblTitleBy: TLabel
    Left = 72
    Top = 276
    ExplicitLeft = 72
    ExplicitTop = 276
  end
  inherited lblBy: TLabel
    Left = 145
    Top = 276
    ExplicitLeft = 145
    ExplicitTop = 276
  end
  object edtDisplayName: TDBEdit [10]
    Left = 120
    Top = 108
    Width = 193
    Height = 24
    TabOrder = 3
    OnKeyDown = edtKeyDown
    OnKeyPress = edtKeyPress
  end
  object btnContact: TButton [11]
    Left = 8
    Top = 177
    Width = 75
    Height = 25
    Caption = 'Contact'
    TabOrder = 5
    OnClick = btnContactClick
  end
  object cbActive: TCheckBox [12]
    Left = 128
    Top = 209
    Width = 65
    Height = 17
    Caption = 'Active'
    TabOrder = 6
  end
  object edtConfirmPassword: TEdit [13]
    Left = 120
    Top = 81
    Width = 193
    Height = 24
    PasswordChar = '*'
    TabOrder = 2
    Visible = False
    OnKeyDown = edtKeyDown
    OnKeyPress = edtKeyPress
  end
  object edtPassword: TDBEdit [14]
    Left = 120
    Top = 53
    Width = 193
    Height = 24
    PasswordChar = '*'
    TabOrder = 1
    OnChange = edtPasswordChange
    OnKeyDown = edtKeyDown
    OnKeyPress = edtKeyPress
  end
  object edtUserName: TDBEdit [15]
    Left = 120
    Top = 23
    Width = 193
    Height = 24
    TabOrder = 0
    OnKeyDown = edtKeyDown
    OnKeyPress = edtKeyPress
  end
  object edtUserLevel: TComboBox [16]
    Left = 120
    Top = 138
    Width = 193
    Height = 24
    ItemHeight = 0
    TabOrder = 4
    OnKeyDown = edtKeyDown
    OnKeyPress = edtKeyPress
  end
  object qryContact: TIBOQuery [18]
    Params = <
      item
        DataType = ftString
        Name = 'contact_id'
        ParamType = ptInput
      end>
    IB_Connection = CoreData.dbUnify
    PreparedEdits = True
    PreparedInserts = True
    ReadOnly = True
    RecordCountAccurate = True
    SQL.Strings = (
      'select * from contact where contact_id = :contact_id')
    Left = 16
    Top = 208
  end
  object qryUserLevel: TIBOQuery [19]
    IB_Connection = CoreData.dbUnify
    PreparedEdits = True
    PreparedInserts = True
    ReadOnly = True
    RecordCountAccurate = True
    SQL.Strings = (
      'select user_level_id, description from userlevel')
    Left = 264
    Top = 144
    object mtbUserLeveluser_level_id: TStringField
      FieldName = 'user_level_id'
      Required = True
      Size = 14
    end
    object mtbUserLeveldescription: TStringField
      FieldName = 'description'
      Size = 32
    end
  end
end
