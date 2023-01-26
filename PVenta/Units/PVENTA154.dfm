object frmProcesoColector: TfrmProcesoColector
  Left = 415
  Top = 187
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Colector de Inventario'
  ClientHeight = 248
  ClientWidth = 394
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
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object btFamilia: TSpeedButton
    Left = 110
    Top = 119
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
    OnClick = btFamiliaClick
  end
  object Label4: TLabel
    Left = 8
    Top = 120
    Width = 32
    Height = 13
    Caption = 'Familia'
  end
  object btMarca: TSpeedButton
    Left = 110
    Top = 143
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
    OnClick = btMarcaClick
  end
  object Label2: TLabel
    Left = 8
    Top = 144
    Width = 29
    Height = 13
    Caption = 'Marca'
  end
  object lbprocesando: TLabel
    Left = 16
    Top = 176
    Width = 111
    Height = 20
    Caption = 'Procesando...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object btAlma: TSpeedButton
    Left = 110
    Top = 95
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
    OnClick = btAlmaClick
  end
  object Label6: TLabel
    Left = 8
    Top = 96
    Width = 40
    Height = 13
    Caption = 'Almacen'
  end
  object Label8: TLabel
    Left = 7
    Top = 8
    Width = 40
    Height = 13
    Caption = 'Sucursal'
  end
  object rbCondi: TRadioGroup
    Left = 8
    Top = 40
    Width = 377
    Height = 49
    Caption = 'Condici'#243'n'
    Columns = 3
    ItemIndex = 0
    Items.Strings = (
      'Por familia'
      'Por Marca'
      'Todos los productos')
    TabOrder = 9
  end
  object btClose: TBitBtn
    Left = 304
    Top = 200
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
  object BitBtn1: TBitBtn
    Left = 208
    Top = 200
    Width = 91
    Height = 25
    Caption = 'Recibir archivo'
    TabOrder = 4
    OnClick = BitBtn1Click
  end
  object tFamilia: TEdit
    Left = 136
    Top = 120
    Width = 249
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
    TabOrder = 5
  end
  object edFamilia: TEdit
    Left = 56
    Top = 120
    Width = 49
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
    OnChange = edFamiliaChange
    OnKeyDown = edFamiliaKeyDown
  end
  object tMarca: TEdit
    Left = 136
    Top = 144
    Width = 249
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
    TabOrder = 6
  end
  object edMarca: TEdit
    Left = 56
    Top = 144
    Width = 49
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnChange = edMarcaChange
    OnKeyDown = edMarcaKeyDown
  end
  object BitBtn2: TBitBtn
    Left = 112
    Top = 200
    Width = 91
    Height = 25
    Caption = 'Enviar archivo'
    TabOrder = 7
  end
  object edAlma: TEdit
    Left = 56
    Top = 96
    Width = 49
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnChange = edAlmaChange
    OnKeyDown = edAlmaKeyDown
  end
  object tAlma: TEdit
    Left = 136
    Top = 96
    Width = 249
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
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 56
    Top = 8
    Width = 329
    Height = 21
    DropDownRows = 20
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyField = 'suc_codigo'
    ListField = 'suc_nombre'
    ListSource = dsSuc
    ParentFont = False
    TabOrder = 10
    TabStop = False
  end
  object Search: TQrySearchDlgADO
    AliasName = DM.ADOSigma
    Left = 280
    Top = 40
  end
  object OpenDialog1: TOpenDialog
    Left = 320
    Top = 104
  end
  object QEntrada: TADOQuery
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
        Name = 'numero'
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
      'select '
      'EMP_CODIGO, ENT_CONCEPTO, ENT_FECHA, ENT_ITBIS, '
      'ENT_NUMERO, ENT_STATUS, ENT_TOTAL, SUP_CODIGO,'
      'ALM_CODIGO, USU_CODIGO, SUC_CODIGO'
      'from '
      'ENTRADAINV'
      'where '
      'emp_codigo = :emp'
      'and ent_numero = :numero'
      'and suc_codigo = :suc')
    Left = 288
    Top = 104
    object QEntradaEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'ENTRADAINV.EMP_CODIGO'
    end
    object QEntradaENT_CONCEPTO: TIBStringField
      FieldName = 'ENT_CONCEPTO'
      Origin = 'ENTRADAINV.ENT_CONCEPTO'
      Size = 60
    end
    object QEntradaENT_FECHA: TDateTimeField
      FieldName = 'ENT_FECHA'
      Origin = 'ENTRADAINV.ENT_FECHA'
      EditMask = 'cc-cc-cccc'
    end
    object QEntradaENT_ITBIS: TFloatField
      FieldName = 'ENT_ITBIS'
      Origin = 'ENTRADAINV.ENT_ITBIS'
      currency = True
    end
    object QEntradaENT_NUMERO: TIntegerField
      FieldName = 'ENT_NUMERO'
      Origin = 'ENTRADAINV.ENT_NUMERO'
    end
    object QEntradaENT_STATUS: TIBStringField
      FieldName = 'ENT_STATUS'
      Origin = 'ENTRADAINV.ENT_STATUS'
      Size = 3
    end
    object QEntradaENT_TOTAL: TFloatField
      FieldName = 'ENT_TOTAL'
      Origin = 'ENTRADAINV.ENT_TOTAL'
      currency = True
    end
    object QEntradaSUP_CODIGO: TIntegerField
      FieldName = 'SUP_CODIGO'
      Origin = 'ENTRADAINV.SUP_CODIGO'
    end
    object QEntradaALM_CODIGO: TIntegerField
      FieldName = 'ALM_CODIGO'
      Origin = 'ENTRADAINV.ALM_CODIGO'
    end
    object QEntradaUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
      Origin = 'ENTRADAINV.USU_CODIGO'
    end
    object QEntradaSubTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'SubTotal'
      currency = True
      Calculated = True
    end
    object QEntradaSUC_CODIGO: TIntegerField
      FieldName = 'SUC_CODIGO'
    end
  end
  object QDetalle: TADOQuery
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
        Name = 'numero'
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
      'select '
      'DET_CANTIDAD, DET_CONITBIS, DET_COSTO, DET_ITBIS, '
      'DET_PRECIO, DET_SECUENCIA, EMP_CODIGO, ENT_NUMERO, '
      'PRO_BARRA, PRO_CODIGO, PRO_NOMBRE, PRO_RFABRIC, '
      'PRO_RORIGINAL, DET_FECHAVENCE, DET_LOTE, '
      'DET_VENCE, DET_ESCALA, DET_MANEJAESCALA,'
      'DET_MEDIDA, DET_COSTOEMP, DET_COSTOUND,'
      'SUC_CODIGO'
      'from '
      'DET_ENTRADA'
      'where emp_codigo = :emp'
      'and ent_numero = :numero'
      'and suc_codigo = :suc'
      'order by det_secuencia')
    Left = 288
    Top = 136
    object QDetalleDET_CANTIDAD: TFloatField
      FieldName = 'DET_CANTIDAD'
      Origin = 'DET_ENTRADA.DET_CANTIDAD'
    end
    object QDetalleDET_CONITBIS: TIBStringField
      FieldName = 'DET_CONITBIS'
      Origin = 'DET_ENTRADA.DET_CONITBIS'
      Size = 1
    end
    object QDetalleDET_COSTO: TFloatField
      FieldName = 'DET_COSTO'
      Origin = 'DET_ENTRADA.DET_COSTO'
      currency = True
    end
    object QDetalleDET_ITBIS: TFloatField
      FieldName = 'DET_ITBIS'
      Origin = 'DET_ENTRADA.DET_ITBIS'
      currency = True
    end
    object QDetalleDET_PRECIO: TFloatField
      FieldName = 'DET_PRECIO'
      Origin = 'DET_ENTRADA.DET_PRECIO'
      currency = True
    end
    object QDetalleDET_SECUENCIA: TIntegerField
      FieldName = 'DET_SECUENCIA'
      Origin = 'DET_ENTRADA.DET_SECUENCIA'
      DisplayFormat = '00'
    end
    object QDetalleEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'DET_ENTRADA.EMP_CODIGO'
    end
    object QDetalleENT_NUMERO: TIntegerField
      FieldName = 'ENT_NUMERO'
      Origin = 'DET_ENTRADA.ENT_NUMERO'
    end
    object QDetallePRO_BARRA: TIBStringField
      FieldName = 'PRO_BARRA'
      Origin = 'DET_ENTRADA.PRO_BARRA'
      Size = 30
    end
    object QDetallePRO_CODIGO: TIntegerField
      FieldName = 'PRO_CODIGO'
      Origin = 'DET_ENTRADA.PRO_CODIGO'
    end
    object QDetallePRO_NOMBRE: TIBStringField
      FieldName = 'PRO_NOMBRE'
      Origin = 'DET_ENTRADA.PRO_NOMBRE'
      Size = 60
    end
    object QDetallePRO_RFABRIC: TIBStringField
      FieldName = 'PRO_RFABRIC'
      Origin = 'DET_ENTRADA.PRO_RFABRIC'
      Size = 60
    end
    object QDetallePRO_RORIGINAL: TIBStringField
      FieldName = 'PRO_RORIGINAL'
      Origin = 'DET_ENTRADA.PRO_RORIGINAL'
      Size = 50
    end
    object QDetalleValor: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Valor'
      currency = True
      Calculated = True
    end
    object QDetalleDET_FECHAVENCE: TDateTimeField
      FieldName = 'DET_FECHAVENCE'
      Origin = 'DET_ENTRADA.DET_FECHAVENCE'
      EditMask = 'cc-cc-cccc'
    end
    object QDetalleDET_LOTE: TIntegerField
      FieldName = 'DET_LOTE'
      Origin = 'DET_ENTRADA.DET_LOTE'
    end
    object QDetalleDET_VENCE: TIBStringField
      FieldName = 'DET_VENCE'
      Origin = 'DET_ENTRADA.DET_VENCE'
      Size = 5
    end
    object QDetalleDET_ESCALA: TIBStringField
      FieldName = 'DET_ESCALA'
      Origin = 'DET_ENTRADA.DET_ESCALA'
      Size = 5
    end
    object QDetalleDET_MANEJAESCALA: TIBStringField
      FieldName = 'DET_MANEJAESCALA'
      Origin = 'DET_ENTRADA.DET_MANEJAESCALA'
      Size = 5
    end
    object QDetalleDET_MEDIDA: TIBStringField
      FieldName = 'DET_MEDIDA'
      Origin = 'DET_ENTRADA.DET_MEDIDA'
      Size = 3
    end
    object QDetalleCalcItbis: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CalcItbis'
      currency = True
      Calculated = True
    end
    object QDetallePrecioItbis: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PrecioItbis'
      currency = True
      Calculated = True
    end
    object QDetalleCalcDesc: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CalcDesc'
      currency = True
      Calculated = True
    end
    object QDetalleDET_COSTOEMP: TFloatField
      FieldName = 'DET_COSTOEMP'
      Origin = 'DET_ENTRADA.DET_COSTOEMP'
    end
    object QDetalleDET_COSTOUND: TFloatField
      FieldName = 'DET_COSTOUND'
      Origin = 'DET_ENTRADA.DET_COSTOUND'
    end
    object QDetalleSUC_CODIGO: TIntegerField
      FieldName = 'SUC_CODIGO'
    end
  end
  object QSucursal: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltReadOnly
    DataSource = DM.dsEmpresas
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
        Name = 'usu'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      's.suc_codigo, s.suc_nombre, s.alm_codigo, s.emp_codigo'
      'from'
      'sucursales s, sucursal_acceso a'
      'where'
      's.emp_codigo = a.emp_codigo'
      'and s.suc_codigo = a.suc_codigo'
      'and a.emp_codigo = :emp_codigo'
      'and a.usu_codigo = :usu'
      'order by s.suc_codigo')
    Left = 208
    Top = 136
    object QSucursalsuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object QSucursalsuc_nombre: TStringField
      FieldName = 'suc_nombre'
      Size = 60
    end
    object QSucursalalm_codigo: TIntegerField
      FieldName = 'alm_codigo'
    end
    object QSucursalemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
  end
  object dsSuc: TDataSource
    DataSet = QSucursal
    Left = 240
    Top = 136
  end
  object Query1: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <>
    Left = 208
    Top = 168
  end
end
