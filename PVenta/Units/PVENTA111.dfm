object frmRepCodigoBarra: TfrmRepCodigoBarra
  Left = 358
  Top = 272
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Impresi'#243'n de c'#243'digos de barra'
  ClientHeight = 273
  ClientWidth = 549
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
  OnActivate = FormActivate
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 7
    Top = 8
    Width = 43
    Height = 13
    Caption = 'Producto'
  end
  object SpeedButton1: TSpeedButton
    Left = 147
    Top = 8
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
  object btProveedor: TSpeedButton
    Left = 147
    Top = 32
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
    OnClick = btProveedorClick
  end
  object Label5: TLabel
    Left = 7
    Top = 32
    Width = 50
    Height = 13
    Caption = 'Proveedor'
  end
  object btPrint: TBitBtn
    Left = 344
    Top = 240
    Width = 115
    Height = 25
    Caption = '[ F2 ] - Imprimir'
    TabOrder = 4
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
    Left = 464
    Top = 240
    Width = 75
    Height = 25
    Caption = '&Salir'
    TabOrder = 5
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
  object edProd: TEdit
    Left = 64
    Top = 8
    Width = 81
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
    Left = 171
    Top = 8
    Width = 374
    Height = 21
    TabStop = False
    BevelKind = bkFlat
    BorderStyle = bsNone
    Color = clInfoBk
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
  end
  object GroupBox1: TGroupBox
    Left = 272
    Top = 64
    Width = 137
    Height = 81
    Caption = 'Existencia'
    TabOrder = 2
    object Label3: TLabel
      Left = 24
      Top = 24
      Width = 33
      Height = 13
      Caption = 'Unidad'
    end
    object Label4: TLabel
      Left = 24
      Top = 48
      Width = 44
      Height = 13
      Caption = 'Empaque'
    end
    object edUnd: TEdit
      Left = 72
      Top = 24
      Width = 57
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
      TabOrder = 0
    end
    object edEmp: TEdit
      Left = 72
      Top = 48
      Width = 57
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
  end
  object GroupBox2: TGroupBox
    Left = 272
    Top = 152
    Width = 137
    Height = 81
    Caption = 'Para impresi'#243'n'
    TabOrder = 3
    object Label2: TLabel
      Left = 24
      Top = 24
      Width = 43
      Height = 13
      Caption = 'Cantidad'
    end
    object edCantidad: TEdit
      Left = 72
      Top = 24
      Width = 57
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
    end
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 60
    Width = 257
    Height = 173
    DataSource = dsVencimiento
    Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 7
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ven_fecha'
        Title.Alignment = taCenter
        Title.Caption = 'Vence'
        Width = 75
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ven_lote'
        Title.Alignment = taCenter
        Title.Caption = '# Lote'
        Width = 49
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sup_nombre'
        Title.Caption = 'Proveedor'
        Width = 109
        Visible = True
      end>
  end
  object edProveedor: TEdit
    Left = 64
    Top = 32
    Width = 81
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnChange = edProveedorChange
    OnKeyDown = edProveedorKeyDown
  end
  object tProveedor: TEdit
    Left = 171
    Top = 32
    Width = 374
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
  object Memo1: TMemo
    Left = 16
    Top = 144
    Width = 233
    Height = 65
    Lines.Strings = (
      'Memo1')
    TabOrder = 9
    Visible = False
  end
  object rgtipo: TRadioGroup
    Left = 416
    Top = 64
    Width = 129
    Height = 81
    Caption = '[ F3 ] Cambiar'
    ItemIndex = 0
    Items.Strings = (
      'Producto'
      'Gondola')
    TabOrder = 10
    OnClick = rgtipoClick
  end
  object ckcodigo: TCheckBox
    Left = 416
    Top = 160
    Width = 129
    Height = 41
    Caption = '[ F5 ] Incluir el Codigo del producto'
    TabOrder = 11
    Visible = False
    WordWrap = True
  end
  object BitBtn1: TBitBtn
    Left = 192
    Top = 240
    Width = 147
    Height = 25
    Caption = '[ F4 ] - Buscar producto'
    TabOrder = 12
    OnClick = BitBtn1Click
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
      0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF000000000000000000000000000000000000000000FF00FF0000000000FFFF
      FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF0000000000FFFFFF00000000000000000000000000FF00FF0000000000FFFF
      FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF0000000000FFFFFF00000000000000000000000000FF00FF00000000000000
      00000000000000000000000000000000000000000000FF00FF00000000000000
      00000000000000000000000000000000000000000000FF00FF00000000000000
      0000FFFFFF00000000000000000000000000000000000000000000000000FFFF
      FF000000000000000000000000000000000000000000FF00FF00000000000000
      0000FFFFFF00000000000000000000000000FF00FF000000000000000000FFFF
      FF000000000000000000000000000000000000000000FF00FF00000000000000
      0000FFFFFF00000000000000000000000000FF00FF000000000000000000FFFF
      FF000000000000000000000000000000000000000000FF00FF00FF00FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
      FF0000000000FFFFFF00000000000000000000000000FF00FF0000000000FFFF
      FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF000000000000000000000000000000000000000000FF00FF00000000000000
      0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00FF000000
      00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00FF000000
      0000FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00FF000000
      00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
  end
  object Search: TQrySearchDlgADO
    AliasName = DM.ADOSigma
    Left = 136
    Top = 160
  end
  object QVencimiento: TADOQuery
    Connection = DM.ADOSigma
    DataSource = DM.dsEmpresas
    Parameters = <
      item
        Name = 'emp'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'pro'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'v.ven_fecha, v.ven_lote, s.sup_nombre, v.sup_codigo'
      'from'
      'provence v'
      'left outer join proveedores s on (v.emp_codigo = s.emp_codigo'
      'and v.sup_codigo = s.sup_codigo)'
      'where'
      'v.emp_codigo = :emp'
      'and v.pro_codigo = :pro'
      'order by'
      'v.ven_fecha')
    Left = 48
    Top = 160
    object QVencimientoven_fecha: TDateTimeField
      FieldName = 'ven_fecha'
    end
    object QVencimientoven_lote: TIntegerField
      FieldName = 'ven_lote'
    end
    object QVencimientosup_nombre: TStringField
      FieldName = 'sup_nombre'
      Size = 60
    end
    object QVencimientosup_codigo: TIntegerField
      FieldName = 'sup_codigo'
    end
  end
  object dsVencimiento: TDataSource
    DataSet = QVencimiento
    Left = 80
    Top = 160
  end
end
