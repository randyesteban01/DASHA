object frmConsPedidosCli: TfrmConsPedidosCli
  Left = 336
  Top = 225
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Consulta de pedidos de clientes'
  ClientHeight = 416
  ClientWidth = 688
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
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 257
    Width = 688
    Height = 6
    Cursor = crVSplit
    Align = alTop
    Beveled = True
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 688
    Height = 129
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object Label2: TLabel
      Left = 3
      Top = 56
      Width = 32
      Height = 13
      Caption = 'Cliente'
    end
    object SpeedButton2: TSpeedButton
      Left = 92
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
    object Label12: TLabel
      Left = 3
      Top = 32
      Width = 46
      Height = 13
      Caption = 'Vendedor'
    end
    object btVendedor: TSpeedButton
      Left = 92
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
    object Label10: TLabel
      Left = 334
      Top = 32
      Width = 47
      Height = 13
      Caption = 'Condici'#243'n'
    end
    object btCondi: TSpeedButton
      Left = 420
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
      OnClick = btCondiClick
    end
    object Label4: TLabel
      Left = 334
      Top = 80
      Width = 37
      Height = 13
      Caption = 'Nombre'
    end
    object Label5: TLabel
      Left = 334
      Top = 104
      Width = 38
      Height = 13
      Caption = 'Ordenar'
    end
    object Label6: TLabel
      Left = 3
      Top = 80
      Width = 30
      Height = 13
      Caption = 'Fecha'
    end
    object Label7: TLabel
      Left = 334
      Top = 56
      Width = 36
      Height = 13
      Caption = 'Usuario'
    end
    object SpeedButton3: TSpeedButton
      Left = 420
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
      OnClick = SpeedButton3Click
    end
    object Label1: TLabel
      Left = 3
      Top = 104
      Width = 39
      Height = 13
      Caption = '# Orden'
    end
    object Label8: TLabel
      Left = 3
      Top = 8
      Width = 41
      Height = 13
      Caption = 'Sucursal'
    end
    object edCliente: TEdit
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
      TabOrder = 5
      OnChange = edClienteChange
      OnKeyDown = edClienteKeyDown
    end
    object tCliente: TEdit
      Left = 117
      Top = 56
      Width = 212
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
      TabOrder = 10
    end
    object tVendedor: TEdit
      Left = 117
      Top = 32
      Width = 212
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
      TabOrder = 11
    end
    object edVendedor: TEdit
      Left = 56
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
      TabOrder = 1
      OnChange = edVendedorChange
      OnKeyDown = edVendedorKeyDown
    end
    object tCondi: TEdit
      Left = 444
      Top = 32
      Width = 133
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
      TabOrder = 12
    end
    object edCondi: TEdit
      Left = 384
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
      TabOrder = 6
      OnChange = edCondiChange
      OnKeyDown = edCondiKeyDown
    end
    object edNombre: TEdit
      Left = 384
      Top = 80
      Width = 193
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
      TabOrder = 8
    end
    object cbStatus: TRadioGroup
      Left = 581
      Top = 2
      Width = 105
      Height = 125
      Caption = 'Status'
      ItemIndex = 0
      Items.Strings = (
        'Todos'
        'Anulados'
        'Sin despachar'
        'Despachados')
      TabOrder = 13
      OnClick = cbStatusClick
    end
    object cbOrden: TComboBox
      Left = 384
      Top = 104
      Width = 193
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
      TabOrder = 9
      OnClick = cbOrdenClick
      Items.Strings = (
        'Numero'
        'Nombre'
        'Fecha')
    end
    object Fecha1: TDateTimePicker
      Left = 56
      Top = 80
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
      TabOrder = 2
    end
    object Fecha2: TDateTimePicker
      Left = 138
      Top = 80
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
      TabOrder = 3
    end
    object tUsuario: TEdit
      Left = 444
      Top = 56
      Width = 133
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
      TabOrder = 14
    end
    object edUsuario: TEdit
      Left = 384
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
      TabOrder = 7
      OnChange = edUsuarioChange
      OnKeyDown = edUsuarioKeyDown
    end
    object edOrden: TEdit
      Left = 56
      Top = 104
      Width = 161
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
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 56
      Top = 8
      Width = 273
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
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 376
    Width = 688
    Height = 40
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    DesignSize = (
      688
      40)
    object lbCantidad: TLabel
      Left = 8
      Top = 13
      Width = 57
      Height = 13
      Caption = '0 Pedidos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BitBtn2: TBitBtn
      Left = 520
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Imprimir'
      TabOrder = 0
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
      Left = 440
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Refrescar >>'
      TabOrder = 1
      OnClick = btRefreshClick
    end
    object btClose: TBitBtn
      Left = 600
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
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
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 129
    Width = 688
    Height = 128
    Align = alTop
    Anchors = [akLeft, akTop, akRight, akBottom]
    Color = clInfoBk
    Ctl3D = False
    DataSource = dsPedidos
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
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
        FieldName = 'PED_NUMERO'
        Title.Alignment = taCenter
        Title.Caption = 'N'#250'mero'
        Width = 50
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PED_FECHA'
        Title.Alignment = taCenter
        Title.Caption = 'Fecha'
        Width = 58
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'orden_cliente'
        Title.Alignment = taCenter
        Title.Caption = '# de Orden'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PED_NOMBRE'
        Title.Caption = 'Nombre del Cliente'
        Width = 202
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PED_DESCUENTO'
        Title.Alignment = taCenter
        Title.Caption = 'Descuento'
        Width = 67
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PED_ITBIS'
        Title.Alignment = taCenter
        Title.Caption = 'Itbis'
        Width = 62
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PED_TOTAL'
        Title.Alignment = taCenter
        Title.Caption = 'Total'
        Width = 73
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PED_STATUS'
        Title.Alignment = taCenter
        Title.Caption = 'Status'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_NOMBRE'
        Title.Caption = 'Usuario'
        Width = 102
        Visible = True
      end>
  end
  object Memo1: TMemo
    Left = 24
    Top = 168
    Width = 505
    Height = 41
    Lines.Strings = (
      'Memo1')
    TabOrder = 3
    Visible = False
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 263
    Width = 688
    Height = 113
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 4
    object TabSheet1: TTabSheet
      Caption = 'Detalle del Pedido'
      object Grid: TDBGrid
        Left = 0
        Top = 0
        Width = 680
        Height = 85
        Align = alClient
        Color = clInfoBk
        Ctl3D = False
        DataSource = deDetalle
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
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
            FieldName = 'DET_DESCRIPCION'
            Title.Caption = 'Descripci'#243'n del Producto'
            Width = 240
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DET_CANTIDAD'
            Title.Alignment = taCenter
            Title.Caption = 'Cant.'
            Width = 32
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'det_despachado'
            Title.Alignment = taCenter
            Title.Caption = 'Despachado'
            Width = 63
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DET_FACTURADO'
            Title.Alignment = taCenter
            Title.Caption = 'Facturado'
            Width = 55
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
            Expanded = False
            FieldName = 'DET_PRECIO'
            Title.Alignment = taCenter
            Title.Caption = 'Precio'
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DET_DESCUENTO'
            Title.Alignment = taCenter
            Title.Caption = '%Desc'
            Width = 45
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CalcItbis'
            Title.Alignment = taCenter
            Title.Caption = 'Itbis'
            Width = 84
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Valor'
            Title.Alignment = taCenter
            Width = 90
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Pagos realizados'
      ImageIndex = 1
      object DBGrid5: TDBGrid
        Left = 0
        Top = 0
        Width = 680
        Height = 85
        Align = alClient
        Color = clInfoBk
        Ctl3D = False
        DataSource = dsRecibos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgAlwaysShowSelection, dgCancelOnExit]
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
            FieldName = 'FPA_NOMBRE'
            Title.Caption = 'Forma de pago'
            Width = 219
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FOR_MONTO'
            Title.Alignment = taCenter
            Title.Caption = 'Monto'
            Width = 81
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FOR_DESCRIPCION'
            Title.Caption = 'Descripci'#243'n'
            Visible = True
          end>
      end
    end
  end
  object QPedidos: TADOQuery
    Connection = DM.ADOSigma
    AfterOpen = QPedidosAfterOpen
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
        Name = 'fecha1'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'fecha2'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'suc'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select '
      'p.CLI_CODIGO, p.CLI_REFERENCIA, p.CPA_CODIGO, p.EMP_CODIGO, '
      'p.PED_COTIZACION, p.PED_DESCUENTO, p.PED_DIRECCION, '
      'p.PED_FAX, p.PED_FECHA, p.PED_ITBIS, p.PED_LOCALIDAD, '
      'p.PED_NOMBRE, p.PED_NOTA, p.PED_NUMERO, p.PED_OTROS, '
      'p.PED_STATUS, p.PED_TELEFONO, p.PED_TIPO, p.PED_TOTAL, '
      'p.SUP_CODIGO, p.VEN_CODIGO, u.usu_nombre, p.orden_cliente,'
      'p.suc_codigo'
      'from PEDIDOS p, usuarios u'
      'where p.emp_codigo = :emp'
      'and p.ped_tipo = '#39'C'#39
      
        'and p.ped_fecha between convert(datetime,:fecha1,105) and conver' +
        't(datetime,:fecha2,105)'
      'and p.usu_codigo = u.usu_codigo'
      'and p.suc_codigo = :suc')
    Left = 312
    Top = 152
    object QPedidosCLI_CODIGO: TIntegerField
      FieldName = 'CLI_CODIGO'
      Origin = 'PEDIDOS.CLI_CODIGO'
    end
    object QPedidosCLI_REFERENCIA: TIBStringField
      FieldName = 'CLI_REFERENCIA'
      Origin = 'PEDIDOS.CLI_REFERENCIA'
      Size = 10
    end
    object QPedidosCPA_CODIGO: TIntegerField
      FieldName = 'CPA_CODIGO'
      Origin = 'PEDIDOS.CPA_CODIGO'
    end
    object QPedidosEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'PEDIDOS.EMP_CODIGO'
      Required = True
    end
    object QPedidosPED_DESCUENTO: TFloatField
      FieldName = 'PED_DESCUENTO'
      Origin = 'PEDIDOS.PED_DESCUENTO'
      currency = True
    end
    object QPedidosPED_DIRECCION: TIBStringField
      FieldName = 'PED_DIRECCION'
      Origin = 'PEDIDOS.PED_DIRECCION'
      Size = 60
    end
    object QPedidosPED_FAX: TIBStringField
      FieldName = 'PED_FAX'
      Origin = 'PEDIDOS.PED_FAX'
      Size = 13
    end
    object QPedidosPED_FECHA: TDateTimeField
      FieldName = 'PED_FECHA'
      Origin = 'PEDIDOS.PED_FECHA'
    end
    object QPedidosPED_ITBIS: TFloatField
      FieldName = 'PED_ITBIS'
      Origin = 'PEDIDOS.PED_ITBIS'
      currency = True
    end
    object QPedidosPED_LOCALIDAD: TIBStringField
      FieldName = 'PED_LOCALIDAD'
      Origin = 'PEDIDOS.PED_LOCALIDAD'
      Size = 60
    end
    object QPedidosPED_NOMBRE: TIBStringField
      FieldName = 'PED_NOMBRE'
      Origin = 'PEDIDOS.PED_NOMBRE'
      Size = 60
    end
    object QPedidosPED_NOTA: TMemoField
      FieldName = 'PED_NOTA'
      Origin = 'PEDIDOS.PED_NOTA'
      BlobType = ftMemo
    end
    object QPedidosPED_NUMERO: TIntegerField
      FieldName = 'PED_NUMERO'
      Origin = 'PEDIDOS.PED_NUMERO'
      Required = True
    end
    object QPedidosPED_OTROS: TFloatField
      FieldName = 'PED_OTROS'
      Origin = 'PEDIDOS.PED_OTROS'
      currency = True
    end
    object QPedidosPED_STATUS: TIBStringField
      FieldName = 'PED_STATUS'
      Origin = 'PEDIDOS.PED_STATUS'
      Size = 3
    end
    object QPedidosPED_TELEFONO: TIBStringField
      FieldName = 'PED_TELEFONO'
      Origin = 'PEDIDOS.PED_TELEFONO'
      Size = 13
    end
    object QPedidosPED_TIPO: TIBStringField
      FieldName = 'PED_TIPO'
      Origin = 'PEDIDOS.PED_TIPO'
      Required = True
      Size = 1
    end
    object QPedidosPED_TOTAL: TFloatField
      FieldName = 'PED_TOTAL'
      Origin = 'PEDIDOS.PED_TOTAL'
      currency = True
    end
    object QPedidosSUP_CODIGO: TIntegerField
      FieldName = 'SUP_CODIGO'
      Origin = 'PEDIDOS.SUP_CODIGO'
    end
    object QPedidosVEN_CODIGO: TIntegerField
      FieldName = 'VEN_CODIGO'
      Origin = 'PEDIDOS.VEN_CODIGO'
    end
    object QPedidosUSU_NOMBRE: TIBStringField
      FieldName = 'USU_NOMBRE'
      Origin = 'USUARIOS.USU_NOMBRE'
      Size = 60
    end
    object QPedidosorden_cliente: TStringField
      FieldName = 'orden_cliente'
      Size = 15
    end
    object QPedidossuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object QPedidosPED_COTIZACION: TStringField
      FieldName = 'PED_COTIZACION'
    end
  end
  object dsPedidos: TDataSource
    DataSet = QPedidos
    Left = 344
    Top = 152
  end
  object deDetalle: TDataSource
    DataSet = QDetalle
    Left = 344
    Top = 184
  end
  object Search: TQrySearchDlgADO
    AliasName = DM.ADOSigma
    Left = 312
    Top = 216
  end
  object QDetalle: TADOQuery
    Connection = DM.ADOSigma
    OnCalcFields = QDetalleCalcFields
    DataSource = dsPedidos
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
        Name = 'ped_tipo'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end
      item
        Name = 'ped_numero'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'suc_codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'EMP_CODIGO, PED_TIPO, PED_NUMERO, DET_SECUENCIA,'
      'PRO_CODIGO, PRO_RORIGINAL, PRO_RFABRIC, DET_DESCRIPCION,'
      'DET_CANTIDAD, DET_PRECIO, DET_CONITBIS, DET_ITBIS, '
      'DET_DESCUENTO, DET_FACTURADO, DET_STATUS, '
      'DET_MEDIDA, det_despachado, det_facturado'
      'from '
      'DET_PEDIDO'
      'where '
      'emp_codigo = :emp_codigo'
      'and ped_tipo = :ped_tipo'
      'and ped_numero = :ped_numero'
      'and suc_codigo = :suc_codigo')
    Left = 312
    Top = 184
    object QDetalleEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
    end
    object QDetallePED_TIPO: TIBStringField
      FieldName = 'PED_TIPO'
      Size = 1
    end
    object QDetallePED_NUMERO: TIntegerField
      FieldName = 'PED_NUMERO'
    end
    object QDetalleDET_SECUENCIA: TIntegerField
      FieldName = 'DET_SECUENCIA'
      DisplayFormat = '00'
    end
    object QDetallePRO_CODIGO: TIntegerField
      FieldName = 'PRO_CODIGO'
    end
    object QDetallePRO_RORIGINAL: TIBStringField
      FieldName = 'PRO_RORIGINAL'
      Size = 50
    end
    object QDetallePRO_RFABRIC: TIBStringField
      FieldName = 'PRO_RFABRIC'
      Size = 60
    end
    object QDetalleDET_DESCRIPCION: TIBStringField
      FieldName = 'DET_DESCRIPCION'
      Size = 60
    end
    object QDetalleDET_CANTIDAD: TFloatField
      FieldName = 'DET_CANTIDAD'
      currency = True
    end
    object QDetalleDET_PRECIO: TFloatField
      FieldName = 'DET_PRECIO'
      currency = True
    end
    object QDetalleDET_CONITBIS: TIBStringField
      FieldName = 'DET_CONITBIS'
      Size = 1
    end
    object QDetalleDET_ITBIS: TFloatField
      FieldName = 'DET_ITBIS'
      currency = True
    end
    object QDetalleDET_DESCUENTO: TFloatField
      FieldName = 'DET_DESCUENTO'
      currency = True
    end
    object QDetalleDET_FACTURADO: TFloatField
      FieldName = 'DET_FACTURADO'
    end
    object QDetalleDET_STATUS: TIBStringField
      FieldName = 'DET_STATUS'
      Size = 3
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
    object QDetalleValor: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Valor'
      currency = True
      Calculated = True
    end
    object QDetallePrecioItbis: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PrecioItbis'
      Calculated = True
    end
    object QDetalleDET_MEDIDA: TIBStringField
      FieldName = 'DET_MEDIDA'
      Origin = 'DET_PEDIDO.DET_MEDIDA'
      Size = 3
    end
    object QDetalledet_despachado: TBCDField
      FieldName = 'det_despachado'
      Precision = 15
      Size = 2
    end
  end
  object QRecibos: TADOQuery
    Connection = DM.ADOSigma
    DataSource = dsPedidos
    Parameters = <
      item
        Name = 'EMP_CODIGO'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'PED_NUMERO'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'SUC_CODIGO'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT'
      'F.FPA_NOMBRE, P.FOR_MONTO, P.FOR_DESCRIPCION'
      'FROM'
      'FORMASPAGO F, RECFORMAPAGO P, RECIBOS R'
      'WHERE'
      'F.EMP_CODIGO = P.EMP_CODIGO'
      'AND F.FPA_CODIGO = P.FPA_CODIGO'
      'AND P.EMP_CODIGO = R.EMP_CODIGO'
      'AND P.REC_NUMERO = R.REC_NUMERO'
      'AND P.SUC_CODIGO = R.SUC_CODIGO'
      'AND P.EMP_CODIGO = :EMP_CODIGO'
      'AND R.PED_NUMERO = :PED_NUMERO'
      'AND R.SUC_CODIGO = :SUC_CODIGO'
      'AND P.FOR_MONTO > 0'
      'ORDER BY'
      '1')
    Left = 392
    Top = 152
    object QRecibosFPA_NOMBRE: TStringField
      FieldName = 'FPA_NOMBRE'
      Size = 60
    end
    object QRecibosFOR_MONTO: TBCDField
      FieldName = 'FOR_MONTO'
      currency = True
      Precision = 15
      Size = 2
    end
    object QRecibosFOR_DESCRIPCION: TStringField
      FieldName = 'FOR_DESCRIPCION'
      Size = 60
    end
  end
  object dsRecibos: TDataSource
    DataSet = QRecibos
    Left = 424
    Top = 152
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
    Left = 392
    Top = 184
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
    Left = 424
    Top = 184
  end
end
