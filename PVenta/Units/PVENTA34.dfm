object frmPrecios: TfrmPrecios
  Left = 627
  Top = 360
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Precios'
  ClientHeight = 271
  ClientWidth = 464
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  DesignSize = (
    464
    271)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 43
    Height = 13
    Caption = 'Producto'
  end
  object BitBtn1: TBitBtn
    Left = 312
    Top = 104
    Width = 83
    Height = 25
    Caption = 'Esc - &Salir'
    TabOrder = 0
    OnClick = BitBtn1Click
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
  object edProducto: TEdit
    Left = 80
    Top = 8
    Width = 369
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
    TabOrder = 1
  end
  object PageControl1: TPageControl
    Left = 8
    Top = 40
    Width = 449
    Height = 193
    ActivePage = TabSheet2
    TabOrder = 2
    TabStop = False
    object TabSheet1: TTabSheet
      Caption = 'Precios'
      object Label2: TLabel
        Left = 8
        Top = 16
        Width = 67
        Height = 13
        Caption = '[ F2 ] Precio 1'
      end
      object Label3: TLabel
        Left = 8
        Top = 40
        Width = 67
        Height = 13
        Caption = '[ F3 ] Precio 2'
      end
      object Label4: TLabel
        Left = 224
        Top = 16
        Width = 67
        Height = 13
        Caption = '[ F4 ] Precio 3'
      end
      object Label5: TLabel
        Left = 224
        Top = 40
        Width = 67
        Height = 13
        Caption = '[ F5 ] Precio 4'
      end
      object edPrecio1: TEdit
        Left = 80
        Top = 16
        Width = 105
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
        TabOrder = 0
      end
      object edPrecio2: TEdit
        Left = 80
        Top = 40
        Width = 105
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
        TabOrder = 1
      end
      object edPrecio3: TEdit
        Left = 296
        Top = 16
        Width = 105
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
        TabOrder = 2
      end
      object edPrecio4: TEdit
        Left = 296
        Top = 40
        Width = 105
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
        TabOrder = 3
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Precios'
      ImageIndex = 1
      object gunidades: TDBGrid
        Left = 0
        Top = 0
        Width = 441
        Height = 165
        Align = alClient
        Color = clInfoBk
        Ctl3D = False
        DataSource = dsUnidades
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = gunidadesDblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'Nombre'
            Title.Caption = 'Unidad'
            Width = 61
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cantidad'
            Title.Alignment = taCenter
            Title.Caption = 'Cant'
            Width = 27
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Precio'
            Title.Alignment = taCenter
            Title.Caption = 'Contado'
            Width = 63
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Credito'
            Title.Alignment = taCenter
            Width = 63
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Minimo'
            Title.Alignment = taCenter
            Width = 63
            Visible = True
          end>
      end
    end
  end
  object btClose: TBitBtn
    Left = 352
    Top = 240
    Width = 104
    Height = 25
    Anchors = [akTop, akRight]
    Caption = '[ESC] - &Salir'
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
  object QProductos: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    DataSource = DM.dsParametros
    Parameters = <
      item
        Name = 'par_invempresa'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'prod'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select '
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
      'pro_minimo_venta, pro_volumen, ger_codigo, gon_codigo,'
      'pro_patrocinador, UnidadID'
      'from '
      'PRODUCTOS'
      'where '
      'emp_codigo = :par_invempresa'
      'and pro_codigo = :prod')
    Left = 88
    Top = 144
    object QProductosEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
    end
    object QProductosPRO_CODIGO: TIntegerField
      FieldName = 'PRO_CODIGO'
    end
    object QProductosPRO_RORIGINAL: TIBStringField
      FieldName = 'PRO_RORIGINAL'
      Size = 50
    end
    object QProductosPRO_RFABRIC: TIBStringField
      FieldName = 'PRO_RFABRIC'
      Size = 60
    end
    object QProductosPRO_NOMBRE: TIBStringField
      FieldName = 'PRO_NOMBRE'
      Size = 60
    end
    object QProductosFAM_CODIGO: TIntegerField
      FieldName = 'FAM_CODIGO'
    end
    object QProductosCOL_CODIGO: TIntegerField
      FieldName = 'COL_CODIGO'
    end
    object QProductosPRO_BARRA: TIBStringField
      FieldName = 'PRO_BARRA'
      Size = 30
    end
    object QProductosPRO_DESCMAX: TFloatField
      FieldName = 'PRO_DESCMAX'
      currency = True
    end
    object QProductosPRO_ULTCOSTO: TFloatField
      FieldName = 'PRO_ULTCOSTO'
      currency = True
    end
    object QProductosPRO_COSTO: TFloatField
      FieldName = 'PRO_COSTO'
      currency = True
    end
    object QProductosPRO_PRECIO1: TFloatField
      FieldName = 'PRO_PRECIO1'
      currency = True
    end
    object QProductosPRO_PRECIO2: TFloatField
      FieldName = 'PRO_PRECIO2'
      currency = True
    end
    object QProductosPRO_PRECIO3: TFloatField
      FieldName = 'PRO_PRECIO3'
      currency = True
    end
    object QProductosPRO_PRECIO4: TFloatField
      FieldName = 'PRO_PRECIO4'
      currency = True
    end
    object QProductosPRO_DISPLAY: TIBStringField
      FieldName = 'PRO_DISPLAY'
      Size = 30
    end
    object QProductosPRO_STATUS: TIBStringField
      FieldName = 'PRO_STATUS'
      Size = 3
    end
    object QProductosPRO_INVINICIAL: TFloatField
      FieldName = 'PRO_INVINICIAL'
    end
    object QProductosPRO_EXISTENCIA: TFloatField
      FieldName = 'PRO_EXISTENCIA'
    end
    object QProductosPRO_UBICACION: TIBStringField
      FieldName = 'PRO_UBICACION'
      Size = 10
    end
    object QProductosPRO_STKMINIMO: TFloatField
      FieldName = 'PRO_STKMINIMO'
    end
    object QProductosPRO_STKMAXIMO: TFloatField
      FieldName = 'PRO_STKMAXIMO'
    end
    object QProductosPRO_INVFISICO: TFloatField
      FieldName = 'PRO_INVFISICO'
    end
    object QProductosPRO_PEDIDOPRV: TFloatField
      FieldName = 'PRO_PEDIDOPRV'
    end
    object QProductosPRO_PEDIDOCLI: TFloatField
      FieldName = 'PRO_PEDIDOCLI'
    end
    object QProductosPRO_CTAINVENT: TIBStringField
      FieldName = 'PRO_CTAINVENT'
      Size = 15
    end
    object QProductosPRO_CTACOSTO: TIBStringField
      FieldName = 'PRO_CTACOSTO'
      Size = 15
    end
    object QProductosDEP_CODIGO: TIntegerField
      FieldName = 'DEP_CODIGO'
    end
    object QProductosPRO_ITBIS: TIBStringField
      FieldName = 'PRO_ITBIS'
      Size = 1
    end
    object QProductosPRO_BENEFICIO: TFloatField
      FieldName = 'PRO_BENEFICIO'
      Origin = 'PRODUCTOS.PRO_BENEFICIO'
      currency = True
    end
    object QProductosPRO_ESCALA: TIBStringField
      FieldName = 'PRO_ESCALA'
      Origin = 'PRODUCTOS.PRO_ESCALA'
      Size = 5
    end
    object QProductosPRO_SERVICIO: TIBStringField
      FieldName = 'PRO_SERVICIO'
      Origin = 'PRODUCTOS.PRO_SERVICIO'
      Size = 5
    end
    object QProductosMAR_CODIGO: TIntegerField
      FieldName = 'MAR_CODIGO'
      Origin = 'PRODUCTOS.MAR_CODIGO'
    end
    object QProductosPRO_COMISION: TFloatField
      FieldName = 'PRO_COMISION'
      Origin = 'PRODUCTOS.PRO_COMISION'
      currency = True
    end
    object QProductosPRO_VENCE: TIBStringField
      FieldName = 'PRO_VENCE'
      Origin = 'PRODUCTOS.PRO_VENCE'
      Size = 5
    end
    object QProductosPRO_BENEFICIO2: TFloatField
      FieldName = 'PRO_BENEFICIO2'
      Origin = 'PRODUCTOS.PRO_BENEFICIO2'
      currency = True
    end
    object QProductosPRO_BENEFICIO3: TFloatField
      FieldName = 'PRO_BENEFICIO3'
      Origin = 'PRODUCTOS.PRO_BENEFICIO3'
      currency = True
    end
    object QProductosPRO_BENEFICIO4: TFloatField
      FieldName = 'PRO_BENEFICIO4'
      Origin = 'PRODUCTOS.PRO_BENEFICIO4'
      currency = True
    end
    object QProductosPRO_USO: TIBStringField
      FieldName = 'PRO_USO'
      Origin = 'PRODUCTOS.PRO_USO'
      Size = 60
    end
    object QProductosSUP_CODIGO: TIntegerField
      FieldName = 'SUP_CODIGO'
      Origin = 'PRODUCTOS.SUP_CODIGO'
    end
    object QProductosPRO_NUEVOUSADO: TIBStringField
      FieldName = 'PRO_NUEVOUSADO'
      Origin = 'PRODUCTOS.PRO_NUEVOUSADO'
      Size = 1
    end
    object QProductosPRO_COSTOUS: TFloatField
      FieldName = 'PRO_COSTOUS'
      Origin = 'PRODUCTOS.PRO_COSTOUS'
      currency = True
    end
    object QProductosPRO_TASACOMPRA: TFloatField
      FieldName = 'PRO_TASACOMPRA'
      Origin = 'PRODUCTOS.PRO_TASACOMPRA'
      currency = True
    end
    object QProductosPRO_TASAVENTA: TFloatField
      FieldName = 'PRO_TASAVENTA'
      Origin = 'PRODUCTOS.PRO_TASAVENTA'
      currency = True
    end
    object QProductosPRO_PRECIOMENOR: TFloatField
      FieldName = 'PRO_PRECIOMENOR'
      Origin = 'PRODUCTOS.PRO_PRECIOMENOR'
      currency = True
    end
    object QProductosPRO_EXISTEMPAQUE: TFloatField
      FieldName = 'PRO_EXISTEMPAQUE'
      Origin = 'PRODUCTOS.PRO_EXISTEMPAQUE'
    end
    object QProductosPRO_CANTEMPAQUE: TFloatField
      FieldName = 'PRO_CANTEMPAQUE'
      Origin = 'PRODUCTOS.PRO_CANTEMPAQUE'
    end
    object QProductosPRO_COSTOEMPAQUE: TFloatField
      FieldName = 'PRO_COSTOEMPAQUE'
      Origin = 'PRODUCTOS.PRO_COSTOEMPAQUE'
      currency = True
    end
    object QProductosPRO_COMBO: TIBStringField
      FieldName = 'PRO_COMBO'
      Origin = 'PRODUCTOS.PRO_COMBO'
      Size = 5
    end
    object QProductosPRO_INVINICIALEMP: TFloatField
      FieldName = 'PRO_INVINICIALEMP'
      Origin = 'PRODUCTOS.PRO_INVINICIALEMP'
    end
    object QProductosPRO_STKMINIMOEMP: TFloatField
      FieldName = 'PRO_STKMINIMOEMP'
      Origin = 'PRODUCTOS.PRO_STKMINIMOEMP'
    end
    object QProductosPRO_STKMAXIMOEMP: TFloatField
      FieldName = 'PRO_STKMAXIMOEMP'
      Origin = 'PRODUCTOS.PRO_STKMAXIMOEMP'
    end
    object QProductosPRO_PRECIOMENOREMP: TFloatField
      FieldName = 'PRO_PRECIOMENOREMP'
      Origin = 'PRODUCTOS.PRO_PRECIOMENOREMP'
      currency = True
    end
    object QProductosPRO_ALMACENBAR: TIntegerField
      FieldName = 'PRO_ALMACENBAR'
      Origin = 'PRODUCTOS.PRO_ALMACENBAR'
    end
    object QProductosMON_CODIGO: TIntegerField
      FieldName = 'MON_CODIGO'
    end
    object QProductosPRO_COMISIONDESCUENTO: TBCDField
      FieldName = 'PRO_COMISIONDESCUENTO'
      currency = True
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
    object QProductosCalcCosto: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CalcCosto'
      currency = True
      Calculated = True
    end
    object QProductosCalcCostoEmp: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CalcCostoEmp'
      currency = True
      Calculated = True
    end
    object QProductosValor: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Valor'
      currency = True
      Calculated = True
    end
    object QProductosValorEmp: TFloatField
      FieldKind = fkCalculated
      FieldName = 'ValorEmp'
      currency = True
      Calculated = True
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
      currency = True
      Precision = 15
      Size = 2
    end
    object QProductospro_selectivo_con: TBCDField
      FieldName = 'pro_selectivo_con'
      currency = True
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
    object QProductosger_codigo: TIntegerField
      FieldName = 'ger_codigo'
    end
    object QProductosgon_codigo: TIntegerField
      FieldName = 'gon_codigo'
    end
    object QProductospro_patrocinador: TStringField
      FieldName = 'pro_patrocinador'
      Size = 5
    end
    object QProductosUnidadID: TStringField
      FieldName = 'UnidadID'
      Size = 1
    end
  end
  object dsProductos: TDataSource
    AutoEdit = False
    DataSet = QProductos
    Left = 120
    Top = 144
  end
  object QUnidades: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    OnCalcFields = QUnidadesCalcFields
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
        Name = 'pro_codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'p.emp_codigo, p.pro_codigo, p.UnidadID, p.Precio, p.Cantidad,'
      'p.Secuencia, p.Credito, p.Minimo'
      'from'
      'ProdUnidadMedida p'
      'where'
      'p.emp_codigo = :emp_codigo'
      'and p.pro_codigo = :pro_codigo'
      'order by'
      'p.Secuencia')
    Left = 160
    Top = 144
    object QUnidadesemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QUnidadespro_codigo: TIntegerField
      FieldName = 'pro_codigo'
    end
    object QUnidadesUnidadID: TStringField
      FieldName = 'UnidadID'
      Size = 1
    end
    object QUnidadesCantidad: TBCDField
      FieldName = 'Cantidad'
      Precision = 18
      Size = 2
    end
    object QUnidadesSecuencia: TIntegerField
      FieldName = 'Secuencia'
    end
    object QUnidadesNombre: TStringField
      FieldKind = fkLookup
      FieldName = 'Nombre'
      LookupDataSet = QMedidas
      LookupKeyFields = 'UnidadID'
      LookupResultField = 'Nombre'
      KeyFields = 'UnidadID'
      Lookup = True
    end
    object QUnidadesPrecio: TBCDField
      FieldName = 'Precio'
      currency = True
      Precision = 18
      Size = 2
    end
    object QUnidadesCredito: TBCDField
      FieldName = 'Credito'
      currency = True
      Precision = 18
      Size = 2
    end
    object QUnidadesMinimo: TBCDField
      FieldName = 'Minimo'
      currency = True
      Precision = 18
      Size = 2
    end
    object QUnidadesPrecioNeto: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PrecioNeto'
      currency = True
      Calculated = True
    end
  end
  object QMedidas: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
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
      'UnidadID, Nombre'
      'from'
      'UnidadMedida'
      'where'
      'emp_codigo = :emp_codigo'
      'order by'
      'Nombre')
    Left = 160
    Top = 176
    object QMedidasUnidadID: TStringField
      FieldName = 'UnidadID'
      Size = 1
    end
    object QMedidasNombre: TStringField
      FieldName = 'Nombre'
    end
  end
  object dsMedida: TDataSource
    DataSet = QMedidas
    Left = 192
    Top = 176
  end
  object dsUnidades: TDataSource
    DataSet = QUnidades
    Left = 192
    Top = 144
  end
end
