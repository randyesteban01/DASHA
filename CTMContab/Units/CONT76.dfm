object frmSeleccionNCF: TfrmSeleccionNCF
  Left = 218
  Top = 443
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Seleccione el Tipo de Comprobante'
  ClientHeight = 196
  ClientWidth = 441
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 16
    Top = 32
    Width = 342
    Height = 25
    Caption = '[ F2 ] FACTURA CON VALOR FISCAL'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 16
    Top = 64
    Width = 384
    Height = 25
    Caption = '[ F3 ] COMPROBANTE GUBERNAMENTAL'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 16
    Top = 96
    Width = 402
    Height = 25
    Caption = '[ F4 ] COMPROBANTE REGIMEN ESPECIAL'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object BitBtn1: TBitBtn
    Left = 184
    Top = 152
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 0
    OnClick = BitBtn1Click
  end
end
