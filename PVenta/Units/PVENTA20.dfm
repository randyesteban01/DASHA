object frmPedidosProv: TfrmPedidosProv
  Left = 718
  Top = 325
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Orden de Compra'
  ClientHeight = 448
  ClientWidth = 930
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
  TextHeight = 14
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 930
    Height = 180
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label2: TLabel
      Left = 9
      Top = 58
      Width = 56
      Height = 14
      Caption = 'Proveedor'
    end
    object btProveedor: TSpeedButton
      Left = 125
      Top = 58
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
    object Label3: TLabel
      Left = 9
      Top = 82
      Width = 49
      Height = 14
      Caption = 'Direcci'#243'n'
    end
    object Label4: TLabel
      Left = 9
      Top = 106
      Width = 49
      Height = 14
      Caption = 'Localidad'
    end
    object Label5: TLabel
      Left = 9
      Top = 129
      Width = 49
      Height = 14
      Caption = 'Tel'#233'fono'
    end
    object Label6: TLabel
      Left = 155
      Top = 129
      Width = 18
      Height = 14
      Caption = 'Fax'
    end
    object Label8: TLabel
      Left = 267
      Top = 129
      Width = 20
      Height = 14
      Caption = 'Bce'
    end
    object Label9: TLabel
      Left = 9
      Top = 9
      Width = 32
      Height = 14
      Caption = 'Fecha'
    end
    object Label10: TLabel
      Left = 396
      Top = 56
      Width = 64
      Height = 14
      Caption = 'Condiciones'
    end
    object btCondicion: TSpeedButton
      Left = 495
      Top = 56
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
      OnClick = btCondicionClick
    end
    object Label1: TLabel
      Left = 9
      Top = 153
      Width = 54
      Height = 14
      Caption = 'Cotizaci'#243'n'
      FocusControl = DBEdit9
    end
    object Label14: TLabel
      Left = 145
      Top = 9
      Width = 44
      Height = 14
      Caption = 'Sucursal'
    end
    object Label11: TLabel
      Left = 181
      Top = 153
      Width = 108
      Height = 14
      Caption = 'Solicitud de Compra'
      FocusControl = DBEdit13
    end
    object Label12: TLabel
      Left = 396
      Top = 80
      Width = 42
      Height = 14
      Caption = 'Courrier'
    end
    object Label13: TLabel
      Left = 396
      Top = 32
      Width = 43
      Height = 14
      Caption = 'Moneda'
    end
    object btmoneda: TSpeedButton
      Left = 495
      Top = 32
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
      OnClick = btmonedaClick
    end
    object Label15: TLabel
      Left = 663
      Top = 37
      Width = 25
      Height = 14
      Caption = 'Tasa'
    end
    object Label20: TLabel
      Left = 396
      Top = 9
      Width = 37
      Height = 14
      Caption = 'Centro'
    end
    object btcentro: TSpeedButton
      Left = 495
      Top = 9
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
      OnClick = btcentroClick
    end
    object Label25: TLabel
      Left = 9
      Top = 33
      Width = 38
      Height = 14
      Caption = 'Depto.'
    end
    object btdepto: TSpeedButton
      Left = 125
      Top = 32
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
      OnClick = btdeptoClick
    end
    object edProveedor: TEdit
      Left = 69
      Top = 58
      Width = 53
      Height = 23
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnKeyDown = edProveedorKeyDown
    end
    object DBEdit1: TDBEdit
      Left = 69
      Top = 82
      Width = 320
      Height = 22
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'PED_DIRECCION'
      DataSource = dsPedidos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object DBEdit2: TDBEdit
      Left = 69
      Top = 106
      Width = 320
      Height = 22
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'PED_LOCALIDAD'
      DataSource = dsPedidos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object DBEdit3: TDBEdit
      Left = 69
      Top = 129
      Width = 79
      Height = 23
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'PED_TELEFONO'
      DataSource = dsPedidos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object DBEdit4: TDBEdit
      Left = 181
      Top = 129
      Width = 79
      Height = 23
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'PED_FAX'
      DataSource = dsPedidos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object tBalance: TEdit
      Left = 293
      Top = 129
      Width = 96
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
      TabOrder = 14
    end
    object DBEdit5: TDBEdit
      Left = 69
      Top = 9
      Width = 70
      Height = 22
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'PED_FECHA'
      DataSource = dsPedidos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object tCondicion: TEdit
      Left = 522
      Top = 56
      Width = 263
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
      TabOrder = 15
    end
    object DBEdit12: TDBEdit
      Left = 465
      Top = 56
      Width = 27
      Height = 23
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'CPA_CODIGO'
      DataSource = dsPedidos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
    end
    object DBEdit6: TDBEdit
      Left = 155
      Top = 58
      Width = 234
      Height = 23
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = clInfoBk
      DataField = 'PED_NOMBRE'
      DataSource = dsPedidos
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 16
    end
    object DBEdit9: TDBEdit
      Left = 69
      Top = 153
      Width = 79
      Height = 23
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'PED_COTIZACION'
      DataSource = dsPedidos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 198
      Top = 9
      Width = 192
      Height = 22
      DataField = 'SUC_CODIGO'
      DataSource = dsPedidos
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
      TabOrder = 1
    end
    object DBEdit13: TDBEdit
      Left = 293
      Top = 153
      Width = 96
      Height = 23
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'ped_solicitud_compra'
      DataSource = dsPedidos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
    end
    object DBRichEdit1: TDBRichEdit
      Left = 465
      Top = 106
      Width = 320
      Height = 70
      TabStop = False
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'ped_envio'
      DataSource = dsPedidos
      TabOrder = 17
    end
    object tmoneda: TEdit
      Left = 522
      Top = 32
      Width = 135
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
      TabOrder = 18
    end
    object DBEdit15: TDBEdit
      Left = 698
      Top = 32
      Width = 87
      Height = 23
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'ped_tasa'
      DataSource = dsPedidos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
    end
    object DBEdit14: TDBEdit
      Left = 465
      Top = 32
      Width = 27
      Height = 23
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'mon_codigo'
      DataSource = dsPedidos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 465
      Top = 80
      Width = 320
      Height = 22
      DataField = 'cou_codigo'
      DataSource = dsPedidos
      KeyField = 'cou_codigo'
      ListField = 'cou_nombre'
      ListSource = dsCourriers
      TabOrder = 19
    end
    object DBEdit16: TDBEdit
      Left = 465
      Top = 9
      Width = 27
      Height = 22
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'cen_codigo'
      DataSource = dsPedidos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
    end
    object tcentro: TEdit
      Left = 522
      Top = 9
      Width = 263
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
      TabOrder = 20
    end
    object DBEdit25: TDBEdit
      Left = 69
      Top = 33
      Width = 53
      Height = 23
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'dep_codigo'
      DataSource = dsPedidos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object tdepto: TEdit
      Left = 155
      Top = 33
      Width = 234
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
      TabOrder = 21
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 353
    Width = 930
    Height = 95
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object Label16: TLabel
      Left = 728
      Top = 30
      Width = 59
      Height = 14
      Caption = 'Descuento'
    end
    object Label17: TLabel
      Left = 728
      Top = 51
      Width = 23
      Height = 14
      Caption = 'Itbis'
    end
    object Label19: TLabel
      Left = 728
      Top = 72
      Width = 28
      Height = 14
      Caption = 'Total'
    end
    object Label7: TLabel
      Left = 728
      Top = 9
      Width = 53
      Height = 14
      Caption = 'Sub Total'
    end
    object Label18: TLabel
      Left = 9
      Top = 11
      Width = 118
      Height = 14
      Caption = 'Idioma para impresion'
    end
    object btBuscaProd: TSpeedButton
      Left = 281
      Top = 34
      Width = 139
      Height = 27
      Caption = '[ F4 ] - Buscar producto'
      OnClick = btBuscaProdClick
    end
    object btElimina: TSpeedButton
      Left = 8
      Top = 64
      Width = 132
      Height = 26
      Caption = '[ F5 ] - Eliminar fila       '
      OnClick = btEliminaClick
    end
    object btNota: TSpeedButton
      Left = 141
      Top = 64
      Width = 139
      Height = 26
      Caption = '[ F7 ] - Nota de la orden'
      OnClick = btNotaClick
    end
    object DBText1: TDBText
      Left = 293
      Top = 8
      Width = 70
      Height = 18
      DataField = 'PED_NUMERO'
      DataSource = dsPedidos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btBuscaPedido: TSpeedButton
      Left = 281
      Top = 64
      Width = 139
      Height = 26
      Caption = 'Buscar Orden'
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
      OnClick = btBuscaPedidoClick
    end
    object btGrabar: TSpeedButton
      Left = 8
      Top = 34
      Width = 132
      Height = 27
      Caption = '[ F2 ] - Grabar/Imprimir'
      OnClick = btGrabarClick
    end
    object btLimpiar: TSpeedButton
      Left = 141
      Top = 34
      Width = 139
      Height = 27
      Caption = '[ F3 ] - Limpiar/Nueva   '
      OnClick = btLimpiarClick
    end
    object btSalir: TSpeedButton
      Left = 422
      Top = 64
      Width = 156
      Height = 26
      Caption = '[ F10 ] - Cancelar/Salir         '
      OnClick = btSalirClick
    end
    object btBuscaProdProv: TSpeedButton
      Left = 422
      Top = 34
      Width = 156
      Height = 27
      Caption = '[ F6 ] - Productos proveedor'
      OnClick = btBuscaProdProvClick
    end
    object btlogistica: TSpeedButton
      Left = 498
      Top = 3
      Width = 80
      Height = 27
      Caption = 'Logistica'
      OnClick = btlogisticaClick
    end
    object DBEdit7: TDBEdit
      Left = 789
      Top = 25
      Width = 134
      Height = 22
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      DataField = 'PED_DESCUENTO'
      DataSource = dsPedidos
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit8: TDBEdit
      Left = 789
      Top = 46
      Width = 134
      Height = 23
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      DataField = 'PED_ITBIS'
      DataSource = dsPedidos
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object DBEdit10: TDBEdit
      Left = 789
      Top = 68
      Width = 134
      Height = 22
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      DataField = 'PED_TOTAL'
      DataSource = dsPedidos
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object DBEdit11: TDBEdit
      Left = 789
      Top = 3
      Width = 134
      Height = 23
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      DataField = 'SubTotal'
      DataSource = dsPedidos
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object cbidioma: TComboBox
      Left = 129
      Top = 6
      Width = 156
      Height = 22
      BevelKind = bkFlat
      Style = csDropDownList
      ItemHeight = 14
      ItemIndex = 0
      TabOrder = 4
      Text = 'Espa'#241'ol'
      Items.Strings = (
        'Espa'#241'ol'
        'Ingles')
    end
  end
  object Grid: TDBGrid
    Left = 0
    Top = 180
    Width = 930
    Height = 120
    Align = alClient
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
    PopupMenu = PopupMenu1
    TabOrder = 1
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
        Width = 48
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRO_RFABRIC'
        Title.Alignment = taCenter
        Title.Caption = 'Ref. Fabricante'
        Width = 82
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DET_DESCRIPCION'
        Title.Caption = 'Descripci'#243'n del Producto'
        Width = 212
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'det_cantempaque'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Cant/Emp'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DET_CANTIDAD'
        Title.Alignment = taCenter
        Title.Caption = 'Cant'
        Width = 58
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DET_MEDIDA'
        Title.Alignment = taCenter
        Title.Caption = 'Medida'
        Width = 57
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DET_COSTOUND'
        Title.Alignment = taCenter
        Title.Caption = 'Costo Und'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DET_COSTOEMP'
        Title.Alignment = taCenter
        Title.Caption = 'Costo Emp'
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DET_ITBIS'
        Title.Alignment = taCenter
        Title.Caption = '%Itbis'
        Width = 54
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DET_DESCUENTO'
        Title.Alignment = taCenter
        Title.Caption = '%Desc'
        Width = 48
        Visible = True
      end
      item
        Color = clInfoBk
        Expanded = False
        FieldName = 'Valor'
        Title.Alignment = taCenter
        Width = 92
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 300
    Width = 930
    Height = 53
    Align = alBottom
    TabOrder = 3
    object Label31: TLabel
      Left = 87
      Top = 6
      Width = 85
      Height = 14
      Caption = 'Costo Und Ant.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label32: TLabel
      Left = 87
      Top = 29
      Width = 87
      Height = 14
      Caption = 'Costo Emp Ant.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label33: TLabel
      Left = 4
      Top = 6
      Width = 62
      Height = 14
      Caption = 'Costo Neto'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object sbPrecios: TScrollBox
      Left = 250
      Top = 1
      Width = 673
      Height = 51
      BevelKind = bkFlat
      BorderStyle = bsNone
      TabOrder = 0
      object Label21: TLabel
        Left = 2
        Top = 3
        Width = 127
        Height = 14
        Caption = '%Beneficio / Precio #1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label22: TLabel
        Left = 2
        Top = 26
        Width = 127
        Height = 14
        Caption = '%Beneficio / Precio #2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label23: TLabel
        Left = 322
        Top = 3
        Width = 127
        Height = 14
        Caption = '%Beneficio / Precio #3'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label24: TLabel
        Left = 322
        Top = 26
        Width = 127
        Height = 14
        Caption = '%Beneficio / Precio #4'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DBEdit17: TDBEdit
        Left = 129
        Top = 1
        Width = 54
        Height = 23
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'pro_beneficio'
        DataSource = dsDetalle
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit18: TDBEdit
        Left = 205
        Top = 1
        Width = 111
        Height = 23
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'pro_precio1'
        DataSource = dsDetalle
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnKeyDown = DBEdit18KeyDown
      end
      object DBEdit19: TDBEdit
        Left = 129
        Top = 24
        Width = 54
        Height = 22
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'pro_beneficio2'
        DataSource = dsDetalle
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object DBEdit20: TDBEdit
        Left = 205
        Top = 24
        Width = 111
        Height = 22
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'pro_precio2'
        DataSource = dsDetalle
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnKeyDown = DBEdit20KeyDown
      end
      object DBEdit21: TDBEdit
        Left = 448
        Top = 1
        Width = 54
        Height = 23
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'pro_beneficio3'
        DataSource = dsDetalle
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object DBEdit22: TDBEdit
        Left = 504
        Top = 1
        Width = 111
        Height = 23
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'pro_precio3'
        DataSource = dsDetalle
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnKeyDown = DBEdit22KeyDown
      end
      object DBEdit23: TDBEdit
        Left = 448
        Top = 24
        Width = 54
        Height = 22
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'pro_beneficio4'
        DataSource = dsDetalle
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
      end
      object DBEdit24: TDBEdit
        Left = 504
        Top = 24
        Width = 111
        Height = 22
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'pro_precio4'
        DataSource = dsDetalle
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        OnKeyDown = DBEdit24KeyDown
      end
    end
    object DBEdit28: TDBEdit
      Left = 173
      Top = 4
      Width = 76
      Height = 23
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'det_costound_ant'
      DataSource = dsDetalle
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object DBEdit29: TDBEdit
      Left = 173
      Top = 27
      Width = 76
      Height = 23
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'det_costoemp_ant'
      DataSource = dsDetalle
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object DBEdit30: TDBEdit
      Left = 4
      Top = 27
      Width = 78
      Height = 23
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'CostoNeto'
      DataSource = dsDetalle
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object btprecios: TBitBtn
      Left = 34
      Top = 22
      Width = 226
      Height = 26
      Caption = '[ F8 ] - Precios x Unidad de Medida'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      Visible = False
      OnClick = btpreciosClick
    end
  end
  object Lista: TListBox
    Left = 43
    Top = 224
    Width = 208
    Height = 53
    ItemHeight = 14
    TabOrder = 4
    Visible = False
  end
  object Search: TQrySearchDlgADO
    AliasFields.Strings = (
      'Nombre'
      'Codigo')
    AliasName = DM.ADOSigma
    Left = 320
    Top = 216
  end
  object Query1: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <>
    Left = 352
    Top = 176
  end
  object QPedidos: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    BeforePost = QPedidosBeforePost
    AfterPost = QPedidosAfterPost
    OnCalcFields = QPedidosCalcFields
    OnNewRecord = QPedidosNewRecord
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
        Name = 'num'
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
      end>
    SQL.Strings = (
      'select '
      'EMP_CODIGO, PED_TIPO, PED_NUMERO, PED_FECHA, '
      'VEN_CODIGO, CPA_CODIGO, CLI_CODIGO, PED_DIRECCION, '
      'PED_LOCALIDAD, PED_TELEFONO, PED_FAX, PED_DESCUENTO, '
      'PED_ITBIS, PED_OTROS, PED_TOTAL, PED_STATUS, SUP_CODIGO, '
      'PED_NOMBRE, CLI_REFERENCIA, PED_NOTA, PED_COTIZACION, '
      'USU_CODIGO, SUC_CODIGO, ped_solicitud_compra, ped_envio,'
      'mon_codigo, ped_tasa, cou_codigo, cen_codigo, ped_confirmado,'
      'dep_codigo'
      'from '
      'PEDIDOS'
      'where '
      'emp_codigo = :emp_codigo'
      'and ped_tipo = '#39'S'#39
      'and ped_numero = :num'
      'and suc_codigo = :suc')
    Left = 352
    Top = 208
    object QPedidosEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Required = True
    end
    object QPedidosPED_TIPO: TIBStringField
      FieldName = 'PED_TIPO'
      Required = True
      Size = 1
    end
    object QPedidosPED_NUMERO: TIntegerField
      FieldName = 'PED_NUMERO'
      Required = True
      DisplayFormat = '00000'
    end
    object QPedidosPED_FECHA: TDateTimeField
      FieldName = 'PED_FECHA'
      EditMask = 'cc-cc-cccc'
    end
    object QPedidosVEN_CODIGO: TIntegerField
      FieldName = 'VEN_CODIGO'
    end
    object QPedidosCPA_CODIGO: TIntegerField
      FieldName = 'CPA_CODIGO'
      OnGetText = QPedidosCPA_CODIGOGetText
    end
    object QPedidosPED_DIRECCION: TIBStringField
      FieldName = 'PED_DIRECCION'
      Size = 60
    end
    object QPedidosPED_LOCALIDAD: TIBStringField
      FieldName = 'PED_LOCALIDAD'
      Size = 60
    end
    object QPedidosPED_TELEFONO: TIBStringField
      FieldName = 'PED_TELEFONO'
      Size = 13
    end
    object QPedidosPED_FAX: TIBStringField
      FieldName = 'PED_FAX'
      Size = 13
    end
    object QPedidosPED_DESCUENTO: TFloatField
      FieldName = 'PED_DESCUENTO'
      DisplayFormat = '#,0.0000'
    end
    object QPedidosPED_ITBIS: TFloatField
      FieldName = 'PED_ITBIS'
      DisplayFormat = '#,0.0000'
    end
    object QPedidosPED_OTROS: TFloatField
      FieldName = 'PED_OTROS'
      DisplayFormat = '#,0.0000'
    end
    object QPedidosPED_TOTAL: TFloatField
      FieldName = 'PED_TOTAL'
      DisplayFormat = '#,0.0000'
    end
    object QPedidosPED_STATUS: TIBStringField
      FieldName = 'PED_STATUS'
      Size = 3
    end
    object QPedidosSUP_CODIGO: TIntegerField
      FieldName = 'SUP_CODIGO'
    end
    object QPedidosSubTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'SubTotal'
      DisplayFormat = '#,0.0000'
      Calculated = True
    end
    object QPedidosCLI_CODIGO: TIntegerField
      FieldName = 'CLI_CODIGO'
    end
    object QPedidosPED_NOMBRE: TIBStringField
      FieldName = 'PED_NOMBRE'
      Size = 60
    end
    object QPedidosCLI_REFERENCIA: TIBStringField
      FieldName = 'CLI_REFERENCIA'
      Size = 10
    end
    object QPedidosPED_NOTA: TMemoField
      FieldName = 'PED_NOTA'
      Origin = 'PEDIDOS.PED_NOTA'
      BlobType = ftMemo
    end
    object QPedidosUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
      Origin = 'PEDIDOS.USU_CODIGO'
    end
    object QPedidosSUC_CODIGO: TIntegerField
      FieldName = 'SUC_CODIGO'
    end
    object QPedidosped_envio: TMemoField
      FieldName = 'ped_envio'
      BlobType = ftMemo
    end
    object QPedidosmon_codigo: TIntegerField
      FieldName = 'mon_codigo'
      OnChange = QPedidosmon_codigoChange
      OnGetText = QPedidosmon_codigoGetText
    end
    object QPedidoscou_codigo: TIntegerField
      FieldName = 'cou_codigo'
      OnChange = QPedidoscou_codigoChange
    end
    object QPedidoscen_codigo: TIntegerField
      FieldName = 'cen_codigo'
      OnGetText = QPedidoscen_codigoGetText
    end
    object QPedidosped_confirmado: TStringField
      FieldName = 'ped_confirmado'
      Size = 5
    end
    object QPedidosdep_codigo: TIntegerField
      FieldName = 'dep_codigo'
      OnGetText = QPedidosdep_codigoGetText
    end
    object QPedidosped_tasa: TFloatField
      FieldName = 'ped_tasa'
      DisplayFormat = '#,0.0000'
    end
    object QPedidosPED_COTIZACION: TStringField
      FieldName = 'PED_COTIZACION'
    end
    object QPedidosped_solicitud_compra: TStringField
      FieldName = 'ped_solicitud_compra'
    end
  end
  object dsPedidos: TDataSource
    DataSet = QPedidos
    OnDataChange = dsPedidosDataChange
    Left = 384
    Top = 208
  end
  object QDetalle: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    BeforeEdit = QDetalleBeforeEdit
    BeforePost = QDetalledet_
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
        Name = 'suc'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'num'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select EMP_CODIGO, PED_TIPO, PED_NUMERO, DET_SECUENCIA, '
      'PRO_CODIGO, PRO_RORIGINAL, PRO_RFABRIC, DET_DESCRIPCION, '
      'DET_CANTIDAD, DET_PRECIO, DET_CONITBIS, DET_ITBIS, '
      'DET_DESCUENTO, DET_FACTURADO, DET_STATUS,'
      'DET_MEDIDA, DET_COSTOUND, DET_COSTOEMP, SUC_CODIGO,'
      'DET_NOTA, det_despachado, det_cantempaque,'
      'det_costound_ant, det_costoemp_ant, '
      'pro_beneficio, pro_beneficio2, pro_beneficio3,'
      
        'pro_beneficio4, pro_precio1, pro_precio2, pro_precio3, pro_preci' +
        'o4,'
      'det_oferta'
      'from DET_PEDIDO'
      'where '
      'emp_codigo = :emp'
      'and suc_codigo = :suc'
      'and ped_tipo = '#39'S'#39
      'and ped_numero = :num'
      'order by det_secuencia')
    Left = 352
    Top = 240
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
      OnChange = QDetallePRO_CODIGOChange
    end
    object QDetallePRO_RORIGINAL: TIBStringField
      FieldName = 'PRO_RORIGINAL'
      OnChange = QDetallePRO_RORIGINALChange
      Size = 50
    end
    object QDetallePRO_RFABRIC: TIBStringField
      FieldName = 'PRO_RFABRIC'
      OnChange = QDetallePRO_RFABRICChange
      Size = 60
    end
    object QDetalleDET_DESCRIPCION: TIBStringField
      DisplayWidth = 256
      FieldName = 'DET_DESCRIPCION'
      Size = 256
    end
    object QDetalleDET_CANTIDAD: TFloatField
      FieldName = 'DET_CANTIDAD'
      DisplayFormat = '#,0.00'
    end
    object QDetalleDET_PRECIO: TFloatField
      FieldName = 'DET_PRECIO'
      DisplayFormat = '#,0.0000'
    end
    object QDetalleDET_CONITBIS: TIBStringField
      FieldName = 'DET_CONITBIS'
      Size = 1
    end
    object QDetalleDET_ITBIS: TFloatField
      FieldName = 'DET_ITBIS'
      DisplayFormat = '#,0.0000'
    end
    object QDetalleDET_DESCUENTO: TFloatField
      FieldName = 'DET_DESCUENTO'
      DisplayFormat = '#,0.0000'
    end
    object QDetalleDET_FACTURADO: TFloatField
      FieldName = 'DET_FACTURADO'
      DisplayFormat = '#,0.0000'
    end
    object QDetalleDET_STATUS: TIBStringField
      FieldName = 'DET_STATUS'
      Size = 3
    end
    object QDetalleCalcItbis: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CalcItbis'
      DisplayFormat = '#,0.0000'
      EditFormat = '#,0.0000'
      Calculated = True
    end
    object QDetalleCalcDesc: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CalcDesc'
      DisplayFormat = '#,0.0000'
      EditFormat = '#,0.0000'
      Calculated = True
    end
    object QDetalleValor: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Valor'
      DisplayFormat = '#,0.0000'
      EditFormat = '#,0.0000'
      Calculated = True
    end
    object QDetallePrecioItbis: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PrecioItbis'
      DisplayFormat = '#,0.0000'
      Calculated = True
    end
    object QDetalleDET_MEDIDA: TIBStringField
      FieldName = 'DET_MEDIDA'
      Origin = 'DET_PEDIDO.DET_MEDIDA'
      OnChange = QDetalleDET_MEDIDAChange
      Size = 3
    end
    object QDetalleDET_COSTOUND: TFloatField
      FieldName = 'DET_COSTOUND'
      Origin = 'DET_PEDIDO.DET_COSTOUND'
      OnChange = QDetalleDET_COSTOUNDChange
      DisplayFormat = '#,0.0000'
    end
    object QDetalleDET_COSTOEMP: TFloatField
      FieldName = 'DET_COSTOEMP'
      Origin = 'DET_PEDIDO.DET_COSTOEMP'
      OnChange = QDetalleDET_COSTOEMPChange
      DisplayFormat = '#,0.0000'
    end
    object QDetalleSUC_CODIGO: TIntegerField
      FieldName = 'SUC_CODIGO'
    end
    object QDetalleDET_NOTA: TMemoField
      FieldName = 'DET_NOTA'
      BlobType = ftMemo
    end
    object QDetalleValor2: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Valor2'
      DisplayFormat = '#,0.0000'
      Calculated = True
    end
    object QDetalledet_despachado: TBCDField
      FieldName = 'det_despachado'
      DisplayFormat = '#,0.0000'
      Precision = 15
      Size = 2
    end
    object QDetalledet_cantempaque: TBCDField
      FieldName = 'det_cantempaque'
      DisplayFormat = '#,0.0000'
      Precision = 15
      Size = 2
    end
    object QDetalleCalcCosto: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CalcCosto'
      DisplayFormat = '#,0.0000'
      Calculated = True
    end
    object QDetalleCalcCostoEmp: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CalcCostoEmp'
      DisplayFormat = '#,0.0000'
      Calculated = True
    end
    object QDetalleValorItbisUnd: TFloatField
      FieldKind = fkCalculated
      FieldName = 'ValorItbisUnd'
      DisplayFormat = '#,0.0000'
      Calculated = True
    end
    object QDetalleValorItbisEmp: TFloatField
      FieldKind = fkCalculated
      FieldName = 'ValorItbisEmp'
      DisplayFormat = '#,0.0000'
      Calculated = True
    end
    object QDetalleCostoNeto: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CostoNeto'
      DisplayFormat = '#,0.0000'
      Calculated = True
    end
    object QDetallePrecioItbisEmp: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PrecioItbisEmp'
      DisplayFormat = '#,0.0000'
      Calculated = True
    end
    object QDetalleCalcItbisEmp: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CalcItbisEmp'
      DisplayFormat = '#,0.0000'
      Calculated = True
    end
    object QDetalleCalcDescEmp: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CalcDescEmp'
      DisplayFormat = '#,0.0000'
      Calculated = True
    end
    object QDetalleValorEmp: TFloatField
      FieldKind = fkCalculated
      FieldName = 'ValorEmp'
      DisplayFormat = '#,0.0000'
      Calculated = True
    end
    object QDetalledet_costound_ant: TFloatField
      FieldName = 'det_costound_ant'
      DisplayFormat = '#,0.0000'
    end
    object QDetalledet_costoemp_ant: TFloatField
      FieldName = 'det_costoemp_ant'
      DisplayFormat = '#,0.0000'
    end
    object QDetallepro_beneficio: TFloatField
      FieldName = 'pro_beneficio'
      DisplayFormat = '#,0.0000'
    end
    object QDetallepro_beneficio2: TFloatField
      FieldName = 'pro_beneficio2'
      DisplayFormat = '#,0.0000'
    end
    object QDetallepro_beneficio3: TFloatField
      FieldName = 'pro_beneficio3'
      DisplayFormat = '#,0.0000'
    end
    object QDetallepro_beneficio4: TFloatField
      FieldName = 'pro_beneficio4'
      DisplayFormat = '#,0.0000'
    end
    object QDetallepro_precio1: TFloatField
      FieldName = 'pro_precio1'
      DisplayFormat = '#,0.0000'
    end
    object QDetallepro_precio2: TFloatField
      FieldName = 'pro_precio2'
      DisplayFormat = '#,0.0000'
    end
    object QDetallepro_precio3: TFloatField
      FieldName = 'pro_precio3'
      DisplayFormat = '#,0.0000'
    end
    object QDetallepro_precio4: TFloatField
      FieldName = 'pro_precio4'
      DisplayFormat = '#,0.0000'
    end
    object QDetalledet_oferta: TFloatField
      FieldName = 'det_oferta'
      DisplayFormat = '#,0.0000'
    end
  end
  object dsDetalle: TDataSource
    DataSet = QDetalle
    Left = 384
    Top = 240
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
    Left = 480
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
    Left = 512
    Top = 208
  end
  object QCourrier: TADOQuery
    Connection = DM.ADOSigma
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
      'select'
      'cou_codigo, cou_nombre, cou_direccion_envio'
      'from'
      'courriers'
      'where'
      'emp_codigo = :emp_codigo'
      'order by'
      'cou_nombre')
    Left = 480
    Top = 240
    object QCourriercou_codigo: TIntegerField
      FieldName = 'cou_codigo'
    end
    object QCourriercou_nombre: TStringField
      FieldName = 'cou_nombre'
      Size = 80
    end
    object QCourriercou_direccion_envio: TMemoField
      FieldName = 'cou_direccion_envio'
      BlobType = ftMemo
    end
  end
  object dsCourriers: TDataSource
    DataSet = QCourrier
    Left = 512
    Top = 240
  end
  object ADOLogistica: TADOConnection
    LoginPrompt = False
    Left = 88
    Top = 216
  end
  object QryLogistica: TADOQuery
    Connection = ADOLogistica
    Parameters = <>
    Left = 120
    Top = 216
  end
  object PopupMenu1: TPopupMenu
    Left = 288
    Top = 216
    object Notaalproducto1: TMenuItem
      Caption = 'Nota al producto'
      OnClick = Notaalproducto1Click
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
    object N3: TMenuItem
      Caption = '-'
    end
    object buscarproductoenellistado1: TMenuItem
      Caption = 'Buscar producto en el listado'
      OnClick = buscarproductoenellistado1Click
    end
  end
  object QUnidades: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
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
        Name = 'num'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'emp_codigo, ped_numero, pro_codigo,'
      'UnidadID, Precio, Cantidad, Secuencia, Credito,'
      'Minimo, suc_codigo, ped_tipo'
      'from'
      'PedidosUnidadMedida'
      'where'
      'emp_codigo = :emp'
      'and suc_codigo = :suc'
      'and ped_tipo = '#39'S'#39
      'and ped_numero = :num'
      'order by'
      'Secuencia')
    Left = 560
    Top = 240
    object QUnidadesemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QUnidadesped_numero: TIntegerField
      FieldName = 'ped_numero'
    end
    object QUnidadespro_codigo: TIntegerField
      FieldName = 'pro_codigo'
    end
    object QUnidadesUnidadID: TStringField
      FieldName = 'UnidadID'
      Size = 1
    end
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
    object QUnidadesSecuencia: TIntegerField
      FieldName = 'Secuencia'
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
    object QUnidadessuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object QUnidadesped_tipo: TStringField
      FieldName = 'ped_tipo'
      Size = 1
    end
  end
end
