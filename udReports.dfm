object dReports: TdReports
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Reports'
  ClientHeight = 235
  ClientWidth = 277
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object btnUserHistory: TSpeedButton
    Left = 8
    Top = 16
    Width = 257
    Height = 65
    Caption = 'User History'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = btnUserHistoryClick
  end
  object btnContactsByPostcode: TSpeedButton
    Left = 8
    Top = 87
    Width = 257
    Height = 65
    Caption = 'Contacts By Suburb'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = btnContactsByPostcodeClick
  end
  object btnDuplicates: TSpeedButton
    Left = 8
    Top = 158
    Width = 257
    Height = 65
    Caption = 'Group Contacts'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = btnDuplicatesClick
  end
end
