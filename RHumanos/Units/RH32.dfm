object frmEmpleadosEstudios: TfrmEmpleadosEstudios
  Left = 300
  Top = 371
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Estudios realizados'
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
            FieldName = 'pai_nombre'
            Title.Caption = 'Pa'#237's'
            Width = 157
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ins_nombre'
            Title.Caption = 'Instituci'#243'n'
            Width = 153
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'est_desde'
            Title.Alignment = taCenter
            Title.Caption = 'Desde'
            Width = 69
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'est_hasta'
            Title.Alignment = taCenter
            Title.Caption = 'Hasta'
            Width = 73
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'est_titulo'
            Title.Caption = 'Titulo obtenido'
            Width = 166
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
        Width = 19
        Height = 13
        Caption = 'Pa'#237's'
      end
      object Label2: TLabel
        Left = 8
        Top = 40
        Width = 50
        Height = 13
        Caption = 'Instituci'#243'n'
      end
      object Label3: TLabel
        Left = 8
        Top = 64
        Width = 30
        Height = 13
        Caption = 'Desde'
      end
      object Label4: TLabel
        Left = 8
        Top = 88
        Width = 28
        Height = 13
        Caption = 'Hasta'
      end
      object Label5: TLabel
        Left = 8
        Top = 136
        Width = 71
        Height = 13
        Caption = 'Titulo obtenido'
      end
      object Label6: TLabel
        Left = 8
        Top = 112
        Width = 81
        Height = 13
        Caption = 'Estudio realizado'
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 96
        Top = 16
        Width = 241
        Height = 21
        DataField = 'pai_codigo'
        DataSource = dsEstudios
        KeyField = 'pai_codigo'
        ListField = 'pai_nombre'
        ListSource = dsPaises
        TabOrder = 0
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 96
        Top = 40
        Width = 241
        Height = 21
        DataField = 'ins_codigo'
        DataSource = dsEstudios
        KeyField = 'ins_codigo'
        ListField = 'ins_nombre'
        ListSource = dsInst
        TabOrder = 1
      end
      object DBEdit1: TDBEdit
        Left = 96
        Top = 64
        Width = 73
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'est_desde'
        DataSource = dsEstudios
        TabOrder = 2
      end
      object DBEdit2: TDBEdit
        Left = 96
        Top = 88
        Width = 73
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'est_hasta'
        DataSource = dsEstudios
        TabOrder = 3
      end
      object DBEdit3: TDBEdit
        Left = 96
        Top = 112
        Width = 241
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'est_estudio'
        DataSource = dsEstudios
        TabOrder = 4
      end
      object DBEdit4: TDBEdit
        Left = 96
        Top = 136
        Width = 241
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'est_titulo'
        DataSource = dsEstudios
        TabOrder = 5
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
    CursorType = ctStatic
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
      
        'p.pai_nombre, i.ins_nombre, e.est_desde, e.est_hasta, e.est_titu' +
        'lo,'
      'e.est_secuencia'
      'from'
      'empleado_estudios e, paises p, institucion_academica i'
      'where'
      'e.pai_codigo = p.pai_codigo'
      'and e.ins_codigo = i.ins_codigo'
      'and e.emp_codigo = :emp'
      'and e.emp_numero = :num'
      'order by'
      'e.est_secuencia')
    Left = 408
    Top = 152
    object QListadopai_nombre: TStringField
      FieldName = 'pai_nombre'
      Size = 60
    end
    object QListadoins_nombre: TStringField
      FieldName = 'ins_nombre'
      Size = 60
    end
    object QListadoest_desde: TDateTimeField
      FieldName = 'est_desde'
    end
    object QListadoest_hasta: TDateTimeField
      FieldName = 'est_hasta'
    end
    object QListadoest_titulo: TStringField
      FieldName = 'est_titulo'
      Size = 60
    end
    object QListadoest_secuencia: TIntegerField
      FieldName = 'est_secuencia'
    end
  end
  object dsListado: TDataSource
    DataSet = QListado
    Left = 440
    Top = 152
  end
  object QEstudios: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    BeforePost = QEstudiosBeforePost
    AfterPost = QEstudiosAfterPost
    AfterDelete = QEstudiosAfterDelete
    OnNewRecord = QEstudiosNewRecord
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
      'emp_codigo, emp_numero, est_secuencia, est_desde,'
      'est_hasta, pai_codigo, est_titulo, ins_codigo, est_estudio'
      'from'
      'empleado_estudios'
      'where'
      'emp_codigo = :emp'
      'and emp_numero = :num'
      'and est_secuencia = :sec')
    Left = 408
    Top = 184
    object QEstudiosemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QEstudiosemp_numero: TIntegerField
      FieldName = 'emp_numero'
    end
    object QEstudiosest_secuencia: TIntegerField
      FieldName = 'est_secuencia'
    end
    object QEstudiosest_desde: TDateTimeField
      FieldName = 'est_desde'
      EditMask = 'cc-cc-cccc'
    end
    object QEstudiosest_hasta: TDateTimeField
      FieldName = 'est_hasta'
      EditMask = 'cc-cc-cccc'
    end
    object QEstudiospai_codigo: TIntegerField
      FieldName = 'pai_codigo'
    end
    object QEstudiosest_titulo: TStringField
      FieldName = 'est_titulo'
      Size = 60
    end
    object QEstudiosins_codigo: TIntegerField
      FieldName = 'ins_codigo'
    end
    object QEstudiosest_estudio: TStringField
      FieldName = 'est_estudio'
      Size = 60
    end
  end
  object dsEstudios: TDataSource
    DataSet = QEstudios
    OnStateChange = dsEstudiosStateChange
    Left = 440
    Top = 184
  end
  object QPaises: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <>
    SQL.Strings = (
      'select'
      'pai_codigo, pai_nombre'
      'from'
      'paises'
      'order by'
      'pai_nombre')
    Left = 408
    Top = 88
    object QPaisespai_codigo: TIntegerField
      FieldName = 'pai_codigo'
    end
    object QPaisespai_nombre: TStringField
      FieldName = 'pai_nombre'
      Size = 60
    end
  end
  object dsPaises: TDataSource
    DataSet = QPaises
    Left = 440
    Top = 88
  end
  object dsInst: TDataSource
    DataSet = QInstitucion
    Left = 440
    Top = 120
  end
  object QInstitucion: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <>
    SQL.Strings = (
      'select'
      'ins_codigo, ins_nombre'
      'from'
      'Institucion_Academica'
      'order by'
      'ins_nombre')
    Left = 408
    Top = 120
    object QInstitucionins_codigo: TIntegerField
      FieldName = 'ins_codigo'
    end
    object QInstitucionins_nombre: TStringField
      FieldName = 'ins_nombre'
      Size = 60
    end
  end
end
