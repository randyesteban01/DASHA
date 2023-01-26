object frmEmpleadosDependientes: TfrmEmpleadosDependientes
  Left = 270
  Top = 382
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Dependientes del Empleado'
  ClientHeight = 322
  ClientWidth = 520
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
    Width = 520
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
    Width = 520
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
        Width = 512
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
            FieldName = 'dep_nombre'
            Title.Caption = 'Nombre del dependiente'
            Width = 198
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'dep_fecha_nacimiento'
            Title.Alignment = taCenter
            Title.Caption = 'Fecha nacimiento'
            Width = 104
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dep_parentesco'
            Title.Caption = 'Parentesco'
            Width = 178
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
        Width = 37
        Height = 13
        Caption = 'Nombre'
      end
      object Label2: TLabel
        Left = 8
        Top = 40
        Width = 83
        Height = 13
        Caption = 'Fecha nacimiento'
      end
      object Label3: TLabel
        Left = 8
        Top = 64
        Width = 54
        Height = 13
        Caption = 'Parentesco'
      end
      object DBEdit1: TDBEdit
        Left = 96
        Top = 16
        Width = 241
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'dep_nombre'
        DataSource = dsDepend
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 96
        Top = 40
        Width = 73
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'dep_fecha_nacimiento'
        DataSource = dsDepend
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 96
        Top = 64
        Width = 241
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'dep_parentesco'
        DataSource = dsDepend
        TabOrder = 2
      end
    end
  end
  object ActionList2: TActionList
    Images = DM.ImgMant
    Left = 408
    Top = 120
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
      'dep_numero, dep_nombre,'
      'dep_fecha_nacimiento, dep_parentesco'
      'from'
      'empleado_dependientes'
      'where'
      'emp_codigo = :emp'
      'and emp_numero = :num'
      'order by'
      'dep_numero')
    Left = 408
    Top = 152
    object QListadodep_numero: TIntegerField
      FieldName = 'dep_numero'
    end
    object QListadodep_nombre: TStringField
      FieldName = 'dep_nombre'
      Size = 60
    end
    object QListadodep_fecha_nacimiento: TDateTimeField
      FieldName = 'dep_fecha_nacimiento'
    end
    object QListadodep_parentesco: TStringField
      FieldName = 'dep_parentesco'
      Size = 60
    end
  end
  object dsListado: TDataSource
    DataSet = QListado
    Left = 440
    Top = 152
  end
  object QDepend: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    BeforePost = QDependBeforePost
    AfterPost = QDependAfterPost
    AfterDelete = QDependAfterDelete
    OnNewRecord = QDependNewRecord
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
      'emp_codigo, emp_numero, dep_numero, dep_nombre,'
      'dep_fecha_nacimiento, dep_parentesco'
      'from'
      'empleado_dependientes'
      'where'
      'emp_codigo = :emp'
      'and emp_numero = :num'
      'and dep_numero = :sec')
    Left = 408
    Top = 184
    object QDependemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QDependemp_numero: TIntegerField
      FieldName = 'emp_numero'
    end
    object QDependdep_numero: TIntegerField
      FieldName = 'dep_numero'
    end
    object QDependdep_nombre: TStringField
      FieldName = 'dep_nombre'
      Size = 60
    end
    object QDependdep_fecha_nacimiento: TDateTimeField
      FieldName = 'dep_fecha_nacimiento'
      EditMask = 'cc-cc-cccc'
    end
    object QDependdep_parentesco: TStringField
      FieldName = 'dep_parentesco'
      Size = 60
    end
  end
  object dsDepend: TDataSource
    DataSet = QDepend
    OnStateChange = dsDependStateChange
    Left = 440
    Top = 184
  end
end
