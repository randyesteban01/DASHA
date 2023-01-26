object frmEmpleadosExperiencia: TfrmEmpleadosExperiencia
  Left = 243
  Top = 341
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Experiencia laboral'
  ClientHeight = 322
  ClientWidth = 653
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 653
    Height = 38
    AutoSize = True
    ButtonHeight = 36
    ButtonWidth = 50
    Caption = 'ToolBar1'
    Flat = True
    Images = DM.ImgMant
    ShowCaptions = True
    TabOrder = 0
    object ToolButton1: TToolButton
      Left = 0
      Top = 0
      Action = btInsert
    end
    object ToolButton2: TToolButton
      Left = 50
      Top = 0
      Action = btEdit
    end
    object ToolButton3: TToolButton
      Left = 100
      Top = 0
      Action = btDelete
    end
    object ToolButton4: TToolButton
      Left = 150
      Top = 0
      Width = 8
      Caption = 'ToolButton4'
      ImageIndex = 3
      Style = tbsSeparator
    end
    object ToolButton5: TToolButton
      Left = 158
      Top = 0
      Action = btPost
    end
    object ToolButton6: TToolButton
      Left = 208
      Top = 0
      Action = btCancel
    end
    object ToolButton7: TToolButton
      Left = 258
      Top = 0
      Width = 8
      Caption = 'ToolButton7'
      ImageIndex = 5
      Style = tbsSeparator
    end
    object ToolButton11: TToolButton
      Left = 266
      Top = 0
      Action = btClose
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 38
    Width = 653
    Height = 284
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
      Caption = 'Listado'
      object DBGrid3: TDBGrid
        Left = 0
        Top = 0
        Width = 645
        Height = 256
        Align = alClient
        Ctl3D = True
        DataSource = dsListado
        Options = [dgEditing, dgTitles, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = DBGrid3DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'exp_empleador'
            Title.Caption = 'Empleador'
            Width = 184
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'exp_telefono'
            Title.Alignment = taCenter
            Title.Caption = 'Tel'#233'fono'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'exp_funcion'
            Title.Caption = 'Funci'#243'n'
            Width = 198
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'exp_desde'
            Title.Alignment = taCenter
            Title.Caption = 'Desde'
            Width = 78
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'exp_hasta'
            Title.Alignment = taCenter
            Title.Caption = 'Hasta'
            Width = 72
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Registro'
      ImageIndex = 1
      object Label1: TLabel
        Left = 8
        Top = 16
        Width = 50
        Height = 13
        Caption = 'Empleador'
      end
      object Label2: TLabel
        Left = 8
        Top = 40
        Width = 42
        Height = 13
        Caption = 'Tel'#233'fono'
      end
      object Label3: TLabel
        Left = 8
        Top = 64
        Width = 38
        Height = 13
        Caption = 'Posici'#243'n'
      end
      object Label4: TLabel
        Left = 8
        Top = 88
        Width = 37
        Height = 13
        Caption = 'Funci'#243'n'
      end
      object Label5: TLabel
        Left = 8
        Top = 136
        Width = 28
        Height = 13
        Caption = 'Hasta'
      end
      object Label6: TLabel
        Left = 8
        Top = 112
        Width = 30
        Height = 13
        Caption = 'Desde'
      end
      object Label7: TLabel
        Left = 8
        Top = 160
        Width = 62
        Height = 13
        Caption = 'Motivo salida'
      end
      object DBEdit1: TDBEdit
        Left = 96
        Top = 64
        Width = 241
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'exp_posicion'
        DataSource = dsExperiencia
        TabOrder = 2
      end
      object DBEdit2: TDBEdit
        Left = 96
        Top = 88
        Width = 241
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'exp_funcion'
        DataSource = dsExperiencia
        TabOrder = 3
      end
      object DBEdit3: TDBEdit
        Left = 96
        Top = 112
        Width = 73
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'exp_desde'
        DataSource = dsExperiencia
        TabOrder = 4
      end
      object DBEdit4: TDBEdit
        Left = 96
        Top = 136
        Width = 73
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'exp_hasta'
        DataSource = dsExperiencia
        TabOrder = 5
      end
      object DBEdit5: TDBEdit
        Left = 96
        Top = 160
        Width = 241
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'exp_motivo_salida'
        DataSource = dsExperiencia
        TabOrder = 6
      end
      object DBEdit6: TDBEdit
        Left = 96
        Top = 16
        Width = 241
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'exp_empleador'
        DataSource = dsExperiencia
        TabOrder = 0
      end
      object DBEdit7: TDBEdit
        Left = 96
        Top = 40
        Width = 241
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'exp_telefono'
        DataSource = dsExperiencia
        TabOrder = 1
      end
    end
  end
  object ActionList2: TActionList
    Images = DM.ImgMant
    Left = 408
    Top = 56
    object btPrior: TAction
      Caption = 'Anterior'
      ImageIndex = 8
    end
    object btNext: TAction
      Caption = 'Pr'#243'ximo'
      ImageIndex = 9
    end
    object btInsert: TAction
      Caption = 'Insertar'
      ImageIndex = 6
      OnExecute = btInsertExecute
    end
    object btEdit: TAction
      Caption = 'Modificar'
      ImageIndex = 7
      OnExecute = btEditExecute
    end
    object btDelete: TAction
      Caption = 'Eliminar'
      Enabled = False
      ImageIndex = 1
      OnExecute = btDeleteExecute
    end
    object btPost: TAction
      Caption = 'Grabar'
      ImageIndex = 2
      OnExecute = btPostExecute
    end
    object btCancel: TAction
      Caption = 'Cancelar'
      ImageIndex = 3
      OnExecute = btCancelExecute
    end
    object btFind: TAction
      Caption = 'Buscar'
      ImageIndex = 4
    end
    object btPrint: TAction
      Caption = 'Imprimir'
      ImageIndex = 5
    end
    object btClose: TAction
      Caption = 'Salir'
      ImageIndex = 0
      OnExecute = btCloseExecute
    end
  end
  object QListado: TADOQuery
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
        Name = 'num'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'exp_empleador, exp_telefono, exp_funcion, exp_desde, exp_hasta,'
      'exp_secuencia'
      'from'
      'empleado_experiencia'
      'where'
      'emp_codigo = :emp'
      'and emp_numero = :num'
      'order by'
      'exp_secuencia')
    Left = 408
    Top = 152
    object QListadoexp_empleador: TStringField
      FieldName = 'exp_empleador'
      Size = 60
    end
    object QListadoexp_telefono: TStringField
      FieldName = 'exp_telefono'
      Size = 13
    end
    object QListadoexp_funcion: TStringField
      FieldName = 'exp_funcion'
      Size = 60
    end
    object QListadoexp_desde: TDateTimeField
      FieldName = 'exp_desde'
    end
    object QListadoexp_hasta: TDateTimeField
      FieldName = 'exp_hasta'
    end
    object QListadoexp_secuencia: TIntegerField
      FieldName = 'exp_secuencia'
    end
  end
  object dsListado: TDataSource
    DataSet = QListado
    Left = 440
    Top = 152
  end
  object QExperiencia: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    BeforePost = QExperienciaBeforePost
    AfterPost = QExperienciaAfterPost
    AfterDelete = QExperienciaAfterDelete
    OnNewRecord = QExperienciaNewRecord
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
        Name = 'num'
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
      'select'
      
        'emp_codigo, emp_numero, exp_secuencia, exp_empleador, exp_telefo' +
        'no, exp_funcion,'
      'exp_desde, exp_hasta, exp_motivo_salida, exp_posicion'
      'from'
      'empleado_experiencia'
      'where'
      'emp_codigo = :emp'
      'and emp_numero = :num'
      'and exp_secuencia = :sec')
    Left = 408
    Top = 184
    object QExperienciaemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QExperienciaemp_numero: TIntegerField
      FieldName = 'emp_numero'
    end
    object QExperienciaexp_secuencia: TIntegerField
      FieldName = 'exp_secuencia'
    end
    object QExperienciaexp_empleador: TStringField
      FieldName = 'exp_empleador'
      Size = 60
    end
    object QExperienciaexp_telefono: TStringField
      FieldName = 'exp_telefono'
      EditMask = '(ccc)ccc-cccc'
      Size = 13
    end
    object QExperienciaexp_funcion: TStringField
      FieldName = 'exp_funcion'
      Size = 60
    end
    object QExperienciaexp_desde: TDateTimeField
      FieldName = 'exp_desde'
      EditMask = 'cc-cc-cccc'
    end
    object QExperienciaexp_hasta: TDateTimeField
      FieldName = 'exp_hasta'
      EditMask = 'cc-cc-cccc'
    end
    object QExperienciaexp_motivo_salida: TStringField
      FieldName = 'exp_motivo_salida'
      Size = 60
    end
    object QExperienciaexp_posicion: TStringField
      FieldName = 'exp_posicion'
      Size = 60
    end
  end
  object dsExperiencia: TDataSource
    DataSet = QExperiencia
    OnStateChange = dsExperienciaStateChange
    Left = 440
    Top = 184
  end
end
