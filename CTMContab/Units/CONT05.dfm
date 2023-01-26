object frmRepClientes: TfrmRepClientes
  Left = 151
  Top = 172
  ActiveControl = edTipo
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Reporte de clientes'
  ClientHeight = 209
  ClientWidth = 462
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Label12: TLabel
    Left = 136
    Top = 16
    Width = 21
    Height = 13
    Caption = 'Tipo'
  end
  object btTipo: TSpeedButton
    Left = 219
    Top = 16
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
    OnClick = btTipoClick
  end
  object Label1: TLabel
    Left = 126
    Top = 40
    Width = 31
    Height = 13
    Caption = 'Desde'
  end
  object btDesde: TSpeedButton
    Left = 219
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
    OnClick = btDesdeClick
  end
  object Label2: TLabel
    Left = 129
    Top = 64
    Width = 28
    Height = 13
    Caption = 'Hasta'
  end
  object btHasta: TSpeedButton
    Left = 219
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
    OnClick = btHastaClick
  end
  object Label3: TLabel
    Left = 127
    Top = 136
    Width = 30
    Height = 13
    Caption = 'Precio'
  end
  object Label10: TLabel
    Left = 110
    Top = 88
    Width = 47
    Height = 13
    Caption = 'Condici'#243'n'
  end
  object btCondi: TSpeedButton
    Left = 219
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
    OnClick = btCondiClick
  end
  object Label4: TLabel
    Left = 101
    Top = 160
    Width = 56
    Height = 13
    Caption = 'Ordenar por'
  end
  object Label5: TLabel
    Left = 111
    Top = 112
    Width = 46
    Height = 13
    Caption = 'Vendedor'
  end
  object btVendedor: TSpeedButton
    Left = 219
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
    OnClick = btVendedorClick
  end
  object cbStatus: TRadioGroup
    Left = 8
    Top = 8
    Width = 89
    Height = 81
    Caption = 'Status'
    ItemIndex = 0
    Items.Strings = (
      'Todos'
      'Activos'
      'Inactivos')
    TabOrder = 6
  end
  object cbBalance: TRadioGroup
    Left = 8
    Top = 96
    Width = 89
    Height = 105
    Caption = 'Balance'
    ItemIndex = 0
    Items.Strings = (
      'Todos'
      '= 0'
      '> 0'
      '< 0')
    TabOrder = 7
  end
  object tTipo: TEdit
    Left = 245
    Top = 16
    Width = 212
    Height = 21
    Color = clInfoBk
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
  end
  object edTipo: TEdit
    Left = 168
    Top = 16
    Width = 49
    Height = 21
    TabOrder = 0
    OnChange = edTipoChange
    OnKeyDown = edTipoKeyDown
  end
  object tDesde: TEdit
    Left = 245
    Top = 40
    Width = 212
    Height = 21
    Color = clInfoBk
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
  end
  object edDesde: TEdit
    Left = 168
    Top = 40
    Width = 49
    Height = 21
    TabOrder = 1
    OnChange = edDesdeChange
    OnKeyDown = edDesdeKeyDown
  end
  object tHasta: TEdit
    Left = 245
    Top = 64
    Width = 212
    Height = 21
    Color = clInfoBk
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
  end
  object edHasta: TEdit
    Left = 168
    Top = 64
    Width = 49
    Height = 21
    TabOrder = 2
    OnChange = edHastaChange
    OnKeyDown = edHastaKeyDown
  end
  object cbPrecio: TComboBox
    Left = 168
    Top = 136
    Width = 105
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 5
    Items.Strings = (
      'Todos'
      'Precio 1'
      'Precio 2'
      'Precio 3'
      'Precio 4')
  end
  object ckDesk: TCheckBox
    Left = 280
    Top = 139
    Width = 137
    Height = 17
    Caption = 'Con descuento fijo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 11
  end
  object tCondi: TEdit
    Left = 245
    Top = 88
    Width = 212
    Height = 21
    Color = clInfoBk
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 12
  end
  object edCondi: TEdit
    Left = 168
    Top = 88
    Width = 49
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 3
    OnChange = edCondiChange
    OnKeyDown = edCondiKeyDown
  end
  object btClose: TBitBtn
    Left = 376
    Top = 176
    Width = 75
    Height = 25
    Caption = '&Salir'
    TabOrder = 13
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
    Left = 296
    Top = 176
    Width = 75
    Height = 25
    Caption = '&Imprimir'
    TabOrder = 14
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
  object cbOrden: TComboBox
    Left = 168
    Top = 160
    Width = 105
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 15
    Items.Strings = (
      'C'#243'digo'
      'Referencia'
      'Nombre'
      'Cedula'
      'RNC')
  end
  object tVendedor: TEdit
    Left = 245
    Top = 112
    Width = 212
    Height = 21
    Color = clInfoBk
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 16
  end
  object edVendedor: TEdit
    Left = 168
    Top = 112
    Width = 49
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 4
    OnChange = edVendedorChange
    OnKeyDown = edVendedorKeyDown
  end
  object Search: TQrySearchDlgIB
    AliasName = DM.IBDatabase
    Left = 64
    Top = 40
  end
end
