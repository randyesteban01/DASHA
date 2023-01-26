object frmCamiones: TfrmCamiones
  Left = 383
  Top = 310
  ActiveControl = DBEdit2
  BorderIcons = [biSystemMenu, biMinimize, biHelp]
  BorderStyle = bsSingle
  Caption = 'Camiones'
  ClientHeight = 257
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
      Left = 24
      Top = 32
      Width = 29
      Height = 13
      Caption = 'Marca'
    end
    object Label3: TLabel
      Left = 24
      Top = 56
      Width = 34
      Height = 13
      Caption = 'Modelo'
    end
    object Label4: TLabel
      Left = 24
      Top = 80
      Width = 25
      Height = 13
      Caption = 'Placa'
      FocusControl = DBEdit4
    end
    object Label1: TLabel
      Left = 24
      Top = 8
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object Label5: TLabel
      Left = 24
      Top = 104
      Width = 33
      Height = 13
      Caption = 'Chofer'
      FocusControl = DBEdit5
    end
    object Label6: TLabel
      Left = 24
      Top = 128
      Width = 37
      Height = 13
      Caption = 'Metraje'
      FocusControl = DBEdit6
    end
    object Label7: TLabel
      Left = 24
      Top = 152
      Width = 47
      Height = 13
      Caption = 'Compa'#241#237'a'
      FocusControl = DBEdit7
    end
    object DBEdit2: TDBEdit
      Left = 80
      Top = 32
      Width = 193
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'Marca'
      DataSource = dsCamiones
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 80
      Top = 56
      Width = 193
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'Modelo'
      DataSource = dsCamiones
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 80
      Top = 80
      Width = 193
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'Placa'
      DataSource = dsCamiones
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object DBEdit1: TDBEdit
      Left = 80
      Top = 8
      Width = 73
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      DataField = 'CamionID'
      DataSource = dsCamiones
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit5: TDBEdit
      Left = 80
      Top = 104
      Width = 193
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'Chofer'
      DataSource = dsCamiones
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 80
      Top = 128
      Width = 193
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'Metraje'
      DataSource = dsCamiones
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object DBEdit7: TDBEdit
      Left = 80
      Top = 152
      Width = 193
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'Compania'
      DataSource = dsCamiones
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
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
  object QCamiones: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    BeforePost = QCamionesBeforePost
    AfterPost = QCamionesAfterPost
    AfterDelete = QCamionesAfterDelete
    Parameters = <>
    SQL.Strings = (
      'select'
      'CamionID, Marca, Modelo, Placa, Chofer, Metraje, Compania'
      'from'
      'Camiones'
      'order by'
      'CamionID')
    Left = 400
    Top = 104
    object QCamionesCamionID: TAutoIncField
      FieldName = 'CamionID'
      ReadOnly = True
    end
    object QCamionesMarca: TStringField
      FieldName = 'Marca'
      Size = 50
    end
    object QCamionesModelo: TStringField
      FieldName = 'Modelo'
      Size = 50
    end
    object QCamionesPlaca: TStringField
      FieldName = 'Placa'
    end
    object QCamionesChofer: TStringField
      FieldName = 'Chofer'
      Size = 50
    end
    object QCamionesMetraje: TBCDField
      FieldName = 'Metraje'
      Precision = 18
      Size = 2
    end
    object QCamionesCompania: TStringField
      FieldName = 'Compania'
      Size = 100
    end
  end
  object dsCamiones: TDataSource
    AutoEdit = False
    DataSet = QCamiones
    OnStateChange = dsCamionesStateChange
    Left = 432
    Top = 104
  end
  object Search: TQrySearchDlgADO
    Title = 'Camiones'
    ResultField = 'CamionID'
    Query.Strings = (
      'select cpa_nombre, cpa_codigo'
      'from condiciones')
    AliasFields.Strings = (
      'Marca'
      'Modelo'
      'Chofer'
      'Compania'
      'Codigo')
    AliasName = DM.ADOSigma
    Left = 368
    Top = 104
  end
  object ActionList2: TActionList
    Images = DM.ImgMant
    Left = 368
    Top = 136
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
end
