object frmConsDevCompra: TfrmConsDevCompra
  Left = 471
  Top = 191
  ActiveControl = Fecha1
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Devoluciones en compra'
  ClientHeight = 416
  ClientWidth = 697
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
  OnKeyPress = FormKeyPress
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 225
    Width = 697
    Height = 4
    Cursor = crVSplit
    Align = alTop
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 697
    Height = 81
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object Label6: TLabel
      Left = 11
      Top = 32
      Width = 30
      Height = 13
      Caption = 'Fecha'
    end
    object Label7: TLabel
      Left = 230
      Top = 32
      Width = 36
      Height = 13
      Caption = 'Usuario'
    end
    object SpeedButton3: TSpeedButton
      Left = 308
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
      OnClick = SpeedButton3Click
    end
    object Label2: TLabel
      Left = 11
      Top = 56
      Width = 49
      Height = 13
      Caption = 'Proveedor'
    end
    object btProveedor: TSpeedButton
      Left = 116
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
      OnClick = btProveedorClick
    end
    object Label8: TLabel
      Left = 11
      Top = 8
      Width = 41
      Height = 13
      Caption = 'Sucursal'
    end
    object Fecha1: TDateTimePicker
      Left = 64
      Top = 32
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
    object Fecha2: TDateTimePicker
      Left = 144
      Top = 32
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
    object tUsuario: TEdit
      Left = 332
      Top = 32
      Width = 197
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
      Left = 272
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
      TabOrder = 5
      OnChange = edUsuarioChange
      OnKeyDown = edUsuarioKeyDown
    end
    object edProveedor: TEdit
      Left = 64
      Top = 56
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
      TabOrder = 3
      OnChange = edProveedorChange
      OnKeyDown = edProveedorKeyDown
    end
    object tProveedor: TEdit
      Left = 144
      Top = 56
      Width = 385
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
      TabOrder = 4
    end
    object cbStatus: TRadioGroup
      Left = 540
      Top = 2
      Width = 155
      Height = 77
      Caption = 'Status'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Todas'
        'Anuladas')
      TabOrder = 7
      OnClick = btRefreshClick
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 64
      Top = 8
      Width = 465
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
    Width = 697
    Height = 40
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    DesignSize = (
      697
      40)
    object lbCantidad: TLabel
      Left = 8
      Top = 13
      Width = 85
      Height = 13
      Caption = '0 Devoluciones'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BitBtn2: TBitBtn
      Left = 528
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
      Left = 448
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Refrescar >>'
      TabOrder = 1
      OnClick = btRefreshClick
    end
    object btClose: TBitBtn
      Left = 608
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
    object ckDetalle: TCheckBox
      Left = 192
      Top = 13
      Width = 249
      Height = 17
      Anchors = [akTop, akRight]
      Caption = 'Imprimir detalle de la Devoluci'#243'n'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 81
    Width = 697
    Height = 144
    Align = alTop
    Anchors = [akLeft, akTop, akRight, akBottom]
    Color = clInfoBk
    Ctl3D = False
    DataSource = dsDevol
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
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
        FieldName = 'DEV_NUMERO'
        Title.Alignment = taCenter
        Title.Caption = '# Devoluci'#243'n'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DEV_FECHA'
        Title.Alignment = taCenter
        Title.Caption = 'Fecha'
        Width = 70
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'dev_ncf'
        Title.Alignment = taCenter
        Title.Caption = 'NCF'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'dev_ncf_modifica'
        Title.Alignment = taCenter
        Title.Caption = 'NCF Modifica'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DEV_NOMBRE'
        Title.Caption = 'Nombre del Proveedor'
        Width = 192
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'FAC_NUMERO'
        Title.Alignment = taCenter
        Title.Caption = 'Factura'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DEV_EXCENTO'
        Title.Alignment = taCenter
        Title.Caption = 'Excento'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DEV_GRABADO'
        Title.Alignment = taCenter
        Title.Caption = 'Grabado'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DEV_ITBIS'
        Title.Alignment = taCenter
        Title.Caption = 'Itbis'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DEV_TOTAL'
        Title.Alignment = taCenter
        Title.Caption = 'Total'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DEV_STATUS'
        Title.Alignment = taCenter
        Title.Caption = 'St.'
        Visible = True
      end>
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 229
    Width = 697
    Height = 147
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 3
    object TabSheet2: TTabSheet
      Caption = 'Productos'
      ImageIndex = 1
      object Grid: TDBGrid
        Left = 0
        Top = 0
        Width = 689
        Height = 119
        Align = alClient
        Ctl3D = False
        DataSource = dsProductos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Color = clInfoBk
            Expanded = False
            FieldName = 'PRO_NOMBRE'
            Title.Caption = 'Nombre del Producto'
            Width = 243
            Visible = True
          end
          item
            Color = clInfoBk
            Expanded = False
            FieldName = 'DEV_CANTIDAD'
            Title.Alignment = taCenter
            Title.Caption = 'Cant.'
            Width = 32
            Visible = True
          end
          item
            Alignment = taCenter
            Color = clInfoBk
            Expanded = False
            FieldName = 'DET_MEDIDA'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Medida'
            Width = 46
            Visible = True
          end
          item
            Color = clInfoBk
            Expanded = False
            FieldName = 'DEV_COSTO'
            Title.Alignment = taCenter
            Title.Caption = 'Costo'
            Width = 57
            Visible = True
          end
          item
            Alignment = taCenter
            Color = clInfoBk
            Expanded = False
            FieldName = 'DEV_CONITBIS'
            Title.Caption = 'Itbis?'
            Visible = True
          end
          item
            Color = clInfoBk
            Expanded = False
            FieldName = 'PrecioItbis'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Antes Itbis'
            Width = 54
            Visible = True
          end
          item
            Color = clInfoBk
            Expanded = False
            FieldName = 'CalcItbis'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Itbis'
            Width = 52
            Visible = True
          end
          item
            Alignment = taCenter
            Color = clInfoBk
            Expanded = False
            FieldName = 'DET_FECHAVENCE'
            Title.Alignment = taCenter
            Title.Caption = 'Vence'
            Width = 54
            Visible = True
          end
          item
            Color = clInfoBk
            Expanded = False
            FieldName = 'Valor'
            ReadOnly = True
            Title.Alignment = taCenter
            Width = 68
            Visible = True
          end>
      end
    end
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
        Left = 527
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
        Left = 527
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
        Height = 119
        Align = alLeft
        Ctl3D = False
        DataSource = dsDetalle
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
            FieldName = 'CAT_CUENTA'
            Title.Alignment = taCenter
            Title.Caption = 'Cuenta'
            Width = 88
            Visible = True
          end
          item
            Color = clInfoBk
            Expanded = False
            FieldName = 'CAT_NOMBRE'
            ReadOnly = True
            Title.Caption = 'Nombre de la Cuenta'
            Width = 282
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DET_ORIGEN'
            Title.Alignment = taCenter
            Title.Caption = 'Origen'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DET_MONTO'
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
  object Memo1: TMemo
    Left = 8
    Top = 136
    Width = 505
    Height = 73
    Lines.Strings = (
      'Memo1')
    TabOrder = 4
    Visible = False
  end
  object Search: TQrySearchDlgADO
    AliasName = DM.ADOSigma
    Left = 136
    Top = 104
  end
  object QDevol: TADOQuery
    Connection = DM.ADOSigma
    AfterOpen = QDevolAfterOpen
    AfterScroll = QDevolAfterScroll
    DataSource = dsSuc
    Parameters = <
      item
        Name = 'EMP_codigo'
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
      end
      item
        Name = 'FECHA1'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'FECHA2'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      'SELECT'
      'DEV_EXCENTO, DEV_FECHA, DEV_GRABADO, DEV_ITBIS,'
      'DEV_NOMBRE, DEV_NUMERO, DEV_STATUS, DEV_TOTAL,'
      'EMP_CODIGO, FAC_NUMERO, SUP_CODIGO, USU_CODIGO,'
      'SUC_CODIGO, dev_ncf, dev_ncf_modifica'
      'FROM'
      'DEVOLUCIONCOMPRA'
      'WHERE'
      'EMP_CODIGO = :EMP_codigo'
      'and suc_codigo = :suc_codigo'
      
        'AND DEV_FECHA BETWEEN convert(datetime,:FECHA1,105) AND convert(' +
        'datetime,:FECHA2,105)')
    Left = 240
    Top = 104
    object QDevolDEV_EXCENTO: TFloatField
      FieldName = 'DEV_EXCENTO'
      Origin = 'DEVOLUCIONCOMPRA.DEV_EXCENTO'
      currency = True
    end
    object QDevolDEV_FECHA: TDateTimeField
      FieldName = 'DEV_FECHA'
      Origin = 'DEVOLUCIONCOMPRA.DEV_FECHA'
    end
    object QDevolDEV_GRABADO: TFloatField
      FieldName = 'DEV_GRABADO'
      Origin = 'DEVOLUCIONCOMPRA.DEV_GRABADO'
      currency = True
    end
    object QDevolDEV_ITBIS: TFloatField
      FieldName = 'DEV_ITBIS'
      Origin = 'DEVOLUCIONCOMPRA.DEV_ITBIS'
      currency = True
    end
    object QDevolDEV_NOMBRE: TIBStringField
      FieldName = 'DEV_NOMBRE'
      Origin = 'DEVOLUCIONCOMPRA.DEV_NOMBRE'
      Size = 60
    end
    object QDevolDEV_NUMERO: TIntegerField
      FieldName = 'DEV_NUMERO'
      Origin = 'DEVOLUCIONCOMPRA.DEV_NUMERO'
      Required = True
      DisplayFormat = '00000'
    end
    object QDevolDEV_STATUS: TIBStringField
      FieldName = 'DEV_STATUS'
      Origin = 'DEVOLUCIONCOMPRA.DEV_STATUS'
      Size = 3
    end
    object QDevolDEV_TOTAL: TFloatField
      FieldName = 'DEV_TOTAL'
      Origin = 'DEVOLUCIONCOMPRA.DEV_TOTAL'
      currency = True
    end
    object QDevolEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'DEVOLUCIONCOMPRA.EMP_CODIGO'
      Required = True
    end
    object QDevolFAC_NUMERO: TIBStringField
      FieldName = 'FAC_NUMERO'
      Origin = 'DEVOLUCIONCOMPRA.FAC_NUMERO'
      Size = 15
    end
    object QDevolSUP_CODIGO: TIntegerField
      FieldName = 'SUP_CODIGO'
      Origin = 'DEVOLUCIONCOMPRA.SUP_CODIGO'
    end
    object QDevolUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
      Origin = 'DEVOLUCIONCOMPRA.USU_CODIGO'
    end
    object QDevolSUC_CODIGO: TIntegerField
      FieldName = 'SUC_CODIGO'
    end
    object QDevoldev_ncf: TStringField
      FieldName = 'dev_ncf'
    end
    object QDevoldev_ncf_modifica: TStringField
      FieldName = 'dev_ncf_modifica'
    end
  end
  object dsDevol: TDataSource
    DataSet = QDevol
    Left = 272
    Top = 104
  end
  object QProductos: TADOQuery
    Connection = DM.ADOSigma
    OnCalcFields = QProductosCalcFields
    DataSource = dsDevol
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
        Name = 'DEV_NUMERO'
        Attributes = [paSigned]
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
      'DEP_CODIGO, DET_COSTOEMP, DET_COSTOITBIS,'
      'DET_COSTOUND, DET_FECHAVENCE, DET_MEDIDA,'
      'DET_SECUENCIA, DEV_CANTFACTURADA, DEV_CANTIDAD,'
      'DEV_CONITBIS, DEV_COSTO, DEV_ITBIS, DEV_NUMERO,'
      'DEV_TOPECANTIDAD, EMP_CODIGO, FAM_CODIGO, MAR_CODIGO,'
      'PRO_CODIGO, PRO_NOMBRE, PRO_RFABRIC, PRO_RORIGINAL,'
      'PRO_SERVICIO'
      'FROM '
      'DET_DEVOLUCIONCOMPRA'
      'WHERE '
      'EMP_CODIGO = :EMP_CODIGO'
      'AND DEV_NUMERO = :DEV_NUMERO'
      'AND SUC_CODIGO = :SUC_CODIGO'
      'ORDER BY'
      'DET_SECUENCIA')
    Left = 240
    Top = 136
    object QProductosDEP_CODIGO: TIntegerField
      FieldName = 'DEP_CODIGO'
      Origin = 'DET_DEVOLUCIONCOMPRA.DEP_CODIGO'
    end
    object QProductosDET_COSTOEMP: TFloatField
      FieldName = 'DET_COSTOEMP'
      Origin = 'DET_DEVOLUCIONCOMPRA.DET_COSTOEMP'
    end
    object QProductosDET_COSTOITBIS: TFloatField
      FieldName = 'DET_COSTOITBIS'
      Origin = 'DET_DEVOLUCIONCOMPRA.DET_COSTOITBIS'
    end
    object QProductosDET_COSTOUND: TFloatField
      FieldName = 'DET_COSTOUND'
      Origin = 'DET_DEVOLUCIONCOMPRA.DET_COSTOUND'
    end
    object QProductosDET_FECHAVENCE: TDateTimeField
      FieldName = 'DET_FECHAVENCE'
      Origin = 'DET_DEVOLUCIONCOMPRA.DET_FECHAVENCE'
    end
    object QProductosDET_MEDIDA: TIBStringField
      FieldName = 'DET_MEDIDA'
      Origin = 'DET_DEVOLUCIONCOMPRA.DET_MEDIDA'
      Size = 3
    end
    object QProductosDET_SECUENCIA: TIntegerField
      FieldName = 'DET_SECUENCIA'
      Origin = 'DET_DEVOLUCIONCOMPRA.DET_SECUENCIA'
      Required = True
    end
    object QProductosDEV_CANTFACTURADA: TFloatField
      FieldName = 'DEV_CANTFACTURADA'
      Origin = 'DET_DEVOLUCIONCOMPRA.DEV_CANTFACTURADA'
    end
    object QProductosDEV_CANTIDAD: TFloatField
      FieldName = 'DEV_CANTIDAD'
      Origin = 'DET_DEVOLUCIONCOMPRA.DEV_CANTIDAD'
    end
    object QProductosDEV_CONITBIS: TIBStringField
      FieldName = 'DEV_CONITBIS'
      Origin = 'DET_DEVOLUCIONCOMPRA.DEV_CONITBIS'
      Size = 1
    end
    object QProductosDEV_COSTO: TFloatField
      FieldName = 'DEV_COSTO'
      Origin = 'DET_DEVOLUCIONCOMPRA.DEV_COSTO'
      currency = True
    end
    object QProductosDEV_ITBIS: TFloatField
      FieldName = 'DEV_ITBIS'
      Origin = 'DET_DEVOLUCIONCOMPRA.DEV_ITBIS'
    end
    object QProductosDEV_NUMERO: TIntegerField
      FieldName = 'DEV_NUMERO'
      Origin = 'DET_DEVOLUCIONCOMPRA.DEV_NUMERO'
      Required = True
    end
    object QProductosDEV_TOPECANTIDAD: TFloatField
      FieldName = 'DEV_TOPECANTIDAD'
      Origin = 'DET_DEVOLUCIONCOMPRA.DEV_TOPECANTIDAD'
    end
    object QProductosEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'DET_DEVOLUCIONCOMPRA.EMP_CODIGO'
      Required = True
    end
    object QProductosValor: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Valor'
      currency = True
      Calculated = True
    end
    object QProductosPrecioItbis: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PrecioItbis'
      Calculated = True
    end
    object QProductosCalcItbis: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CalcItbis'
      currency = True
      Calculated = True
    end
    object QProductosCalcDesc: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CalcDesc'
      Calculated = True
    end
    object QProductosFAM_CODIGO: TIntegerField
      FieldName = 'FAM_CODIGO'
      Origin = 'DET_DEVOLUCIONCOMPRA.FAM_CODIGO'
    end
    object QProductosMAR_CODIGO: TIntegerField
      FieldName = 'MAR_CODIGO'
      Origin = 'DET_DEVOLUCIONCOMPRA.MAR_CODIGO'
    end
    object QProductosPRO_CODIGO: TIntegerField
      FieldName = 'PRO_CODIGO'
      Origin = 'DET_DEVOLUCIONCOMPRA.PRO_CODIGO'
    end
    object QProductosPRO_NOMBRE: TIBStringField
      FieldName = 'PRO_NOMBRE'
      Origin = 'DET_DEVOLUCIONCOMPRA.PRO_NOMBRE'
      Size = 60
    end
    object QProductosPRO_RFABRIC: TIBStringField
      FieldName = 'PRO_RFABRIC'
      Origin = 'DET_DEVOLUCIONCOMPRA.PRO_RFABRIC'
      Size = 60
    end
    object QProductosPRO_RORIGINAL: TIBStringField
      FieldName = 'PRO_RORIGINAL'
      Origin = 'DET_DEVOLUCIONCOMPRA.PRO_RORIGINAL'
      Size = 50
    end
    object QProductosPRO_SERVICIO: TIBStringField
      FieldName = 'PRO_SERVICIO'
      Origin = 'DET_DEVOLUCIONCOMPRA.PRO_SERVICIO'
      Size = 5
    end
  end
  object dsProductos: TDataSource
    DataSet = QProductos
    Left = 272
    Top = 136
  end
  object QDetalle: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    AfterInsert = QDetalleAfterInsert
    AfterEdit = QDetalleAfterEdit
    BeforePost = QDetalleBeforePost
    AfterPost = QDetalleAfterPost
    BeforeDelete = QDetalleBeforeDelete
    AfterDelete = QDetalleAfterDelete
    OnNewRecord = QDetalleNewRecord
    DataSource = dsDevol
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
        Name = 'DEV_NUMERO'
        Attributes = [paSigned]
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
      'CAT_CUENTA, CAT_NOMBRE, DET_MONTO, DET_ORIGEN, '
      'DET_SECUENCIA, EMP_CODIGO, DEV_NUMERO, SUC_CODIGO'
      'FROM'
      'CONTDET_DEVCOMPRA'
      'WHERE'
      'EMP_CODIGO = :EMP_CODIGO'
      'AND DEV_NUMERO = :DEV_NUMERO'
      'AND SUC_CODIGO = :SUC_CODIGO'
      'ORDER BY'
      'DET_SECUENCIA')
    Left = 240
    Top = 168
    object QDetalleCAT_CUENTA: TIBStringField
      FieldName = 'CAT_CUENTA'
      Origin = 'CONTDET_PROVFACTURAS.CAT_CUENTA'
      OnChange = QDetalleCAT_CUENTAChange
      Size = 15
    end
    object QDetalleCAT_NOMBRE: TIBStringField
      FieldName = 'CAT_NOMBRE'
      Origin = 'CONTDET_PROVFACTURAS.CAT_NOMBRE'
      Size = 60
    end
    object QDetalleDET_MONTO: TFloatField
      FieldName = 'DET_MONTO'
      Origin = 'CONTDET_PROVFACTURAS.DET_MONTO'
      currency = True
    end
    object QDetalleDET_ORIGEN: TIBStringField
      FieldName = 'DET_ORIGEN'
      Origin = 'CONTDET_PROVFACTURAS.DET_ORIGEN'
      Size = 7
    end
    object QDetalleDET_SECUENCIA: TIntegerField
      FieldName = 'DET_SECUENCIA'
      Origin = 'CONTDET_PROVFACTURAS.DET_SECUENCIA'
    end
    object QDetalleEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'CONTDET_PROVFACTURAS.EMP_CODIGO'
    end
    object QDetalleDEV_NUMERO: TIntegerField
      FieldName = 'DEV_NUMERO'
      Origin = 'CONTDET_DEVCOMPRA.DEV_NUMERO'
    end
    object QDetalleSUC_CODIGO: TIntegerField
      FieldName = 'SUC_CODIGO'
    end
  end
  object dsDetalle: TDataSource
    DataSet = QDetalle
    Left = 272
    Top = 168
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
    Left = 240
    Top = 200
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
    Left = 272
    Top = 200
  end
end
