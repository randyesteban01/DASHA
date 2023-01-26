object frmDeptos: TfrmDeptos
  Left = 580
  Top = 247
  BorderIcons = [biSystemMenu, biMinimize, biHelp]
  BorderStyle = bsSingle
  Caption = 'Departamentos'
  ClientHeight = 258
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
  OnShow = FormShow
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
      Top = 32
      Width = 37
      Height = 13
      Caption = 'Nombre'
    end
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object lbDepto: TLabel
      Left = 16
      Top = 56
      Width = 40
      Height = 13
      Caption = 'Almacen'
    end
    object btAlmacen: TSpeedButton
      Left = 112
      Top = 56
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
      OnClick = btAlmacenClick
    end
    object Label11: TLabel
      Left = 16
      Top = 79
      Width = 39
      Height = 13
      Caption = 'Gerente'
    end
    object btgerente: TSpeedButton
      Left = 112
      Top = 78
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
      OnClick = btgerenteClick
    end
    object lblMonto: TLabel
      Left = 153
      Top = 11
      Width = 62
      Height = 13
      Caption = 'Monto Pres.:'
    end
    object DBEdit2: TDBEdit
      Left = 64
      Top = 32
      Width = 257
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'DEP_NOMBRE'
      DataSource = dsDeptos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DBRadioGroup1: TDBRadioGroup
      Left = 64
      Top = 104
      Width = 185
      Height = 73
      Caption = 'Tipo'
      DataField = 'DEP_TIPO'
      DataSource = dsDeptos
      Items.Strings = (
        'Administrativos'
        'Ventas')
      TabOrder = 4
      Values.Strings = (
        'A'
        'V')
    end
    object DBEdit1: TDBEdit
      Left = 64
      Top = 8
      Width = 73
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      DataField = 'DEP_CODIGO'
      DataSource = dsDeptos
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit12: TDBEdit
      Left = 64
      Top = 56
      Width = 45
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'ALM_CODIGO'
      DataSource = dsDeptos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object tAlmacen: TEdit
      Left = 136
      Top = 56
      Width = 185
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
    object DBEdit23: TDBEdit
      Left = 64
      Top = 79
      Width = 45
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'GER_CODIGO'
      DataSource = dsDeptos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object tgerente: TEdit
      Left = 136
      Top = 79
      Width = 185
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
    end
    object CEdt_Monto: TcxDBCurrencyEdit
      Left = 218
      Top = 8
      DataBinding.DataField = 'DEP_MONTO'
      DataBinding.DataSource = dsDeptos
      TabOrder = 7
      Width = 103
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
  object QDeptos: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    BeforePost = QDeptosBeforePost
    AfterPost = QDeptosAfterPost
    AfterDelete = QDeptosAfterDelete
    OnNewRecord = QDeptosNewRecord
    DataSource = DM.dsParametros
    Parameters = <
      item
        Name = 'par_invempresa'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select '
      'EMP_CODIGO, DEP_CODIGO, DEP_NOMBRE, DEP_TIPO,'
      'ALM_CODIGO, GER_CODIGO, DEP_MONTO'
      'from '
      'DEPARTAMENTOS'
      'where '
      'emp_codigo = :par_invempresa'
      'order by dep_codigo')
    Left = 384
    Top = 112
    object QDeptosEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
    end
    object QDeptosDEP_CODIGO: TIntegerField
      FieldName = 'DEP_CODIGO'
    end
    object QDeptosDEP_NOMBRE: TIBStringField
      FieldName = 'DEP_NOMBRE'
      Size = 60
    end
    object QDeptosDEP_TIPO: TStringField
      FieldName = 'DEP_TIPO'
      Size = 1
    end
    object QDeptosALM_CODIGO: TIntegerField
      FieldName = 'ALM_CODIGO'
      OnGetText = QDeptosALM_CODIGOGetText
    end
    object QDeptosGER_CODIGO: TIntegerField
      FieldName = 'GER_CODIGO'
      OnGetText = QDeptosGER_CODIGOGetText
    end
    object QDeptosDEP_MONTO: TCurrencyField
      FieldName = 'DEP_MONTO'
    end
  end
  object dsDeptos: TDataSource
    AutoEdit = False
    DataSet = QDeptos
    OnStateChange = dsDeptosStateChange
    Left = 416
    Top = 112
  end
  object Search: TQrySearchDlgADO
    Title = 'Listado de Departamentos'
    ResultField = 'dep_codigo'
    Query.Strings = (
      'select emp_nombre, emp_codigo'
      'from empresas')
    AliasFields.Strings = (
      'Nombre'
      'C'#243'digo')
    AliasName = DM.ADOSigma
    Left = 392
    Top = 184
  end
  object ActionList2: TActionList
    Images = DM.ImgMant
    Left = 272
    Top = 192
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
