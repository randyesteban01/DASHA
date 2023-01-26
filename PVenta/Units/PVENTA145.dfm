object frmPrecioSucursal: TfrmPrecioSucursal
  Left = 462
  Top = 110
  ActiveControl = DBEdit1
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Precios'
  ClientHeight = 224
  ClientWidth = 419
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Trebuchet MS'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel
    Left = 8
    Top = 32
    Width = 41
    Height = 16
    Caption = 'Sucursal'
  end
  object Label3: TLabel
    Left = 8
    Top = 96
    Width = 62
    Height = 16
    Caption = '% Beneficio1'
  end
  object Label4: TLabel
    Left = 8
    Top = 64
    Width = 56
    Height = 16
    Caption = 'Costo Neto'
  end
  object Label2: TLabel
    Left = 8
    Top = 128
    Width = 62
    Height = 16
    Caption = '% Beneficio2'
  end
  object Label5: TLabel
    Left = 8
    Top = 160
    Width = 62
    Height = 16
    Caption = '% Beneficio3'
  end
  object Label6: TLabel
    Left = 8
    Top = 192
    Width = 62
    Height = 16
    Caption = '% Beneficio4'
  end
  object lbprod: TStaticText
    Left = 0
    Top = 0
    Width = 419
    Height = 20
    Align = alTop
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSingle
    Color = clSkyBlue
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 0
  end
  object cbSucursal: TDBLookupComboBox
    Left = 80
    Top = 32
    Width = 329
    Height = 24
    DataField = 'suc_codigo'
    DataSource = dsPrecios
    KeyField = 'suc_codigo'
    ListField = 'suc_nombre'
    ListSource = dsSucursal
    TabOrder = 1
  end
  object edCosto: TEdit
    Left = 80
    Top = 64
    Width = 97
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    Color = clInfoBk
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object DBEdit1: TDBEdit
    Left = 80
    Top = 96
    Width = 41
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'beneficio1'
    DataSource = dsPrecios
    TabOrder = 3
  end
  object DBEdit2: TDBEdit
    Left = 128
    Top = 96
    Width = 97
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'precio1'
    DataSource = dsPrecios
    TabOrder = 4
  end
  object btexit: TBitBtn
    Left = 328
    Top = 192
    Width = 75
    Height = 25
    Caption = 'Salir'
    TabOrder = 12
    OnClick = btexitClick
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
  object btgrabar: TBitBtn
    Left = 248
    Top = 192
    Width = 75
    Height = 25
    Caption = 'Grabar'
    TabOrder = 11
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
  object DBEdit3: TDBEdit
    Left = 80
    Top = 128
    Width = 41
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'beneficio2'
    DataSource = dsPrecios
    TabOrder = 5
  end
  object DBEdit4: TDBEdit
    Left = 128
    Top = 128
    Width = 97
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'precio2'
    DataSource = dsPrecios
    TabOrder = 6
  end
  object DBEdit5: TDBEdit
    Left = 80
    Top = 160
    Width = 41
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'beneficio3'
    DataSource = dsPrecios
    TabOrder = 7
  end
  object DBEdit6: TDBEdit
    Left = 128
    Top = 160
    Width = 97
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'precio3'
    DataSource = dsPrecios
    TabOrder = 8
  end
  object DBEdit7: TDBEdit
    Left = 80
    Top = 192
    Width = 41
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'beneficio4'
    DataSource = dsPrecios
    TabOrder = 9
  end
  object DBEdit8: TDBEdit
    Left = 128
    Top = 192
    Width = 97
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'precio4'
    DataSource = dsPrecios
    TabOrder = 10
  end
  object QPrecios: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
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
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'suc'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'emp_codigo, suc_codigo, pro_codigo, precio1, precio2,'
      'precio3, precio4, beneficio1, beneficio2, beneficio3,'
      'beneficio4'
      'from'
      'precios'
      'where'
      'emp_codigo = :emp'
      'and pro_codigo = :pro'
      'and suc_codigo = :suc')
    Left = 232
    Top = 128
    object QPreciosemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QPreciossuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object QPreciospro_codigo: TIntegerField
      FieldName = 'pro_codigo'
    end
    object QPreciosprecio1: TBCDField
      FieldName = 'precio1'
      currency = True
      Precision = 15
      Size = 2
    end
    object QPreciosprecio2: TBCDField
      FieldName = 'precio2'
      currency = True
      Precision = 15
      Size = 2
    end
    object QPreciosprecio3: TBCDField
      FieldName = 'precio3'
      currency = True
      Precision = 15
      Size = 2
    end
    object QPreciosprecio4: TBCDField
      FieldName = 'precio4'
      currency = True
      Precision = 15
      Size = 2
    end
    object QPreciosbeneficio1: TBCDField
      FieldName = 'beneficio1'
      OnChange = QPreciosbeneficio1Change
      currency = True
      Precision = 15
      Size = 2
    end
    object QPreciosbeneficio2: TBCDField
      FieldName = 'beneficio2'
      OnChange = QPreciosbeneficio2Change
      currency = True
      Precision = 15
      Size = 2
    end
    object QPreciosbeneficio3: TBCDField
      FieldName = 'beneficio3'
      OnChange = QPreciosbeneficio3Change
      currency = True
      Precision = 15
      Size = 2
    end
    object QPreciosbeneficio4: TBCDField
      FieldName = 'beneficio4'
      OnChange = QPreciosbeneficio4Change
      currency = True
      Precision = 15
      Size = 2
    end
  end
  object dsPrecios: TDataSource
    DataSet = QPrecios
    Left = 264
    Top = 128
  end
  object QSucursal: TADOQuery
    Connection = DM.ADOSigma
    DataSource = DM.dsEmpresas
    Parameters = <
      item
        Name = 'emp_codigo'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'emp'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'pro'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'suc_codigo, suc_nombre'
      'from'
      'sucursales'
      'where'
      'emp_codigo = :emp_codigo'
      'and suc_codigo not in (select suc_codigo from precios'
      'where emp_codigo = :emp'
      'and pro_codigo = :pro)'
      'order by'
      'suc_nombre')
    Left = 232
    Top = 96
    object QSucursalsuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object QSucursalsuc_nombre: TStringField
      FieldName = 'suc_nombre'
      Size = 60
    end
  end
  object dsSucursal: TDataSource
    DataSet = QSucursal
    Left = 264
    Top = 96
  end
end
