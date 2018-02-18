inherited dBaseEnquiry: TdBaseEnquiry
  Caption = 'Base Enquiry'
  PixelsPerInch = 96
  TextHeight = 13
  object btnNew: TSpeedButton [1]
    Left = 0
    Top = 0
    Width = 61
    Height = 57
    Caption = '&New'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    OnClick = btnNewClick
  end
  object btnSave: TSpeedButton [2]
    Left = 80
    Top = 0
    Width = 61
    Height = 57
    Caption = '&Save'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    OnClick = btnSaveClick
  end
  object btnCancel: TSpeedButton [3]
    Left = 160
    Top = 0
    Width = 61
    Height = 57
    Caption = '&Cancel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    OnClick = btnCancelClick
  end
  object btnDelete: TSpeedButton [4]
    Left = 240
    Top = 0
    Width = 61
    Height = 57
    Caption = '&Delete'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    OnClick = btnDeleteClick
  end
  object btnImport: TSpeedButton [5]
    Left = 336
    Top = 0
    Width = 61
    Height = 57
    Caption = '&Import'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    OnClick = btnImportClick
  end
  object btnExport: TSpeedButton [6]
    Left = 403
    Top = 0
    Width = 61
    Height = 57
    Caption = '&Export'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    OnClick = btnExportClick
  end
  object dsEnquiry: TDataSource
    Left = 144
    Top = 168
  end
end
