object FrmSelFecha: TFrmSelFecha
  Left = 561
  Top = 389
  Width = 152
  Height = 114
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'FrmSelFecha'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poOwnerFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object dtp1: TDateTimePicker
    Left = 16
    Top = 8
    Width = 105
    Height = 21
    Date = 43629.832191099540000000
    Time = 43629.832191099540000000
    TabOrder = 0
  end
  object btn1: TBitBtn
    Left = 32
    Top = 40
    Width = 75
    Height = 25
    Caption = '&OK'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = btn1Click
  end
end
