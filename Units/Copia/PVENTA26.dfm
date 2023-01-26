object frmCotizacion: TfrmCotizacion
  Left = 365
  Top = 293
  ActiveControl = DBEdit5
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Cotizaci'#243'n'
  ClientHeight = 416
  ClientWidth = 692
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
    Width = 692
    Height = 128
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
      Top = 5
      Width = 33
      Height = 13
      Caption = 'Cliente'
    end
    object SpeedButton2: TSpeedButton
      Left = 116
      Top = 5
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
      Top = 29
      Width = 43
      Height = 13
      Caption = 'Direcci'#243'n'
    end
    object Label4: TLabel
      Left = 8
      Top = 53
      Width = 44
      Height = 13
      Caption = 'Localidad'
    end
    object Label5: TLabel
      Left = 8
      Top = 77
      Width = 42
      Height = 13
      Caption = 'Tel'#233'fono'
    end
    object Label6: TLabel
      Left = 216
      Top = 77
      Width = 18
      Height = 13
      Caption = 'Fax'
    end
    object Label12: TLabel
      Left = 352
      Top = 5
      Width = 46
      Height = 13
      Caption = 'Vendedor'
    end
    object btVendedor: TSpeedButton
      Left = 455
      Top = 5
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
      Left = 352
      Top = 29
      Width = 38
      Height = 13
      Caption = 'Moneda'
    end
    object btmoneda: TSpeedButton
      Left = 455
      Top = 29
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
      Left = 595
      Top = 29
      Width = 23
      Height = 13
      Caption = 'Tasa'
    end
    object Label10: TLabel
      Left = 352
      Top = 53
      Width = 57
      Height = 13
      Caption = 'Condiciones'
    end
    object btCondicion: TSpeedButton
      Left = 455
      Top = 53
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
      Left = 352
      Top = 77
      Width = 56
      Height = 13
      Caption = 'Dias validez'
    end
    object Label14: TLabel
      Left = 483
      Top = 77
      Width = 75
      Height = 13
      Caption = 'Tiempo entrega'
    end
    object Label16: TLabel
      Left = 8
      Top = 101
      Width = 44
      Height = 13
      Caption = 'Contacto'
    end
    object edCliente: TEdit
      Left = 64
      Top = 5
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
      Top = 29
      Width = 281
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'COT_DIRECCION'
      DataSource = dsCotizacion
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object DBEdit2: TDBEdit
      Left = 64
      Top = 53
      Width = 281
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'COT_LOCALIDAD'
      DataSource = dsCotizacion
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object DBEdit3: TDBEdit
      Left = 64
      Top = 77
      Width = 113
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'COT_TELEFONO'
      DataSource = dsCotizacion
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object DBEdit4: TDBEdit
      Left = 240
      Top = 77
      Width = 105
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'COT_FAX'
      DataSource = dsCotizacion
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object DBEdit7: TDBEdit
      Left = 141
      Top = 5
      Width = 204
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'COT_NOMBRE'
      DataSource = dsCotizacion
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object dbVendedor: TDBEdit
      Left = 419
      Top = 5
      Width = 33
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'VEN_CODIGO'
      DataSource = dsCotizacion
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object tVendedor: TEdit
      Left = 480
      Top = 5
      Width = 204
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
    object DBEdit14: TDBEdit
      Left = 419
      Top = 29
      Width = 33
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'mon_codigo'
      DataSource = dsCotizacion
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
    end
    object tmoneda: TEdit
      Left = 480
      Top = 29
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
      TabOrder = 10
    end
    object DBEdit15: TDBEdit
      Left = 627
      Top = 29
      Width = 57
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'cot_Tasa'
      DataSource = dsCotizacion
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
    end
    object tCondicion: TEdit
      Left = 480
      Top = 53
      Width = 204
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
    object DBEdit12: TDBEdit
      Left = 419
      Top = 53
      Width = 33
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'cpa_codigo'
      DataSource = dsCotizacion
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
    end
    object DBEdit11: TDBEdit
      Left = 419
      Top = 77
      Width = 33
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'cot_validez'
      DataSource = dsCotizacion
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
    end
    object DBEdit13: TDBEdit
      Left = 563
      Top = 77
      Width = 121
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'cot_tiempo_entrega'
      DataSource = dsCotizacion
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 15
    end
    object DBEdit16: TDBEdit
      Left = 64
      Top = 101
      Width = 281
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'cot_contacto'
      DataSource = dsCotizacion
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 692
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
      Left = 576
      Top = 2
      Width = 114
      Height = 29
      Align = alRight
      Alignment = taRightJustify
      AutoSize = True
      DataField = 'COT_NUMERO'
      DataSource = dsCotizacion
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
      DataField = 'COT_FECHA'
      DataSource = dsCotizacion
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
      DataSource = dsCotizacion
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
  end
  object Panel5: TPanel
    Left = 0
    Top = 319
    Width = 692
    Height = 97
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
      Left = 536
      Top = 6
      Width = 42
      Height = 13
      Caption = 'SubTotal'
    end
    object Label17: TLabel
      Left = 536
      Top = 50
      Width = 21
      Height = 13
      Caption = 'Itbis'
    end
    object Label19: TLabel
      Left = 536
      Top = 72
      Width = 24
      Height = 13
      Caption = 'Total'
    end
    object Label1: TLabel
      Left = 536
      Top = 28
      Width = 51
      Height = 13
      Caption = 'Descuento'
    end
    object btBuscar: TSpeedButton
      Left = 392
      Top = 36
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
      Left = 136
      Top = 7
      Width = 129
      Height = 25
      Caption = '[ F3 ] - Limpiar/Nueva'
      OnClick = btLimpiarClick
    end
    object btSalir: TSpeedButton
      Left = 392
      Top = 65
      Width = 129
      Height = 25
      Caption = '[ F10 ] - Cancelar/Salir'
      OnClick = btSalirClick
    end
    object btBuscaProd: TSpeedButton
      Left = 264
      Top = 7
      Width = 129
      Height = 25
      Caption = '[ F4 ] - Buscar producto'
      OnClick = btBuscaProdClick
    end
    object btElimina: TSpeedButton
      Left = 8
      Top = 36
      Width = 129
      Height = 25
      Caption = '[ F6 ] - Eliminar fila      '
      OnClick = btEliminaClick
    end
    object btPrecio: TSpeedButton
      Left = 136
      Top = 36
      Width = 129
      Height = 25
      Caption = '[ F7 ] - Selecci'#243'n precio'
      OnClick = btPrecioClick
    end
    object btEscalas: TSpeedButton
      Left = 264
      Top = 36
      Width = 129
      Height = 25
      Caption = '[ F8 ] - Escalas              '
      OnClick = btEscalasClick
    end
    object btnota: TSpeedButton
      Left = 392
      Top = 7
      Width = 129
      Height = 25
      Caption = '[ F5 ] - Nota Cotizacion'
      OnClick = btnotaClick
    end
    object btnuevonumero: TSpeedButton
      Left = 8
      Top = 65
      Width = 385
      Height = 25
      Caption = '[ F9 ] - Buscar una cotizaci'#243'n para grabarla con un n'#250'mero nuevo'
      OnClick = btnuevonumeroClick
    end
    object DBEdit6: TDBEdit
      Tag = 1
      Left = 600
      Top = 6
      Width = 89
      Height = 21
      TabStop = False
      AutoSelect = False
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      DataField = 'SubTotal'
      DataSource = dsCotizacion
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
      Left = 600
      Top = 50
      Width = 89
      Height = 21
      TabStop = False
      AutoSelect = False
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      DataField = 'COT_ITBIS'
      DataSource = dsCotizacion
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
      Left = 600
      Top = 72
      Width = 89
      Height = 21
      TabStop = False
      AutoSelect = False
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      DataField = 'COT_TOTAL'
      DataSource = dsCotizacion
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
      OnEnter = DBEdit6Enter
    end
    object DBEdit9: TDBEdit
      Tag = 1
      Left = 600
      Top = 28
      Width = 89
      Height = 21
      TabStop = False
      AutoSelect = False
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      DataField = 'COT_DESCUENTO'
      DataSource = dsCotizacion
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
    Left = 30
    Top = 161
    Width = 662
    Height = 158
    Align = alClient
    Ctl3D = False
    DataSource = dsDetalle
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
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
        Title.Caption = 'Ref. Fabricante'
        Width = 79
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRO_NOMBRE'
        Title.Caption = 'Descripci'#243'n del Producto'
        Width = 107
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
        FieldName = 'DET_CONITBIS'
        Title.Alignment = taCenter
        Title.Caption = 'Itbis?'
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
  object Panel1: TPanel
    Left = 0
    Top = 161
    Width = 30
    Height = 158
    Align = alLeft
    BevelOuter = bvLowered
    TabOrder = 4
    object btnotaprod: TSpeedButton
      Left = 4
      Top = 6
      Width = 23
      Height = 22
      Hint = 'Nota para el producto'
      Flat = True
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000202020404040
        4040406060602020204040406060604040400000000000000000000000000000
        000000000000000000007F7F7FFFFFFFFFFFFF7F7F7FBFBFBFFFFFFFBFBFBF20
        20206060604040400000000000000000000000000000000000007F7F7FFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBF2020206060600000000000
        000000000000000000007F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFBFBFBF4040402020200000000000000000000000007F7F7FFFFFFF
        FFFFFFDFDFDFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF3F3F3F4040404040
        404040406060600000007F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBF2020204040407F7F7FFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF7F7F7F6060607F7F7FFFFFFFFFFFFFDFDFDFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7F4040407F7F7FFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF4040407F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4040407F7F7FFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF4040407F7F7FFFFFFFFFFFFFDFDFDFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF4040407F7F7FFFFFFF
        FFFFFF7F7FFFFFFFFF3F3FFFBFBFFF7F7FFFBFBFFFFFFFFF7F7FFFFFFFFF3F3F
        FFBFBFFFFFFFFF4040407F7F7FFFFFFFFFFFFF7F7FFF7F7FFF7F7FFF7F7FFFFF
        FFFF7F7FFFFFFFFF7F7FFFFFFFFF3F3FFFFFFFFFFFFFFF4040407F7F7FFFFFFF
        FFFFFFBFBFFFFFFFFFBFBFFFFFFFFF7F7FFFFFFFFF7F7FFF7F7FFFBFBFFF7F7F
        FFBFBFFFFFFFFF4040403F3F3F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F202020}
      ParentShowHint = False
      ShowHint = True
      OnClick = btnotaprodClick
    end
  end
  object QCotizacion: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    BeforePost = QCotizacionBeforePost
    OnCalcFields = QCotizacionCalcFields
    OnNewRecord = QCotizacionNewRecord
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
      'select CLI_CODIGO, CLI_REFERENCIA, COT_DIRECCION, '
      'COT_FAX, COT_FECHA, COT_ITBIS, COT_LOCALIDAD, '
      'COT_NOMBRE, COT_NUMERO, COT_STATUS, COT_TELEFONO, '
      'COT_TOTAL, EMP_CODIGO, USU_CODIGO, VEN_CODIGO,'
      'SUC_CODIGO, COT_DESCUENTO, mon_codigo, cot_Tasa,'
      'cpa_codigo, cot_validez, cot_tiempo_entrega, cot_nota,'
      'cot_contacto'
      'from COTIZACION'
      'where emp_codigo = :emp'
      'and cot_numero = :numero')
    Left = 392
    Top = 200
    object QCotizacionCLI_CODIGO: TIntegerField
      FieldName = 'CLI_CODIGO'
      Origin = 'COTIZACION.CLI_CODIGO'
    end
    object QCotizacionCLI_REFERENCIA: TIBStringField
      FieldName = 'CLI_REFERENCIA'
      Origin = 'COTIZACION.CLI_REFERENCIA'
      Size = 10
    end
    object QCotizacionCOT_DIRECCION: TIBStringField
      FieldName = 'COT_DIRECCION'
      Origin = 'COTIZACION.COT_DIRECCION'
      Size = 60
    end
    object QCotizacionCOT_FAX: TIBStringField
      FieldName = 'COT_FAX'
      Origin = 'COTIZACION.COT_FAX'
      Size = 30
    end
    object QCotizacionCOT_FECHA: TDateTimeField
      FieldName = 'COT_FECHA'
      Origin = 'COTIZACION.COT_FECHA'
      EditMask = 'cc-cc-cccc'
    end
    object QCotizacionCOT_ITBIS: TFloatField
      FieldName = 'COT_ITBIS'
      Origin = 'COTIZACION.COT_ITBIS'
      currency = True
    end
    object QCotizacionCOT_LOCALIDAD: TIBStringField
      FieldName = 'COT_LOCALIDAD'
      Origin = 'COTIZACION.COT_LOCALIDAD'
      Size = 60
    end
    object QCotizacionCOT_NOMBRE: TIBStringField
      FieldName = 'COT_NOMBRE'
      Origin = 'COTIZACION.COT_NOMBRE'
      Size = 60
    end
    object QCotizacionCOT_NUMERO: TIntegerField
      FieldName = 'COT_NUMERO'
      Origin = 'COTIZACION.COT_NUMERO'
      DisplayFormat = '000000'
    end
    object QCotizacionCOT_STATUS: TIBStringField
      FieldName = 'COT_STATUS'
      Origin = 'COTIZACION.COT_STATUS'
      Size = 3
    end
    object QCotizacionCOT_TELEFONO: TIBStringField
      FieldName = 'COT_TELEFONO'
      Origin = 'COTIZACION.COT_TELEFONO'
      Size = 30
    end
    object QCotizacionCOT_TOTAL: TFloatField
      FieldName = 'COT_TOTAL'
      Origin = 'COTIZACION.COT_TOTAL'
      currency = True
    end
    object QCotizacionEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'COTIZACION.EMP_CODIGO'
    end
    object QCotizacionUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
      Origin = 'COTIZACION.USU_CODIGO'
    end
    object QCotizacionVEN_CODIGO: TIntegerField
      FieldName = 'VEN_CODIGO'
      Origin = 'COTIZACION.VEN_CODIGO'
      OnGetText = QCotizacionVEN_CODIGOGetText
    end
    object QCotizacionSubTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'SubTotal'
      currency = True
      Calculated = True
    end
    object QCotizacionSUC_CODIGO: TIntegerField
      FieldName = 'SUC_CODIGO'
    end
    object QCotizacionCOT_DESCUENTO: TBCDField
      FieldName = 'COT_DESCUENTO'
      currency = True
      Precision = 15
      Size = 2
    end
    object QCotizacionmon_codigo: TIntegerField
      FieldName = 'mon_codigo'
      OnChange = QCotizacionmon_codigoChange
      OnGetText = QCotizacionmon_codigoGetText
    end
    object QCotizacioncot_Tasa: TBCDField
      FieldName = 'cot_Tasa'
      currency = True
      Precision = 18
      Size = 2
    end
    object QCotizacioncpa_codigo: TIntegerField
      FieldName = 'cpa_codigo'
      OnGetText = QCotizacioncpa_codigoGetText
    end
    object QCotizacioncot_validez: TIntegerField
      FieldName = 'cot_validez'
    end
    object QCotizacioncot_tiempo_entrega: TStringField
      FieldName = 'cot_tiempo_entrega'
      Size = 30
    end
    object QCotizacioncot_nota: TMemoField
      FieldName = 'cot_nota'
      BlobType = ftMemo
    end
    object QCotizacioncot_contacto: TStringField
      FieldName = 'cot_contacto'
      Size = 60
    end
  end
  object dsCotizacion: TDataSource
    DataSet = QCotizacion
    Left = 424
    Top = 200
  end
  object QDetalle: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    BeforePost = QDetalleBeforePost
    AfterPost = QDetalleAfterPost
    AfterDelete = QDetalleAfterDelete
    OnCalcFields = QDetalleCalcFields
    OnNewRecord = QDetalleNewRecord
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
      'select '
      'COT_NUMERO, DET_CANTIDAD, DET_CONITBIS, DET_ITBIS, '
      'DET_PRECIO, DET_SECUENCIA, EMP_CODIGO, PRO_BARRA, '
      'PRO_CODIGO, PRO_NOMBRE, PRO_RFABRIC, PRO_RORIGINAL,'
      'DET_ESCALA, DET_MANEJAESCALA, DET_PRECIO1, '
      'DET_PRECIO2, DET_PRECIO3, DET_PRECIO4, '
      'DET_MEDIDA, DET_NOTA, DET_DESCUENTO,'
      'det_margen, det_costo, pro_servicio, pro_combo, mar_codigo'
      'from DET_COTIZACION'
      'where '
      'emp_codigo = :emp'
      'and cot_numero = :numero')
    Left = 392
    Top = 232
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
      DisplayFormat = '###,###,###.00##'
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
      FieldName = 'PRO_NOMBRE'
      Origin = 'DET_COTIZACION.PRO_NOMBRE'
      Size = 60
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
      DisplayFormat = '###,###,###.00##'
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
  end
  object dsDetalle: TDataSource
    DataSet = QDetalle
    Left = 424
    Top = 232
  end
  object Search: TQrySearchDlgADO
    AliasName = DM.ADOSigma
    Left = 392
    Top = 264
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
    Left = 280
    Top = 208
  end
  object Query1: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <>
    Left = 248
    Top = 240
  end
end
