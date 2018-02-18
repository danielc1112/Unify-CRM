inherited dBaseProgram: TdBaseProgram
  Align = alClient
  Caption = 'Base Program'
  KeyPreview = True
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  ExplicitWidth = 917
  ExplicitHeight = 556
  DesignSize = (
    901
    518)
  PixelsPerInch = 96
  TextHeight = 13
  object grdntpnl1: TGradientPanel [0]
    Left = 0
    Top = 0
    Width = 901
    Height = 57
    ColorFrom = 16762052
    ColorTo = 6553600
    ColorCount = 128
    Direction = TopToBottom
  end
  object btnExit: TSpeedButton [1]
    Left = 840
    Top = 0
    Width = 61
    Height = 57
    Anchors = [akTop, akRight]
    Caption = 'Exit'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = btnExitClick
  end
  object pnlProgess: TPanel
    Left = 384
    Top = 216
    Width = 281
    Height = 49
    Anchors = [akLeft, akTop, akRight]
    Color = clMoneyGreen
    ParentBackground = False
    TabOrder = 1
    Visible = False
    object lblProgress: TLabel
      Left = 1
      Top = 1
      Width = 279
      Height = 47
      Align = alClient
      Alignment = taCenter
      Caption = 'lblProgress'
      Color = clWindow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
      ExplicitWidth = 78
      ExplicitHeight = 19
    end
  end
end
