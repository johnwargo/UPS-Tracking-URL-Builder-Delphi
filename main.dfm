object frmMain: TfrmMain
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsDialog
  Caption = 'UPS Tracking URL Launcher'
  ClientHeight = 113
  ClientWidth = 628
  Color = clBtnFace
  Constraints.MaxWidth = 640
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnActivate = FormActivate
  TextHeight = 15
  object RzLabel1: TRzLabel
    Left = 8
    Top = 20
    Width = 121
    Height = 20
    Caption = 'Tracking Number'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblTrackingURL: TRzURLLabel
    Left = 145
    Top = 60
    Width = 85
    Height = 20
    Caption = 'Tracking URL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlight
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsUnderline]
    ParentFont = False
  end
  object StatusBar: TRzStatusBar
    Left = 0
    Top = 94
    Width = 628
    Height = 19
    SimpleCaption = 'By John M. Wargo'
    BorderInner = fsNone
    BorderOuter = fsNone
    BorderSides = [sdLeft, sdTop, sdRight, sdBottom]
    BorderWidth = 0
    Color = 15987699
    TabOrder = 0
    ExplicitTop = 85
    ExplicitWidth = 622
    object RzStatusPane1: TRzStatusPane
      Left = 0
      Top = 0
      Width = 528
      Height = 19
      Align = alClient
      Caption = 'By John M. Wargo'
      ExplicitWidth = 497
    end
    object RzVersionInfoStatus1: TRzVersionInfoStatus
      Left = 528
      Top = 0
      Height = 19
      Align = alRight
      FieldLabel = 'Build'
      FieldLabelColor = clBtnText
      Field = vifFileVersion
      VersionInfo = RzVersionInfo
      ExplicitLeft = 476
    end
  end
  object editTrackingNumber: TRzEdit
    Left = 145
    Top = 18
    Width = 475
    Height = 25
    Text = ''
    AutoSize = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 1
    OnChange = editTrackingNumberChange
  end
  object RzVersionInfo: TRzVersionInfo
    Left = 362
    Top = 43
  end
  object RzFormState: TRzFormState
    RegIniFile = RzRegIniFile
    Left = 446
    Top = 43
  end
  object RzRegIniFile: TRzRegIniFile
    Path = 'UPS Tracking URL Launcher'
    PathType = ptRegistry
    Left = 263
    Top = 42
  end
end
