object Form1: TForm1
  Left = 192
  Top = 117
  Width = 1044
  Height = 540
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 48
    Top = 40
    Width = 32
    Height = 13
    Caption = 'Label1'
  end
  object Label2: TLabel
    Left = 48
    Top = 72
    Width = 32
    Height = 13
    Caption = 'Label1'
  end
  object configuracion: TButton
    Left = 144
    Top = 256
    Width = 75
    Height = 25
    Caption = 'configuracion'
    TabOrder = 0
    OnClick = configuracionClick
  end
  object Edit1: TEdit
    Left = 208
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'Edit1'
  end
  object ComboBox1: TComboBox
    Left = 120
    Top = 152
    Width = 489
    Height = 21
    ItemHeight = 13
    TabOrder = 2
    Text = 'ComboBox1'
  end
  object predeterminada: TButton
    Left = 296
    Top = 256
    Width = 75
    Height = 25
    Caption = 'predeterminada'
    TabOrder = 3
    OnClick = predeterminadaClick
  end
  object PrinterSetupDialog1: TPrinterSetupDialog
    Left = 512
    Top = 256
  end
end
