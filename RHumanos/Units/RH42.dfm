object frmEmpleadosEvaluacion: TfrmEmpleadosEvaluacion
  Left = 327
  Top = 211
  BorderIcons = [biSystemMenu, biMinimize, biHelp]
  BorderStyle = bsSingle
  Caption = 'Evaluaci'#243'n a Empleados'
  ClientHeight = 287
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
  object Panel2: TPanel
    Left = 0
    Top = 48
    Width = 545
    Height = 233
    Ctl3D = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    object Label2: TLabel
      Left = 16
      Top = 16
      Width = 29
      Height = 13
      Caption = 'Fecha'
    end
    object Label1: TLabel
      Left = 16
      Top = 40
      Width = 93
      Height = 13
      Caption = 'Empleado evaluado'
    end
    object Label3: TLabel
      Left = 16
      Top = 64
      Width = 74
      Height = 13
      Caption = 'Tipo evaluaci'#243'n'
    end
    object Label4: TLabel
      Left = 16
      Top = 88
      Width = 53
      Height = 13
      Caption = 'Puntuaci'#243'n'
    end
    object Label5: TLabel
      Left = 16
      Top = 112
      Width = 63
      Height = 13
      Caption = 'Evaluado por'
    end
    object Label6: TLabel
      Left = 16
      Top = 136
      Width = 60
      Height = 13
      Caption = 'Comentarios'
    end
    object DBEdit2: TDBEdit
      Left = 120
      Top = 88
      Width = 73
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'eva_puntuacion'
      DataSource = dsEvaluacion
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 120
      Top = 40
      Width = 321
      Height = 21
      DataField = 'eva_evaluado'
      DataSource = dsEvaluacion
      KeyField = 'emp_numero'
      ListField = 'Nombres'
      ListSource = dsEmpleados
      TabOrder = 1
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 120
      Top = 64
      Width = 321
      Height = 21
      DataField = 'eva_codigo'
      DataSource = dsEvaluacion
      KeyField = 'tip_codigo'
      ListField = 'tip_nombre'
      ListSource = dsTipo
      TabOrder = 2
    end
    object DBEdit1: TDBEdit
      Left = 120
      Top = 16
      Width = 73
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'eva_fecha'
      DataSource = dsEvaluacion
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DBLookupComboBox3: TDBLookupComboBox
      Left = 120
      Top = 112
      Width = 321
      Height = 21
      DataField = 'eva_evaluado_por'
      DataSource = dsEvaluacion
      KeyField = 'emp_numero'
      ListField = 'Nombres'
      ListSource = dsEmpleados
      TabOrder = 4
    end
    object DBMemo1: TDBMemo
      Left = 120
      Top = 136
      Width = 321
      Height = 89
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'eva_comentario'
      DataSource = dsEvaluacion
      TabOrder = 5
    end
  end
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
  object QEvaluacion: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    BeforePost = QEvaluacionBeforePost
    AfterPost = QEvaluacionAfterPost
    AfterDelete = QEvaluacionAfterDelete
    OnNewRecord = QEvaluacionNewRecord
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
        Name = 'sec'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select '
      
        'emp_codigo, eva_secuencia, eva_evaluado, eva_evaluado_por, eva_f' +
        'echa,'
      'eva_codigo, eva_puntuacion, eva_comentario'
      'from'
      'empleado_evaluacion'
      'where'
      'emp_codigo = :emp_codigo'
      'and eva_secuencia = :sec'
      'order by'
      'eva_secuencia')
    Left = 464
    Top = 200
    object QEvaluacionemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QEvaluacioneva_secuencia: TIntegerField
      FieldName = 'eva_secuencia'
    end
    object QEvaluacioneva_evaluado: TIntegerField
      FieldName = 'eva_evaluado'
    end
    object QEvaluacioneva_evaluado_por: TIntegerField
      FieldName = 'eva_evaluado_por'
    end
    object QEvaluacioneva_fecha: TDateTimeField
      FieldName = 'eva_fecha'
      EditMask = 'cc-cc-cccc'
    end
    object QEvaluacioneva_codigo: TIntegerField
      FieldName = 'eva_codigo'
    end
    object QEvaluacioneva_puntuacion: TBCDField
      FieldName = 'eva_puntuacion'
      Precision = 15
      Size = 2
    end
    object QEvaluacioneva_comentario: TMemoField
      FieldName = 'eva_comentario'
      BlobType = ftMemo
    end
  end
  object dsEvaluacion: TDataSource
    AutoEdit = False
    DataSet = QEvaluacion
    OnStateChange = dsEvaluacionStateChange
    Left = 496
    Top = 200
  end
  object Search: TQrySearchDlgADO
    Title = 'Evaluaciones'
    ResultField = 'eva_secuencia'
    Query.Strings = (
      'select fpa_nombre, fpa_codigo'
      'from formaspago')
    AliasFields.Strings = (
      'Nombre'
      'C'#243'digo')
    AliasName = DM.ADOSigma
    Left = 464
    Top = 232
  end
  object ActionList2: TActionList
    Images = DM.ImgMant
    Left = 496
    Top = 232
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
    Left = 464
    Top = 168
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
    Left = 496
    Top = 168
  end
  object QTipoEvaluacion: TADOQuery
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
      'tip_codigo, tip_nombre'
      'from'
      'tipo_evaluacion'
      'where'
      'emp_codigo = :emp_codigo'
      'order by'
      'tip_nombre')
    Left = 464
    Top = 136
    object QTipoEvaluaciontip_codigo: TIntegerField
      FieldName = 'tip_codigo'
    end
    object QTipoEvaluaciontip_nombre: TStringField
      FieldName = 'tip_nombre'
      Size = 60
    end
  end
  object dsTipo: TDataSource
    DataSet = QTipoEvaluacion
    Left = 496
    Top = 136
  end
end
