object frmIngresos: TfrmIngresos
  Left = 535
  Top = 210
  BorderIcons = [biSystemMenu, biMinimize, biHelp]
  BorderStyle = bsSingle
  Caption = 'Ingresos'
  ClientHeight = 327
  ClientWidth = 549
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
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 549
    Height = 42
    AutoSize = True
    Bands = <
      item
        Control = ToolBar1
        ImageIndex = -1
        MinHeight = 38
        Width = 545
      end>
    object ToolBar1: TToolBar
      Left = 9
      Top = 0
      Width = 532
      Height = 38
      AutoSize = True
      ButtonHeight = 36
      ButtonWidth = 50
      Caption = 'ToolBar1'
      Flat = True
      Images = DM.ImgMant
      ShowCaptions = True
      TabOrder = 0
      object ToolButton13: TToolButton
        Left = 0
        Top = 0
        Action = btPrior
      end
      object ToolButton12: TToolButton
        Left = 50
        Top = 0
        Action = btNext
      end
      object ToolButton14: TToolButton
        Left = 100
        Top = 0
        Width = 8
        Caption = 'ToolButton14'
        ImageIndex = 1
        Style = tbsSeparator
      end
      object ToolButton1: TToolButton
        Left = 108
        Top = 0
        Action = btInsert
      end
      object ToolButton2: TToolButton
        Left = 158
        Top = 0
        Action = btEdit
      end
      object ToolButton3: TToolButton
        Left = 208
        Top = 0
        Action = btDelete
      end
      object ToolButton4: TToolButton
        Left = 258
        Top = 0
        Width = 8
        Caption = 'ToolButton4'
        ImageIndex = 3
        Style = tbsSeparator
      end
      object ToolButton5: TToolButton
        Left = 266
        Top = 0
        Action = btPost
      end
      object ToolButton6: TToolButton
        Left = 316
        Top = 0
        Action = btCancel
      end
      object ToolButton7: TToolButton
        Left = 366
        Top = 0
        Width = 8
        Caption = 'ToolButton7'
        ImageIndex = 5
        Style = tbsSeparator
      end
      object ToolButton8: TToolButton
        Left = 374
        Top = 0
        Action = btFind
      end
      object ToolButton9: TToolButton
        Left = 424
        Top = 0
        Action = btPrint
      end
      object ToolButton10: TToolButton
        Left = 474
        Top = 0
        Width = 8
        Caption = 'ToolButton10'
        ImageIndex = 7
        Style = tbsSeparator
      end
      object ToolButton11: TToolButton
        Left = 482
        Top = 0
        Action = btClose
      end
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 40
    Width = 537
    Height = 273
    ActivePage = TabSheet1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Registro'
      object Label1: TLabel
        Left = 8
        Top = 40
        Width = 46
        Height = 13
        Caption = 'Empleado'
      end
      object Label2: TLabel
        Left = 8
        Top = 16
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
      end
      object Label3: TLabel
        Left = 8
        Top = 64
        Width = 73
        Height = 13
        Caption = 'Tipo de ingreso'
      end
      object Label4: TLabel
        Left = 8
        Top = 88
        Width = 29
        Height = 13
        Caption = 'Fecha'
      end
      object Label5: TLabel
        Left = 8
        Top = 112
        Width = 24
        Height = 13
        Caption = 'Valor'
      end
      object Label6: TLabel
        Left = 8
        Top = 136
        Width = 60
        Height = 13
        Caption = 'Observacion'
      end
      object Label7: TLabel
        Left = 8
        Top = 200
        Width = 78
        Height = 13
        Caption = 'Per'#237'odo de pago'
      end
      object lblCantidad: TLabel
        Left = 168
        Top = 116
        Width = 43
        Height = 13
        Caption = 'Cantidad'
        Visible = False
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 88
        Top = 40
        Width = 321
        Height = 21
        DataField = 'emp_numero'
        DataSource = dsIngresos
        KeyField = 'emp_numero'
        ListField = 'Nombres'
        ListSource = dsEmpleados
        TabOrder = 1
        OnCloseUp = DBLookupComboBox1CloseUp
      end
      object DBEdit1: TDBEdit
        Left = 88
        Top = 16
        Width = 73
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        Color = clInfoBk
        DataField = 'ing_codigo'
        DataSource = dsIngresos
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 88
        Top = 88
        Width = 73
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'ing_fecha'
        DataSource = dsIngresos
        TabOrder = 3
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 88
        Top = 64
        Width = 321
        Height = 21
        DataField = 'tin_codigo'
        DataSource = dsIngresos
        KeyField = 'tin_codigo'
        ListField = 'tin_nombre'
        ListSource = dsTipo
        TabOrder = 2
        OnCloseUp = DBLookupComboBox2CloseUp
      end
      object DBEdt_Valor: TDBEdit
        Left = 88
        Top = 112
        Width = 73
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'ing_valor'
        DataSource = dsIngresos
        TabOrder = 4
      end
      object DBMemo1: TDBMemo
        Left = 88
        Top = 136
        Width = 321
        Height = 57
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'ing_descripcion'
        DataSource = dsIngresos
        TabOrder = 5
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 416
        Top = 32
        Width = 113
        Height = 81
        Caption = 'Forma de aplicar'
        DataField = 'ing_fijo_variable'
        DataSource = dsIngresos
        Items.Strings = (
          'Ingreso Fijo'
          'Ingreso Variable')
        TabOrder = 7
        Values.Strings = (
          'F'
          'V')
      end
      object DBLookupComboBox3: TDBLookupComboBox
        Left = 88
        Top = 200
        Width = 321
        Height = 21
        DataField = 'ing_periodo_pago'
        DataSource = dsIngresos
        KeyField = 'codigo'
        ListField = 'Nombre'
        ListSource = dsPeriodo
        TabOrder = 6
      end
      object DBEdt_ing_valor_cant: TDBEdit
        Left = 216
        Top = 112
        Width = 73
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'ing_valor_cant'
        DataSource = dsIngresos
        TabOrder = 8
        Visible = False
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Consulta'
      ImageIndex = 1
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 529
        Height = 245
        Align = alClient
        DataSource = dsListado
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'ing_codigo'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Width = 47
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Nombres'
            Title.Caption = 'Nombre del Empleado'
            Width = 223
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ing_fecha'
            Title.Alignment = taCenter
            Title.Caption = 'Fecha'
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'tin_nombre'
            Title.Caption = 'Tipo de Ingreso'
            Width = 123
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ing_valor'
            Title.Alignment = taCenter
            Title.Caption = 'Valor'
            Width = 71
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ing_fijo_variable'
            Title.Alignment = taCenter
            Title.Caption = 'F o V'
            Visible = True
          end>
      end
    end
  end
  object QIngresos: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    BeforePost = QIngresosBeforePost
    AfterPost = QIngresosAfterPost
    AfterDelete = QIngresosAfterDelete
    OnCalcFields = QIngresosCalcFields
    OnNewRecord = QIngresosNewRecord
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
        Name = 'ing'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select '
      
        'emp_codigo, ing_codigo, emp_numero, tin_codigo, ing_fecha, ing_v' +
        'alor,'
      
        'ing_descripcion, ing_periodo_pago, ing_fijo_variable, ing_valor_' +
        'cant'
      'from'
      'Ingresos'
      'where'
      'emp_codigo = :emp_codigo'
      'and ing_codigo = :ing'
      'order by ing_codigo')
    Left = 344
    Top = 184
    object QIngresosemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QIngresosing_codigo: TIntegerField
      FieldName = 'ing_codigo'
    end
    object QIngresosemp_numero: TIntegerField
      FieldName = 'emp_numero'
    end
    object QIngresostin_codigo: TIntegerField
      FieldName = 'tin_codigo'
      OnChange = QIngresostin_codigoChange
    end
    object QIngresosing_fecha: TDateTimeField
      FieldName = 'ing_fecha'
      EditMask = 'cc-cc-cccc'
    end
    object QIngresosing_valor: TBCDField
      FieldName = 'ing_valor'
      currency = True
      Precision = 15
      Size = 2
    end
    object QIngresosing_descripcion: TMemoField
      FieldName = 'ing_descripcion'
      BlobType = ftMemo
    end
    object QIngresosing_periodo_pago: TStringField
      FieldName = 'ing_periodo_pago'
      Size = 1
    end
    object QIngresosing_fijo_variable: TStringField
      FieldName = 'ing_fijo_variable'
      Size = 1
    end
    object QIngresosing_valor_cant: TCurrencyField
      FieldName = 'ing_valor_cant'
    end
    object QIngresosValor: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Valor'
      Calculated = True
    end
  end
  object dsIngresos: TDataSource
    AutoEdit = False
    DataSet = QIngresos
    OnStateChange = dsIngresosStateChange
    Left = 376
    Top = 184
  end
  object Search: TQrySearchDlgADO
    Title = 'Ingresos'
    ResultField = 'ing_codigo'
    Query.Strings = (
      'select fpa_nombre, fpa_codigo'
      'from formaspago')
    AliasFields.Strings = (
      'Nombre'
      'Tipo Ingreso'
      'C'#243'digo')
    AliasName = DM.ADOSigma
    Left = 344
    Top = 152
  end
  object ActionList2: TActionList
    Images = DM.ImgMant
    Left = 376
    Top = 152
    object btPrior: TAction
      Caption = 'Anterior'
      ImageIndex = 8
      OnExecute = btpriorClick
    end
    object btNext: TAction
      Caption = 'Pr'#243'ximo'
      ImageIndex = 9
      OnExecute = btnextClick
    end
    object btInsert: TAction
      Caption = 'Insertar'
      ImageIndex = 6
      OnExecute = btInsertClick
    end
    object btEdit: TAction
      Caption = 'Modificar'
      ImageIndex = 7
      OnExecute = btEditClick
    end
    object btDelete: TAction
      Caption = 'Eliminar'
      ImageIndex = 1
      OnExecute = btDeleteClick
    end
    object btPost: TAction
      Caption = 'Grabar'
      ImageIndex = 2
      OnExecute = btPostClick
    end
    object btCancel: TAction
      Caption = 'Cancelar'
      ImageIndex = 3
      OnExecute = btCancelClick
    end
    object btFind: TAction
      Caption = 'Buscar'
      ImageIndex = 4
      OnExecute = btFindClick
    end
    object btPrint: TAction
      Caption = 'Imprimir'
      ImageIndex = 5
    end
    object btClose: TAction
      Caption = 'Salir'
      ImageIndex = 0
      OnExecute = btCloseClick
    end
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
        ' Nombres,'
      
        'emp_salario_horasext he, emp_salario_horasnoct hn, emp_salario_d' +
        'iasfer feriado'
      'from'
      'empleados'
      'where'
      'emp_codigo = :emp_codigo'
      'order by emp_nombres, emp_apellido_paterno, emp_apellido_materno'
      '')
    Left = 344
    Top = 88
    object QEmpleadosTiempoAno: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TiempoAno'
      Calculated = True
    end
    object QEmpleadosTiempoMes: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TiempoMes'
      Calculated = True
    end
    object QEmpleadosTiempoDias: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TiempoDias'
      DisplayFormat = '##'
      Calculated = True
    end
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
    object QEmpleadosferiado: TCurrencyField
      FieldName = 'feriado'
    end
    object QEmpleadoshe: TCurrencyField
      FieldName = 'he'
    end
    object QEmpleadoshn: TCurrencyField
      FieldName = 'hn'
    end
  end
  object dsEmpleados: TDataSource
    DataSet = QEmpleados
    Left = 376
    Top = 88
  end
  object QPeriodo: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <>
    SQL.Strings = (
      'select'
      #39'1'#39' as codigo, '#39'Primera Quincena'#39' as Nombre'
      'union'
      'select'
      #39'2'#39', '#39'Segunda Quincena'#39
      'union'
      'select'
      #39'3'#39', '#39'Todas las Quincenas'#39
      ''
      ''
      ''
      '')
    Left = 344
    Top = 120
    object QPeriodocodigo: TStringField
      FieldName = 'codigo'
      ReadOnly = True
      Size = 1
    end
    object QPeriodoNombre: TStringField
      FieldName = 'Nombre'
      ReadOnly = True
      Size = 19
    end
  end
  object dsPeriodo: TDataSource
    DataSet = QPeriodo
    Left = 376
    Top = 120
  end
  object QListado: TADOQuery
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
      
        '(e.emp_nombres+'#39' '#39'+e.emp_apellido_paterno+'#39' '#39'+e.emp_apellido_mat' +
        'erno) as Nombres,'
      
        't.tin_nombre, i.ing_fecha, i.ing_valor, i.ing_fijo_variable, i.i' +
        'ng_codigo'
      'from'
      'ingresos i, empleados e, tipo_ingresos t'
      'where'
      'i.emp_codigo = e.emp_codigo'
      'and i.emp_numero = e.emp_numero'
      'and i.emp_codigo = t.emp_codigo'
      'and i.tin_codigo = t.tin_codigo'
      'and i.emp_codigo = :emp_codigo'
      'order by'
      'i.ing_codigo'
      ''
      '')
    Left = 344
    Top = 216
    object QListadoNombres: TStringField
      FieldName = 'Nombres'
      ReadOnly = True
      Size = 182
    end
    object QListadotin_nombre: TStringField
      FieldName = 'tin_nombre'
      Size = 60
    end
    object QListadoing_fecha: TDateTimeField
      FieldName = 'ing_fecha'
    end
    object QListadoing_valor: TBCDField
      FieldName = 'ing_valor'
      currency = True
      Precision = 15
      Size = 2
    end
    object QListadoing_fijo_variable: TStringField
      FieldName = 'ing_fijo_variable'
      Size = 1
    end
    object QListadoing_codigo: TIntegerField
      FieldName = 'ing_codigo'
    end
  end
  object dsListado: TDataSource
    DataSet = QListado
    Left = 376
    Top = 216
  end
  object QTipo: TADOQuery
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
      'tin_codigo, tin_nombre'
      'from'
      'tipo_ingresos'
      'where'
      'emp_codigo = :emp_codigo'
      'order by'
      'tin_nombre')
    Left = 344
    Top = 56
    object QTipotin_codigo: TIntegerField
      FieldName = 'tin_codigo'
    end
    object QTipotin_nombre: TStringField
      FieldName = 'tin_nombre'
      Size = 60
    end
  end
  object dsTipo: TDataSource
    DataSet = QTipo
    Left = 376
    Top = 56
  end
end
