object frmCondiciones: TfrmCondiciones
  Left = 383
  Top = 310
  ActiveControl = DBEdit2
  BorderIcons = [biSystemMenu, biMinimize, biHelp]
  BorderStyle = bsSingle
  Caption = 'Condiciones de Pago'
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
      Left = 32
      Top = 32
      Width = 37
      Height = 13
      Caption = 'Nombre'
    end
    object Label3: TLabel
      Left = 32
      Top = 56
      Width = 20
      Height = 13
      Caption = 'Dias'
    end
    object Label4: TLabel
      Left = 32
      Top = 80
      Width = 44
      Height = 13
      Caption = 'Intervalo'
      FocusControl = DBEdit4
    end
    object Label1: TLabel
      Left = 32
      Top = 8
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object DBEdit2: TDBEdit
      Left = 80
      Top = 32
      Width = 257
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'CPA_NOMBRE'
      DataSource = dsCondicion
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit3: TDBEdit
      Left = 80
      Top = 56
      Width = 65
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'CPA_DIAS'
      DataSource = dsCondicion
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object ckCuotas: TDBCheckBox
      Left = 80
      Top = 104
      Width = 193
      Height = 17
      Caption = 'La condici'#243'n acepta cuotas de pago'
      DataField = 'CPA_CUOTAS'
      DataSource = dsCondicion
      TabOrder = 3
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBEdit4: TDBEdit
      Left = 80
      Top = 80
      Width = 65
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'CPA_INTERVALO'
      DataSource = dsCondicion
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object DBEdit1: TDBEdit
      Left = 80
      Top = 8
      Width = 73
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      DataField = 'CPA_CODIGO'
      DataSource = dsCondicion
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object DBCheckBox1: TDBCheckBox
      Left = 80
      Top = 120
      Width = 105
      Height = 17
      Caption = 'Aplicar intereses'
      DataField = 'cpa_intereses'
      DataSource = dsCondicion
      TabOrder = 5
      ValueChecked = 'True'
      ValueUnchecked = 'False'
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
  object QCondicion: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    BeforePost = QCondicionBeforePost
    AfterPost = QCondicionAfterPost
    AfterDelete = QCondicionAfterDelete
    OnNewRecord = QCondicionNewRecord
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
      
        'select EMP_CODIGO, CPA_CODIGO, CPA_NOMBRE, CPA_DIAS, CPA_CUOTASM' +
        'AXIMO,'
      'CPA_CUOTASMINIMO, CPA_CUOTAS, CPA_INTERVALO,'
      'cpa_intereses'
      'from '
      'CONDICIONES'
      'where '
      'emp_codigo = :emp_codigo'
      'order by '
      'cpa_codigo')
    Left = 408
    Top = 160
    object QCondicionEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
    end
    object QCondicionCPA_CODIGO: TIntegerField
      FieldName = 'CPA_CODIGO'
    end
    object QCondicionCPA_NOMBRE: TIBStringField
      FieldName = 'CPA_NOMBRE'
      Size = 60
    end
    object QCondicionCPA_DIAS: TIntegerField
      FieldName = 'CPA_DIAS'
    end
    object QCondicionCPA_CUOTASMAXIMO: TIntegerField
      FieldName = 'CPA_CUOTASMAXIMO'
      Origin = 'CONDICIONES.CPA_CUOTASMAXIMO'
    end
    object QCondicionCPA_CUOTASMINIMO: TIntegerField
      FieldName = 'CPA_CUOTASMINIMO'
      Origin = 'CONDICIONES.CPA_CUOTASMINIMO'
    end
    object QCondicionCPA_CUOTAS: TIBStringField
      FieldName = 'CPA_CUOTAS'
      Origin = 'CONDICIONES.CPA_CUOTAS'
      Size = 5
    end
    object QCondicionCPA_INTERVALO: TIntegerField
      FieldName = 'CPA_INTERVALO'
      Origin = 'CONDICIONES.CPA_INTERVALO'
    end
    object QCondicioncpa_intereses: TStringField
      FieldName = 'cpa_intereses'
      Size = 5
    end
  end
  object dsCondicion: TDataSource
    AutoEdit = False
    DataSet = QCondicion
    OnStateChange = dsCondicionStateChange
    Left = 440
    Top = 160
  end
  object Search: TQrySearchDlgADO
    Title = 'Condiciones de pago'
    ResultField = 'cpa_codigo'
    Query.Strings = (
      'select cpa_nombre, cpa_codigo'
      'from condiciones')
    AliasFields.Strings = (
      'Nombre'
      'C'#243'digo')
    AliasName = DM.ADOSigma
    Left = 376
    Top = 160
  end
  object ActionList2: TActionList
    Images = DM.ImgMant
    Left = 376
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
end
