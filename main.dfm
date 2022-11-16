object frmMain: TfrmMain
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'UPS Tracking URL Launcher'
  ClientHeight = 128
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
  object StatusBar: TRzStatusBar
    Left = 0
    Top = 109
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
  object btnClose: TRzButton
    Left = 545
    Top = 64
    Caption = 'Close'
    TabOrder = 2
    OnClick = btnCloseClick
  end
  object btnCopy: TRzButton
    Left = 145
    Top = 64
    Caption = 'Copy'
    TabOrder = 3
    Visible = False
  end
  object btnOpen: TRzButton
    Left = 248
    Top = 64
    Width = 153
    Caption = 'Open Tracking URL'
    TabOrder = 4
    Visible = False
    OnClick = btnOpenClick
  end
  object RzVersionInfo: TRzVersionInfo
    Left = 482
    Top = 11
  end
  object RzFormState: TRzFormState
    RegIniFile = RzRegIniFile
    Left = 558
    Top = 11
  end
  object RzRegIniFile: TRzRegIniFile
    Path = 'UPS Tracking URL Launcher'
    PathType = ptRegistry
    Left = 407
    Top = 10
  end
end
