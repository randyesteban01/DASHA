object frmHorasTrabajadas: TfrmHorasTrabajadas
  Left = 358
  Top = 232
  BorderIcons = [biSystemMenu, biMinimize, biHelp]
  BorderStyle = bsSingle
  Caption = 'Horas trabajadas'
  ClientHeight = 262
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
    Left = 8
    Top = 48
    Width = 537
    Height = 209
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
        Width = 65
        Height = 13
        Caption = 'Tipo de horas'
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
        Width = 28
        Height = 13
        Caption = 'Horas'
      end
      object Label6: TLabel
        Left = 8
        Top = 136
        Width = 66
        Height = 13
        Caption = 'Salario x hora'
      end
      object Label8: TLabel
        Left = 8
        Top = 160
        Width = 64
        Height = 13
        Caption = 'Valor a pagar'
      end
      object Label7: TLabel
        Left = 208
        Top = 136
        Width = 113
        Height = 13
        Caption = 'Acumuladas pendientes'
      end
      object Label9: TLabel
        Left = 208
        Top = 160
        Width = 45
        Height = 13
        Caption = 'Porciento'
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 88
        Top = 40
        Width = 321
        Height = 21
        DataField = 'emp_numero'
        DataSource = dsHoras
        KeyField = 'emp_numero'
        ListField = 'Nombres'
        ListSource = dsEmpleados
        TabOrder = 1
      end
      object DBEdit1: TDBEdit
        Left = 88
        Top = 16
        Width = 73
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        Color = clInfoBk
        DataField = 'hor_codigo'
        DataSource = dsHoras
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
        DataField = 'hor_fecha'
        DataSource = dsHoras
        TabOrder = 3
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 88
        Top = 64
        Width = 321
        Height = 21
        DataField = 'tho_codigo'
        DataSource = dsHoras
        KeyField = 'tho_codigo'
        ListField = 'tho_nombre'
        ListSource = dsTipo
        TabOrder = 2
      end
      object DBEdit3: TDBEdit
        Left = 88
        Top = 112
        Width = 73
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'hor_horas'
        DataSource = dsHoras
        TabOrder = 4
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 416
        Top = 32
        Width = 113
        Height = 81
        Caption = 'Estatus'
        DataField = 'hor_status'
        DataSource = dsHoras
        Items.Strings = (
          'Pendientes'
          'Pagadas')
        TabOrder = 5
        Values.Strings = (
          'PEN'
          'PAG')
      end
      object DBEdit4: TDBEdit
        Left = 88
        Top = 136
        Width = 73
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
        TabOrder = 6
      end
      object DBEdit5: TDBEdit
        Left = 88
        Top = 160
        Width = 73
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
        TabOrder = 7
      end
      object DBEdit6: TDBEdit
        Left = 336
        Top = 136
        Width = 73
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
        TabOrder = 8
      end
      object DBEdit7: TDBEdit
        Left = 336
        Top = 160
        Width = 73
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
        TabOrder = 9
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Consulta'
      ImageIndex = 1
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 529
        Height = 181
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
            FieldName = 'hor_codigo'
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
            FieldName = 'hor_fecha'
            Title.Alignment = taCenter
            Title.Caption = 'Fecha'
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'tho_nombre'
            Title.Caption = 'Tipo de horas'
            Width = 123
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'hor_horas'
            Title.Alignment = taCenter
            Title.Caption = 'Horas'
            Width = 54
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'hor_status'
            Title.Alignment = taCenter
            Title.Caption = 'Status'
            Visible = True
          end>
      end
    end
  end
  object QHoras: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    BeforePost = QHorasBeforePost
    AfterPost = QHorasAfterPost
    AfterDelete = QHorasAfterDelete
    OnNewRecord = QHorasNewRecord
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
        Name = 'hor'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select '
      'emp_codigo, hor_codigo, emp_numero, hor_fecha, tho_codigo,'
      'hor_horas, hor_status'
      'from'
      'horas_trabajadas'
      'where'
      'emp_codigo = :emp_codigo'
      'and hor_codigo = :hor'
      'order by hor_codigo')
    Left = 344
    Top = 184
    object QHorasemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QHorashor_codigo: TIntegerField
      FieldName = 'hor_codigo'
    end
    object QHorasemp_numero: TIntegerField
      FieldName = 'emp_numero'
    end
    object QHorashor_fecha: TDateTimeField
      FieldName = 'hor_fecha'
      EditMask = 'cc-cc-cccc'
    end
    object QHorastho_codigo: TIntegerField
      FieldName = 'tho_codigo'
    end
    object QHorashor_horas: TBCDField
      FieldName = 'hor_horas'
      Precision = 15
      Size = 2
    end
    object QHorashor_status: TStringField
      FieldName = 'hor_status'
      Size = 3
    end
  end
  object dsHoras: TDataSource
    AutoEdit = False
    DataSet = QHoras
    OnStateChange = dsHorasStateChange
    Left = 376
    Top = 184
  end
  object Search: TQrySearchDlgADO
    Title = 'Horas trabajadas'
    ResultField = 'hor_codigo'
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
    Left = 344
    Top = 120
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
      
        'h.hor_horas, h.hor_fecha, h.hor_status, h.hor_codigo, t.tho_nomb' +
        're'
      'from'
      'horas_trabajadas h, empleados e, tipo_horas_trabajadas t'
      'where'
      'h.emp_codigo = e.emp_codigo'
      'and h.emp_numero = e.emp_numero'
      'and h.emp_codigo = t.emp_codigo'
      'and h.tho_codigo = t.tho_codigo'
      'and h.emp_codigo = :emp_codigo'
      'order by'
      'h.hor_codigo'
      ''
      '')
    Left = 344
    Top = 216
    object QListadoNombres: TStringField
      FieldName = 'Nombres'
      ReadOnly = True
      Size = 182
    end
    object QListadohor_horas: TBCDField
      FieldName = 'hor_horas'
      Precision = 15
      Size = 2
    end
    object QListadohor_fecha: TDateTimeField
      FieldName = 'hor_fecha'
    end
    object QListadohor_status: TStringField
      FieldName = 'hor_status'
      Size = 3
    end
    object QListadohor_codigo: TIntegerField
      FieldName = 'hor_codigo'
    end
    object QListadotho_nombre: TStringField
      FieldName = 'tho_nombre'
      Size = 60
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
      'tho_codigo, tho_nombre'
      'from'
      'tipo_horas_trabajadas'
      'where'
      'emp_codigo = :emp_codigo'
      'order by'
      'tho_nombre')
    Left = 344
    Top = 88
    object QTipotho_codigo: TIntegerField
      FieldName = 'tho_codigo'
    end
    object QTipotho_nombre: TStringField
      FieldName = 'tho_nombre'
      Size = 60
    end
  end
  object dsTipo: TDataSource
    DataSet = QTipo
    Left = 376
    Top = 88
  end
end
