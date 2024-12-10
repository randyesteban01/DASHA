object frmAlquiler: TfrmAlquiler
  Left = 451
  Top = 81
  ActiveControl = DBEdit5
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Alquiler'
  ClientHeight = 597
  ClientWidth = 767
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
  Scaled = False
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 33
    Width = 767
    Height = 152
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label2: TLabel
      Left = 8
      Top = 8
      Width = 33
      Height = 13
      Caption = 'Cliente'
    end
    object SpeedButton2: TSpeedButton
      Left = 115
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
    object Label3: TLabel
      Left = 8
      Top = 56
      Width = 43
      Height = 13
      Caption = 'Direcci'#243'n'
    end
    object Label4: TLabel
      Left = 8
      Top = 80
      Width = 44
      Height = 13
      Caption = 'Localidad'
    end
    object Label5: TLabel
      Left = 8
      Top = 104
      Width = 42
      Height = 13
      Caption = 'Tel'#233'fono'
    end
    object Label6: TLabel
      Left = 216
      Top = 104
      Width = 18
      Height = 13
      Caption = 'Fax'
    end
    object Label12: TLabel
      Left = 410
      Top = 32
      Width = 46
      Height = 13
      Caption = 'Vendedor'
    end
    object btVendedor: TSpeedButton
      Left = 514
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
    object Label13: TLabel
      Left = 410
      Top = 56
      Width = 38
      Height = 13
      Caption = 'Moneda'
    end
    object btmoneda: TSpeedButton
      Left = 514
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
      OnClick = btmonedaClick
    end
    object Label15: TLabel
      Left = 650
      Top = 56
      Width = 23
      Height = 13
      Caption = 'Tasa'
    end
    object Label10: TLabel
      Left = 410
      Top = 80
      Width = 57
      Height = 13
      Caption = 'Condiciones'
    end
    object btCondicion: TSpeedButton
      Left = 514
      Top = 80
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
      OnClick = btCondicionClick
    end
    object Label8: TLabel
      Left = 410
      Top = 104
      Width = 56
      Height = 13
      Caption = 'Dias validez'
    end
    object Label14: TLabel
      Left = 410
      Top = 128
      Width = 38
      Height = 13
      Caption = 'Entrega'
    end
    object Label16: TLabel
      Left = 8
      Top = 128
      Width = 44
      Height = 13
      Caption = 'Contacto'
    end
    object Label18: TLabel
      Left = 578
      Top = 104
      Width = 93
      Height = 13
      Caption = 'N'#250'mero de solicitud'
    end
    object lblProyecto: TLabel
      Left = 410
      Top = 8
      Width = 43
      Height = 13
      Caption = 'Proyecto'
    end
    object Label21: TLabel
      Left = 8
      Top = 32
      Width = 37
      Height = 13
      Caption = 'Nombre'
    end
    object Label22: TLabel
      Left = 184
      Top = 8
      Width = 21
      Height = 13
      Caption = 'RNC'
    end
    object edCliente: TEdit
      Left = 64
      Top = 8
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
      TabOrder = 0
      OnKeyDown = edClienteKeyDown
    end
    object DBEdit1: TDBEdit
      Left = 64
      Top = 56
      Width = 281
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'alq_DIRECCION'
      DataSource = dsAlquiler
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object DBEdit2: TDBEdit
      Left = 64
      Top = 80
      Width = 281
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'alq_LOCALIDAD'
      DataSource = dsAlquiler
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object DBEdit3: TDBEdit
      Left = 64
      Top = 104
      Width = 113
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'alq_TELEFONO'
      DataSource = dsAlquiler
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object DBEdit4: TDBEdit
      Left = 240
      Top = 104
      Width = 105
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'alq_FAX'
      DataSource = dsAlquiler
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object DBEdit7: TDBEdit
      Left = 64
      Top = 32
      Width = 281
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'alq_NOMBRE'
      DataSource = dsAlquiler
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object dbVendedor: TDBEdit
      Left = 474
      Top = 32
      Width = 37
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'VEN_CODIGO'
      DataSource = dsAlquiler
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
    end
    object tVendedor: TEdit
      Left = 538
      Top = 32
      Width = 201
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
    object DBEdit14: TDBEdit
      Left = 474
      Top = 56
      Width = 37
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'mon_codigo'
      DataSource = dsAlquiler
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
    end
    object tmoneda: TEdit
      Left = 538
      Top = 56
      Width = 108
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
    object DBEdit15: TDBEdit
      Left = 682
      Top = 56
      Width = 57
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'alq_Tasa'
      DataSource = dsAlquiler
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
    end
    object tCondicion: TEdit
      Left = 538
      Top = 80
      Width = 201
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
    object DBEdit12: TDBEdit
      Left = 474
      Top = 80
      Width = 37
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'cpa_codigo'
      DataSource = dsAlquiler
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
    end
    object DBEdit11: TDBEdit
      Left = 474
      Top = 104
      Width = 37
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataSource = dsAlquiler
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 16
    end
    object DBEdit13: TDBEdit
      Left = 474
      Top = 128
      Width = 265
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataSource = dsAlquiler
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 18
    end
    object DBEdit16: TDBEdit
      Left = 64
      Top = 128
      Width = 281
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'alq_contacto'
      DataSource = dsAlquiler
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object DBEdit17: TDBEdit
      Left = 682
      Top = 104
      Width = 57
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'alq_solicitud'
      DataSource = dsAlquiler
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 17
    end
    object DBEdit18: TDBEdit
      Left = 474
      Top = 8
      Width = 265
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'alq_proyecto'
      DataSource = dsAlquiler
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object DBEdit19: TDBEdit
      Left = 216
      Top = 8
      Width = 129
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'alq_rnc'
      DataSource = dsAlquiler
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 767
    Height = 33
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label9: TLabel
      Left = 8
      Top = 8
      Width = 29
      Height = 13
      Caption = 'Fecha'
    end
    object DBText1: TDBText
      Left = 651
      Top = 2
      Width = 114
      Height = 29
      Align = alRight
      Alignment = taRightJustify
      AutoSize = True
      DataField = 'alq_NUMERO'
      DataSource = dsAlquiler
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 136
      Top = 8
      Width = 40
      Height = 13
      Caption = 'Sucursal'
    end
    object DBEdit5: TDBEdit
      Left = 64
      Top = 6
      Width = 65
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'alq_FECHA'
      DataSource = dsAlquiler
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 184
      Top = 6
      Width = 161
      Height = 21
      DataField = 'SUC_CODIGO'
      DataSource = dsAlquiler
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
      TabOrder = 1
      TabStop = False
    end
    object ckingles: TCheckBox
      Left = 352
      Top = 8
      Width = 113
      Height = 17
      TabStop = False
      Caption = 'Imprimir en ingles'
      TabOrder = 2
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 428
    Width = 767
    Height = 169
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object Label11: TLabel
      Left = 592
      Top = 6
      Width = 42
      Height = 13
      Caption = 'SubTotal'
    end
    object Label17: TLabel
      Left = 613
      Top = 50
      Width = 21
      Height = 13
      Caption = 'Itbis'
    end
    object Label19: TLabel
      Left = 49
      Top = 105
      Width = 120
      Height = 45
      Caption = 'TOTAL'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -37
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 583
      Top = 28
      Width = 51
      Height = 13
      Caption = 'Descuento'
    end
    object btBuscar: TSpeedButton
      Left = 416
      Top = 34
      Width = 129
      Height = 25
      Caption = 'Buscar cotizaci'#243'n'
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
      OnClick = btBuscarClick
    end
    object btGrabar: TSpeedButton
      Left = 8
      Top = 7
      Width = 129
      Height = 25
      Caption = '[ F2 ] - Grabar/Imprimir'
      OnClick = btGrabarClick
    end
    object btLimpiar: TSpeedButton
      Left = 144
      Top = 7
      Width = 129
      Height = 25
      Caption = '[ F3 ] - Limpiar/Nueva'
      OnClick = btLimpiarClick
    end
    object btSalir: TSpeedButton
      Left = 416
      Top = 60
      Width = 129
      Height = 25
      Caption = '[ F10 ] - Cancelar/Salir'
      OnClick = btSalirClick
    end
    object btBuscaProd: TSpeedButton
      Left = 280
      Top = 7
      Width = 129
      Height = 25
      Caption = '[ F4 ] - Buscar producto'
      OnClick = btBuscaProdClick
    end
    object btElimina: TSpeedButton
      Left = 8
      Top = 34
      Width = 129
      Height = 25
      Caption = '[ F6 ] - Eliminar fila      '
      OnClick = btEliminaClick
    end
    object btPrecio: TSpeedButton
      Left = 144
      Top = 34
      Width = 129
      Height = 25
      Caption = '[ F7 ] - Selecci'#243'n precio'
      OnClick = btPrecioClick
    end
    object btEscalas: TSpeedButton
      Left = 280
      Top = 34
      Width = 129
      Height = 25
      Caption = '[ F8 ] - Escalas              '
      OnClick = btEscalasClick
    end
    object btnota: TSpeedButton
      Left = 416
      Top = 7
      Width = 129
      Height = 25
      Caption = '[ F5 ] - Nota Cotizacion'
      OnClick = btnotaClick
    end
    object btnuevonumero: TSpeedButton
      Left = 8
      Top = 60
      Width = 401
      Height = 25
      Caption = '[ F9 ] - Buscar una cotizaci'#243'n para grabarla con un n'#250'mero nuevo'
      OnClick = btnuevonumeroClick
    end
    object DBEdit6: TDBEdit
      Tag = 1
      Left = 640
      Top = 6
      Width = 99
      Height = 21
      TabStop = False
      AutoSelect = False
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      DataField = 'SubTotal'
      DataSource = dsAlquiler
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      OnEnter = DBEdit6Enter
    end
    object DBEdit8: TDBEdit
      Tag = 1
      Left = 640
      Top = 50
      Width = 99
      Height = 21
      TabStop = False
      AutoSelect = False
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      DataField = 'alq_ITBIS'
      DataSource = dsAlquiler
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      OnEnter = DBEdit6Enter
    end
    object DBEdit10: TDBEdit
      Tag = 1
      Left = 184
      Top = 88
      Width = 555
      Height = 81
      TabStop = False
      AutoSelect = False
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clBlack
      DataField = 'alq_TOTAL'
      DataSource = dsAlquiler
      Font.Charset = ANSI_CHARSET
      Font.Color = clLime
      Font.Height = -64
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
      OnEnter = DBEdit6Enter
    end
    object DBEdit9: TDBEdit
      Tag = 1
      Left = 640
      Top = 28
      Width = 99
      Height = 21
      TabStop = False
      AutoSelect = False
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      DataField = 'alq_DESCUENTO'
      DataSource = dsAlquiler
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
      OnEnter = DBEdit6Enter
    end
  end
  object Grid: TDBGrid
    Left = 0
    Top = 185
    Width = 767
    Height = 243
    Align = alClient
    Ctl3D = False
    DataSource = dsDetalle
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 2
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnColEnter = GridColEnter
    OnEnter = GridEnter
    OnKeyDown = GridKeyDown
    OnKeyPress = GridKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'PRO_CODIGO'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Width = 43
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRO_RFABRIC'
        Title.Alignment = taCenter
        Title.Caption = 'R. Fabric.'
        Width = 62
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRO_NOMBRE'
        Title.Caption = 'Descripci'#243'n del Producto'
        Width = 155
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DET_CANTIDAD'
        Title.Alignment = taCenter
        Title.Caption = 'Cant.'
        Width = 31
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DET_MEDIDA'
        Title.Alignment = taCenter
        Title.Caption = 'Medida'
        Width = 37
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pro_unidad_medida'
        Title.Alignment = taCenter
        Title.Caption = 'Medida'
        Width = 57
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clInfoBk
        Expanded = False
        FieldName = 'DET_ESCALA'
        ReadOnly = True
        Title.Caption = 'Escala'
        Width = 32
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'det_margen'
        Title.Alignment = taCenter
        Title.Caption = 'Margen'
        Width = 43
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DET_PRECIO'
        Title.Alignment = taCenter
        Title.Caption = 'Precio'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DET_DESCUENTO'
        Title.Alignment = taCenter
        Title.Caption = '%Desc'
        Width = 37
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DET_ITBIS'
        Title.Alignment = taCenter
        Title.Caption = '%Itbis'
        Width = 39
        Visible = True
      end
      item
        Color = clInfoBk
        Expanded = False
        FieldName = 'CalcItbis'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Itbis'
        Visible = True
      end
      item
        Color = clInfoBk
        Expanded = False
        FieldName = 'Valor'
        ReadOnly = True
        Title.Alignment = taCenter
        Visible = True
      end>
  end
  object QAlquiler: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    BeforePost = QAlquilerBeforePost
    OnCalcFields = QAlquilerCalcFields
    OnNewRecord = QAlquilerNewRecord
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
        Name = 'numero'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select CLI_CODIGO, CLI_REFERENCIA, alq_DIRECCION, '
      'alq_FAX, alq_FECHA, alq_ITBIS, alq_LOCALIDAD, '
      'alq_NOMBRE, alq_NUMERO, alq_STATUS, alq_TELEFONO, '
      'alq_TOTAL, EMP_CODIGO, USU_CODIGO, VEN_CODIGO,'
      'SUC_CODIGO, alq_DESCUENTO, mon_codigo, alq_Tasa,'
      
        'cpa_codigo, alq_nota, alq_contacto, alq_solicitud, alq_proyecto,' +
        ' alq_rnc'
      'from Alquiler'
      'where emp_codigo = :emp'
      'and alq_numero = :numero')
    Left = 392
    Top = 215
    object QAlquilerCLI_CODIGO: TIntegerField
      FieldName = 'CLI_CODIGO'
      Origin = 'COTIZACION.CLI_CODIGO'
    end
    object QAlquilerCLI_REFERENCIA: TIBStringField
      DisplayWidth = 30
      FieldName = 'CLI_REFERENCIA'
      Origin = 'COTIZACION.CLI_REFERENCIA'
      Size = 30
    end
    object QAlquilerEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'COTIZACION.EMP_CODIGO'
    end
    object QAlquilerUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
      Origin = 'COTIZACION.USU_CODIGO'
    end
    object QAlquilerVEN_CODIGO: TIntegerField
      FieldName = 'VEN_CODIGO'
      Origin = 'COTIZACION.VEN_CODIGO'
      OnGetText = QAlquilerVEN_CODIGOGetText
    end
    object QAlquilerSubTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'SubTotal'
      currency = True
      Calculated = True
    end
    object QAlquilerSUC_CODIGO: TIntegerField
      FieldName = 'SUC_CODIGO'
    end
    object QAlquilermon_codigo: TIntegerField
      FieldName = 'mon_codigo'
      OnChange = QAlquilermon_codigoChange
      OnGetText = QAlquilermon_codigoGetText
    end
    object QAlquilercpa_codigo: TIntegerField
      FieldName = 'cpa_codigo'
      OnGetText = QAlquilercpa_codigoGetText
    end
    object QAlquileralq_DIRECCION: TStringField
      FieldName = 'alq_DIRECCION'
      Size = 60
    end
    object QAlquileralq_FAX: TStringField
      FieldName = 'alq_FAX'
      Size = 30
    end
    object QAlquileralq_FECHA: TDateTimeField
      FieldName = 'alq_FECHA'
    end
    object QAlquileralq_ITBIS: TBCDField
      FieldName = 'alq_ITBIS'
      Precision = 15
    end
    object QAlquileralq_LOCALIDAD: TStringField
      FieldName = 'alq_LOCALIDAD'
      Size = 60
    end
    object QAlquileralq_NOMBRE: TStringField
      FieldName = 'alq_NOMBRE'
      Size = 60
    end
    object QAlquileralq_NUMERO: TIntegerField
      FieldName = 'alq_NUMERO'
    end
    object QAlquileralq_STATUS: TStringField
      FieldName = 'alq_STATUS'
      Size = 3
    end
    object QAlquileralq_TELEFONO: TStringField
      FieldName = 'alq_TELEFONO'
      Size = 30
    end
    object QAlquileralq_TOTAL: TBCDField
      FieldName = 'alq_TOTAL'
      DisplayFormat = ',0.00'
      Precision = 15
      Size = 2
    end
    object QAlquileralq_DESCUENTO: TBCDField
      FieldName = 'alq_DESCUENTO'
      Precision = 15
      Size = 2
    end
    object QAlquileralq_Tasa: TBCDField
      FieldName = 'alq_Tasa'
      Precision = 18
      Size = 2
    end
    object QAlquileralq_nota: TMemoField
      FieldName = 'alq_nota'
      BlobType = ftMemo
    end
    object QAlquileralq_contacto: TStringField
      FieldName = 'alq_contacto'
      Size = 60
    end
    object QAlquileralq_solicitud: TIntegerField
      FieldName = 'alq_solicitud'
    end
    object QAlquileralq_proyecto: TStringField
      FieldName = 'alq_proyecto'
      Size = 200
    end
    object QAlquileralq_rnc: TStringField
      FieldName = 'alq_rnc'
      OnChange = QAlquileralq_rncChange
      Size = 13
    end
  end
  object dsAlquiler: TDataSource
    DataSet = QAlquiler
    Left = 424
    Top = 215
  end
  object QDetalle: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    BeforePost = QDetalleBeforePost
    AfterPost = QDetalleAfterPost
    AfterDelete = QDetalleAfterDelete
    OnCalcFields = QDetalleCalcFields
    OnNewRecord = QDetalleNewRecord
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
        Name = 'numero'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select det_entregar,'
      'alq_numero, DET_CANTIDAD, DET_CONITBIS, DET_ITBIS, '
      'DET_PRECIO, DET_SECUENCIA, EMP_CODIGO, PRO_BARRA, '
      'PRO_CODIGO, PRO_NOMBRE, PRO_RFABRIC, PRO_RORIGINAL,'
      'DET_ESCALA, DET_MANEJAESCALA, DET_PRECIO1, '
      'DET_PRECIO2, DET_PRECIO3, DET_PRECIO4, '
      'DET_MEDIDA, DET_NOTA, DET_DESCUENTO,'
      'det_margen, det_costo, pro_servicio, pro_combo, mar_codigo,'
      'pro_unidad_medida, UnidadID, Medida_Precio1, Medida_Precio2,'
      'Medida_Precio3, Medida_Precio4, det_cant_unidad_medida'
      'from Det_Alquiler'
      'where '
      'emp_codigo = :emp'
      'and alq_numero = :numero'
      'order by'
      'det_secuencia')
    Left = 392
    Top = 247
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
      OnChange = QDetallePRO_CODIGOChange
    end
    object QDetallePRO_NOMBRE: TIBStringField
      DisplayWidth = 256
      FieldName = 'PRO_NOMBRE'
      Origin = 'DET_COTIZACION.PRO_NOMBRE'
      Size = 256
    end
    object QDetallePRO_RFABRIC: TIBStringField
      FieldName = 'PRO_RFABRIC'
      Origin = 'DET_COTIZACION.PRO_RFABRIC'
      OnChange = QDetallePRO_RFABRICChange
      Size = 60
    end
    object QDetallePRO_RORIGINAL: TIBStringField
      FieldName = 'PRO_RORIGINAL'
      Origin = 'DET_COTIZACION.PRO_RORIGINAL'
      OnChange = QDetallePRO_RORIGINALChange
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
      OnChange = QDetalleDET_MEDIDAChange
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
      OnChange = QDetalledet_margenChange
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
      OnChange = QDetallepro_unidad_medidaChange
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
    object QDetalledet_entregar: TDateTimeField
      FieldName = 'det_entregar'
    end
    object QDetallealq_numero: TIntegerField
      FieldName = 'alq_numero'
    end
  end
  object dsDetalle: TDataSource
    DataSet = QDetalle
    Left = 424
    Top = 247
  end
  object Search: TQrySearchDlgADO
    AliasName = DM.ADOSigma
    Left = 392
    Top = 279
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
    Top = 218
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
    Left = 280
    Top = 218
  end
  object Query1: TADOQuery
    Connection = DM.ADOSigma
    DataSource = DM.dsEmpresas
    Parameters = <>
    Left = 248
    Top = 250
  end
  object PopupMenu1: TPopupMenu
    Left = 144
    Top = 224
    object Nota1: TMenuItem
      Caption = 'Nota'
      OnClick = Nota1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Consultarmovimientos1: TMenuItem
      Caption = 'Consultar movimientos'
      OnClick = Consultarmovimientos1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Pantalladeproductos1: TMenuItem
      Caption = 'Pantalla de productos'
      OnClick = Pantalladeproductos1Click
    end
    object Pantalladeajustedeinventario1: TMenuItem
      Caption = 'Pantalla de ajuste de inventario'
      OnClick = Pantalladeajustedeinventario1Click
    end
  end
  object QUnidades: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
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
      end
      item
        Name = 'und'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'p.Precio, p.Cantidad, u.Nombre, p.Credito, p.Minimo, u.UnidadID'
      'from'
      'ProdUnidadMedida p, UnidadMedida u'
      'where'
      'p.emp_codigo = u.emp_codigo'
      'and p.UnidadID = u.UnidadID'
      'and p.emp_codigo = :emp'
      'and p.pro_codigo = :pro'
      'and u.Nombre = :und')
    Left = 176
    Top = 224
    object QUnidadesPrecio: TBCDField
      FieldName = 'Precio'
      Precision = 18
      Size = 2
    end
    object QUnidadesCantidad: TBCDField
      FieldName = 'Cantidad'
      Precision = 18
      Size = 2
    end
    object QUnidadesNombre: TStringField
      FieldName = 'Nombre'
    end
    object QUnidadesCredito: TBCDField
      FieldName = 'Credito'
      Precision = 18
      Size = 2
    end
    object QUnidadesMinimo: TBCDField
      FieldName = 'Minimo'
      Precision = 18
      Size = 2
    end
    object QUnidadesUnidadID: TStringField
      FieldName = 'UnidadID'
      Size = 1
    end
  end
  object QTipo: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    DataSource = DM.dsEmpresas
    Parameters = <
      item
        Name = 'emp_codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select top 1'
      'EMP_CODIGO, TFA_CODIGO, TFA_NOMBRE, TFA_ESPCLIENTE, '
      'TFA_SELCONDI, TFA_ACTBALANCE,  TFA_TRAERFORMAPAGO,'
      'TFA_FORMATOIMP, TFA_PUERTOIMP, TMO_CODIGO, '
      'TFA_CLIENTE, VEN_CODIGO, TFA_MENSAJE1, TFA_MENSAJE2, '
      'TFA_MENSAJE3, TFA_PRECIO, CAT_CUENTA, FPA_CODIGO, '
      'TDO_CODIGO, TFA_VERLIMITE, tfa_permite_abonar,'
      'tfa_itbis, tfa_imprimie_encabezado, tfa_rnc, Cashflow_Grupo,'
      'Cashflow_Subgrupo, Cashflow_Concepto, tfa_modifica_nombre,'
      'tip_codigo'
      'from '
      'TIPOSFACTURA'
      'where '
      'emp_codigo = :emp_codigo'
      'order by '
      'tfa_codigo')
    Left = 288
    Top = 296
    object QTipoEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
    end
    object QTipoTFA_CODIGO: TIntegerField
      FieldName = 'TFA_CODIGO'
    end
    object QTipoTFA_NOMBRE: TIBStringField
      FieldName = 'TFA_NOMBRE'
      Size = 60
    end
    object QTipoTFA_ESPCLIENTE: TIBStringField
      FieldName = 'TFA_ESPCLIENTE'
      Size = 5
    end
    object QTipoTFA_SELCONDI: TIBStringField
      FieldName = 'TFA_SELCONDI'
      Size = 5
    end
    object QTipoTFA_ACTBALANCE: TIBStringField
      FieldName = 'TFA_ACTBALANCE'
      Size = 5
    end
    object QTipoTFA_FORMATOIMP: TIntegerField
      FieldName = 'TFA_FORMATOIMP'
      Origin = 'TIPOSFACTURA.TFA_FORMATOIMP'
    end
    object QTipoTFA_PUERTOIMP: TIBStringField
      FieldName = 'TFA_PUERTOIMP'
      Origin = 'TIPOSFACTURA.TFA_PUERTOIMP'
    end
    object QTipoTMO_CODIGO: TIntegerField
      FieldName = 'TMO_CODIGO'
      Origin = 'TIPOSFACTURA.TMO_CODIGO'
    end
    object QTipoTFA_CLIENTE: TIBStringField
      FieldName = 'TFA_CLIENTE'
      Origin = 'TIPOSFACTURA.TFA_CLIENTE'
      Size = 60
    end
    object QTipoVEN_CODIGO: TIntegerField
      FieldName = 'VEN_CODIGO'
      Origin = 'TIPOSFACTURA.VEN_CODIGO'
    end
    object QTipoTFA_MENSAJE2: TIBStringField
      DisplayWidth = 500
      FieldName = 'TFA_MENSAJE2'
      Origin = 'TIPOSFACTURA.TFA_MENSAJE2'
      Size = 500
    end
    object QTipoTFA_MENSAJE3: TIBStringField
      DisplayWidth = 500
      FieldName = 'TFA_MENSAJE3'
      Origin = 'TIPOSFACTURA.TFA_MENSAJE3'
      Size = 500
    end
    object QTipoTFA_MENSAJE1: TStringField
      DisplayWidth = 2500
      FieldName = 'TFA_MENSAJE1'
      Size = 2500
    end
    object QTipoTFA_PRECIO: TIBStringField
      FieldName = 'TFA_PRECIO'
      Origin = 'TIPOSFACTURA.TFA_PRECIO'
      Size = 8
    end
    object QTipoCAT_CUENTA: TIBStringField
      FieldName = 'CAT_CUENTA'
      Origin = 'TIPOSFACTURA.CAT_CUENTA'
      Size = 15
    end
    object QTipoFPA_CODIGO: TIntegerField
      FieldName = 'FPA_CODIGO'
      Origin = 'TIPOSFACTURA.FPA_CODIGO'
    end
    object QTipoTDO_CODIGO: TIBStringField
      FieldName = 'TDO_CODIGO'
      Origin = 'TIPOSFACTURA.TDO_CODIGO'
      Size = 3
    end
    object QTipoTFA_VERLIMITE: TIBStringField
      FieldName = 'TFA_VERLIMITE'
      Origin = 'TIPOSFACTURA.TFA_VERLIMITE'
      Size = 5
    end
    object QTipoTFA_TRAERFORMAPAGO: TStringField
      FieldName = 'TFA_TRAERFORMAPAGO'
      Size = 5
    end
    object QTipotfa_permite_abonar: TStringField
      FieldName = 'tfa_permite_abonar'
      Size = 5
    end
    object QTipotfa_itbis: TStringField
      FieldName = 'tfa_itbis'
      Size = 5
    end
    object QTipotfa_imprimie_encabezado: TStringField
      FieldName = 'tfa_imprimie_encabezado'
      Size = 5
    end
    object QTipotfa_rnc: TStringField
      FieldName = 'tfa_rnc'
      Size = 5
    end
    object QTipoCashflow_Grupo: TIntegerField
      FieldName = 'Cashflow_Grupo'
    end
    object QTipoCashflow_Subgrupo: TIntegerField
      FieldName = 'Cashflow_Subgrupo'
    end
    object QTipoCashflow_Concepto: TIntegerField
      FieldName = 'Cashflow_Concepto'
    end
    object QTipotfa_modifica_nombre: TStringField
      FieldName = 'tfa_modifica_nombre'
      Size = 5
    end
    object QTipotip_codigo: TIntegerField
      FieldName = 'tip_codigo'
    end
  end
end
