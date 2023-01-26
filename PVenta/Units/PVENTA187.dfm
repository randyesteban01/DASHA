object frnAmalisisCompraVenta: TfrnAmalisisCompraVenta
  Left = 384
  Top = 298
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Analisis comparativo de Compra y Venta'
  ClientHeight = 369
  ClientWidth = 522
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 200
    Top = 16
    Width = 59
    Height = 13
    Caption = 'Fecha inicio:'
  end
  object Label2: TLabel
    Left = 200
    Top = 40
    Width = 48
    Height = 13
    Caption = 'Fecha fin:'
  end
  object Label3: TLabel
    Left = 200
    Top = 72
    Width = 100
    Height = 13
    Caption = 'Nombre del producto'
  end
  object rgtipo: TRadioGroup
    Left = 8
    Top = 8
    Width = 185
    Height = 105
    ItemIndex = 0
    Items.Strings = (
      'Familia de Productos'
      'Departamento'
      'Proveedor'
      'Producto')
    TabOrder = 0
  end
  object fecha1: TDateTimePicker
    Left = 272
    Top = 16
    Width = 81
    Height = 21
    Date = 39889.000000000000000000
    Time = 39889.000000000000000000
    TabOrder = 1
  end
  object DateTimePicker1: TDateTimePicker
    Left = 272
    Top = 40
    Width = 81
    Height = 21
    Date = 39889.000000000000000000
    Time = 39889.000000000000000000
    TabOrder = 2
  end
  object edNombre: TEdit
    Left = 200
    Top = 88
    Width = 313
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    TabOrder = 3
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 120
    Width = 505
    Height = 209
    TabOrder = 4
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btClose: TBitBtn
    Left = 432
    Top = 336
    Width = 75
    Height = 25
    Caption = '&Salir'
    TabOrder = 5
    TabStop = False
    OnClick = btCloseClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
      03333377777777777F333301BBBBBBBB033333773F3333337F3333011BBBBBBB
      0333337F73F333337F33330111BBBBBB0333337F373F33337F333301110BBBBB
      0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
      0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
      0333337F337F33337F333301110BBBBB0333337F337FF3337F33330111B0BBBB
      0333337F337733337F333301110BBBBB0333337F337F33337F333301110BBBBB
      0333337F3F7F33337F333301E10BBBBB0333337F7F7F33337F333301EE0BBBBB
      0333337F777FFFFF7F3333000000000003333377777777777333}
    NumGlyphs = 2
  end
  object btPrint: TBitBtn
    Left = 352
    Top = 336
    Width = 75
    Height = 25
    Caption = '&Imprimir'
    TabOrder = 6
    Glyph.Data = {
      66010000424D6601000000000000760000002800000014000000140000000100
      040000000000F000000000000000000000001000000010000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
      DDDDDDDD0000DDDDDDDDDDDDDDDDDDDD0000DD000DDDDDDDDDD000DD0000D000
      000000000000000D0000D0F8888888888888880D0000D0F8888888888888880D
      0000D0F8888888822899880D0000D0FFFFFFFFFFFFFFFF0D0000D70077777777
      7777007D0000DDD00000000000000DDD0000DDD00FFFFFFFFFF00DDD0000DDDD
      0F00000000F0DDDD0000DDDD0FFFFFFFFFF0DDDD0000DDDD0F00000000F0DDDD
      0000DDDD0FFFFFFFFFF0DDDD0000DDDD0F00FFFFFFF0DDDD0000DDDD0FFFFFFF
      FFF0DDDD0000DDDD000000000000DDDD0000DDDDDDDDDDDDDDDDDDDD0000DDDD
      DDDDDDDDDDDDDDDD0000}
  end
  object btRefresh: TBitBtn
    Left = 272
    Top = 336
    Width = 74
    Height = 25
    Caption = 'Refrescar'
    TabOrder = 7
  end
end
