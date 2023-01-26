object frmCashflowTransaccion: TfrmCashflowTransaccion
  Left = 197
  Top = 312
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Transacci'#243'n Cashflow'
  ClientHeight = 375
  ClientWidth = 939
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  DesignSize = (
    939
    375)
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 939
    Height = 337
    Align = alTop
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = dsTransacciones
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'cen_codigo'
        Title.Caption = 'Centro #'
        Width = 53
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cen_nombre'
        Title.Caption = 'Nombre del Centro de Costo'
        Width = 198
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'mapid'
        Title.Alignment = taCenter
        Title.Caption = 'Map ID'
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'detallemapid'
        Title.Alignment = taCenter
        Title.Caption = 'Detalle MAP'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TransaccionID'
        Title.Alignment = taCenter
        Title.Caption = 'ID'
        Width = 39
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Fecha'
        Title.Alignment = taCenter
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Monto'
        Title.Alignment = taCenter
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Concepto'
        Width = 242
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nombre'
        Width = 240
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Documento'
        Title.Alignment = taCenter
        Title.Caption = '# Documento'
        Width = 87
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Status'
        Title.Alignment = taCenter
        Visible = True
      end>
  end
  object btClose: TBitBtn
    Left = 856
    Top = 344
    Width = 73
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = '&Salir'
    TabOrder = 1
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
  object BitBtn1: TBitBtn
    Left = 552
    Top = 344
    Width = 81
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Eliminar'
    TabOrder = 2
    OnClick = BitBtn1Click
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00
      FF002900DD002900DF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF0008002C002100B60000000000FF00FF00FF00FF00FF00
      FF002900DE002900DF001200640000000000FF00FF00FF00FF00FF00FF00FF00
      FF00000000001D009D002900DF0019008600FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF002900DE002900DF000000000000000000FF00FF00FF00FF000000
      00002500C8002900DF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF002900DF002900DF000000000000000000000000002500
      C8002900DF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF002900DF002700D600000000002500C7002900
      DF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF002900DE002900DF002900DF000000
      0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00000000002800D8002900DF002900DF000000
      000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00000000002500C8002900DF00000000002900DF002900
      DF000400140000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00000000002500C8002900DF0000000000FF00FF00FF00FF002900
      DF002900DF0011005A000000000000000000FF00FF00FF00FF00FF00FF00FF00
      FF00000000002400C7002900DF0009002F00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF002900DF002200BB0000000000FF00FF00FF00FF00FF00FF00FF00
      FF002800D8002900DF0019008700FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF002900DC00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF002900DF002300BE0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
  end
  object BitBtn2: TBitBtn
    Left = 472
    Top = 344
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Modificar'
    TabOrder = 3
    OnClick = BitBtn2Click
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
  end
  object BitBtn3: TBitBtn
    Left = 392
    Top = 344
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Insertar'
    TabOrder = 4
    OnClick = BitBtn3Click
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF0000000000FF00FF00FF00FF0080000000800000008000000080000000FF00
      FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF0000000000FF00FF00FF00FF0080000000800000008000000080000000FF00
      FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF0000000000FF00FF00FF00FF00800000008000000080000000FF00FF000000
      00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
      0000C0C0C00000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
      000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
  end
  object BitBtn4: TBitBtn
    Left = 720
    Top = 344
    Width = 129
    Height = 25
    Caption = 'Asignar a otro concepto'
    TabOrder = 5
    OnClick = BitBtn4Click
  end
  object BitBtn5: TBitBtn
    Left = 640
    Top = 344
    Width = 75
    Height = 25
    Caption = 'Notas'
    TabOrder = 6
    OnClick = BitBtn5Click
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFF9F3F3D7ACA5DBB2A8DAB7B3EAD7D5F7EFEEFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFDFBFBF7F0EFFFFFFFE2C6C3F5DDCFFFEDDAF7
      DAC5EBC2AFDEAF9FD6AAA1DFBFBAEDDCDBFCFAFAFFFFFFFFFFFFFFFFFFE1C6C3
      DEB7AAD7AEA5D5ABA4FFF5E8F8E3D4F8E0CEFADEC8FADCC3F8D6BAF1C6A9E4B0
      96D9A695D8AEA6E3C8C5FEFDFDD7B0ABFFFEEEEFD0BFE8D0CBFEF5ECFAE9DCF8
      E3D4F7DDCBF5D7C3F4D2BBF4CDB3F5CCADF7CCAAF7CCA9D2A39AF2E6E6E5C9C1
      FFFBEFE0BEB3F4EBEAFEF7F2FBEFE6FAE8DFF9E3D5F7DFCDF6D8C5F4D3BCF2CD
      B2F6CFB0E0AD97F0E3E2E4CBC8F4E9E5FDF5ECDFBDB8FCFAFAFEFBF8FDF4EEFB
      EEE7FAE9DDF9E4D5F7DECDF6D8C4F4D3BBF8D6BAD7ABA3FFFEFEDAB8B4FEFDFD
      F7EEE9E1C4C1FFFFFFFEFEFEFEFAF8FCF3F0FCEDE6FAE9DEF9E3D5F7DECDF7DC
      C6F0CBB6E3C8C6FFFFFFDAB7B4FFFFFFF3E7E7E5CECAFFFFFFFFFFFFFFFFFFFE
      FAF9FDF4EEFCEFE6FAE9DDF9E3D5FBE4D3E5BEAEF0E3E2FFFFFFE0C3C0FFFFFF
      F1E2E1E8D3D1FFFFFFFFFFFFFFFFFFFEFEFFFEFAF8FCF4EFFAEFE7F9E9DDFEEC
      DDE1B9AEF8F2F2FFFFFFE5CBC9FFFFFFF0E2DFE9D3D1FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFEFBF8FCF4F0FCF0E8FFF5EAE0BCB3FBF7F7FFFFFFE7D0CEFFFFFF
      F1E5E3E7D0CEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF9FBF5F0F7F3
      EEE0C0B9F5ECECFFFFFFE7CFCCFFFFFFF4EBEAE4C9C6FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFDFFFFE1B7B1E69F91CD928BF9F3F3FFFFFFE0C5C2FFFFFF
      FAF5F5DCBBB9F3E8E7F8F1EFF9F4F4FCF9F9FFFFFFFFFFFFFEFFFFE6B4ADDA95
      89F1E3E3FFFFFFFFFFFFDBB8B5FFFFFFFFFFFFEFDFDDE2C8C5E4CAC8E3C7C4E2
      C7C5DEBCB9E7C2BDE2C6C3CF9E9AF1E5E5FFFFFFFFFFFFFFFFFFDAB8B6F4EBEA
      FBF7F7FEFEFDFFFFFFFFFFFFFFFFFFFEFFFFE4BBB7D68A7EE5CDCBFCFAFAFFFF
      FFFFFFFFFFFFFFFFFFFFF6EEEEE2C6C4DCBCB8DAB8B4D9B7B4DBB9B8DEBFBDE3
      C9C6D2A7A2ECD9D7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
  end
  object QTransacciones: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    AfterInsert = QTransaccionesAfterInsert
    AfterEdit = QTransaccionesAfterEdit
    BeforePost = QTransaccionesBeforePost
    AfterPost = QTransaccionesAfterPost
    OnCalcFields = QTransaccionesCalcFields
    OnNewRecord = QTransaccionesNewRecord
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
        Name = 'con'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'fec1'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'fec2'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'cen1'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'cen2'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'map1'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'map2'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      
        't.GrupoID, t.SubgrupoID, t.ConceptoID, t.TransaccionID, t.Fecha,' +
        ' t.Monto, t.Status,'
      
        't.Concepto, t.emp_codigo, t.Recurrente, t.Cantidad_meses, t.Tran' +
        'saccion_recurrente,'
      
        't.Nombre, p.fac_numero as FacturaCxP, f.fac_numero as FacturaCxC' +
        ','
      't.cen_codigo, t.tasa, c.cen_nombre, t.mapid, t.detallemapid'
      'from'
      'Cashflow_Transacciones t'
      'left outer join provfacturas p on (t.emp_codigo = p.emp_codigo'
      'and t.GrupoID = p.Cashflow_Grupo'
      'and t.SubgrupoID = p.Cashflow_Subgrupo'
      'and t.ConceptoID = p.Cashflow_Concepto'
      'and t.TransaccionID = p.Cashflow_TransaccionID)'
      'left outer join facturas f on (t.emp_codigo = f.emp_codigo'
      'and t.GrupoID = f.Cashflow_Grupo'
      'and t.SubgrupoID = f.Cashflow_Subgrupo'
      'and t.ConceptoID = f.Cashflow_Concepto'
      'and t.TransaccionID = f.Cashflow_TransaccionID)'
      
        'left outer join CentroCostos c on (t.emp_codigo = c.emp_codigo a' +
        'nd t.cen_codigo = c.cen_codigo)'
      'where'
      't.emp_codigo = :emp'
      'and t.ConceptoID = :con'
      'and t.Fecha between convert(datetime, :fec1, 105)'
      'and convert(datetime, :fec2, 105)'
      'and isnull(t.cen_codigo,0) between :cen1 and :cen2'
      'and isnull(t.mapid,0) between :map1 and :map2'
      'order by'
      't.Fecha')
    Left = 288
    Top = 64
    object QTransaccionesGrupoID: TIntegerField
      FieldName = 'GrupoID'
    end
    object QTransaccionesSubgrupoID: TIntegerField
      FieldName = 'SubgrupoID'
    end
    object QTransaccionesConceptoID: TIntegerField
      FieldName = 'ConceptoID'
    end
    object QTransaccionesTransaccionID: TBCDField
      FieldName = 'TransaccionID'
      Precision = 18
      Size = 0
    end
    object QTransaccionesFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object QTransaccionesMonto: TBCDField
      FieldName = 'Monto'
      currency = True
      Precision = 18
      Size = 2
    end
    object QTransaccionesStatus: TStringField
      FieldName = 'Status'
      Size = 3
    end
    object QTransaccionesConcepto: TStringField
      FieldName = 'Concepto'
      Size = 200
    end
    object QTransaccionesemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QTransaccionesRecurrente: TStringField
      FieldName = 'Recurrente'
      Size = 5
    end
    object QTransaccionesCantidad_meses: TIntegerField
      FieldName = 'Cantidad_meses'
    end
    object QTransaccionesTransaccion_recurrente: TBCDField
      FieldName = 'Transaccion_recurrente'
      Precision = 18
      Size = 0
    end
    object QTransaccionesNombre: TStringField
      FieldName = 'Nombre'
      Size = 100
    end
    object QTransaccionesFacturaCxP: TStringField
      FieldName = 'FacturaCxP'
      Size = 15
    end
    object QTransaccionesFacturaCxC: TIntegerField
      FieldName = 'FacturaCxC'
    end
    object QTransaccionesDocumento: TStringField
      FieldKind = fkCalculated
      FieldName = 'Documento'
      Size = 30
      Calculated = True
    end
    object QTransaccionescen_codigo: TIntegerField
      FieldName = 'cen_codigo'
    end
    object QTransaccionestasa: TBCDField
      FieldName = 'tasa'
      Precision = 10
      Size = 2
    end
    object QTransaccionescen_nombre: TStringField
      FieldName = 'cen_nombre'
      Size = 60
    end
    object QTransaccionesmapid: TIntegerField
      FieldName = 'mapid'
    end
    object QTransaccionesdetallemapid: TIntegerField
      FieldName = 'detallemapid'
    end
  end
  object dsTransacciones: TDataSource
    DataSet = QTransacciones
    Left = 320
    Top = 64
  end
  object Query1: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <>
    Left = 288
    Top = 96
  end
  object Search: TQrySearchDlgADO
    AliasFields.Strings = (
      'Nombre'
      'Codigo')
    AliasName = DM.ADOSigma
    Left = 376
    Top = 96
  end
end
