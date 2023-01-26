object frmEmpleadosPermisos: TfrmEmpleadosPermisos
  Left = 650
  Top = 387
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Permisos'
  ClientHeight = 322
  ClientWidth = 561
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
    Width = 561
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
    Width = 561
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
        Width = 553
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
            Alignment = taCenter
            Expanded = False
            FieldName = 'per_fecha'
            Title.Alignment = taCenter
            Title.Caption = 'Fecha'
            Width = 76
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'mot_nombre'
            Title.Caption = 'Motivo'
            Width = 229
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'per_disfrute_sueldo'
            Title.Alignment = taCenter
            Title.Caption = 'Disfrute sueldo'
            Width = 90
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
        Width = 29
        Height = 13
        Caption = 'Fecha'
      end
      object Label4: TLabel
        Left = 8
        Top = 64
        Width = 53
        Height = 13
        Caption = 'Hora salida'
      end
      object Label6: TLabel
        Left = 8
        Top = 88
        Width = 71
        Height = 13
        Caption = 'Observaciones'
      end
      object Label2: TLabel
        Left = 192
        Top = 64
        Width = 60
        Height = 13
        Caption = 'Hora llegada'
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 96
        Top = 16
        Width = 257
        Height = 21
        DataField = 'mot_codigo'
        DataSource = dsPermisos
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
        DataField = 'per_fecha'
        DataSource = dsPermisos
        TabOrder = 1
      end
      object DBMemo1: TDBMemo
        Left = 96
        Top = 88
        Width = 257
        Height = 65
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'per_observacion'
        DataSource = dsPermisos
        TabOrder = 4
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 96
        Top = 160
        Width = 113
        Height = 49
        Caption = 'Disfrute de sueldo'
        DataField = 'per_disfrute_sueldo'
        DataSource = dsPermisos
        Items.Strings = (
          'Si'
          'No')
        TabOrder = 5
        Values.Strings = (
          'Si'
          'No')
      end
      object hora1: TDateTimePicker
        Left = 96
        Top = 64
        Width = 89
        Height = 21
        Date = 0.731721273150469600
        Time = 0.731721273150469600
        Kind = dtkTime
        TabOrder = 2
      end
      object hora2: TDateTimePicker
        Left = 264
        Top = 64
        Width = 89
        Height = 21
        Date = 0.731721273150469600
        Time = 0.731721273150469600
        Kind = dtkTime
        TabOrder = 3
      end
    end
  end
  object ActionList2: TActionList
    Images = DM.ImgMant
    Left = 408
    Top = 88
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
      'p.per_secuencia, p.per_fecha,'
      'p.per_hora_salida,'
      'p.per_hora_llegada,'
      'p.per_observacion,'
      'p.per_disfrute_sueldo, m.mot_nombre'
      'from'
      'empleado_permisos p, motivos m'
      'where'
      'p.mot_codigo = m.mot_codigo'
      'and p.emp_codigo = :emp'
      'and p.emp_numero = :num'
      'order by'
      'p.per_secuencia')
    Left = 408
    Top = 152
    object QListadoper_secuencia: TIntegerField
      FieldName = 'per_secuencia'
    end
    object QListadoper_fecha: TDateTimeField
      FieldName = 'per_fecha'
      EditMask = 'cc-cc-cccc'
    end
    object QListadoper_observacion: TMemoField
      FieldName = 'per_observacion'
      BlobType = ftMemo
    end
    object QListadoper_disfrute_sueldo: TStringField
      FieldName = 'per_disfrute_sueldo'
      Size = 2
    end
    object QListadomot_nombre: TStringField
      FieldName = 'mot_nombre'
      Size = 60
    end
    object QListadoper_hora_salida: TDateTimeField
      FieldName = 'per_hora_salida'
    end
    object QListadoper_hora_llegada: TDateTimeField
      FieldName = 'per_hora_llegada'
    end
  end
  object dsListado: TDataSource
    DataSet = QListado
    Left = 440
    Top = 152
  end
  object QPermisos: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    BeforePost = QPermisosBeforePost
    AfterPost = QPermisosAfterPost
    AfterDelete = QPermisosAfterDelete
    OnNewRecord = QPermisosNewRecord
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
      'emp_codigo, emp_numero, per_secuencia, mot_codigo, per_fecha,'
      
        'per_hora_salida, per_hora_llegada, per_observacion, per_disfrute' +
        '_sueldo'
      'from'
      'empleado_permisos'
      'where'
      'emp_codigo = :emp'
      'and emp_numero = :num'
      'and per_secuencia = :sec')
    Left = 408
    Top = 184
    object QPermisosemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QPermisosemp_numero: TIntegerField
      FieldName = 'emp_numero'
    end
    object QPermisosper_secuencia: TIntegerField
      FieldName = 'per_secuencia'
    end
    object QPermisosmot_codigo: TIntegerField
      FieldName = 'mot_codigo'
    end
    object QPermisosper_fecha: TDateTimeField
      FieldName = 'per_fecha'
      EditMask = 'cc-cc-cccc'
    end
    object QPermisosper_hora_salida: TDateTimeField
      FieldName = 'per_hora_salida'
      DisplayFormat = '!cc:cc:cc>LL;1;_'
      EditMask = '!cc:cc:cc>LL;1;_'
    end
    object QPermisosper_hora_llegada: TDateTimeField
      FieldName = 'per_hora_llegada'
      DisplayFormat = '!cc:cc:cc>LL;1;_'
      EditMask = '!cc:cc:cc>LL;1;_'
    end
    object QPermisosper_observacion: TMemoField
      FieldName = 'per_observacion'
      BlobType = ftMemo
    end
    object QPermisosper_disfrute_sueldo: TStringField
      FieldName = 'per_disfrute_sueldo'
      Size = 2
    end
  end
  object dsPermisos: TDataSource
    DataSet = QPermisos
    OnStateChange = dsPermisosStateChange
    Left = 440
    Top = 184
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
    Left = 408
    Top = 120
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
    Left = 440
    Top = 120
  end
end
