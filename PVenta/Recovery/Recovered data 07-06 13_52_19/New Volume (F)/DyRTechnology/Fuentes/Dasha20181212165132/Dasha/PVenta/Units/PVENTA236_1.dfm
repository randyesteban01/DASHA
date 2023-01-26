object FrmLiquidacionTickets: TFrmLiquidacionTickets
  Left = 568
  Top = 188
  Width = 1021
  Height = 716
  Caption = 'Liquidacion de Tickets'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 1005
    Height = 81
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
      Top = 32
      Width = 29
      Height = 13
      Caption = 'Fecha'
    end
    object Label12: TLabel
      Left = 8
      Top = 56
      Width = 46
      Height = 13
      Caption = 'Vendedor'
    end
    object btVendedor: TSpeedButton
      Left = 100
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
      OnClick = btVendedorClick
    end
    object Label11: TLabel
      Left = 607
      Top = 59
      Width = 61
      Height = 13
      Caption = '# de Liquid.:'
    end
    object Label13: TLabel
      Left = 8
      Top = 8
      Width = 40
      Height = 13
      Caption = 'Sucursal'
    end
    object Label2: TLabel
      Left = 393
      Top = 13
      Width = 33
      Height = 13
      Caption = 'Cliente'
    end
    object btCliente: TSpeedButton
      Left = 478
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
      OnClick = btClienteClick
    end
    object LBFicha: TLabel
      Left = 392
      Top = 40
      Width = 29
      Height = 13
      Caption = 'Ficha'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btFicha: TSpeedButton
      Left = 478
      Top = 31
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
      OnClick = btFichaClick
    end
    object tVendedor: TEdit
      Left = 128
      Top = 56
      Width = 241
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
      TabOrder = 3
    end
    object dbedtVEN_CODIGO: TDBEdit
      Left = 64
      Top = 56
      Width = 33
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'VEN_CODIGO'
      DataSource = dsTicketTransp
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object dbedtNUMERO_TICKET: TDBEdit
      Left = 670
      Top = 56
      Width = 65
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'NUMERO_TICKET'
      DataSource = dsTicketTransp
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 64
      Top = 8
      Width = 305
      Height = 21
      DataField = 'SUC_CODIGO'
      DataSource = dsTicketTransp
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
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 64
      Top = 32
      DataBinding.DataField = 'FECHA_TICKET'
      DataBinding.DataSource = dsTicketTransp
      TabOrder = 4
      Width = 105
    end
    object edCliente: TEdit
      Left = 432
      Top = 8
      Width = 42
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
      OnKeyDown = edClienteKeyDown
    end
    object dbedtPED_FICHA: TDBEdit
      Left = 434
      Top = 32
      Width = 41
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'FICHA_ID'
      DataSource = dsTicketTransp
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object edtFichaN: TEdit
      Left = 506
      Top = 32
      Width = 233
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
      TabOrder = 7
    end
    object edtClienteN: TEdit
      Left = 507
      Top = 8
      Width = 233
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
  end
  object Grid: TDBGrid
    Left = 0
    Top = 81
    Width = 1005
    Height = 523
    Align = alClient
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
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnKeyPress = GridKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'PROD_RORIGINAL'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Width = 67
        Visible = True
      end
      item
        Color = clInfoBk
        Expanded = False
        FieldName = 'DESCRIPCION'
        Title.Caption = 'Descripci'#243'n del Producto'
        Width = 410
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DET_CANTIDAD'
        Title.Alignment = taCenter
        Title.Caption = 'Cantidad'
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DET_PRECIO'
        Title.Alignment = taCenter
        Title.Caption = 'Precio'
        Width = 59
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
        FieldName = 'DET_IMPORTE'
        Title.Alignment = taCenter
        Title.Caption = 'Valor'
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLIENTEN'
        Title.Caption = 'CLIENTE'
        Width = 274
        Visible = True
      end>
  end
  object Panel5: TPanel
    Left = 0
    Top = 604
    Width = 1005
    Height = 73
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object btElimina: TSpeedButton
      Left = 360
      Top = 1
      Width = 129
      Height = 25
      Caption = '[ F4 ] - Eliminar fila'
      OnClick = btEliminaClick
    end
    object Label17: TLabel
      Left = 801
      Top = 27
      Width = 21
      Height = 13
      Caption = 'Itbis'
    end
    object Label19: TLabel
      Left = 803
      Top = 51
      Width = 24
      Height = 13
      Caption = 'Total'
    end
    object Label20: TLabel
      Left = 799
      Top = 4
      Width = 45
      Height = 13
      Caption = 'Sub Total'
    end
    object btGrabar: TBitBtn
      Left = 104
      Top = -1
      Width = 129
      Height = 25
      Caption = '[ F2 ] - Grabar/Imprimir'
      TabOrder = 0
      TabStop = False
      OnClick = btGrabarClick
    end
    object btLimpiar: TBitBtn
      Left = 232
      Top = 0
      Width = 129
      Height = 25
      Caption = '[ F3 ] - Limpiar/Nueva'
      TabOrder = 1
      TabStop = False
      OnClick = btLimpiarClick
    end
    object btSalir: TBitBtn
      Left = 490
      Top = 1
      Width = 73
      Height = 25
      Caption = '[ F5 ] - Salir'
      TabOrder = 2
      TabStop = False
      OnClick = btSalirClick
    end
    object btnBuscaLiqTickets: TBitBtn
      Left = 1
      Top = 0
      Width = 103
      Height = 25
      Caption = 'Buscar Liq Tick'
      TabOrder = 3
      TabStop = False
      OnClick = btnBuscaLiqTicketsClick
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
    object edtSubTotal: TEdit
      Left = 856
      Top = 2
      Width = 145
      Height = 21
      BevelKind = bkFlat
      BiDiMode = bdRightToLeft
      BorderStyle = bsNone
      Color = clInfoBk
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object edtItbis: TEdit
      Left = 856
      Top = 25
      Width = 145
      Height = 21
      BevelKind = bkFlat
      BiDiMode = bdRightToLeft
      BorderStyle = bsNone
      Color = clInfoBk
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
    object edtTotal: TEdit
      Left = 856
      Top = 48
      Width = 145
      Height = 21
      BevelKind = bkFlat
      BiDiMode = bdRightToLeft
      BorderStyle = bsNone
      Color = clInfoBk
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
    end
  end
  object QTicketTransp: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    OnNewRecord = QTicketTranspNewRecord
    Parameters = <
      item
        Name = 'emp'
        Size = -1
        Value = Null
      end
      item
        Name = 'num'
        Size = -1
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
      'SELECT * FROM'
      'ticket_transp'
      'where emp_codigo = :emp'
      'and status_ticket <> '#39'ANU'#39
      'and numero_ticket = :num'
      'and suc_codigo = :suc')
    Left = 368
    Top = 240
    object QTicketTranspEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
    end
    object QTicketTranspSUC_CODIGO: TIntegerField
      FieldName = 'SUC_CODIGO'
    end
    object QTicketTranspVEN_CODIGO: TIntegerField
      FieldName = 'VEN_CODIGO'
      OnGetText = QTicketTranspVEN_CODIGOGetText
    end
    object QTicketTranspNUMERO_TICKET: TIntegerField
      FieldName = 'NUMERO_TICKET'
    end
    object QTicketTranspFECHA_TICKET: TDateField
      FieldName = 'FECHA_TICKET'
    end
    object QTicketTranspFICHA_ID: TIntegerField
      FieldName = 'FICHA_ID'
      OnGetText = QTicketTranspFICHA_IDGetText
    end
    object QTicketTranspSTATUS_TICKET: TStringField
      FieldName = 'STATUS_TICKET'
      Size = 3
    end
    object QTicketTranspUSU_CODIGO: TStringField
      FieldName = 'USU_CODIGO'
      Size = 10
    end
    object QTicketTranspFECHA_CREA: TDateTimeField
      FieldName = 'FECHA_CREA'
    end
    object QTicketTranspUSU_COD_MOD: TStringField
      FieldName = 'USU_COD_MOD'
      Size = 10
    end
    object QTicketTranspFECHA_MOD: TDateTimeField
      FieldName = 'FECHA_MOD'
    end
    object QTicketTranspSubTotal: TCurrencyField
      FieldName = 'SubTotal'
    end
    object QTicketTranspTotalItbis: TCurrencyField
      FieldName = 'TotalItbis'
    end
    object QTicketTranspTotalImporte: TCurrencyField
      FieldName = 'TotalImporte'
    end
  end
  object dsTicketTransp: TDataSource
    DataSet = QTicketTransp
    Left = 400
    Top = 240
  end
  object QDetalle: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
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
        Name = 'suc'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select '
      'EMP_CODIGO, PED_TIPO, PED_NUMERO, DET_SECUENCIA, '
      'PRO_CODIGO, PRO_RORIGINAL, PRO_RFABRIC, DET_DESCRIPCION, '
      'DET_CANTIDAD, DET_PRECIO, DET_CONITBIS, DET_ITBIS, '
      'DET_DESCUENTO, DET_FACTURADO, DET_STATUS,'
      'DET_ESCALA, DET_MANEJAESCALA, DET_MEDIDA,'
      'DET_NOTA, SUC_CODIGO, DET_PRECIO1, DET_PRECIO2,'
      'DET_PRECIO3, DET_PRECIO4, det_despachado'
      'from '
      'DET_PEDIDO'
      'where emp_codigo = :emp_codigo'
      'and ped_tipo = :ped_tipo'
      'and ped_numero = :ped_numero'
      'and suc_codigo = :suc'
      'order by det_secuencia')
    Left = 600
    Top = 248
  end
  object dsDetalle: TDataSource
    DataSet = MDDetalle
    Left = 400
    Top = 272
  end
  object MDDetalle: TdxMemData
    Indexes = <>
    SortOptions = []
    BeforePost = MDDetalleBeforePost
    AfterPost = MDDetalleAfterPost
    OnCalcFields = MDDetalleCalcFields
    Left = 368
    Top = 272
    object MDDetallePROD_CODIGO: TIntegerField
      FieldName = 'PROD_CODIGO'
      ReadOnly = True
    end
    object MDDetallePROD_RORIGINAL: TStringField
      FieldName = 'PROD_RORIGINAL'
      ReadOnly = True
      Size = 10
    end
    object MDDetallePROD_RFABRIB: TStringField
      FieldName = 'PROD_RFABRIB'
      ReadOnly = True
      Size = 10
    end
    object MDDetalleDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      ReadOnly = True
      Size = 255
    end
    object MDDetalleDET_CANTIDAD: TCurrencyField
      FieldName = 'DET_CANTIDAD'
    end
    object MDDetallePRO_COSTO: TCurrencyField
      FieldName = 'PRO_COSTO'
      ReadOnly = True
    end
    object MDDetalleDET_PRECIO: TCurrencyField
      FieldName = 'DET_PRECIO'
      ReadOnly = True
    end
    object MDDetalleDET_CONITBIS: TStringField
      FieldName = 'DET_CONITBIS'
      ReadOnly = True
      Size = 1
    end
    object MDDetalleCLIENTE_ID: TIntegerField
      FieldName = 'CLIENTE_ID'
      ReadOnly = True
    end
    object MDDetalleDET_IMPORTE: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'DET_IMPORTE'
      ReadOnly = True
      Calculated = True
    end
    object MDDetalleDET_ITBIS: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'DET_ITBIS'
      ReadOnly = True
      Calculated = True
    end
    object MDDetallePRO_ITBIS: TCurrencyField
      FieldName = 'PRO_ITBIS'
      ReadOnly = True
    end
    object MDDetalleCLIENTEN: TStringField
      FieldName = 'CLIENTEN'
      ReadOnly = True
      Size = 50
    end
    object MDDetalleFECHA: TDateField
      FieldName = 'FECHA'
    end
  end
  object Search: TQrySearchDlgADO
    AliasFields.Strings = (
      'Nombre'
      'Codigo')
    AliasName = DM.ADOSigma
    Left = 328
    Top = 240
  end
  object Query1: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <>
    Left = 368
    Top = 208
  end
  object QSucursal: TADOQuery
    Connection = DM.ADOSigma
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
    Left = 528
    Top = 187
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
    Left = 560
    Top = 187
  end
  object Rpt_Liq_Ticket: TfrxReport
    Version = '4.13.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43629.555344861110000000
    ReportOptions.LastChange = 43629.555344861110000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 240
    Top = 288
    Datasets = <
      item
        DataSet = DB_Liq_Ticket
        DataSetName = 'DB_Liq_Ticket'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        Height = 245.669450000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Width = 737.008350000000000000
          Height = 64.252010000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'SINDICATO DE TRANSPORTE BAVARO - PUNTA CANA'
            '(SITRABAPU)')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Top = 64.252010000000000000
          Width = 737.008350000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'FUNDADO EL 23 DE MAYO DEL 1987')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Top = 81.929190000000000000
          Width = 737.008350000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'TEL.: 809-554-4260 FAX: 809-554-4312 / 809-554-0452')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Align = baCenter
          Left = 186.897758500000000000
          Top = 104.267780000000000000
          Width = 366.614410000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'RECIBO DE LIQUIDADCION DE TICKETS')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 591.842920000000000000
          Top = 101.047310000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'RECIBO #:')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 591.842920000000000000
          Top = 120.944960000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'FECHA:')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 668.315400000000000000
          Top = 102.047310000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DB_Liq_Ticket."NUM"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 668.535870000000000000
          Top = 119.944960000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DB_Liq_Ticket."FECHA"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Top = 140.842610000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'FICHA:')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 51.692950000000000000
          Top = 140.842610000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[DB_Liq_Ticket."FICHA"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Top = 170.078850000000000000
          Width = 132.283550000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Hemos entregado a:')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Top = 187.976500000000000000
          Width = 132.283550000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'La suma de:')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Top = 204.094620000000000000
          Width = 132.283550000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Por Concepto de:')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 136.063080000000000000
          Top = 170.078850000000000000
          Width = 374.173470000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DB_Liq_Ticket."VENDEDOR"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 136.063080000000000000
          Top = 187.976500000000000000
          Width = 600.945270000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DB_Liq_Ticket."TOTAL_LET"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 136.063080000000000000
          Top = 204.094620000000000000
          Width = 600.945270000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Liquidacion de Ticket')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 2.559060000000000000
          Top = 226.771800000000000000
          Width = 737.008350000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Detalle del Recibo')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 325.039580000000000000
        Width = 740.409927000000000000
        DataSet = DB_Liq_Ticket
        DataSetName = 'DB_Liq_Ticket'
        RowCount = 0
        object Memo18: TfrxMemoView
          Align = baLeft
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Codigo')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Align = baLeft
          Left = 79.370130000000000000
          Width = 411.968770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Descripcion')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Align = baLeft
          Left = 491.338900000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Cantidad')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Align = baLeft
          Left = 574.488560000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Costo')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Align = baLeft
          Left = 657.638220000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Importe')
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        Height = 18.897650000000000000
        Top = 366.614410000000000000
        Width = 740.409927000000000000
        DataSet = DB_Liq_Ticket
        DataSetName = 'DB_Liq_Ticket'
        RowCount = 0
        object Memo23: TfrxMemoView
          Align = baLeft
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CODIGO'
          DataSet = DB_Liq_Ticket
          DataSetName = 'DB_Liq_Ticket'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[DB_Liq_Ticket."CODIGO"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Align = baLeft
          Left = 79.370130000000000000
          Width = 411.968770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'PRODUCTO'
          DataSet = DB_Liq_Ticket
          DataSetName = 'DB_Liq_Ticket'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[DB_Liq_Ticket."PRODUCTO"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Align = baLeft
          Left = 491.338900000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CANTIDAD'
          DataSet = DB_Liq_Ticket
          DataSetName = 'DB_Liq_Ticket'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[DB_Liq_Ticket."CANTIDAD"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Align = baLeft
          Left = 574.488560000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'PRECIO'
          DataSet = DB_Liq_Ticket
          DataSetName = 'DB_Liq_Ticket'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[DB_Liq_Ticket."PRECIO"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Align = baLeft
          Left = 657.638220000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'IMPORTE'
          DataSet = DB_Liq_Ticket
          DataSetName = 'DB_Liq_Ticket'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[DB_Liq_Ticket."IMPORTE"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        Height = 86.929190000000000000
        Top = 408.189240000000000000
        Width = 740.409927000000000000
        object Memo28: TfrxMemoView
          Align = baLeft
          Top = 68.031540000000000000
          Width = 306.141930000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            'Recibido Por')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Align = baRight
          Left = 434.267997000000000000
          Top = 68.031540000000000000
          Width = 306.141930000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            'Entregado Por')
          ParentFont = False
        end
      end
    end
  end
  object DB_Liq_Ticket: TfrxDBDataset
    UserName = 'DB_Liq_Ticket'
    CloseDataSource = False
    FieldAliases.Strings = (
      'VENDEDOR=VENDEDOR'
      'TOTAL=TOTAL'
      'TOTAL_LET=TOTAL_LET'
      'CODIGO=CODIGO'
      'PRODUCTO=PRODUCTO'
      'CANTIDAD=CANTIDAD'
      'PRECIO=PRECIO'
      'IMPORTE=IMPORTE'
      'FECHA=FECHA'
      'NUM=NUM'
      'FICHA=FICHA')
    DataSet = qLiqTicket
    BCDToCurrency = False
    Left = 208
    Top = 288
  end
  object qLiqTicket: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <
      item
        Name = 'EMP'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'SUC'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'NUM'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'DECLARE @MONTO NUMERIC(18,2)'
      'DECLARE @MONTOLET VARCHAR(255)'
      'DECLARE @EMP INT '
      'DECLARE @SUC INT '
      'DECLARE @NUM INT '
      ''
      'SET @EMP = :EMP'
      'SET @SUC = :SUC'
      'SET @NUM = :NUM'
      ''
      
        'SET @MONTO = (SELECT TotalImporte FROM Ticket_Transp WHERE numer' +
        'o_ticket = @NUM AND EMP_CODIGO = @EMP)'
      ''
      'SET @MONTOLET = (SELECT [dbo].[CantidadConLetra](@MONTO)) '
      ''
      'SELECT '
      
        'T.numero_ticket NUM, V.ven_nombre VENDEDOR, T.TotalImporte TOTAL' +
        ',  @MONTOLET TOTAL_LET,'
      
        'PR.pro_roriginal CODIGO, UPPER(RTRIM(C.cli_nombre))+'#39' / '#39'+PR.pro' +
        '_nombre PRODUCTO, DT.det_cantidad CANTIDAD, DT.prod_precio PRECI' +
        'O, (DT.DET_CANTIDAD*DT.prod_precio) IMPORTE,'
      'T.fecha_ticket FECHA, FT.ficha_nombre FICHA'
      'FROM Ticket_Transp T'
      
        'INNER JOIN Det_Ticket_Transp DT ON T.emp_codigo=DT.emp_codigo AN' +
        'D T.SUC_CODIGO=DT.SUC_CODIGO AND T.NUMERO_TICKET=DT.NUMERO_TICKE' +
        'T'
      
        'INNER JOIN PRODUCTOS PR ON DT.prod_codigo=PR.pro_codigo AND DT.e' +
        'mp_codigo = PR.emp_codigo'
      'INNER JOIN USUARIOS U ON T.usu_codigo = U.USU_NOMBRE'
      
        'INNER JOIN VENDEDORES V ON T.EMP_CODIGO = V.emp_codigo AND T.ven' +
        '_codigo = V.ven_codigo'
      'INNER JOIN CLIENTES C ON DT.CLIENTE_ID = C.CLI_CODIGO'
      
        'INNER JOIN Fichas_Transp FT ON T.ficha_id = FT.ficha_id AND T.em' +
        'p_codigo = FT.emp_codigo'
      
        'WHERE T.numero_ticket = @NUM AND T.emp_codigo = @EMP AND T.SUC_C' +
        'ODIGO = @SUC'
      ''
      ''
      '')
    Left = 176
    Top = 288
    object qLiqTicketVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Size = 50
    end
    object qLiqTicketTOTAL: TCurrencyField
      FieldName = 'TOTAL'
    end
    object qLiqTicketTOTAL_LET: TStringField
      FieldName = 'TOTAL_LET'
      Size = 255
    end
    object qLiqTicketCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 10
    end
    object qLiqTicketPRODUCTO: TStringField
      FieldName = 'PRODUCTO'
      Size = 100
    end
    object qLiqTicketCANTIDAD: TCurrencyField
      FieldName = 'CANTIDAD'
    end
    object qLiqTicketPRECIO: TCurrencyField
      FieldName = 'PRECIO'
    end
    object qLiqTicketIMPORTE: TCurrencyField
      FieldName = 'IMPORTE'
    end
    object qLiqTicketFECHA: TDateField
      FieldName = 'FECHA'
    end
    object qLiqTicketNUM: TIntegerField
      FieldName = 'NUM'
    end
    object qLiqTicketFICHA: TStringField
      FieldName = 'FICHA'
      Size = 15
    end
  end
end
