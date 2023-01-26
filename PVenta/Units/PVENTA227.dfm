object frmPreciosUnidadMedidaFacProvee: TfrmPreciosUnidadMedidaFacProvee
  Left = 902
  Top = 713
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
  object QMedidas: TADOQuery
    Active = True
    Connection = DM.ADOSigma
    CursorType = ctStatic
    BeforePost = QMedidasBeforePost
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
        Name = '-1'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = '-1'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'p.emp_codigo, p.sup_codigo, p.fac_numero, p.pro_codigo, '
      'p.UnidadID, p.Precio, p.Cantidad, p.Secuencia, p.Credito, '
      'p.Minimo'
      'from'
      'ProvfacturasUnidadMedida p'
      'where'
      'p.emp_codigo = :-1'
      'and p.sup_codigo = :-1'
      'order by'
      'p.Secuencia')
    Left = 152
    Top = 48
    object QUnidadesemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QUnidadessup_codigo: TIntegerField
      FieldName = 'sup_codigo'
    end
    object QUnidadesfac_numero: TStringField
      FieldName = 'fac_numero'
      Size = 15
    end
    object QUnidadespro_codigo: TIntegerField
      FieldName = 'pro_codigo'
    end
    object QUnidadesUnidadID: TStringField
      FieldName = 'UnidadID'
      Size = 1
    end
    object QUnidadesPrecio: TBCDField
      FieldName = 'Precio'
      currency = True
      Precision = 18
      Size = 2
    end
    object QUnidadesCantidad: TBCDField
      FieldName = 'Cantidad'
      Precision = 18
      Size = 2
    end
    object QUnidadesSecuencia: TIntegerField
      FieldName = 'Secuencia'
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
    object QUnidadesNombre: TStringField
      FieldKind = fkLookup
      FieldName = 'Nombre'
      LookupDataSet = QMedidas
      LookupKeyFields = 'UnidadID'
      LookupResultField = 'Nombre'
      KeyFields = 'UnidadID'
      Size = 30
      Lookup = True
    end
  end
  object dsUnidades: TDataSource
    DataSet = QUnidades
    Left = 184
    Top = 48
  end
end
