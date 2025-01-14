object frmTipoSeguros: TfrmTipoSeguros
  Left = 540
  Top = 343
  BorderIcons = [biSystemMenu, biMinimize, biHelp]
  BorderStyle = bsSingle
  Caption = 'Tipo de seguros'
  ClientHeight = 255
  ClientWidth = 550
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
    Left = 2
    Top = 48
    Width = 544
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
      Top = 40
      Width = 37
      Height = 13
      Caption = 'Nombre'
    end
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object Label3: TLabel
      Left = 16
      Top = 64
      Width = 88
      Height = 13
      Caption = 'Tipo de descuento'
    end
    object DBEdit2: TDBEdit
      Left = 112
      Top = 40
      Width = 321
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'tse_nombre'
      DataSource = dsTipo
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit1: TDBEdit
      Left = 112
      Top = 16
      Width = 73
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      DataField = 'tse_codigo'
      DataSource = dsTipo
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 112
      Top = 64
      Width = 321
      Height = 21
      DataField = 'tde_codigo'
      DataSource = dsTipo
      KeyField = 'tde_codigo'
      ListField = 'tde_nombre'
      ListSource = dsTipoDesc
      TabOrder = 2
    end
  end
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 550
    Height = 42
    AutoSize = True
    Bands = <
      item
        Control = ToolBar1
        ImageIndex = -1
        MinHeight = 38
        Width = 546
      end>
    object ToolBar1: TToolBar
      Left = 9
      Top = 0
      Width = 533
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
  object QTipo: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    BeforePost = QTipoBeforePost
    AfterPost = QTipoAfterPost
    AfterDelete = QTipoAfterDelete
    OnNewRecord = QTipoNewRecord
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
      'emp_codigo, tse_codigo, tse_nombre, tde_codigo'
      'from '
      'tipo_seguros'
      'where '
      'emp_codigo = :emp_codigo'
      'order by tse_codigo')
    Left = 400
    Top = 136
    object QTipoemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QTipotse_codigo: TIntegerField
      FieldName = 'tse_codigo'
    end
    object QTipotse_nombre: TStringField
      FieldName = 'tse_nombre'
      Size = 60
    end
    object QTipotde_codigo: TIntegerField
      FieldName = 'tde_codigo'
    end
  end
  object dsTipo: TDataSource
    AutoEdit = False
    DataSet = QTipo
    OnStateChange = dsTipoStateChange
    Left = 432
    Top = 136
  end
  object Search: TQrySearchDlgADO
    Title = 'Tipo de seguros'
    ResultField = 'tse_codigo'
    Query.Strings = (
      'select fpa_nombre, fpa_codigo'
      'from formaspago')
    AliasFields.Strings = (
      'Nombre'
      'C'#243'digo')
    AliasName = DM.ADOSigma
    Left = 400
    Top = 168
  end
  object ActionList2: TActionList
    Images = DM.ImgMant
    Left = 432
    Top = 168
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
  object QTipoDesc: TADOQuery
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
      'tde_codigo, tde_nombre'
      'from'
      'tipo_descuentos'
      'where'
      'emp_codigo = :emp_codigo'
      'order by'
      'tde_nombre')
    Left = 400
    Top = 200
    object QTipoDesctde_codigo: TIntegerField
      FieldName = 'tde_codigo'
    end
    object QTipoDesctde_nombre: TStringField
      FieldName = 'tde_nombre'
      Size = 60
    end
  end
  object dsTipoDesc: TDataSource
    DataSet = QTipoDesc
    Left = 432
    Top = 200
  end
end
