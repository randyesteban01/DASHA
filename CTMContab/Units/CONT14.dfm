object frmAnexos: TfrmAnexos
  Left = 402
  Top = 218
  ActiveControl = DBGrid1
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Anexos'
  ClientHeight = 408
  ClientWidth = 594
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
  OnKeyPress = FormKeyPress
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 42
    Width = 594
    Height = 37
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 37
      Height = 13
      Caption = 'N'#250'mero'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 208
      Top = 8
      Width = 35
      Height = 13
      Caption = 'Cuenta'
      FocusControl = DBEdit3
    end
    object btCuenta: TSpeedButton
      Left = 326
      Top = 7
      Width = 23
      Height = 22
      Enabled = False
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
      OnClick = btCuentaClick
    end
    object DBEdit1: TDBEdit
      Left = 56
      Top = 8
      Width = 41
      Height = 19
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      Ctl3D = True
      DataField = 'ANE_CODIGO'
      DataSource = dsAnexos
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 104
      Top = 8
      Width = 97
      Height = 19
      BevelKind = bkFlat
      BorderStyle = bsNone
      Ctl3D = True
      DataField = 'ANE_NOMBRE'
      DataSource = dsAnexos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 248
      Top = 8
      Width = 73
      Height = 19
      BevelKind = bkFlat
      BorderStyle = bsNone
      Ctl3D = True
      DataField = 'CAT_CUENTA'
      DataSource = dsAnexos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
      OnKeyDown = DBEdit3KeyDown
    end
    object edCuenta: TEdit
      Left = 351
      Top = 8
      Width = 234
      Height = 19
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = clInfoBk
      Ctl3D = True
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 3
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 79
    Width = 594
    Height = 329
    Align = alClient
    Color = clInfoBk
    Ctl3D = False
    DataSource = dsDetalle
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'cat_cuenta'
        Title.Alignment = taCenter
        Title.Caption = 'Cuenta'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cat_nombre'
        Title.Caption = 'Descripcion'
        Width = 385
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cat_balactual'
        Title.Alignment = taCenter
        Title.Caption = 'Balance'
        Width = 90
        Visible = True
      end>
  end
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 594
    Height = 42
    AutoSize = True
    Bands = <
      item
        Control = ToolBar1
        ImageIndex = -1
        MinHeight = 38
        Width = 590
      end>
    object ToolBar1: TToolBar
      Left = 9
      Top = 0
      Width = 577
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
  object dsAnexos: TDataSource
    AutoEdit = False
    DataSet = QAnexos
    OnStateChange = dsAnexosStateChange
    Left = 384
    Top = 192
  end
  object dsCuentas: TDataSource
    DataSet = QCuentas
    Left = 384
    Top = 224
  end
  object ActionList1: TActionList
    Left = 288
    Top = 208
    object Busca: TAction
      Caption = 'Busca'
    end
    object PrvAnexo: TAction
      Caption = 'PrvAnexo'
    end
    object PrintAnexo: TAction
      Caption = 'PrintAnexo'
    end
  end
  object QAnexos: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterOpen = QAnexosAfterOpen
    BeforePost = QAnexosBeforePost
    AfterPost = QAnexosAfterPost
    AfterDelete = QAnexosAfterDelete
    OnNewRecord = QAnexosNewRecord
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
      'SELECT'
      'ANE_CODIGO, ANE_NOMBRE, CAT_CUENTA, EMP_CODIGO'
      'FROM'
      'CONTANEXOS'
      'WHERE '
      'EMP_CODIGO = :emp_codigo'
      'ORDER BY ANE_CODIGO')
    Left = 352
    Top = 192
    object QAnexosANE_CODIGO: TIntegerField
      FieldName = 'ANE_CODIGO'
    end
    object QAnexosANE_NOMBRE: TStringField
      FieldName = 'ANE_NOMBRE'
      Size = 60
    end
    object QAnexosCAT_CUENTA: TStringField
      FieldName = 'CAT_CUENTA'
      OnGetText = QAnexosCAT_CUENTAGetText
      Size = 15
    end
    object QAnexosEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
    end
  end
  object QCuentas: TADOQuery
    Connection = DM.ADOSigma
    DataSource = dsAnexos
    Parameters = <
      item
        Name = 'emp_codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'cat_cuenta'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 15
        Value = Null
      end>
    SQL.Strings = (
      'SELECT '
      'CAT_CUENTA, CAT_NOMBRE, CAT_BALACTUAL'
      'FROM'
      'CONTCATALOGO'
      'WHERE'
      'EMP_CODIGO = :emp_codigo'
      'AND CAT_CONTROL = :cat_cuenta'
      'AND (CAT_BALACTUAL IS NOT NULL OR'
      'CAT_BALACTUAL > 0)'
      'ORDER BY CAT_CUENTA')
    Left = 352
    Top = 224
    object QCuentasCAT_CUENTA: TStringField
      FieldName = 'CAT_CUENTA'
      Size = 15
    end
    object QCuentasCAT_NOMBRE: TStringField
      FieldName = 'CAT_NOMBRE'
      Size = 60
    end
    object QCuentasCAT_BALACTUAL: TBCDField
      FieldName = 'CAT_BALACTUAL'
      Precision = 15
      Size = 2
    end
  end
  object Search: TQrySearchDlgADO
    AliasName = DM.ADOSigma
    Left = 352
    Top = 160
  end
  object ActionList2: TActionList
    Left = 272
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
  object PopupMenu1: TPopupMenu
    Left = 144
    Top = 184
    object InsertarCuenta1: TMenuItem
      Caption = 'Insertar Cuenta'
      OnClick = InsertarCuenta1Click
    end
    object EliminarCuenta1: TMenuItem
      Caption = 'Eliminar Cuenta'
      OnClick = EliminarCuenta1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Insertartodaslascuentasauxiliares1: TMenuItem
      Caption = 'Insertar todas las cuentas auxiliares'
      OnClick = Insertartodaslascuentasauxiliares1Click
    end
  end
  object QDetalle: TADOQuery
    Connection = DM.ADOSigma
    DataSource = dsAnexos
    Parameters = <
      item
        Name = 'emp_codigo'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'ane_codigo'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'a.cat_cuenta, c.cat_nombre, c.cat_balactual'
      'from'
      'contanexos_detalle a, contcatalogo c'
      'where'
      'a.emp_codigo = c.emp_codigo'
      'and a.cat_cuenta = c.cat_cuenta'
      'and a.emp_codigo = :emp_codigo'
      'and a.ane_codigo = :ane_codigo'
      'order by'
      'a.cat_cuenta')
    Left = 352
    Top = 264
    object QDetallecat_cuenta: TStringField
      FieldName = 'cat_cuenta'
      Size = 15
    end
    object QDetallecat_nombre: TStringField
      FieldName = 'cat_nombre'
      Size = 60
    end
    object QDetallecat_balactual: TBCDField
      FieldName = 'cat_balactual'
      currency = True
      Precision = 15
      Size = 2
    end
  end
  object dsDetalle: TDataSource
    DataSet = QDetalle
    Left = 384
    Top = 264
  end
end
