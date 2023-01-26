object FrmCotizacionVencidas: TFrmCotizacionVencidas
  Left = 422
  Top = 224
  Width = 873
  Height = 648
  BorderIcons = [biMinimize]
  Caption = 'Cotizaciones Vencidas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 81
    Width = 857
    Height = 4
    Cursor = crVSplit
    Align = alTop
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 857
    Height = 81
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 29
      Height = 13
      Caption = 'Fecha'
    end
    object Label12: TLabel
      Left = 8
      Top = 32
      Width = 46
      Height = 13
      Caption = 'Vendedor'
    end
    object btVendedor: TSpeedButton
      Left = 104
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
      OnClick = btVendedorClick
    end
    object Label2: TLabel
      Left = 8
      Top = 56
      Width = 33
      Height = 13
      Caption = 'Cliente'
    end
    object SpeedButton2: TSpeedButton
      Left = 104
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
      OnClick = SpeedButton2Click
    end
    object btusuario: TSpeedButton
      Left = 456
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
      OnClick = btusuarioClick
    end
    object Label3: TLabel
      Left = 376
      Top = 32
      Width = 36
      Height = 13
      Caption = 'Usuario'
    end
    object Fecha1: TDateTimePicker
      Left = 64
      Top = 8
      Width = 79
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
      Left = 144
      Top = 8
      Width = 79
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
    object tVendedor: TEdit
      Left = 128
      Top = 32
      Width = 241
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
      TabOrder = 2
    end
    object edVendedor: TEdit
      Left = 64
      Top = 32
      Width = 39
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
    end
    object edCliente: TEdit
      Left = 64
      Top = 56
      Width = 39
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
      TabOrder = 4
    end
    object tCliente: TEdit
      Left = 128
      Top = 56
      Width = 241
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
    object tUsuario: TEdit
      Left = 480
      Top = 32
      Width = 209
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
      TabOrder = 6
    end
    object edUsuario: TEdit
      Left = 416
      Top = 32
      Width = 39
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
      TabOrder = 7
    end
  end
  object Memo1: TMemo
    Left = 16
    Top = 120
    Width = 441
    Height = 89
    Lines.Strings = (
      'Memo1')
    TabOrder = 1
    Visible = False
  end
  object Panel2: TPanel
    Left = 0
    Top = 568
    Width = 857
    Height = 41
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 2
    DesignSize = (
      857
      41)
    object btClose: TBitBtn
      Left = 771
      Top = 8
      Width = 81
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '&Salir'
      TabOrder = 0
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
    object btrefresh: TBitBtn
      Left = 675
      Top = 8
      Width = 83
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Refrescar'
      TabOrder = 1
      OnClick = btrefreshClick
    end
  end
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 369
    Width = 857
    Height = 193
    ActivePage = cxTabSheet1
    Align = alTop
    TabOrder = 3
    ClientRectBottom = 193
    ClientRectRight = 857
    ClientRectTop = 24
    object cxTabSheet1: TcxTabSheet
      Caption = 'Detalle'
      ImageIndex = 0
      object Grid: TDBGrid
        Left = 0
        Top = 0
        Width = 857
        Height = 169
        Align = alClient
        Ctl3D = False
        DataSource = dsDetalle
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'PRO_CODIGO'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Width = 118
            Visible = True
          end
          item
            Color = clInfoBk
            Expanded = False
            FieldName = 'PRO_NOMBRE'
            Title.Caption = 'Descripci'#243'n del Producto'
            Width = 113
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DET_CANTIDAD'
            Title.Alignment = taCenter
            Title.Caption = 'Cant'
            Width = 45
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DET_MEDIDA'
            Title.Alignment = taCenter
            Title.Caption = 'Medida'
            Visible = True
          end
          item
            Alignment = taCenter
            Color = clInfoBk
            Expanded = False
            FieldName = 'DET_ESCALA'
            Title.Alignment = taCenter
            Title.Caption = 'Escala'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DET_PRECIO'
            Title.Alignment = taCenter
            Title.Caption = 'Precio'
            Width = 88
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DET_DESCUENTO'
            Title.Alignment = taCenter
            Title.Caption = '%Desc'
            Width = 36
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CalcItbis'
            Title.Alignment = taCenter
            Title.Caption = 'Itbis'
            Width = 82
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Valor'
            Title.Alignment = taCenter
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DET_COMISION'
            Title.Alignment = taCenter
            Title.Caption = '%Comisi'#243'n'
            Width = 56
            Visible = True
          end>
      end
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 85
    Width = 857
    Height = 284
    Align = alTop
    Color = clInfoBk
    Ctl3D = False
    DataSource = dsCotizacion
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    PopupMenu = PopupMenu1
    ReadOnly = True
    TabOrder = 4
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'COT_NUMERO'
        Title.Alignment = taCenter
        Title.Caption = 'N'#250'mero'
        Width = 41
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'COT_FECHA'
        Title.Alignment = taCenter
        Title.Caption = 'Fecha'
        Width = 62
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COT_NOMBRE'
        Title.Caption = 'Nombre del Cliente'
        Width = 303
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COT_TOTAL'
        Title.Alignment = taCenter
        Title.Caption = 'Total'
        Width = 81
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_NOMBRE'
        Title.Caption = 'Realizada por'
        Width = 69
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'COT_STATUS'
        Title.Alignment = taCenter
        Title.Caption = 'St.'
        Width = 32
        Visible = True
      end>
  end
  object QCotizacion: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    AfterOpen = QCotizacionAfterOpen
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
      
        'C.emp_codigo, C.suc_codigo, C.cot_numero, C.cot_fecha, C.cot_nom' +
        'bre, C.cot_total, U.usu_nombre, CN.cot_not_status ESTATUS'
      'from'
      'COTIZACION c'
      
        'inner join cotizacion_notif cn on c.emp_codigo = cn.emp_codigo a' +
        'nd c.suc_codigo = cn.suc_codigo and c.cot_numero = cn.cot_numero'
      
        'left join vendedores v on (c.emp_codigo = v.emp_codigo and c.ven' +
        '_codigo = v.ven_codigo)'
      'left join usuarios u on (c.usu_codigo = u.usu_codigo)'
      
        'left join moneda m on (c.emp_codigo = m.emp_codigo and c.mon_cod' +
        'igo = m.mon_codigo)'
      
        'inner join det_cotizacion d on c.emp_codigo = d.emp_codigo and c' +
        '.cot_numero = d.cot_numero'
      'where'
      'c.emp_codigo = d.emp_codigo and c.cot_numero = d.cot_numero'
      'and c.emp_codigo = :emp_codigo'
      
        'and c.cot_fecha between convert(datetime, :fec1, 105) and conver' +
        't(datetime, :fec2, 105)')
    Left = 256
    Top = 192
    object QCotizacionCOT_NUMERO: TIntegerField
      FieldName = 'COT_NUMERO'
    end
    object QCotizacionEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
    end
    object QCotizacionSUC_CODIGO: TIntegerField
      FieldName = 'SUC_CODIGO'
    end
    object QCotizacionCOT_FECHA: TDateField
      FieldName = 'COT_FECHA'
    end
    object QCotizacionCOT_NOMBRE: TStringField
      FieldName = 'COT_NOMBRE'
      Size = 100
    end
    object QCotizacionCOT_TOTAL: TCurrencyField
      FieldName = 'COT_TOTAL'
    end
    object QCotizacionESTATUS: TStringField
      FieldName = 'ESTATUS'
      Size = 3
    end
    object QCotizacionUSU_NOMBRE: TStringField
      FieldName = 'USU_NOMBRE'
      Size = 30
    end
  end
  object dsCotizacion: TDataSource
    DataSet = QCotizacion
    Left = 288
    Top = 192
  end
  object Search: TQrySearchDlgADO
    AliasName = DM.ADOSigma
    Left = 344
    Top = 136
  end
  object QDetalle: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    OnCalcFields = QDetalleCalcFields
    DataSource = dsCotizacion
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
        Name = 'cot_numero'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select '
      'COT_NUMERO, DET_CANTIDAD, DET_CONITBIS, DET_ITBIS, '
      'DET_PRECIO, DET_SECUENCIA, EMP_CODIGO, PRO_BARRA, '
      'PRO_CODIGO, PRO_NOMBRE, PRO_RFABRIC, PRO_RORIGINAL,'
      'DET_ESCALA, DET_MANEJAESCALA, DET_PRECIO1, '
      'DET_PRECIO2, DET_PRECIO3, DET_PRECIO4, '
      'DET_MEDIDA, DET_NOTA, DET_DESCUENTO,'
      'det_margen, det_costo, pro_servicio, pro_combo, mar_codigo,'
      'pro_unidad_medida, UnidadID, Medida_Precio1, Medida_Precio2,'
      'Medida_Precio3, Medida_Precio4, det_cant_unidad_medida'
      'from DET_COTIZACION'
      'where '
      'emp_codigo = :emp_codigo'
      'and cot_numero = :cot_numero'
      'order by'
      'det_secuencia')
    Left = 256
    Top = 224
    object QDetalleCOT_NUMERO: TIntegerField
      FieldName = 'COT_NUMERO'
      Origin = 'DET_COTIZACION.COT_NUMERO'
    end
    object QDetalleDET_CANTIDAD: TFloatField
      FieldName = 'DET_CANTIDAD'
      Origin = 'DET_COTIZACION.DET_CANTIDAD'
    end
    object QDetalleDET_CONITBIS: TIBStringField
      FieldName = 'DET_CONITBIS'
      Origin = 'DET_COTIZACION.DET_CONITBIS'
      Size = 1
    end
    object QDetalleDET_ITBIS: TFloatField
      FieldName = 'DET_ITBIS'
      Origin = 'DET_COTIZACION.DET_ITBIS'
      currency = True
    end
    object QDetalleDET_PRECIO: TFloatField
      FieldName = 'DET_PRECIO'
      Origin = 'DET_COTIZACION.DET_PRECIO'
      currency = True
    end
    object QDetalleDET_SECUENCIA: TIntegerField
      FieldName = 'DET_SECUENCIA'
      Origin = 'DET_COTIZACION.DET_SECUENCIA'
      DisplayFormat = '00'
    end
    object QDetalleEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'DET_COTIZACION.EMP_CODIGO'
    end
    object QDetallePRO_BARRA: TIBStringField
      FieldName = 'PRO_BARRA'
      Origin = 'DET_COTIZACION.PRO_BARRA'
      Size = 30
    end
    object QDetallePRO_CODIGO: TIntegerField
      FieldName = 'PRO_CODIGO'
      Origin = 'DET_COTIZACION.PRO_CODIGO'
    end
    object QDetallePRO_NOMBRE: TIBStringField
      FieldName = 'PRO_NOMBRE'
      Origin = 'DET_COTIZACION.PRO_NOMBRE'
      Size = 60
    end
    object QDetallePRO_RFABRIC: TIBStringField
      FieldName = 'PRO_RFABRIC'
      Origin = 'DET_COTIZACION.PRO_RFABRIC'
      Size = 60
    end
    object QDetallePRO_RORIGINAL: TIBStringField
      FieldName = 'PRO_RORIGINAL'
      Origin = 'DET_COTIZACION.PRO_RORIGINAL'
      Size = 50
    end
    object QDetalleCalcItbis: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CalcItbis'
      currency = True
      Calculated = True
    end
    object QDetalleCalcDesc: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CalcDesc'
      currency = True
      Calculated = True
    end
    object QDetallePrecioItbis: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PrecioItbis'
      currency = True
      Calculated = True
    end
    object QDetalleValor: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Valor'
      currency = True
      Calculated = True
    end
    object QDetalleDET_ESCALA: TIBStringField
      FieldName = 'DET_ESCALA'
      Origin = 'DET_COTIZACION.DET_ESCALA'
      Size = 5
    end
    object QDetalleDET_MANEJAESCALA: TIBStringField
      FieldName = 'DET_MANEJAESCALA'
      Origin = 'DET_COTIZACION.DET_MANEJAESCALA'
      Size = 5
    end
    object QDetalleDET_PRECIO1: TFloatField
      FieldName = 'DET_PRECIO1'
      Origin = 'DET_COTIZACION.DET_PRECIO1'
    end
    object QDetalleDET_PRECIO2: TFloatField
      FieldName = 'DET_PRECIO2'
      Origin = 'DET_COTIZACION.DET_PRECIO2'
    end
    object QDetalleDET_PRECIO3: TFloatField
      FieldName = 'DET_PRECIO3'
      Origin = 'DET_COTIZACION.DET_PRECIO3'
    end
    object QDetalleDET_PRECIO4: TFloatField
      FieldName = 'DET_PRECIO4'
      Origin = 'DET_COTIZACION.DET_PRECIO4'
    end
    object QDetalleDET_MEDIDA: TIBStringField
      FieldName = 'DET_MEDIDA'
      Origin = 'DET_COTIZACION.DET_MEDIDA'
      Size = 3
    end
    object QDetalleDET_NOTA: TMemoField
      FieldName = 'DET_NOTA'
      BlobType = ftMemo
    end
    object QDetalleDET_DESCUENTO: TBCDField
      FieldName = 'DET_DESCUENTO'
      currency = True
      Precision = 15
      Size = 2
    end
    object QDetalledet_margen: TBCDField
      FieldName = 'det_margen'
      currency = True
      Precision = 18
      Size = 2
    end
    object QDetalledet_costo: TBCDField
      FieldName = 'det_costo'
      currency = True
      Precision = 15
      Size = 2
    end
    object QDetallePrecioTasa: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PrecioTasa'
      currency = True
      Calculated = True
    end
    object QDetallepro_servicio: TStringField
      FieldName = 'pro_servicio'
      Size = 5
    end
    object QDetallepro_combo: TStringField
      FieldName = 'pro_combo'
      Size = 5
    end
    object QDetallemar_codigo: TIntegerField
      FieldName = 'mar_codigo'
    end
    object QDetallepro_unidad_medida: TStringField
      FieldName = 'pro_unidad_medida'
    end
    object QDetalleUnidadID: TStringField
      FieldName = 'UnidadID'
      Size = 1
    end
    object QDetalleMedida_Precio1: TBCDField
      FieldName = 'Medida_Precio1'
      Precision = 18
      Size = 2
    end
    object QDetalleMedida_Precio2: TBCDField
      FieldName = 'Medida_Precio2'
      Precision = 18
      Size = 2
    end
    object QDetalleMedida_Precio3: TBCDField
      FieldName = 'Medida_Precio3'
      Precision = 18
      Size = 2
    end
    object QDetalleMedida_Precio4: TBCDField
      FieldName = 'Medida_Precio4'
      Precision = 18
      Size = 2
    end
    object QDetalledet_cant_unidad_medida: TBCDField
      FieldName = 'det_cant_unidad_medida'
      Precision = 18
      Size = 2
    end
  end
  object dsDetalle: TDataSource
    DataSet = QDetalle
    Left = 288
    Top = 224
  end
  object qConsulta: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
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
      
        'C.emp_codigo, C.suc_codigo, C.cot_numero, C.cot_fecha, C.cot_nom' +
        'bre, C.cot_total, U.usu_nombre, CN.cot_not_status ESTATUS, C.USU' +
        '_CODIGO'
      'from'
      'COTIZACION c'
      
        'inner join cotizacion_notif cn on c.emp_codigo = cn.emp_codigo a' +
        'nd c.suc_codigo = cn.suc_codigo and c.cot_numero = cn.cot_numero'
      
        'left join vendedores v on (c.emp_codigo = v.emp_codigo and c.ven' +
        '_codigo = v.ven_codigo)'
      'left join usuarios u on (c.usu_codigo = u.usu_codigo)'
      
        'left join moneda m on (c.emp_codigo = m.emp_codigo and c.mon_cod' +
        'igo = m.mon_codigo)'
      
        'inner join det_cotizacion d on c.emp_codigo = d.emp_codigo and c' +
        '.cot_numero = d.cot_numero'
      'where'
      'c.emp_codigo = d.emp_codigo and c.cot_numero = d.cot_numero'
      'and c.emp_codigo = :emp_codigo and CN.cot_not_status  = '#39'ABI'#39
      
        'and c.cot_fecha between convert(datetime, :fec1, 105) and conver' +
        't(datetime, :fec2, 105)')
    Left = 160
    Top = 160
  end
  object PopupMenu1: TPopupMenu
    Left = 456
    Top = 280
    object mniAgregarComentarios1: TMenuItem
      Caption = 'Agregar Comentarios'
      OnClick = mniAgregarComentarios1Click
    end
  end
end
