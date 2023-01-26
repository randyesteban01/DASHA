object frmSucursales: TfrmSucursales
  Left = 238
  Top = 228
  BorderIcons = [biSystemMenu, biMinimize, biHelp]
  BorderStyle = bsSingle
  Caption = 'Sucursales'
  ClientHeight = 332
  ClientWidth = 591
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object PageControl1: TPageControl
    Left = 0
    Top = 52
    Width = 587
    Height = 280
    ActivePage = TabSheet1
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
        Width = 22
        Height = 14
        Caption = 'RNC'
      end
      object Label4: TLabel
        Left = 34
        Top = 86
        Width = 49
        Height = 14
        Caption = 'Direccion'
      end
      object Label5: TLabel
        Left = 34
        Top = 138
        Width = 49
        Height = 14
        Caption = 'Tel'#233'fono'
      end
      object Label6: TLabel
        Left = 211
        Top = 138
        Width = 18
        Height = 14
        Caption = 'Fax'
      end
      object Label8: TLabel
        Left = 34
        Top = 164
        Width = 31
        Height = 14
        Caption = 'E-mail'
      end
      object Label9: TLabel
        Left = 34
        Top = 112
        Width = 49
        Height = 14
        Caption = 'Localidad'
      end
      object Label15: TLabel
        Left = 34
        Top = 190
        Width = 46
        Height = 14
        Caption = 'Almacen'
      end
      object btalm: TSpeedButton
        Left = 115
        Top = 187
        Width = 25
        Height = 24
        Flat = True
        Glyph.Data = {
          42010000424D4201000000000000760000002800000011000000110000000100
          040000000000CC00000000000000000000001000000010000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          77777000000077777777777777777000000070000077777000007000000070B0
          00777770F0007000000070F000777770B0007000000070000000700000007000
          0000700B000000B0000070000000700F000700F0000070000000700B000700B0
          0000700000007700000000000007700000007770B00070B00077700000007770
          0000700000777000000077770007770007777000000077770B07770B07777000
          0000777700077700077770000000777777777777777770000000777777777777
          777770000000}
        OnClick = btalmClick
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
        Top = 220
        Width = 43
        Height = 14
        Caption = 'Suc Loc'
      end
      object DBEdit2: TDBEdit
        Left = 86
        Top = 34
        Width = 277
        Height = 23
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'SUC_NOMBRE'
        DataSource = dsSucursal
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
        Width = 277
        Height = 23
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'SUC_RNC'
        DataSource = dsSucursal
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit4: TDBEdit
        Left = 86
        Top = 86
        Width = 277
        Height = 23
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'SUC_DIRECCION'
        DataSource = dsSucursal
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object DBEdit5: TDBEdit
        Left = 86
        Top = 112
        Width = 277
        Height = 23
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'SUC_LOCALIDAD'
        DataSource = dsSucursal
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object DBEdit6: TDBEdit
        Left = 86
        Top = 138
        Width = 122
        Height = 22
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'SUC_TELEFONO'
        DataSource = dsSucursal
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object DBEdit7: TDBEdit
        Left = 241
        Top = 138
        Width = 122
        Height = 22
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'SUC_FAX'
        DataSource = dsSucursal
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object DBEdit9: TDBEdit
        Left = 86
        Top = 164
        Width = 277
        Height = 22
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'SUC_EMAIL'
        DataSource = dsSucursal
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
      end
      object dbAlm: TDBEdit
        Left = 86
        Top = 187
        Width = 27
        Height = 23
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'ALM_CODIGO'
        DataSource = dsSucursal
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
      end
      object tAlmacen: TEdit
        Left = 142
        Top = 187
        Width = 221
        Height = 23
        BevelKind = bkFlat
        BorderStyle = bsNone
        Color = clInfoBk
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
      end
      object DBEdit1: TDBEdit
        Left = 86
        Top = 9
        Width = 79
        Height = 22
        BevelKind = bkFlat
        BorderStyle = bsNone
        Color = clInfoBk
        DataField = 'SUC_CODIGO'
        DataSource = dsSucursal
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 9
      end
      object DBCheckBox1: TDBCheckBox
        Left = 267
        Top = 9
        Width = 96
        Height = 18
        TabStop = False
        Caption = 'Genera NCF?'
        DataField = 'SUC_GENERANCF'
        DataSource = dsSucursal
        TabOrder = 10
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object dbedtcont_numeroSucursal: TDBEdit
        Left = 86
        Top = 215
        Width = 87
        Height = 23
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'cont_numeroSucursal'
        DataSource = dsSucursal
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
      end
    end
  end
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 591
    Height = 43
    AutoSize = True
    Bands = <
      item
        Control = ToolBar1
        ImageIndex = -1
        MinHeight = 39
        Width = 587
      end>
    object ToolBar1: TToolBar
      Left = 9
      Top = 0
      Width = 574
      Height = 39
      AutoSize = True
      ButtonHeight = 37
      ButtonWidth = 51
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
        Left = 51
        Top = 0
        Action = btNext
      end
      object ToolButton14: TToolButton
        Left = 102
        Top = 0
        Width = 8
        Caption = 'ToolButton14'
        ImageIndex = 1
        Style = tbsSeparator
      end
      object ToolButton1: TToolButton
        Left = 110
        Top = 0
        Action = btInsert
      end
      object ToolButton2: TToolButton
        Left = 161
        Top = 0
        Action = btEdit
      end
      object ToolButton3: TToolButton
        Left = 212
        Top = 0
        Action = btDelete
      end
      object ToolButton4: TToolButton
        Left = 263
        Top = 0
        Width = 8
        Caption = 'ToolButton4'
        ImageIndex = 3
        Style = tbsSeparator
      end
      object ToolButton5: TToolButton
        Left = 271
        Top = 0
        Action = btPost
      end
      object ToolButton6: TToolButton
        Left = 322
        Top = 0
        Action = btCancel
      end
      object ToolButton7: TToolButton
        Left = 373
        Top = 0
        Width = 8
        Caption = 'ToolButton7'
        ImageIndex = 5
        Style = tbsSeparator
      end
      object ToolButton8: TToolButton
        Left = 381
        Top = 0
        Action = btFind
      end
      object ToolButton9: TToolButton
        Left = 432
        Top = 0
        Action = btPrint
      end
      object ToolButton10: TToolButton
        Left = 483
        Top = 0
        Width = 8
        Caption = 'ToolButton10'
        ImageIndex = 7
        Style = tbsSeparator
      end
      object ToolButton11: TToolButton
        Left = 491
        Top = 0
        Action = btClose
      end
    end
  end
  object dsSucursal: TDataSource
    AutoEdit = False
    DataSet = QSucursal
    OnStateChange = dsSucursalStateChange
    Left = 472
    Top = 136
  end
  object Search: TQrySearchDlgADO
    Title = 'Listado de Sucursales'
    ResultField = 'suc_codigo'
    AliasFields.Strings = (
      'Nombre'
      'C'#243'digo')
    AliasName = DM.ADOSigma
    Left = 424
    Top = 216
  end
  object OpenDLG: TOpenPictureDialog
    Left = 224
    Top = 168
  end
  object QSucursal: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    BeforePost = QSucursalBeforePost
    AfterPost = QSucursalAfterPost
    AfterDelete = QSucursalAfterDelete
    OnNewRecord = QSucursalNewRecord
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
      'select '
      'EMP_CODIGO, SUC_DIRECCION, SUC_EMAIL, SUC_FAX, SUC_LOCALIDAD,'
      'SUC_NOMBRE, SUC_RNC, SUC_STATUS, SUC_TELEFONO,'
      'SUC_CODIGO, ALM_CODIGO, SUC_GENERANCF, cont_numeroSucursal'
      'from'
      'SUCURSALES'
      'where'
      'emp_codigo = :emp_Codigo')
    Left = 416
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
    object QSucursalALM_CODIGO: TIntegerField
      FieldName = 'ALM_CODIGO'
      OnGetText = QSucursalALM_CODIGOGetText
    end
    object QSucursalSUC_GENERANCF: TStringField
      FieldName = 'SUC_GENERANCF'
      Size = 5
    end
    object QSucursalcont_numeroSucursal: TStringField
      FieldName = 'cont_numeroSucursal'
      Size = 5
    end
  end
  object ActionList2: TActionList
    Images = DM.ImgMant
    Left = 264
    Top = 168
    object btPrior: TAction
      Caption = 'Anterior'
      ImageIndex = 8
      OnExecute = btPriorClick
    end
    object btNext: TAction
      Caption = 'Pr'#243'ximo'
      ImageIndex = 9
      OnExecute = btNextClick
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
