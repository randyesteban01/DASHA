object frmExistProducto: TfrmExistProducto
  Left = 410
  Top = 229
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Existencia por producto'
  ClientHeight = 316
  ClientWidth = 561
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label6: TLabel
    Left = 8
    Top = 16
    Width = 29
    Height = 13
    Caption = 'Fecha'
  end
  object Label1: TLabel
    Left = 8
    Top = 40
    Width = 43
    Height = 13
    Caption = 'Producto'
  end
  object SpeedButton1: TSpeedButton
    Left = 150
    Top = 40
    Width = 23
    Height = 22
    Flat = True
    Glyph.Data = {
      42010000424D4201000000000000760000002800000011000000110000000100
      040000000000CC00000000000000000000001000000010000000000000000000
      BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
      77777000000077777777777777777000000070000077777000007000000070B0
      00777770F0007000000070F000777770B0007000000070000000700000007000
      0000700B000000B0000070000000700F000700F0000070000000700B000700B0
      0000700000007700000000000007700000007770B00070B00077700000007770
      0000700000777000000077770007770007777000000077770B07770B07777000
      0000777700077700077770000000777777777777777770000000777777777777
      777770000000}
    OnClick = SpeedButton1Click
  end
  object Label4: TLabel
    Left = 8
    Top = 64
    Width = 40
    Height = 13
    Caption = 'Almacen'
  end
  object btAlmacen: TSpeedButton
    Left = 150
    Top = 64
    Width = 23
    Height = 22
    Flat = True
    Glyph.Data = {
      42010000424D4201000000000000760000002800000011000000110000000100
      040000000000CC00000000000000000000001000000010000000000000000000
      BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
      77777000000077777777777777777000000070000077777000007000000070B0
      00777770F0007000000070F000777770B0007000000070000000700000007000
      0000700B000000B0000070000000700F000700F0000070000000700B000700B0
      0000700000007700000000000007700000007770B00070B00077700000007770
      0000700000777000000077770007770007777000000077770B07770B07777000
      0000777700077700077770000000777777777777777770000000777777777777
      777770000000}
    OnClick = btAlmacenClick
  end
  object lblDepto: TLabel
    Left = 8
    Top = 91
    Width = 29
    Height = 13
    Caption = 'Depto'
  end
  object lblCliente: TLabel
    Left = 8
    Top = 115
    Width = 33
    Height = 13
    Caption = 'Cliente'
  end
  object btnDepto: TSpeedButton
    Left = 150
    Top = 88
    Width = 23
    Height = 22
    Flat = True
    Glyph.Data = {
      42010000424D4201000000000000760000002800000011000000110000000100
      040000000000CC00000000000000000000001000000010000000000000000000
      BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
      77777000000077777777777777777000000070000077777000007000000070B0
      00777770F0007000000070F000777770B0007000000070000000700000007000
      0000700B000000B0000070000000700F000700F0000070000000700B000700B0
      0000700000007700000000000007700000007770B00070B00077700000007770
      0000700000777000000077770007770007777000000077770B07770B07777000
      0000777700077700077770000000777777777777777770000000777777777777
      777770000000}
    OnClick = btnDeptoClick
  end
  object btnCliente: TSpeedButton
    Left = 150
    Top = 112
    Width = 23
    Height = 22
    Flat = True
    Glyph.Data = {
      42010000424D4201000000000000760000002800000011000000110000000100
      040000000000CC00000000000000000000001000000010000000000000000000
      BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
      77777000000077777777777777777000000070000077777000007000000070B0
      00777770F0007000000070F000777770B0007000000070000000700000007000
      0000700B000000B0000070000000700F000700F0000070000000700B000700B0
      0000700000007700000000000007700000007770B00070B00077700000007770
      0000700000777000000077770007770007777000000077770B07770B07777000
      0000777700077700077770000000777777777777777770000000777777777777
      777770000000}
    OnClick = btnClienteClick
  end
  object lblSuplidor: TLabel
    Left = 8
    Top = 138
    Width = 38
    Height = 13
    Caption = 'Suplidor'
  end
  object btnSuplidor: TSpeedButton
    Left = 152
    Top = 136
    Width = 21
    Height = 22
    Flat = True
    Glyph.Data = {
      42010000424D4201000000000000760000002800000011000000110000000100
      040000000000CC00000000000000000000001000000010000000000000000000
      BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
      77777000000077777777777777777000000070000077777000007000000070B0
      00777770F0007000000070F000777770B0007000000070000000700000007000
      0000700B000000B0000070000000700F000700F0000070000000700B000700B0
      0000700000007700000000000007700000007770B00070B00077700000007770
      0000700000777000000077770007770007777000000077770B07770B07777000
      0000777700077700077770000000777777777777777770000000777777777777
      777770000000}
    OnClick = btnSuplidorClick
  end
  object edProd: TEdit
    Left = 56
    Top = 40
    Width = 89
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnKeyDown = edProdKeyDown
  end
  object tProd: TEdit
    Left = 174
    Top = 40
    Width = 379
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    Color = clInfoBk
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object btPrint: TBitBtn
    Left = 392
    Top = 252
    Width = 75
    Height = 25
    Caption = 'Imprimir'
    TabOrder = 6
    OnClick = btPrintClick
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
  object btClose: TBitBtn
    Left = 469
    Top = 252
    Width = 75
    Height = 25
    Caption = '&Salir'
    TabOrder = 7
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
  object edAlmacen: TEdit
    Left = 56
    Top = 64
    Width = 89
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnChange = edAlmacenChange
    OnKeyDown = edAlmacenKeyDown
  end
  object tAlmacen: TEdit
    Left = 174
    Top = 64
    Width = 379
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    Color = clInfoBk
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
  end
  object ckcompra: TCheckBox
    Left = 56
    Top = 179
    Width = 65
    Height = 17
    Caption = 'Compras'
    TabOrder = 9
  end
  object ckentrada: TCheckBox
    Left = 56
    Top = 195
    Width = 105
    Height = 17
    Caption = 'Entrada almac'#233'n'
    TabOrder = 10
  end
  object ckdevolventa: TCheckBox
    Left = 56
    Top = 211
    Width = 121
    Height = 17
    Caption = 'Devoluci'#243'n en venta'
    TabOrder = 11
  end
  object ckfactura: TCheckBox
    Left = 56
    Top = 227
    Width = 121
    Height = 17
    Caption = 'Facturas y/o tickets'
    TabOrder = 12
  end
  object cksalilda: TCheckBox
    Left = 56
    Top = 243
    Width = 105
    Height = 17
    Caption = 'Conduces/Salida'
    TabOrder = 13
  end
  object ckdevolcompra: TCheckBox
    Left = 56
    Top = 259
    Width = 129
    Height = 17
    Caption = 'Devoluci'#243'n en compra'
    TabOrder = 14
  end
  object chkAjusteInv: TCheckBox
    Left = 56
    Top = 275
    Width = 129
    Height = 17
    Caption = 'Ajuste de Inventario'
    TabOrder = 15
  end
  object chkInvInicial: TCheckBox
    Left = 56
    Top = 163
    Width = 105
    Height = 17
    Caption = 'Inventario Inicial'
    TabOrder = 16
  end
  object CkVencimiento: TCheckBox
    Left = 216
    Top = 163
    Width = 105
    Height = 17
    Caption = 'Vencimiento'
    TabOrder = 17
    Visible = False
  end
  object EdtDepto: TEdit
    Left = 56
    Top = 88
    Width = 89
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnChange = EdtDeptoChange
    OnKeyDown = EdtDeptoKeyDown
  end
  object EdtCliente: TEdit
    Left = 56
    Top = 112
    Width = 89
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnChange = EdtClienteChange
    OnKeyDown = EdtClienteKeyDown
  end
  object EdtCienteN: TEdit
    Left = 174
    Top = 112
    Width = 379
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    Color = clInfoBk
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 18
  end
  object EdtDeptoN: TEdit
    Left = 174
    Top = 88
    Width = 379
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    Color = clInfoBk
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 19
  end
  object EdtSuplidor: TEdit
    Left = 56
    Top = 136
    Width = 89
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnChange = EdtSuplidorChange
    OnKeyDown = EdtSuplidorKeyDown
  end
  object EdtSuplidorN: TEdit
    Left = 174
    Top = 136
    Width = 379
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    Color = clInfoBk
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 20
  end
  object Fecha2: TDateTimePicker
    Left = 242
    Top = 16
    Width = 87
    Height = 21
    Date = 44922.569469502310000000
    Time = 44922.569469502310000000
    TabOrder = 21
  end
  object Fecha1: TDateTimePicker
    Left = 55
    Top = 16
    Width = 87
    Height = 21
    Date = 44922.569469502310000000
    Time = 44922.569469502310000000
    TabOrder = 22
  end
  object Time1: TDateTimePicker
    Left = 143
    Top = 16
    Width = 98
    Height = 21
    Date = 2.000000000000000000
    Time = 2.000000000000000000
    Kind = dtkTime
    TabOrder = 23
  end
  object Search: TQrySearchDlgADO
    AliasName = DM.ADOSigma
    Left = 275
    Top = 256
  end
end
