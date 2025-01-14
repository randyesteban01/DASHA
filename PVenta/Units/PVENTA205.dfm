object frmRepIngresos: TfrmRepIngresos
  Left = 381
  Top = 283
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Reporte de Ingresos'
  ClientHeight = 413
  ClientWidth = 976
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 373
    Width = 976
    Height = 40
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    DesignSize = (
      976
      40)
    object btRefresh: TBitBtn
      Left = 735
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Refrescar >>'
      TabOrder = 0
      OnClick = btRefreshClick
    end
    object btClose: TBitBtn
      Left = 895
      Top = 8
      Width = 75
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
    object BitBtn1: TBitBtn
      Left = 815
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Imprimir'
      TabOrder = 2
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
  object DBGrid1: TDBGrid
    Left = 0
    Top = 33
    Width = 976
    Height = 340
    Align = alClient
    Color = clInfoBk
    Ctl3D = False
    DataSource = dsBonos
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'cajero'
        Title.Caption = 'Cajero'
        Width = 129
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NombreCaja'
        Title.Alignment = taCenter
        Title.Caption = 'Caja'
        Width = 78
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'total'
        Title.Alignment = taCenter
        Title.Caption = 'Total'
        Width = 82
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'efectivo'
        Title.Alignment = taCenter
        Title.Caption = 'Efectivo'
        Width = 82
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cheque'
        Title.Alignment = taCenter
        Title.Caption = 'Cheque'
        Width = 82
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tarjeta'
        Title.Alignment = taCenter
        Title.Caption = 'Tarjeta'
        Width = 82
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'credito'
        Title.Alignment = taCenter
        Title.Caption = 'Credito'
        Width = 82
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bonos'
        Title.Alignment = taCenter
        Title.Caption = 'Bonos'
        Width = 82
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Otros'
        Title.Caption = 'Otros Bonos'
        Width = 89
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NC'
        Title.Caption = 'Notas CR'
        Width = 91
        Visible = True
      end>
  end
  object Memo1: TMemo
    Left = 8
    Top = 272
    Width = 401
    Height = 57
    Lines.Strings = (
      'Memo1')
    TabOrder = 2
    Visible = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 976
    Height = 33
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 3
    object Label6: TLabel
      Left = 310
      Top = 12
      Width = 30
      Height = 13
      Caption = 'Fecha'
    end
    object Label8: TLabel
      Left = 1
      Top = 16
      Width = 41
      Height = 13
      Caption = 'Sucursal'
    end
    object Fecha1: TDateTimePicker
      Left = 350
      Top = 8
      Width = 89
      Height = 21
      Date = 37506.000000000000000000
      Time = 37506.000000000000000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Fecha2: TDateTimePicker
      Left = 446
      Top = 8
      Width = 89
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
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 43
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
      TabOrder = 2
    end
  end
  object QIngresos: TADOQuery
    Connection = DM.ADOSigma
    OnCalcFields = QIngresosCalcFields
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
        Name = 'suc_codigo'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'fec1'
        Attributes = [paNullable]
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
      'codcajero, cajero, caja, nombrecaja,'
      'sum(efectivo) as efectivo,'
      'sum(cheque) as cheque,'
      'sum(tarjeta) as tarjeta,'
      'sum(credito) as credito,'
      'sum(bonos) as bonos,'
      'sum(total) as total,'
      'sum(otros) as Otros,'
      'sum(nc) as nc'
      'from'
      'fn_resumen_ingresos (:emp_codigo, :suc_codigo, :fec1, :fec2)'
      'group by'
      'codcajero, cajero, caja, nombrecaja'
      'order by'
      '3')
    Left = 176
    Top = 120
    object QIngresoscodcajero: TIntegerField
      FieldName = 'codcajero'
    end
    object QIngresoscajero: TStringField
      FieldName = 'cajero'
      Size = 30
    end
    object QIngresoscaja: TIntegerField
      FieldName = 'caja'
    end
    object QIngresosefectivo: TBCDField
      FieldName = 'efectivo'
      currency = True
      Precision = 19
    end
    object QIngresoscheque: TBCDField
      FieldName = 'cheque'
      currency = True
      Precision = 19
    end
    object QIngresostarjeta: TBCDField
      FieldName = 'tarjeta'
      currency = True
      Precision = 19
    end
    object QIngresoscredito: TBCDField
      FieldName = 'credito'
      currency = True
      Precision = 19
    end
    object QIngresosbonos: TBCDField
      FieldName = 'bonos'
      currency = True
      Precision = 19
    end
    object QIngresostotal: TBCDField
      FieldName = 'total'
      currency = True
      Precision = 19
    end
    object QIngresosNombreCaja: TStringField
      FieldName = 'NombreCaja'
    end
    object QIngresosValor: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Valor'
      currency = True
      Calculated = True
    end
    object QIngresosOtros: TCurrencyField
      FieldName = 'Otros'
    end
    object QIngresosNC: TCurrencyField
      FieldName = 'NC'
    end
  end
  object Search: TQrySearchDlgADO
    Title = 'Listado de Clientes'
    ResultField = 'cli_codigo'
    Query.Strings = (
      'select cli_nombre, cli_codigo'
      'from clientes')
    AliasFields.Strings = (
      'Nombre'
      'C'#243'digo')
    AliasName = DM.ADOSigma
    Left = 280
    Top = 128
  end
  object dsBonos: TDataSource
    DataSet = QIngresos
    Left = 216
    Top = 120
  end
  object dsSuc: TDataSource
    DataSet = QSucursal
    Left = 432
    Top = 72
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
    Left = 400
    Top = 72
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
end
