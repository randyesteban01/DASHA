object frmDigitacionAbierta: TfrmDigitacionAbierta
  Left = 673
  Top = 191
  ActiveControl = edProd
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Digitaci'#243'n abierta de productos'
  ClientHeight = 374
  ClientWidth = 512
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
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
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 497
    Height = 265
    BevelInner = bvLowered
    TabOrder = 0
    object Label5: TLabel
      Left = 16
      Top = 56
      Width = 28
      Height = 13
      Caption = 'Costo'
      FocusControl = DBEdit5
    end
    object Label6: TLabel
      Left = 160
      Top = 56
      Width = 32
      Height = 13
      Caption = '%Itbis'
      FocusControl = DBEdit6
    end
    object Label7: TLabel
      Left = 16
      Top = 32
      Width = 37
      Height = 13
      Caption = 'Nombre'
      FocusControl = DBEdit7
    end
    object Label8: TLabel
      Left = 15
      Top = 8
      Width = 43
      Height = 13
      Caption = 'Producto'
    end
    object SpeedButton1: TSpeedButton
      Left = 155
      Top = 8
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
      OnClick = SpeedButton1Click
    end
    object Label9: TLabel
      Left = 328
      Top = 240
      Width = 91
      Height = 13
      Caption = 'Cantidad etiquetas'
    end
    object DBEdit5: TDBEdit
      Left = 72
      Top = 56
      Width = 81
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'pro_costo'
      DataSource = dsProductos
      TabOrder = 2
    end
    object DBEdit6: TDBEdit
      Left = 194
      Top = 56
      Width = 35
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'pro_montoitbis'
      DataSource = dsProductos
      TabOrder = 3
    end
    object DBEdit7: TDBEdit
      Left = 72
      Top = 32
      Width = 417
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'pro_nombre'
      DataSource = dsProductos
      TabOrder = 1
    end
    object edProd: TEdit
      Left = 72
      Top = 8
      Width = 81
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyDown = edProdKeyDown
    end
    object rgtipo: TRadioGroup
      Left = 328
      Top = 159
      Width = 161
      Height = 73
      ItemIndex = 1
      Items.Strings = (
        'Producto'
        'Gondola')
      TabOrder = 7
    end
    object ckbarra: TCheckBox
      Left = 336
      Top = 159
      Width = 145
      Height = 17
      Caption = 'Imprimir codigo de barra'
      TabOrder = 8
    end
    object edCantidad: TEdit
      Left = 424
      Top = 240
      Width = 65
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      Text = '1'
    end
    object GroupBox1: TGroupBox
      Left = 328
      Top = 61
      Width = 161
      Height = 84
      Caption = 'Precio m'#237'nimo'
      TabOrder = 5
      object Label10: TLabel
        Left = 16
        Top = 28
        Width = 33
        Height = 13
        Caption = 'Unidad'
        FocusControl = DBEdit8
      end
      object Label11: TLabel
        Left = 16
        Top = 52
        Width = 44
        Height = 13
        Caption = 'Empaque'
        FocusControl = DBEdit9
      end
      object DBEdit8: TDBEdit
        Left = 64
        Top = 28
        Width = 81
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'PRO_PRECIOMENOR'
        DataSource = dsProductos
        TabOrder = 0
      end
      object DBEdit9: TDBEdit
        Left = 64
        Top = 52
        Width = 81
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'PRO_PRECIOMENOREMP'
        DataSource = dsProductos
        TabOrder = 1
      end
    end
    object DBEdit43: TDBEdit
      Left = 231
      Top = 56
      Width = 89
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      DataField = 'Valor'
      DataSource = dsProductos
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
    end
    object GroupBox2: TGroupBox
      Left = 16
      Top = 80
      Width = 305
      Height = 177
      Caption = 'Precios'
      TabOrder = 4
      object Label1: TLabel
        Left = 16
        Top = 24
        Width = 35
        Height = 13
        Caption = 'Precio1'
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 16
        Top = 48
        Width = 35
        Height = 13
        Caption = 'Precio2'
        FocusControl = DBEdit2
      end
      object Label3: TLabel
        Left = 16
        Top = 72
        Width = 35
        Height = 13
        Caption = 'Precio3'
        FocusControl = DBEdit3
      end
      object Label4: TLabel
        Left = 16
        Top = 96
        Width = 35
        Height = 13
        Caption = 'Precio4'
        FocusControl = DBEdit4
      end
      object Label14: TLabel
        Left = 152
        Top = 8
        Width = 54
        Height = 13
        Caption = '%Beneficio'
      end
      object DBEdit1: TDBEdit
        Left = 72
        Top = 24
        Width = 81
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'pro_precio1'
        DataSource = dsProductos
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 72
        Top = 48
        Width = 81
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'pro_precio2'
        DataSource = dsProductos
        TabOrder = 2
      end
      object DBEdit3: TDBEdit
        Left = 72
        Top = 72
        Width = 81
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'pro_precio3'
        DataSource = dsProductos
        TabOrder = 4
      end
      object DBEdit4: TDBEdit
        Left = 72
        Top = 96
        Width = 81
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'pro_precio4'
        DataSource = dsProductos
        TabOrder = 6
      end
      object DBEdit10: TDBEdit
        Left = 160
        Top = 24
        Width = 41
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'PRO_BENEFICIO'
        DataSource = dsProductos
        TabOrder = 1
      end
      object DBEdit11: TDBEdit
        Left = 160
        Top = 48
        Width = 41
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'PRO_BENEFICIO2'
        DataSource = dsProductos
        TabOrder = 3
      end
      object DBEdit12: TDBEdit
        Left = 160
        Top = 72
        Width = 41
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'PRO_BENEFICIO3'
        DataSource = dsProductos
        TabOrder = 5
      end
      object DBEdit13: TDBEdit
        Left = 160
        Top = 96
        Width = 41
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'PRO_BENEFICIO4'
        DataSource = dsProductos
        TabOrder = 7
      end
    end
  end
  object btClose: TBitBtn
    Left = 424
    Top = 344
    Width = 75
    Height = 25
    Caption = '&Salir'
    TabOrder = 3
    OnClick = btCloseClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
      03333377777777777F333301BBBBBBBB033333773F3333337F3333011BBBBBBB
      0333337F73F333337F33330111BBBBBB0333337F373F33337F333301110BBBBB
      0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
      0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
      0333337F337F33337F333301110BBBBB0333337F337FF3337F33330111B0BBBB
      0333337F337733337F333301110BBBBB0333337F337F33337F333301110BBBBB
      0333337F3F7F33337F333301E10BBBBB0333337F7F7F33337F333301EE0BBBBB
      0333337F777FFFFF7F3333000000000003333377777777777333}
    NumGlyphs = 2
  end
  object btgrabar: TBitBtn
    Left = 40
    Top = 344
    Width = 91
    Height = 25
    Caption = '[ F2 ] Grabar'
    TabOrder = 2
    OnClick = btgrabarClick
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF00FF00FF00FF000000
      0000008080000080800000000000000000000000000000000000000000000000
      0000FF00FF00FF00FF00000000000080800000000000FF00FF00FF00FF000000
      0000008080000080800000000000000000000000000000000000000000000000
      0000FF00FF00FF00FF00000000000080800000000000FF00FF00FF00FF000000
      0000008080000080800000000000000000000000000000000000000000000000
      0000FF00FF00FF00FF00000000000080800000000000FF00FF00FF00FF000000
      0000008080000080800000000000000000000000000000000000000000000000
      00000000000000000000000000000080800000000000FF00FF00FF00FF000000
      0000008080000080800000808000008080000080800000808000008080000080
      80000080800000808000008080000080800000000000FF00FF00FF00FF000000
      0000008080000080800000000000000000000000000000000000000000000000
      00000000000000000000008080000080800000000000FF00FF00FF00FF000000
      00000080800000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00000000000080800000000000FF00FF00FF00FF000000
      00000080800000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00000000000080800000000000FF00FF00FF00FF000000
      00000080800000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00000000000080800000000000FF00FF00FF00FF000000
      00000080800000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00000000000080800000000000FF00FF00FF00FF000000
      00000080800000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00FF000000
      00000080800000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF0000000000FF00FF0000000000FF00FF00FF00FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
  end
  object Memo1: TMemo
    Left = 264
    Top = 16
    Width = 185
    Height = 17
    Lines.Strings = (
      'Memo1')
    TabOrder = 4
    Visible = False
  end
  object btimprime: TBitBtn
    Left = 136
    Top = 344
    Width = 131
    Height = 25
    Caption = '[ F3 ] Imprimir etiqueta'
    TabOrder = 5
    OnClick = btimprimeClick
  end
  object Panel2: TPanel
    Left = 8
    Top = 280
    Width = 497
    Height = 57
    BevelInner = bvLowered
    TabOrder = 1
    object Label12: TLabel
      Left = 16
      Top = 8
      Width = 40
      Height = 13
      Caption = 'Almacen'
    end
    object Label13: TLabel
      Left = 16
      Top = 32
      Width = 48
      Height = 13
      Caption = 'Existencia'
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 72
      Top = 8
      Width = 233
      Height = 21
      KeyField = 'alm_codigo'
      ListField = 'alm_nombre'
      ListSource = dsAlmacen
      TabOrder = 0
    end
    object edExistencia: TEdit
      Left = 72
      Top = 32
      Width = 65
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
  end
  object btbuscar: TBitBtn
    Left = 272
    Top = 344
    Width = 147
    Height = 25
    Caption = '[ F4 ] - Buscar producto'
    TabOrder = 6
    OnClick = btbuscarClick
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
      0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF000000000000000000000000000000000000000000FF00FF0000000000FFFF
      FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF0000000000FFFFFF00000000000000000000000000FF00FF0000000000FFFF
      FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF0000000000FFFFFF00000000000000000000000000FF00FF00000000000000
      00000000000000000000000000000000000000000000FF00FF00000000000000
      00000000000000000000000000000000000000000000FF00FF00000000000000
      0000FFFFFF00000000000000000000000000000000000000000000000000FFFF
      FF000000000000000000000000000000000000000000FF00FF00000000000000
      0000FFFFFF00000000000000000000000000FF00FF000000000000000000FFFF
      FF000000000000000000000000000000000000000000FF00FF00000000000000
      0000FFFFFF00000000000000000000000000FF00FF000000000000000000FFFF
      FF000000000000000000000000000000000000000000FF00FF00FF00FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
      FF0000000000FFFFFF00000000000000000000000000FF00FF0000000000FFFF
      FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF000000000000000000000000000000000000000000FF00FF00000000000000
      0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00FF000000
      00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00FF000000
      0000FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00FF000000
      00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
  end
  object QProductos: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    BeforeInsert = QProductosBeforeInsert
    AfterInsert = QProductosAfterInsert
    BeforeEdit = QProductosBeforeEdit
    AfterEdit = QProductosAfterEdit
    BeforePost = QProductosBeforePost
    AfterPost = QProductosAfterPost
    OnCalcFields = QProductosCalcFields
    OnNewRecord = QProductosNewRecord
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
      'select'
      'EMP_CODIGO, PRO_CODIGO, PRO_RORIGINAL, PRO_RFABRIC, '
      'PRO_NOMBRE, FAM_CODIGO, COL_CODIGO, PRO_BARRA, '
      'PRO_DESCMAX, PRO_ULTCOSTO, PRO_COSTO, PRO_PRECIO1, '
      'PRO_PRECIO2, PRO_PRECIO3, PRO_PRECIO4, PRO_DISPLAY, '
      'PRO_STATUS, PRO_INVINICIAL, PRO_EXISTENCIA, PRO_UBICACION, '
      'PRO_STKMINIMO, PRO_STKMAXIMO, PRO_INVFISICO, '
      'PRO_PEDIDOPRV, PRO_PEDIDOCLI, PRO_CTAINVENT, '
      'PRO_CTACOSTO, DEP_CODIGO, PRO_ITBIS, PRO_BENEFICIO, '
      'PRO_ESCALA, PRO_SERVICIO, MAR_CODIGO, PRO_COMISION, '
      'PRO_VENCE, PRO_BENEFICIO2, PRO_BENEFICIO3, PRO_BENEFICIO4, '
      'PRO_USO, SUP_CODIGO, '
      'PRO_NUEVOUSADO, PRO_COSTOUS,'
      'PRO_TASACOMPRA, PRO_TASAVENTA,'
      'PRO_PRECIOMENOR, PRO_EXISTEMPAQUE, '
      'PRO_CANTEMPAQUE, PRO_COSTOEMPAQUE,'
      'PRO_COMBO, PRO_INVINICIALEMP, PRO_STKMINIMOEMP, '
      'PRO_STKMAXIMOEMP, PRO_PRECIOMENOREMP,'
      'PRO_ALMACENBAR, MON_CODIGO, PRO_COMISIONDESCUENTO,'
      'PRO_CONTROLADO, PRO_DETALLADO, pro_realizar_pedido,'
      'usu_codigo, pro_fecha_modifico, pro_comentario, pro_foto,'
      'pro_selectivo_ad, pro_selectivo_con, pro_unidad_medida,'
      'pro_minimo_venta, pro_volumen, pro_montoitbis'
      'from'
      'productos'
      'where'
      'emp_codigo = :par_invempresa')
    Left = 408
    Top = 176
    object QProductospro_codigo: TIntegerField
      FieldName = 'pro_codigo'
    end
    object QProductospro_roriginal: TStringField
      FieldName = 'pro_roriginal'
      Size = 50
    end
    object QProductospro_rfabric: TStringField
      FieldName = 'pro_rfabric'
      Size = 60
    end
    object QProductospro_nombre: TStringField
      FieldName = 'pro_nombre'
      Size = 80
    end
    object QProductospro_precio1: TBCDField
      FieldName = 'pro_precio1'
      currency = True
      Precision = 15
      Size = 2
    end
    object QProductospro_precio2: TBCDField
      FieldName = 'pro_precio2'
      currency = True
      Precision = 15
      Size = 2
    end
    object QProductospro_precio3: TBCDField
      FieldName = 'pro_precio3'
      currency = True
      Precision = 15
      Size = 2
    end
    object QProductospro_precio4: TBCDField
      FieldName = 'pro_precio4'
      currency = True
      Precision = 15
      Size = 2
    end
    object QProductospro_ultcosto: TBCDField
      FieldName = 'pro_ultcosto'
      currency = True
      Precision = 15
      Size = 2
    end
    object QProductospro_costo: TBCDField
      FieldName = 'pro_costo'
      OnChange = QProductospro_costoChange
      currency = True
      Precision = 15
      Size = 2
    end
    object QProductospro_itbis: TStringField
      FieldName = 'pro_itbis'
      Size = 1
    end
    object QProductosPRO_PRECIOMENOR: TBCDField
      FieldName = 'PRO_PRECIOMENOR'
      currency = True
      Precision = 15
      Size = 2
    end
    object QProductosPRO_PRECIOMENOREMP: TBCDField
      FieldName = 'PRO_PRECIOMENOREMP'
      currency = True
      Precision = 15
      Size = 2
    end
    object QProductosemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QProductosFAM_CODIGO: TIntegerField
      FieldName = 'FAM_CODIGO'
    end
    object QProductosCOL_CODIGO: TIntegerField
      FieldName = 'COL_CODIGO'
    end
    object QProductosPRO_BARRA: TStringField
      FieldName = 'PRO_BARRA'
      Size = 30
    end
    object QProductosPRO_DESCMAX: TBCDField
      FieldName = 'PRO_DESCMAX'
      Precision = 15
      Size = 2
    end
    object QProductosPRO_DISPLAY: TStringField
      FieldName = 'PRO_DISPLAY'
      Size = 30
    end
    object QProductosPRO_STATUS: TStringField
      FieldName = 'PRO_STATUS'
      Size = 3
    end
    object QProductosPRO_INVINICIAL: TBCDField
      FieldName = 'PRO_INVINICIAL'
      Precision = 15
      Size = 2
    end
    object QProductosPRO_EXISTENCIA: TBCDField
      FieldName = 'PRO_EXISTENCIA'
      Precision = 15
      Size = 2
    end
    object QProductosPRO_UBICACION: TStringField
      FieldName = 'PRO_UBICACION'
      Size = 10
    end
    object QProductosPRO_STKMINIMO: TBCDField
      FieldName = 'PRO_STKMINIMO'
      Precision = 15
      Size = 2
    end
    object QProductosPRO_STKMAXIMO: TBCDField
      FieldName = 'PRO_STKMAXIMO'
      Precision = 15
      Size = 2
    end
    object QProductosPRO_INVFISICO: TBCDField
      FieldName = 'PRO_INVFISICO'
      Precision = 15
      Size = 2
    end
    object QProductosPRO_PEDIDOPRV: TBCDField
      FieldName = 'PRO_PEDIDOPRV'
      Precision = 15
      Size = 2
    end
    object QProductosPRO_PEDIDOCLI: TBCDField
      FieldName = 'PRO_PEDIDOCLI'
      Precision = 15
      Size = 2
    end
    object QProductosPRO_CTAINVENT: TStringField
      FieldName = 'PRO_CTAINVENT'
      Size = 15
    end
    object QProductosPRO_CTACOSTO: TStringField
      FieldName = 'PRO_CTACOSTO'
      Size = 15
    end
    object QProductosDEP_CODIGO: TIntegerField
      FieldName = 'DEP_CODIGO'
    end
    object QProductosPRO_BENEFICIO: TBCDField
      FieldName = 'PRO_BENEFICIO'
      OnChange = QProductosPRO_BENEFICIOChange
      currency = True
      Precision = 15
      Size = 2
    end
    object QProductosPRO_ESCALA: TStringField
      FieldName = 'PRO_ESCALA'
      Size = 5
    end
    object QProductosPRO_SERVICIO: TStringField
      FieldName = 'PRO_SERVICIO'
      Size = 5
    end
    object QProductosMAR_CODIGO: TIntegerField
      FieldName = 'MAR_CODIGO'
    end
    object QProductosPRO_COMISION: TBCDField
      FieldName = 'PRO_COMISION'
      Precision = 15
      Size = 2
    end
    object QProductosPRO_VENCE: TStringField
      FieldName = 'PRO_VENCE'
      Size = 5
    end
    object QProductosPRO_BENEFICIO2: TBCDField
      FieldName = 'PRO_BENEFICIO2'
      OnChange = QProductosPRO_BENEFICIO2Change
      currency = True
      Precision = 15
      Size = 2
    end
    object QProductosPRO_BENEFICIO3: TBCDField
      FieldName = 'PRO_BENEFICIO3'
      OnChange = QProductosPRO_BENEFICIO3Change
      currency = True
      Precision = 15
      Size = 2
    end
    object QProductosPRO_BENEFICIO4: TBCDField
      FieldName = 'PRO_BENEFICIO4'
      OnChange = QProductosPRO_BENEFICIO4Change
      currency = True
      Precision = 15
      Size = 2
    end
    object QProductosPRO_USO: TStringField
      FieldName = 'PRO_USO'
      Size = 60
    end
    object QProductosSUP_CODIGO: TIntegerField
      FieldName = 'SUP_CODIGO'
    end
    object QProductosPRO_NUEVOUSADO: TStringField
      FieldName = 'PRO_NUEVOUSADO'
      Size = 1
    end
    object QProductosPRO_COSTOUS: TBCDField
      FieldName = 'PRO_COSTOUS'
      Precision = 15
      Size = 2
    end
    object QProductosPRO_TASACOMPRA: TBCDField
      FieldName = 'PRO_TASACOMPRA'
      Precision = 15
      Size = 2
    end
    object QProductosPRO_TASAVENTA: TBCDField
      FieldName = 'PRO_TASAVENTA'
      Precision = 15
      Size = 2
    end
    object QProductosPRO_EXISTEMPAQUE: TBCDField
      FieldName = 'PRO_EXISTEMPAQUE'
      Precision = 15
      Size = 2
    end
    object QProductosPRO_CANTEMPAQUE: TBCDField
      FieldName = 'PRO_CANTEMPAQUE'
      Precision = 15
      Size = 2
    end
    object QProductosPRO_COSTOEMPAQUE: TBCDField
      FieldName = 'PRO_COSTOEMPAQUE'
      Precision = 15
      Size = 2
    end
    object QProductosPRO_COMBO: TStringField
      FieldName = 'PRO_COMBO'
      Size = 5
    end
    object QProductosPRO_INVINICIALEMP: TBCDField
      FieldName = 'PRO_INVINICIALEMP'
      Precision = 15
      Size = 2
    end
    object QProductosPRO_STKMINIMOEMP: TBCDField
      FieldName = 'PRO_STKMINIMOEMP'
      Precision = 15
      Size = 2
    end
    object QProductosPRO_STKMAXIMOEMP: TBCDField
      FieldName = 'PRO_STKMAXIMOEMP'
      Precision = 15
      Size = 2
    end
    object QProductosPRO_ALMACENBAR: TIntegerField
      FieldName = 'PRO_ALMACENBAR'
    end
    object QProductosMON_CODIGO: TIntegerField
      FieldName = 'MON_CODIGO'
    end
    object QProductosPRO_COMISIONDESCUENTO: TBCDField
      FieldName = 'PRO_COMISIONDESCUENTO'
      Precision = 15
      Size = 2
    end
    object QProductosPRO_CONTROLADO: TStringField
      FieldName = 'PRO_CONTROLADO'
      Size = 5
    end
    object QProductosPRO_DETALLADO: TStringField
      FieldName = 'PRO_DETALLADO'
      Size = 5
    end
    object QProductospro_realizar_pedido: TStringField
      FieldName = 'pro_realizar_pedido'
      Size = 5
    end
    object QProductosusu_codigo: TIntegerField
      FieldName = 'usu_codigo'
    end
    object QProductospro_fecha_modifico: TDateTimeField
      FieldName = 'pro_fecha_modifico'
    end
    object QProductospro_comentario: TMemoField
      FieldName = 'pro_comentario'
      BlobType = ftMemo
    end
    object QProductospro_foto: TStringField
      FieldName = 'pro_foto'
      Size = 200
    end
    object QProductospro_selectivo_ad: TBCDField
      FieldName = 'pro_selectivo_ad'
      Precision = 15
      Size = 2
    end
    object QProductospro_selectivo_con: TBCDField
      FieldName = 'pro_selectivo_con'
      Precision = 15
      Size = 2
    end
    object QProductospro_unidad_medida: TStringField
      FieldName = 'pro_unidad_medida'
    end
    object QProductospro_minimo_venta: TBCDField
      FieldName = 'pro_minimo_venta'
      Precision = 15
      Size = 2
    end
    object QProductospro_volumen: TBCDField
      FieldName = 'pro_volumen'
      Precision = 18
      Size = 6
    end
    object QProductosValor: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Valor'
      Calculated = True
    end
    object QProductosCalcCosto: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CalcCosto'
      Calculated = True
    end
    object QProductosValorEmp: TFloatField
      FieldKind = fkCalculated
      FieldName = 'ValorEmp'
      Calculated = True
    end
    object QProductospro_montoitbis: TBCDField
      FieldName = 'pro_montoitbis'
      currency = True
      Precision = 10
      Size = 2
    end
  end
  object dsProductos: TDataSource
    DataSet = QProductos
    Left = 440
    Top = 176
  end
  object QAlmacen: TADOQuery
    Connection = DM.ADOSigma
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
      'select'
      'alm_codigo, alm_nombre'
      'from'
      'almacen'
      'where'
      'emp_codigo = :par_invempresa'
      'order by'
      '2')
    Left = 408
    Top = 208
    object QAlmacenalm_codigo: TIntegerField
      FieldName = 'alm_codigo'
    end
    object QAlmacenalm_nombre: TStringField
      FieldName = 'alm_nombre'
      Size = 60
    end
  end
  object dsAlmacen: TDataSource
    DataSet = QAlmacen
    Left = 440
    Top = 208
  end
  object Query1: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <>
    Left = 248
    Top = 232
  end
end
