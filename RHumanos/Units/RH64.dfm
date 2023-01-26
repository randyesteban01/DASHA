object frmConsNovedades: TfrmConsNovedades
  Left = 195
  Top = 123
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Novedades de la n'#243'mina'
  ClientHeight = 410
  ClientWidth = 693
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
  OnCreate = FormCreate
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 693
    Height = 81
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
    object Label6: TLabel
      Left = 8
      Top = 56
      Width = 36
      Height = 13
      Caption = 'Per'#237'odo'
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 88
      Top = 8
      Width = 305
      Height = 21
      KeyField = 'tno_codigo'
      ListField = 'tno_nombre'
      ListSource = dsTipoNomina
      TabOrder = 0
    end
    object Fecha1: TDateTimePicker
      Left = 88
      Top = 56
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
      Left = 168
      Top = 56
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
    object ckempleado: TCheckBox
      Left = 8
      Top = 32
      Width = 69
      Height = 17
      Caption = 'Empleado'
      TabOrder = 3
    end
    object DBLookupComboBox4: TDBLookupComboBox
      Left = 88
      Top = 32
      Width = 305
      Height = 21
      KeyField = 'emp_numero'
      ListField = 'Nombres'
      ListSource = dsEmpleados
      TabOrder = 4
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 369
    Width = 693
    Height = 41
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    DesignSize = (
      693
      41)
    object BitBtn1: TBitBtn
      Left = 456
      Top = 8
      Width = 77
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Listado'
      TabOrder = 0
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
    object btClose: TBitBtn
      Left = 616
      Top = 8
      Width = 69
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '&Salir'
      TabOrder = 1
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
      Left = 376
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Refrescar'
      TabOrder = 2
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 536
      Top = 8
      Width = 77
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Detalle'
      TabOrder = 3
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
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 81
    Width = 693
    Height = 288
    Align = alClient
    DataSource = dsNovedades
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
  object Memo1: TMemo
    Left = 24
    Top = 184
    Width = 529
    Height = 89
    Lines.Strings = (
      'Memo1')
    TabOrder = 3
    Visible = False
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
    Left = 296
    Top = 152
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
    Left = 328
    Top = 152
  end
  object QNovedades: TADOQuery
    Connection = DM.ADOSigma
    OnCalcFields = QNovedadesCalcFields
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
        Name = 'tno'
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
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
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
      '  and n.tde_codigo = d.tde_codigo), Nomina m'
      'where'
      'n.emp_codigo = :emp_codigo'
      'and n.tno_codigo = :tno'
      'and n.emp_codigo = m.emp_codigo'
      'and n.tno_codigo = m.tno_codigo'
      'and n.nom_codigo = m.nom_codigo'
      'and m.nom_fecha_desde >= convert(datetime, :fec1, 105)'
      'and m.nom_fecha_hasta <= convert(datetime, :fec2, 105)')
    Left = 296
    Top = 184
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
    Left = 328
    Top = 184
  end
  object QEmpleados: TADOQuery
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
      'emp_numero, emp_codigo, '
      
        'emp_nombres+'#39' '#39'+emp_apellido_paterno+'#39' '#39'+emp_apellido_materno as' +
        ' Nombres'
      'from'
      'empleados'
      'where'
      'emp_codigo = :emp_codigo'
      'order by'
      '3')
    Left = 296
    Top = 216
    object QEmpleadosemp_numero: TIntegerField
      FieldName = 'emp_numero'
    end
    object QEmpleadosemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QEmpleadosNombres: TStringField
      FieldName = 'Nombres'
      ReadOnly = True
      Size = 182
    end
  end
  object dsEmpleados: TDataSource
    DataSet = QEmpleados
    Left = 328
    Top = 216
  end
end
