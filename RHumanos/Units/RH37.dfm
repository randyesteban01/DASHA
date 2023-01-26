object frmEmpleadosAusencias: TfrmEmpleadosAusencias
  Left = 341
  Top = 422
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Ausencias'
  ClientHeight = 322
  ClientWidth = 473
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
    Width = 473
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
    Width = 473
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
        Width = 465
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
            FieldName = 'mot_nombre'
            Title.Caption = 'Motivo'
            Width = 216
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'aus_desde'
            Title.Alignment = taCenter
            Title.Caption = 'Desde'
            Width = 71
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'aus_hasta'
            Title.Alignment = taCenter
            Title.Caption = 'Hasta'
            Width = 71
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'aus_disfrute_sueldo'
            Title.Alignment = taCenter
            Title.Caption = 'Disfrute sueldo'
            Width = 81
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
        Width = 32
        Height = 13
        Caption = 'Motivo'
      end
      object Label3: TLabel
        Left = 8
        Top = 40
        Width = 30
        Height = 13
        Caption = 'Desde'
      end
      object Label4: TLabel
        Left = 8
        Top = 64
        Width = 28
        Height = 13
        Caption = 'Hasta'
      end
      object Label6: TLabel
        Left = 8
        Top = 88
        Width = 71
        Height = 13
        Caption = 'Observaciones'
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 96
        Top = 16
        Width = 257
        Height = 21
        DataField = 'mot_codigo'
        DataSource = dsAusencias
        KeyField = 'mot_codigo'
        ListField = 'mot_nombre'
        ListSource = dsMotivos
        TabOrder = 0
      end
      object DBEdit1: TDBEdit
        Left = 96
        Top = 40
        Width = 89
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'aus_desde'
        DataSource = dsAusencias
        TabOrder = 1
      end
      object DBMemo1: TDBMemo
        Left = 96
        Top = 88
        Width = 257
        Height = 65
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'aus_observacion'
        DataSource = dsAusencias
        TabOrder = 3
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 96
        Top = 160
        Width = 113
        Height = 49
        Caption = 'Disfrute de sueldo'
        DataField = 'aus_disfrute_sueldo'
        DataSource = dsAusencias
        Items.Strings = (
          'Si'
          'No')
        TabOrder = 4
        Values.Strings = (
          'Si'
          'No')
      end
      object DBEdit2: TDBEdit
        Left = 96
        Top = 64
        Width = 89
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'aus_hasta'
        DataSource = dsAusencias
        TabOrder = 2
      end
    end
  end
  object ActionList2: TActionList
    Images = DM.ImgMant
    Left = 344
    Top = 224
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
      
        'e.emp_codigo, e.emp_numero, e.aus_secuencia, e.aus_desde, e.aus_' +
        'hasta,'
      
        'e.aus_observacion, e.aus_disfrute_sueldo, e.mot_codigo, m.mot_no' +
        'mbre'
      'from'
      'empleado_ausencias e, motivos m'
      'where'
      'e.mot_codigo = m.mot_codigo'
      'and e.emp_codigo = :emp'
      'and e.emp_numero = :num'
      'order by'
      'e.aus_secuencia')
    Left = 344
    Top = 160
    object QListadoemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QListadoemp_numero: TIntegerField
      FieldName = 'emp_numero'
    end
    object QListadoaus_secuencia: TIntegerField
      FieldName = 'aus_secuencia'
    end
    object QListadoaus_desde: TDateTimeField
      FieldName = 'aus_desde'
    end
    object QListadoaus_hasta: TDateTimeField
      FieldName = 'aus_hasta'
    end
    object QListadoaus_observacion: TMemoField
      FieldName = 'aus_observacion'
      BlobType = ftMemo
    end
    object QListadoaus_disfrute_sueldo: TStringField
      FieldName = 'aus_disfrute_sueldo'
      Size = 2
    end
    object QListadomot_codigo: TIntegerField
      FieldName = 'mot_codigo'
    end
    object QListadomot_nombre: TStringField
      FieldName = 'mot_nombre'
      Size = 60
    end
  end
  object dsListado: TDataSource
    DataSet = QListado
    Left = 376
    Top = 160
  end
  object QAusencias: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    BeforePost = QAusenciasBeforePost
    AfterPost = QAusenciasAfterPost
    AfterDelete = QAusenciasAfterDelete
    OnNewRecord = QAusenciasNewRecord
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
      'emp_codigo, emp_numero, aus_secuencia, aus_desde, aus_hasta,'
      'aus_observacion, aus_disfrute_sueldo, mot_codigo'
      'from'
      'empleado_ausencias'
      'where'
      'emp_codigo = :emp'
      'and emp_numero = :num'
      'and aus_secuencia = :sec')
    Left = 344
    Top = 192
    object QAusenciasemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QAusenciasemp_numero: TIntegerField
      FieldName = 'emp_numero'
    end
    object QAusenciasaus_secuencia: TIntegerField
      FieldName = 'aus_secuencia'
    end
    object QAusenciasaus_desde: TDateTimeField
      FieldName = 'aus_desde'
      EditMask = 'cc-cc-cccc'
    end
    object QAusenciasaus_hasta: TDateTimeField
      FieldName = 'aus_hasta'
      EditMask = 'cc-cc-cccc'
    end
    object QAusenciasaus_observacion: TMemoField
      FieldName = 'aus_observacion'
      BlobType = ftMemo
    end
    object QAusenciasaus_disfrute_sueldo: TStringField
      FieldName = 'aus_disfrute_sueldo'
      Size = 2
    end
    object QAusenciasmot_codigo: TIntegerField
      FieldName = 'mot_codigo'
    end
  end
  object dsAusencias: TDataSource
    DataSet = QAusencias
    OnStateChange = dsAusenciasStateChange
    Left = 376
    Top = 192
  end
  object QMotivos: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <>
    SQL.Strings = (
      'select'
      'mot_codigo, mot_nombre'
      'from'
      'motivos'
      'order by'
      'mot_nombre')
    Left = 344
    Top = 128
    object QMotivosmot_codigo: TIntegerField
      FieldName = 'mot_codigo'
    end
    object QMotivosmot_nombre: TStringField
      FieldName = 'mot_nombre'
      Size = 60
    end
  end
  object dsMotivos: TDataSource
    DataSet = QMotivos
    Left = 376
    Top = 128
  end
end
