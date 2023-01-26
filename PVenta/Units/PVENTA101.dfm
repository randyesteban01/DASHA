object frmDevSinFactura: TfrmDevSinFactura
  Left = 252
  Top = 172
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Devoluci'#243'n sin factura'
  ClientHeight = 415
  ClientWidth = 696
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel5: TPanel
    Left = 0
    Top = 328
    Width = 696
    Height = 87
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object Label11: TLabel
      Left = 562
      Top = 18
      Width = 42
      Height = 13
      Caption = 'SubTotal'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbItbis: TLabel
      Left = 562
      Top = 42
      Width = 21
      Height = 13
      Caption = 'Itbis'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label19: TLabel
      Left = 562
      Top = 66
      Width = 24
      Height = 13
      Caption = 'Total'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object btBuscaProd: TSpeedButton
      Left = 268
      Top = 31
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
      Left = 138
      Top = 56
      Width = 129
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
    object DBEdit6: TDBEdit
      Left = 608
      Top = 15
      Width = 81
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      DataField = 'SubTotal'
      DataSource = dsDevolucion
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit8: TDBEdit
      Left = 608
      Top = 39
      Width = 81
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      DataField = 'DEV_ITBIS'
      DataSource = dsDevolucion
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object DBEdit10: TDBEdit
      Left = 608
      Top = 63
      Width = 81
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      DataField = 'DEV_TOTAL'
      DataSource = dsDevolucion
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object btGrabar: TBitBtn
      Left = 8
      Top = 31
      Width = 129
      Height = 25
      Caption = '[ F2 ] - Grabar/Imprimir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      TabStop = False
      OnClick = btGrabarClick
    end
    object btLimpiar: TBitBtn
      Left = 138
      Top = 31
      Width = 129
      Height = 25
      Caption = '[ F3 ] - Limpiar/Nueva   '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      TabStop = False
      OnClick = btLimpiarClick
    end
    object btSalir: TBitBtn
      Left = 403
      Top = 56
      Width = 134
      Height = 25
      Caption = '[ F10 ] - Cancelar/Salir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      TabStop = False
      OnClick = btSalirClick
    end
    object btBuscaCliente: TBitBtn
      Left = 403
      Top = 31
      Width = 134
      Height = 25
      Caption = '[ F5 ] - Buscar Cliente  '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      TabStop = False
      OnClick = btBuscaClienteClick
    end
    object btNota: TBitBtn
      Left = 268
      Top = 56
      Width = 134
      Height = 25
      Caption = '[ F8 ] - Nota'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      TabStop = False
      OnClick = btNotaClick
    end
    object ckItbis: TDBCheckBox
      Left = 588
      Top = 41
      Width = 17
      Height = 17
      DataField = 'dev_conitbis'
      DataSource = dsDevolucion
      TabOrder = 8
      ValueChecked = 'True'
      ValueUnchecked = 'False'
      Visible = False
      OnClick = ckItbisClick
    end
    object btEliminar: TBitBtn
      Left = 8
      Top = 56
      Width = 129
      Height = 25
      Caption = '[ F6 ] - Eliminar fila'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      TabStop = False
      OnClick = btEliminarClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 696
    Height = 81
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object Label2: TLabel
      Left = 16
      Top = 32
      Width = 32
      Height = 13
      Caption = 'Cliente'
    end
    object btBuscaCli: TSpeedButton
      Left = 120
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
      OnClick = btBuscaCliClick
    end
    object Label12: TLabel
      Left = 386
      Top = 32
      Width = 46
      Height = 13
      Caption = 'Vendedor'
    end
    object btVendedor: TSpeedButton
      Left = 496
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
    object Label8: TLabel
      Left = 16
      Top = 8
      Width = 41
      Height = 13
      Caption = 'Sucursal'
    end
    object Label9: TLabel
      Left = 386
      Top = 8
      Width = 30
      Height = 13
      Caption = 'Fecha'
    end
    object Label1: TLabel
      Left = 16
      Top = 56
      Width = 21
      Height = 13
      Caption = 'NCF'
    end
    object edCliente: TEdit
      Left = 64
      Top = 32
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
      TabOrder = 1
      OnKeyDown = edClienteKeyDown
    end
    object dbVendedor: TDBEdit
      Left = 440
      Top = 32
      Width = 49
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'VEN_CODIGO'
      DataSource = dsDevolucion
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object tVendedor: TEdit
      Left = 520
      Top = 32
      Width = 169
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
      TabOrder = 5
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 64
      Top = 8
      Width = 313
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
      TabStop = False
    end
    object tCliente: TEdit
      Left = 144
      Top = 32
      Width = 233
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = clInfoBk
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object DBEdit5: TDBEdit
      Left = 440
      Top = 8
      Width = 65
      Height = 21
      TabStop = False
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'DEV_FECHA'
      DataSource = dsDevolucion
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object DBEdit1: TDBEdit
      Left = 64
      Top = 56
      Width = 177
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'NCF'
      DataSource = dsDevolucion
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
  end
  object Grid: TDBGrid
    Left = 0
    Top = 81
    Width = 696
    Height = 247
    Align = alClient
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
    TabOrder = 2
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnColEnter = GridColEnter
    OnKeyDown = GridKeyDown
    OnKeyPress = GridKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'PRO_CODIGO'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Width = 67
        Visible = True
      end
      item
        Color = clInfoBk
        Expanded = False
        FieldName = 'PRO_NOMBRE'
        Title.Caption = 'Descripci'#243'n del Producto'
        Width = 239
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DEV_CANTIDAD'
        Title.Alignment = taCenter
        Title.Caption = 'Cant.'
        Width = 31
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DET_MEDIDA'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Medida'
        Width = 40
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
        Width = 41
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DEV_PRECIO'
        Title.Alignment = taCenter
        Title.Caption = 'Precio'
        Width = 67
        Visible = True
      end
      item
        Color = clInfoBk
        Expanded = False
        FieldName = 'CalcItbis'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Itbis'
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'det_fechavence'
        Title.Alignment = taCenter
        Title.Caption = 'Vence'
        Width = 66
        Visible = True
      end
      item
        Color = clInfoBk
        Expanded = False
        FieldName = 'Valor'
        Title.Alignment = taCenter
        Width = 71
        Visible = True
      end>
  end
  object Lista: TListBox
    Left = 40
    Top = 176
    Width = 193
    Height = 65
    ItemHeight = 13
    TabOrder = 3
    Visible = False
  end
  object QDevolucion: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    BeforePost = QDevolucionBeforePost
    OnCalcFields = QDevolucionCalcFields
    OnNewRecord = QDevolucionNewRecord
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
        Name = 'numero'
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
      
        'select DEV_DESCUENTO, DEV_DEVDINERO, DEV_FECHA, DEV_ITBIS, DEV_N' +
        'UMERO,'
      
        'DEV_STATUS, DEV_TOTAL, EMP_CODIGO, FAC_FORMA, FAC_NUMERO, TFA_CO' +
        'DIGO,'
      
        'USU_CODIGO, VEN_CODIGO, CLI_CODIGO, CAJ_CODIGO, DEV_PORCCOMISION' +
        ','
      'DEV_COMISION, DEV_NOMBRE,'
      'BAN_CODIGO, CHE_NUMERO, dev_conitbis, suc_codigo, dev_nota,'
      'NCF'
      'from DEVOLUCION'
      'where emp_codigo = :emp_codigo'
      'and dev_numero = :numero'
      'and suc_codigo = :suc')
    Left = 320
    Top = 192
    object QDevolucionDEV_DESCUENTO: TFloatField
      FieldName = 'DEV_DESCUENTO'
      Origin = 'DEVOLUCION.DEV_DESCUENTO'
      currency = True
    end
    object QDevolucionDEV_DEVDINERO: TIBStringField
      FieldName = 'DEV_DEVDINERO'
      Origin = 'DEVOLUCION.DEV_DEVDINERO'
      Size = 1
    end
    object QDevolucionDEV_FECHA: TDateTimeField
      FieldName = 'DEV_FECHA'
      Origin = 'DEVOLUCION.DEV_FECHA'
      EditMask = 'cc-cc-cccc'
    end
    object QDevolucionDEV_ITBIS: TFloatField
      FieldName = 'DEV_ITBIS'
      Origin = 'DEVOLUCION.DEV_ITBIS'
      currency = True
    end
    object QDevolucionDEV_NUMERO: TIntegerField
      FieldName = 'DEV_NUMERO'
      Origin = 'DEVOLUCION.DEV_NUMERO'
      DisplayFormat = '00000'
    end
    object QDevolucionDEV_STATUS: TIBStringField
      FieldName = 'DEV_STATUS'
      Origin = 'DEVOLUCION.DEV_STATUS'
      Size = 3
    end
    object QDevolucionDEV_TOTAL: TFloatField
      FieldName = 'DEV_TOTAL'
      Origin = 'DEVOLUCION.DEV_TOTAL'
      currency = True
    end
    object QDevolucionEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'DEVOLUCION.EMP_CODIGO'
    end
    object QDevolucionFAC_FORMA: TIBStringField
      FieldName = 'FAC_FORMA'
      Origin = 'DEVOLUCION.FAC_FORMA'
      Size = 1
    end
    object QDevolucionFAC_NUMERO: TIntegerField
      FieldName = 'FAC_NUMERO'
      Origin = 'DEVOLUCION.FAC_NUMERO'
    end
    object QDevolucionTFA_CODIGO: TIntegerField
      FieldName = 'TFA_CODIGO'
      Origin = 'DEVOLUCION.TFA_CODIGO'
    end
    object QDevolucionUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
      Origin = 'DEVOLUCION.USU_CODIGO'
    end
    object QDevolucionVEN_CODIGO: TIntegerField
      FieldName = 'VEN_CODIGO'
      Origin = 'DEVOLUCION.VEN_CODIGO'
      OnGetText = QDevolucionVEN_CODIGOGetText
    end
    object QDevolucionCLI_CODIGO: TIntegerField
      FieldName = 'CLI_CODIGO'
      Origin = 'DEVOLUCION.CLI_CODIGO'
    end
    object QDevolucionCAJ_CODIGO: TIntegerField
      FieldName = 'CAJ_CODIGO'
      Origin = 'DEVOLUCION.CAJ_CODIGO'
    end
    object QDevolucionDEV_PORCCOMISION: TFloatField
      FieldName = 'DEV_PORCCOMISION'
      Origin = 'DEVOLUCION.DEV_PORCCOMISION'
    end
    object QDevolucionDEV_COMISION: TFloatField
      FieldName = 'DEV_COMISION'
      Origin = 'DEVOLUCION.DEV_COMISION'
    end
    object QDevolucionDEV_NOMBRE: TIBStringField
      FieldName = 'DEV_NOMBRE'
      Origin = 'DEVOLUCION.DEV_NOMBRE'
      Size = 60
    end
    object QDevolucionBAN_CODIGO: TIntegerField
      FieldName = 'BAN_CODIGO'
      Origin = 'DEVOLUCION.BAN_CODIGO'
    end
    object QDevolucionCHE_NUMERO: TIntegerField
      FieldName = 'CHE_NUMERO'
      Origin = 'DEVOLUCION.CHE_NUMERO'
    end
    object QDevoluciondev_conitbis: TStringField
      FieldName = 'dev_conitbis'
      Size = 5
    end
    object QDevolucionsuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object QDevoluciondev_nota: TMemoField
      FieldName = 'dev_nota'
      BlobType = ftMemo
    end
    object QDevolucionSubTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'SubTotal'
      currency = True
      Calculated = True
    end
    object QDevolucionNCF: TStringField
      FieldName = 'NCF'
      Size = 19
    end
  end
  object dsDevolucion: TDataSource
    DataSet = QDevolucion
    Left = 352
    Top = 192
  end
  object Search: TQrySearchDlgADO
    AliasName = DM.ADOSigma
    Left = 152
    Top = 224
  end
  object QDetalle: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    AfterPost = QDetalleAfterPost
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
      'SELECT'
      'DEP_CODIGO, DET_SECUENCIA, DEV_CANTFACTURADA, '
      'DEV_CANTIDAD, DEV_CONITBIS, DEV_COSTO, DEV_DESCUENTO, '
      'DEV_ITBIS, DEV_NUMERO, DEV_PRECIO, DEV_TOPECANTIDAD, '
      'EMP_CODIGO, FAM_CODIGO, MAR_CODIGO, PRO_CODIGO, '
      'PRO_NOMBRE, PRO_RFABRIC, PRO_RORIGINAL, PRO_SERVICIO, '
      'VEN_CODIGO, DET_COMISION, DET_ESCALA, DET_MEDIDA, '
      'suc_codigo, det_lote, det_fechavence, det_cant_oferta,'
      'det_vence, det_manejaescala, det_selectivo_ad,'
      'det_selectivo_con'
      'FROM'
      'DET_DEVOLUCION'
      'where emp_codigo = :emp'
      'and dev_numero = :numero'
      'and suc_codigo = :suc'
      'order by det_secuencia')
    Left = 320
    Top = 224
    object QDetalleEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'DET_DEVOLUCION.EMP_CODIGO'
    end
    object QDetalleDEV_NUMERO: TIntegerField
      FieldName = 'DEV_NUMERO'
      Origin = 'DET_DEVOLUCION.DEV_NUMERO'
    end
    object QDetalleDET_SECUENCIA: TIntegerField
      FieldName = 'DET_SECUENCIA'
      Origin = 'DET_DEVOLUCION.DET_SECUENCIA'
    end
    object QDetallePRO_CODIGO: TIntegerField
      FieldName = 'PRO_CODIGO'
      Origin = 'DET_DEVOLUCION.PRO_CODIGO'
      OnChange = QDetallePRO_CODIGOChange
    end
    object QDetalleFAM_CODIGO: TIntegerField
      FieldName = 'FAM_CODIGO'
      Origin = 'DET_DEVOLUCION.FAM_CODIGO'
    end
    object QDetalleDEV_COSTO: TFloatField
      FieldName = 'DEV_COSTO'
      Origin = 'DET_DEVOLUCION.DEV_COSTO'
      currency = True
    end
    object QDetalleDEV_PRECIO: TFloatField
      FieldName = 'DEV_PRECIO'
      Origin = 'DET_DEVOLUCION.DEV_PRECIO'
      currency = True
    end
    object QDetallePRO_NOMBRE: TIBStringField
      FieldName = 'PRO_NOMBRE'
      Origin = 'DET_DEVOLUCION.PRO_NOMBRE'
      Size = 60
    end
    object QDetalleDEV_CANTIDAD: TFloatField
      FieldName = 'DEV_CANTIDAD'
      Origin = 'DET_DEVOLUCION.DEV_CANTIDAD'
    end
    object QDetalleDEP_CODIGO: TIntegerField
      FieldName = 'DEP_CODIGO'
      Origin = 'DET_DEVOLUCION.DEP_CODIGO'
    end
    object QDetalleDEV_TOPECANTIDAD: TFloatField
      FieldName = 'DEV_TOPECANTIDAD'
      Origin = 'DET_DEVOLUCION.DEV_TOPECANTIDAD'
    end
    object QDetalleDEV_CONITBIS: TIBStringField
      FieldName = 'DEV_CONITBIS'
      Origin = 'DET_DEVOLUCION.DEV_CONITBIS'
      Size = 1
    end
    object QDetalleDEV_DESCUENTO: TFloatField
      FieldName = 'DEV_DESCUENTO'
      Origin = 'DET_DEVOLUCION.DEV_DESCUENTO'
      currency = True
    end
    object QDetalleDEV_ITBIS: TFloatField
      FieldName = 'DEV_ITBIS'
      Origin = 'DET_DEVOLUCION.DEV_ITBIS'
      currency = True
    end
    object QDetalleDEV_CANTFACTURADA: TFloatField
      FieldName = 'DEV_CANTFACTURADA'
      Origin = 'DET_DEVOLUCION.DEV_CANTFACTURADA'
    end
    object QDetalleValor: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Valor'
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
    object QDetalleCalcItbis: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CalcItbis'
      currency = True
      Calculated = True
    end
    object QDetalleDevuelta: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Devuelta'
      Calculated = True
    end
    object QDetallePRO_RORIGINAL: TIBStringField
      FieldName = 'PRO_RORIGINAL'
      Origin = 'DET_DEVOLUCION.PRO_RORIGINAL'
      OnChange = QDetallePRO_RORIGINALChange
      Size = 50
    end
    object QDetallePRO_RFABRIC: TIBStringField
      FieldName = 'PRO_RFABRIC'
      Origin = 'DET_DEVOLUCION.PRO_RFABRIC'
      Size = 60
    end
    object QDetallePRO_SERVICIO: TIBStringField
      FieldName = 'PRO_SERVICIO'
      Origin = 'DET_DEVOLUCION.PRO_SERVICIO'
      Size = 5
    end
    object QDetalleMAR_CODIGO: TIntegerField
      FieldName = 'MAR_CODIGO'
      Origin = 'DET_DEVOLUCION.MAR_CODIGO'
    end
    object QDetalleVEN_CODIGO: TIntegerField
      FieldName = 'VEN_CODIGO'
      Origin = 'DET_DEVOLUCION.VEN_CODIGO'
    end
    object QDetalleDET_COMISION: TFloatField
      FieldName = 'DET_COMISION'
      Origin = 'DET_DEVOLUCION.DET_COMISION'
    end
    object QDetalleDET_ESCALA: TIBStringField
      FieldName = 'DET_ESCALA'
      Origin = 'DET_DEVOLUCION.DET_ESCALA'
      Size = 5
    end
    object QDetalleDET_MEDIDA: TIBStringField
      FieldName = 'DET_MEDIDA'
      Origin = 'DET_DEVOLUCION.DET_MEDIDA'
      Size = 3
    end
    object QDetalleNeto: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Neto'
      currency = True
      Calculated = True
    end
    object QDetallesuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object QDetalledet_lote: TIntegerField
      FieldName = 'det_lote'
    end
    object QDetalledet_fechavence: TDateTimeField
      FieldName = 'det_fechavence'
      EditMask = 'cc-cc-cccc'
    end
    object QDetalledet_cant_oferta: TBCDField
      FieldName = 'det_cant_oferta'
      Precision = 15
      Size = 2
    end
    object QDetalledet_vence: TStringField
      FieldName = 'det_vence'
      Size = 5
    end
    object QDetalledet_manejaescala: TStringField
      FieldName = 'det_manejaescala'
      Size = 5
    end
    object QDetalledet_selectivo_ad: TBCDField
      FieldName = 'det_selectivo_ad'
      Precision = 15
      Size = 2
    end
    object QDetalledet_selectivo_con: TBCDField
      FieldName = 'det_selectivo_con'
      Precision = 15
      Size = 2
    end
  end
  object dsDetalle: TDataSource
    DataSet = QDetalle
    Left = 352
    Top = 224
  end
  object Query1: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <>
    Left = 120
    Top = 224
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
    Left = 320
    Top = 160
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
    Left = 352
    Top = 160
  end
end
