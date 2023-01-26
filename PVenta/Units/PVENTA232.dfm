object frmFacturaRenta: TfrmFacturaRenta
  Left = 538
  Top = 103
  ActiveControl = edTipo
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Facturacion Renta'
  ClientHeight = 585
  ClientWidth = 744
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
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object GridSerie: TStringGrid
    Left = 176
    Top = 248
    Width = 257
    Height = 89
    ColCount = 2
    DefaultRowHeight = 18
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    Visible = False
  end
  object Lista: TListBox
    Left = 40
    Top = 202
    Width = 193
    Height = 65
    ItemHeight = 13
    TabOrder = 4
    Visible = False
  end
  object Panel2: TPanel
    Left = 0
    Top = 57
    Width = 744
    Height = 100
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object Label2: TLabel
      Left = 8
      Top = 8
      Width = 33
      Height = 13
      Caption = 'Cliente'
    end
    object btBuscaCli: TSpeedButton
      Left = 148
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
      OnClick = btBuscaCliClick
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
      Top = 77
      Width = 44
      Height = 13
      Caption = 'Localidad'
    end
    object Label5: TLabel
      Left = 238
      Top = 56
      Width = 42
      Height = 13
      Caption = 'Tel'#233'fono'
    end
    object Label7: TLabel
      Left = 149
      Top = 77
      Width = 48
      Height = 13
      Caption = 'Disponible'
    end
    object Label12: TLabel
      Left = 402
      Top = 56
      Width = 46
      Height = 13
      Caption = 'Vendedor'
    end
    object btVendedor: TSpeedButton
      Left = 502
      Top = 51
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
      Left = 402
      Top = 77
      Width = 46
      Height = 13
      Caption = 'Condici'#243'n'
    end
    object btCondi: TSpeedButton
      Left = 502
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
      OnClick = btCondiClick
    end
    object Label8: TLabel
      Left = 402
      Top = 32
      Width = 40
      Height = 13
      Caption = 'Sucursal'
    end
    object Label6: TLabel
      Left = 402
      Top = 8
      Width = 22
      Height = 13
      Caption = 'Caja'
    end
    object btcaja: TSpeedButton
      Left = 502
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
      OnClick = btcajaClick
    end
    object Label14: TLabel
      Left = 176
      Top = 8
      Width = 21
      Height = 13
      Caption = 'RNC'
    end
    object Label17: TLabel
      Left = 8
      Top = 32
      Width = 37
      Height = 13
      Caption = 'Nombre'
    end
    object SpeedButton1: TSpeedButton
      Left = 338
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
      OnClick = SpeedButton1Click
    end
    object Label27: TLabel
      Left = 618
      Top = 8
      Width = 38
      Height = 13
      Caption = '#Orden'
      FocusControl = DBEdit16
    end
    object Label30: TLabel
      Left = 650
      Top = 77
      Width = 46
      Height = 13
      Caption = '%Interes'
    end
    object Label15: TLabel
      Left = 368
      Top = 105
      Width = 52
      Height = 13
      Caption = 'Referencia'
    end
    object edCliente: TEdit
      Left = 64
      Top = 8
      Width = 81
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 0
      OnKeyDown = edClienteKeyDown
    end
    object DBEdit1: TDBEdit
      Left = 64
      Top = 54
      Width = 169
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'FAC_DIRECCION'
      DataSource = dsFactura
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
      Top = 76
      Width = 81
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'FAC_LOCALIDAD'
      DataSource = dsFactura
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object DBEdit3: TDBEdit
      Left = 288
      Top = 54
      Width = 73
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'FAC_TELEFONO'
      DataSource = dsFactura
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object tLimite: TEdit
      Left = 200
      Top = 76
      Width = 81
      Height = 21
      TabStop = False
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 9
      OnEnter = tTipoEnter
    end
    object DBEdit11: TDBEdit
      Left = 64
      Top = 32
      Width = 297
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'FAC_NOMBRE'
      DataSource = dsFactura
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
      Top = 52
      Width = 25
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'VEN_CODIGO'
      DataSource = dsFactura
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
    end
    object tVendedor: TEdit
      Left = 526
      Top = 52
      Width = 213
      Height = 21
      TabStop = False
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 11
      OnEnter = tTipoEnter
    end
    object dbCondi: TDBEdit
      Left = 474
      Top = 74
      Width = 25
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'CPA_CODIGO'
      DataSource = dsFactura
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
    end
    object tCondicion: TEdit
      Left = 526
      Top = 74
      Width = 117
      Height = 21
      TabStop = False
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 14
      OnEnter = tTipoEnter
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 474
      Top = 30
      Width = 266
      Height = 21
      DataField = 'SUC_CODIGO'
      DataSource = dsFactura
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
      TabOrder = 8
      TabStop = False
    end
    object dbCaja: TDBEdit
      Left = 474
      Top = 8
      Width = 25
      Height = 21
      TabStop = False
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'fac_caja'
      DataSource = dsFactura
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object tcaja: TEdit
      Left = 526
      Top = 8
      Width = 85
      Height = 21
      TabStop = False
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 15
      OnEnter = tTipoEnter
    end
    object DBEdit14: TDBEdit
      Left = 208
      Top = 8
      Width = 129
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'fac_rnc'
      DataSource = dsFactura
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DBEdit16: TDBEdit
      Left = 658
      Top = 8
      Width = 81
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'OrdenID'
      DataSource = dsFactura
      TabOrder = 7
    end
    object dbinteres: TDBEdit
      Left = 698
      Top = 74
      Width = 41
      Height = 21
      TabStop = False
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'fac_interes'
      DataSource = dsFactura
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
    end
    object DBEdit4: TDBEdit
      Left = 424
      Top = 101
      Width = 73
      Height = 21
      TabStop = False
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'cot_proyecto'
      DataSource = dsFactura
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 16
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 744
    Height = 57
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object Label9: TLabel
      Left = 8
      Top = 8
      Width = 29
      Height = 13
      Caption = 'Fecha'
    end
    object Label13: TLabel
      Left = 144
      Top = 8
      Width = 32
      Height = 13
      Caption = 'Cajero'
    end
    object Label1: TLabel
      Left = 8
      Top = 32
      Width = 44
      Height = 13
      Caption = 'Tipo Fac.'
    end
    object btTipo: TSpeedButton
      Left = 96
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
      OnClick = btTipoClick
    end
    object Label22: TLabel
      Left = 402
      Top = 8
      Width = 38
      Height = 13
      Caption = 'Moneda'
    end
    object btmoneda: TSpeedButton
      Left = 514
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
      OnClick = btmonedaClick
    end
    object Label18: TLabel
      Left = 402
      Top = 32
      Width = 65
      Height = 13
      Caption = 'Comprobante'
    end
    object bttiponcf: TSpeedButton
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
      OnClick = bttiponcfClick
    end
    object DBEdit5: TDBEdit
      Left = 64
      Top = 8
      Width = 65
      Height = 21
      TabStop = False
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'FAC_FECHA'
      DataSource = dsFactura
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object tCajero: TEdit
      Left = 184
      Top = 8
      Width = 153
      Height = 21
      TabStop = False
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
      OnEnter = tTipoEnter
    end
    object edTipo: TEdit
      Left = 64
      Top = 32
      Width = 30
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnKeyDown = edTipoKeyDown
    end
    object tTipo: TEdit
      Left = 120
      Top = 32
      Width = 217
      Height = 21
      TabStop = False
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
      OnEnter = tTipoEnter
    end
    object tmoneda: TEdit
      Left = 538
      Top = 8
      Width = 161
      Height = 21
      TabStop = False
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 7
      OnEnter = tTipoEnter
    end
    object DBEdit15: TDBEdit
      Left = 700
      Top = 8
      Width = 39
      Height = 21
      TabStop = False
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'FAC_TASA'
      DataSource = dsFactura
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object DBEdit9: TDBEdit
      Left = 474
      Top = 8
      Width = 38
      Height = 21
      TabStop = False
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'MON_CODIGO'
      DataSource = dsFactura
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object ttiponcf: TEdit
      Left = 538
      Top = 32
      Width = 201
      Height = 21
      TabStop = False
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 8
      OnEnter = ttiponcfEnter
    end
    object DBEdit13: TDBEdit
      Left = 474
      Top = 32
      Width = 38
      Height = 21
      TabStop = False
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'tip_codigo'
      DataSource = dsFactura
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 416
    Width = 744
    Height = 169
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 3
    DesignSize = (
      744
      169)
    object Label11: TLabel
      Left = 594
      Top = 7
      Width = 42
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'SubTotal'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label16: TLabel
      Left = 586
      Top = 27
      Width = 51
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'Descuento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbItbis: TLabel
      Left = 616
      Top = 47
      Width = 21
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'Itbis'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label19: TLabel
      Left = 65
      Top = 105
      Width = 120
      Height = 45
      Anchors = [akTop, akRight]
      Caption = 'TOTAL'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -37
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btBuscaProd: TSpeedButton
      Left = 290
      Top = 34
      Width = 134
      Height = 25
      Caption = '[ F4 ] - Buscar producto'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = btBuscaProdClick
    end
    object btPrecio: TSpeedButton
      Left = 154
      Top = 59
      Width = 134
      Height = 25
      Caption = '[ F7 ] - Selecci'#243'n precio'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = btPrecioClick
    end
    object btBusca: TBitBtn
      Left = 457
      Top = 9
      Width = 109
      Height = 25
      Caption = 'Buscar factura'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TabStop = False
      OnClick = btBuscaClick
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
    end
    object DBEdit6: TDBEdit
      Tag = 1
      Left = 641
      Top = 4
      Width = 99
      Height = 21
      TabStop = False
      Anchors = [akTop, akRight]
      AutoSelect = False
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      DataField = 'SubTotal'
      DataSource = dsFactura
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
    object DBEdit7: TDBEdit
      Tag = 1
      Left = 641
      Top = 24
      Width = 99
      Height = 21
      TabStop = False
      Anchors = [akTop, akRight]
      AutoSelect = False
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      DataField = 'FAC_DESCUENTO'
      DataSource = dsFactura
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
    object DBEdit8: TDBEdit
      Tag = 1
      Left = 641
      Top = 44
      Width = 99
      Height = 21
      TabStop = False
      Anchors = [akTop, akRight]
      AutoSelect = False
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      DataField = 'FAC_ITBIS'
      DataSource = dsFactura
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
    object DBEdit10: TDBEdit
      Tag = 1
      Left = 199
      Top = 88
      Width = 545
      Height = 81
      TabStop = False
      Anchors = [akTop, akRight]
      AutoSelect = False
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clMenuText
      DataField = 'FAC_TOTAL'
      DataSource = dsFactura
      Font.Charset = ANSI_CHARSET
      Font.Color = clLime
      Font.Height = -64
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
      OnEnter = DBEdit6Enter
    end
    object btGrabar: TBitBtn
      Left = 4
      Top = 34
      Width = 143
      Height = 25
      Caption = '[ F2 ] - Grabar/Imprimir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      TabStop = False
      OnClick = btGrabarClick
    end
    object btLimpiar: TBitBtn
      Left = 154
      Top = 34
      Width = 134
      Height = 25
      Caption = '[ F3 ] - Limpiar/Nueva   '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      TabStop = False
      OnClick = btLimpiarClick
    end
    object btSalir: TBitBtn
      Left = 432
      Top = 59
      Width = 134
      Height = 25
      Caption = '[ F10 ] - Cancelar/Salir '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      TabStop = False
      OnClick = btSalirClick
    end
    object btBuscaCliente: TBitBtn
      Left = 432
      Top = 34
      Width = 134
      Height = 25
      Caption = '[ F5 ] - Buscar Cliente  '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      TabStop = False
      OnClick = btBuscaClienteClick
    end
    object btNota: TBitBtn
      Left = 293
      Top = 59
      Width = 131
      Height = 25
      Caption = '[ F8 ] - Nota de factura  '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      TabStop = False
      OnClick = btNotaClick
    end
    object btnGuardaTemporal: TBitBtn
      Left = 184
      Top = 9
      Width = 93
      Height = 25
      Caption = 'Guardar temporal'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      TabStop = False
      OnClick = btnGuardaTemporalClick
    end
    object btnBuscaTemporal: TBitBtn
      Left = 279
      Top = 9
      Width = 93
      Height = 25
      Caption = 'Buscar temporal'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
      TabStop = False
      OnClick = btnBuscaTemporalClick
    end
    object DBEdit12: TDBEdit
      Left = 552
      Top = 60
      Width = 17
      Height = 21
      DataField = 'VEN_CODIGO'
      DataSource = dsDetalle
      TabOrder = 12
      Visible = False
    end
    object ckItbis: TDBCheckBox
      Left = 599
      Top = 47
      Width = 17
      Height = 17
      Anchors = [akTop, akRight]
      DataField = 'FAC_CONITBIS'
      DataSource = dsFactura
      TabOrder = 13
      ValueChecked = 'True'
      ValueUnchecked = 'False'
      OnClick = ckItbisClick
    end
    object BitBtn3: TBitBtn
      Left = 374
      Top = 9
      Width = 81
      Height = 25
      Caption = 'Desc. General'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
      TabStop = False
      OnClick = BitBtn3Click
    end
    object btdelete: TBitBtn
      Left = 4
      Top = 59
      Width = 143
      Height = 25
      Caption = '[ F6 ] - Eliminar fila       '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 15
      TabStop = False
      OnClick = btdeleteClick
    end
  end
  object btBalance: TBitBtn
    Left = 288
    Top = 133
    Width = 73
    Height = 21
    Caption = 'Balance'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    TabStop = False
    OnClick = btBalanceClick
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 157
    Width = 744
    Height = 259
    ActivePage = TabSheet1
    Align = alClient
    Style = tsFlatButtons
    TabOrder = 2
    TabStop = False
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = 'Productos de la factura'
      object Grid: TDBGrid
        Left = 0
        Top = 0
        Width = 736
        Height = 228
        Align = alClient
        Ctl3D = False
        DataSource = dsDetalle
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        PopupMenu = PopupMenu1
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnColEnter = GridColEnter
        OnDrawColumnCell = GridDrawColumnCell
        OnEnter = GridEnter
        OnKeyDown = GridKeyDown
        OnKeyPress = GridKeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'PRO_CODIGO'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Width = 60
            Visible = True
          end
          item
            Color = clInfoBk
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
            Title.Caption = 'Cant'
            Width = 30
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DET_MEDIDA'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Medida'
            Visible = True
          end
          item
            Color = clInfoBk
            Expanded = False
            FieldName = 'det_cantempaque'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Cant/Emp'
            Width = 49
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pro_unidad_medida'
            Title.Alignment = taCenter
            Title.Caption = 'Medida'
            Width = 42
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'det_cant_oferta'
            Title.Alignment = taCenter
            Title.Caption = 'Oferta'
            Width = 35
            Visible = True
          end
          item
            Alignment = taCenter
            Color = clInfoBk
            Expanded = False
            FieldName = 'DET_ESCALA'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Escala'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DET_PRECIO'
            Title.Alignment = taCenter
            Title.Caption = 'Precio'
            Width = 70
            Visible = True
          end
          item
            Color = clInfoBk
            Expanded = False
            FieldName = 'PrecioItbis'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Prec. Bruto'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DET_DESCUENTO'
            Title.Alignment = taCenter
            Title.Caption = '%Desc'
            Width = 40
            Visible = True
          end
          item
            Color = clInfoBk
            Expanded = False
            FieldName = 'CalcItbis'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = '%Itbis'
            Width = 63
            Visible = True
          end
          item
            Color = clInfoBk
            Expanded = False
            FieldName = 'Valor'
            Title.Alignment = taCenter
            Width = 76
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Cuentas contables'
      ImageIndex = 1
      DesignSize = (
        736
        228)
      object Label24: TLabel
        Left = 39
        Top = 211
        Width = 54
        Height = 13
        Anchors = [akLeft, akBottom]
        Caption = 'Cr'#233'ditos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label25: TLabel
        Left = 207
        Top = 211
        Width = 49
        Height = 13
        Anchors = [akLeft, akBottom]
        Caption = 'D'#233'bitos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label26: TLabel
        Left = 375
        Top = 211
        Width = 51
        Height = 13
        Anchors = [akLeft, akBottom]
        Caption = 'Balance'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object GridCuentas: TDBGrid
        Left = 32
        Top = 0
        Width = 704
        Height = 205
        Anchors = [akLeft, akTop, akRight, akBottom]
        Ctl3D = False
        DataSource = dsCuentas
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
        OnColEnter = GridCuentasColEnter
        OnEnter = GridCuentasEnter
        OnKeyDown = GridCuentasKeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'cat_cuenta'
            Title.Alignment = taCenter
            Title.Caption = 'Cuenta'
            Width = 93
            Visible = True
          end
          item
            Color = clInfoBk
            Expanded = False
            FieldName = 'cat_nombre'
            ReadOnly = True
            Title.Caption = 'Nombre de la Cuenta'
            Width = 383
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
            Width = 90
            Visible = True
          end>
      end
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 30
        Height = 228
        Align = alLeft
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 1
        object btdeletecuenta: TSpeedButton
          Left = 4
          Top = 4
          Width = 23
          Height = 22
          Hint = 'Eliminar cuenta de la lista'
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
          OnClick = btdeletecuentaClick
        end
        object btfindcuenta: TSpeedButton
          Left = 4
          Top = 26
          Width = 23
          Height = 22
          Hint = 'Buscar cuenta contable'
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
          OnClick = btfindcuentaClick
        end
      end
      object lbBAL: TStaticText
        Left = 431
        Top = 211
        Width = 103
        Height = 17
        Alignment = taRightJustify
        Anchors = [akLeft, akBottom]
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object lbDB: TStaticText
        Left = 263
        Top = 211
        Width = 103
        Height = 17
        Alignment = taRightJustify
        Anchors = [akLeft, akBottom]
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
      object lbCR: TStaticText
        Left = 95
        Top = 211
        Width = 103
        Height = 17
        Alignment = taRightJustify
        Anchors = [akLeft, akBottom]
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Datos del cami'#243'n'
      ImageIndex = 2
      object Label28: TLabel
        Left = 8
        Top = 8
        Width = 25
        Height = 13
        Caption = 'Placa'
        FocusControl = DBEdit17
      end
      object btcamion: TSpeedButton
        Left = 155
        Top = 8
        Width = 23
        Height = 22
        Hint = 'Buscar Placa del Camion'
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
        OnClick = btcamionClick
      end
      object DBEdit17: TDBEdit
        Left = 56
        Top = 8
        Width = 97
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'Placa'
        DataSource = dsFactura
        TabOrder = 0
      end
      object memocamion: TMemo
        Left = 56
        Top = 32
        Width = 628
        Height = 113
        BevelKind = bkFlat
        BorderStyle = bsNone
        ReadOnly = True
        TabOrder = 1
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Facturas y Records clinicos'
      ImageIndex = 3
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 30
        Height = 174
        Align = alLeft
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 0
        object SpeedButton3: TSpeedButton
          Left = 4
          Top = 5
          Width = 23
          Height = 22
          Hint = 'Insertar facturas'
          Flat = True
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
            55555555FFFFFFFF5555555000000005555555577777777FF555550999999900
            55555575555555775F55509999999901055557F55555557F75F5001111111101
            105577FFFFFFFF7FF75F00000000000011057777777777775F755070FFFFFF0F
            01105777F555557F75F75500FFFFFF0FF0105577F555FF7F57575550FF700008
            8F0055575FF7777555775555000888888F005555777FFFFFFF77555550000000
            0F055555577777777F7F555550FFFFFF0F05555557F5FFF57F7F555550F000FF
            0005555557F777557775555550FFFFFF0555555557F555FF7F55555550FF7000
            05555555575FF777755555555500055555555555557775555555}
          NumGlyphs = 2
          OnClick = SpeedButton3Click
        end
        object SpeedButton4: TSpeedButton
          Left = 4
          Top = 30
          Width = 23
          Height = 22
          Hint = 'Insertar records'
          Flat = True
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500000000000
            055557777777777775F508888888888880557F5FFFFFFFFFF75F080000000000
            88057577777777775F755080FFFFFF05088057F7FFFFFF7575F70000000000F0
            F08077777777775757F70FFFFFFFFF0F008075F5FF5FF57577F750F00F00FFF0
            F08057F775775557F7F750FFFFFFFFF0F08057FF5555555757F7000FFFFFFFFF
            0000777FF5FFFFF577770900F00000F000907F775777775777F7090FFFFFFFFF
            00907F7F555555557757000FFFFFFFFF0F00777F5FFF5FF57F77550F000F00FF
            0F05557F777577557F7F550FFFFFFFFF0005557F555FFFFF7775550FFF000000
            05555575FF777777755555500055555555555557775555555555}
          NumGlyphs = 2
          OnClick = SpeedButton4Click
        end
      end
      object gridclinico: TDBGrid
        Left = 30
        Top = 0
        Width = 655
        Height = 174
        Align = alClient
        Ctl3D = False
        DataSource = dsClinico
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgColLines, dgRowLines, dgTabs, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnKeyDown = gridclinicoKeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'facturaid'
            Title.Alignment = taCenter
            Title.Caption = '#Factura'
            Width = 49
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'recordid'
            Title.Alignment = taCenter
            Title.Caption = '#Record'
            Width = 44
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'fecha'
            Title.Alignment = taCenter
            Title.Caption = 'Fecha'
            Width = 66
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'paciente'
            Title.Caption = 'Nombre del Paciente'
            Width = 185
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'poliza'
            Title.Alignment = taCenter
            Title.Caption = 'Poliza'
            Width = 85
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cobertura'
            Title.Alignment = taCenter
            Title.Caption = 'Cobertura'
            Width = 62
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'autorizacion'
            Title.Alignment = taCenter
            Title.Caption = '#Autorizaci'#243'n'
            Width = 76
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'facturada_sigma'
            Title.Alignment = taCenter
            Title.Caption = 'Reportar?'
            Visible = True
          end>
      end
      object Panel6: TPanel
        Left = 0
        Top = 174
        Width = 685
        Height = 25
        Align = alBottom
        TabOrder = 2
        object lbfacturas: TLabel
          Left = 539
          Top = 4
          Width = 51
          Height = 13
          Alignment = taRightJustify
          Caption = '0 Facturas'
        end
        object lbrecords: TLabel
          Left = 630
          Top = 4
          Width = 48
          Height = 13
          Alignment = taRightJustify
          Caption = '0 Records'
        end
        object Label29: TLabel
          Left = 200
          Top = 5
          Width = 240
          Height = 13
          Caption = 'Barra espaciadora para cambiar el estatus'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object ProgressBar1: TProgressBar
          Left = 1
          Top = 1
          Width = 192
          Height = 23
          Align = alLeft
          TabOrder = 0
        end
      end
    end
  end
  object Panel7: TPanel
    Left = 502
    Top = 160
    Width = 239
    Height = 18
    BevelOuter = bvNone
    TabOrder = 7
    object dblExistencia: TDBText
      Left = 0
      Top = 0
      Width = 76
      Height = 18
      Align = alLeft
      Alignment = taRightJustify
      AutoSize = True
      DataField = 'DISPONIBLE2'
      DataSource = dsMsnExistencia
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ckdomicilio: TDBCheckBox
      Left = 146
      Top = 0
      Width = 89
      Height = 17
      TabStop = False
      Caption = 'DOMICILIO'
      DataField = 'FAC_DOMICILIO'
      DataSource = dsFactura
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      ValueChecked = 'True'
      ValueUnchecked = 'False'
      OnClick = ckdomicilioClick
    end
  end
  object Search: TQrySearchDlgADO
    AliasName = DM.ADOSigma
    Left = 496
    Top = 299
  end
  object QFactura: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterEdit = QFacturaAfterEdit
    BeforePost = QFacturaBeforePost
    OnCalcFields = QFacturaCalcFields
    OnNewRecord = QFacturaNewRecord
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
        Name = 'tipo'
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
      end
      item
        Name = 'forma'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
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
      'CAJ_CODIGO, CLI_CODIGO, COT_NUMERO, CPA_CODIGO, '
      'EMP_CODIGO, FAC_ABONO, FAC_DESCUENTO, FAC_DIRECCION, '
      'FAC_FAX, FAC_FECHA, FAC_FORMA, FAC_ITBIS, FAC_LOCALIDAD, '
      'FAC_NOMBRE, FAC_NOTA, FAC_NUMERO, FAC_OTROS, '
      'FAC_STATUS, FAC_TELEFONO, FAC_TOTAL, PED_NUMERO, '
      'TFA_CODIGO, USU_CODIGO, VEN_CODIGO, CLI_REFERENCIA, '
      'ALM_CODIGO, FAC_VENCE, FAC_COMISION, FAC_MENSAJE1, '
      'FAC_MENSAJE2, FAC_MENSAJE3, FAC_PORCCOMISION, '
      'FAC_CUOTAS, FAC_HORA, CON_NUMERO,FAC_ANO, FAC_MES,'
      'FAC_CONITBIS, FAC_DEVUELTO, FAC_TASA, MON_CODIGO,'
      'SUC_CODIGO, FAC_DOMICILIO, fac_comisionpagada,'
      'fac_caja, pro_codigo, NCF_Fijo, NCF_Secuencia,'
      'fac_selectivo_ad, fac_selectivo_con, fac_hold,'
      'fac_rnc, OrdenID, Placa, Chofer, Modelo, Marca, Compania,'
      'CamionID, Metraje, fac_interes, tip_codigo,cot_proyecto'
      'from'
      'FACTURAS'
      'where emp_codigo = :emp'
      'and tfa_codigo = :tipo'
      'and fac_numero = :numero'
      'and fac_forma = :forma'
      'and suc_codigo = :suc')
    Left = 464
    Top = 243
    object QFacturaCAJ_CODIGO: TIntegerField
      FieldName = 'CAJ_CODIGO'
      Origin = 'FACTURAS.CAJ_CODIGO'
    end
    object QFacturaCLI_CODIGO: TIntegerField
      FieldName = 'CLI_CODIGO'
      Origin = 'FACTURAS.CLI_CODIGO'
      OnGetText = QFacturaCLI_CODIGOGetText
    end
    object QFacturaCOT_NUMERO: TIntegerField
      FieldName = 'COT_NUMERO'
      Origin = 'FACTURAS.COT_NUMERO'
    end
    object QFacturaCPA_CODIGO: TIntegerField
      FieldName = 'CPA_CODIGO'
      Origin = 'FACTURAS.CPA_CODIGO'
      OnGetText = QFacturaCPA_CODIGOGetText
    end
    object QFacturaEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'FACTURAS.EMP_CODIGO'
    end
    object QFacturaFAC_ABONO: TFloatField
      FieldName = 'FAC_ABONO'
      Origin = 'FACTURAS.FAC_ABONO'
      currency = True
    end
    object QFacturaFAC_DESCUENTO: TFloatField
      FieldName = 'FAC_DESCUENTO'
      Origin = 'FACTURAS.FAC_DESCUENTO'
      currency = True
    end
    object QFacturaFAC_DIRECCION: TIBStringField
      FieldName = 'FAC_DIRECCION'
      Origin = 'FACTURAS.FAC_DIRECCION'
      Size = 60
    end
    object QFacturaFAC_FAX: TIBStringField
      FieldName = 'FAC_FAX'
      Origin = 'FACTURAS.FAC_FAX'
      Size = 13
    end
    object QFacturaFAC_FECHA: TDateTimeField
      FieldName = 'FAC_FECHA'
      Origin = 'FACTURAS.FAC_FECHA'
    end
    object QFacturaFAC_FORMA: TIBStringField
      FieldName = 'FAC_FORMA'
      Origin = 'FACTURAS.FAC_FORMA'
      OnChange = QFacturaFAC_FORMAChange
      Size = 1
    end
    object QFacturaFAC_ITBIS: TFloatField
      FieldName = 'FAC_ITBIS'
      Origin = 'FACTURAS.FAC_ITBIS'
      OnChange = QFacturaFAC_ITBISChange
      currency = True
    end
    object QFacturaFAC_LOCALIDAD: TIBStringField
      FieldName = 'FAC_LOCALIDAD'
      Origin = 'FACTURAS.FAC_LOCALIDAD'
      Size = 60
    end
    object QFacturaFAC_NOMBRE: TIBStringField
      FieldName = 'FAC_NOMBRE'
      Origin = 'FACTURAS.FAC_NOMBRE'
      Size = 60
    end
    object QFacturaFAC_NUMERO: TIntegerField
      FieldName = 'FAC_NUMERO'
      Origin = 'FACTURAS.FAC_NUMERO'
    end
    object QFacturaFAC_OTROS: TFloatField
      FieldName = 'FAC_OTROS'
      Origin = 'FACTURAS.FAC_OTROS'
      currency = True
    end
    object QFacturaFAC_STATUS: TIBStringField
      FieldName = 'FAC_STATUS'
      Origin = 'FACTURAS.FAC_STATUS'
      Size = 3
    end
    object QFacturaFAC_TELEFONO: TIBStringField
      FieldName = 'FAC_TELEFONO'
      Origin = 'FACTURAS.FAC_TELEFONO'
      Size = 13
    end
    object QFacturaFAC_TOTAL: TFloatField
      FieldName = 'FAC_TOTAL'
      Origin = 'FACTURAS.FAC_TOTAL'
      currency = True
    end
    object QFacturaPED_NUMERO: TIntegerField
      FieldName = 'PED_NUMERO'
      Origin = 'FACTURAS.PED_NUMERO'
    end
    object QFacturaTFA_CODIGO: TIntegerField
      FieldName = 'TFA_CODIGO'
      Origin = 'FACTURAS.TFA_CODIGO'
    end
    object QFacturaUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
      Origin = 'FACTURAS.USU_CODIGO'
    end
    object QFacturaVEN_CODIGO: TIntegerField
      FieldName = 'VEN_CODIGO'
      Origin = 'FACTURAS.VEN_CODIGO'
      OnGetText = QFacturaVEN_CODIGOGetText
    end
    object QFacturaCLI_REFERENCIA: TIBStringField
      DisplayWidth = 30
      FieldName = 'CLI_REFERENCIA'
      Origin = 'FACTURAS.CLI_REFERENCIA'
      Size = 30
    end
    object QFacturaSubTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'SubTotal'
      currency = True
      Calculated = True
    end
    object QFacturaALM_CODIGO: TIntegerField
      FieldName = 'ALM_CODIGO'
      Origin = 'FACTURAS.ALM_CODIGO'
      OnChange = QFacturaALM_CODIGOChange
    end
    object QFacturaFAC_VENCE: TDateTimeField
      FieldName = 'FAC_VENCE'
      Origin = 'FACTURAS.FAC_VENCE'
    end
    object QFacturaFAC_COMISION: TFloatField
      FieldName = 'FAC_COMISION'
      Origin = 'FACTURAS.FAC_COMISION'
      currency = True
    end
    object QFacturaFAC_MENSAJE2: TIBStringField
      FieldName = 'FAC_MENSAJE2'
      Origin = 'FACTURAS.FAC_MENSAJE2'
      Size = 60
    end
    object QFacturaFAC_MENSAJE3: TIBStringField
      FieldName = 'FAC_MENSAJE3'
      Origin = 'FACTURAS.FAC_MENSAJE3'
      Size = 60
    end
    object QFacturaFAC_PORCCOMISION: TFloatField
      FieldName = 'FAC_PORCCOMISION'
      Origin = 'FACTURAS.FAC_PORCCOMISION'
    end
    object QFacturaFAC_CUOTAS: TIntegerField
      FieldName = 'FAC_CUOTAS'
      Origin = 'FACTURAS.FAC_CUOTAS'
    end
    object QFacturaFAC_HORA: TIBStringField
      FieldName = 'FAC_HORA'
      Origin = 'FACTURAS.FAC_HORA'
      Size = 15
    end
    object QFacturaCON_NUMERO: TIntegerField
      FieldName = 'CON_NUMERO'
      Origin = 'FACTURAS.CON_NUMERO'
    end
    object QFacturaFAC_ANO: TIntegerField
      FieldName = 'FAC_ANO'
      Origin = 'FACTURAS.FAC_ANO'
    end
    object QFacturaFAC_MES: TIntegerField
      FieldName = 'FAC_MES'
      Origin = 'FACTURAS.FAC_MES'
    end
    object QFacturaFAC_CONITBIS: TIBStringField
      FieldName = 'FAC_CONITBIS'
      Origin = 'FACTURAS.FAC_CONITBIS'
      Size = 5
    end
    object QFacturaFAC_DEVUELTO: TFloatField
      FieldName = 'FAC_DEVUELTO'
      Origin = 'FACTURAS.FAC_DEVUELTO'
    end
    object QFacturaFAC_TASA: TFloatField
      FieldName = 'FAC_TASA'
      Origin = 'FACTURAS.FAC_TASA'
      currency = True
    end
    object QFacturaMON_CODIGO: TIntegerField
      FieldName = 'MON_CODIGO'
      Origin = 'FACTURAS.MON_CODIGO'
      OnChange = QFacturaMON_CODIGOChange
      OnGetText = QFacturaMON_CODIGOGetText
    end
    object QFacturaSUC_CODIGO: TIntegerField
      FieldName = 'SUC_CODIGO'
      OnChange = QFacturaSUC_CODIGOChange
    end
    object QFacturaFAC_DOMICILIO: TStringField
      FieldName = 'FAC_DOMICILIO'
      Size = 5
    end
    object QFacturafac_comisionpagada: TBCDField
      FieldName = 'fac_comisionpagada'
      Precision = 15
      Size = 2
    end
    object QFacturafac_caja: TIntegerField
      FieldName = 'fac_caja'
      OnChange = QFacturafac_cajaChange
      OnGetText = QFacturafac_cajaGetText
    end
    object QFacturapro_codigo: TIntegerField
      FieldName = 'pro_codigo'
    end
    object QFacturaNCF_Fijo: TStringField
      FieldName = 'NCF_Fijo'
      Size = 11
    end
    object QFacturaNCF_Secuencia: TBCDField
      FieldName = 'NCF_Secuencia'
      Precision = 18
      Size = 0
    end
    object QFacturafac_selectivo_ad: TBCDField
      FieldName = 'fac_selectivo_ad'
      currency = True
      Precision = 15
      Size = 2
    end
    object QFacturafac_selectivo_con: TBCDField
      FieldName = 'fac_selectivo_con'
      currency = True
      Precision = 15
      Size = 2
    end
    object QFacturafac_hold: TStringField
      FieldName = 'fac_hold'
      Size = 5
    end
    object QFacturafac_rnc: TStringField
      FieldName = 'fac_rnc'
      OnChange = QFacturafac_rncChange
      Size = 13
    end
    object QFacturaPlaca: TStringField
      FieldName = 'Placa'
      OnChange = QFacturaPlacaChange
    end
    object QFacturaChofer: TStringField
      FieldName = 'Chofer'
      Size = 50
    end
    object QFacturaModelo: TStringField
      FieldName = 'Modelo'
      Size = 50
    end
    object QFacturaMarca: TStringField
      FieldName = 'Marca'
      Size = 50
    end
    object QFacturaCompania: TStringField
      FieldName = 'Compania'
      Size = 100
    end
    object QFacturaCamionID: TIntegerField
      FieldName = 'CamionID'
    end
    object QFacturaMetraje: TBCDField
      FieldName = 'Metraje'
      Precision = 18
      Size = 2
    end
    object QFacturafac_interes: TBCDField
      FieldName = 'fac_interes'
      Precision = 8
      Size = 2
    end
    object QFacturatip_codigo: TIntegerField
      FieldName = 'tip_codigo'
      OnGetText = QFacturatip_codigoGetText
    end
    object QFacturaOrdenID: TStringField
      FieldName = 'OrdenID'
      Size = 15
    end
    object QFacturacot_proyecto: TStringField
      FieldName = 'cot_proyecto'
      Size = 200
    end
    object QFacturaFAC_MENSAJE1: TStringField
      DisplayWidth = 600
      FieldName = 'FAC_MENSAJE1'
      Size = 600
    end
    object QFacturaFAC_NOTA: TMemoField
      FieldName = 'FAC_NOTA'
      BlobType = ftMemo
    end
  end
  object dsFactura: TDataSource
    DataSet = QFactura
    OnStateChange = dsFacturaStateChange
    OnDataChange = dsFacturaDataChange
    Left = 496
    Top = 235
  end
  object dsDetalle: TDataSource
    DataSet = QDetalle
    OnDataChange = dsDetalleDataChange
    Left = 496
    Top = 267
  end
  object Query1: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <>
    Left = 568
    Top = 267
  end
  object QFacTMP: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    BeforePost = QFacTMPBeforePost
    OnNewRecord = QFacTMPNewRecord
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
      end
      item
        Name = 'for'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end
      item
        Name = 'tfa'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select '
      'CAJ_CODIGO, CLI_CODIGO, COT_NUMERO, CPA_CODIGO, '
      'EMP_CODIGO, FAC_ABONO, FAC_DESCUENTO, FAC_DIRECCION, '
      'FAC_FAX, FAC_FECHA, FAC_FORMA, FAC_ITBIS, FAC_LOCALIDAD, '
      'FAC_NOMBRE, FAC_NOTA, FAC_NUMERO, FAC_OTROS, '
      'FAC_STATUS, FAC_TELEFONO, FAC_TOTAL, PED_NUMERO, '
      'TFA_CODIGO, USU_CODIGO, VEN_CODIGO, CLI_REFERENCIA,'
      ' ALM_CODIGO, FAC_VENCE, FAC_COMISION, FAC_MENSAJE1, '
      'FAC_MENSAJE2, FAC_MENSAJE3, FAC_PORCCOMISION, '
      'FAC_CUOTAS, FAC_HORA, CON_NUMERO,FAC_ANO, FAC_MES,'
      'FAC_CONITBIS, FAC_DEVUELTO, FAC_TASA, MON_CODIGO,'
      'SUC_CODIGO, FAC_DOMICILIO, fac_comisionpagada, fac_caja,'
      'pro_codigo, NCF_Fijo, NCF_Secuencia,'
      
        'fac_selectivo_ad, fac_selectivo_con, fac_hold, fac_rnc, OrdenID,' +
        ' Placa, '
      'Chofer, Modelo, Marca, Compania, CamionID, Metraje, fac_interes,'
      'tip_codigo'
      'from FACTURASTMP'
      'where emp_codigo = :emp'
      'and fac_numero = :numero'
      'and fac_forma = :for'
      'and tfa_codigo = :tfa')
    Left = 536
    Top = 235
    object QFacTMPCAJ_CODIGO: TIntegerField
      FieldName = 'CAJ_CODIGO'
      Origin = 'FACTURASTMP.CAJ_CODIGO'
    end
    object QFacTMPCLI_CODIGO: TIntegerField
      FieldName = 'CLI_CODIGO'
      Origin = 'FACTURASTMP.CLI_CODIGO'
    end
    object QFacTMPCOT_NUMERO: TIntegerField
      FieldName = 'COT_NUMERO'
      Origin = 'FACTURASTMP.COT_NUMERO'
    end
    object QFacTMPCPA_CODIGO: TIntegerField
      FieldName = 'CPA_CODIGO'
      Origin = 'FACTURASTMP.CPA_CODIGO'
    end
    object QFacTMPEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'FACTURASTMP.EMP_CODIGO'
    end
    object QFacTMPFAC_ABONO: TFloatField
      FieldName = 'FAC_ABONO'
      Origin = 'FACTURASTMP.FAC_ABONO'
    end
    object QFacTMPFAC_DESCUENTO: TFloatField
      FieldName = 'FAC_DESCUENTO'
      Origin = 'FACTURASTMP.FAC_DESCUENTO'
    end
    object QFacTMPFAC_DIRECCION: TIBStringField
      FieldName = 'FAC_DIRECCION'
      Origin = 'FACTURASTMP.FAC_DIRECCION'
      Size = 60
    end
    object QFacTMPFAC_FAX: TIBStringField
      FieldName = 'FAC_FAX'
      Origin = 'FACTURASTMP.FAC_FAX'
      Size = 13
    end
    object QFacTMPFAC_FECHA: TDateTimeField
      FieldName = 'FAC_FECHA'
      Origin = 'FACTURASTMP.FAC_FECHA'
    end
    object QFacTMPFAC_FORMA: TIBStringField
      FieldName = 'FAC_FORMA'
      Origin = 'FACTURASTMP.FAC_FORMA'
      Size = 1
    end
    object QFacTMPFAC_ITBIS: TFloatField
      FieldName = 'FAC_ITBIS'
      Origin = 'FACTURASTMP.FAC_ITBIS'
    end
    object QFacTMPFAC_LOCALIDAD: TIBStringField
      FieldName = 'FAC_LOCALIDAD'
      Origin = 'FACTURASTMP.FAC_LOCALIDAD'
      Size = 60
    end
    object QFacTMPFAC_NOMBRE: TIBStringField
      FieldName = 'FAC_NOMBRE'
      Origin = 'FACTURASTMP.FAC_NOMBRE'
      Size = 60
    end
    object QFacTMPFAC_NUMERO: TIntegerField
      FieldName = 'FAC_NUMERO'
      Origin = 'FACTURASTMP.FAC_NUMERO'
    end
    object QFacTMPFAC_OTROS: TFloatField
      FieldName = 'FAC_OTROS'
      Origin = 'FACTURASTMP.FAC_OTROS'
    end
    object QFacTMPFAC_STATUS: TIBStringField
      FieldName = 'FAC_STATUS'
      Origin = 'FACTURASTMP.FAC_STATUS'
      Size = 3
    end
    object QFacTMPFAC_TELEFONO: TIBStringField
      FieldName = 'FAC_TELEFONO'
      Origin = 'FACTURASTMP.FAC_TELEFONO'
      Size = 13
    end
    object QFacTMPFAC_TOTAL: TFloatField
      FieldName = 'FAC_TOTAL'
      Origin = 'FACTURASTMP.FAC_TOTAL'
    end
    object QFacTMPPED_NUMERO: TIntegerField
      FieldName = 'PED_NUMERO'
      Origin = 'FACTURASTMP.PED_NUMERO'
    end
    object QFacTMPTFA_CODIGO: TIntegerField
      FieldName = 'TFA_CODIGO'
      Origin = 'FACTURASTMP.TFA_CODIGO'
      Required = True
    end
    object QFacTMPUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
      Origin = 'FACTURASTMP.USU_CODIGO'
    end
    object QFacTMPVEN_CODIGO: TIntegerField
      FieldName = 'VEN_CODIGO'
      Origin = 'FACTURASTMP.VEN_CODIGO'
    end
    object QFacTMPCLI_REFERENCIA: TIBStringField
      DisplayWidth = 30
      FieldName = 'CLI_REFERENCIA'
      Origin = 'FACTURASTMP.CLI_REFERENCIA'
      Size = 30
    end
    object QFacTMPALM_CODIGO: TIntegerField
      FieldName = 'ALM_CODIGO'
      Origin = 'FACTURASTMP.ALM_CODIGO'
    end
    object QFacTMPFAC_VENCE: TDateTimeField
      FieldName = 'FAC_VENCE'
      Origin = 'FACTURASTMP.FAC_VENCE'
    end
    object QFacTMPFAC_COMISION: TFloatField
      FieldName = 'FAC_COMISION'
      Origin = 'FACTURASTMP.FAC_COMISION'
    end
    object QFacTMPFAC_MENSAJE1: TIBStringField
      FieldName = 'FAC_MENSAJE1'
      Origin = 'FACTURASTMP.FAC_MENSAJE1'
      Size = 60
    end
    object QFacTMPFAC_MENSAJE2: TIBStringField
      FieldName = 'FAC_MENSAJE2'
      Origin = 'FACTURASTMP.FAC_MENSAJE2'
      Size = 60
    end
    object QFacTMPFAC_MENSAJE3: TIBStringField
      FieldName = 'FAC_MENSAJE3'
      Origin = 'FACTURASTMP.FAC_MENSAJE3'
      Size = 60
    end
    object QFacTMPFAC_PORCCOMISION: TFloatField
      FieldName = 'FAC_PORCCOMISION'
      Origin = 'FACTURASTMP.FAC_PORCCOMISION'
    end
    object QFacTMPFAC_CUOTAS: TIntegerField
      FieldName = 'FAC_CUOTAS'
      Origin = 'FACTURASTMP.FAC_CUOTAS'
    end
    object QFacTMPFAC_HORA: TIBStringField
      FieldName = 'FAC_HORA'
      Origin = 'FACTURASTMP.FAC_HORA'
      Size = 15
    end
    object QFacTMPCON_NUMERO: TIntegerField
      FieldName = 'CON_NUMERO'
      Origin = 'FACTURASTMP.CON_NUMERO'
    end
    object QFacTMPFAC_ANO: TIntegerField
      FieldName = 'FAC_ANO'
      Origin = 'FACTURASTMP.FAC_ANO'
    end
    object QFacTMPFAC_MES: TIntegerField
      FieldName = 'FAC_MES'
      Origin = 'FACTURASTMP.FAC_MES'
    end
    object QFacTMPFAC_CONITBIS: TIBStringField
      FieldName = 'FAC_CONITBIS'
      Origin = 'FACTURASTMP.FAC_CONITBIS'
      Size = 5
    end
    object QFacTMPFAC_DEVUELTO: TFloatField
      FieldName = 'FAC_DEVUELTO'
      Origin = 'FACTURASTMP.FAC_DEVUELTO'
    end
    object QFacTMPFAC_TASA: TFloatField
      FieldName = 'FAC_TASA'
      Origin = 'FACTURASTMP.FAC_TASA'
    end
    object QFacTMPMON_CODIGO: TIntegerField
      FieldName = 'MON_CODIGO'
      Origin = 'FACTURASTMP.MON_CODIGO'
    end
    object QFacTMPSUC_CODIGO: TIntegerField
      FieldName = 'SUC_CODIGO'
    end
    object QFacTMPFAC_DOMICILIO: TStringField
      FieldName = 'FAC_DOMICILIO'
      Size = 5
    end
    object QFacTMPfac_comisionpagada: TBCDField
      FieldName = 'fac_comisionpagada'
      Precision = 15
      Size = 2
    end
    object QFacTMPfac_caja: TIntegerField
      FieldName = 'fac_caja'
    end
    object QFacTMPpro_codigo: TIntegerField
      FieldName = 'pro_codigo'
    end
    object QFacTMPNCF_Fijo: TStringField
      FieldName = 'NCF_Fijo'
      Size = 11
    end
    object QFacTMPNCF_Secuencia: TBCDField
      FieldName = 'NCF_Secuencia'
      Precision = 18
      Size = 0
    end
    object QFacTMPfac_selectivo_ad: TBCDField
      FieldName = 'fac_selectivo_ad'
      Precision = 15
      Size = 2
    end
    object QFacTMPfac_selectivo_con: TBCDField
      FieldName = 'fac_selectivo_con'
      Precision = 15
      Size = 2
    end
    object QFacTMPfac_hold: TStringField
      FieldName = 'fac_hold'
      Size = 5
    end
    object QFacTMPfac_rnc: TStringField
      FieldName = 'fac_rnc'
      Size = 13
    end
    object QFacTMPOrdenID: TIntegerField
      FieldName = 'OrdenID'
    end
    object QFacTMPPlaca: TStringField
      FieldName = 'Placa'
    end
    object QFacTMPChofer: TStringField
      FieldName = 'Chofer'
      Size = 50
    end
    object QFacTMPModelo: TStringField
      FieldName = 'Modelo'
      Size = 50
    end
    object QFacTMPMarca: TStringField
      FieldName = 'Marca'
      Size = 50
    end
    object QFacTMPCompania: TStringField
      FieldName = 'Compania'
      Size = 100
    end
    object QFacTMPCamionID: TIntegerField
      FieldName = 'CamionID'
    end
    object QFacTMPMetraje: TBCDField
      FieldName = 'Metraje'
      Precision = 18
      Size = 2
    end
    object QFacTMPfac_interes: TBCDField
      FieldName = 'fac_interes'
      Precision = 8
      Size = 2
    end
    object QFacTMPtip_codigo: TIntegerField
      FieldName = 'tip_codigo'
    end
    object QFacTMPFAC_NOTA: TMemoField
      FieldName = 'FAC_NOTA'
      BlobType = ftMemo
    end
  end
  object QDetalleTMP: TADOQuery
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
        Name = 'numero'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'tfa'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'for'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end>
    SQL.Strings = (
      'select '
      'DET_CANTDEVUELTA, DET_CANTIDAD, DET_CONITBIS, '
      'DET_COSTO, DET_DESCUENTO, DET_ITBIS, DET_PRECIO, '
      'DET_SECUENCIA, DET_STATUS, EMP_CODIGO, FAC_FORMA, '
      'FAC_NUMERO, PRO_BARRA, PRO_CODIGO, PRO_NOMBRE, '
      'PRO_RFABRIC, PRO_RORIGINAL, TFA_CODIGO, DET_TOTAL, '
      'DEP_CODIGO, DET_COMISION, DET_OFERTA, DET_DESCMAX, '
      'PRO_SERVICIO, VEN_CODIGO, DET_LOTE, DET_VENCE,'
      'DET_TOTALDESC, DET_TOTALITBIS, DET_PRECIOMINIMO,'
      'DET_ESCALA, DET_MANEJAESCALA, DET_MEDIDA,'
      'DET_COSTOEMP, DET_PRECIO1, DET_PRECIO2,'
      'DET_PRECIO3, DET_PRECIO4, PRO_COMBO,'
      'DET_PRECIOMINIMOEMP, PED_NUMERO, SUC_CODIGO,'
      'det_cant_oferta, det_nota, det_selectivo_ad, det_selectivo_con,'
      'det_minimo_venta, mar_codigo, pro_ctacosto, pro_ctainvent,'
      'pro_ctaingreso, pre_codigo, alm_codigo, pro_ctadescuento,'
      'det_cantempaque, pro_unidad_medida, UnidadID,'
      'Medida_Precio1, Medida_Precio2, Medida_Precio3,'
      
        'Medida_Precio4, det_cant_unidad_medida, MedidorID, Medidor_Secue' +
        'ncia,'
      'Medidor_Cantidad, pro_utilizamedidor'
      'from '
      'DET_FACTURATMP'
      'where '
      'emp_codigo = :emp'
      'and fac_numero = :numero'
      'and tfa_codigo = :tfa'
      'and fac_forma = :for'
      'order by '
      'det_secuencia')
    Left = 568
    Top = 235
    object QDetalleTMPDET_CANTDEVUELTA: TFloatField
      FieldName = 'DET_CANTDEVUELTA'
      Origin = 'DET_FACTURATMP.DET_CANTDEVUELTA'
    end
    object QDetalleTMPDET_CANTIDAD: TFloatField
      FieldName = 'DET_CANTIDAD'
      Origin = 'DET_FACTURATMP.DET_CANTIDAD'
    end
    object QDetalleTMPDET_CONITBIS: TIBStringField
      FieldName = 'DET_CONITBIS'
      Origin = 'DET_FACTURATMP.DET_CONITBIS'
      Size = 1
    end
    object QDetalleTMPDET_COSTO: TFloatField
      FieldName = 'DET_COSTO'
      Origin = 'DET_FACTURATMP.DET_COSTO'
    end
    object QDetalleTMPDET_DESCUENTO: TFloatField
      FieldName = 'DET_DESCUENTO'
      Origin = 'DET_FACTURATMP.DET_DESCUENTO'
    end
    object QDetalleTMPDET_ITBIS: TFloatField
      FieldName = 'DET_ITBIS'
      Origin = 'DET_FACTURATMP.DET_ITBIS'
    end
    object QDetalleTMPDET_PRECIO: TFloatField
      FieldName = 'DET_PRECIO'
      Origin = 'DET_FACTURATMP.DET_PRECIO'
    end
    object QDetalleTMPDET_SECUENCIA: TIntegerField
      FieldName = 'DET_SECUENCIA'
      Origin = 'DET_FACTURATMP.DET_SECUENCIA'
    end
    object QDetalleTMPDET_STATUS: TIBStringField
      FieldName = 'DET_STATUS'
      Origin = 'DET_FACTURATMP.DET_STATUS'
      Size = 3
    end
    object QDetalleTMPEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'DET_FACTURATMP.EMP_CODIGO'
    end
    object QDetalleTMPFAC_FORMA: TIBStringField
      FieldName = 'FAC_FORMA'
      Origin = 'DET_FACTURATMP.FAC_FORMA'
      Size = 1
    end
    object QDetalleTMPFAC_NUMERO: TIntegerField
      FieldName = 'FAC_NUMERO'
      Origin = 'DET_FACTURATMP.FAC_NUMERO'
    end
    object QDetalleTMPPRO_BARRA: TIBStringField
      FieldName = 'PRO_BARRA'
      Origin = 'DET_FACTURATMP.PRO_BARRA'
      Size = 30
    end
    object QDetalleTMPPRO_CODIGO: TIntegerField
      FieldName = 'PRO_CODIGO'
      Origin = 'DET_FACTURATMP.PRO_CODIGO'
    end
    object QDetalleTMPPRO_NOMBRE: TIBStringField
      FieldName = 'PRO_NOMBRE'
      Origin = 'DET_FACTURATMP.PRO_NOMBRE'
      Size = 60
    end
    object QDetalleTMPPRO_RFABRIC: TIBStringField
      FieldName = 'PRO_RFABRIC'
      Origin = 'DET_FACTURATMP.PRO_RFABRIC'
      Size = 60
    end
    object QDetalleTMPPRO_RORIGINAL: TIBStringField
      FieldName = 'PRO_RORIGINAL'
      Origin = 'DET_FACTURATMP.PRO_RORIGINAL'
      Size = 50
    end
    object QDetalleTMPTFA_CODIGO: TIntegerField
      FieldName = 'TFA_CODIGO'
      Origin = 'DET_FACTURATMP.TFA_CODIGO'
    end
    object QDetalleTMPDET_TOTAL: TFloatField
      FieldName = 'DET_TOTAL'
      Origin = 'DET_FACTURATMP.DET_TOTAL'
    end
    object QDetalleTMPDEP_CODIGO: TIntegerField
      FieldName = 'DEP_CODIGO'
      Origin = 'DET_FACTURATMP.DEP_CODIGO'
    end
    object QDetalleTMPDET_COMISION: TFloatField
      FieldName = 'DET_COMISION'
      Origin = 'DET_FACTURATMP.DET_COMISION'
    end
    object QDetalleTMPDET_OFERTA: TIBStringField
      FieldName = 'DET_OFERTA'
      Origin = 'DET_FACTURATMP.DET_OFERTA'
      Size = 1
    end
    object QDetalleTMPDET_DESCMAX: TFloatField
      FieldName = 'DET_DESCMAX'
      Origin = 'DET_FACTURATMP.DET_DESCMAX'
    end
    object QDetalleTMPPRO_SERVICIO: TIBStringField
      FieldName = 'PRO_SERVICIO'
      Origin = 'DET_FACTURATMP.PRO_SERVICIO'
      Size = 5
    end
    object QDetalleTMPVEN_CODIGO: TIntegerField
      FieldName = 'VEN_CODIGO'
      Origin = 'DET_FACTURATMP.VEN_CODIGO'
    end
    object QDetalleTMPDET_LOTE: TIntegerField
      FieldName = 'DET_LOTE'
      Origin = 'DET_FACTURATMP.DET_LOTE'
    end
    object QDetalleTMPDET_VENCE: TIBStringField
      FieldName = 'DET_VENCE'
      Origin = 'DET_FACTURATMP.DET_VENCE'
      Size = 5
    end
    object QDetalleTMPDET_TOTALDESC: TFloatField
      FieldName = 'DET_TOTALDESC'
      Origin = 'DET_FACTURATMP.DET_TOTALDESC'
    end
    object QDetalleTMPDET_TOTALITBIS: TFloatField
      FieldName = 'DET_TOTALITBIS'
      Origin = 'DET_FACTURATMP.DET_TOTALITBIS'
    end
    object QDetalleTMPDET_PRECIOMINIMO: TFloatField
      FieldName = 'DET_PRECIOMINIMO'
      Origin = 'DET_FACTURATMP.DET_PRECIOMINIMO'
    end
    object QDetalleTMPDET_ESCALA: TIBStringField
      FieldName = 'DET_ESCALA'
      Origin = 'DET_FACTURATMP.DET_ESCALA'
      Size = 5
    end
    object QDetalleTMPDET_MANEJAESCALA: TIBStringField
      FieldName = 'DET_MANEJAESCALA'
      Origin = 'DET_FACTURATMP.DET_MANEJAESCALA'
      Size = 5
    end
    object QDetalleTMPDET_MEDIDA: TIBStringField
      FieldName = 'DET_MEDIDA'
      Origin = 'DET_FACTURATMP.DET_MEDIDA'
      Size = 3
    end
    object QDetalleTMPDET_COSTOEMP: TFloatField
      FieldName = 'DET_COSTOEMP'
      Origin = 'DET_FACTURATMP.DET_COSTOEMP'
    end
    object QDetalleTMPDET_PRECIO1: TFloatField
      FieldName = 'DET_PRECIO1'
      Origin = 'DET_FACTURATMP.DET_PRECIO1'
    end
    object QDetalleTMPDET_PRECIO2: TFloatField
      FieldName = 'DET_PRECIO2'
      Origin = 'DET_FACTURATMP.DET_PRECIO2'
    end
    object QDetalleTMPDET_PRECIO3: TFloatField
      FieldName = 'DET_PRECIO3'
      Origin = 'DET_FACTURATMP.DET_PRECIO3'
    end
    object QDetalleTMPDET_PRECIO4: TFloatField
      FieldName = 'DET_PRECIO4'
      Origin = 'DET_FACTURATMP.DET_PRECIO4'
    end
    object QDetalleTMPPRO_COMBO: TIBStringField
      FieldName = 'PRO_COMBO'
      Origin = 'DET_FACTURATMP.PRO_COMBO'
      Size = 5
    end
    object QDetalleTMPDET_PRECIOMINIMOEMP: TFloatField
      FieldName = 'DET_PRECIOMINIMOEMP'
      Origin = 'DET_FACTURATMP.DET_PRECIOMINIMOEMP'
    end
    object QDetalleTMPPED_NUMERO: TIntegerField
      FieldName = 'PED_NUMERO'
      Origin = 'DET_FACTURATMP.PED_NUMERO'
    end
    object QDetalleTMPSUC_CODIGO: TIntegerField
      FieldName = 'SUC_CODIGO'
    end
    object QDetalleTMPdet_cant_oferta: TBCDField
      FieldName = 'det_cant_oferta'
      Precision = 15
      Size = 2
    end
    object QDetalleTMPdet_nota: TMemoField
      FieldName = 'det_nota'
      BlobType = ftMemo
    end
    object QDetalleTMPdet_selectivo_ad: TBCDField
      FieldName = 'det_selectivo_ad'
      Precision = 15
      Size = 2
    end
    object QDetalleTMPdet_selectivo_con: TBCDField
      FieldName = 'det_selectivo_con'
      Precision = 15
      Size = 2
    end
    object QDetalleTMPdet_minimo_venta: TBCDField
      FieldName = 'det_minimo_venta'
      Precision = 15
      Size = 2
    end
    object QDetalleTMPmar_codigo: TIntegerField
      FieldName = 'mar_codigo'
    end
    object QDetalleTMPpro_ctacosto: TStringField
      FieldName = 'pro_ctacosto'
      Size = 15
    end
    object QDetalleTMPpro_ctainvent: TStringField
      FieldName = 'pro_ctainvent'
      Size = 15
    end
    object QDetalleTMPpro_ctaingreso: TStringField
      FieldName = 'pro_ctaingreso'
      Size = 15
    end
    object QDetalleTMPpre_codigo: TIntegerField
      FieldName = 'pre_codigo'
    end
    object QDetalleTMPalm_codigo: TIntegerField
      FieldName = 'alm_codigo'
    end
    object QDetalleTMPpro_ctadescuento: TStringField
      FieldName = 'pro_ctadescuento'
      Size = 15
    end
    object QDetalleTMPdet_cantempaque: TBCDField
      FieldName = 'det_cantempaque'
      Precision = 15
      Size = 2
    end
    object QDetalleTMPpro_unidad_medida: TStringField
      FieldName = 'pro_unidad_medida'
    end
    object QDetalleTMPUnidadID: TStringField
      FieldName = 'UnidadID'
      Size = 1
    end
    object QDetalleTMPMedida_Precio1: TBCDField
      FieldName = 'Medida_Precio1'
      Precision = 18
      Size = 2
    end
    object QDetalleTMPMedida_Precio2: TBCDField
      FieldName = 'Medida_Precio2'
      Precision = 18
      Size = 2
    end
    object QDetalleTMPMedida_Precio3: TBCDField
      FieldName = 'Medida_Precio3'
      Precision = 18
      Size = 2
    end
    object QDetalleTMPMedida_Precio4: TBCDField
      FieldName = 'Medida_Precio4'
      Precision = 18
      Size = 2
    end
    object QDetalleTMPdet_cant_unidad_medida: TBCDField
      FieldName = 'det_cant_unidad_medida'
      Precision = 18
      Size = 2
    end
    object QDetalleTMPMedidorID: TIntegerField
      FieldName = 'MedidorID'
    end
    object QDetalleTMPMedidor_Secuencia: TBCDField
      FieldName = 'Medidor_Secuencia'
      Precision = 18
      Size = 0
    end
    object QDetalleTMPMedidor_Cantidad: TBCDField
      FieldName = 'Medidor_Cantidad'
      Precision = 18
      Size = 0
    end
    object QDetalleTMPpro_utilizamedidor: TStringField
      FieldName = 'pro_utilizamedidor'
      Size = 5
    end
  end
  object QVendedores: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <
      item
        Name = 'EMP_CODIGO'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT VEN_CODIGO, VEN_NOMBRE'
      'FROM VENDEDORES'
      'WHERE EMP_CODIGO = :EMP_CODIGO'
      'ORDER BY VEN_NOMBRE')
    Left = 536
    Top = 299
    object QVendedoresVEN_CODIGO: TIntegerField
      FieldName = 'VEN_CODIGO'
      Origin = 'VENDEDORES.VEN_CODIGO'
      Required = True
    end
    object QVendedoresVEN_NOMBRE: TIBStringField
      FieldName = 'VEN_NOMBRE'
      Origin = 'VENDEDORES.VEN_NOMBRE'
      Size = 60
    end
  end
  object dsVend: TDataSource
    DataSet = QVendedores
    Left = 568
    Top = 299
  end
  object QSerie: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    AfterInsert = QSerieAfterInsert
    OnNewRecord = QSerieNewRecord
    Parameters = <
      item
        Name = 'emp'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'suc'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'forma'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'tipo'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'numero'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'PRO_CODIGO'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select '
      'EMP_CODIGO, FAC_FORMA, FAC_NUMERO, PRO_CODIGO, '
      'SER_NUMERO, SER_SECUENCIA, TFA_CODIGO, SUC_CODIGO'
      'from FACSERIE'
      'where emp_codigo = :emp'
      'and suc_codigo = :suc'
      'and fac_forma = :forma'
      'and tfa_codigo = :tipo'
      'and fac_numero = :numero'
      'and PRO_CODIGO= :PRO_CODIGO'
      'order by PRO_CODIGO, ser_secuencia')
    Left = 464
    Top = 299
    object QSerieEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
    end
    object QSerieFAC_FORMA: TStringField
      FieldName = 'FAC_FORMA'
      Size = 1
    end
    object QSerieFAC_NUMERO: TIntegerField
      FieldName = 'FAC_NUMERO'
    end
    object QSeriePRO_CODIGO: TIntegerField
      FieldName = 'PRO_CODIGO'
    end
    object QSerieSER_NUMERO: TStringField
      FieldName = 'SER_NUMERO'
      Size = 30
    end
    object QSerieSER_SECUENCIA: TIntegerField
      FieldName = 'SER_SECUENCIA'
    end
    object QSerieTFA_CODIGO: TIntegerField
      FieldName = 'TFA_CODIGO'
    end
    object QSerieSUC_CODIGO: TIntegerField
      FieldName = 'SUC_CODIGO'
    end
  end
  object QSucursal: TADOQuery
    Connection = DM.ADOSigma
    BeforePost = QSucursalBeforePost
    AfterPost = QSucursalAfterPost
    AfterDelete = QSucursalAfterDelete
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
      
        'select  s.suc_direccion, s.suc_localidad, s.suc_telefono, s.suc_' +
        'rnc,'
      's.emp_codigo, s.suc_codigo, s.suc_nombre, s.alm_codigo'
      'from'
      'sucursales s, sucursal_acceso a'
      'where'
      's.emp_codigo = a.emp_codigo'
      'and s.suc_codigo = a.suc_codigo'
      'and a.emp_codigo = :emp_codigo'
      'and a.usu_codigo = :usu'
      'order by s.suc_codigo')
    Left = 608
    Top = 235
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
    object QSucursalsuc_direccion: TStringField
      FieldName = 'suc_direccion'
      Size = 60
    end
    object QSucursalsuc_localidad: TStringField
      FieldName = 'suc_localidad'
      Size = 60
    end
    object QSucursalsuc_telefono: TStringField
      FieldName = 'suc_telefono'
      Size = 30
    end
    object QSucursalsuc_rnc: TStringField
      FieldName = 'suc_rnc'
      Size = 30
    end
  end
  object dsSuc: TDataSource
    DataSet = QSucursal
    Left = 640
    Top = 235
  end
  object QReceta: TADOQuery
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
        Name = 'for'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end
      item
        Name = 'tfa'
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
      'emp_codigo, suc_codigo, fac_forma, fac_numero,'
      'tfa_codigo, pro_codigo, det_secuencia, det_tipo,'
      'det_esf, det_cil, det_eje, det_add, det_dist,'
      'det_alt'
      'from'
      'receta_optica'
      'where'
      'emp_codigo = :emp'
      'and suc_codigo = :suc'
      'and fac_forma = :for'
      'and tfa_codigo = :tfa'
      'and fac_numero = :num'
      'order by'
      'det_secuencia')
    Left = 536
    Top = 267
    object QRecetaemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QRecetasuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object QRecetafac_forma: TStringField
      FieldName = 'fac_forma'
      Size = 1
    end
    object QRecetafac_numero: TIntegerField
      FieldName = 'fac_numero'
    end
    object QRecetatfa_codigo: TIntegerField
      FieldName = 'tfa_codigo'
    end
    object QRecetapro_codigo: TIntegerField
      FieldName = 'pro_codigo'
    end
    object QRecetadet_secuencia: TIntegerField
      FieldName = 'det_secuencia'
    end
    object QRecetadet_tipo: TStringField
      FieldName = 'det_tipo'
      Size = 3
    end
    object QRecetadet_esf: TStringField
      FieldName = 'det_esf'
      Size = 10
    end
    object QRecetadet_cil: TStringField
      FieldName = 'det_cil'
      Size = 10
    end
    object QRecetadet_eje: TStringField
      FieldName = 'det_eje'
      Size = 10
    end
    object QRecetadet_add: TStringField
      FieldName = 'det_add'
      Size = 10
    end
    object QRecetadet_dist: TStringField
      FieldName = 'det_dist'
      Size = 10
    end
    object QRecetadet_alt: TStringField
      FieldName = 'det_alt'
      Size = 10
    end
  end
  object QCuentas: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    AfterPost = QCuentasAfterPost
    AfterDelete = QCuentasAfterDelete
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
        Name = 'tipo'
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
      end
      item
        Name = 'forma'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
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
      'emp_codigo, suc_codigo, fac_forma, tfa_codigo, fac_numero,'
      'det_secuencia, cat_nombre, det_monto, det_origen, cat_cuenta'
      'from'
      'contdet_facturas'
      'where'
      'emp_codigo = :emp'
      'and tfa_codigo = :tipo'
      'and fac_numero = :numero'
      'and fac_forma = :forma'
      'and suc_codigo = :suc'
      'order by'
      'det_secuencia')
    Left = 608
    Top = 267
    object QCuentasemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QCuentassuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object QCuentasfac_forma: TStringField
      FieldName = 'fac_forma'
      Size = 1
    end
    object QCuentastfa_codigo: TIntegerField
      FieldName = 'tfa_codigo'
    end
    object QCuentasfac_numero: TIntegerField
      FieldName = 'fac_numero'
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
    Left = 640
    Top = 267
  end
  object QDetalle: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    BeforeEdit = QDetalleBeforeEdit
    AfterEdit = QDetalleAfterEdit
    BeforePost = QDetalleBeforePost
    AfterPost = QDetalleAfterPost
    BeforeDelete = QDetalleBeforeDelete
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
        Name = 'tipo'
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
      end
      item
        Name = 'forma'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
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
      
        'DET_CANTDEVUELTA, DET_CANTIDAD, DET_CONITBIS, DET_COSTO, DET_DES' +
        'CUENTO,'
      
        'DET_ITBIS, DET_PRECIO, DET_SECUENCIA, DET_STATUS, EMP_CODIGO, FA' +
        'C_FORMA,'
      
        'FAC_NUMERO, PRO_BARRA, PRO_CODIGO, PRO_NOMBRE, PRO_RFABRIC, PRO_' +
        'RORIGINAL,'
      
        'TFA_CODIGO, DET_TOTAL, DEP_CODIGO, DET_COMISION, DET_OFERTA, DET' +
        '_DESCMAX,'
      'PRO_SERVICIO, VEN_CODIGO, DET_LOTE, DET_VENCE,'
      'DET_TOTALDESC, DET_TOTALITBIS, DET_PRECIOMINIMO,'
      'DET_ESCALA, DET_MANEJAESCALA, DET_MEDIDA,'
      'DET_COSTOEMP, DET_PRECIO1, DET_PRECIO2,'
      'DET_PRECIO3, DET_PRECIO4, PRO_COMBO,'
      'DET_PRECIOMINIMOEMP, PED_NUMERO, DET_NOTA,'
      'SUC_CODIGO, det_cant_oferta,'
      'det_selectivo_ad, det_selectivo_con, det_minimo_venta,'
      'mar_codigo, pro_ctacosto, pro_ctainvent, pro_ctaingreso,'
      'pre_codigo, alm_codigo, pro_ctadescuento,'
      'det_cantempaque, pro_unidad_medida, UnidadID,'
      'Medida_Precio1, Medida_Precio2, Medida_Precio3,'
      
        'Medida_Precio4, det_cant_unidad_medida, MedidorID, Medidor_Secue' +
        'ncia,'
      
        'Medidor_Cantidad, pro_utilizamedidor,pro_UtilizaEnvio, pro_seria' +
        'lizado, pro_UtilizaRenta'
      'From'
      'DET_FACTURA'
      'where emp_codigo = :emp'
      'and tfa_codigo = :tipo'
      'and fac_numero = :numero'
      'and fac_forma = :forma'
      'and suc_codigo = :suc'
      'order by det_secuencia')
    Left = 464
    Top = 267
    object QDetalleDET_CANTDEVUELTA: TFloatField
      FieldName = 'DET_CANTDEVUELTA'
      Origin = 'DET_FACTURA.DET_CANTDEVUELTA'
    end
    object QDetalleDET_CANTIDAD: TFloatField
      FieldName = 'DET_CANTIDAD'
      Origin = 'DET_FACTURA.DET_CANTIDAD'
    end
    object QDetalleDET_CONITBIS: TIBStringField
      FieldName = 'DET_CONITBIS'
      Origin = 'DET_FACTURA.DET_CONITBIS'
      Size = 1
    end
    object QDetalleDET_COSTO: TFloatField
      FieldName = 'DET_COSTO'
      Origin = 'DET_FACTURA.DET_COSTO'
      currency = True
    end
    object QDetalleDET_DESCUENTO: TFloatField
      FieldName = 'DET_DESCUENTO'
      Origin = 'DET_FACTURA.DET_DESCUENTO'
      currency = True
    end
    object QDetalleDET_ITBIS: TFloatField
      FieldName = 'DET_ITBIS'
      Origin = 'DET_FACTURA.DET_ITBIS'
      currency = True
    end
    object QDetalleDET_PRECIO: TFloatField
      FieldName = 'DET_PRECIO'
      Origin = 'DET_FACTURA.DET_PRECIO'
      currency = True
    end
    object QDetalleDET_SECUENCIA: TIntegerField
      FieldName = 'DET_SECUENCIA'
      Origin = 'DET_FACTURA.DET_SECUENCIA'
    end
    object QDetalleDET_STATUS: TIBStringField
      FieldName = 'DET_STATUS'
      Origin = 'DET_FACTURA.DET_STATUS'
      Size = 3
    end
    object QDetalleEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'DET_FACTURA.EMP_CODIGO'
    end
    object QDetalleFAC_FORMA: TIBStringField
      FieldName = 'FAC_FORMA'
      Origin = 'DET_FACTURA.FAC_FORMA'
      Size = 1
    end
    object QDetalleFAC_NUMERO: TIntegerField
      FieldName = 'FAC_NUMERO'
      Origin = 'DET_FACTURA.FAC_NUMERO'
    end
    object QDetallePRO_BARRA: TIBStringField
      FieldName = 'PRO_BARRA'
      Origin = 'DET_FACTURA.PRO_BARRA'
      Size = 30
    end
    object QDetallePRO_NOMBRE: TIBStringField
      DisplayWidth = 256
      FieldName = 'PRO_NOMBRE'
      Origin = 'DET_FACTURA.PRO_NOMBRE'
      Size = 256
    end
    object QDetallePRO_CODIGO: TIntegerField
      FieldName = 'PRO_CODIGO'
      Origin = 'DET_FACTURA.PRO_CODIGO'
      OnChange = QDetallePRO_CODIGOChange
    end
    object QDetallePRO_RFABRIC: TIBStringField
      FieldName = 'PRO_RFABRIC'
      Origin = 'DET_FACTURA.PRO_RFABRIC'
      OnChange = QDetallePRO_RFABRICChange
      Size = 60
    end
    object QDetallePRO_RORIGINAL: TIBStringField
      FieldName = 'PRO_RORIGINAL'
      Origin = 'DET_FACTURA.PRO_RORIGINAL'
      OnChange = QDetallePRO_RORIGINALChange
      Size = 50
    end
    object QDetalleTFA_CODIGO: TIntegerField
      FieldName = 'TFA_CODIGO'
      Origin = 'DET_FACTURA.TFA_CODIGO'
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
    object QDetalleDET_TOTAL: TFloatField
      FieldName = 'DET_TOTAL'
      Origin = 'DET_FACTURA.DET_TOTAL'
      currency = True
    end
    object QDetalleDEP_CODIGO: TIntegerField
      FieldName = 'DEP_CODIGO'
      Origin = 'DET_FACTURA.DEP_CODIGO'
    end
    object QDetalleDET_COMISION: TFloatField
      FieldName = 'DET_COMISION'
      Origin = 'DET_FACTURA.DET_COMISION'
    end
    object QDetalleDET_OFERTA: TIBStringField
      FieldName = 'DET_OFERTA'
      Origin = 'DET_FACTURA.DET_OFERTA'
      Size = 1
    end
    object QDetalleDET_DESCMAX: TFloatField
      FieldName = 'DET_DESCMAX'
      Origin = 'DET_FACTURA.DET_DESCMAX'
    end
    object QDetallePRO_SERVICIO: TIBStringField
      FieldName = 'PRO_SERVICIO'
      Origin = 'DET_FACTURA.PRO_SERVICIO'
      Size = 5
    end
    object QDetalleVEN_CODIGO: TIntegerField
      FieldName = 'VEN_CODIGO'
      Origin = 'DET_FACTURA.VEN_CODIGO'
    end
    object QDetalleDET_LOTE: TIntegerField
      FieldName = 'DET_LOTE'
      Origin = 'DET_FACTURA.DET_LOTE'
    end
    object QDetalleDET_VENCE: TIBStringField
      FieldName = 'DET_VENCE'
      Origin = 'DET_FACTURA.DET_VENCE'
      Size = 5
    end
    object QDetalleDET_TOTALDESC: TFloatField
      FieldName = 'DET_TOTALDESC'
      Origin = 'DET_FACTURA.DET_TOTALDESC'
    end
    object QDetalleDET_TOTALITBIS: TFloatField
      FieldName = 'DET_TOTALITBIS'
      Origin = 'DET_FACTURA.DET_TOTALITBIS'
    end
    object QDetalleDET_PRECIOMINIMO: TFloatField
      FieldName = 'DET_PRECIOMINIMO'
      Origin = 'DET_FACTURA.DET_PRECIOMINIMO'
    end
    object QDetalleDET_ESCALA: TIBStringField
      FieldName = 'DET_ESCALA'
      Origin = 'DET_FACTURA.DET_ESCALA'
      Size = 5
    end
    object QDetalleDET_MANEJAESCALA: TIBStringField
      FieldName = 'DET_MANEJAESCALA'
      Origin = 'DET_FACTURA.DET_MANEJAESCALA'
      Size = 5
    end
    object QDetalleDET_MEDIDA: TIBStringField
      FieldName = 'DET_MEDIDA'
      Origin = 'DET_FACTURA.DET_MEDIDA'
      OnChange = QDetalleDET_MEDIDAChange
      Size = 3
    end
    object QDetalleDET_COSTOEMP: TFloatField
      FieldName = 'DET_COSTOEMP'
      Origin = 'DET_FACTURA.DET_COSTOEMP'
    end
    object QDetalleDET_PRECIO1: TFloatField
      FieldName = 'DET_PRECIO1'
      Origin = 'DET_FACTURA.DET_PRECIO1'
    end
    object QDetalleDET_PRECIO2: TFloatField
      FieldName = 'DET_PRECIO2'
      Origin = 'DET_FACTURA.DET_PRECIO2'
    end
    object QDetalleDET_PRECIO3: TFloatField
      FieldName = 'DET_PRECIO3'
      Origin = 'DET_FACTURA.DET_PRECIO3'
    end
    object QDetalleDET_PRECIO4: TFloatField
      FieldName = 'DET_PRECIO4'
      Origin = 'DET_FACTURA.DET_PRECIO4'
    end
    object QDetallePRO_COMBO: TIBStringField
      FieldName = 'PRO_COMBO'
      Origin = 'DET_FACTURA.PRO_COMBO'
      Size = 5
    end
    object QDetalleDET_PRECIOMINIMOEMP: TFloatField
      FieldName = 'DET_PRECIOMINIMOEMP'
      Origin = 'DET_FACTURA.DET_PRECIOMINIMOEMP'
    end
    object QDetallePED_NUMERO: TIntegerField
      FieldName = 'PED_NUMERO'
      Origin = 'DET_FACTURA.PED_NUMERO'
    end
    object QDetalleDET_NOTA: TMemoField
      FieldName = 'DET_NOTA'
      BlobType = ftMemo
    end
    object QDetalleSUC_CODIGO: TIntegerField
      FieldName = 'SUC_CODIGO'
    end
    object QDetalledet_cant_oferta: TBCDField
      FieldName = 'det_cant_oferta'
      Precision = 15
      Size = 2
    end
    object QDetalledet_selectivo_ad: TBCDField
      FieldName = 'det_selectivo_ad'
      currency = True
      Precision = 15
      Size = 2
    end
    object QDetalledet_selectivo_con: TBCDField
      FieldName = 'det_selectivo_con'
      currency = True
      Precision = 15
      Size = 2
    end
    object QDetalledet_minimo_venta: TBCDField
      FieldName = 'det_minimo_venta'
      Precision = 15
      Size = 2
    end
    object QDetallemar_codigo: TIntegerField
      FieldName = 'mar_codigo'
    end
    object QDetallepro_ctacosto: TStringField
      FieldName = 'pro_ctacosto'
      Size = 15
    end
    object QDetallepro_ctainvent: TStringField
      FieldName = 'pro_ctainvent'
      Size = 15
    end
    object QDetallepro_ctaingreso: TStringField
      FieldName = 'pro_ctaingreso'
      Size = 15
    end
    object QDetallepre_codigo: TIntegerField
      FieldName = 'pre_codigo'
    end
    object QDetallealm_codigo: TIntegerField
      FieldName = 'alm_codigo'
    end
    object QDetallepro_ctadescuento: TStringField
      FieldName = 'pro_ctadescuento'
      Size = 15
    end
    object QDetalledet_cantempaque: TBCDField
      FieldName = 'det_cantempaque'
      Precision = 15
      Size = 2
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
    object QDetalleMedidorID: TIntegerField
      FieldName = 'MedidorID'
    end
    object QDetalleMedidor_Secuencia: TBCDField
      FieldName = 'Medidor_Secuencia'
      Precision = 18
      Size = 0
    end
    object QDetalleMedidor_Cantidad: TBCDField
      FieldName = 'Medidor_Cantidad'
      Precision = 18
      Size = 0
    end
    object QDetallepro_utilizamedidor: TStringField
      FieldName = 'pro_utilizamedidor'
      Size = 5
    end
    object QDetallepro_UtilizaEnvio: TStringField
      FieldName = 'pro_UtilizaEnvio'
      Size = 5
    end
    object QDetallepro_serializado: TStringField
      FieldName = 'pro_serializado'
    end
    object QDetallepro_UtilizaRenta: TStringField
      FieldName = 'pro_UtilizaRenta'
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 284
    Top = 208
    object NumerosdeserieFer1: TMenuItem
      Caption = 'N'#250'meros de serie'
    end
    object Introducirn1: TMenuItem
      Caption = 'N'#250'meros de serie'
      Visible = False
    end
    object Crearnotaalproducto1: TMenuItem
      Caption = 'Nota en el producto'
      OnClick = Crearnotaalproducto1Click
    end
    object Preventasdelproducto1: TMenuItem
      Caption = 'Preventas'
      OnClick = Preventasdelproducto1Click
    end
    object Vercombodelproducto1: TMenuItem
      Caption = 'Ver combo'
      OnClick = Vercombodelproducto1Click
    end
    object Escalas1: TMenuItem
      Caption = 'Escalas'
      OnClick = Escalas1Click
    end
    object DatosdelMedidor1: TMenuItem
      Caption = 'Datos del Medidor'
      OnClick = DatosdelMedidor1Click
    end
    object btreceta: TMenuItem
      Caption = 'Receta de Optica'
    end
    object DatosdelEnvio1: TMenuItem
      Caption = 'Datos del Envio'
    end
    object DatosdelaRenta1: TMenuItem
      Caption = 'Datos de la Renta'
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Consultarmovimiento1: TMenuItem
      Caption = 'Consultar movimientos'
      OnClick = Consultarmovimiento1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Pantalladeproductos1: TMenuItem
      Caption = 'Pantalla de productos'
      OnClick = Pantalladeproductos1Click
    end
    object Ajustedeinventario1: TMenuItem
      Caption = 'Pantalla de ajuste de inventario'
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
      'and u.UnidadID = :und')
    Left = 320
    Top = 208
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
  object QPedidos: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    OnNewRecord = QPedidosNewRecord
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
        Name = 'for'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end
      item
        Name = 'tfa'
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
      'emp_codigo, suc_codigo, fac_forma, tfa_codigo, fac_numero,'
      
        'ped_tipo, ped_numero, ped_fecha, ped_nombre, ped_total, ped_itbi' +
        's,'
      'mon_codigo, ped_tasa'
      'from'
      'FacPedidos'
      'where'
      'emp_codigo = :emp'
      'and suc_codigo = :suc'
      'and fac_forma = :for'
      'and tfa_codigo = :tfa'
      'and fac_numero = :num'
      'order by ped_numero desc')
    Left = 608
    Top = 299
    object QPedidosemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QPedidossuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object QPedidosfac_forma: TStringField
      FieldName = 'fac_forma'
      Size = 1
    end
    object QPedidostfa_codigo: TIntegerField
      FieldName = 'tfa_codigo'
    end
    object QPedidosfac_numero: TIntegerField
      FieldName = 'fac_numero'
    end
    object QPedidosped_tipo: TStringField
      FieldName = 'ped_tipo'
      Size = 1
    end
    object QPedidosped_numero: TIntegerField
      FieldName = 'ped_numero'
      OnChange = QPedidosped_numeroChange
    end
    object QPedidosped_fecha: TDateTimeField
      FieldName = 'ped_fecha'
    end
    object QPedidosped_nombre: TStringField
      FieldName = 'ped_nombre'
      Size = 100
    end
    object QPedidosped_total: TBCDField
      FieldName = 'ped_total'
      Precision = 18
      Size = 2
    end
    object QPedidosped_itbis: TBCDField
      FieldName = 'ped_itbis'
      Precision = 18
      Size = 2
    end
    object QPedidosmon_codigo: TIntegerField
      FieldName = 'mon_codigo'
    end
    object QPedidosped_tasa: TBCDField
      FieldName = 'ped_tasa'
      Precision = 15
      Size = 2
    end
  end
  object dsPedidos: TDataSource
    DataSet = QPedidos
    Left = 640
    Top = 299
  end
  object QClinico: TADOQuery
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
        Name = 'for'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end
      item
        Name = 'tfa'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'fac'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      
        'emp_codigo, suc_codigo, fac_forma, tfa_codigo, fac_numero, detal' +
        'leid,'
      
        'facturaid, recordid, facturada_sigma, tipo, fecha, paciente, pol' +
        'iza,'
      'cobertura, autorizacion'
      'from'
      'Facturas_detalle_clinico'
      'where'
      'emp_codigo = :emp'
      'and suc_codigo = :suc'
      'and fac_forma = :for'
      'and tfa_codigo = :tfa'
      'and fac_numero = :fac'
      'order by'
      'tipo, fecha'
      '')
    Left = 284
    Top = 240
    object QClinicoemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QClinicosuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object QClinicofac_forma: TStringField
      FieldName = 'fac_forma'
      Size = 1
    end
    object QClinicotfa_codigo: TIntegerField
      FieldName = 'tfa_codigo'
    end
    object QClinicofac_numero: TIntegerField
      FieldName = 'fac_numero'
    end
    object QClinicodetalleid: TIntegerField
      FieldName = 'detalleid'
    end
    object QClinicofacturaid: TBCDField
      FieldName = 'facturaid'
      Precision = 18
      Size = 0
    end
    object QClinicorecordid: TBCDField
      FieldName = 'recordid'
      Precision = 18
      Size = 0
    end
    object QClinicofacturada_sigma: TStringField
      FieldName = 'facturada_sigma'
      Size = 2
    end
    object QClinicotipo: TStringField
      FieldName = 'tipo'
      Size = 1
    end
    object QClinicofecha: TDateTimeField
      FieldName = 'fecha'
    end
    object QClinicopaciente: TStringField
      FieldName = 'paciente'
      Size = 100
    end
    object QClinicopoliza: TStringField
      FieldName = 'poliza'
      Size = 30
    end
    object QClinicocobertura: TBCDField
      FieldName = 'cobertura'
      currency = True
      Precision = 18
      Size = 2
    end
    object QClinicoautorizacion: TStringField
      FieldName = 'autorizacion'
      Size = 15
    end
  end
  object dsClinico: TDataSource
    DataSet = QClinico
    Left = 320
    Top = 240
  end
  object QEnvio: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    OnNewRecord = QEnvioNewRecord
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
        Name = 'fac'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select env_status,'
      
        'emp_codigo, suc_codigo, fac_numero, pro_codigo, IDEnvio, Fecha, ' +
        'Ciudad_Origen, Ciudad_Destino,'
      
        'Nombre_envia, Telefono_Envia, Nombre_Recibe, Telefono_Recibe, De' +
        'scripcion, env_suc_destino'
      'from'
      'envio'
      'where'
      'emp_codigo = :emp'
      'and suc_codigo = :suc'
      'and fac_numero = :fac'
      '')
    Left = 284
    Top = 272
    object QEnvioemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QEnviosuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object QEnviofac_numero: TIntegerField
      FieldName = 'fac_numero'
    end
    object QEnviopro_codigo: TIntegerField
      FieldName = 'pro_codigo'
    end
    object QEnvioIDEnvio: TIntegerField
      FieldName = 'IDEnvio'
    end
    object QEnvioFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object QEnvioCiudad_Origen: TStringField
      FieldName = 'Ciudad_Origen'
      Size = 40
    end
    object QEnvioCiudad_Destino: TStringField
      FieldName = 'Ciudad_Destino'
      Size = 100
    end
    object QEnvioNombre_envia: TStringField
      FieldName = 'Nombre_envia'
      Size = 50
    end
    object QEnvioTelefono_Envia: TStringField
      FieldName = 'Telefono_Envia'
      Size = 11
    end
    object QEnvioNombre_Recibe: TStringField
      FieldName = 'Nombre_Recibe'
      Size = 50
    end
    object QEnvioTelefono_Recibe: TStringField
      FieldName = 'Telefono_Recibe'
      Size = 11
    end
    object QEnvioDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 200
    end
    object QEnvioenv_suc_destino: TIntegerField
      FieldName = 'env_suc_destino'
    end
    object QEnvioenv_status: TStringField
      FieldName = 'env_status'
      Size = 3
    end
  end
  object QMsnExistencia: TADOQuery
    Connection = DM.ADOSigma
    DataSource = dsDetalle
    Parameters = <
      item
        Name = 'emp'
        Attributes = [paSigned]
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'alm_codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'PRO_CODIGO'
        Attributes = [paSigned]
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'DET_CANTIDAD'
        Attributes = [paSigned]
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'DET_MEDIDA'
        Attributes = [paSigned]
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'usu'
        Attributes = [paSigned]
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'SUC_CODIGO'
        Attributes = [paSigned]
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'TFA_CODIGO'
        Attributes = [paSigned]
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'FAC_FORMA'
        Attributes = [paSigned]
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'FAC_NUMERO'
        Attributes = [paSigned]
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'EMP_CODIGO'
        Attributes = [paSigned]
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'select '#39'EXIST [ '#39' + CAST(DISPONIBLE AS VARCHAR) +'#39' ] '#39' AS DISPON' +
        'IBLE2'
      'from pr_verifica_disp ('
      ':emp, '
      ':ALM_CODIGO, '
      ':PRO_CODIGO, '
      ':DET_CANTIDAD, '
      ':DET_MEDIDA, '
      ':usu, '
      ':SUC_CODIGO, '
      ':TFA_CODIGO, '
      ':FAC_FORMA, '
      ':FAC_NUMERO, '
      ':EMP_CODIGO)')
    Left = 420
    Top = 264
    object QMsnExistenciaDISPONIBLE2: TStringField
      FieldName = 'DISPONIBLE2'
    end
  end
  object dsMsnExistencia: TDataSource
    DataSet = QMsnExistencia
    Left = 384
    Top = 264
  end
  object dsSerie: TDataSource
    DataSet = QSerie
    Left = 384
    Top = 304
  end
  object QSucursalDestino: TADOQuery
    Connection = DM.ADOSigma
    DataSource = dsSuc
    Parameters = <
      item
        Name = 'suc_codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'emp_codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select suc_codigo, suc_nombre, alm_codigo'
      'from sucursales'
      'where suc_codigo <> :suc_codigo'
      'and emp_codigo = :emp_codigo'
      'order by suc_codigo')
    Left = 680
    Top = 235
    object QSucursalDestinosuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object StringField1: TStringField
      FieldName = 'suc_nombre'
      Size = 60
    end
    object IntegerField2: TIntegerField
      FieldName = 'alm_codigo'
    end
  end
  object dsSucDest: TDataSource
    DataSet = QSucursalDestino
    Left = 712
    Top = 235
  end
  object QRenta: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'select * from renta')
    Left = 284
    Top = 304
    object QRentaemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QRentasuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object QRentafac_numero: TIntegerField
      FieldName = 'fac_numero'
    end
    object QRentapro_codigo: TIntegerField
      FieldName = 'pro_codigo'
    end
    object QRentaidrenta: TIntegerField
      FieldName = 'idrenta'
    end
    object QRentafecha_inicio: TDateTimeField
      FieldName = 'fecha_inicio'
    end
    object QRentafecha_entrega: TDateTimeField
      FieldName = 'fecha_entrega'
    end
    object QRentaren_cantidad: TIntegerField
      FieldName = 'ren_cantidad'
    end
    object QRentaren_periodo: TStringField
      FieldName = 'ren_periodo'
      Size = 40
    end
    object QRentaren_valor: TBCDField
      FieldName = 'ren_valor'
      Precision = 15
      Size = 2
    end
    object QRentaren_status: TStringField
      FieldName = 'ren_status'
      Size = 3
    end
  end
end
