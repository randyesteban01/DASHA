object frmConsCargosBanco: TfrmConsCargosBanco
  Left = 369
  Top = 241
  ActiveControl = DBGrid1
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Consulta General de Cargos Bancarios'
  ClientHeight = 541
  ClientWidth = 1497
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Splitter1: TSplitter
    Left = 0
    Top = 375
    Width = 1497
    Height = 4
    Cursor = crVSplit
    Align = alTop
  end
  object Panel1: TPanel
    Left = 0
    Top = 495
    Width = 1497
    Height = 46
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    DesignSize = (
      1497
      46)
    object lbCantidad: TLabel
      Left = 9
      Top = 16
      Width = 67
      Height = 15
      Caption = '0 Dep'#243'sitos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btClose: TBitBtn
      Left = 1409
      Top = 9
      Width = 80
      Height = 27
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
      Left = 1279
      Top = 9
      Width = 124
      Height = 27
      Anchors = [akTop, akRight]
      Caption = 'Imprimir el Listado'
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
      Left = 1064
      Top = 9
      Width = 81
      Height = 27
      Anchors = [akTop, akRight]
      Caption = 'Refrescar >>'
      TabOrder = 2
      OnClick = btRefreshClick
    end
    object ckDetalle: TCheckBox
      Left = 207
      Top = 14
      Width = 216
      Height = 18
      Caption = 'Imprimir detalle del Cargo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object btnReimpresion: TBitBtn
      Left = 1150
      Top = 9
      Width = 124
      Height = 27
      Anchors = [akTop, akRight]
      Caption = 'ReImpresion Cargo'
      TabOrder = 4
      OnClick = btnReimpresionClick
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
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1497
    Height = 195
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object Label6: TLabel
      Left = 11
      Top = 34
      Width = 30
      Height = 14
      Caption = 'Fecha'
    end
    object Label7: TLabel
      Left = 337
      Top = 60
      Width = 37
      Height = 14
      Caption = 'Usuario'
    end
    object btUsu: TSpeedButton
      Left = 418
      Top = 60
      Width = 25
      Height = 24
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
      OnClick = btUsuClick
    end
    object Label2: TLabel
      Left = 11
      Top = 112
      Width = 32
      Height = 14
      Caption = 'Cliente'
    end
    object btCliente: TSpeedButton
      Left = 125
      Top = 112
      Width = 25
      Height = 24
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
      OnClick = btClienteClick
    end
    object Label5: TLabel
      Left = 337
      Top = 86
      Width = 40
      Height = 14
      Caption = 'Ordenar'
    end
    object Label4: TLabel
      Left = 11
      Top = 86
      Width = 46
      Height = 14
      Caption = 'Concepto'
    end
    object btAnula: TSpeedButton
      Left = 250
      Top = 34
      Width = 78
      Height = 24
      AllowAllUp = True
      GroupIndex = 1
      Caption = 'Anulados'
      OnClick = btRefreshClick
    end
    object btTransito: TSpeedButton
      Left = 336
      Top = 34
      Width = 79
      Height = 24
      AllowAllUp = True
      GroupIndex = 1
      Caption = 'En Transito'
      OnClick = btRefreshClick
    end
    object btPagados: TSpeedButton
      Left = 422
      Top = 34
      Width = 79
      Height = 24
      AllowAllUp = True
      GroupIndex = 1
      Caption = 'Aplicados'
      OnClick = btRefreshClick
    end
    object Label3: TLabel
      Left = 11
      Top = 60
      Width = 31
      Height = 14
      Caption = 'Banco'
    end
    object btBanco: TSpeedButton
      Left = 125
      Top = 60
      Width = 25
      Height = 24
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
      OnClick = btBancoClick
    end
    object Label14: TLabel
      Left = 11
      Top = 9
      Width = 43
      Height = 14
      Caption = 'Sucursal'
    end
    object Label1: TLabel
      Left = 11
      Top = 138
      Width = 50
      Height = 14
      Caption = 'Proveedor'
    end
    object btProveedor: TSpeedButton
      Left = 125
      Top = 138
      Width = 25
      Height = 24
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
    object lbLocSuc: TLabel
      Left = 17
      Top = 167
      Width = 46
      Height = 14
      Caption = 'Localidad'
    end
    object btLocalidad: TSpeedButton
      Left = 125
      Top = 163
      Width = 25
      Height = 23
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
      OnClick = btLocalidadClick
    end
    object Fecha1: TDateTimePicker
      Left = 69
      Top = 34
      Width = 85
      Height = 22
      Date = 37506.000000000000000000
      Time = 37506.000000000000000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object Fecha2: TDateTimePicker
      Left = 155
      Top = 34
      Width = 85
      Height = 22
      Date = 37506.000000000000000000
      Time = 37506.000000000000000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object cbStatus: TRadioGroup
      Left = 627
      Top = 2
      Width = 123
      Height = 135
      Caption = 'Tipo'
      ItemIndex = 0
      Items.Strings = (
        'Todos'
        'CxC Clientes'
        'CXP Proveedores'
        'Otros')
      TabOrder = 7
      OnClick = btRefreshClick
    end
    object tUsu: TEdit
      Left = 448
      Top = 60
      Width = 173
      Height = 23
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
    end
    object edUsuario: TEdit
      Left = 379
      Top = 60
      Width = 36
      Height = 23
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnChange = edUsuarioChange
      OnKeyDown = edUsuarioKeyDown
    end
    object edCliente: TEdit
      Left = 69
      Top = 112
      Width = 53
      Height = 23
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnChange = edClienteChange
      OnKeyDown = edClienteKeyDown
    end
    object tCliente: TEdit
      Left = 152
      Top = 112
      Width = 469
      Height = 23
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
    end
    object cbOrden: TComboBox
      Left = 379
      Top = 86
      Width = 242
      Height = 22
      BevelKind = bkFlat
      Style = csDropDownList
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemHeight = 14
      ParentFont = False
      TabOrder = 6
      OnClick = btRefreshClick
      Items.Strings = (
        'N'#250'mero'
        'Fecha'
        'Concepto')
    end
    object edConc: TEdit
      Left = 69
      Top = 86
      Width = 259
      Height = 23
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object edBanco: TEdit
      Left = 69
      Top = 60
      Width = 53
      Height = 23
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      OnChange = edBancoChange
      OnKeyDown = edBancoKeyDown
    end
    object tBanco: TEdit
      Left = 152
      Top = 60
      Width = 176
      Height = 23
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 11
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 69
      Top = 9
      Width = 552
      Height = 22
      DropDownRows = 20
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'suc_codigo'
      ListField = 'suc_nombre'
      ListSource = dsSuc
      ParentFont = False
      TabOrder = 0
    end
    object edProveedor: TEdit
      Left = 69
      Top = 138
      Width = 53
      Height = 22
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
      OnChange = edProveedorChange
      OnKeyDown = edProveedorKeyDown
    end
    object tProveedor: TEdit
      Left = 152
      Top = 138
      Width = 469
      Height = 22
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 13
    end
    object edtSucLoc: TEdit
      Left = 69
      Top = 163
      Width = 53
      Height = 22
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
      OnChange = edtSucLocChange
      OnKeyDown = edtSucLocKeyDown
    end
    object TSucLoc: TEdit
      Left = 152
      Top = 163
      Width = 469
      Height = 22
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 15
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 195
    Width = 1497
    Height = 180
    Align = alTop
    Anchors = [akLeft, akTop, akRight, akBottom]
    Color = clInfoBk
    Ctl3D = False
    DataSource = dsCargos
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
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
        Expanded = False
        FieldName = 'BAN_NOMBRE'
        Title.Caption = 'Nombre del Banco'
        Width = 197
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CAR_NUMERO'
        Title.Alignment = taCenter
        Title.Caption = 'N'#250'mero'
        Width = 41
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CAR_FECHA'
        Title.Alignment = taCenter
        Title.Caption = 'Fecha'
        Width = 61
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CAR_MONTO_BANCO'
        Title.Alignment = taCenter
        Title.Caption = 'Monto'
        Width = 97
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'car_tasa'
        Title.Alignment = taCenter
        Title.Caption = 'Tasa'
        Width = 36
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'car_ncf'
        Title.Alignment = taCenter
        Title.Caption = 'NCF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REC_NUMERO'
        Title.Alignment = taCenter
        Title.Caption = '#Recibo'
        Width = 43
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VEN_NOMBRE'
        Title.Caption = 'Vendedor'
        Width = 108
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CAR_BENEF'
        Title.Caption = 'BENEFICIARIO'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CAR_CONCEPTO1'
        Title.Caption = 'Concepto'
        Width = 136
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CAR_CONCEPTO2'
        Title.Caption = 'Concepto 2'
        Width = 136
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_NOMBRE'
        Title.Caption = 'Nombre del Cliente'
        Width = 163
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SUP_NOMBRE'
        Title.Caption = 'Nombre del Proveedor'
        Width = 163
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CAR_ABONO'
        Title.Alignment = taCenter
        Title.Caption = 'Abono'
        Width = 63
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CAR_STATUS'
        Title.Alignment = taCenter
        Title.Caption = 'St.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_NOMBRE'
        Title.Caption = 'Usuario'
        Width = 92
        Visible = True
      end>
  end
  object Memo1: TMemo
    Left = 17
    Top = 207
    Width = 544
    Height = 53
    Lines.Strings = (
      'Memo1')
    TabOrder = 3
    Visible = False
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 379
    Width = 1497
    Height = 116
    ActivePage = TabSheet3
    Align = alClient
    TabOrder = 4
    object TabSheet1: TTabSheet
      Caption = 'Cuentas contables'
      DesignSize = (
        1489
        87)
      object Label9: TLabel
        Left = 1312
        Top = 1
        Width = 53
        Height = 14
        Anchors = [akTop, akRight]
        Caption = 'Cr'#233'ditos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 1312
        Top = 18
        Width = 48
        Height = 14
        Anchors = [akTop, akRight]
        Caption = 'D'#233'bitos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 1312
        Top = 36
        Width = 49
        Height = 14
        Anchors = [akTop, akRight]
        Caption = 'Balance'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object btBuscaCta: TSpeedButton
        Left = 1312
        Top = 86
        Width = 164
        Height = 27
        Anchors = [akTop, akRight]
        Caption = '[ F5 ] - Buscar Cuenta   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btBuscaCtaClick
      end
      object btElimina: TSpeedButton
        Left = 1312
        Top = 59
        Width = 164
        Height = 27
        Anchors = [akTop, akRight]
        Caption = '[ F4 ] - Eliminar Cuenta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btEliminaClick
      end
      object GridCuentas: TDBGrid
        Left = 0
        Top = 0
        Width = 1306
        Height = 87
        Align = alLeft
        Anchors = [akLeft, akTop, akRight, akBottom]
        Ctl3D = False
        DataSource = dsDetalle
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgCancelOnExit]
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
            Width = 78
            Visible = True
          end
          item
            Color = clInfoBk
            Expanded = False
            FieldName = 'CAT_NOMBRE'
            ReadOnly = True
            Title.Caption = 'Nombre de la Cuenta'
            Width = 284
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
            Width = 90
            Visible = True
          end>
      end
      object lbCR: TStaticText
        Left = 1372
        Top = 1
        Width = 111
        Height = 18
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object lbDB: TStaticText
        Left = 1372
        Top = 18
        Width = 111
        Height = 19
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object lbBAL: TStaticText
        Left = 1372
        Top = 36
        Width = 111
        Height = 18
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Facturas pagadas'
      ImageIndex = 1
      object DBGrid3: TDBGrid
        Left = 0
        Top = 0
        Width = 1263
        Height = 85
        Align = alClient
        Color = clInfoBk
        Ctl3D = False
        DataSource = dsFacturas
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
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
            Expanded = False
            FieldName = 'fac_numero'
            Title.Alignment = taCenter
            Title.Caption = 'Numero'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'fac_fecha'
            Title.Alignment = taCenter
            Title.Caption = 'Fecha'
            Width = 79
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'fac_vence'
            Title.Alignment = taCenter
            Title.Caption = 'Vence'
            Width = 77
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'fac_pago'
            Title.Alignment = taCenter
            Title.Caption = 'Pagado'
            Width = 93
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'fac_tasa'
            Title.Alignment = taCenter
            Title.Caption = 'Tasa'
            Width = 42
            Visible = True
          end>
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Centros de costo / Proyectos'
      ImageIndex = 2
      object GridCentro: TDBGrid
        Left = 32
        Top = 0
        Width = 1457
        Height = 87
        Hint = 'F2 SELECCIONA CENTROS'#13#10'F3 SELECCIONA SUB-CENTROS'
        Align = alClient
        Ctl3D = False
        DataSource = dsCentro
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgColLines, dgRowLines, dgTabs, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnColEnter = GridCentroColEnter
        OnEnter = GridCentroEnter
        OnKeyDown = GridCentroKeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'cen_referencia'
            Title.Alignment = taCenter
            Title.Caption = 'Centro'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sub_referencia'
            Title.Alignment = taCenter
            Title.Caption = 'Sub-Centro'
            Width = 93
            Visible = True
          end
          item
            Color = clInfoBk
            Expanded = False
            FieldName = 'cen_nombre'
            ReadOnly = True
            Title.Caption = 'Descripcion Centro de Costo'
            Width = 293
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'det_monto'
            Title.Alignment = taCenter
            Title.Caption = 'Monto'
            Visible = True
          end>
      end
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 32
        Height = 87
        Align = alLeft
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 1
        object SpeedButton1: TSpeedButton
          Left = 4
          Top = 4
          Width = 25
          Height = 24
          Hint = 'Eliminar centro de costo'
          Flat = True
          Glyph.Data = {
            42010000424D4201000000000000760000002800000011000000110000000100
            040000000000CC00000000000000000000001000000010000000000000000000
            BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
            777770000000777777777777777770000000777777777777770F700000007777
            0F777777777770000000777000F7777770F770000000777000F777770F777000
            00007777000F77700F777000000077777000F700F7777000000077777700000F
            7777700000007777777000F777777000000077777700000F7777700000007777
            7000F70F7777700000007770000F77700F7770000000770000F7777700F77000
            00007700F7777777700F70000000777777777777777770000000777777777777
            777770000000}
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton1Click
        end
        object SpeedButton4: TSpeedButton
          Left = 4
          Top = 28
          Width = 25
          Height = 24
          Hint = 'Buscar centro de costo'
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
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton4Click
        end
        object btnSubCentro: TSpeedButton
          Left = 4
          Top = 53
          Width = 25
          Height = 23
          Hint = 'Buscar Sub Centro de Costo'
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
          ParentShowHint = False
          ShowHint = True
          OnClick = btnSubCentroClick
        end
      end
    end
  end
  object QCargos: TADOQuery
    Connection = DM.ADOSigma
    AfterOpen = QCargosAfterOpen
    AfterScroll = QCargosAfterScroll
    Parameters = <
      item
        Name = 'FEC1'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'FEC2'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'EMP_CODIGO'
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
      'B.BAN_NOMBRE, C.CAR_NUMERO, C.CAR_FECHA,'
      'C.CAR_CONCEPTO1, C.CAR_CONCEPTO2,'
      'C.CAR_MONTO, C.CAR_STATUS, '
      'C.CAR_TIPO, U.USU_NOMBRE, C.EMP_CODIGO,'
      'C.BAN_CODIGO, C.CAR_ANO, C.CAR_MES, C.CAR_FORMA,'
      'C.CAR_ABONO, C.SUC_CODIGO, CL.CLI_NOMBRE,'
      'C.REC_NUMERO, V.VEN_NOMBRE, C.CAR_MONTO_BANCO,'
      'P.SUP_NOMBRE, c.car_ncf, c.car_tasa, CAR_BENEF'
      'FROM'
      'CARGOSBANCO C'
      'LEFT OUTER JOIN PROVEEDORES P ON'
      '(C.EMP_CODIGO = P.EMP_CODIGO'
      'AND C.SUP_CODIGO = P.SUP_CODIGO)'
      'LEFT OUTER JOIN CLIENTES CL ON'
      '(C.EMP_CODIGO = CL.EMP_CODIGO'
      'AND C.CLI_CODIGO = CL.CLI_CODIGO)'
      'LEFT OUTER JOIN RECIBOS R ON'
      '(C.EMP_CODIGO = R.EMP_CODIGO'
      'AND C.SUC_CODIGO = R.SUC_CODIGO'
      'AND C.REC_NUMERO = R.REC_NUMERO)'
      'LEFT OUTER JOIN VENDEDORES V ON'
      '(R.EMP_CODIGO = V.EMP_CODIGO'
      'AND R.VEN_CODIGO = V.VEN_CODIGO), BANCOS B, USUARIOS U'
      'WHERE'
      'C.EMP_CODIGO = B.EMP_CODIGO'
      'AND C.BAN_CODIGO = B.BAN_CODIGO'
      'AND C.SUC_CODIGO = B.SUC_CODIGO'
      'AND C.USU_CODIGO = U.USU_CODIGO'
      'AND C.CAR_FECHA BETWEEN :FEC1 AND :FEC2'
      'AND C.EMP_CODIGO = :EMP_CODIGO'
      'AND C.SUC_CODIGO = :SUC_CODIGO')
    Left = 416
    Top = 192
    object QCargosBAN_NOMBRE: TIBStringField
      FieldName = 'BAN_NOMBRE'
      Origin = 'BANCOS.BAN_NOMBRE'
      Size = 60
    end
    object QCargosCAR_NUMERO: TIntegerField
      FieldName = 'CAR_NUMERO'
      Origin = 'CARGOSBANCO.CAR_NUMERO'
      Required = True
      DisplayFormat = '000000'
    end
    object QCargosCAR_FECHA: TDateTimeField
      FieldName = 'CAR_FECHA'
      Origin = 'CARGOSBANCO.CAR_FECHA'
    end
    object QCargosCAR_CONCEPTO1: TIBStringField
      FieldName = 'CAR_CONCEPTO1'
      Origin = 'CARGOSBANCO.CAR_CONCEPTO1'
      Size = 60
    end
    object QCargosCAR_CONCEPTO2: TIBStringField
      FieldName = 'CAR_CONCEPTO2'
      Origin = 'CARGOSBANCO.CAR_CONCEPTO2'
      Size = 60
    end
    object QCargosCAR_MONTO: TFloatField
      FieldName = 'CAR_MONTO'
      Origin = 'CARGOSBANCO.CAR_MONTO'
      currency = True
    end
    object QCargosCAR_STATUS: TIBStringField
      FieldName = 'CAR_STATUS'
      Origin = 'CARGOSBANCO.CAR_STATUS'
      Size = 3
    end
    object QCargosCAR_TIPO: TIBStringField
      FieldName = 'CAR_TIPO'
      Origin = 'CARGOSBANCO.CAR_TIPO'
      Size = 3
    end
    object QCargosUSU_NOMBRE: TIBStringField
      FieldName = 'USU_NOMBRE'
      Origin = 'USUARIOS.USU_NOMBRE'
      Size = 60
    end
    object QCargosEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'CARGOSBANCO.EMP_CODIGO'
      Required = True
    end
    object QCargosBAN_CODIGO: TIntegerField
      FieldName = 'BAN_CODIGO'
      Origin = 'CARGOSBANCO.BAN_CODIGO'
      Required = True
    end
    object QCargosCAR_ANO: TIntegerField
      FieldName = 'CAR_ANO'
      Origin = 'CARGOSBANCO.CAR_ANO'
      Required = True
    end
    object QCargosCAR_MES: TIntegerField
      FieldName = 'CAR_MES'
      Origin = 'CARGOSBANCO.CAR_MES'
      Required = True
    end
    object QCargosCAR_FORMA: TIBStringField
      FieldName = 'CAR_FORMA'
      Origin = 'CARGOSBANCO.CAR_FORMA'
      Size = 1
    end
    object QCargosCAR_ABONO: TFloatField
      FieldName = 'CAR_ABONO'
      Origin = 'CARGOSBANCO.CAR_ABONO'
      currency = True
    end
    object QCargosSUC_CODIGO: TIntegerField
      FieldName = 'SUC_CODIGO'
    end
    object QCargosCLI_NOMBRE: TStringField
      FieldName = 'CLI_NOMBRE'
      Size = 60
    end
    object QCargosREC_NUMERO: TIntegerField
      FieldName = 'REC_NUMERO'
    end
    object QCargosVEN_NOMBRE: TStringField
      FieldName = 'VEN_NOMBRE'
      Size = 60
    end
    object QCargosCAR_MONTO_BANCO: TBCDField
      FieldName = 'CAR_MONTO_BANCO'
      currency = True
      Precision = 15
      Size = 2
    end
    object QCargosSUP_NOMBRE: TStringField
      FieldName = 'SUP_NOMBRE'
      Size = 60
    end
    object QCargoscar_ncf: TStringField
      FieldName = 'car_ncf'
    end
    object QCargoscar_tasa: TBCDField
      FieldName = 'car_tasa'
      currency = True
      Precision = 15
      Size = 2
    end
    object QCargosCAR_BENEF: TStringField
      FieldName = 'CAR_BENEF'
      Size = 255
    end
  end
  object dsCargos: TDataSource
    DataSet = QCargos
    OnDataChange = dsCargosDataChange
    Left = 448
    Top = 192
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
    DataSource = dsCargos
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
        Name = 'BAN_CODIGO'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'CAR_NUMERO'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'CAR_ANO'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'CAR_MES'
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
      'BAN_CODIGO, CAT_CUENTA, CAT_NOMBRE, CAR_NUMERO, '
      'DET_MONTO, DET_ORIGEN, DET_SECUENCIA, EMP_CODIGO,'
      'CAR_ANO, CAR_MES, SUC_CODIGO'
      'FROM'
      'DET_CARGOSBANCO'
      'WHERE '
      'EMP_CODIGO = :EMP_CODIGO'
      'AND BAN_CODIGO = :BAN_CODIGO'
      'AND CAR_NUMERO = :CAR_NUMERO'
      'AND CAR_ANO = :CAR_ANO'
      'AND CAR_MES = :CAR_MES'
      'AND SUC_CODIGO = :SUC_CODIGO'
      'ORDER BY'
      'DET_SECUENCIA')
    Left = 416
    Top = 224
    object QDetalleBAN_CODIGO: TIntegerField
      FieldName = 'BAN_CODIGO'
      Origin = 'DET_CARGOSBANCO.BAN_CODIGO'
    end
    object QDetalleCAT_CUENTA: TIBStringField
      FieldName = 'CAT_CUENTA'
      Origin = 'DET_CARGOSBANCO.CAT_CUENTA'
      OnChange = QDetalleCAT_CUENTAChange
      Size = 15
    end
    object QDetalleCAT_NOMBRE: TIBStringField
      FieldName = 'CAT_NOMBRE'
      Origin = 'DET_CARGOSBANCO.CAT_NOMBRE'
      Size = 60
    end
    object QDetalleCAR_NUMERO: TIntegerField
      FieldName = 'CAR_NUMERO'
      Origin = 'DET_CARGOSBANCO.CAR_NUMERO'
      Required = True
    end
    object QDetalleDET_MONTO: TFloatField
      FieldName = 'DET_MONTO'
      Origin = 'DET_CARGOSBANCO.DET_MONTO'
      currency = True
    end
    object QDetalleDET_SECUENCIA: TIntegerField
      FieldName = 'DET_SECUENCIA'
      Origin = 'DET_CARGOSBANCO.DET_SECUENCIA'
    end
    object QDetalleEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'DET_CARGOSBANCO.EMP_CODIGO'
    end
    object QDetalleCAR_ANO: TIntegerField
      FieldName = 'CAR_ANO'
      Origin = 'DET_CARGOSBANCO.CAR_ANO'
    end
    object QDetalleCAR_MES: TIntegerField
      FieldName = 'CAR_MES'
      Origin = 'DET_CARGOSBANCO.CAR_MES'
    end
    object QDetalleDET_ORIGEN: TIBStringField
      FieldName = 'DET_ORIGEN'
      Origin = 'DET_CARGOSBANCO.DET_ORIGEN'
      Size = 7
    end
    object QDetalleSUC_CODIGO: TIntegerField
      FieldName = 'SUC_CODIGO'
    end
  end
  object dsDetalle: TDataSource
    DataSet = QDetalle
    Left = 448
    Top = 224
  end
  object Search: TQrySearchDlgADO
    AliasName = DM.ADOSigma
    Left = 480
    Top = 192
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
    Left = 264
    Top = 176
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
    Left = 296
    Top = 176
  end
  object QFacturas: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    AfterPost = QFacturasAfterPost
    DataSource = dsCargos
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
        Name = 'suc_codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'ban_codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'car_ano'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'car_mes'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'car_numero'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      
        'd.emp_codigo, d.suc_codigo, d.ban_codigo, d.car_ano, d.car_mes, ' +
        'd.car_numero,'
      
        'd.fac_secuencia, d.sup_codigo, d.fac_numero, d.fac_saldo, d.fac_' +
        'abono,'
      
        'd.fac_fecha, d.fac_vence, d.fac_total, d.fac_pago, d.fac_descuen' +
        'to,'
      'd.fac_itbis, d.fac_retencion, f.fac_tasa'
      'from'
      'det_cargosbanco_facturas d, provfacturas f'
      'where'
      'd.emp_codigo = f.emp_codigo'
      'and d.sup_codigo = f.sup_codigo'
      'and d.fac_numero = f.fac_numero'
      'and d.emp_codigo = :emp_codigo'
      'and d.suc_codigo = :suc_codigo'
      'and d.ban_codigo = :ban_codigo'
      'and d.car_ano = :car_ano'
      'and d.car_mes = :car_mes'
      'and d.car_numero = :car_numero'
      'order by'
      'd.fac_secuencia')
    Left = 552
    Top = 160
    object QFacturasemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QFacturassuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object QFacturasban_codigo: TIntegerField
      FieldName = 'ban_codigo'
    end
    object QFacturascar_ano: TIntegerField
      FieldName = 'car_ano'
    end
    object QFacturascar_mes: TIntegerField
      FieldName = 'car_mes'
    end
    object QFacturascar_numero: TIntegerField
      FieldName = 'car_numero'
    end
    object QFacturasfac_secuencia: TIntegerField
      FieldName = 'fac_secuencia'
    end
    object QFacturassup_codigo: TIntegerField
      FieldName = 'sup_codigo'
    end
    object QFacturasfac_numero: TStringField
      FieldName = 'fac_numero'
      Size = 15
    end
    object QFacturasfac_saldo: TBCDField
      FieldName = 'fac_saldo'
      currency = True
      Precision = 15
      Size = 2
    end
    object QFacturasfac_abono: TBCDField
      FieldName = 'fac_abono'
      currency = True
      Precision = 15
      Size = 2
    end
    object QFacturasfac_fecha: TDateTimeField
      FieldName = 'fac_fecha'
    end
    object QFacturasfac_vence: TDateTimeField
      FieldName = 'fac_vence'
    end
    object QFacturasfac_total: TBCDField
      FieldName = 'fac_total'
      currency = True
      Precision = 15
      Size = 2
    end
    object QFacturasfac_pago: TBCDField
      FieldName = 'fac_pago'
      currency = True
      Precision = 15
      Size = 2
    end
    object QFacturasfac_descuento: TBCDField
      FieldName = 'fac_descuento'
      currency = True
      Precision = 15
      Size = 2
    end
    object QFacturasfac_itbis: TBCDField
      FieldName = 'fac_itbis'
      currency = True
      Precision = 15
      Size = 2
    end
    object QFacturasfac_retencion: TBCDField
      FieldName = 'fac_retencion'
      currency = True
      Precision = 15
      Size = 2
    end
    object QFacturasfac_tasa: TBCDField
      FieldName = 'fac_tasa'
      currency = True
      Precision = 15
      Size = 2
    end
  end
  object dsFacturas: TDataSource
    DataSet = QFacturas
    Left = 584
    Top = 160
  end
  object QCentro: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    BeforePost = QCentroBeforePost
    AfterPost = QCentroAfterPost
    AfterDelete = QCentroAfterDelete
    OnNewRecord = QCentroNewRecord
    CommandTimeout = 0
    DataSource = dsCargos
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
        Name = 'ban_codigo'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'car_numero'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select'
      
        'emp_codigo,ban_codigo,car_numero,cen_codigo,det_secuencia,cen_no' +
        'mbre,'
      'det_monto, cen_referencia, sub_referencia,'
      'sub_secuencia, suc_codigo, car_ano, car_mes'
      'from'
      'CargosBancoCentrosCosto'
      'where'
      'emp_codigo = :emp_codigo'
      'and ban_codigo = :ban_codigo'
      'and car_numero =  :car_numero'
      'order by det_secuencia'
      ''
      '')
    Left = 392
    Top = 312
    object QCentrocen_codigo: TIntegerField
      FieldName = 'cen_codigo'
      OnChange = QCentrocen_codigoChange
    end
    object QCentrocen_nombre: TStringField
      FieldName = 'cen_nombre'
      Size = 60
    end
    object QCentrodet_monto: TBCDField
      FieldName = 'det_monto'
      currency = True
      Precision = 15
      Size = 2
    end
    object QCentrodet_secuencia: TIntegerField
      FieldName = 'det_secuencia'
    end
    object QCentroemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QCentrosub_referencia: TStringField
      FieldName = 'sub_referencia'
      Size = 5
    end
    object QCentrocen_referencia: TStringField
      FieldName = 'cen_referencia'
      OnChange = QCentrocen_referenciaChange
      Size = 10
    end
    object QCentrosub_secuencia: TIntegerField
      FieldName = 'sub_secuencia'
    end
    object QCentrocar_numero: TIntegerField
      FieldName = 'car_numero'
    end
    object QCentroban_codigo: TIntegerField
      FieldName = 'ban_codigo'
    end
    object QCentrosuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object QCentrocar_ano: TIntegerField
      FieldName = 'car_ano'
    end
    object QCentrocar_mes: TIntegerField
      FieldName = 'car_mes'
    end
  end
  object dsCentro: TDataSource
    DataSet = QCentro
    Left = 424
    Top = 312
  end
end
