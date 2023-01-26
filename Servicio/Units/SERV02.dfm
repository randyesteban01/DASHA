object frmOrdenServicio: TfrmOrdenServicio
  Left = 512
  Top = 201
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Orden de servicio'
  ClientHeight = 415
  ClientWidth = 784
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
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 784
    Height = 129
    Align = alTop
    BevelInner = bvLowered
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 32
      Width = 29
      Height = 13
      Caption = 'Fecha'
    end
    object Label8: TLabel
      Left = 16
      Top = 8
      Width = 40
      Height = 13
      Caption = 'Sucursal'
    end
    object Label2: TLabel
      Left = 16
      Top = 56
      Width = 33
      Height = 13
      Caption = 'Cliente'
    end
    object btBuscaCli: TSpeedButton
      Left = 120
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
      OnClick = btBuscaCliClick
    end
    object Label3: TLabel
      Left = 16
      Top = 80
      Width = 43
      Height = 13
      Caption = 'Direcci'#243'n'
    end
    object Label4: TLabel
      Left = 16
      Top = 104
      Width = 44
      Height = 13
      Caption = 'Localidad'
    end
    object Label5: TLabel
      Left = 240
      Top = 104
      Width = 42
      Height = 13
      Caption = 'Tel'#233'fono'
    end
    object Label6: TLabel
      Left = 392
      Top = 8
      Width = 23
      Height = 13
      Caption = 'Nota'
    end
    object DBEdit1: TDBEdit
      Left = 64
      Top = 32
      Width = 65
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'ord_fecha'
      DataSource = dsOrden
      TabOrder = 1
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 64
      Top = 8
      Width = 313
      Height = 21
      DataField = 'suc_codigo'
      DataSource = dsOrden
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
    object edCliente: TEdit
      Left = 288
      Top = 32
      Width = 89
      Height = 21
      TabStop = False
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
      Visible = False
      OnKeyDown = edClienteKeyDown
    end
    object DBEdit2: TDBEdit
      Left = 64
      Top = 80
      Width = 313
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'ord_direccion'
      DataSource = dsOrden
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object DBEdit3: TDBEdit
      Left = 64
      Top = 104
      Width = 169
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'ord_localidad'
      DataSource = dsOrden
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object DBEdit4: TDBEdit
      Left = 288
      Top = 104
      Width = 89
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'ord_telefono'
      DataSource = dsOrden
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object DBEdit11: TDBEdit
      Left = 144
      Top = 56
      Width = 233
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'ord_nombre'
      DataSource = dsOrden
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object Nota: TDBRichEdit
      Left = 392
      Top = 22
      Width = 277
      Height = 102
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'ord_nota'
      DataSource = dsOrden
      TabOrder = 8
      WordWrap = False
    end
    object DBEdit5: TDBEdit
      Left = 64
      Top = 56
      Width = 53
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'cli_codigo'
      DataSource = dsOrden
      TabOrder = 2
      OnKeyDown = DBEdit5KeyDown
    end
    object cbStatus: TDBRadioGroup
      Left = 683
      Top = 2
      Width = 99
      Height = 125
      Align = alRight
      Caption = '  Status  '
      DataField = 'ord_status'
      DataSource = dsOrden
      Items.Strings = (
        'Pendiente'
        'Recepcionado'
        'Taller'
        'Etr. -Taller'
        'Entregado'
        'Cancelado')
      TabOrder = 9
      Values.Strings = (
        'PEN'
        'REC'
        'TAL'
        'ETT'
        'ETR'
        'CAN')
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 336
    Width = 784
    Height = 79
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 1
    object btPost: TBitBtn
      Left = 51
      Top = 11
      Width = 137
      Height = 25
      Caption = '[ F2 ] - Grabar / Imprimir'
      TabOrder = 0
      OnClick = btPostClick
    end
    object btLimpiar: TBitBtn
      Left = 203
      Top = 11
      Width = 137
      Height = 25
      Caption = '[ F3 ] - Limpiar/Nueva'
      TabOrder = 1
      OnClick = btLimpiarClick
    end
    object btInsert: TBitBtn
      Left = 355
      Top = 11
      Width = 137
      Height = 25
      Caption = '[ F4 ] - A'#241'adir equipo'
      TabOrder = 2
      OnClick = btInsertClick
    end
    object btDelete: TBitBtn
      Left = 51
      Top = 43
      Width = 137
      Height = 25
      Caption = '[ F5 ] - Eliminar equipo'
      TabOrder = 3
      OnClick = btDeleteClick
    end
    object btBusca: TBitBtn
      Left = 507
      Top = 11
      Width = 137
      Height = 25
      Caption = 'Buscar una orden'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
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
    object btSalir: TBitBtn
      Left = 507
      Top = 43
      Width = 137
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
    object btDetalle: TBitBtn
      Left = 203
      Top = 43
      Width = 137
      Height = 25
      Caption = '[ F6 ] - Detalle del equipo'
      TabOrder = 6
      OnClick = btDetalleClick
    end
    object btTaller: TBitBtn
      Left = 355
      Top = 43
      Width = 137
      Height = 25
      Caption = '[ F7 ] - Tecnico Taller'
      TabOrder = 7
      OnClick = btTallerClick
    end
  end
  object Grid: TDBGrid
    Left = 0
    Top = 129
    Width = 784
    Height = 207
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
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnKeyDown = GridKeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'tip_nombre'
        Title.Caption = 'Tipo de equipo'
        Width = 187
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'det_numero_serie'
        Title.Caption = '# Serie'
        Width = 152
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'det_fecha_entrada'
        Title.Alignment = taCenter
        Title.Caption = 'Fecha de Entrada'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'det_fecha_entrega'
        Title.Alignment = taCenter
        Title.Caption = 'Fecha de entrega'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'det_monto'
        Title.Alignment = taCenter
        Title.Caption = 'Monto reparaci'#243'n'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Estatus'
        Title.Caption = 'Status Equipo'
        Width = 90
        Visible = True
      end>
  end
  object tTipo: TEdit
    Left = 2445
    Top = 80
    Width = 52
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
    Visible = False
  end
  object tTecnico: TEdit
    Left = 2445
    Top = 56
    Width = 52
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
    Visible = False
  end
  object QOrden: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    BeforePost = QOrdenBeforePost
    OnNewRecord = QOrdenNewRecord
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
        Name = 'ord'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      
        'emp_codigo, suc_codigo, ord_numero, ord_fecha, usu_codigo, cli_c' +
        'odigo,'
      
        'ord_nombre, ord_direccion, ord_localidad, ord_telefono, ord_stat' +
        'us,'
      'ord_fecha_entrega, ord_fecha_expira, ord_nota'
      'from'
      'orden_servicio'
      'where'
      'emp_codigo = :emp'
      'and suc_codigo = :suc'
      'and ord_numero = :ord'
      '')
    Left = 368
    Top = 240
    object QOrdenemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QOrdensuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object QOrdenord_numero: TIntegerField
      FieldName = 'ord_numero'
    end
    object QOrdenord_fecha: TDateTimeField
      FieldName = 'ord_fecha'
      EditMask = 'cc-cc-cccc'
    end
    object QOrdenusu_codigo: TIntegerField
      FieldName = 'usu_codigo'
    end
    object QOrdencli_codigo: TIntegerField
      FieldName = 'cli_codigo'
    end
    object QOrdenord_nombre: TStringField
      FieldName = 'ord_nombre'
      Size = 60
    end
    object QOrdenord_direccion: TStringField
      FieldName = 'ord_direccion'
      Size = 60
    end
    object QOrdenord_localidad: TStringField
      FieldName = 'ord_localidad'
      Size = 60
    end
    object QOrdenord_telefono: TStringField
      FieldName = 'ord_telefono'
      Size = 13
    end
    object QOrdenord_status: TStringField
      FieldName = 'ord_status'
      Size = 3
    end
    object QOrdenord_fecha_entrega: TDateTimeField
      FieldName = 'ord_fecha_entrega'
    end
    object QOrdenord_fecha_expira: TDateTimeField
      FieldName = 'ord_fecha_expira'
    end
    object QOrdenord_nota: TMemoField
      FieldName = 'ord_nota'
      BlobType = ftMemo
    end
  end
  object QSucursal: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
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
      's.suc_codigo, s.suc_nombre, s.alm_codigo'
      'from'
      'sucursales s, sucursal_acceso a'
      'where'
      's.emp_codigo = a.emp_codigo'
      'and s.suc_codigo = a.suc_codigo'
      'and a.emp_codigo = :emp_codigo'
      'and a.usu_codigo = :usu'
      'order by s.suc_codigo')
    Left = 368
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
  end
  object dsSuc: TDataSource
    DataSet = QSucursal
    Left = 400
    Top = 208
  end
  object dsOrden: TDataSource
    AutoEdit = False
    DataSet = QOrden
    OnDataChange = dsOrdenDataChange
    Left = 400
    Top = 240
  end
  object QDetalle: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    OnNewRecord = QDetalleNewRecord
    Parameters = <
      item
        Name = 'emp'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = -1
      end
      item
        Name = 'suc'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = -1
      end
      item
        Name = 'ord'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = -1
      end>
    SQL.Strings = (
      'select'
      'CASE d.det_status'
      #9'WHEN '#39'PEN'#39'THEN '#39'Pendiente'#39
      #9'WHEN '#39'TRE'#39'THEN '#39'Recibido Taller'#39
      #9'WHEN '#39'TDI'#39'THEN '#39'Diagnosticado Taller'#39
      #9'WHEN '#39'TEA'#39'THEN '#39'Espera Autorizacion'#39
      #9'WHEN '#39'TEP'#39'THEN '#39'Espera Pieza'#39
      #9'WHEN '#39'TRP'#39'THEN '#39'Reparado'#39' '
      #9'WHEN '#39'TEN'#39'THEN '#39'Entregado Taller'#39
      'ELSE '#39'. . . .'#39
      'END AS Estatus,'
      'd.emp_codigo, '
      'd.suc_codigo, '
      'd.ord_numero, '
      'd.det_secuencia,'
      'd.tip_codigo, '
      'd.det_numero_serie, '
      'd.det_descripcion,'
      'd.det_problema, '
      'd.det_fecha_entrada, '
      'd.det_fecha_entrega,'
      'd.tec_codigo, '
      'd.det_monto, '
      'd.det_comentario,'
      'd.det_tiene_garantia, '
      'd.det_status,'
      'a.tip_nombre,'
      'a.tip_dias_entrega'
      'from'
      'Det_Orden_Servicio d'
      'LEFT JOIN Tipo_Equipos AS a ON a.tip_codigo = d.tip_codigo'
      'where'
      'd.emp_codigo = :emp'
      'and d.suc_codigo = :suc'
      'and d.ord_numero = :ord'
      'order by'
      'd.det_secuencia')
    Left = 368
    Top = 272
    object QDetalletip_nombre: TStringField
      FieldName = 'tip_nombre'
    end
    object QDetalleemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QDetallesuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object QDetalleord_numero: TIntegerField
      FieldName = 'ord_numero'
    end
    object QDetalledet_secuencia: TIntegerField
      FieldName = 'det_secuencia'
    end
    object QDetalletip_codigo: TIntegerField
      FieldName = 'tip_codigo'
      OnChange = QDetalletip_codigoChange
      OnGetText = QDetalletip_codigoGetText
    end
    object QDetalledet_numero_serie: TStringField
      FieldName = 'det_numero_serie'
      Size = 30
    end
    object QDetalledet_descripcion: TStringField
      FieldName = 'det_descripcion'
      Size = 80
    end
    object QDetalledet_problema: TMemoField
      FieldName = 'det_problema'
      BlobType = ftMemo
    end
    object QDetalledet_fecha_entrada: TDateTimeField
      FieldName = 'det_fecha_entrada'
      OnChange = QDetalledet_fecha_entradaChange
      EditMask = 'cc-cc-cccc'
    end
    object QDetalledet_fecha_entrega: TDateTimeField
      FieldName = 'det_fecha_entrega'
      EditMask = 'cc-cc-cccc'
    end
    object QDetalletec_codigo: TIntegerField
      FieldName = 'tec_codigo'
      OnGetText = QDetalletec_codigoGetText
    end
    object QDetalledet_monto: TBCDField
      FieldName = 'det_monto'
      currency = True
      Precision = 15
      Size = 2
    end
    object QDetalledet_comentario: TMemoField
      FieldName = 'det_comentario'
      BlobType = ftMemo
    end
    object QDetalledet_tiene_garantia: TStringField
      FieldName = 'det_tiene_garantia'
      Size = 5
    end
    object QDetalledet_status: TStringField
      FieldName = 'det_status'
      Size = 3
    end
    object QDetalleEstatus: TStringField
      FieldName = 'Estatus'
    end
  end
  object dsDetalle: TDataSource
    AutoEdit = False
    DataSet = QDetalle
    OnDataChange = dsDetalleDataChange
    Left = 400
    Top = 272
  end
  object Search: TQrySearchDlgADO
    AliasName = DM.ADOSigma
    Left = 368
    Top = 304
  end
  object QTipo: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
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
      'tip_codigo, tip_nombre'
      'from'
      'tipo_equipos'
      'where'
      'emp_codigo = :emp_codigo')
    Left = 368
    Top = 176
    object QTipotip_codigo: TIntegerField
      FieldName = 'tip_codigo'
    end
    object QTipotip_nombre: TStringField
      FieldName = 'tip_nombre'
      Size = 60
    end
  end
  object Query1: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <>
    Left = 232
    Top = 200
  end
end
