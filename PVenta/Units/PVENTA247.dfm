object frmLocalidades: TfrmLocalidades
  Left = 853
  Top = 222
  Width = 572
  Height = 366
  Caption = 'Localidades'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 42
    Width = 556
    Height = 285
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Datos generales'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      object Label2: TLabel
        Left = 34
        Top = 34
        Width = 43
        Height = 14
        Caption = 'Nombre'
      end
      object Label3: TLabel
        Left = 34
        Top = 60
        Width = 61
        Height = 14
        Caption = 'Descripcion'
      end
      object Label1: TLabel
        Left = 34
        Top = 9
        Width = 37
        Height = 14
        Caption = 'C'#243'digo'
      end
      object LbLocSuc: TLabel
        Left = 34
        Top = 92
        Width = 44
        Height = 14
        Caption = 'Sucursal'
      end
      object DBEdit2: TDBEdit
        Left = 86
        Top = 34
        Width = 369
        Height = 23
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'loc_nombre'
        DataSource = dsLocalidades
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit3: TDBEdit
        Left = 86
        Top = 60
        Width = 369
        Height = 23
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'loc_descripcion'
        DataSource = dsLocalidades
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit1: TDBEdit
        Left = 86
        Top = 9
        Width = 79
        Height = 22
        BevelKind = bkFlat
        BorderStyle = bsNone
        Color = clInfoBk
        DataField = 'loc_codigo'
        DataSource = dsLocalidades
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object DBCheckBox1: TDBCheckBox
        Left = 267
        Top = 9
        Width = 96
        Height = 18
        TabStop = False
        Caption = 'Genera NCF?'
        DataField = 'SUC_GENERANCF'
        DataSource = dsLocalidades
        TabOrder = 3
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBLookupCombox1: TDBLookupComboBox
        Left = 88
        Top = 88
        Width = 369
        Height = 22
        DataField = 'SUC_CODIGO'
        DataSource = dsLocalidades
        KeyField = 'SUC_CODIGO'
        ListField = 'SUC_NOMBRE'
        ListSource = dsSucursales
        TabOrder = 4
      end
    end
  end
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 556
    Height = 42
    AutoSize = True
    Bands = <
      item
        Control = ToolBar1
        ImageIndex = -1
        MinHeight = 38
        Width = 552
      end>
    object ToolBar1: TToolBar
      Left = 9
      Top = 0
      Width = 539
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
  object dsLocalidades: TDataSource
    AutoEdit = False
    DataSet = QLocalidades
    Left = 488
    Top = 88
  end
  object Search: TQrySearchDlgADO
    Title = 'Listado de Sucursales'
    ResultField = 'suc_codigo'
    AliasFields.Strings = (
      'Nombre'
      'C'#243'digo')
    AliasName = DM.ADOSigma
    Left = 512
    Top = 184
  end
  object OpenDLG: TOpenPictureDialog
    Left = 488
    Top = 216
  end
  object QLocalidades: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    BeforePost = QLocalidadesBeforePost
    AfterPost = QLocalidadesAfterPost
    AfterDelete = QLocalidadesAfterDelete
    Parameters = <
      item
        Name = 'emp_Codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select *'
      'from'
      'Localidades'
      'where'
      'emp_codigo = :emp_Codigo')
    Left = 416
    Top = 88
    object QLocalidadesEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
    end
    object QLocalidadesSUC_CODIGO: TIntegerField
      FieldName = 'SUC_CODIGO'
    end
    object QLocalidadesloc_codigo: TIntegerField
      FieldName = 'loc_codigo'
    end
    object QLocalidadesloc_nombre: TStringField
      FieldName = 'loc_nombre'
      Size = 255
    end
    object QLocalidadesloc_descripcion: TStringField
      FieldName = 'loc_descripcion'
      Size = 255
    end
    object QLocalidadesfechaC: TDateTimeField
      FieldName = 'fechaC'
    end
    object QLocalidadesusu_creacion: TIntegerField
      FieldName = 'usu_creacion'
    end
    object QLocalidadesfechaM: TDateTimeField
      FieldName = 'fechaM'
    end
    object QLocalidadesusu_modifica: TIntegerField
      FieldName = 'usu_modifica'
    end
  end
  object ActionList2: TActionList
    Images = DM.ImgMant
    Left = 432
    Top = 248
    object btPrior: TAction
      Caption = 'Anterior'
      ImageIndex = 8
      OnExecute = btPriorExecute
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
      OnExecute = btFindExecute
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
  object qSucursales: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    DataSource = DM.dsEmpresas
    Parameters = <
      item
        Name = 'emp_Codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'Select * from Sucursales'
      'where emp_codigo = :emp_codigo')
    Left = 424
    Top = 136
    object QSucursalEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
    end
    object QSucursalSUC_DIRECCION: TStringField
      FieldName = 'SUC_DIRECCION'
      Size = 60
    end
    object QSucursalSUC_EMAIL: TStringField
      FieldName = 'SUC_EMAIL'
      Size = 30
    end
    object QSucursalSUC_FAX: TStringField
      FieldName = 'SUC_FAX'
      Size = 30
    end
    object QSucursalSUC_LOCALIDAD: TStringField
      FieldName = 'SUC_LOCALIDAD'
      Size = 60
    end
    object QSucursalSUC_NOMBRE: TStringField
      FieldName = 'SUC_NOMBRE'
      Size = 60
    end
    object QSucursalSUC_RNC: TStringField
      FieldName = 'SUC_RNC'
      Size = 30
    end
    object QSucursalSUC_STATUS: TStringField
      FieldName = 'SUC_STATUS'
      Size = 3
    end
    object QSucursalSUC_TELEFONO: TStringField
      FieldName = 'SUC_TELEFONO'
      Size = 30
    end
    object QSucursalSUC_CODIGO: TIntegerField
      FieldName = 'SUC_CODIGO'
    end
  end
  object dsSucursales: TDataSource
    AutoEdit = False
    DataSet = qSucursales
    Left = 496
    Top = 136
  end
end
