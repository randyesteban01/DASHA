object Form1: TForm1
  Left = 283
  Top = 283
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'DASHA -REGISTRO USB-'
  ClientHeight = 240
  ClientWidth = 730
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 8
    Top = 40
    Width = 713
    Height = 65
    ReadOnly = True
    TabOrder = 0
    Visible = False
  end
  object Button1: TButton
    Left = 8
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Buscar'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 88
    Top = 8
    Width = 633
    Height = 21
    TabOrder = 2
    Text = 
      'SELECT * FROM Win32_DiskDrive WHERE Name ="\\\\.\\PHYSICALDRIVE0' +
      '"'
    Visible = False
  end
  object Memo2: TMemo
    Left = 8
    Top = 112
    Width = 713
    Height = 57
    ReadOnly = True
    TabOrder = 3
  end
  object Memo3: TMemo
    Left = 8
    Top = 176
    Width = 713
    Height = 57
    ReadOnly = True
    TabOrder = 4
    Visible = False
  end
end
