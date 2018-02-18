object dBaseNew: TdBaseNew
  Left = 0
  Top = 0
  Caption = 'New'
  ClientHeight = 334
  ClientWidth = 553
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object btnOK: TSpeedButton
    Left = 192
    Top = 288
    Width = 65
    Height = 38
    Caption = 'Save'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = btnOKClick
  end
  object btnCancel: TSpeedButton
    Left = 263
    Top = 288
    Width = 65
    Height = 38
    Caption = 'Cancel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = btnCancelClick
  end
  object lblTitleBy: TLabel
    Left = 16
    Top = 310
    Width = 58
    Height = 13
    Caption = 'Created By:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblBy: TLabel
    Left = 89
    Top = 310
    Width = 22
    Height = 13
    Caption = 'lblBy'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object dsNew: TDataSource
    Left = 216
    Top = 176
  end
  object qryUsers: TIBOQuery
    IB_Connection = CoreData.dbUnify
    PreparedEdits = True
    PreparedInserts = True
    ReadOnly = True
    RecordCountAccurate = True
    SQL.Strings = (
      'select user_id, display_name from users')
    Left = 304
    Top = 16
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
