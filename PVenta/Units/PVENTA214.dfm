object frmPreciosUnidadMedida: TfrmPreciosUnidadMedida
  Left = 410
  Top = 220
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Precios por Unidad de Medida'
  ClientHeight = 182
  ClientWidth = 439
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 152
    Width = 54
    Height = 13
    Caption = 'Costo Neto'
  end
  object gunidades: TDBGrid
    Left = 0
    Top = 0
    Width = 439
    Height = 145
    Color = clInfoBk
    Ctl3D = False
    DataSource = dsUnidades
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnKeyPress = gunidadesKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'UnidadID'
        Title.Alignment = taCenter
        Title.Caption = 'Unidad'
        Width = 39
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nombre'
        Title.Caption = 'Nombre Unidad'
        Width = 83
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Cantidad'
        Width = 46
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Precio'
        Title.Alignment = taCenter
        Title.Caption = 'Contado'
        Width = 79
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Credito'
        Title.Alignment = taCenter
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Minimo'
        Title.Alignment = taCenter
        Width = 83
        Visible = True
      end>
  end
  object BitBtn1: TBitBtn
    Left = 360
    Top = 152
    Width = 75
    Height = 25
    Caption = 'Salir'
    TabOrder = 1
    OnClick = BitBtn1Click
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF00FF00C0C8EA000B2D
      B3001333B4001938B8001B3AB8001939B8001839B9001537B8001237BD000D34
      C0000A31BE00062EBF00022BC0000026B600001D9400FFFFFF00072FCF00183E
      D7002449D9002C4FDB002F52DC002C51DC002B52DD002750DD00224FDF001B4B
      E1001447E1000C42E200053AE0000032D8000026B700FFFFFF000B35DC002349
      E0003154E1003A5CE3003D5EE4004667E600C1CCF700FFFFFF00E5EAFC007595
      F1001B51E900124AE9000A43E8000339E100012BC000FFFFFF001039DD002E52
      E1003D5EE4004665E500BAC6F600FFFFFF0093A8F1003A63E700597EEC00E4EB
      FC00FFFFFF001750EA000E48EA00073DE200042EC200FFFFFF00153EDE00385A
      E3004665E50090A2EF00FFFFFF00496AE6004468E7003D66E7003562E8002B5C
      E9007496F100FFFFFF00134BE9000E42E1000A32C200FFFFFF001C42DF004261
      E4004E6BE600FFFFFF00516EE6004C6CE6004669E700FFFFFF003661E7002C5C
      E8002457E900E3E9FC006E8FF0001647E1001037C300FFFFFF002248DF004B69
      E5005470E700FFFFFF00536FE7004D6BE6004668E600FFFFFF00355EE6002B59
      E7002353E600476FEB00F1F4FD001D4BE000163BC100FFFFFF00284DE000526E
      E7005973E800FFFFFF00546FE7004D6AE6004565E500FFFFFF00345BE4002B55
      E5002450E5001E4DE500FFFFFF00244EDF001B3DC000FFFFFF002F52E1005D77
      E800607AE800FFFFFF00556FE7004D69E5004564E400FFFFFF003458E3002B53
      E300264FE300748FED00C8D2F8002950DD001F40BF00FFFFFF003255E2006780
      E9006881E900F5F7FE00A1AEF200506BE6004764E400FFFFFF003658E2002E53
      E2002A50E200FFFFFF003659E4002D52DD002242BF00FFFFFF003759E3007089
      EB00718AEB006780EA00FFFFFF009EADF1004B67E5004361E4003B5CE3003456
      E200FFFFFF00B0BDF4002D51E2002E51DE002443BF00FFFFFF003E5EE3007F96
      ED008398ED00718AEB00657EE900F5F6FE00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0091A4F000385AE3003457E2003053DD002140BD00FFFFFF004867E50094A6
      F00096A8F0008095ED00728BEB006B84EA00657EE800617BE8005E78E8005A75
      E8005370E6004B6AE5004061E4003154DD001B3BBC00FFFFFF005D78E8008FA2
      EF0092A5F0007B92EC00718AEB006781E900647EE900607AE8005E78E8005874
      E7005370E6004A69E5003D5EE4002C50DB001636B900FFFFFF00FFFFFF00607B
      E8004261E4003859E3003557E2003053E2003254E2003154E2002B4EE100284D
      E1002349DF002449E0001B42DF00133AD500B2BCE600FFFFFF00}
  end
  object BitBtn2: TBitBtn
    Left = 280
    Top = 152
    Width = 75
    Height = 25
    Caption = 'Grabar'
    TabOrder = 2
    OnClick = BitBtn2Click
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
  object DBEdit43: TDBEdit
    Left = 72
    Top = 152
    Width = 89
    Height = 21
    TabStop = False
    BevelKind = bkFlat
    BorderStyle = bsNone
    Color = clInfoBk
    DataField = 'Valor'
    DataSource = dsProductos
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
    OnEnter = DBEdit43Enter
  end
  object QMedidas: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    BeforePost = QMedidasBeforePost
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
      'UnidadID, Nombre'
      'from'
      'UnidadMedida'
      'where'
      'emp_codigo = :par_invempresa'
      'order by'
      'Nombre')
    Left = 152
    Top = 80
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
    Left = 184
    Top = 80
  end
  object QUnidades: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    BeforePost = QUnidadesBeforePost
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
    Left = 152
    Top = 48
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
  end
  object dsUnidades: TDataSource
    DataSet = QUnidades
    Left = 184
    Top = 48
  end
  object QProductos: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    OnCalcFields = QProductosCalcFields
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
      'pro_patrocinador, UnidadID, pro_montoitbis'
      'from '
      'PRODUCTOS'
      'where '
      'emp_codigo = :par_invempresa'
      'and pro_codigo = :prod')
    Left = 80
    Top = 48
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
    object QProductospro_montoitbis: TBCDField
      FieldName = 'pro_montoitbis'
      Precision = 10
      Size = 2
    end
  end
  object dsProductos: TDataSource
    AutoEdit = False
    DataSet = QProductos
    Left = 112
    Top = 48
  end
end
