object frmConsLiquidaciones: TfrmConsLiquidaciones
  Left = 238
  Top = 119
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Consulta de Liquidaciones de Mercanc'#237'a'
  ClientHeight = 413
  ClientWidth = 698
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 220
    Width = 698
    Height = 4
    Cursor = crVSplit
    Align = alTop
  end
  object Panel1: TPanel
    Left = 0
    Top = 370
    Width = 698
    Height = 43
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    DesignSize = (
      698
      43)
    object btClose: TBitBtn
      Left = 616
      Top = 8
      Width = 75
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
    object BitBtn2: TBitBtn
      Left = 488
      Top = 8
      Width = 123
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Imprimir Liquidaci'#243'n'
      TabOrder = 1
      OnClick = BitBtn2Click
      Glyph.Data = {
        E6000000424DE6000000000000007600000028000000100000000E0000000100
        0400000000007000000000000000000000001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333330000000000003330777777777777033088888888899703308888888888
        870333000000000000333330FCCCCCCF03333330FFFFFFFF03333330FCCCCCCF
        03333330FFFFFFFF03333330FCCCCCCF03333330FFFFFFFF0333333000000000
        03333333333333333333}
    end
    object btRefresh: TBitBtn
      Left = 408
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Refrescar >>'
      TabOrder = 2
      OnClick = btRefreshClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 698
    Height = 33
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object Label6: TLabel
      Left = 13
      Top = 8
      Width = 30
      Height = 13
      Caption = 'Fecha'
    end
    object Fecha1: TDateTimePicker
      Left = 56
      Top = 4
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
      Left = 136
      Top = 4
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
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 33
    Width = 698
    Height = 187
    Align = alTop
    Anchors = [akLeft, akTop, akRight, akBottom]
    Color = clInfoBk
    Ctl3D = False
    DataSource = dsLiq
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'liq_numero'
        Title.Alignment = taCenter
        Title.Caption = 'N'#250'mero'
        Width = 49
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'liq_fecha'
        Title.Alignment = taCenter
        Title.Caption = 'Fecha'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sup_nombre'
        Title.Caption = 'Proveedor'
        Width = 185
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'liq_factura'
        Title.Alignment = taCenter
        Title.Caption = '#Factura'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'liq_taza'
        Title.Alignment = taCenter
        Title.Caption = 'Tasa'
        Width = 35
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'liq_status'
        Title.Alignment = taCenter
        Title.Caption = 'Status'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TotalUS'
        Title.Alignment = taCenter
        Width = 81
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TotalRD'
        Title.Alignment = taCenter
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'liq_gastos'
        Title.Alignment = taCenter
        Title.Caption = 'Total de Gastos'
        Width = 77
        Visible = True
      end>
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 224
    Width = 698
    Height = 146
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 3
    object TabSheet1: TTabSheet
      Caption = 'Cuentas contables'
      object Label9: TLabel
        Left = 527
        Top = 11
        Width = 48
        Height = 13
        Caption = 'Cr'#233'ditos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 527
        Top = 27
        Width = 43
        Height = 13
        Caption = 'D'#233'bitos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 527
        Top = 43
        Width = 45
        Height = 13
        Caption = 'Balance'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object btBuscaCta: TSpeedButton
        Left = 528
        Top = 90
        Width = 153
        Height = 25
        Caption = '[ F5 ] - Buscar Cuenta   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btBuscaCtaClick
      end
      object btElimina: TSpeedButton
        Left = 528
        Top = 65
        Width = 153
        Height = 25
        Caption = '[ F4 ] - Eliminar Cuenta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btEliminaClick
      end
      object GridCuentas: TDBGrid
        Left = 0
        Top = 0
        Width = 521
        Height = 118
        Align = alLeft
        Ctl3D = False
        DataSource = dsCuentas
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnColEnter = GridCuentasColEnter
        OnEnter = GridCuentasEnter
        OnKeyDown = GridCuentasKeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'cat_cuenta'
            Title.Alignment = taCenter
            Title.Caption = 'Cuenta'
            Width = 88
            Visible = True
          end
          item
            Color = clInfoBk
            Expanded = False
            FieldName = 'cat_nombre'
            ReadOnly = True
            Title.Caption = 'Nombre de la Cuenta'
            Width = 282
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'det_origen'
            Title.Alignment = taCenter
            Title.Caption = 'Origen'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'det_monto'
            Title.Alignment = taCenter
            Title.Caption = 'Monto'
            Width = 80
            Visible = True
          end>
      end
      object lbCR: TStaticText
        Left = 583
        Top = 11
        Width = 103
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object lbDB: TStaticText
        Left = 583
        Top = 27
        Width = 103
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object lbBAL: TStaticText
        Left = 583
        Top = 43
        Width = 103
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
    end
  end
  object QLiquidacion: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    AfterOpen = QLiquidacionAfterOpen
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
      
        'l.emp_codigo, l.liq_numero, l.sup_codigo, l.liq_fecha, l.liq_Age' +
        'ncia,'
      
        'l.liq_container, l.liq_factura, l.liq_taza, l.liq_gastos, l.alm_' +
        'codigo,'
      
        'l.liq_factor, l.usu_codigo, l.liq_status, l.ped_tipo, l.ped_nume' +
        'ro,'
      
        'l.mon_codigo, s.sup_nombre, sum(d.det_costo*d.det_cantidad) as T' +
        'otalUS,'
      'sum((d.det_costo*l.liq_taza)*d.det_cantidad) as TotalRD'
      'from'
      'liquidacion l, proveedores s, det_liquidacion d'
      'where'
      'l.emp_codigo = s.emp_codigo'
      'and l.sup_codigo = s.sup_codigo'
      'and l.emp_codigo = d.emp_codigo'
      'and l.liq_numero = d.liq_numero'
      'and l.emp_codigo = :emp'
      
        'and l.liq_fecha between convert(datetime, :fec1, 105) and conver' +
        't(datetime, :fec2, 105)'
      'group by'
      
        'l.emp_codigo, l.liq_numero, l.sup_codigo, l.liq_fecha, l.liq_Age' +
        'ncia,'
      
        'l.liq_container, l.liq_factura, l.liq_taza, l.liq_gastos, l.alm_' +
        'codigo,'
      
        'l.liq_factor, l.usu_codigo, l.liq_status, l.ped_tipo, l.ped_nume' +
        'ro,'
      'l.mon_codigo, s.sup_nombre'
      'order by'
      'l.liq_fecha'
      '')
    Left = 336
    Top = 152
    object QLiquidacionemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QLiquidacionliq_numero: TIntegerField
      FieldName = 'liq_numero'
      DisplayFormat = '000000'
    end
    object QLiquidacionsup_codigo: TIntegerField
      FieldName = 'sup_codigo'
    end
    object QLiquidacionliq_fecha: TDateTimeField
      FieldName = 'liq_fecha'
    end
    object QLiquidacionliq_Agencia: TStringField
      FieldName = 'liq_Agencia'
      Size = 60
    end
    object QLiquidacionliq_container: TStringField
      FieldName = 'liq_container'
      Size = 30
    end
    object QLiquidacionliq_factura: TStringField
      FieldName = 'liq_factura'
      Size = 30
    end
    object QLiquidacionliq_taza: TBCDField
      FieldName = 'liq_taza'
      currency = True
      Precision = 15
      Size = 2
    end
    object QLiquidacionalm_codigo: TIntegerField
      FieldName = 'alm_codigo'
    end
    object QLiquidacionliq_factor: TBCDField
      FieldName = 'liq_factor'
      currency = True
      Precision = 15
      Size = 2
    end
    object QLiquidacionusu_codigo: TIntegerField
      FieldName = 'usu_codigo'
    end
    object QLiquidacionliq_status: TStringField
      FieldName = 'liq_status'
      Size = 3
    end
    object QLiquidacionped_tipo: TStringField
      FieldName = 'ped_tipo'
      Size = 1
    end
    object QLiquidacionped_numero: TIntegerField
      FieldName = 'ped_numero'
    end
    object QLiquidacionmon_codigo: TIntegerField
      FieldName = 'mon_codigo'
    end
    object QLiquidacionliq_gastos: TBCDField
      FieldName = 'liq_gastos'
      currency = True
      Precision = 15
      Size = 2
    end
    object QLiquidacionsup_nombre: TStringField
      FieldName = 'sup_nombre'
      Size = 60
    end
    object QLiquidacionTotalUS: TBCDField
      FieldName = 'TotalUS'
      ReadOnly = True
      currency = True
      Precision = 32
    end
    object QLiquidacionTotalRD: TBCDField
      FieldName = 'TotalRD'
      ReadOnly = True
      currency = True
      Precision = 32
    end
  end
  object dsLiq: TDataSource
    DataSet = QLiquidacion
    Left = 368
    Top = 152
  end
  object QCuentas: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    AfterInsert = QCuentasAfterInsert
    AfterEdit = QCuentasAfterEdit
    BeforePost = QCuentasBeforePost
    AfterPost = QCuentasAfterPost
    BeforeDelete = QCuentasBeforeDelete
    AfterDelete = QCuentasAfterDelete
    OnNewRecord = QCuentasNewRecord
    DataSource = dsLiq
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
        Name = 'liq_numero'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'emp_codigo, liq_numero,'
      'det_secuencia, cat_nombre, det_monto, det_origen, cat_cuenta'
      'from'
      'contdet_liquidacion'
      'where'
      'emp_codigo = :emp_codigo'
      'and liq_numero = :liq_numero'
      'order by'
      'det_secuencia')
    Left = 328
    Top = 296
    object QCuentasemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QCuentasliq_numero: TIntegerField
      FieldName = 'liq_numero'
    end
    object QCuentasdet_secuencia: TIntegerField
      FieldName = 'det_secuencia'
    end
    object QCuentascat_nombre: TStringField
      FieldName = 'cat_nombre'
      Size = 60
    end
    object QCuentasdet_monto: TBCDField
      FieldName = 'det_monto'
      currency = True
      Precision = 15
      Size = 2
    end
    object QCuentasdet_origen: TStringField
      FieldName = 'det_origen'
      Size = 7
    end
    object QCuentascat_cuenta: TStringField
      FieldName = 'cat_cuenta'
      OnChange = QCuentascat_cuentaChange
      Size = 15
    end
  end
  object dsCuentas: TDataSource
    DataSet = QCuentas
    Left = 360
    Top = 296
  end
  object Search: TQrySearchDlgADO
    AliasName = DM.ADOSigma
    Left = 424
    Top = 120
  end
end
