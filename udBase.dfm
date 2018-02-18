object dBaseScreen: TdBaseScreen
  Left = 0
  Top = 0
  Caption = 'Base Screen'
  ClientHeight = 518
  ClientWidth = 901
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object sbBase: TStatusBar
    Left = 0
    Top = 499
    Width = 901
    Height = 19
    Panels = <
      item
        Text = 'Branch:'
        Width = 200
      end
      item
        Text = 'User:'
        Width = 150
      end
      item
        Text = 'UserLevel:'
        Width = 50
      end>
  end
end
