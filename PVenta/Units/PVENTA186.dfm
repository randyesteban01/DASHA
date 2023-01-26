object frmConsProdClienteFac: TfrmConsProdClienteFac
  Left = 469
  Top = 166
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Movimientos por cliente'
  ClientHeight = 363
  ClientWidth = 694
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 40
    Width = 694
    Height = 323
    Align = alBottom
    DataSource = dsFacturas
    Options = [dgTitles, dgColLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'tfa_codigo'
        Title.Alignment = taCenter
        Title.Caption = 'Tipo'
        Width = 25
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'factura'
        Title.Alignment = taCenter
        Title.Caption = 'N'#250'mero'
        Width = 100
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'fac_fecha'
        Title.Alignment = taCenter
        Title.Caption = 'Fecha'
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fac_nombre'
        Title.Caption = 'Nombre'
        Width = 258
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'det_cantidad'
        Title.Alignment = taCenter
        Title.Caption = 'Cant'
        Width = 53
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'mon_sigla'
        Title.Alignment = taCenter
        Title.Caption = '$'
        Width = 26
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'det_precio'
        Title.Alignment = taCenter
        Title.Caption = 'Precio'
        Width = 87
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'det_descuento'
        Title.Alignment = taCenter
        Title.Caption = '%Desc'
        Width = 38
        Visible = True
      end>
  end
  object CheckBox1: TCheckBox
    Left = 8
    Top = 16
    Width = 217
    Height = 17
    Caption = 'Todos los clientes'
    TabOrder = 1
    OnClick = CheckBox1Click
  end
  object btclose: TBitBtn
    Left = 592
    Top = 8
    Width = 91
    Height = 25
    Caption = '[Esc] - Salir'
    TabOrder = 2
    OnClick = btcloseClick
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
  object Memo1: TMemo
    Left = 48
    Top = 160
    Width = 361
    Height = 89
    Lines.Strings = (
      'Memo1')
    TabOrder = 3
    Visible = False
  end
  object QFacturas: TADOQuery
    Connection = DM.ADOSigma
    OnCalcFields = QFacturasCalcFields
    Parameters = <
      item
        Name = 'emp'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'pro'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      
        'f.tfa_codigo, f.fac_numero, f.fac_fecha, f.fac_nombre, '#39#39' as num' +
        'ero,'
      '(d.det_precio/f.fac_tasa) as det_precio,'
      'd.det_descuento, d.det_cantidad,'
      'm.mon_sigla'
      'from'
      'facturas f'
      'left outer join moneda m on (f.emp_codigo = m.emp_codigo'
      'and f.mon_codigo = m.mon_codigo), det_factura d'
      'where'
      'f.emp_codigo = d.emp_codigo'
      'and f.fac_forma = d.fac_forma'
      'and f.tfa_codigo = d.tfa_codigo'
      'and f.fac_numero = d.fac_numero'
      'and f.suc_codigo = d.suc_codigo'
      'and f.alm_codigo = d.alm_codigo'
      'and f.emp_codigo = :emp'
      'and f.fac_status <> '#39'ANU'#39
      'and d.pro_codigo = :pro'
      ''
      '')
    Left = 200
    Top = 112
    object QFacturastfa_codigo: TIntegerField
      FieldName = 'tfa_codigo'
    end
    object QFacturasfac_numero: TIntegerField
      FieldName = 'fac_numero'
    end
    object QFacturasfac_fecha: TDateTimeField
      FieldName = 'fac_fecha'
    end
    object QFacturasfac_nombre: TStringField
      FieldName = 'fac_nombre'
      Size = 60
    end
    object QFacturasdet_precio: TBCDField
      FieldName = 'det_precio'
      currency = True
      Precision = 15
    end
    object QFacturasdet_descuento: TBCDField
      FieldName = 'det_descuento'
      currency = True
      Precision = 15
      Size = 2
    end
    object QFacturasdet_cantidad: TBCDField
      FieldName = 'det_cantidad'
      Precision = 15
      Size = 2
    end
    object QFacturasmon_sigla: TStringField
      FieldName = 'mon_sigla'
      Size = 5
    end
    object QFacturasnumero: TStringField
      DisplayWidth = 30
      FieldName = 'numero'
      ReadOnly = True
      Size = 30
    end
    object QFacturasfactura: TStringField
      FieldKind = fkCalculated
      FieldName = 'factura'
      Size = 30
      Calculated = True
    end
  end
  object dsFacturas: TDataSource
    DataSet = QFacturas
    Left = 232
    Top = 112
  end
end
