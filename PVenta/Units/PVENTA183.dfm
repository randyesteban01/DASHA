object frmCuadreCajasIP: TfrmCuadreCajasIP
  Left = 410
  Top = 169
  ActiveControl = edcaja
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Cuadre Cajas IP'
  ClientHeight = 389
  ClientWidth = 536
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
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel
    Left = 240
    Top = 8
    Width = 159
    Height = 13
    Caption = '[ F2 ] - LISTADO DE CHEQUES'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 240
    Top = 24
    Width = 166
    Height = 13
    Caption = '[ F3 ] - LISTADO DE TARJETAS'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 240
    Top = 40
    Width = 200
    Height = 13
    Caption = '[ F4 ] - LISTADO DE BONOS DEL CLUB'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 240
    Top = 56
    Width = 187
    Height = 13
    Caption = '[ F5 ] - LISTADO DE OTROS BONOS'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 240
    Top = 72
    Width = 165
    Height = 13
    Caption = '[ F6 ] - LISTADO DE CREDITOS'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 225
    Height = 81
    BevelInner = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 32
      Width = 22
      Height = 13
      Caption = 'Caja'
    end
    object Label2: TLabel
      Left = 16
      Top = 56
      Width = 32
      Height = 13
      Caption = 'Cajero'
    end
    object Label3: TLabel
      Left = 16
      Top = 8
      Width = 29
      Height = 13
      Caption = 'Fecha'
    end
    object Fecha: TDateTimePicker
      Left = 64
      Top = 8
      Width = 89
      Height = 21
      Date = 39726.000000000000000000
      Time = 39726.000000000000000000
      TabOrder = 0
    end
    object edcaja: TEdit
      Left = 64
      Top = 32
      Width = 89
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      TabOrder = 1
      OnKeyDown = edcajaKeyDown
    end
    object cbcajero: TDBLookupComboBox
      Left = 64
      Top = 56
      Width = 145
      Height = 21
      KeyField = 'usu_codigo'
      ListField = 'usu_nombre'
      ListSource = dsCajeros
      TabOrder = 2
      OnClick = cbcajeroClick
    end
  end
  object sgMontos: TStringGrid
    Left = 8
    Top = 96
    Width = 225
    Height = 281
    ColCount = 3
    Ctl3D = True
    DefaultRowHeight = 16
    RowCount = 16
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    ParentCtl3D = False
    TabOrder = 1
    OnDrawCell = sgMontosDrawCell
    OnKeyPress = sgMontosKeyPress
    OnSelectCell = sgMontosSelectCell
    OnSetEditText = sgMontosSetEditText
    ColWidths = (
      64
      69
      81)
  end
  object sgGeneral: TStringGrid
    Left = 240
    Top = 112
    Width = 288
    Height = 209
    ColCount = 3
    Ctl3D = True
    DefaultColWidth = 120
    DefaultRowHeight = 16
    RowCount = 10
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    ParentCtl3D = False
    TabOrder = 2
    OnDrawCell = sgGeneralDrawCell
    OnKeyPress = sgGeneralKeyPress
    OnSelectCell = sgGeneralSelectCell
    ColWidths = (
      120
      79
      78)
    RowHeights = (
      16
      16
      16
      16
      16
      16
      16
      16
      16
      16)
  end
  object btClose: TBitBtn
    Left = 424
    Top = 328
    Width = 107
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
  object btcuadrar: TBitBtn
    Left = 312
    Top = 328
    Width = 107
    Height = 25
    Caption = '[ F7 ] - Cuadrar'
    TabOrder = 4
    OnClick = btcuadrarClick
  end
  object btimprimir: TBitBtn
    Left = 424
    Top = 360
    Width = 107
    Height = 25
    Caption = '[ F8 ] - Imprimir'
    TabOrder = 5
    OnClick = btimprimirClick
    Glyph.Data = {
      E6000000424DE6000000000000007600000028000000100000000E0000000100
      0400000000007000000000000000000000001000000010000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333330000000000003330777777777777033088888888899703308888888888
      870333000000000000333330FCCCCCCF03333330FFFFFFFF03333330FCCCCCCF
      03333330FFFFFFFF03333330FCCCCCCF03333330FFFFFFFF0333333000000000
      03333333333333333333}
  end
  object btcerrar: TBitBtn
    Left = 312
    Top = 360
    Width = 107
    Height = 25
    Caption = 'Cerrar cuadre'
    TabOrder = 6
    OnClick = btcerrarClick
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00
      FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00FF000000
      000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FFFFFF00FF00
      FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FFFFFF00FFFF
      FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF0000000000FF00FF00FFFFFF00FFFFFF00000000000000
      000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF000000000000000000FF00FF00FFFFFF00FFFFFF0000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
      0000FFFFFF00FF00FF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
      0000FFFFFF00FFFFFF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF0000000000FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
  end
  object QCajeros: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <
      item
        Name = 'fec'
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'caj'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select distinct'
      'm.usu_codigo, u.usu_nombre'
      'from'
      'montos_ticket m, usuarios u'
      'where'
      'm.usu_codigo = u.usu_codigo'
      'and m.fecha = convert(Datetime, :fec, 105)'
      'and m.caja = :caj'
      'order by u.usu_nombre')
    Left = 160
    Top = 208
    object QCajerosusu_codigo: TIntegerField
      FieldName = 'usu_codigo'
    end
    object QCajerosusu_nombre: TStringField
      FieldName = 'usu_nombre'
      Size = 60
    end
  end
  object dsCajeros: TDataSource
    DataSet = QCajeros
    Left = 192
    Top = 208
  end
  object QCuadre: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    Parameters = <
      item
        Name = 'fec'
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'caj'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'usu'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'c.fecha, c.caja, c.usu_codigo, c.secuencia, c.efectivo_cajero,'
      
        'c.cheque_cajero, c.tarjeta_cajero, c.efectivo_total, c.cheque_to' +
        'tal,'
      
        'c.tarjeta_total, c.efectivo_asignado, c.fecha_hora, c.bonosclub_' +
        'total,'
      'c.bonosotros_total, c.bonosclub_cajero, c.bonosotros_cajero,'
      'c.credito_cajero, c.credito_total, c.devolucion_total, c.status'
      'from'
      'cuadre_caja c'
      'where'
      'c.fecha = convert(datetime, :fec, 105)'
      'and c.caja = :caj'
      'and c.usu_codigo = :usu'
      'and c.status = '#39'ABI'#39
      'and c.secuencia = (select min(secuencia) from cuadre_caja'
      'where fecha = c.fecha and usu_codigo = c.usu_codigo'
      'and caja = c.caja)')
    Left = 160
    Top = 240
    object QCuadrefecha: TDateTimeField
      FieldName = 'fecha'
    end
    object QCuadrecaja: TIntegerField
      FieldName = 'caja'
    end
    object QCuadreusu_codigo: TIntegerField
      FieldName = 'usu_codigo'
    end
    object QCuadresecuencia: TAutoIncField
      FieldName = 'secuencia'
      ReadOnly = True
    end
    object QCuadreefectivo_cajero: TBCDField
      FieldName = 'efectivo_cajero'
      Precision = 15
      Size = 2
    end
    object QCuadrecheque_cajero: TBCDField
      FieldName = 'cheque_cajero'
      Precision = 15
      Size = 2
    end
    object QCuadretarjeta_cajero: TBCDField
      FieldName = 'tarjeta_cajero'
      Precision = 15
      Size = 2
    end
    object QCuadreefectivo_total: TBCDField
      FieldName = 'efectivo_total'
      Precision = 15
      Size = 2
    end
    object QCuadrecheque_total: TBCDField
      FieldName = 'cheque_total'
      Precision = 15
      Size = 2
    end
    object QCuadretarjeta_total: TBCDField
      FieldName = 'tarjeta_total'
      Precision = 15
      Size = 2
    end
    object QCuadreefectivo_asignado: TBCDField
      FieldName = 'efectivo_asignado'
      Precision = 15
      Size = 2
    end
    object QCuadrefecha_hora: TDateTimeField
      FieldName = 'fecha_hora'
    end
    object QCuadrebonosclub_total: TBCDField
      FieldName = 'bonosclub_total'
      Precision = 15
      Size = 2
    end
    object QCuadrebonosotros_total: TBCDField
      FieldName = 'bonosotros_total'
      Precision = 15
      Size = 2
    end
    object QCuadrebonosclub_cajero: TBCDField
      FieldName = 'bonosclub_cajero'
      Precision = 18
      Size = 2
    end
    object QCuadrebonosotros_cajero: TBCDField
      FieldName = 'bonosotros_cajero'
      Precision = 18
      Size = 2
    end
    object QCuadrecredito_cajero: TBCDField
      FieldName = 'credito_cajero'
      Precision = 18
      Size = 2
    end
    object QCuadrecredito_total: TBCDField
      FieldName = 'credito_total'
      Precision = 18
      Size = 2
    end
    object QCuadredevolucion_total: TBCDField
      FieldName = 'devolucion_total'
      Precision = 15
      Size = 2
    end
    object QCuadrestatus: TStringField
      FieldName = 'status'
      Size = 3
    end
  end
  object QDenominacion: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    OnCalcFields = QDenominacionCalcFields
    Parameters = <
      item
        Name = 'fec'
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'caj'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'usu'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'sec'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'fecha, caja, usu_codigo, secuencia, cantidad, monto'
      'from'
      'cuadre_caja_denominaciones'
      'where'
      'fecha = convert(datetime, :fec, 105)'
      'and caja = :caj'
      'and usu_codigo = :usu'
      'and secuencia = :sec'
      'order by'
      'monto desc')
    Left = 160
    Top = 272
    object QDenominacionfecha: TDateTimeField
      FieldName = 'fecha'
    end
    object QDenominacioncaja: TIntegerField
      FieldName = 'caja'
    end
    object QDenominacionusu_codigo: TIntegerField
      FieldName = 'usu_codigo'
    end
    object QDenominacionsecuencia: TIntegerField
      FieldName = 'secuencia'
    end
    object QDenominacioncantidad: TIntegerField
      FieldName = 'cantidad'
    end
    object QDenominacionmonto: TBCDField
      FieldName = 'monto'
      Precision = 18
      Size = 2
    end
    object QDenominacionValor: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Valor'
      Calculated = True
    end
  end
  object DataSource1: TDataSource
    DataSet = QCuadre
    Left = 192
    Top = 240
  end
end
