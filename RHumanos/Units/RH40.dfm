object frmEmpleadosMensajes: TfrmEmpleadosMensajes
  Left = 697
  Top = 243
  BorderIcons = [biSystemMenu, biMinimize, biHelp]
  BorderStyle = bsSingle
  Caption = 'Mensajes individuales'
  ClientHeight = 255
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
    Height = 204
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
      Width = 46
      Height = 13
      Caption = 'Empleado'
    end
    object Label1: TLabel
      Left = 16
      Top = 40
      Width = 40
      Height = 13
      Caption = 'Mensaje'
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 72
      Top = 16
      Width = 337
      Height = 21
      DataField = 'emp_numero'
      DataSource = dsMensajes
      KeyField = 'emp_numero'
      ListField = 'Nombres'
      ListSource = dsEmpleado
      TabOrder = 0
    end
    object DBMemo1: TDBMemo
      Left = 72
      Top = 40
      Width = 337
      Height = 89
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'mes_mensaje'
      DataSource = dsMensajes
      TabOrder = 1
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
  object QMensajes: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    BeforePost = QMensajesBeforePost
    AfterPost = QMensajesAfterPost
    AfterDelete = QMensajesAfterDelete
    OnNewRecord = QMensajesNewRecord
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
      'select '
      'emp_codigo, emp_numero, mes_secuencia, mes_mensaje'
      'from '
      'empleado_mensajes'
      'where'
      'emp_codigo = :emp_codigo'
      'order by '
      'mes_secuencia')
    Left = 312
    Top = 160
    object QMensajesemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QMensajesemp_numero: TIntegerField
      FieldName = 'emp_numero'
    end
    object QMensajesmes_secuencia: TIntegerField
      FieldName = 'mes_secuencia'
    end
    object QMensajesmes_mensaje: TMemoField
      FieldName = 'mes_mensaje'
      BlobType = ftMemo
    end
  end
  object dsMensajes: TDataSource
    AutoEdit = False
    DataSet = QMensajes
    OnStateChange = dsMensajesStateChange
    Left = 344
    Top = 160
  end
  object Search: TQrySearchDlgADO
    Title = 'Mensajes a Empleados'
    ResultField = 'mes_secuencia'
    Query.Strings = (
      'select fpa_nombre, fpa_codigo'
      'from formaspago')
    AliasFields.Strings = (
      'Nombre'
      'C'#243'digo')
    AliasName = DM.ADOSigma
    Left = 312
    Top = 192
  end
  object ActionList2: TActionList
    Images = DM.ImgMant
    Left = 344
    Top = 192
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
      'emp_numero,'
      
        'emp_nombres+'#39' '#39'+emp_apellido_paterno+'#39' '#39'+emp_apellido_materno as' +
        ' Nombres'
      'from'
      'empleados'
      'where'
      'emp_codigo = :emp_codigo'
      'order by'
      '2 ')
    Left = 312
    Top = 128
    object QEmpleadosemp_numero: TIntegerField
      FieldName = 'emp_numero'
    end
    object QEmpleadosNombres: TStringField
      FieldName = 'Nombres'
      ReadOnly = True
      Size = 182
    end
  end
  object dsEmpleado: TDataSource
    DataSet = QEmpleados
    Left = 344
    Top = 128
  end
end
