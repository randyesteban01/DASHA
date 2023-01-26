object frmEmpresas: TfrmEmpresas
  Left = 356
  Top = 214
  BorderIcons = [biSystemMenu, biMinimize, biHelp]
  BorderStyle = bsSingle
  Caption = 'Empresas'
  ClientHeight = 309
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
  object PageControl1: TPageControl
    Left = 0
    Top = 48
    Width = 545
    Height = 257
    ActivePage = TabSheet1
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Datos generales'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      object Label2: TLabel
        Left = 16
        Top = 32
        Width = 37
        Height = 13
        Caption = 'Nombre'
      end
      object Label3: TLabel
        Left = 16
        Top = 56
        Width = 21
        Height = 13
        Caption = 'RNC'
      end
      object Label4: TLabel
        Left = 16
        Top = 80
        Width = 43
        Height = 13
        Caption = 'Direccion'
      end
      object Label5: TLabel
        Left = 16
        Top = 128
        Width = 42
        Height = 13
        Caption = 'Tel'#233'fono'
      end
      object Label6: TLabel
        Left = 196
        Top = 128
        Width = 18
        Height = 13
        Caption = 'Fax'
      end
      object Label7: TLabel
        Left = 16
        Top = 152
        Width = 57
        Height = 13
        Caption = 'P'#225'gina Web'
      end
      object Label8: TLabel
        Left = 16
        Top = 176
        Width = 28
        Height = 13
        Caption = 'E-mail'
      end
      object Label9: TLabel
        Left = 16
        Top = 104
        Width = 44
        Height = 13
        Caption = 'Localidad'
      end
      object Label1: TLabel
        Left = 16
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
        DataField = 'EMP_NOMBRE'
        DataSource = dsEmpresas
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
        Width = 257
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'EMP_RNC'
        DataSource = dsEmpresas
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
        Width = 257
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'EMP_DIRECCION'
        DataSource = dsEmpresas
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object DBEdit5: TDBEdit
        Left = 80
        Top = 104
        Width = 257
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'EMP_LOCALIDAD'
        DataSource = dsEmpresas
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
        Width = 113
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'EMP_TELEFONO'
        DataSource = dsEmpresas
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object DBEdit7: TDBEdit
        Left = 224
        Top = 128
        Width = 113
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'EMP_FAX'
        DataSource = dsEmpresas
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
      end
      object DBEdit8: TDBEdit
        Left = 80
        Top = 152
        Width = 257
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'EMP_WEB'
        DataSource = dsEmpresas
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
      end
      object DBEdit9: TDBEdit
        Left = 80
        Top = 176
        Width = 257
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'EMP_EMAIL'
        DataSource = dsEmpresas
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
      end
      object DBCheckBox1: TDBCheckBox
        Left = 80
        Top = 200
        Width = 121
        Height = 17
        Caption = 'Consolidar empresa'
        DataField = 'EMP_CONSOLIDAR'
        DataSource = dsEmpresas
        TabOrder = 9
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox2: TDBCheckBox
        Left = 208
        Top = 200
        Width = 129
        Height = 17
        Caption = 'Puede Consolidar'
        DataField = 'EMP_PUEDECONSOLIDAR'
        DataSource = dsEmpresas
        TabOrder = 10
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBEdit1: TDBEdit
        Left = 80
        Top = 8
        Width = 73
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        Color = clInfoBk
        DataField = 'EMP_CODIGO'
        DataSource = dsEmpresas
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Logo'
      ImageIndex = 1
      object DBImage1: TDBImage
        Left = 8
        Top = 8
        Width = 505
        Height = 201
        DataField = 'EMP_LOGO'
        DataSource = dsEmpresas
        PopupMenu = PopupMenu1
        Stretch = True
        TabOrder = 0
      end
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
  object dsEmpresas: TDataSource
    AutoEdit = False
    DataSet = QEmpresas
    OnStateChange = dsEmpresasStateChange
    OnDataChange = dsEmpresasDataChange
    Left = 248
    Top = 88
  end
  object Search: TQrySearchDlgADO
    Title = 'Listado de Empresas'
    ResultField = 'emp_codigo'
    Query.Strings = (
      'select emp_nombre, emp_codigo'
      'from empresas')
    AliasFields.Strings = (
      'Nombre'
      'C'#243'digo')
    AliasName = DM.ADOSigma
    Left = 184
    Top = 120
  end
  object QEmpresas: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterEdit = QEmpresasAfterEdit
    BeforePost = QEmpresasBeforePost
    AfterPost = QEmpresasAfterPost
    AfterDelete = QEmpresasAfterDelete
    OnNewRecord = QEmpresasNewRecord
    DataSource = DM.dsEmpresas
    Parameters = <>
    SQL.Strings = (
      'select '
      'EMP_CODIGO, EMP_DIRECCION, EMP_EMAIL, EMP_FAX, EMP_LOCALIDAD,'
      'EMP_NOMBRE, EMP_RNC, EMP_STATUS, EMP_TELEFONO, EMP_WEB,'
      'EMP_CONSOLIDAR, EMP_PUEDECONSOLIDAR, EMP_LOGO'
      'from'
      'EMPRESAS')
    Left = 184
    Top = 88
    object QEmpresasEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
    end
    object QEmpresasEMP_DIRECCION: TStringField
      FieldName = 'EMP_DIRECCION'
      Size = 60
    end
    object QEmpresasEMP_EMAIL: TStringField
      FieldName = 'EMP_EMAIL'
      Size = 60
    end
    object QEmpresasEMP_FAX: TStringField
      FieldName = 'EMP_FAX'
      Size = 30
    end
    object QEmpresasEMP_LOCALIDAD: TStringField
      FieldName = 'EMP_LOCALIDAD'
      Size = 60
    end
    object QEmpresasEMP_NOMBRE: TStringField
      FieldName = 'EMP_NOMBRE'
      Size = 60
    end
    object QEmpresasEMP_RNC: TStringField
      FieldName = 'EMP_RNC'
      Size = 30
    end
    object QEmpresasEMP_STATUS: TStringField
      FieldName = 'EMP_STATUS'
      Size = 3
    end
    object QEmpresasEMP_TELEFONO: TStringField
      FieldName = 'EMP_TELEFONO'
      Size = 30
    end
    object QEmpresasEMP_WEB: TStringField
      FieldName = 'EMP_WEB'
      Size = 60
    end
    object QEmpresasEMP_CONSOLIDAR: TStringField
      FieldName = 'EMP_CONSOLIDAR'
      Size = 5
    end
    object QEmpresasEMP_PUEDECONSOLIDAR: TStringField
      FieldName = 'EMP_PUEDECONSOLIDAR'
      Size = 5
    end
    object QEmpresasEMP_LOGO: TBlobField
      FieldName = 'EMP_LOGO'
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 316
    Top = 144
    object AgregaFoto1: TMenuItem
      Caption = 'Agrega Foto'
      OnClick = AgregaFoto1Click
    end
    object Quitarfoto1: TMenuItem
      Caption = 'Quitar foto'
      OnClick = Quitarfoto1Click
    end
  end
  object ActionList2: TActionList
    Images = DM.ImgMant
    Left = 248
    Top = 120
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
  object dlgOpenPic1: TOpenPictureDialog
    Left = 392
    Top = 112
  end
end
