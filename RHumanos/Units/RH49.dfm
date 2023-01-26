object frmDescuentos: TfrmDescuentos
  Left = 391
  Top = 447
  BorderIcons = [biSystemMenu, biMinimize, biHelp]
  BorderStyle = bsSingle
  Caption = 'Descuentos'
  ClientHeight = 379
  ClientWidth = 550
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
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 550
    Height = 42
    AutoSize = True
    Bands = <
      item
        Control = ToolBar1
        ImageIndex = -1
        MinHeight = 38
        Width = 546
      end>
    object ToolBar1: TToolBar
      Left = 9
      Top = 0
      Width = 533
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
    Top = 42
    Width = 550
    Height = 337
    ActivePage = TabSheet1
    Align = alClient
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
        Caption = 'Tipo descuento'
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
        Width = 70
        Height = 13
        Caption = 'Es porcentual?'
      end
      object Label7: TLabel
        Left = 8
        Top = 256
        Width = 89
        Height = 13
        Caption = 'Per'#237'odo descuento'
      end
      object Label8: TLabel
        Left = 8
        Top = 160
        Width = 74
        Height = 13
        Caption = 'Tasa de interes'
      end
      object Label9: TLabel
        Left = 8
        Top = 184
        Width = 72
        Height = 13
        Caption = 'N'#250'mero cuotas'
      end
      object Label10: TLabel
        Left = 8
        Top = 208
        Width = 81
        Height = 13
        Caption = 'Monto adeudado'
      end
      object Label11: TLabel
        Left = 8
        Top = 232
        Width = 64
        Height = 13
        Caption = 'Total a pagar'
      end
      object Label12: TLabel
        Left = 248
        Top = 208
        Width = 49
        Height = 13
        Caption = 'Deducci'#243'n'
      end
      object Label13: TLabel
        Left = 248
        Top = 232
        Width = 78
        Height = 13
        Caption = 'Cuotas pagadas'
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 104
        Top = 40
        Width = 305
        Height = 21
        DataField = 'emp_numero'
        DataSource = dsDescuentos
        KeyField = 'emp_numero'
        ListField = 'Nombres'
        ListSource = dsEmpleados
        TabOrder = 1
      end
      object DBEdit1: TDBEdit
        Left = 104
        Top = 16
        Width = 73
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        Color = clInfoBk
        DataField = 'des_codigo'
        DataSource = dsDescuentos
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
        Left = 104
        Top = 88
        Width = 73
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'des_fecha'
        DataSource = dsDescuentos
        TabOrder = 3
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 104
        Top = 64
        Width = 305
        Height = 21
        DataField = 'tde_codigo'
        DataSource = dsDescuentos
        KeyField = 'tde_codigo'
        ListField = 'tde_nombre'
        ListSource = dsTipo
        TabOrder = 2
      end
      object DBEdit3: TDBEdit
        Left = 104
        Top = 112
        Width = 73
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'des_valor'
        DataSource = dsDescuentos
        TabOrder = 4
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 264
        Top = 88
        Width = 145
        Height = 81
        Caption = 'Forma de aplicar'
        DataField = 'des_fijo_variable'
        DataSource = dsDescuentos
        Items.Strings = (
          'Descuento Fijo'
          'Descuento Variable')
        TabOrder = 11
        Values.Strings = (
          'F'
          'V')
      end
      object DBLookupComboBox3: TDBLookupComboBox
        Left = 104
        Top = 256
        Width = 305
        Height = 21
        DataField = 'des_periodo_descuento'
        DataSource = dsDescuentos
        KeyField = 'codigo'
        ListField = 'Nombre'
        ListSource = dsPeriodo
        TabOrder = 10
      end
      object DBCheckBox1: TDBCheckBox
        Left = 104
        Top = 136
        Width = 17
        Height = 17
        DataField = 'des_porcentual'
        DataSource = dsDescuentos
        TabOrder = 13
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBEdit4: TDBEdit
        Left = 104
        Top = 160
        Width = 73
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'des_interes'
        DataSource = dsDescuentos
        TabOrder = 5
      end
      object DBEdit5: TDBEdit
        Left = 104
        Top = 184
        Width = 73
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'des_cuotas'
        DataSource = dsDescuentos
        TabOrder = 6
      end
      object DBEdit6: TDBEdit
        Left = 104
        Top = 208
        Width = 73
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        Color = clInfoBk
        DataField = 'Saldo'
        DataSource = dsDescuentos
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
      end
      object DBEdit7: TDBEdit
        Left = 104
        Top = 232
        Width = 73
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        Color = clInfoBk
        DataField = 'Total'
        DataSource = dsDescuentos
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
      end
      object DBEdit8: TDBEdit
        Left = 336
        Top = 208
        Width = 73
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        Color = clInfoBk
        DataField = 'Deduccion'
        DataSource = dsDescuentos
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 9
      end
      object DBEdit9: TDBEdit
        Left = 336
        Top = 232
        Width = 73
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        Color = clInfoBk
        DataField = 'des_cuotas_pagadas'
        DataSource = dsDescuentos
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 12
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Consulta'
      ImageIndex = 1
      object DBGrid1: TDBGrid
        Left = 0
        Top = 56
        Width = 542
        Height = 253
        Align = alBottom
        Anchors = [akLeft, akTop, akRight, akBottom]
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
            FieldName = 'des_codigo'
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
            FieldName = 'des_fecha'
            Title.Alignment = taCenter
            Title.Caption = 'Fecha'
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'tde_nombre'
            Title.Caption = 'Tipo de descuento'
            Width = 123
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'des_valor'
            Title.Alignment = taCenter
            Title.Caption = 'Valor'
            Width = 71
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'des_fijo_variable'
            Title.Alignment = taCenter
            Title.Caption = 'F o V'
            Visible = True
          end>
      end
      object DBLookupComboBox4: TDBLookupComboBox
        Left = 80
        Top = 32
        Width = 305
        Height = 21
        KeyField = 'emp_numero'
        ListField = 'Nombres'
        ListSource = dsEmpleados
        TabOrder = 1
      end
      object fdesde: TDateTimePicker
        Left = 80
        Top = 8
        Width = 81
        Height = 21
        Date = 39313.000000000000000000
        Time = 39313.000000000000000000
        TabOrder = 2
      end
      object fhasta: TDateTimePicker
        Left = 160
        Top = 8
        Width = 81
        Height = 21
        Date = 39313.000000000000000000
        Time = 39313.000000000000000000
        TabOrder = 3
      end
      object btrefrescar: TBitBtn
        Left = 464
        Top = 24
        Width = 75
        Height = 25
        Caption = 'Refrescar'
        TabOrder = 4
        OnClick = btrefrescarClick
      end
      object ckempleado: TCheckBox
        Left = 8
        Top = 32
        Width = 69
        Height = 17
        Caption = 'Empleado'
        TabOrder = 5
      end
      object ckfecha: TCheckBox
        Left = 8
        Top = 8
        Width = 69
        Height = 17
        Caption = 'Fecha'
        TabOrder = 6
      end
      object Memo1: TRichEdit
        Left = 48
        Top = 160
        Width = 305
        Height = 41
        Lines.Strings = (
          'Memo1')
        TabOrder = 7
        Visible = False
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Cargar CxC Empleados'
      ImageIndex = 2
      object Label14: TLabel
        Left = 8
        Top = 8
        Width = 78
        Height = 13
        Caption = 'Fecha del recibo'
      end
      object Label15: TLabel
        Left = 8
        Top = 32
        Width = 128
        Height = 13
        Caption = 'Fecha acreditar descuento'
      end
      object Label16: TLabel
        Left = 184
        Top = 8
        Width = 89
        Height = 13
        Caption = 'Per'#237'odo descuento'
      end
      object DBGrid2: TDBGrid
        Left = 0
        Top = 64
        Width = 542
        Height = 245
        Align = alBottom
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = dsRecibos
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
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
            FieldName = 'rec_numero'
            Title.Alignment = taCenter
            Title.Caption = 'Numero'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'rec_fecha'
            Title.Alignment = taCenter
            Title.Caption = 'Fecha'
            Width = 76
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'rec_nombre'
            Title.Caption = 'Nombre del Cliente / Empleado'
            Width = 183
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'rec_monto'
            Title.Alignment = taCenter
            Title.Caption = 'Monto'
            Width = 83
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'rec_concepto'
            Title.Caption = 'Concepto'
            Visible = True
          end>
      end
      object fec_acreditar: TDateTimePicker
        Left = 144
        Top = 32
        Width = 81
        Height = 21
        Date = 39313.000000000000000000
        Time = 39313.000000000000000000
        TabOrder = 1
      end
      object fec_recibo: TDateTimePicker
        Left = 96
        Top = 8
        Width = 81
        Height = 21
        Date = 39313.000000000000000000
        Time = 39313.000000000000000000
        TabOrder = 2
      end
      object BitBtn1: TBitBtn
        Left = 304
        Top = 33
        Width = 107
        Height = 25
        Caption = 'Buscar recibos'
        TabOrder = 3
        OnClick = BitBtn1Click
      end
      object BitBtn2: TBitBtn
        Left = 416
        Top = 33
        Width = 107
        Height = 25
        Caption = 'Insertar descuento'
        TabOrder = 4
        OnClick = BitBtn2Click
      end
      object DBLookupComboBox5: TDBLookupComboBox
        Left = 280
        Top = 8
        Width = 241
        Height = 21
        KeyField = 'codigo'
        ListField = 'Nombre'
        ListSource = dsPeriodo
        TabOrder = 5
      end
    end
  end
  object QDescuentos: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    BeforePost = QDescuentosBeforePost
    AfterPost = QDescuentosAfterPost
    AfterDelete = QDescuentosAfterDelete
    OnCalcFields = QDescuentosCalcFields
    OnNewRecord = QDescuentosNewRecord
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
        Name = 'des'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      
        'emp_codigo, des_codigo, emp_numero, tde_codigo, des_fecha, des_v' +
        'alor,'
      'des_fijo_variable, des_porcentual, des_interes, des_cuotas,'
      'des_periodo_descuento, des_monto_pagado,'
      'des_cuotas_pagadas, des_status'
      'from'
      'descuentos'
      'where'
      'emp_codigo = :emp_codigo'
      'and des_codigo = :des'
      'order by des_codigo')
    Left = 456
    Top = 288
    object QDescuentosemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QDescuentosdes_codigo: TIntegerField
      FieldName = 'des_codigo'
    end
    object QDescuentosemp_numero: TIntegerField
      FieldName = 'emp_numero'
    end
    object QDescuentostde_codigo: TIntegerField
      FieldName = 'tde_codigo'
    end
    object QDescuentosdes_fecha: TDateTimeField
      FieldName = 'des_fecha'
      EditMask = 'cc-cc-cccc'
    end
    object QDescuentosdes_valor: TBCDField
      FieldName = 'des_valor'
      currency = True
      Precision = 15
      Size = 2
    end
    object QDescuentosdes_fijo_variable: TStringField
      FieldName = 'des_fijo_variable'
      Size = 5
    end
    object QDescuentosdes_porcentual: TStringField
      FieldName = 'des_porcentual'
      Size = 5
    end
    object QDescuentosdes_interes: TBCDField
      FieldName = 'des_interes'
      currency = True
      Precision = 15
      Size = 2
    end
    object QDescuentosdes_cuotas: TIntegerField
      FieldName = 'des_cuotas'
    end
    object QDescuentosdes_periodo_descuento: TStringField
      FieldName = 'des_periodo_descuento'
      Size = 1
    end
    object QDescuentosdes_monto_pagado: TBCDField
      FieldName = 'des_monto_pagado'
      currency = True
      Precision = 15
      Size = 2
    end
    object QDescuentosSaldo: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Saldo'
      currency = True
      Calculated = True
    end
    object QDescuentosTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      currency = True
      Calculated = True
    end
    object QDescuentosDeduccion: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Deduccion'
      currency = True
      Calculated = True
    end
    object QDescuentosdes_cuotas_pagadas: TIntegerField
      FieldName = 'des_cuotas_pagadas'
    end
    object QDescuentosdes_status: TStringField
      FieldName = 'des_status'
      Size = 3
    end
  end
  object dsDescuentos: TDataSource
    AutoEdit = False
    DataSet = QDescuentos
    OnStateChange = dsDescuentosStateChange
    Left = 488
    Top = 288
  end
  object Search: TQrySearchDlgADO
    Title = 'Descuentos'
    ResultField = 'des_codigo'
    Query.Strings = (
      'select fpa_nombre, fpa_codigo'
      'from formaspago')
    AliasFields.Strings = (
      'Nombre'
      'Tipo Ingreso'
      'C'#243'digo')
    AliasName = DM.ADOSigma
    Left = 456
    Top = 256
  end
  object ActionList2: TActionList
    Images = DM.ImgMant
    Left = 488
    Top = 256
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
        ' Nombres'
      'from'
      'empleados'
      'where'
      'emp_codigo = :emp_codigo'
      'order by'
      '3')
    Left = 456
    Top = 192
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
    Left = 488
    Top = 192
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
    Left = 456
    Top = 224
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
    Left = 488
    Top = 224
  end
  object QListado: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    OnCalcFields = QListadoCalcFields
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
      'e.emp_nombres, e.emp_apellido_paterno, e.emp_apellido_materno,'
      
        't.tde_nombre, d.des_fecha, d.des_valor, d.des_fijo_variable, d.d' +
        'es_codigo,'
      'e.emp_codigo'
      'from'
      'descuentos d, empleados e, tipo_descuentos t'
      'where'
      'd.emp_codigo = e.emp_codigo'
      'and d.emp_numero = e.emp_numero'
      'and d.emp_codigo = t.emp_codigo'
      'and d.tde_codigo = t.tde_codigo'
      'and d.emp_codigo = :emp_codigo'
      ''
      '')
    Left = 456
    Top = 320
    object QListadotde_nombre: TStringField
      FieldName = 'tde_nombre'
      Size = 60
    end
    object QListadodes_fecha: TDateTimeField
      FieldName = 'des_fecha'
    end
    object QListadodes_valor: TBCDField
      FieldName = 'des_valor'
      currency = True
      Precision = 15
      Size = 2
    end
    object QListadodes_fijo_variable: TStringField
      FieldName = 'des_fijo_variable'
      Size = 5
    end
    object QListadodes_codigo: TIntegerField
      FieldName = 'des_codigo'
    end
    object QListadoemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QListadoemp_nombres: TStringField
      FieldName = 'emp_nombres'
      Size = 60
    end
    object QListadoemp_apellido_paterno: TStringField
      FieldName = 'emp_apellido_paterno'
      Size = 60
    end
    object QListadoemp_apellido_materno: TStringField
      FieldName = 'emp_apellido_materno'
      Size = 60
    end
    object QListadoNombres: TStringField
      FieldKind = fkCalculated
      FieldName = 'Nombres'
      Size = 100
      Calculated = True
    end
  end
  object dsListado: TDataSource
    DataSet = QListado
    Left = 488
    Top = 320
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
      'tde_codigo, tde_nombre'
      'from'
      'tipo_descuentos'
      'where'
      'emp_codigo = :emp_codigo'
      'order by'
      'tde_nombre')
    Left = 456
    Top = 160
    object QTipotde_codigo: TIntegerField
      FieldName = 'tde_codigo'
    end
    object QTipotde_nombre: TStringField
      FieldName = 'tde_nombre'
      Size = 60
    end
  end
  object dsTipo: TDataSource
    DataSet = QTipo
    Left = 488
    Top = 160
  end
  object QRecibos: TADOQuery
    Connection = DM.ADOSigma
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
        Name = 'tip'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'fec'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'r.rec_numero, r.rec_fecha, r.cli_codigo, r.rec_nombre,'
      'r.rec_monto, r.rec_concepto, c.emp_numero'
      'from'
      'recibos r, clientes c'
      'where'
      'r.emp_codigo = c.emp_codigo'
      'and r.cli_codigo = c.cli_codigo'
      'and r.rec_status <> '#39'ANU'#39
      'and r.emp_codigo = :emp'
      'and c.tcl_codigo = :tip'
      'and c.emp_numero is not null'
      'and r.rec_fecha = :fec'
      'order by'
      'r.rec_nombre')
    Left = 308
    Top = 208
    object QRecibosrec_numero: TIntegerField
      FieldName = 'rec_numero'
    end
    object QRecibosrec_fecha: TDateTimeField
      FieldName = 'rec_fecha'
    end
    object QReciboscli_codigo: TIntegerField
      FieldName = 'cli_codigo'
    end
    object QRecibosrec_nombre: TStringField
      FieldName = 'rec_nombre'
      Size = 60
    end
    object QRecibosrec_monto: TBCDField
      FieldName = 'rec_monto'
      currency = True
      Precision = 15
      Size = 2
    end
    object QRecibosrec_concepto: TStringField
      FieldName = 'rec_concepto'
      Size = 60
    end
    object QRecibosemp_numero: TIntegerField
      FieldName = 'emp_numero'
    end
  end
  object dsRecibos: TDataSource
    DataSet = QRecibos
    Left = 340
    Top = 208
  end
  object Query1: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <>
    Left = 308
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
    Left = 456
    Top = 128
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
    Left = 488
    Top = 128
  end
end
