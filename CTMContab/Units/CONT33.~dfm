object frmConsSolicitud: TfrmConsSolicitud
  Left = 385
  Top = 233
  ActiveControl = DBGrid1
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Consulta General de Solicitudes de Cheques'
  ClientHeight = 416
  ClientWidth = 695
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
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 268
    Width = 695
    Height = 4
    Cursor = crVSplit
    Align = alTop
  end
  object Panel1: TPanel
    Left = 0
    Top = 382
    Width = 695
    Height = 34
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    DesignSize = (
      695
      34)
    object lbCantidad: TLabel
      Left = 8
      Top = 12
      Width = 74
      Height = 13
      Caption = '0 Solicitudes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btClose: TBitBtn
      Left = 608
      Top = 5
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
      Top = 5
      Width = 115
      Height = 25
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
      Left = 408
      Top = 5
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
    Width = 695
    Height = 169
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object Label6: TLabel
      Left = 10
      Top = 30
      Width = 30
      Height = 13
      Caption = 'Fecha'
    end
    object Label7: TLabel
      Left = 320
      Top = 8
      Width = 36
      Height = 13
      Caption = 'Usuario'
    end
    object btUsu: TSpeedButton
      Left = 424
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
      OnClick = btUsuClick
    end
    object Label2: TLabel
      Left = 10
      Top = 74
      Width = 32
      Height = 13
      Caption = 'Cliente'
    end
    object btCliente: TSpeedButton
      Left = 116
      Top = 74
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
      OnClick = btClienteClick
    end
    object Label5: TLabel
      Left = 600
      Top = 88
      Width = 38
      Height = 13
      Caption = 'Ordenar'
    end
    object Label1: TLabel
      Left = 9
      Top = 96
      Width = 49
      Height = 13
      Caption = 'Proveedor'
    end
    object btProv: TSpeedButton
      Left = 116
      Top = 96
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
      OnClick = btProvClick
    end
    object Label4: TLabel
      Left = 320
      Top = 30
      Width = 46
      Height = 13
      Caption = 'Concepto'
    end
    object Label8: TLabel
      Left = 320
      Top = 52
      Width = 55
      Height = 13
      Caption = 'Beneficiario'
    end
    object Label3: TLabel
      Left = 10
      Top = 52
      Width = 31
      Height = 13
      Caption = 'Banco'
    end
    object btBanco: TSpeedButton
      Left = 116
      Top = 52
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
      OnClick = btBancoClick
    end
    object Label14: TLabel
      Left = 10
      Top = 8
      Width = 41
      Height = 13
      Caption = 'Sucursal'
    end
    object Label12: TLabel
      Left = 9
      Top = 118
      Width = 47
      Height = 13
      Caption = 'Empleado'
    end
    object btEmpleado: TSpeedButton
      Left = 116
      Top = 118
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
      OnClick = btEmpleadoClick
    end
    object lbLocSuc: TLabel
      Left = 16
      Top = 146
      Width = 46
      Height = 13
      Caption = 'Localidad'
    end
    object btLocalidad: TSpeedButton
      Left = 116
      Top = 142
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
      OnClick = btLocalidadClick
    end
    object Fecha1: TDateTimePicker
      Left = 64
      Top = 30
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
      Top = 30
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
    object cbStatus: TRadioGroup
      Left = 600
      Top = 2
      Width = 93
      Height = 79
      Caption = 'Status'
      ItemIndex = 0
      Items.Strings = (
        'Todas'
        'Aprobadas'
        'Sin Aprobar'
        'Anuladas')
      TabOrder = 11
      OnClick = btRefreshClick
    end
    object tUsu: TEdit
      Left = 448
      Top = 8
      Width = 145
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
    object edUsuario: TEdit
      Left = 384
      Top = 8
      Width = 37
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
    object edCliente: TEdit
      Left = 64
      Top = 74
      Width = 49
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
      OnChange = edClienteChange
      OnKeyDown = edClienteKeyDown
    end
    object tCliente: TEdit
      Left = 141
      Top = 74
      Width = 452
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
      TabOrder = 13
    end
    object cbOrden: TComboBox
      Left = 600
      Top = 104
      Width = 89
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
      TabOrder = 10
      OnClick = btRefreshClick
      Items.Strings = (
        'N'#250'mero'
        'Fecha'
        'Concepto'
        'Beneficiario')
    end
    object edProveedor: TEdit
      Left = 64
      Top = 96
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
      TabOrder = 5
      OnChange = edProveedorChange
      OnKeyDown = edProveedorKeyDown
    end
    object tProv: TEdit
      Left = 141
      Top = 96
      Width = 452
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
    object edConc: TEdit
      Left = 384
      Top = 30
      Width = 209
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
    object edBenef: TEdit
      Left = 384
      Top = 52
      Width = 209
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
    object edBanco: TEdit
      Left = 64
      Top = 52
      Width = 49
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
      OnChange = edBancoChange
      OnKeyDown = edBancoKeyDown
    end
    object tBanco: TEdit
      Left = 141
      Top = 52
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
      TabOrder = 15
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 64
      Top = 8
      Width = 249
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
    object edEmpleado: TEdit
      Left = 64
      Top = 118
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
      TabOrder = 6
      OnChange = edEmpleadoChange
      OnKeyDown = edEmpleadoKeyDown
    end
    object tEmp: TEdit
      Left = 141
      Top = 118
      Width = 452
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
      TabOrder = 16
    end
    object edtSucLoc: TEdit
      Left = 64
      Top = 142
      Width = 49
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
      TabOrder = 17
      OnChange = edtSucLocChange
      OnKeyDown = edtSucLocKeyDown
    end
    object TSucLoc: TEdit
      Left = 141
      Top = 142
      Width = 220
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
      TabOrder = 18
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 169
    Width = 695
    Height = 99
    Align = alTop
    Anchors = [akLeft, akTop, akRight, akBottom]
    Color = clInfoBk
    Ctl3D = False
    DataSource = dsSolicitud
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
        Expanded = False
        FieldName = 'BAN_NOMBRE'
        Title.Caption = 'Banco'
        Width = 197
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'SOL_TIPO'
        Title.Alignment = taCenter
        Title.Caption = 'Tipo'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'SOL_NUMERO'
        Title.Alignment = taCenter
        Title.Caption = 'N'#250'mero'
        Width = 61
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'SOL_FECHA'
        Title.Alignment = taCenter
        Title.Caption = 'Fecha'
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SOL_MONTO_BANCO'
        Title.Alignment = taCenter
        Title.Caption = 'Monto'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SOL_CONCEPTO1'
        Title.Caption = 'Concepto 1'
        Width = 221
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SOL_CONCEPTO2'
        Title.Caption = 'Concepto 2'
        Width = 221
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SOL_BENEF'
        Title.Caption = 'Beneficiario'
        Width = 210
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'SOL_STATUS'
        Title.Alignment = taCenter
        Title.Caption = 'Status'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'SOL_CHEQUE'
        Title.Alignment = taCenter
        Title.Caption = '# Cheque'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_NOMBRE'
        Title.Caption = 'Usuario'
        Width = 142
        Visible = True
      end>
  end
  object Memo1: TMemo
    Left = 24
    Top = 304
    Width = 257
    Height = 33
    Lines.Strings = (
      'Memo1')
    TabOrder = 3
    Visible = False
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 272
    Width = 695
    Height = 110
    ActivePage = TabSheet3
    Align = alClient
    TabOrder = 4
    object TabSheet1: TTabSheet
      Caption = 'Cuentas contables'
      DesignSize = (
        687
        82)
      object Label9: TLabel
        Left = 525
        Top = 7
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
        Left = 525
        Top = 23
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
        Left = 525
        Top = 39
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
        Left = 525
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
        Left = 525
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
        Height = 82
        Align = alLeft
        Anchors = [akLeft, akTop, akRight, akBottom]
        Ctl3D = False
        DataSource = dsDetalle
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
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
            Width = 74
            Visible = True
          end
          item
            Color = clInfoBk
            Expanded = False
            FieldName = 'CAT_NOMBRE'
            ReadOnly = True
            Title.Caption = 'Nombre de la Cuenta'
            Width = 285
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
        Left = 581
        Top = 7
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
        Left = 581
        Top = 23
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
        Left = 581
        Top = 39
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
    object TabSheet2: TTabSheet
      Caption = 'Facturas a pagar'
      ImageIndex = 1
      object DBGrid3: TDBGrid
        Left = 0
        Top = 0
        Width = 687
        Height = 166
        Align = alTop
        Color = clInfoBk
        Ctl3D = False
        DataSource = dsFacturas
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
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
            FieldName = 'FAC_NUMERO'
            Title.Alignment = taCenter
            Title.Caption = 'Numero'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'FAC_FECHA'
            Title.Alignment = taCenter
            Title.Caption = 'Fecha'
            Width = 79
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'FAC_VENCE'
            Title.Alignment = taCenter
            Title.Caption = 'Vence'
            Width = 77
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FAC_PAGO'
            Title.Alignment = taCenter
            Title.Caption = 'Pagado'
            Width = 93
            Visible = True
          end>
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Retenciones'
      ImageIndex = 3
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 30
        Height = 82
        Align = alLeft
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 0
        object SpeedButton5: TSpeedButton
          Left = 4
          Top = 4
          Width = 23
          Height = 22
          Hint = 'Eliminar producto de la lista'
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
          OnClick = SpeedButton5Click
        end
        object SpeedButton6: TSpeedButton
          Left = 4
          Top = 26
          Width = 23
          Height = 22
          Hint = 'Nota para el producto'
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
          OnClick = SpeedButton6Click
        end
      end
      object GridRet: TDBGrid
        Left = 30
        Top = 0
        Width = 657
        Height = 82
        Align = alClient
        Ctl3D = False
        DataSource = dsRet
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgColLines, dgRowLines, dgTabs, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnColEnter = GridRetColEnter
        OnEnter = GridRetEnter
        OnKeyDown = GridRetKeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'ret_codigo'
            Title.Alignment = taCenter
            Title.Caption = 'Codigo'
            Visible = True
          end
          item
            Color = clInfoBk
            Expanded = False
            FieldName = 'det_nombre'
            ReadOnly = True
            Title.Caption = 'Descripcion Retencion'
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
    end
    object TabSheet3: TTabSheet
      Caption = 'Centros de costo'
      ImageIndex = 2
      object GridCentro: TDBGrid
        Left = 30
        Top = 0
        Width = 657
        Height = 82
        Hint = 'F2 SELECCIONA CENTROS'#13#10'F3 SELECCIONA SUB-CENTROS'
        Align = alClient
        Ctl3D = False
        DataSource = dsCentro
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
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
        Width = 30
        Height = 82
        Align = alLeft
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 1
        object SpeedButton1: TSpeedButton
          Left = 4
          Top = 4
          Width = 23
          Height = 22
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
          Top = 26
          Width = 23
          Height = 27
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
          Top = 49
          Width = 23
          Height = 22
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
  object QSolicitud: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltReadOnly
    AfterOpen = QSolicitudAfterOpen
    DataSource = dsSuc
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
        Name = 'suc_codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT'
      'B.BAN_NOMBRE, S.SOL_NUMERO, S.SOL_FECHA,'
      'S.SOL_CONCEPTO1, S.SOL_CONCEPTO2,'
      'S.SOL_BENEF, S.SOL_MONTO, S.SOL_STATUS,'
      'S.SOL_TIPO, U.USU_NOMBRE, S.EMP_CODIGO,'
      'S.BAN_CODIGO, S.SOL_CHEQUE, S.SOL_CONCEPTO3,'
      'S.SUC_CODIGO, S.SOL_MONTO_BANCO'
      'FROM'
      'SOLICITUD S, BANCOS B, USUARIOS U'
      'WHERE'
      'S.EMP_CODIGO = B.EMP_CODIGO'
      'AND S.BAN_CODIGO = B.BAN_CODIGO'
      'AND S.SUC_CODIGO = B.SUC_CODIGO'
      'AND S.USU_CODIGO = U.USU_CODIGO'
      'AND S.SOL_FECHA BETWEEN :FEC1 AND :FEC2'
      'AND S.EMP_CODIGO = :EMP_CODIGO'
      'and s.suc_codigo = :suc_codigo')
    Left = 416
    Top = 128
    object QSolicitudBAN_NOMBRE: TIBStringField
      FieldName = 'BAN_NOMBRE'
      Origin = 'BANCOS.BAN_NOMBRE'
      Size = 60
    end
    object QSolicitudSOL_NUMERO: TIntegerField
      FieldName = 'SOL_NUMERO'
      Origin = 'SOLICITUD.SOL_NUMERO'
      Required = True
      DisplayFormat = '000000'
    end
    object QSolicitudSOL_FECHA: TDateTimeField
      FieldName = 'SOL_FECHA'
      Origin = 'SOLICITUD.SOL_FECHA'
    end
    object QSolicitudSOL_CONCEPTO1: TIBStringField
      FieldName = 'SOL_CONCEPTO1'
      Origin = 'SOLICITUD.SOL_CONCEPTO1'
      Size = 60
    end
    object QSolicitudSOL_CONCEPTO2: TIBStringField
      FieldName = 'SOL_CONCEPTO2'
      Origin = 'SOLICITUD.SOL_CONCEPTO2'
      Size = 60
    end
    object QSolicitudSOL_BENEF: TIBStringField
      FieldName = 'SOL_BENEF'
      Origin = 'SOLICITUD.SOL_BENEF'
      Size = 60
    end
    object QSolicitudSOL_MONTO: TFloatField
      FieldName = 'SOL_MONTO'
      Origin = 'SOLICITUD.SOL_MONTO'
      currency = True
    end
    object QSolicitudSOL_STATUS: TIBStringField
      FieldName = 'SOL_STATUS'
      Origin = 'SOLICITUD.SOL_STATUS'
      Size = 3
    end
    object QSolicitudSOL_TIPO: TIBStringField
      FieldName = 'SOL_TIPO'
      Origin = 'SOLICITUD.SOL_TIPO'
      Size = 3
    end
    object QSolicitudUSU_NOMBRE: TIBStringField
      FieldName = 'USU_NOMBRE'
      Origin = 'USUARIOS.USU_NOMBRE'
      Size = 60
    end
    object QSolicitudEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'SOLICITUD.EMP_CODIGO'
      Required = True
    end
    object QSolicitudBAN_CODIGO: TIntegerField
      FieldName = 'BAN_CODIGO'
      Origin = 'SOLICITUD.BAN_CODIGO'
    end
    object QSolicitudSOL_CHEQUE: TIntegerField
      FieldName = 'SOL_CHEQUE'
      Origin = 'SOLICITUD.SOL_CHEQUE'
      DisplayFormat = '000000'
    end
    object QSolicitudSOL_CONCEPTO3: TStringField
      FieldName = 'SOL_CONCEPTO3'
      Size = 60
    end
    object QSolicitudSUC_CODIGO: TIntegerField
      FieldName = 'SUC_CODIGO'
    end
    object QSolicitudSOL_MONTO_BANCO: TBCDField
      FieldName = 'SOL_MONTO_BANCO'
      currency = True
      Precision = 15
      Size = 2
    end
  end
  object dsSolicitud: TDataSource
    DataSet = QSolicitud
    OnDataChange = dsSolicitudDataChange
    Left = 448
    Top = 128
  end
  object QDetalle: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    BeforeInsert = QDetalleBeforeInsert
    AfterInsert = QDetalleAfterInsert
    BeforeEdit = QDetalleBeforeEdit
    AfterEdit = QDetalleAfterEdit
    BeforePost = QDetalleBeforePost
    AfterPost = QDetalleAfterPost
    BeforeDelete = QDetalleBeforeDelete
    AfterDelete = QDetalleAfterDelete
    OnNewRecord = QDetalleNewRecord
    DataSource = dsSolicitud
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
        Name = 'SOL_NUMERO'
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
      'CAT_CUENTA, CAT_NOMBRE, SOL_NUMERO, DET_MONTO, '
      'DET_ORIGEN, DET_SECUENCIA, EMP_CODIGO, SUC_CODIGO'
      'FROM'
      'DET_SOLICITUD'
      'WHERE '
      'EMP_CODIGO = :EMP_CODIGO'
      'AND SOL_NUMERO = :SOL_NUMERO'
      'AND SUC_CODIGO = :SUC_CODIGO'
      'ORDER BY'
      'DET_SECUENCIA')
    Left = 416
    Top = 160
    object QDetalleCAT_CUENTA: TIBStringField
      FieldName = 'CAT_CUENTA'
      Origin = 'DET_SOLICITUD.CAT_CUENTA'
      OnChange = QDetalleCAT_CUENTAChange
      Size = 15
    end
    object QDetalleCAT_NOMBRE: TIBStringField
      FieldName = 'CAT_NOMBRE'
      Origin = 'DET_SOLICITUD.CAT_NOMBRE'
      Size = 60
    end
    object QDetalleSOL_NUMERO: TIntegerField
      FieldName = 'SOL_NUMERO'
      Origin = 'DET_SOLICITUD.SOL_NUMERO'
      Required = True
    end
    object QDetalleDET_MONTO: TFloatField
      FieldName = 'DET_MONTO'
      Origin = 'DET_SOLICITUD.DET_MONTO'
      currency = True
    end
    object QDetalleDET_ORIGEN: TIBStringField
      FieldName = 'DET_ORIGEN'
      Origin = 'DET_SOLICITUD.DET_ORIGEN'
      Size = 7
    end
    object QDetalleDET_SECUENCIA: TIntegerField
      FieldName = 'DET_SECUENCIA'
      Origin = 'DET_SOLICITUD.DET_SECUENCIA'
      Required = True
    end
    object QDetalleEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'DET_SOLICITUD.EMP_CODIGO'
      Required = True
    end
    object QDetalleSUC_CODIGO: TIntegerField
      FieldName = 'SUC_CODIGO'
    end
  end
  object dsDetalle: TDataSource
    DataSet = QDetalle
    Left = 448
    Top = 160
  end
  object Search: TQrySearchDlgADO
    AliasName = DM.ADOSigma
    Left = 608
    Top = 176
  end
  object QFacturas: TADOQuery
    Connection = DM.ADOSigma
    DataSource = dsSolicitud
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
        Name = 'SOL_NUMERO'
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
      'FAC_NUMERO, FAC_FECHA, FAC_PAGO, FAC_VENCE'
      'FROM'
      'DET_SOLFACTURAS'
      'WHERE'
      'EMP_CODIGO = :EMP_CODIGO'
      'AND SOL_NUMERO = :SOL_NUMERO'
      'AND SUC_CODIGO = :SUC_CODIGO'
      'ORDER BY'
      'FAC_SECUENCIA')
    Left = 416
    Top = 192
    object QFacturasFAC_NUMERO: TIBStringField
      FieldName = 'FAC_NUMERO'
      Origin = 'DET_CHEQUEFACTURAS.FAC_NUMERO'
      Size = 15
    end
    object QFacturasFAC_FECHA: TDateTimeField
      FieldName = 'FAC_FECHA'
      Origin = 'DET_CHEQUEFACTURAS.FAC_FECHA'
    end
    object QFacturasFAC_PAGO: TFloatField
      FieldName = 'FAC_PAGO'
      Origin = 'DET_CHEQUEFACTURAS.FAC_PAGO'
      currency = True
    end
    object QFacturasFAC_VENCE: TDateTimeField
      FieldName = 'FAC_VENCE'
      Origin = 'DET_CHEQUEFACTURAS.FAC_VENCE'
    end
  end
  object dsFacturas: TDataSource
    DataSet = QFacturas
    Left = 448
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
    Left = 256
    Top = 184
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
    Left = 288
    Top = 184
  end
  object QRetenciones: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    BeforePost = QRetencionesBeforePost
    AfterPost = QRetencionesAfterPost
    AfterDelete = QRetencionesAfterDelete
    OnNewRecord = QRetencionesNewRecord
    DataSource = dsSolicitud
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
        Name = 'sol_numero'
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
      'emp_codigo, sol_numero, ret_codigo, det_nombre,'
      'det_porciento, det_monto, det_secuencia, det_cuenta,'
      'suc_codigo'
      'from'
      'solicitudretencion'
      'where'
      'emp_codigo = :emp_codigo'
      'and sol_numero = :sol_numero'
      'and suc_codigo = :suc_codigo'
      'order by det_secuencia')
    Left = 520
    Top = 176
    object QRetencionesemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QRetencionessol_numero: TIntegerField
      FieldName = 'sol_numero'
    end
    object QRetencionesret_codigo: TIntegerField
      FieldName = 'ret_codigo'
      OnChange = QRetencionesret_codigoChange
    end
    object QRetencionesdet_nombre: TStringField
      FieldName = 'det_nombre'
      Size = 60
    end
    object QRetencionesdet_porciento: TBCDField
      FieldName = 'det_porciento'
      Precision = 15
      Size = 2
    end
    object QRetencionesdet_monto: TBCDField
      FieldName = 'det_monto'
      currency = True
      Precision = 15
      Size = 2
    end
    object QRetencionesdet_secuencia: TIntegerField
      FieldName = 'det_secuencia'
    end
    object QRetencionesdet_cuenta: TStringField
      FieldName = 'det_cuenta'
      Size = 15
    end
    object QRetencionessuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
  end
  object dsRet: TDataSource
    DataSet = QRetenciones
    Left = 552
    Top = 176
  end
  object dsCentro: TDataSource
    DataSet = QCentro
    Left = 424
    Top = 312
  end
  object QCentro: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    BeforePost = QCentroBeforePost
    AfterPost = QCentroAfterPost
    AfterDelete = QCentroAfterDelete
    OnNewRecord = QCentroNewRecord
    CommandTimeout = 0
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
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'sol_numero'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select'
      
        'emp_codigo, suc_codigo, sol_numero,cen_codigo,det_secuencia,cen_' +
        'nombre,'
      'det_monto, cen_referencia, sub_referencia,'
      'sub_secuencia, cat_cuenta'
      'from'
      'SolicitudCentroCostos'
      'where'
      'emp_codigo = :emp_codigo'
      'and suc_codigo = :suc_codigo'
      'and sol_numero =  :sol_numero'
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
    object QCentrosol_numero: TIntegerField
      FieldName = 'sol_numero'
    end
    object QCentrosuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object QCentrocat_cuenta: TStringField
      FieldName = 'cat_cuenta'
      Size = 30
    end
  end
end
