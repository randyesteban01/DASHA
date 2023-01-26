object frmConsGastosMenores: TfrmConsGastosMenores
  Left = 609
  Top = 193
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Consulta comprobantes de gastos menores'
  ClientHeight = 410
  ClientWidth = 689
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 370
    Width = 689
    Height = 40
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    DesignSize = (
      689
      40)
    object lbCantidad: TLabel
      Left = 8
      Top = 13
      Width = 92
      Height = 13
      Caption = '0 Comprobantes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BitBtn2: TBitBtn
      Left = 525
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Listado'
      TabOrder = 0
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
      Left = 349
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Refrescar >>'
      TabOrder = 1
      OnClick = btRefreshClick
    end
    object btClose: TBitBtn
      Left = 605
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '&Salir'
      TabOrder = 2
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
    object BitBtn1: TBitBtn
      Left = 427
      Top = 8
      Width = 93
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Comprobate'
      TabOrder = 3
      OnClick = BitBtn1Click
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 689
    Height = 57
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object Label8: TLabel
      Left = 8
      Top = 8
      Width = 41
      Height = 13
      Caption = 'Sucursal'
    end
    object Label6: TLabel
      Left = 8
      Top = 32
      Width = 38
      Height = 13
      Caption = 'Per'#237'odo'
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 56
      Top = 8
      Width = 623
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
    object Fecha1: TDateTimePicker
      Left = 56
      Top = 32
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
      Left = 136
      Top = 32
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
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 57
    Width = 689
    Height = 313
    Align = alClient
    Color = clInfoBk
    Ctl3D = False
    DataSource = dsGastos
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'caj_nombre'
        Title.Caption = 'Nombre de la caja'
        Width = 164
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'com_fecha'
        Title.Alignment = taCenter
        Title.Caption = 'Fecha'
        Width = 79
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NCF'
        Title.Alignment = taCenter
        Title.Caption = 'N.C.F.'
        Width = 145
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'com_fecha_ini'
        Title.Alignment = taCenter
        Title.Caption = 'Desde'
        Width = 81
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'com_fecha_fin'
        Title.Alignment = taCenter
        Title.Caption = 'Hasta'
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Monto'
        Title.Alignment = taCenter
        Width = 106
        Visible = True
      end>
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
    Left = 224
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
    Left = 256
    Top = 176
  end
  object QGastos: TADOQuery
    Connection = DM.ADOSigma
    OnCalcFields = QGastosCalcFields
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
        Name = 'fec1'
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'fec2'
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      'select'
      
        'j.caj_codigo,j.caj_nombre, c.com_fecha, c.ncf_fijo, c.ncf_secuen' +
        'cia, c.com_fecha_ini,'
      'c.com_fecha_fin, sum(t.det_monto) as Monto'
      'from'
      
        'cajas j, ncf_gastos_menores c, desembolsos d, contdet_desembolso' +
        ' t'
      'where'
      'j.emp_codigo = c.emp_codigo'
      'and j.caj_codigo = c.caj_codigo'
      'and c.emp_codigo = :emp'
      'and c.suc_codigo = :suc'
      
        'and c.com_fecha between convert(datetime, :fec1, 105) and conver' +
        't(datetime, :fec2, 105)'
      'and c.emp_codigo = d.emp_codigo'
      'and c.suc_codigo = d.suc_codigo'
      'and d.des_fecha between c.com_fecha_ini and c.com_fecha_fin'
      'and d.des_gasto_menor = '#39'True'#39
      'and t.cat_cuenta not in (select cat_cuenta from cajas'
      'where emp_codigo = d.emp_codigo'
      'and cat_cuenta is not null)'
      'and d.emp_codigo = t.emp_codigo'
      'and d.suc_codigo = t.suc_codigo'
      'and d.des_numero = t.des_numero'
      'and d.des_ncf is null'
      'group by'
      
        'j.caj_codigo,j.caj_nombre, c.com_fecha, c.ncf_fijo, c.ncf_secuen' +
        'cia, c.com_fecha_ini,'
      'c.com_fecha_fin'
      'order by'
      'c.com_fecha')
    Left = 224
    Top = 208
    object QGastoscaj_codigo: TIntegerField
      FieldName = 'caj_codigo'
    end
    object QGastoscaj_nombre: TStringField
      FieldName = 'caj_nombre'
      Size = 60
    end
    object QGastoscom_fecha: TDateTimeField
      FieldName = 'com_fecha'
    end
    object QGastosncf_fijo: TStringField
      FieldName = 'ncf_fijo'
      Size = 11
    end
    object QGastosncf_secuencia: TBCDField
      FieldName = 'ncf_secuencia'
      Precision = 18
      Size = 0
    end
    object QGastoscom_fecha_ini: TDateTimeField
      FieldName = 'com_fecha_ini'
    end
    object QGastoscom_fecha_fin: TDateTimeField
      FieldName = 'com_fecha_fin'
    end
    object QGastosNCF: TStringField
      FieldKind = fkCalculated
      FieldName = 'NCF'
      Size = 30
      Calculated = True
    end
    object QGastosMonto: TBCDField
      FieldName = 'Monto'
      ReadOnly = True
      currency = True
      Precision = 32
      Size = 2
    end
  end
  object dsGastos: TDataSource
    DataSet = QGastos
    Left = 256
    Top = 208
  end
end
