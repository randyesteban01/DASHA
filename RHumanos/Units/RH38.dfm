object frmEmpleadosHabilidades: TfrmEmpleadosHabilidades
  Left = 504
  Top = 334
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Habilidades del empleado'
  ClientHeight = 322
  ClientWidth = 568
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
    Width = 568
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
    Width = 568
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
        Width = 560
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
            FieldName = 'cat_nombre'
            Title.Caption = 'Categor'#237'a'
            Width = 191
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'hab_nombre'
            Title.Caption = 'Habilidad'
            Width = 182
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'destreza'
            Title.Alignment = taCenter
            Title.Caption = 'Destreza'
            Width = 92
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'hab_porcentaje'
            Title.Alignment = taCenter
            Title.Caption = 'Porcentaje'
            Width = 66
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Registro'
      ImageIndex = 1
      object Label1: TLabel
        Left = 16
        Top = 16
        Width = 47
        Height = 13
        Caption = 'Categor'#237'a'
      end
      object Label2: TLabel
        Left = 16
        Top = 48
        Width = 43
        Height = 13
        Caption = 'Habilidad'
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 72
        Top = 48
        Width = 289
        Height = 21
        DataField = 'hab_codigo'
        DataSource = dsHabildiades
        KeyField = 'hab_codigo'
        ListField = 'hab_nombre'
        ListSource = dsHabilidad
        TabOrder = 1
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 72
        Top = 16
        Width = 289
        Height = 21
        DataField = 'cat_codigo'
        DataSource = dsHabildiades
        KeyField = 'cat_codigo'
        ListField = 'cat_nombre'
        ListSource = dsCategoria
        TabOrder = 0
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 16
        Top = 80
        Width = 345
        Height = 57
        Caption = 'Destreza'
        Columns = 4
        DataField = 'hab_destreza'
        DataSource = dsHabildiades
        Items.Strings = (
          'Excelente'
          'Muy Bueno'
          'Bueno'
          'Regular')
        TabOrder = 2
        Values.Strings = (
          'E'
          'M'
          'B'
          'R')
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
      'e.cat_codigo, e.hab_codigo, e.hab_secuencia,'
      'case e.hab_destreza'
      '  when '#39'E'#39' then '#39'Excelente'#39
      '  when '#39'M'#39' then '#39'Muy Bueno'#39
      '  when '#39'B'#39' then '#39'Bueno'#39
      '  when '#39'R'#39' then '#39'Regular'#39
      'end as destreza, e.hab_porcentaje, h.hab_nombre,'
      'c.cat_nombre'
      'from'
      'empleado_habilidades e, habilidades h, categoria_empleados c'
      'where'
      'e.hab_codigo = h.hab_codigo'
      'and e.emp_codigo = c.emp_codigo'
      'and e.cat_codigo = c.cat_codigo'
      'and e.emp_codigo = :emp'
      'and e.emp_numero = :num'
      'order by'
      'e.hab_secuencia')
    Left = 408
    Top = 152
    object QListadocat_codigo: TIntegerField
      FieldName = 'cat_codigo'
    end
    object QListadohab_codigo: TIntegerField
      FieldName = 'hab_codigo'
    end
    object QListadohab_secuencia: TIntegerField
      FieldName = 'hab_secuencia'
    end
    object QListadohab_porcentaje: TBCDField
      FieldName = 'hab_porcentaje'
      currency = True
      Precision = 15
      Size = 2
    end
    object QListadohab_nombre: TStringField
      FieldName = 'hab_nombre'
      Size = 60
    end
    object QListadocat_nombre: TStringField
      FieldName = 'cat_nombre'
      Size = 60
    end
    object QListadodestreza: TStringField
      FieldName = 'destreza'
      ReadOnly = True
      Size = 9
    end
  end
  object dsListado: TDataSource
    DataSet = QListado
    Left = 440
    Top = 152
  end
  object QHabilidades: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    BeforePost = QHabilidadesBeforePost
    AfterPost = QHabilidadesAfterPost
    AfterDelete = QHabilidadesAfterDelete
    OnNewRecord = QHabilidadesNewRecord
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
      'emp_codigo, emp_numero, cat_codigo, hab_codigo, hab_secuencia,'
      'hab_destreza, hab_porcentaje'
      'from'
      'empleado_habilidades'
      'where'
      'emp_codigo = :emp'
      'and emp_numero = :num'
      'and hab_secuencia = :sec')
    Left = 408
    Top = 184
    object QHabilidadesemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QHabilidadesemp_numero: TIntegerField
      FieldName = 'emp_numero'
    end
    object QHabilidadescat_codigo: TIntegerField
      FieldName = 'cat_codigo'
    end
    object QHabilidadeshab_codigo: TIntegerField
      FieldName = 'hab_codigo'
    end
    object QHabilidadeshab_secuencia: TIntegerField
      FieldName = 'hab_secuencia'
    end
    object QHabilidadeshab_destreza: TStringField
      FieldName = 'hab_destreza'
      Size = 1
    end
    object QHabilidadeshab_porcentaje: TBCDField
      FieldName = 'hab_porcentaje'
      Precision = 15
      Size = 2
    end
  end
  object dsHabildiades: TDataSource
    DataSet = QHabilidades
    OnStateChange = dsHabildiadesStateChange
    Left = 440
    Top = 184
  end
  object QCategoria: TADOQuery
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
      'cat_codigo, cat_nombre, emp_codigo'
      'from'
      'categoria_empleados'
      'where'
      'emp_codigo = :emp_codigo'
      'order by'
      'cat_nombre')
    Left = 408
    Top = 88
    object QCategoriacat_codigo: TIntegerField
      FieldName = 'cat_codigo'
    end
    object QCategoriacat_nombre: TStringField
      FieldName = 'cat_nombre'
      Size = 60
    end
    object QCategoriaemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
  end
  object dsCategoria: TDataSource
    DataSet = QCategoria
    Left = 440
    Top = 88
  end
  object QHabilidad: TADOQuery
    Connection = DM.ADOSigma
    DataSource = dsCategoria
    Parameters = <
      item
        Name = 'cat_codigo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'hab_codigo, hab_nombre'
      'from'
      'habilidades'
      'where'
      'cat_codigo = :cat_codigo'
      'order by'
      'hab_nombre')
    Left = 408
    Top = 120
    object QHabilidadhab_codigo: TIntegerField
      FieldName = 'hab_codigo'
    end
    object QHabilidadhab_nombre: TStringField
      FieldName = 'hab_nombre'
      Size = 60
    end
  end
  object dsHabilidad: TDataSource
    DataSet = QHabilidad
    Left = 440
    Top = 120
  end
end
