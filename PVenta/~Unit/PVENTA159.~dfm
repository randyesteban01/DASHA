object frmConsNCProveedores: TfrmConsNCProveedores
  Left = 204
  Top = 136
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Consulta de notas de cr'#233'dito a proveedores'
  ClientHeight = 413
  ClientWidth = 697
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
    Height = 105
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object Label2: TLabel
      Left = 5
      Top = 32
      Width = 50
      Height = 13
      Caption = 'Proveedor'
    end
    object SpeedButton2: TSpeedButton
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
      OnClick = SpeedButton2Click
    end
    object Label5: TLabel
      Left = 240
      Top = 80
      Width = 59
      Height = 13
      Caption = 'Ordenar por'
    end
    object Label6: TLabel
      Left = 5
      Top = 80
      Width = 29
      Height = 13
      Caption = 'Fecha'
    end
    object Label7: TLabel
      Left = 5
      Top = 56
      Width = 36
      Height = 13
      Caption = 'Usuario'
    end
    object SpeedButton3: TSpeedButton
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
      OnClick = SpeedButton3Click
    end
    object Label14: TLabel
      Left = 5
      Top = 8
      Width = 40
      Height = 13
      Caption = 'Sucursal'
    end
    object edProveedor: TEdit
      Left = 64
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
      OnChange = edProveedorChange
      OnKeyDown = edProveedorKeyDown
    end
    object tProveedor: TEdit
      Left = 128
      Top = 32
      Width = 473
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
    object cbStatus: TRadioGroup
      Left = 611
      Top = 2
      Width = 84
      Height = 101
      Caption = 'Status'
      ItemIndex = 0
      Items.Strings = (
        'Todas'
        'Anuladas'
        'Emitidas')
      TabOrder = 7
    end
    object cbOrden: TComboBox
      Left = 304
      Top = 80
      Width = 297
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
      TabOrder = 5
      Items.Strings = (
        'Numero'
        'Fecha')
    end
    object Fecha1: TDateTimePicker
      Left = 64
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
    object Fecha2: TDateTimePicker
      Left = 144
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
      TabOrder = 4
    end
    object tUsuario: TEdit
      Left = 128
      Top = 56
      Width = 473
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
    object edUsuario: TEdit
      Left = 64
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
      TabOrder = 2
      OnChange = edUsuarioChange
      OnKeyDown = edUsuarioKeyDown
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 64
      Top = 8
      Width = 537
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
    Top = 373
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
      Width = 106
      Height = 13
      Caption = '0 Notas de cr'#233'dito'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
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
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 105
    Width = 697
    Height = 120
    Align = alTop
    Anchors = [akLeft, akTop, akRight, akBottom]
    Color = clInfoBk
    Ctl3D = False
    DataSource = dsNota
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
    TabOrder = 2
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ncr_numero'
        Title.Alignment = taCenter
        Title.Caption = 'N'#250'mero'
        Width = 67
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ncr_fecha'
        Title.Alignment = taCenter
        Title.Caption = 'Fecha'
        Width = 82
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fac_numero'
        Title.Alignment = taCenter
        Title.Caption = '# Factura'
        Width = 87
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ncr_ncf'
        Title.Alignment = taCenter
        Title.Caption = 'NCF'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ncr_ncf_modifica'
        Title.Alignment = taCenter
        Title.Caption = 'NCF Modifica'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sup_nombre'
        Title.Caption = 'Nombre Proveedor'
        Width = 203
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ncr_concepto'
        Title.Caption = 'Concepto'
        Width = 134
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ncr_monto'
        Title.Alignment = taCenter
        Title.Caption = 'Monto'
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ncr_grabado'
        Title.Alignment = taCenter
        Title.Caption = 'Grabado'
        Width = 78
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ncr_exento'
        Title.Alignment = taCenter
        Title.Caption = 'Exento'
        Width = 81
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ncr_itbis'
        Title.Alignment = taCenter
        Title.Caption = 'Itbis'
        Width = 83
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ncr_Status'
        Title.Alignment = taCenter
        Title.Caption = 'St.'
        Visible = True
      end>
  end
  object Memo1: TMemo
    Left = 8
    Top = 136
    Width = 537
    Height = 49
    Lines.Strings = (
      'Memo1')
    TabOrder = 3
    Visible = False
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 229
    Width = 697
    Height = 144
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 4
    object TabSheet1: TTabSheet
      Caption = 'Cuentas contables'
      DesignSize = (
        689
        116)
      object Label9: TLabel
        Left = 527
        Top = 3
        Width = 48
        Height = 13
        Anchors = [akTop, akRight]
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
        Top = 19
        Width = 43
        Height = 13
        Anchors = [akTop, akRight]
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
        Top = 35
        Width = 45
        Height = 13
        Anchors = [akTop, akRight]
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
        Top = 82
        Width = 153
        Height = 25
        Anchors = [akTop, akRight]
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
        Top = 57
        Width = 153
        Height = 25
        Anchors = [akTop, akRight]
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
        Height = 116
        Align = alLeft
        Anchors = [akLeft, akTop, akRight, akBottom]
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
        Top = 3
        Width = 103
        Height = 17
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
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
        Top = 19
        Width = 103
        Height = 17
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
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
        Top = 35
        Width = 103
        Height = 17
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
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
    Left = 248
    Top = 152
    object QSucursalsuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object QSucursalsuc_nombre: TStringField
      FieldName = 'suc_nombre'
      Size = 60
    end
    object QSucursalemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QSucursalalm_codigo: TIntegerField
      FieldName = 'alm_codigo'
    end
  end
  object dsSuc: TDataSource
    DataSet = QSucursal
    Left = 280
    Top = 152
  end
  object QNotas: TADOQuery
    Connection = DM.ADOSigma
    AfterOpen = QNotasAfterOpen
    AfterScroll = QNotasAfterScroll
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
      'select'
      
        'n.emp_codigo,n.suc_codigo,n.ncr_numero,n.ncr_fecha,n.ncr_concept' +
        'o,n.ncr_monto,n.ncr_status,'
      
        'n.ncr_montousado,n.ncr_devolucion,n.sup_codigo,n.fac_numero,n.us' +
        'u_codigo,n.ncr_usuario_anulo,'
      'n.ncr_motivo_anulo, p.sup_nombre,'
      
        'n.ncr_ncf, n.ncr_ncf_modifica, n.ncr_itbis, n.ncr_grabado, n.ncr' +
        '_exento,'
      'f.fac_total as total_factura'
      'from'
      'notascreditocompra n'
      
        'left outer join provfacturas f on (n.emp_codigo = f.emp_codigo a' +
        'nd n.fac_numero = f.fac_numero'
      'and n.sup_codigo = f.sup_codigo), usuarios u, proveedores p'
      'where'
      'n.usu_codigo = u.usu_codigo'
      'and n.emp_codigo = :emp'
      'and n.sup_codigo = p.sup_Codigo'
      'and n.emp_codigo = p.emp_codigo'
      
        'and n.ncr_fecha between convert(datetime,:fec1,105) and convert(' +
        'datetime,:fec2,105)'
      'and n.suc_codigo = :suc'
      '')
    Left = 248
    Top = 184
    object QNotasncr_numero: TIntegerField
      FieldName = 'ncr_numero'
    end
    object QNotasncr_fecha: TDateTimeField
      FieldName = 'ncr_fecha'
    end
    object QNotasncr_concepto: TStringField
      FieldName = 'ncr_concepto'
      Size = 60
    end
    object QNotasncr_monto: TBCDField
      FieldName = 'ncr_monto'
      currency = True
      Precision = 15
      Size = 2
    end
    object QNotasncr_Status: TStringField
      FieldName = 'ncr_Status'
      Size = 3
    end
    object QNotasfac_numero: TStringField
      FieldName = 'fac_numero'
      Size = 15
    end
    object QNotassup_nombre: TStringField
      FieldName = 'sup_nombre'
      Size = 60
    end
    object QNotasemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QNotassuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object QNotasncr_montousado: TBCDField
      FieldName = 'ncr_montousado'
      Precision = 15
      Size = 2
    end
    object QNotasncr_devolucion: TIntegerField
      FieldName = 'ncr_devolucion'
    end
    object QNotassup_codigo: TIntegerField
      FieldName = 'sup_codigo'
    end
    object QNotasusu_codigo: TIntegerField
      FieldName = 'usu_codigo'
    end
    object QNotasncr_usuario_anulo: TStringField
      FieldName = 'ncr_usuario_anulo'
      Size = 60
    end
    object QNotasncr_motivo_anulo: TStringField
      FieldName = 'ncr_motivo_anulo'
      Size = 100
    end
    object QNotasncr_ncf: TStringField
      FieldName = 'ncr_ncf'
    end
    object QNotasncr_ncf_modifica: TStringField
      FieldName = 'ncr_ncf_modifica'
    end
    object QNotasncr_itbis: TBCDField
      FieldName = 'ncr_itbis'
      currency = True
      Precision = 18
      Size = 2
    end
    object QNotasncr_grabado: TBCDField
      FieldName = 'ncr_grabado'
      currency = True
      Precision = 18
      Size = 2
    end
    object QNotasncr_exento: TBCDField
      FieldName = 'ncr_exento'
      currency = True
      Precision = 18
      Size = 2
    end
    object QNotastotal_factura: TBCDField
      FieldName = 'total_factura'
      currency = True
      Precision = 15
      Size = 2
    end
  end
  object dsNota: TDataSource
    DataSet = QNotas
    Left = 280
    Top = 184
  end
  object Search: TQrySearchDlgADO
    AliasName = DM.ADOSigma
    Left = 248
    Top = 216
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
    DataSource = dsNota
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
        Name = 'NCR_NUMERO'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT'
      'CAT_CUENTA, CAT_NOMBRE, NCR_NUMERO, DET_MONTO, '
      'DET_ORIGEN, DET_SECUENCIA, EMP_CODIGO, '
      'SUC_CODIGO'
      'FROM'
      'CONTDET_NOTACREDITOCOMPRA'
      'WHERE '
      'EMP_CODIGO = :EMP_CODIGO'
      'AND NCR_NUMERO = :NCR_NUMERO'
      'ORDER BY'
      'DET_SECUENCIA')
    Left = 328
    Top = 304
    object QDetalleCAT_CUENTA: TIBStringField
      FieldName = 'CAT_CUENTA'
      Origin = 'CONTDET_NOTACREDITO.CAT_CUENTA'
      OnChange = QDetalleCAT_CUENTAChange
      Size = 15
    end
    object QDetalleCAT_NOMBRE: TIBStringField
      FieldName = 'CAT_NOMBRE'
      Origin = 'CONTDET_NOTACREDITO.CAT_NOMBRE'
      Size = 60
    end
    object QDetalleNCR_NUMERO: TIntegerField
      FieldName = 'NCR_NUMERO'
      Origin = 'CONTDET_NOTACREDITO.NCR_NUMERO'
    end
    object QDetalleDET_MONTO: TFloatField
      FieldName = 'DET_MONTO'
      Origin = 'CONTDET_NOTACREDITO.DET_MONTO'
      currency = True
    end
    object QDetalleDET_ORIGEN: TIBStringField
      FieldName = 'DET_ORIGEN'
      Origin = 'CONTDET_NOTACREDITO.DET_ORIGEN'
      Size = 7
    end
    object QDetalleDET_SECUENCIA: TIntegerField
      FieldName = 'DET_SECUENCIA'
      Origin = 'CONTDET_NOTACREDITO.DET_SECUENCIA'
    end
    object QDetalleEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'CONTDET_NOTACREDITO.EMP_CODIGO'
    end
    object QDetalleSUC_CODIGO: TIntegerField
      FieldName = 'SUC_CODIGO'
    end
  end
  object dsDetalle: TDataSource
    DataSet = QDetalle
    Left = 360
    Top = 304
  end
  object PopupMenu1: TPopupMenu
    Left = 500
    Top = 161
    object CambiarNCF1: TMenuItem
      Caption = 'Cambiar NCF'
      OnClick = CambiarNCF1Click
    end
    object CambiarNCFModifica1: TMenuItem
      Caption = 'Cambiar NCF Modifica'
      OnClick = CambiarNCFModifica1Click
    end
  end
end
