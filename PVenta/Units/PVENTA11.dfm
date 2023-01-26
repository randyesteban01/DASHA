object frmFamilias: TfrmFamilias
  Left = 272
  Top = 155
  BorderIcons = [biSystemMenu, biMinimize, biHelp]
  BorderStyle = bsSingle
  Caption = 'Familia de productos'
  ClientHeight = 309
  ClientWidth = 551
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
    Left = 5
    Top = 48
    Width = 538
    Height = 257
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
    object Label3: TLabel
      Left = 16
      Top = 56
      Width = 53
      Height = 13
      Caption = '%Comisi'#243'n'
    end
    object Label6: TLabel
      Left = 16
      Top = 104
      Width = 22
      Height = 13
      Caption = 'Caja'
    end
    object btcaja: TSpeedButton
      Left = 186
      Top = 104
      Width = 23
      Height = 22
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
      OnClick = btcajaClick
    end
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object Label4: TLabel
      Left = 200
      Top = 56
      Width = 54
      Height = 13
      Caption = '%Beneficio'
    end
    object Label5: TLabel
      Left = 16
      Top = 80
      Width = 62
      Height = 13
      Caption = '%Descuento'
    end
    object Label7: TLabel
      Left = 16
      Top = 128
      Width = 75
      Height = 13
      Caption = 'Cuenta Ingreso'
    end
    object Label8: TLabel
      Left = 16
      Top = 152
      Width = 88
      Height = 13
      Caption = 'Cuenta Inventario'
    end
    object Label9: TLabel
      Left = 16
      Top = 176
      Width = 66
      Height = 13
      Caption = 'Cuenta Costo'
    end
    object btcta1: TSpeedButton
      Left = 186
      Top = 128
      Width = 23
      Height = 22
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
      OnClick = btcta1Click
    end
    object btcta2: TSpeedButton
      Left = 186
      Top = 152
      Width = 23
      Height = 22
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
      OnClick = btcta2Click
    end
    object btcta3: TSpeedButton
      Left = 186
      Top = 176
      Width = 23
      Height = 22
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
      OnClick = btcta3Click
    end
    object Label10: TLabel
      Left = 16
      Top = 200
      Width = 89
      Height = 13
      Caption = 'Cuenta Descuento'
    end
    object btcta4: TSpeedButton
      Left = 186
      Top = 200
      Width = 23
      Height = 22
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
      OnClick = btcta4Click
    end
    object DBEdit2: TDBEdit
      Left = 120
      Top = 32
      Width = 345
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'FAM_NOMBRE'
      DataSource = dsFamilias
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 120
      Top = 56
      Width = 65
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'FAM_COMISION'
      DataSource = dsFamilias
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object DBCheckBox1: TDBCheckBox
      Left = 120
      Top = 232
      Width = 185
      Height = 17
      Caption = 'Para facturar en el modulo de Bar'
      DataField = 'fam_bar'
      DataSource = dsFamilias
      TabOrder = 13
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object dbCaja: TDBEdit
      Left = 120
      Top = 104
      Width = 65
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'fac_caja'
      DataSource = dsFamilias
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object tcaja: TEdit
      Left = 209
      Top = 104
      Width = 256
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
      TabOrder = 9
    end
    object DBEdit1: TDBEdit
      Left = 120
      Top = 8
      Width = 65
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      DataField = 'FAM_CODIGO'
      DataSource = dsFamilias
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit4: TDBEdit
      Left = 264
      Top = 56
      Width = 73
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'fam_beneficio'
      DataSource = dsFamilias
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 120
      Top = 80
      Width = 65
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'fam_descuento'
      DataSource = dsFamilias
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 120
      Top = 128
      Width = 65
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'fam_cta_ingreso'
      DataSource = dsFamilias
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object tcuenta1: TEdit
      Left = 209
      Top = 128
      Width = 256
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
      TabOrder = 10
    end
    object DBEdit7: TDBEdit
      Left = 120
      Top = 152
      Width = 65
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'fam_cta_inventario'
      DataSource = dsFamilias
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object tcuenta2: TEdit
      Left = 209
      Top = 152
      Width = 256
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
      TabOrder = 11
    end
    object DBEdit8: TDBEdit
      Left = 120
      Top = 176
      Width = 65
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'fam_cta_costo'
      DataSource = dsFamilias
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object tcuenta3: TEdit
      Left = 209
      Top = 176
      Width = 256
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
      TabOrder = 12
    end
    object DBEdit9: TDBEdit
      Left = 120
      Top = 200
      Width = 65
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'fam_cta_descuento'
      DataSource = dsFamilias
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
    end
    object tcuenta4: TEdit
      Left = 209
      Top = 200
      Width = 256
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
      TabOrder = 15
    end
  end
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 551
    Height = 42
    AutoSize = True
    Bands = <
      item
        Control = ToolBar1
        ImageIndex = -1
        MinHeight = 38
        Width = 547
      end>
    object ToolBar1: TToolBar
      Left = 9
      Top = 0
      Width = 534
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
  object QFamilias: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    BeforePost = QFamiliasBeforePost
    AfterPost = QFamiliasAfterPost
    AfterDelete = QFamiliasAfterDelete
    OnNewRecord = QFamiliasNewRecord
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
      'EMP_CODIGO, FAM_CODIGO, FAM_NOMBRE, FAM_COMISION,'
      
        'fam_bar, fac_caja, fam_beneficio, fam_descuento, fam_cta_ingreso' +
        ','
      'fam_cta_inventario, fam_cta_costo, fam_cta_descuento'
      'from '
      'FAMILIAS'
      'where '
      'EMP_CODIGO = :par_invempresa'
      'order by '
      'fam_codigo')
    Left = 476
    Top = 56
    object QFamiliasEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
    end
    object QFamiliasFAM_CODIGO: TIntegerField
      FieldName = 'FAM_CODIGO'
    end
    object QFamiliasFAM_NOMBRE: TIBStringField
      FieldName = 'FAM_NOMBRE'
      Size = 60
    end
    object QFamiliasFAM_COMISION: TFloatField
      FieldName = 'FAM_COMISION'
      currency = True
    end
    object QFamiliasfam_bar: TStringField
      FieldName = 'fam_bar'
      Size = 5
    end
    object QFamiliasfac_caja: TIntegerField
      FieldName = 'fac_caja'
      OnGetText = QFamiliasfac_cajaGetText
    end
    object QFamiliasfam_beneficio: TBCDField
      FieldName = 'fam_beneficio'
      currency = True
      Precision = 15
      Size = 2
    end
    object QFamiliasfam_descuento: TBCDField
      FieldName = 'fam_descuento'
      currency = True
      Precision = 15
      Size = 2
    end
    object QFamiliasfam_cta_ingreso: TStringField
      FieldName = 'fam_cta_ingreso'
      OnGetText = QFamiliasfam_cta_ingresoGetText
      Size = 15
    end
    object QFamiliasfam_cta_inventario: TStringField
      FieldName = 'fam_cta_inventario'
      OnGetText = QFamiliasfam_cta_inventarioGetText
      Size = 15
    end
    object QFamiliasfam_cta_costo: TStringField
      FieldName = 'fam_cta_costo'
      OnGetText = QFamiliasfam_cta_costoGetText
      Size = 15
    end
    object QFamiliasfam_cta_descuento: TStringField
      FieldName = 'fam_cta_descuento'
      OnGetText = QFamiliasfam_cta_descuentoGetText
      Size = 15
    end
  end
  object dsFamilias: TDataSource
    AutoEdit = False
    DataSet = QFamilias
    OnStateChange = dsFamiliasStateChange
    Left = 508
    Top = 56
  end
  object Search: TQrySearchDlgADO
    Title = 'Tipos de factura'
    ResultField = 'fam_codigo'
    Query.Strings = (
      'select caj_nombre, caj_codigo'
      'from cajeros')
    AliasFields.Strings = (
      'Nombre'
      'C'#243'digo')
    AliasName = DM.ADOSigma
    Left = 476
    Top = 88
  end
  object ActionList2: TActionList
    Images = DM.ImgMant
    Left = 508
    Top = 88
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
