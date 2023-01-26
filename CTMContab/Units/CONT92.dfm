object Frm_Balance_Bancos: TFrm_Balance_Bancos
  Left = 567
  Top = 364
  BorderIcons = [biMaximize]
  BorderStyle = bsToolWindow
  Caption = 'Balance de bancos'
  ClientHeight = 347
  ClientWidth = 647
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 647
    Height = 305
    Align = alClient
    Ctl3D = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    object dbgrdBalBancos: TDBGrid
      Left = 1
      Top = 1
      Width = 645
      Height = 303
      Align = alClient
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object CoolBar1: TCoolBar
    Left = 0
    Top = 305
    Width = 647
    Height = 42
    Align = alBottom
    AutoSize = True
    Bands = <>
  end
end
