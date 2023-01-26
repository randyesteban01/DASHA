object frmConsServicios: TfrmConsServicios
  Left = 269
  Top = 140
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta de Servicios'
  ClientHeight = 542
  ClientWidth = 1084
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
  PixelsPerInch = 96
  TextHeight = 13
  object Memo2: TMemo
    Left = 104
    Top = 336
    Width = 137
    Height = 41
    Lines.Strings = (
      'Memo1')
    TabOrder = 4
    Visible = False
  end
  object Memo1: TMemo
    Left = 96
    Top = 328
    Width = 137
    Height = 41
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
    Visible = False
  end
  object pTop: TPanel
    Left = 0
    Top = 0
    Width = 1084
    Height = 136
    Align = alTop
    TabOrder = 1
    DesignSize = (
      1084
      136)
    object Label8: TLabel
      Left = 8
      Top = 8
      Width = 41
      Height = 13
      Caption = 'Sucursal'
    end
    object Label7: TLabel
      Left = 5
      Top = 37
      Width = 39
      Height = 13
      Caption = 'T'#233'cnico'
    end
    object SpeedButton3: TSpeedButton
      Left = 94
      Top = 37
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
    object Label9: TLabel
      Left = 325
      Top = 8
      Width = 49
      Height = 13
      Caption = 'Servicio(s)'
    end
    object Label4: TLabel
      Left = 478
      Top = 8
      Width = 37
      Height = 13
      Caption = 'Nombre'
    end
    object Label2: TLabel
      Left = 325
      Top = 37
      Width = 32
      Height = 13
      Caption = 'Cliente'
    end
    object SpeedButton2: TSpeedButton
      Left = 414
      Top = 37
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
    object Label1: TLabel
      Left = 8
      Top = 97
      Width = 37
      Height = 13
      Caption = 'Entrega'
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 58
      Top = 8
      Width = 247
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
    object edTecnico: TEdit
      Left = 58
      Top = 37
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
    end
    object tTecnico: TEdit
      Left = 119
      Top = 37
      Width = 185
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
      TabOrder = 2
    end
    object Fecha1: TDateTimePicker
      Left = 119
      Top = 67
      Width = 88
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
      Left = 216
      Top = 67
      Width = 88
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
    object ckrango: TCheckBox
      Left = 5
      Top = 67
      Width = 103
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Rango Entrada'
      Checked = True
      State = cbChecked
      TabOrder = 5
    end
    object edServ1: TEdit
      Left = 378
      Top = 8
      Width = 47
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
      TabOrder = 6
    end
    object edServ2: TEdit
      Left = 426
      Top = 8
      Width = 47
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
    end
    object edNombre: TEdit
      Left = 525
      Top = 8
      Width = 145
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
    object edCliente: TEdit
      Left = 378
      Top = 37
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
      TabOrder = 9
    end
    object tCliente: TEdit
      Left = 439
      Top = 37
      Width = 231
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
    object fechaEntrega1: TDateTimePicker
      Left = 119
      Top = 97
      Width = 88
      Height = 21
      Date = 37506.000000000000000000
      Time = 37506.000000000000000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
    end
    object fechaEntrega2: TDateTimePicker
      Left = 216
      Top = 97
      Width = 88
      Height = 21
      Date = 37506.000000000000000000
      Time = 37506.000000000000000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
    end
    object ckentrega: TCheckBox
      Left = 5
      Top = 97
      Width = 103
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Entrega Taller'
      TabOrder = 13
    end
    object btRefresh: TBitBtn
      Left = 378
      Top = 67
      Width = 93
      Height = 25
      Caption = 'Refrescar >>'
      TabOrder = 14
      OnClick = btRefreshClick
    end
    object btLimpiarCons: TBitBtn
      Left = 482
      Top = 67
      Width = 103
      Height = 25
      Caption = '<< Limpiar Consulta'
      TabOrder = 15
      OnClick = btLimpiarConsClick
    end
    object BitBtn3: TBitBtn
      Left = 695
      Top = 67
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Listado'
      TabOrder = 16
      OnClick = BitBtn3Click
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
    object cbStatus2: TRadioGroup
      Left = 851
      Top = 1
      Width = 105
      Height = 134
      Align = alRight
      Caption = '  Status  '
      Items.Strings = (
        'Pendiente'
        'Recepcionado'
        'Taller'
        'Etr. -Taller'
        'Entregado'
        'Cancelado'
        'Todas')
      TabOrder = 17
    end
    object rgTaller2: TRadioGroup
      Left = 956
      Top = 1
      Width = 127
      Height = 134
      Align = alRight
      Caption = '  Status Taller  '
      Items.Strings = (
        'Recibido'
        'Diagnostico'
        'Espera Autorizaci'#243'n'
        'Espera Pieza'
        'Reparado'
        'Entregado'
        'Todas')
      TabOrder = 18
      OnClick = rgTaller2Click
    end
  end
  object dbgServicio: TDBGrid
    Left = 0
    Top = 136
    Width = 517
    Height = 406
    Align = alClient
    Color = clInfoBk
    DataSource = dsServicios
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'emp_codigo'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'suc_codigo'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'ord_numero'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ord_fecha'
        Title.Caption = 'Fecha'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Estatus'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ord_nombre'
        Title.Caption = 'Cliente'
        Width = 187
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ord_telefono'
        Title.Caption = 'Tel'#233'fono'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ord_direccion'
        Title.Caption = 'Direcci'#243'n'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'ord_localidad'
        Title.Caption = 'Localidad'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'ord_fecha_entrega'
        Title.Caption = 'Entrega'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ord_fecha_expira'
        Title.Caption = 'Expira'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ord_nota'
        PopupMenu = PopupMenu1
        Title.Caption = 'Nota'
        Visible = False
      end>
  end
  object Panel1: TPanel
    Left = 517
    Top = 136
    Width = 567
    Height = 406
    Align = alRight
    TabOrder = 3
    object dbgDetalle: TDBGrid
      Left = 1
      Top = 1
      Width = 565
      Height = 103
      Align = alTop
      Color = clSilver
      DataSource = dsDetalle
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'suc_codigo'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'tip_nombre'
          Title.Caption = 'Equipo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ord_numero'
          Title.Caption = 'Codigo'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'det_numero_serie'
          Title.Caption = 'Numero serie'
          Width = 109
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'det_descripcion'
          Title.Caption = 'Descripci'#243'n'
          Width = 182
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'det_problema'
          PopupMenu = PopupMenu1
          Title.Caption = 'Problema'
          Width = 60
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'det_tiene_garantia'
          Title.Alignment = taCenter
          Title.Caption = 'Garant'#237'a'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'det_comentario'
          PopupMenu = PopupMenu1
          Title.Caption = 'Comentario'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'det_fecha_entrada'
          Title.Caption = 'Entrada'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'det_fecha_entrega'
          Title.Caption = 'Entrega Taller'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'det_monto'
          Title.Caption = 'Monto'
          Visible = True
        end>
    end
    object dbgTaller: TDBGrid
      Left = 1
      Top = 104
      Width = 565
      Height = 301
      Align = alClient
      Color = clGray
      DataSource = dsTaller
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'tec_codigo'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'tec_nombre'
          Title.Caption = 'T'#233'cnico'
          Width = 220
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ta_comentario'
          PopupMenu = PopupMenu1
          Title.Caption = 'Comentario'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Estatus'
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ta_fecha'
          Title.Caption = 'Fecha'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ta_monto'
          Title.Caption = 'Monto'
          Visible = True
        end>
    end
  end
  object QServicios: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    Parameters = <
      item
        Name = 'suc'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 16
        Value = -1
      end>
    SQL.Strings = (
      'SELECT'
      'CASE ord_status '
      #9'WHEN '#39'PEN'#39'THEN '#39'Pendiente'#39
      #9'WHEN '#39'REC'#39'THEN '#39'Recepcionado'#39
      #9'WHEN '#39'TAL'#39'THEN '#39'Taller'#39
      #9'WHEN '#39'TEN'#39'THEN '#39'Entregado de Taller'#39
      #9'WHEN '#39'ENT'#39'THEN '#39'Entregado'#39
      #9'WHEN '#39'CAN'#39'THEN '#39'Cancelado'#39' '
      'ELSE '#39'. . . .'#39
      'END AS Estatus,'
      'ord_numero,'
      'ord_fecha,'
      'usu_codigo,'
      'cli_codigo,'
      'ord_nombre,'
      'ord_direccion,'
      'ord_localidad,'
      'ord_telefono,'
      'ord_fecha_entrega,'
      'ord_fecha_expira,'
      'ord_nota,'
      'emp_codigo,'
      'suc_codigo,'
      'ord_numero'
      'FROM Orden_Servicio'
      'where suc_codigo = :suc')
    Left = 344
    Top = 240
    object QServiciosemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
      Visible = False
    end
    object QServiciossuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
      Visible = False
    end
    object QServiciosord_numero: TIntegerField
      FieldName = 'ord_numero'
    end
    object QServiciosord_nombre: TStringField
      FieldName = 'ord_nombre'
      Size = 60
    end
    object QServiciosord_fecha: TDateTimeField
      FieldName = 'ord_fecha'
      EditMask = 'cc-cc-cccc'
    end
    object QServiciosord_direccion: TStringField
      FieldName = 'ord_direccion'
      Size = 60
    end
    object QServiciosord_localidad: TStringField
      FieldName = 'ord_localidad'
      Size = 60
    end
    object QServiciosord_fecha_entrega: TDateTimeField
      FieldName = 'ord_fecha_entrega'
    end
    object QServiciosord_fecha_expira: TDateTimeField
      FieldName = 'ord_fecha_expira'
    end
    object QServiciosord_telefono: TStringField
      FieldName = 'ord_telefono'
      Size = 13
    end
    object QServiciosord_nota: TMemoField
      FieldName = 'ord_nota'
      BlobType = ftMemo
    end
    object QServiciosEstatus: TStringField
      FieldName = 'Estatus'
    end
  end
  object dsServicios: TDataSource
    AutoEdit = False
    DataSet = QServicios
    Left = 376
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
    Left = 344
    Top = 200
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
    Left = 376
    Top = 200
  end
  object Search: TQrySearchDlgADO
    AliasName = DM.ADOSigma
    Left = 128
    Top = 280
  end
  object QDetalle: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    DataSource = dsServicios
    Parameters = <
      item
        Name = 'emp_codigo'
        DataType = ftString
        Size = 2
        Value = '-1'
      end
      item
        Name = 'suc_codigo'
        DataType = ftString
        Size = 2
        Value = '-1'
      end
      item
        Name = 'ord_numero'
        DataType = ftString
        Size = 2
        Value = '-1'
      end>
    SQL.Strings = (
      'SELECT'
      'CASE a.det_status '
      #9'WHEN '#39'TRE'#39'THEN '#39'Recibido'#39
      #9'WHEN '#39'TDI'#39'THEN '#39'Diagnostico'#39
      #9'WHEN '#39'TEA'#39'THEN '#39'Espera Autorizacion'#39
      #9'WHEN '#39'TEP'#39'THEN '#39'Espera Pieza'#39
      #9'WHEN '#39'TRP'#39'THEN '#39'Reparado'#39' '
      #9'WHEN '#39'TEN'#39'THEN '#39'Entregado'#39
      'END AS Estatus,'
      'a.tip_codigo, d.tip_nombre, d.tip_dias_entrega,'
      'a.det_numero_serie,'
      'a.det_descripcion,'
      'a.det_problema,'
      'a.det_fecha_entrada,'
      'a.det_fecha_entrega,'
      'a.det_monto,'
      'a.det_comentario,'
      'a.det_tiene_garantia,'
      'z.tec_nombre,'
      'a.suc_codigo,'
      'a.ord_numero '
      'FROM Det_Orden_Servicio as a'
      'left JOIN Tecnicos as z ON z.tec_codigo = a.tec_codigo'
      'LEFT JOIN Tipo_Equipos AS d ON d.tip_codigo = a.tip_codigo'
      'where a.emp_codigo = :emp_codigo'
      '  and a.suc_codigo = :suc_codigo'
      '  and a.ord_numero = :ord_numero')
    Left = 344
    Top = 280
    object QDetallesuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object QDetalleord_numero: TIntegerField
      FieldName = 'ord_numero'
    end
    object QDetalledet_numero_serie: TStringField
      FieldName = 'det_numero_serie'
      Size = 30
    end
    object QDetalledet_descripcion: TStringField
      FieldName = 'det_descripcion'
      Size = 80
    end
    object QDetalledet_tiene_garantia: TStringField
      FieldName = 'det_tiene_garantia'
      Size = 5
    end
    object QDetalledet_comentario: TMemoField
      FieldName = 'det_comentario'
      BlobType = ftMemo
    end
    object QDetalledet_monto: TBCDField
      FieldName = 'det_monto'
      currency = True
      Precision = 15
      Size = 2
    end
    object QDetalledet_fecha_entrada: TDateTimeField
      FieldName = 'det_fecha_entrada'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QDetalledet_fecha_entrega: TDateTimeField
      FieldName = 'det_fecha_entrega'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QDetalledet_problema: TMemoField
      FieldName = 'det_problema'
      BlobType = ftMemo
    end
    object QDetalletip_nombre: TStringField
      FieldName = 'tip_nombre'
    end
    object QDetalletip_dias_entrega: TIntegerField
      FieldName = 'tip_dias_entrega'
    end
  end
  object dsDetalle: TDataSource
    AutoEdit = False
    DataSet = QDetalle
    Left = 376
    Top = 280
  end
  object QTaller: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    DataSource = dsDetalle
    Parameters = <
      item
        Name = 'suc_codigo'
        DataType = ftString
        Size = 2
        Value = '-1'
      end
      item
        Name = 'ord_numero'
        DataType = ftString
        Size = 2
        Value = '-1'
      end>
    SQL.Strings = (
      'SELECT'
      'CASE ta_status '
      #9'WHEN '#39'TRE'#39'THEN '#39'Recibido'#39
      #9'WHEN '#39'TDI'#39'THEN '#39'Diagnostico'#39
      #9'WHEN '#39'TEA'#39'THEN '#39'Espera Autorizacion'#39
      #9'WHEN '#39'TEP'#39'THEN '#39'Espera Pieza'#39
      #9'WHEN '#39'TRP'#39'THEN '#39'Reparado'#39' '
      #9'WHEN '#39'TEN'#39'THEN '#39'Entregado'#39
      'END as Estatus,'
      'ta_comentario,'
      'ta_fecha,'
      'a.tec_codigo, z.tec_nombre,'
      'ta_monto'
      'FROM Det_Orden_Servicio_taller as a'
      'INNER JOIN Tecnicos as z ON a.tec_codigo = z.tec_codigo'
      'where suc_codigo = :suc_codigo'
      '  and ord_numero = :ord_numero')
    Left = 344
    Top = 320
    object QTallertec_codigo: TIntegerField
      FieldName = 'tec_codigo'
    end
    object QTallertec_nombre: TStringField
      FieldName = 'tec_nombre'
    end
    object QTallerdet_comentario: TMemoField
      FieldName = 'ta_comentario'
      BlobType = ftMemo
    end
    object QTallerEstatus: TStringField
      FieldName = 'Estatus'
    end
    object QTallerdet_fecha_entrega: TDateTimeField
      FieldName = 'ta_fecha'
      EditMask = 'cc-cc-cccc'
    end
    object QTallerdet_monto: TBCDField
      FieldName = 'ta_monto'
      currency = True
      Precision = 15
      Size = 2
    end
  end
  object dsTaller: TDataSource
    AutoEdit = False
    DataSet = QTaller
    Left = 376
    Top = 320
  end
  object PopupMenu1: TPopupMenu
    OnPopup = PopupMenu1Popup
    Left = 609
    Top = 336
    object VisualizarDetProblema1: TMenuItem
      Caption = 'Visualizar'
      Visible = False
      OnClick = VisualizarDetProblema1Click
    end
    object VisualizarDetComentario1: TMenuItem
      Caption = 'Visualizar'
      Visible = False
      OnClick = VisualizarDetComentario1Click
    end
    object VisualizarTallerCom1: TMenuItem
      Caption = 'Visualizar'
      Visible = False
      OnClick = VisualizarTallerCom1Click
    end
    object VisualizarOrdNota1: TMenuItem
      Caption = 'Visualizar'
      Visible = False
      OnClick = VisualizarOrdNota1Click
    end
  end
end
