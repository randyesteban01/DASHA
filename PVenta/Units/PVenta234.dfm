object FrmFecha: TFrmFecha
  Left = 463
  Top = 352
  BorderIcons = [biHelp]
  BorderStyle = bsToolWindow
  Caption = 'FrmFecha'
  ClientHeight = 65
  ClientWidth = 143
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object cxDateEdit1: TcxDateEdit
    Left = 8
    Top = 8
    Properties.SaveTime = False
    Properties.ShowTime = False
    TabOrder = 0
    Width = 121
  end
  object btnAceptar: TBitBtn
    Left = 32
    Top = 32
    Width = 75
    Height = 25
    Caption = '&Aceptar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = btnAceptarClick
  end
end
