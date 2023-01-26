object frmConsNomina: TfrmConsNomina
  Left = 466
  Top = 290
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Consulta de Nominas'
  ClientHeight = 416
  ClientWidth = 523
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 226
    Width = 523
    Height = 4
    Cursor = crVSplit
    Align = alTop
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 523
    Height = 33
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object Label2: TLabel
      Left = 8
      Top = 8
      Width = 72
      Height = 13
      Caption = 'Tipo de n'#243'mina'
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 88
      Top = 8
      Width = 257
      Height = 21
      KeyField = 'tno_codigo'
      ListField = 'tno_nombre'
      ListSource = dsTipoNomina
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 375
    Width = 523
    Height = 41
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    DesignSize = (
      523
      41)
    object BitBtn1: TBitBtn
      Left = 232
      Top = 8
      Width = 89
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Listado'
      TabOrder = 0
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
    object btvolantes: TBitBtn
      Left = 328
      Top = 8
      Width = 89
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Volantes'
      TabOrder = 1
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
    object btClose: TBitBtn
      Left = 424
      Top = 8
      Width = 89
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
    object BitBtn2: TBitBtn
      Left = 88
      Top = 8
      Width = 137
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Generar asiento contable'
      TabOrder = 3
      OnClick = BitBtn2Click
    end
  end
  object gnominas: TDBGrid
    Left = 0
    Top = 33
    Width = 523
    Height = 193
    Align = alTop
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = dsNominas
    Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 2
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'nom_codigo'
        Title.Alignment = taCenter
        Title.Caption = 'Codigo'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'nom_fecha_desde'
        Title.Alignment = taCenter
        Title.Caption = 'Desde'
        Width = 70
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'nom_fecha_hasta'
        Title.Alignment = taCenter
        Title.Caption = 'Hasta'
        Width = 72
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'nom_fecha_acreditar'
        Title.Alignment = taCenter
        Title.Caption = 'Acreditada'
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Ingresos'
        Title.Alignment = taCenter
        Width = 105
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Descuentos'
        Title.Alignment = taCenter
        Width = 97
        Visible = True
      end>
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 230
    Width = 523
    Height = 145
    Align = alClient
    DataSource = dsNovedades
    Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 3
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Descripcion'
        Title.Caption = 'Descripcion de la Novedad'
        Width = 266
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Ingreso'
        Title.Alignment = taCenter
        Title.Caption = 'Total Ingreso'
        Width = 106
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Descuento'
        Title.Alignment = taCenter
        Title.Caption = 'Total Descuento'
        Width = 106
        Visible = True
      end>
  end
  object QTipoNomina: TADOQuery
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
      'tno_codigo, tno_nombre, emp_codigo'
      'from'
      'tipo_nomina'
      'where'
      'emp_codigo = :emp_codigo'
      'order by'
      'tno_nombre')
    Left = 304
    Top = 80
    object QTipoNominatno_codigo: TIntegerField
      FieldName = 'tno_codigo'
    end
    object QTipoNominatno_nombre: TStringField
      FieldName = 'tno_nombre'
      Size = 60
    end
    object QTipoNominaemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
  end
  object dsTipoNomina: TDataSource
    DataSet = QTipoNomina
    Left = 336
    Top = 80
  end
  object QNominas: TADOQuery
    Connection = DM.ADOSigma
    DataSource = dsTipoNomina
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
        Name = 'tno_codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'n.nom_codigo, n.emp_codigo, n.tno_codigo, n.nom_fecha_desde,'
      'n.nom_fecha_hasta, n.nom_fecha_acreditar,'
      'sum(d.det_total_ingresos) as Ingresos,'
      'sum(d.det_total_descuentos) as Descuentos'
      'from'
      'Nomina n, Nomina_Detalle d'
      'where'
      'n.emp_codigo = d.emp_codigo'
      'and n.tno_codigo = d.tno_codigo'
      'and n.nom_codigo = d.nom_codigo'
      'and n.emp_codigo = :emp_codigo'
      'and n.tno_codigo = :tno_codigo'
      'group by '
      'n.nom_codigo, n.emp_codigo, n.tno_codigo, n.nom_fecha_desde,'
      'n.nom_fecha_hasta, n.nom_fecha_acreditar'
      'order by'
      'n.nom_codigo desc')
    Left = 304
    Top = 112
    object QNominasnom_codigo: TIntegerField
      FieldName = 'nom_codigo'
    end
    object QNominasemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QNominastno_codigo: TIntegerField
      FieldName = 'tno_codigo'
    end
    object QNominasnom_fecha_desde: TDateTimeField
      FieldName = 'nom_fecha_desde'
    end
    object QNominasnom_fecha_hasta: TDateTimeField
      FieldName = 'nom_fecha_hasta'
    end
    object QNominasnom_fecha_acreditar: TDateTimeField
      FieldName = 'nom_fecha_acreditar'
    end
    object QNominasIngresos: TBCDField
      FieldName = 'Ingresos'
      ReadOnly = True
      currency = True
      Precision = 32
      Size = 2
    end
    object QNominasDescuentos: TBCDField
      FieldName = 'Descuentos'
      ReadOnly = True
      currency = True
      Precision = 32
      Size = 2
    end
  end
  object dsNominas: TDataSource
    DataSet = QNominas
    Left = 336
    Top = 112
  end
  object QNovedades: TADOQuery
    Connection = DM.ADOSigma
    OnCalcFields = QNovedadesCalcFields
    DataSource = dsNominas
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
        Name = 'tno_codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'nom_codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'i.tin_nombre, d.tde_nombre, n.tin_codigo, n.tde_codigo,'
      'sum(n.det_monto) as det_monto'
      'from'
      'Nomina_Detalle_Novedades n'
      'left outer join tipo_ingresos i on'
      '  (n.emp_codigo = i.emp_codigo'
      '  and n.tin_codigo = i.tin_codigo)'
      'left outer join tipo_descuentos d on'
      '  (n.emp_codigo = d.emp_codigo'
      '  and n.tde_codigo = d.tde_codigo)'
      'where'
      'n.emp_codigo = :emp_codigo'
      'and n.tno_codigo = :tno_codigo'
      'and n.nom_codigo = :nom_codigo'
      'group by'
      'i.tin_nombre, d.tde_nombre, n.tin_codigo, n.tde_codigo'
      'order by'
      '3')
    Left = 304
    Top = 144
    object QNovedadestin_nombre: TStringField
      FieldName = 'tin_nombre'
      Size = 60
    end
    object QNovedadestde_nombre: TStringField
      FieldName = 'tde_nombre'
      Size = 60
    end
    object QNovedadesdet_monto: TBCDField
      FieldName = 'det_monto'
      Precision = 15
      Size = 2
    end
    object QNovedadestin_codigo: TIntegerField
      FieldName = 'tin_codigo'
    end
    object QNovedadestde_codigo: TIntegerField
      FieldName = 'tde_codigo'
    end
    object QNovedadesDescripcion: TStringField
      FieldKind = fkCalculated
      FieldName = 'Descripcion'
      Size = 60
      Calculated = True
    end
    object QNovedadesIngreso: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Ingreso'
      currency = True
      Calculated = True
    end
    object QNovedadesDescuento: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Descuento'
      currency = True
      Calculated = True
    end
  end
  object dsNovedades: TDataSource
    DataSet = QNovedades
    Left = 336
    Top = 144
  end
end
