object frmConsVentasMarca: TfrmConsVentasMarca
  Left = 688
  Top = 173
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Consulta de Ventas por Marca'
  ClientHeight = 414
  ClientWidth = 690
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
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 690
    Height = 81
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object Label2: TLabel
      Left = 312
      Top = 8
      Width = 33
      Height = 13
      Caption = 'Cliente'
    end
    object SpeedButton2: TSpeedButton
      Left = 408
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
      OnClick = SpeedButton2Click
    end
    object Label5: TLabel
      Left = 312
      Top = 56
      Width = 40
      Height = 13
      Caption = 'Ordenar'
    end
    object Label6: TLabel
      Left = 8
      Top = 32
      Width = 29
      Height = 13
      Caption = 'Fecha'
    end
    object Label8: TLabel
      Left = 8
      Top = 8
      Width = 40
      Height = 13
      Caption = 'Sucursal'
    end
    object Label13: TLabel
      Left = 312
      Top = 32
      Width = 43
      Height = 13
      Caption = 'Provincia'
    end
    object btprovincia: TSpeedButton
      Left = 408
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
      OnClick = btprovinciaClick
    end
    object Label12: TLabel
      Left = 8
      Top = 56
      Width = 46
      Height = 13
      Caption = 'Vendedor'
    end
    object btVendedor: TSpeedButton
      Left = 96
      Top = 56
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
    object Label1: TLabel
      Left = 496
      Top = 56
      Width = 20
      Height = 13
      Caption = 'Tipo'
    end
    object edCliente: TEdit
      Left = 368
      Top = 8
      Width = 33
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
      TabOrder = 2
      OnChange = edClienteChange
      OnKeyDown = edClienteKeyDown
    end
    object tCliente: TEdit
      Left = 432
      Top = 8
      Width = 172
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
      TabOrder = 5
    end
    object cbStatus: TRadioGroup
      Left = 608
      Top = 0
      Width = 81
      Height = 77
      Caption = 'Status'
      ItemIndex = 0
      Items.Strings = (
        'Todas'
        'Anuladas'
        'Pagadas'
        'Pendientes'
        'Vencidas')
      TabOrder = 6
      OnClick = cbStatusClick
    end
    object cbOrden: TComboBox
      Left = 368
      Top = 56
      Width = 81
      Height = 21
      BevelKind = bkSoft
      Style = csDropDownList
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemHeight = 13
      ParentFont = False
      TabOrder = 4
      Items.Strings = (
        'Numero'
        'Cliente'
        'Fecha'
        'NCF')
    end
    object Fecha1: TDateTimePicker
      Left = 56
      Top = 32
      Width = 89
      Height = 21
      Date = 37506.000000000000000000
      Time = 37506.000000000000000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Fecha2: TDateTimePicker
      Left = 152
      Top = 32
      Width = 89
      Height = 21
      Date = 37506.000000000000000000
      Time = 37506.000000000000000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 56
      Top = 8
      Width = 247
      Height = 21
      DropDownRows = 20
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'suc_codigo'
      ListField = 'suc_nombre'
      ListSource = dsSuc
      ParentFont = False
      TabOrder = 7
    end
    object tprovincia: TEdit
      Left = 432
      Top = 32
      Width = 172
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
    object edProvincia: TEdit
      Left = 368
      Top = 32
      Width = 33
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
      TabOrder = 3
      OnChange = edProvinciaChange
      OnKeyDown = edProvinciaKeyDown
    end
    object tVendedor: TEdit
      Left = 120
      Top = 56
      Width = 180
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
      TabOrder = 9
    end
    object edVendedor: TEdit
      Left = 56
      Top = 56
      Width = 33
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
      TabOrder = 10
      OnChange = edVendedorChange
      OnKeyDown = edVendedorKeyDown
    end
    object cbtipo: TComboBox
      Left = 520
      Top = 56
      Width = 81
      Height = 21
      BevelKind = bkSoft
      Style = csDropDownList
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemHeight = 13
      ItemIndex = 0
      ParentFont = False
      TabOrder = 11
      Text = 'Cantidad'
      Items.Strings = (
        'Cantidad'
        'Total')
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 374
    Width = 690
    Height = 40
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    DesignSize = (
      690
      40)
    object btRefresh: TBitBtn
      Left = 528
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Refrescar >>'
      TabOrder = 0
      OnClick = btRefreshClick
    end
    object btClose: TBitBtn
      Left = 608
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '&Salir'
      TabOrder = 1
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
    object BitBtn1: TBitBtn
      Left = 440
      Top = 8
      Width = 83
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Exportar'
      TabOrder = 2
      OnClick = BitBtn1Click
      Glyph.Data = {
        4E010000424D4E01000000000000760000002800000012000000120000000100
        040000000000D800000000000000000000001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777770000007777777777777777770000007777777777770007770000007444
        4400000006007700000074FFFF08880600080700000074F008000060EE070700
        000074FFFFF8060EE0047700000074F0088060EE00F47700000074FFFF060EE0
        00747700000074F00800EE0EE0047700000074FFFF0EE0F0EE047700000074F0
        080000F000047700000074FFFFFFFFFFFFF47700000074444444444444447700
        000074F444F444F444F477000000744444444444444477000000777777777777
        777777000000777777777777777777000000}
    end
  end
  object sGrid: TStringGrid
    Left = 0
    Top = 81
    Width = 690
    Height = 293
    Align = alClient
    ColCount = 4
    DefaultColWidth = 84
    DefaultRowHeight = 18
    FixedCols = 0
    RowCount = 2
    FixedRows = 0
    TabOrder = 2
    OnDrawCell = sGridDrawCell
    ColWidths = (
      101
      60
      153
      105)
  end
  object Search: TQrySearchDlgADO
    AliasName = DM.ADOSigma
    Left = 144
    Top = 176
  end
  object QSucursal: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltReadOnly
    DataSource = DM.dsEmpresas
    Parameters = <
      item
        Name = 'emp_codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'usu'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      's.suc_codigo, s.suc_nombre, s.alm_codigo, s.emp_codigo'
      'from'
      'sucursales s, sucursal_acceso a'
      'where'
      's.emp_codigo = a.emp_codigo'
      'and s.suc_codigo = a.suc_codigo'
      'and a.emp_codigo = :emp_codigo'
      'and a.usu_codigo = :usu'
      'order by s.suc_codigo')
    Left = 144
    Top = 208
    object QSucursalsuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object QSucursalsuc_nombre: TStringField
      FieldName = 'suc_nombre'
      Size = 60
    end
    object QSucursalalm_codigo: TIntegerField
      FieldName = 'alm_codigo'
    end
    object QSucursalemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
  end
  object dsSuc: TDataSource
    DataSet = QSucursal
    Left = 176
    Top = 208
  end
  object QFacturas: TADOQuery
    Connection = DM.ADOSigma
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
        Name = 'suc'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'mar'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 60
        Value = Null
      end
      item
        Name = 'fec1'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'fec2'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      'select'
      
        'm.mar_nombre, f.fac_nombre, t.tcl_nombre, v.ven_nombre, f.cli_co' +
        'digo,'
      'sum(d.det_cantidad) as cantidad,'
      'sum(d.det_total) as total'
      'from'
      
        'facturas f, marcas m, det_factura d, vendedores v, tipoclientes ' +
        't, clientes c'
      'where'
      'f.emp_codigo = d.emp_codigo'
      'and f.suc_codigo = d.suc_codigo'
      'and f.tfa_codigo = d.tfa_codigo'
      'and f.fac_forma = d.fac_forma'
      'and f.fac_numero = d.fac_numero'
      'and d.emp_codigo = m.emp_codigo'
      'and d.mar_codigo = m.mar_codigo'
      'and f.emp_codigo = v.emp_codigo'
      'and f.ven_codigo = v.ven_codigo'
      'and f.emp_codigo = c.emp_codigo'
      'and f.cli_codigo = c.cli_codigo'
      'and c.emp_codigo = t.emp_codigo'
      'and c.tcl_codigo = t.tcl_codigo'
      'and f.emp_codigo = :emp'
      'and f.suc_codigo = :suc'
      'and m.mar_nombre = :mar'
      'and f.fac_fecha between convert(datetime, :fec1, 105) and'
      'convert(datetime, :fec2, 105)'
      'group by'
      
        'm.mar_nombre, f.fac_nombre, t.tcl_nombre, v.ven_nombre, f.cli_co' +
        'digo')
    Left = 144
    Top = 240
    object QFacturasmar_nombre: TStringField
      FieldName = 'mar_nombre'
      Size = 60
    end
    object QFacturasfac_nombre: TStringField
      FieldName = 'fac_nombre'
      Size = 60
    end
    object QFacturastcl_nombre: TStringField
      FieldName = 'tcl_nombre'
      Size = 60
    end
    object QFacturasven_nombre: TStringField
      FieldName = 'ven_nombre'
      Size = 60
    end
    object QFacturascantidad: TBCDField
      FieldName = 'cantidad'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object QFacturastotal: TBCDField
      FieldName = 'total'
      ReadOnly = True
      currency = True
      Precision = 32
      Size = 2
    end
    object QFacturascli_codigo: TIntegerField
      FieldName = 'cli_codigo'
    end
  end
  object ExportXLS: TQExportXLS
    About = '(About EMS QuickExport)'
    _Version = '2.50'
    Formats.DateTimeFormat = 'M/d/yyyy h:mm AMPM'
    Formats.IntegerFormat = '#,###,##0'
    Formats.CurrencyFormat = '00.00$'
    Formats.FloatFormat = '#,###,##0.00'
    Formats.DateFormat = 'M/d/yyyy'
    Formats.TimeFormat = 'h:mm AMPM'
    Formats.BooleanTrue = 'true'
    Formats.BooleanFalse = 'false'
    Formats.NullString = 'null'
    Options.PageFooter = 'Page &P of &N'
    Options.SheetTitle = 'Sheet 1'
    Options.CaptionsFormat.Font.Style = [xfsBold]
    FieldFormats = <>
    StripStyles = <>
    Sheets = <>
    Left = 176
    Top = 176
  end
end
