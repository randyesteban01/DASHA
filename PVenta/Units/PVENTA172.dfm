object frmEliminarProducto: TfrmEliminarProducto
  Left = 271
  Top = 269
  ActiveControl = edProveedor
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Eliminacion de Productos'
  ClientHeight = 409
  ClientWidth = 685
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Trebuchet MS'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 16
  object Label2: TLabel
    Left = 7
    Top = 8
    Width = 51
    Height = 16
    Caption = 'Proveedor'
  end
  object btProveedor: TSpeedButton
    Left = 118
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
    OnClick = btProveedorClick
  end
  object Label1: TLabel
    Left = 8
    Top = 32
    Width = 45
    Height = 16
    Caption = 'Producto'
  end
  object lblCantidad: TLabel
    Left = 431
    Top = 379
    Width = 6
    Height = 16
    Alignment = taRightJustify
    Caption = '0'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edProveedor: TEdit
    Left = 64
    Top = 8
    Width = 49
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
    OnChange = edProveedorChange
    OnKeyDown = edProveedorKeyDown
  end
  object tProveedor: TEdit
    Left = 144
    Top = 8
    Width = 497
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
  object btClose: TBitBtn
    Left = 600
    Top = 376
    Width = 75
    Height = 25
    Caption = '&Salir'
    TabOrder = 2
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
    Left = 520
    Top = 376
    Width = 75
    Height = 25
    Caption = '&Eliminar'
    TabOrder = 3
    OnClick = btPrintClick
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00
      FF002900DD002900DF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF0008002C002100B60000000000FF00FF00FF00FF00FF00
      FF002900DE002900DF001200640000000000FF00FF00FF00FF00FF00FF00FF00
      FF00000000001D009D002900DF0019008600FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF002900DE002900DF000000000000000000FF00FF00FF00FF000000
      00002500C8002900DF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF002900DF002900DF000000000000000000000000002500
      C8002900DF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF002900DF002700D600000000002500C7002900
      DF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF002900DE002900DF002900DF000000
      0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00000000002800D8002900DF002900DF000000
      000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00000000002500C8002900DF00000000002900DF002900
      DF000400140000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00000000002500C8002900DF0000000000FF00FF00FF00FF002900
      DF002900DF0011005A000000000000000000FF00FF00FF00FF00FF00FF00FF00
      FF00000000002400C7002900DF0009002F00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF002900DF002200BB0000000000FF00FF00FF00FF00FF00FF00FF00
      FF002800D8002900DF0019008700FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF002900DC00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF002900DF002300BE0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
  end
  object gProductos: TStringGrid
    Left = 0
    Top = 56
    Width = 681
    Height = 313
    ColCount = 6
    DefaultRowHeight = 18
    FixedCols = 0
    RowCount = 2
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect]
    ScrollBars = ssVertical
    TabOrder = 4
    OnDrawCell = gProductosDrawCell
    OnSelectCell = gProductosSelectCell
    ColWidths = (
      63
      102
      337
      64
      66
      23)
  end
  object ckimprime: TCheckBox
    Left = 642
    Top = 78
    Width = 13
    Height = 15
    Color = clWindow
    ParentColor = False
    TabOrder = 5
    OnExit = ckimprimeExit
  end
  object BitBtn1: TBitBtn
    Left = 440
    Top = 376
    Width = 75
    Height = 25
    Caption = 'Refrescar'
    TabOrder = 6
    OnClick = BitBtn1Click
  end
  object ckcero: TCheckBox
    Left = 8
    Top = 376
    Width = 137
    Height = 17
    Caption = 'Con existencia en cero'
    TabOrder = 7
    OnClick = BitBtn1Click
  end
  object Memo1: TMemo
    Left = 32
    Top = 160
    Width = 513
    Height = 89
    Lines.Strings = (
      'Memo1')
    TabOrder = 8
    Visible = False
  end
  object edProducto: TEdit
    Left = 64
    Top = 32
    Width = 577
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
  end
  object mmoSinMov: TMemo
    Left = 40
    Top = 264
    Width = 185
    Height = 89
    Lines.Strings = (
      '('
      'select B.PRO_CODIGO'
      'from EntradaInv a'
      'inner join Det_Entrada b on '
      'a.emp_codigo = b.emp_codigo and '
      'a.suc_codigo = b.suc_codigo and '
      'a.ent_numero = b.ent_numero'
      'where a.ent_status <> '#39'ANU'#39
      'UNION ALL '
      'select B.PRO_CODIGO'
      'from ProvFacturas a'
      'inner join Det_ProvFacturas b on '
      'a.emp_codigo = b.emp_codigo and '
      'a.sup_codigo = b.sup_codigo and '
      'a.fac_numero = b.fac_numero'
      'where a.FAC_status <> '#39'ANU'#39
      'UNION ALL '
      'select B.PRO_CODIGO'
      'from Conduce a'
      'inner join Det_Conduce b on '
      'a.emp_codigo = b.emp_codigo and '
      'a.suc_codigo = b.suc_codigo and '
      'a.CON_numero = b.CON_numero'
      'where a.con_status <> '#39'ANU'#39
      'UNION ALL '
      'select B.PRO_CODIGO'
      'from TRANSFER a'
      'inner join Det_TRANSFER b on '
      'a.emp_codigo = b.emp_codigo and '
      'a.suc_codigo = b.suc_codigo and '
      'a.TRA_numero = b.TRA_numero'
      'where a.TRA_status <> '#39'ANU'#39
      'UNION ALL '
      'select B.PRO_CODIGO'
      'from Facturas a'
      'inner join Det_Factura b on '
      'a.emp_codigo = b.emp_codigo and '
      'a.suc_codigo = b.suc_codigo and '
      'a.fac_numero = b.fac_numero AND '
      'A.tfa_codigo = B.tfa_codigo AND '
      'A.fac_forma = B.fac_forma'
      'where a.fac_status <> '#39'ANU'#39
      'UNION ALL '
      'SELECT b.producto'
      'FROM MONTOS_TICKET a'
      'inner join ticket b on '
      'a.emp_codigo = b.emp_codigo and '
      'a.suc_codigo = b.SUC_CODIGO '
      'and a.ticket = b.ticket and '
      'a.fecha = b.fecha and a.caja = '
      'b.caja and a.usu_codigo = '
      'b.usu_codigo'
      'where a.status <> '#39'ANU'#39
      'UNION ALL '
      'select B.PRO_CODIGO'
      'from LIQUIDACION a'
      'inner join Det_LIQUIDACION b on '
      'a.emp_codigo = b.emp_codigo and '
      'a.LIQ_numero = b.LIQ_numero'
      'where a.LIQ_status <> '#39'ANU'#39
      'UNION ALL '
      'select B.PRO_CODIGO'
      'from DEVOLUCION a'
      'inner join Det_DEVOLUCION b on '
      'a.emp_codigo = b.emp_codigo and '
      'A.SUC_CODIGO = B. SUC_CODIGO '
      'AND a.DEV_numero = '
      'b.DEV_numero'
      'where a.DEV_status <> '#39'ANU'#39
      ')')
    TabOrder = 10
    Visible = False
  end
  object chkSinMovientos: TCheckBox
    Left = 160
    Top = 376
    Width = 105
    Height = 17
    Caption = 'Sin Movimientos'
    TabOrder = 11
    OnClick = BitBtn1Click
  end
  object chkSinProveedor: TCheckBox
    Left = 272
    Top = 376
    Width = 105
    Height = 17
    Caption = 'Sn Proveedor'
    TabOrder = 12
    OnClick = BitBtn1Click
  end
  object chk1: TCheckBox
    Left = 644
    Top = 35
    Width = 21
    Height = 17
    TabOrder = 13
  end
  object Search: TQrySearchDlgADO
    AliasName = DM.ADOSigma
    Left = 464
    Top = 120
  end
  object QProductos: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    AfterOpen = QProductosAfterOpen
    DataSource = DM.dsParametros
    Parameters = <
      item
        Name = 'par_invempresa'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      
        'p.pro_codigo, p.pro_roriginal, p.pro_nombre, p.pro_existencia, p' +
        '.emp_codigo,'
      'p.pro_escala, p.pro_vence, p.pro_precio1'
      'from'
      'productos p'
      'where'
      'p.emp_codigo = :par_invempresa')
    Left = 328
    Top = 216
    object QProductospro_codigo: TIntegerField
      FieldName = 'pro_codigo'
    end
    object QProductospro_roriginal: TStringField
      FieldName = 'pro_roriginal'
      Size = 50
    end
    object QProductospro_nombre: TStringField
      FieldName = 'pro_nombre'
      Size = 80
    end
    object QProductospro_existencia: TBCDField
      FieldName = 'pro_existencia'
      Precision = 15
      Size = 2
    end
    object QProductosemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QProductospro_escala: TStringField
      FieldName = 'pro_escala'
      Size = 5
    end
    object QProductospro_vence: TStringField
      FieldName = 'pro_vence'
      Size = 5
    end
    object QProductospro_precio1: TBCDField
      FieldName = 'pro_precio1'
      Precision = 15
      Size = 2
    end
  end
  object dsProductos: TDataSource
    DataSet = QProductos
    Left = 360
    Top = 216
  end
end
