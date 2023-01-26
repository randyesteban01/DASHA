object frmPVenta: TfrmPVenta
  Left = 311
  Top = 38
  ActiveControl = edProducto
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Punto de Venta'
  ClientHeight = 543
  ClientWidth = 804
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object lbProducto: TLabel
    Left = 8
    Top = 80
    Width = 537
    Height = 29
    AutoSize = False
    Caption = 'lbProducto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Grid: TStringGrid
    Left = 0
    Top = 112
    Width = 545
    Height = 425
    TabStop = False
    Color = clInfoBk
    ColCount = 4
    Ctl3D = False
    DefaultRowHeight = 15
    Enabled = False
    FixedCols = 0
    RowCount = 2
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect]
    ParentCtl3D = False
    ScrollBars = ssVertical
    TabOrder = 0
    ColWidths = (
      23
      58
      372
      64)
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 804
    Height = 77
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object lbTotal: TLabel
      Left = 377
      Top = 2
      Width = 425
      Height = 73
      Align = alRight
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0.00'
      Color = clBlack
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -64
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 30
      Height = 13
      Caption = 'Fecha'
    end
    object Label2: TLabel
      Left = 8
      Top = 29
      Width = 30
      Height = 13
      Caption = 'Cajero'
    end
    object Label3: TLabel
      Left = 8
      Top = 50
      Width = 23
      Height = 13
      Caption = 'Hora'
    end
    object lbForma: TLabel
      Left = 216
      Top = 24
      Width = 137
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'MODO AUTOMATICO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 208
      Top = 8
      Width = 161
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = '[ F12 ] - CAMBIAR MODO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edFecha: TEdit
      Left = 48
      Top = 8
      Width = 153
      Height = 19
      Color = clInfoBk
      Ctl3D = False
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
    end
    object edCajero: TEdit
      Left = 48
      Top = 29
      Width = 153
      Height = 19
      Color = clInfoBk
      Ctl3D = False
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
    end
    object edHora: TEdit
      Left = 48
      Top = 50
      Width = 153
      Height = 19
      Color = clInfoBk
      Ctl3D = False
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 502
    Width = 804
    Height = 41
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 2
    object Label4: TLabel
      Left = 8
      Top = 8
      Width = 43
      Height = 13
      Caption = 'Producto'
    end
    object Label5: TLabel
      Left = 512
      Top = 8
      Width = 42
      Height = 13
      Caption = 'Cantidad'
    end
    object Label6: TLabel
      Left = 632
      Top = 8
      Width = 30
      Height = 13
      Caption = 'Precio'
    end
    object edProducto: TEdit
      Left = 56
      Top = 8
      Width = 121
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      OnKeyPress = edProductoKeyPress
    end
    object tProducto: TEdit
      Left = 184
      Top = 8
      Width = 321
      Height = 19
      Color = clInfoBk
      Ctl3D = False
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
    end
    object edCantidad: TEdit
      Left = 560
      Top = 8
      Width = 65
      Height = 19
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      TabOrder = 2
    end
    object edPrecio: TEdit
      Left = 664
      Top = 8
      Width = 105
      Height = 19
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      TabOrder = 3
      OnKeyPress = edPrecioKeyPress
    end
  end
  object StaticText1: TStaticText
    Left = 552
    Top = 112
    Width = 245
    Height = 18
    AutoSize = False
    Caption = '[ F2 ] - GRABA / IMPRIME FACTURA'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -12
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object StaticText2: TStaticText
    Left = 552
    Top = 128
    Width = 245
    Height = 18
    AutoSize = False
    Caption = '[ F3 ] - LIMPIAR FACTURA / NUEVA'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -12
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
  end
  object StaticText3: TStaticText
    Left = 552
    Top = 144
    Width = 245
    Height = 18
    AutoSize = False
    Caption = '[ F4 ] - BUSCAR PRODUCTO'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -12
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
  end
  object StaticText4: TStaticText
    Left = 552
    Top = 160
    Width = 245
    Height = 18
    AutoSize = False
    Caption = '[ F5 ] - MODIFICAR PRECIO'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -12
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
  end
  object StaticText5: TStaticText
    Left = 552
    Top = 176
    Width = 245
    Height = 18
    AutoSize = False
    Caption = '[ F6 ] - NOMBRES DEL CLIENTE'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -12
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
  end
  object StaticText6: TStaticText
    Left = 552
    Top = 192
    Width = 245
    Height = 18
    AutoSize = False
    Caption = '[ F7 ] - ELIMINAR PRODUCTO'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -12
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
  end
  object StaticText7: TStaticText
    Left = 552
    Top = 208
    Width = 245
    Height = 18
    AutoSize = False
    Caption = '[ F8 ] - BUSCAR FACTURA'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -12
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
  end
  object StaticText8: TStaticText
    Left = 552
    Top = 224
    Width = 245
    Height = 18
    AutoSize = False
    Caption = '[ F9 ] - ABRIR CAJA REGISTRADORA'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -12
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
  end
  object StaticText9: TStaticText
    Left = 552
    Top = 240
    Width = 245
    Height = 18
    AutoSize = False
    Caption = '[ F10 ] - SALIR DE LA FACTURA'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -12
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 11
  end
  object QFacturas: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    OnNewRecord = QFacturasNewRecord
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
        Name = 'forma'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end
      item
        Name = 'tipo'
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
      end>
    SQL.Strings = (
      'select CAJ_CODIGO, CLI_CODIGO, COT_NUMERO, CPA_CODIGO, '
      'EMP_CODIGO, FAC_DESCUENTO, FAC_DIRECCION, '
      'FAC_FAX, FAC_FECHA, FAC_FORMA, FAC_ITBIS, FAC_LOCALIDAD, '
      'FAC_NOMBRE, FAC_NOTA, FAC_NUMERO, FAC_OTROS, '
      'FAC_STATUS, FAC_TELEFONO, FAC_TOTAL, PED_NUMERO, '
      'TFA_CODIGO, USU_CODIGO, VEN_CODIGO, FAC_ABONO '
      'from FACTURAS'
      'where emp_codigo = :emp_codigo'
      'and fac_forma = :forma'
      'and tfa_codigo = :tipo'
      'and fac_numero = :numero')
    Left = 240
    Top = 192
    object QFacturasCAJ_CODIGO: TIntegerField
      FieldName = 'CAJ_CODIGO'
      Origin = 'FACTURAS.CAJ_CODIGO'
    end
    object QFacturasCLI_CODIGO: TIntegerField
      FieldName = 'CLI_CODIGO'
      Origin = 'FACTURAS.CLI_CODIGO'
    end
    object QFacturasCOT_NUMERO: TIntegerField
      FieldName = 'COT_NUMERO'
      Origin = 'FACTURAS.COT_NUMERO'
    end
    object QFacturasCPA_CODIGO: TIntegerField
      FieldName = 'CPA_CODIGO'
      Origin = 'FACTURAS.CPA_CODIGO'
    end
    object QFacturasEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'FACTURAS.EMP_CODIGO'
      Required = True
    end
    object QFacturasFAC_DESCUENTO: TFloatField
      FieldName = 'FAC_DESCUENTO'
      Origin = 'FACTURAS.FAC_DESCUENTO'
    end
    object QFacturasFAC_DIRECCION: TIBStringField
      FieldName = 'FAC_DIRECCION'
      Origin = 'FACTURAS.FAC_DIRECCION'
      Size = 60
    end
    object QFacturasFAC_FAX: TIBStringField
      FieldName = 'FAC_FAX'
      Origin = 'FACTURAS.FAC_FAX'
      Size = 13
    end
    object QFacturasFAC_FECHA: TDateTimeField
      FieldName = 'FAC_FECHA'
      Origin = 'FACTURAS.FAC_FECHA'
    end
    object QFacturasFAC_FORMA: TIBStringField
      FieldName = 'FAC_FORMA'
      Origin = 'FACTURAS.FAC_FORMA'
      Required = True
      Size = 1
    end
    object QFacturasFAC_ITBIS: TFloatField
      FieldName = 'FAC_ITBIS'
      Origin = 'FACTURAS.FAC_ITBIS'
    end
    object QFacturasFAC_LOCALIDAD: TIBStringField
      FieldName = 'FAC_LOCALIDAD'
      Origin = 'FACTURAS.FAC_LOCALIDAD'
      Size = 60
    end
    object QFacturasFAC_NOMBRE: TIBStringField
      FieldName = 'FAC_NOMBRE'
      Origin = 'FACTURAS.FAC_NOMBRE'
      Size = 60
    end
    object QFacturasFAC_NUMERO: TIntegerField
      FieldName = 'FAC_NUMERO'
      Origin = 'FACTURAS.FAC_NUMERO'
      Required = True
    end
    object QFacturasFAC_OTROS: TFloatField
      FieldName = 'FAC_OTROS'
      Origin = 'FACTURAS.FAC_OTROS'
    end
    object QFacturasFAC_STATUS: TIBStringField
      FieldName = 'FAC_STATUS'
      Origin = 'FACTURAS.FAC_STATUS'
      Size = 3
    end
    object QFacturasFAC_TELEFONO: TIBStringField
      FieldName = 'FAC_TELEFONO'
      Origin = 'FACTURAS.FAC_TELEFONO'
      Size = 13
    end
    object QFacturasFAC_TOTAL: TFloatField
      FieldName = 'FAC_TOTAL'
      Origin = 'FACTURAS.FAC_TOTAL'
    end
    object QFacturasPED_NUMERO: TIntegerField
      FieldName = 'PED_NUMERO'
      Origin = 'FACTURAS.PED_NUMERO'
    end
    object QFacturasTFA_CODIGO: TIntegerField
      FieldName = 'TFA_CODIGO'
      Origin = 'FACTURAS.TFA_CODIGO'
      Required = True
    end
    object QFacturasUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
      Origin = 'FACTURAS.USU_CODIGO'
    end
    object QFacturasVEN_CODIGO: TIntegerField
      FieldName = 'VEN_CODIGO'
      Origin = 'FACTURAS.VEN_CODIGO'
    end
    object QFacturasFAC_ABONO: TFloatField
      FieldName = 'FAC_ABONO'
      Origin = 'FACTURAS.FAC_ABONO'
    end
    object QFacturasFAC_NOTA: TMemoField
      FieldName = 'FAC_NOTA'
      BlobType = ftMemo
    end
  end
  object dsFacturas: TDataSource
    DataSet = QFacturas
    Left = 272
    Top = 192
  end
  object QDetalle: TADOQuery
    Connection = DM.ADOSigma
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
        Name = 'forma'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end
      item
        Name = 'tipo'
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
      end>
    SQL.Strings = (
      'select DET_CANTDEVUELTA, DET_CANTIDAD, DET_CONITBIS, '
      'DET_COSTO, DET_DESCUENTO, DET_ITBIS, DET_PRECIO, '
      'DET_SECUENCIA, DET_STATUS, EMP_CODIGO, FAC_FORMA, '
      'FAC_NUMERO, PRO_BARRA, PRO_CODIGO, PRO_NOMBRE, '
      'PRO_RFABRIC, PRO_RORIGINAL, TFA_CODIGO '
      'from DET_FACTURA'
      'where emp_codigo = :emp_codigo'
      'and fac_forma = :forma'
      'and tfa_codigo = :tipo'
      'and fac_numero = :numero')
    Left = 240
    Top = 224
    object QDetalleDET_CANTDEVUELTA: TFloatField
      FieldName = 'DET_CANTDEVUELTA'
      Origin = 'DET_FACTURA.DET_CANTDEVUELTA'
    end
    object QDetalleDET_CANTIDAD: TFloatField
      FieldName = 'DET_CANTIDAD'
      Origin = 'DET_FACTURA.DET_CANTIDAD'
    end
    object QDetalleDET_CONITBIS: TIBStringField
      FieldName = 'DET_CONITBIS'
      Origin = 'DET_FACTURA.DET_CONITBIS'
      Size = 1
    end
    object QDetalleDET_COSTO: TFloatField
      FieldName = 'DET_COSTO'
      Origin = 'DET_FACTURA.DET_COSTO'
    end
    object QDetalleDET_DESCUENTO: TFloatField
      FieldName = 'DET_DESCUENTO'
      Origin = 'DET_FACTURA.DET_DESCUENTO'
    end
    object QDetalleDET_ITBIS: TFloatField
      FieldName = 'DET_ITBIS'
      Origin = 'DET_FACTURA.DET_ITBIS'
    end
    object QDetalleDET_PRECIO: TFloatField
      FieldName = 'DET_PRECIO'
      Origin = 'DET_FACTURA.DET_PRECIO'
    end
    object QDetalleDET_SECUENCIA: TIntegerField
      FieldName = 'DET_SECUENCIA'
      Origin = 'DET_FACTURA.DET_SECUENCIA'
      Required = True
    end
    object QDetalleDET_STATUS: TIBStringField
      FieldName = 'DET_STATUS'
      Origin = 'DET_FACTURA.DET_STATUS'
      Size = 3
    end
    object QDetalleEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'DET_FACTURA.EMP_CODIGO'
      Required = True
    end
    object QDetalleFAC_FORMA: TIBStringField
      FieldName = 'FAC_FORMA'
      Origin = 'DET_FACTURA.FAC_FORMA'
      Required = True
      Size = 1
    end
    object QDetalleFAC_NUMERO: TIntegerField
      FieldName = 'FAC_NUMERO'
      Origin = 'DET_FACTURA.FAC_NUMERO'
      Required = True
    end
    object QDetallePRO_BARRA: TIBStringField
      FieldName = 'PRO_BARRA'
      Origin = 'DET_FACTURA.PRO_BARRA'
      Size = 30
    end
    object QDetallePRO_CODIGO: TIntegerField
      FieldName = 'PRO_CODIGO'
      Origin = 'DET_FACTURA.PRO_CODIGO'
    end
    object QDetallePRO_NOMBRE: TIBStringField
      FieldName = 'PRO_NOMBRE'
      Origin = 'DET_FACTURA.PRO_NOMBRE'
      Size = 60
    end
    object QDetallePRO_RFABRIC: TIBStringField
      FieldName = 'PRO_RFABRIC'
      Origin = 'DET_FACTURA.PRO_RFABRIC'
      Size = 60
    end
    object QDetallePRO_RORIGINAL: TIBStringField
      FieldName = 'PRO_RORIGINAL'
      Origin = 'DET_FACTURA.PRO_RORIGINAL'
      Size = 50
    end
    object QDetalleTFA_CODIGO: TIntegerField
      FieldName = 'TFA_CODIGO'
      Origin = 'DET_FACTURA.TFA_CODIGO'
      Required = True
    end
    object QDetalleValor: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Valor'
      currency = True
      Calculated = True
    end
  end
  object Query1: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <>
    Left = 240
    Top = 160
  end
end
