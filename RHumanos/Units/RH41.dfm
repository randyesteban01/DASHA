object frmVacaciones: TfrmVacaciones
  Left = 685
  Top = 153
  BorderIcons = [biSystemMenu, biMinimize, biHelp]
  BorderStyle = bsSingle
  Caption = 'Control de vacaciones'
  ClientHeight = 473
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
    Height = 417
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
      Width = 46
      Height = 13
      Caption = 'Empleado'
    end
    object Label3: TLabel
      Left = 16
      Top = 64
      Width = 38
      Height = 13
      Caption = 'Posicion'
    end
    object Label4: TLabel
      Left = 16
      Top = 88
      Width = 67
      Height = 13
      Caption = 'Grupo trabajo'
    end
    object Label5: TLabel
      Left = 16
      Top = 112
      Width = 23
      Height = 13
      Caption = 'Nivel'
    end
    object DBEdit2: TDBEdit
      Left = 96
      Top = 16
      Width = 81
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'vac_fecha'
      DataSource = dsVacaciones
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 96
      Top = 40
      Width = 321
      Height = 21
      DataField = 'emp_numero'
      DataSource = dsVacaciones
      KeyField = 'emp_numero'
      ListField = 'Nombres'
      ListSource = dsEmpleados
      TabOrder = 1
    end
    object DBEdit1: TDBEdit
      Left = 96
      Top = 64
      Width = 321
      Height = 21
      TabStop = False
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = clInfoBk
      DataField = 'cla_nombre'
      DataSource = dsEmpleados
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object DBEdit3: TDBEdit
      Left = 96
      Top = 88
      Width = 321
      Height = 21
      TabStop = False
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = clInfoBk
      DataField = 'gru_nombre'
      DataSource = dsEmpleados
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object DBEdit4: TDBEdit
      Left = 96
      Top = 112
      Width = 321
      Height = 21
      TabStop = False
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = clInfoBk
      DataField = 'niv_nombre'
      DataSource = dsEmpleados
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object GroupBox1: TGroupBox
      Left = 16
      Top = 144
      Width = 481
      Height = 129
      Caption = 'Ingreso a la empresa'
      TabOrder = 5
      object Label6: TLabel
        Left = 16
        Top = 24
        Width = 67
        Height = 13
        Caption = 'Fecha ingreso'
      end
      object Label7: TLabel
        Left = 16
        Top = 48
        Width = 104
        Height = 13
        Caption = 'Tiempo en la Empresa'
      end
      object Label8: TLabel
        Left = 171
        Top = 51
        Width = 32
        Height = 13
        Caption = 'A'#241'o(s)'
      end
      object Label9: TLabel
        Left = 243
        Top = 51
        Width = 38
        Height = 13
        Caption = 'Mes(es)'
      end
      object Label11: TLabel
        Left = 16
        Top = 72
        Width = 63
        Height = 13
        Caption = 'A'#241'o Empresa'
      end
      object Label12: TLabel
        Left = 16
        Top = 96
        Width = 90
        Height = 13
        Caption = 'Ultimas vacaciones'
      end
      object Label13: TLabel
        Left = 224
        Top = 80
        Width = 30
        Height = 13
        Caption = 'Desde'
      end
      object Label14: TLabel
        Left = 288
        Top = 80
        Width = 28
        Height = 13
        Caption = 'Hasta'
      end
      object Label15: TLabel
        Left = 352
        Top = 80
        Width = 20
        Height = 13
        Caption = 'D'#237'as'
      end
      object DBEdit5: TDBEdit
        Left = 136
        Top = 24
        Width = 81
        Height = 21
        TabStop = False
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = clInfoBk
        DataField = 'emp_fecha_entrada'
        DataSource = dsEmpleados
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object DBEdit6: TDBEdit
        Left = 136
        Top = 48
        Width = 33
        Height = 21
        TabStop = False
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = clInfoBk
        DataField = 'TiempoANo'
        DataSource = dsEmpleados
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
      object DBEdit7: TDBEdit
        Left = 208
        Top = 48
        Width = 33
        Height = 21
        TabStop = False
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = clInfoBk
        DataField = 'TiempoMes'
        DataSource = dsEmpleados
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
      object DBEdit9: TDBEdit
        Left = 136
        Top = 72
        Width = 33
        Height = 21
        TabStop = False
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = clInfoBk
        DataSource = dsVacaciones
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
      end
      object DBEdit10: TDBEdit
        Left = 136
        Top = 96
        Width = 81
        Height = 21
        TabStop = False
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = clInfoBk
        DataSource = dsVacaciones
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 4
      end
      object DBEdit11: TDBEdit
        Left = 224
        Top = 96
        Width = 57
        Height = 21
        TabStop = False
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = clInfoBk
        DataSource = dsVacaciones
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 5
      end
      object DBEdit12: TDBEdit
        Left = 288
        Top = 96
        Width = 57
        Height = 21
        TabStop = False
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = clInfoBk
        DataSource = dsVacaciones
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 6
      end
      object DBEdit13: TDBEdit
        Left = 352
        Top = 96
        Width = 41
        Height = 21
        TabStop = False
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = clInfoBk
        DataSource = dsVacaciones
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 7
      end
    end
    object GroupBox2: TGroupBox
      Left = 16
      Top = 280
      Width = 481
      Height = 129
      Caption = 'Vacaciones'
      TabOrder = 6
      object Label16: TLabel
        Left = 16
        Top = 24
        Width = 100
        Height = 13
        Caption = 'A'#241'o correspondiente'
      end
      object Label17: TLabel
        Left = 16
        Top = 48
        Width = 89
        Height = 13
        Caption = 'D'#237'as corresponden'
      end
      object Label18: TLabel
        Left = 16
        Top = 72
        Width = 64
        Height = 13
        Caption = 'D'#237'as tomados'
      end
      object Label19: TLabel
        Left = 16
        Top = 96
        Width = 76
        Height = 13
        Caption = 'D'#237'as pendientes'
      end
      object DBEdit14: TDBEdit
        Left = 136
        Top = 24
        Width = 33
        Height = 21
        TabStop = False
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = clInfoBk
        DataSource = dsVacaciones
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object DBEdit15: TDBEdit
        Left = 136
        Top = 48
        Width = 33
        Height = 21
        TabStop = False
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = clInfoBk
        DataSource = dsVacaciones
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
      object DBEdit16: TDBEdit
        Left = 136
        Top = 72
        Width = 33
        Height = 21
        TabStop = False
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = clInfoBk
        DataSource = dsVacaciones
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
      object DBEdit17: TDBEdit
        Left = 136
        Top = 96
        Width = 33
        Height = 21
        TabStop = False
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = clInfoBk
        DataSource = dsVacaciones
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
      end
      object GroupBox3: TGroupBox
        Left = 176
        Top = 16
        Width = 297
        Height = 97
        Caption = 'Fecha vacaciones'
        TabOrder = 4
        object Label20: TLabel
          Left = 24
          Top = 24
          Width = 30
          Height = 13
          Caption = 'Desde'
        end
        object Label21: TLabel
          Left = 112
          Top = 24
          Width = 28
          Height = 13
          Caption = 'Hasta'
        end
        object Label22: TLabel
          Left = 200
          Top = 24
          Width = 20
          Height = 13
          Caption = 'D'#237'as'
        end
        object DBEdit18: TDBEdit
          Left = 24
          Top = 40
          Width = 81
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'vac_desde'
          DataSource = dsVacaciones
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object DBEdit19: TDBEdit
          Left = 112
          Top = 40
          Width = 81
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'vac_hasta'
          DataSource = dsVacaciones
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object DBEdit20: TDBEdit
          Left = 200
          Top = 40
          Width = 33
          Height = 21
          TabStop = False
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = clInfoBk
          DataField = 'dias'
          DataSource = dsVacaciones
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
      end
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
  object QVacaciones: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    BeforePost = QVacacionesBeforePost
    AfterPost = QVacacionesAfterPost
    AfterDelete = QVacacionesAfterDelete
    OnCalcFields = QVacacionesCalcFields
    OnNewRecord = QVacacionesNewRecord
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
        Name = 'vac'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select '
      
        'emp_codigo, vac_secuencia, vac_fecha, vac_autorizado, emp_numero' +
        ','
      'vac_desde, vac_hasta'
      'from'
      'vacaciones'
      'where'
      'emp_codigo = :emp_codigo'
      'and vac_secuencia = :vac'
      'order by'
      'vac_secuencia')
    Left = 424
    Top = 112
    object QVacacionesemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QVacacionesvac_secuencia: TIntegerField
      FieldName = 'vac_secuencia'
    end
    object QVacacionesvac_fecha: TDateTimeField
      FieldName = 'vac_fecha'
      EditMask = 'cc-cc-cccc'
    end
    object QVacacionesvac_autorizado: TStringField
      FieldName = 'vac_autorizado'
      Size = 60
    end
    object QVacacionesemp_numero: TIntegerField
      FieldName = 'emp_numero'
    end
    object QVacacionesvac_desde: TDateTimeField
      FieldName = 'vac_desde'
      EditMask = 'cc-cc-cccc'
    end
    object QVacacionesvac_hasta: TDateTimeField
      FieldName = 'vac_hasta'
      EditMask = 'cc-cc-cccc'
    end
    object QVacacionesdias: TFloatField
      FieldKind = fkCalculated
      FieldName = 'dias'
      Calculated = True
    end
  end
  object dsVacaciones: TDataSource
    AutoEdit = False
    DataSet = QVacaciones
    OnStateChange = dsVacacionesStateChange
    Left = 456
    Top = 112
  end
  object Search: TQrySearchDlgADO
    Title = 'Vacaciones'
    ResultField = 'vac_secuencia'
    Query.Strings = (
      'select fpa_nombre, fpa_codigo'
      'from formaspago')
    AliasFields.Strings = (
      'Nombre'
      'C'#243'digo')
    AliasName = DM.ADOSigma
    Left = 424
    Top = 144
  end
  object ActionList2: TActionList
    Images = DM.ImgMant
    Left = 456
    Top = 144
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
    OnCalcFields = QEmpleadosCalcFields
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
      'e.emp_fecha_entrada, g.gru_nombre, p.cla_nombre, n.niv_nombre,'
      'e.emp_numero'
      'from'
      
        'empleados e, posicion_clasificacion p, grupos_trabajo g, niveles' +
        ' n'
      'where'
      'e.emp_codigo = n.emp_codigo'
      'and e.niv_codigo = n.niv_codigo'
      'and e.emp_codigo = g.emp_codigo'
      'and e.gru_codigo = g.gru_codigo'
      'and e.emp_codigo = p.emp_codigo'
      'and e.pos_codigo = p.pos_codigo'
      'and e.emp_codigo = :emp_codigo'
      'order by 1')
    Left = 424
    Top = 176
    object QEmpleadosNombres: TStringField
      FieldName = 'Nombres'
      ReadOnly = True
      Size = 182
    end
    object QEmpleadosemp_fecha_entrada: TDateTimeField
      FieldName = 'emp_fecha_entrada'
    end
    object QEmpleadosgru_nombre: TStringField
      FieldName = 'gru_nombre'
      Size = 60
    end
    object QEmpleadoscla_nombre: TStringField
      FieldName = 'cla_nombre'
      Size = 60
    end
    object QEmpleadosniv_nombre: TStringField
      FieldName = 'niv_nombre'
      Size = 60
    end
    object QEmpleadosemp_numero: TIntegerField
      FieldName = 'emp_numero'
    end
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
  end
  object dsEmpleados: TDataSource
    DataSet = QEmpleados
    Left = 456
    Top = 176
  end
end
