object frmOfertas: TfrmOfertas
  Left = 248
  Top = 223
  BorderIcons = [biSystemMenu, biMinimize, biHelp]
  BorderStyle = bsSingle
  Caption = 'Ofertas'
  ClientHeight = 340
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
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 48
    Width = 545
    Height = 289
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
      Top = 56
      Width = 37
      Height = 13
      Caption = 'Nombre'
    end
    object Label3: TLabel
      Left = 16
      Top = 104
      Width = 36
      Height = 13
      Caption = 'Periodo'
    end
    object Label4: TLabel
      Left = 8
      Top = 144
      Width = 109
      Height = 13
      Caption = 'Productos de la Oferta'
    end
    object btFamilia: TSpeedButton
      Left = 110
      Top = 79
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
      OnClick = btFamiliaClick
    end
    object Label9: TLabel
      Left = 16
      Top = 80
      Width = 32
      Height = 13
      Caption = 'Familia'
    end
    object Label10: TLabel
      Left = 232
      Top = 104
      Width = 113
      Height = 13
      Caption = 'Porciento de descuento'
    end
    object Label1: TLabel
      Left = 16
      Top = 32
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object PGrid: TDBGrid
      Left = 1
      Top = 158
      Width = 407
      Height = 123
      Ctl3D = False
      DataSource = dsOProductos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 5
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Descrip'
          Title.Caption = 'Producto'
          Width = 309
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OPR_DESCUENTO'
          Title.Alignment = taCenter
          Title.Caption = '%Descuento'
          Width = 62
          Visible = True
        end>
    end
    object PanelProd: TPanel
      Left = 1
      Top = 158
      Width = 407
      Height = 123
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 7
      Visible = False
      object Label5: TLabel
        Left = 8
        Top = 8
        Width = 43
        Height = 13
        Caption = 'Producto'
      end
      object btProducto: TSpeedButton
        Left = 56
        Top = 8
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
        OnClick = btProductoClick
      end
      object Label6: TLabel
        Left = 8
        Top = 32
        Width = 65
        Height = 13
        Caption = '% Descuento'
        FocusControl = DBEdit5
      end
      object pbtpost: TSpeedButton
        Left = 251
        Top = 96
        Width = 73
        Height = 22
        Caption = 'Grabar'
        Enabled = False
        Flat = True
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000010000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          7777770000000000007770330770000330777033077000033077703307700003
          30777033000000033077703333333333307770330000000330777030FFFFFFF0
          30777030FCCCCFF030777030FFCCCFF030777037FCCCCFF000777077CCCFCFF0
          8077777CCC777700007777CCC77777777777777C777777777777}
        OnClick = pbtpostClick
      end
      object pbtinsert: TSpeedButton
        Left = 32
        Top = 96
        Width = 73
        Height = 22
        Caption = 'A'#241'adir'
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
          333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
          0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
          07333337F33333337F333330FFFFFFFF07333337F33333337F333330FFFFFFFF
          07333FF7F33333337FFFBBB0FFFFFFFF0BB37777F3333333777F3BB0FFFFFFFF
          0BBB3777F3333FFF77773330FFFF000003333337F333777773333330FFFF0FF0
          33333337F3337F37F3333330FFFF0F0B33333337F3337F77FF333330FFFF003B
          B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
          3BB33773333773333773B333333B3333333B7333333733333337}
        NumGlyphs = 2
        OnClick = pbtinsertClick
      end
      object pbtedit: TSpeedButton
        Left = 105
        Top = 96
        Width = 73
        Height = 22
        Caption = 'Modificar'
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
          000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
          00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
          F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
          0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
          FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
          FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
          0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
          00333377737FFFFF773333303300000003333337337777777333}
        NumGlyphs = 2
        OnClick = pbteditClick
      end
      object pbtdelete: TSpeedButton
        Left = 178
        Top = 96
        Width = 73
        Height = 22
        Caption = 'Eliminar'
        Flat = True
        Glyph.Data = {
          42010000424D4201000000000000760000002800000011000000110000000100
          040000000000CC00000000000000000000001000000010000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          777770000000777777777777777770000000777777777777770F700000007777
          0F777777777770000000777000F7777770F770000000777000F777770F777000
          00007777000F77700F777000000077777000F700F7777000000077777700000F
          7777700000007777777000F777777000000077777700000F7777700000007777
          7000F70F7777700000007770000F77700F7770000000770000F7777700F77000
          00007700F7777777700F70000000777777777777777770000000777777777777
          777770000000}
        OnClick = pbtdeleteClick
      end
      object pbtcancel: TSpeedButton
        Left = 324
        Top = 96
        Width = 73
        Height = 22
        Caption = 'Cancelar'
        Enabled = False
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
          3333333777333777FF3333993333339993333377FF3333377FF3399993333339
          993337777FF3333377F3393999333333993337F777FF333337FF993399933333
          399377F3777FF333377F993339993333399377F33777FF33377F993333999333
          399377F333777FF3377F993333399933399377F3333777FF377F993333339993
          399377FF3333777FF7733993333339993933373FF3333777F7F3399933333399
          99333773FF3333777733339993333339933333773FFFFFF77333333999999999
          3333333777333777333333333999993333333333377777333333}
        NumGlyphs = 2
        OnClick = pbtcancelClick
      end
      object DBEdit5: TDBEdit
        Left = 80
        Top = 32
        Width = 64
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'OPR_DESCUENTO'
        DataSource = dsOProductos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object DBNavigator1: TDBNavigator
        Left = 148
        Top = 32
        Width = 96
        Height = 22
        DataSource = dsOProductos
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        Flat = True
        TabOrder = 1
      end
      object DBEdit8: TDBEdit
        Left = 80
        Top = 8
        Width = 321
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        Color = clInfoBk
        DataField = 'Descrip'
        DataSource = dsOProductos
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
    end
    object DBEdit2: TDBEdit
      Left = 64
      Top = 56
      Width = 337
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'OFE_NOMBRE'
      DataSource = dsOfertas
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit3: TDBEdit
      Left = 64
      Top = 104
      Width = 65
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'OFE_FECHA1'
      DataSource = dsOfertas
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 136
      Top = 104
      Width = 65
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'OFE_FECHA2'
      DataSource = dsOfertas
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object btOProd: TBitBtn
      Left = 232
      Top = 131
      Width = 171
      Height = 25
      Caption = 'Introducir Productos de la Oferta'
      TabOrder = 6
      OnClick = btOProdClick
    end
    object DBEdit12: TDBEdit
      Left = 64
      Top = 80
      Width = 41
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'FAM_CODIGO'
      DataSource = dsOfertas
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object tFamilia: TEdit
      Left = 136
      Top = 80
      Width = 265
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
      TabOrder = 8
    end
    object DBEdit9: TDBEdit
      Left = 352
      Top = 104
      Width = 49
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'OFE_DESCUENTO'
      DataSource = dsOfertas
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object DBEdit1: TDBEdit
      Left = 64
      Top = 32
      Width = 73
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      DataField = 'OFE_CODIGO'
      DataSource = dsOfertas
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
    end
    object cbTipo: TDBRadioGroup
      Left = 272
      Top = 1
      Width = 129
      Height = 55
      DataField = 'OFE_TIPO'
      DataSource = dsOfertas
      Items.Strings = (
        'General'
        'Por Familia'
        'Por Producto')
      TabOrder = 10
      Values.Strings = (
        'G'
        'F'
        'P')
      OnClick = cbTipoClick
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
  object QOfertas: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    BeforePost = QOfertasBeforePost
    AfterPost = QOfertasAfterPost
    AfterDelete = QOfertasAfterDelete
    OnNewRecord = QOfertasNewRecord
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
      
        'select EMP_CODIGO, OFE_CODIGO, OFE_NOMBRE, OFE_FECHA1, OFE_FECHA' +
        '2,'
      'FAM_CODIGO, OFE_DESCUENTO, OFE_TIPO'
      ' from OFERTAS'
      'where emp_codigo = :emp_codigo'
      'order by ofe_codigo')
    Left = 304
    Top = 248
    object QOfertasEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
    end
    object QOfertasOFE_CODIGO: TIntegerField
      FieldName = 'OFE_CODIGO'
    end
    object QOfertasOFE_NOMBRE: TIBStringField
      FieldName = 'OFE_NOMBRE'
      Size = 60
    end
    object QOfertasOFE_FECHA1: TDateTimeField
      FieldName = 'OFE_FECHA1'
      EditMask = 'cc-cc-cccc'
    end
    object QOfertasOFE_FECHA2: TDateTimeField
      FieldName = 'OFE_FECHA2'
      EditMask = 'cc-cc-cccc'
    end
    object QOfertasFAM_CODIGO: TIntegerField
      FieldName = 'FAM_CODIGO'
      Origin = 'OFERTAS.FAM_CODIGO'
      OnGetText = QOfertasFAM_CODIGOGetText
    end
    object QOfertasOFE_DESCUENTO: TFloatField
      FieldName = 'OFE_DESCUENTO'
      Origin = 'OFERTAS.OFE_DESCUENTO'
      currency = True
    end
    object QOfertasOFE_TIPO: TIBStringField
      FieldName = 'OFE_TIPO'
      Origin = 'OFERTAS.OFE_TIPO'
      Size = 1
    end
  end
  object dsOfertas: TDataSource
    AutoEdit = False
    DataSet = QOfertas
    OnStateChange = dsOfertasStateChange
    OnDataChange = dsOfertasDataChange
    Left = 336
    Top = 248
  end
  object Search: TQrySearchDlgADO
    Title = 'Listado de Ofertas'
    ResultField = 'ofe_codigo'
    Query.Strings = (
      'select emp_nombre, emp_codigo'
      'from empresas')
    AliasFields.Strings = (
      'Nombre'
      'C'#243'digo')
    AliasName = DM.ADOSigma
    Left = 272
    Top = 248
  end
  object QOProductos: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    BeforePost = QOProductosBeforePost
    AfterPost = QOProductosAfterPost
    AfterDelete = QOProductosAfterDelete
    OnNewRecord = QOProductosNewRecord
    DataSource = dsOfertas
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
        Name = 'ofe_codigo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select EMP_CODIGO, OFE_CODIGO, PRO_CODIGO, '
      'OPR_PRECIO, OPR_CANTIDAD, PRO_RORIGINAL, '
      'PRO_RFABRIC, OPR_PORCADA, OPR_DESCUENTO'
      'from OFERPRODUCTOS'
      'where emp_codigo = :emp_codigo'
      'and ofe_codigo = :ofe_codigo'
      'order by pro_codigo')
    Left = 304
    Top = 280
    object QOProductosEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
    end
    object QOProductosOFE_CODIGO: TIntegerField
      FieldName = 'OFE_CODIGO'
    end
    object QOProductosPRO_CODIGO: TIntegerField
      FieldName = 'PRO_CODIGO'
    end
    object QOProductosOPR_PRECIO: TFloatField
      FieldName = 'OPR_PRECIO'
      currency = True
    end
    object QOProductosOPR_CANTIDAD: TFloatField
      FieldName = 'OPR_CANTIDAD'
      currency = True
    end
    object QOProductosPRO_RORIGINAL: TIBStringField
      FieldName = 'PRO_RORIGINAL'
      Size = 50
    end
    object QOProductosPRO_RFABRIC: TIBStringField
      FieldName = 'PRO_RFABRIC'
      Size = 60
    end
    object QOProductosDescrip: TStringField
      FieldKind = fkLookup
      FieldName = 'Descrip'
      LookupDataSet = QProductos
      LookupKeyFields = 'PRO_CODIGO'
      LookupResultField = 'PRO_NOMBRE'
      KeyFields = 'PRO_CODIGO'
      LookupCache = True
      Size = 60
      Lookup = True
    end
    object QOProductosOPR_PORCADA: TFloatField
      FieldName = 'OPR_PORCADA'
      currency = True
    end
    object QOProductosOPR_DESCUENTO: TFloatField
      FieldName = 'OPR_DESCUENTO'
      Origin = 'OFERPRODUCTOS.OPR_DESCUENTO'
      currency = True
    end
  end
  object dsOProductos: TDataSource
    AutoEdit = False
    DataSet = QOProductos
    OnStateChange = dsOProductosStateChange
    Left = 336
    Top = 280
  end
  object QProductos: TADOQuery
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
      'select PRO_CODIGO, PRO_NOMBRE from PRODUCTOS'
      'where EMP_CODIGO = :emp_codigo')
    Left = 272
    Top = 280
    object QProductosPRO_CODIGO: TIntegerField
      FieldName = 'PRO_CODIGO'
      Required = True
    end
    object QProductosPRO_NOMBRE: TIBStringField
      FieldName = 'PRO_NOMBRE'
      Size = 60
    end
  end
  object ActionList2: TActionList
    Images = DM.ImgMant
    Left = 368
    Top = 248
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
