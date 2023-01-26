object frmEmpleadosLicencias: TfrmEmpleadosLicencias
  Left = 655
  Top = 341
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Licencias de Empleados'
  ClientHeight = 322
  ClientWidth = 471
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
    Width = 471
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
    Width = 471
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
        Width = 463
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
            FieldName = 'lic_desde'
            Title.Alignment = taCenter
            Title.Caption = 'Desde'
            Width = 71
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'lic_hasta'
            Title.Alignment = taCenter
            Title.Caption = 'Hasta'
            Width = 71
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'lic_disfrute_sueldo'
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
        DataSource = dsLicencias
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
        DataField = 'lic_desde'
        DataSource = dsLicencias
        TabOrder = 1
      end
      object DBMemo1: TDBMemo
        Left = 96
        Top = 88
        Width = 257
        Height = 65
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'lic_observacion'
        DataSource = dsLicencias
        TabOrder = 3
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 96
        Top = 160
        Width = 113
        Height = 49
        Caption = 'Disfrute de sueldo'
        DataField = 'lic_disfrute_sueldo'
        DataSource = dsLicencias
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
        DataField = 'lic_hasta'
        DataSource = dsLicencias
        TabOrder = 2
      end
    end
  end
  object ActionList2: TActionList
    Images = DM.ImgMant
    Left = 328
    Top = 128
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
      'e.lic_secuencia, e.lic_desde, e.lic_hasta,'
      'e.lic_observacion, e.lic_disfrute_sueldo, m.mot_nombre'
      'from'
      'empleado_licencias e, motivos m'
      'where'
      'e.mot_codigo = m.mot_codigo'
      'and e.emp_codigo = :emp'
      'and e.emp_numero = :num'
      'order by'
      'e.lic_secuencia')
    Left = 328
    Top = 160
    object QListadolic_secuencia: TIntegerField
      FieldName = 'lic_secuencia'
    end
    object QListadolic_desde: TDateTimeField
      FieldName = 'lic_desde'
    end
    object QListadolic_hasta: TDateTimeField
      FieldName = 'lic_hasta'
    end
    object QListadolic_observacion: TMemoField
      FieldName = 'lic_observacion'
      BlobType = ftMemo
    end
    object QListadolic_disfrute_sueldo: TStringField
      FieldName = 'lic_disfrute_sueldo'
      Size = 2
    end
    object QListadomot_nombre: TStringField
      FieldName = 'mot_nombre'
      Size = 60
    end
  end
  object dsListado: TDataSource
    DataSet = QListado
    Left = 360
    Top = 160
  end
  object QLicencias: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    BeforePost = QLicenciasBeforePost
    AfterPost = QLicenciasAfterPost
    AfterDelete = QLicenciasAfterDelete
    OnNewRecord = QLicenciasNewRecord
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
      'emp_codigo, emp_numero, lic_secuencia, lic_desde, lic_hasta,'
      'lic_observacion, lic_disfrute_sueldo, mot_codigo'
      'from'
      'empleado_licencias'
      'where'
      'emp_codigo = :emp'
      'and emp_numero = :num'
      'and lic_secuencia = :sec')
    Left = 328
    Top = 192
    object QLicenciasemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QLicenciasemp_numero: TIntegerField
      FieldName = 'emp_numero'
    end
    object QLicenciaslic_secuencia: TIntegerField
      FieldName = 'lic_secuencia'
    end
    object QLicenciaslic_desde: TDateTimeField
      FieldName = 'lic_desde'
      EditMask = 'cc-cc-cccc'
    end
    object QLicenciaslic_hasta: TDateTimeField
      FieldName = 'lic_hasta'
      EditMask = 'cc-cc-cccc'
    end
    object QLicenciaslic_observacion: TMemoField
      FieldName = 'lic_observacion'
      BlobType = ftMemo
    end
    object QLicenciaslic_disfrute_sueldo: TStringField
      FieldName = 'lic_disfrute_sueldo'
      Size = 2
    end
    object QLicenciasmot_codigo: TIntegerField
      FieldName = 'mot_codigo'
    end
  end
  object dsLicencias: TDataSource
    DataSet = QLicencias
    OnStateChange = dsLicenciasStateChange
    Left = 360
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
    Left = 328
    Top = 224
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
    Left = 360
    Top = 224
  end
end
