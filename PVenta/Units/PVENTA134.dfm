object frmDescuentoGeneral: TfrmDescuentoGeneral
  Left = 630
  Top = 376
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Descuento General'
  ClientHeight = 163
  ClientWidth = 368
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 14
  object Label1: TLabel
    Left = 34
    Top = 34
    Width = 142
    Height = 16
    Caption = 'Porcentaje de Descuento'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edDesc: TEdit
    Left = 190
    Top = 34
    Width = 130
    Height = 22
    TabOrder = 0
    OnKeyPress = edDescKeyPress
  end
  object BitBtn1: TBitBtn
    Left = 138
    Top = 95
    Width = 81
    Height = 27
    Caption = 'Salir'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
end
