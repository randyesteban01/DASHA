object frmGeneraCuotas: TfrmGeneraCuotas
  Left = 332
  Top = 198
  ActiveControl = edCuotas
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Cuotas de Pago'
  ClientHeight = 263
  ClientWidth = 668
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 122
    Height = 13
    Caption = 'Detalle de las Cuotas'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = 408
    Top = 8
    Width = 249
    Height = 201
    Caption = 'T'#233'rminos'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label2: TLabel
      Left = 16
      Top = 70
      Width = 76
      Height = 13
      Caption = '# de Cuotas:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 16
      Top = 95
      Width = 89
      Height = 13
      Caption = 'Fecha de inicio:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 16
      Top = 117
      Width = 102
      Height = 13
      Caption = 'Intervalo de dias:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 16
      Top = 139
      Width = 109
      Height = 13
      Caption = 'Total de la Factura:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object LB_1: TLabel
      Left = 16
      Top = 44
      Width = 72
      Height = 13
      Caption = 'Monto Inicial'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object btCalcular: TBitBtn
      Left = 16
      Top = 160
      Width = 217
      Height = 33
      Caption = 'Calcular Cuotas'
      TabOrder = 0
      OnClick = btCalcularClick
    end
    object lbTotal: TStaticText
      Left = 136
      Top = 139
      Width = 97
      Height = 17
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object lbIntervalo: TStaticText
      Left = 136
      Top = 117
      Width = 97
      Height = 17
      AutoSize = False
      BorderStyle = sbsSunken
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object lbFechaIni: TStaticText
      Left = 136
      Top = 95
      Width = 97
      Height = 17
      AutoSize = False
      BorderStyle = sbsSunken
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object edCuotas: TEdit
      Left = 136
      Top = 70
      Width = 97
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnKeyPress = edCuotasKeyPress
    end
    object edtMontoInicial: TEdit
      Left = 136
      Top = 44
      Width = 97
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnKeyPress = edCuotasKeyPress
    end
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 24
    Width = 393
    Height = 233
    Color = clInfoBk
    DataSource = dsMov
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'MOV_SECUENCIA'
        Title.Alignment = taCenter
        Title.Caption = '# de Cuota'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Verdana'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MOV_MONTO'
        Title.Alignment = taCenter
        Title.Caption = 'Monto'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Verdana'
        Title.Font.Style = []
        Width = 97
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'MOV_FECHA'
        Title.Alignment = taCenter
        Title.Caption = 'Vence en'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Verdana'
        Title.Font.Style = []
        Width = 80
        Visible = True
      end>
  end
  object btClose: TBitBtn
    Left = 584
    Top = 232
    Width = 75
    Height = 25
    Caption = '&Salir'
    TabOrder = 2
    TabStop = False
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
  object QMov: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    Parameters = <
      item
        Name = 'EMP'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'TIPO'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 3
        Value = Null
      end
      item
        Name = 'NUM'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT'
      'CLI_CODIGO, EMP_CODIGO, FAC_FORMA, MOV_ABONO, '
      'MOV_FECHA, MOV_FECHAVENCE, MOV_MONTO, MOV_NUMERO, '
      'MOV_SECUENCIA, MOV_STATUS, MOV_TIPO, TFA_CODIGO, '
      'MOV_CUOTA, SUC_CODIGO, MON_CODIGO, MOV_TASA'
      'FROM'
      'MOVIMIENTOS'
      'WHERE '
      'EMP_CODIGO = :EMP'
      'AND MOV_TIPO = :TIPO'
      'AND MOV_NUMERO = :NUM'
      'ORDER BY'
      'MOV_SECUENCIA')
    Left = 216
    Top = 88
    object QMovCLI_CODIGO: TIntegerField
      FieldName = 'CLI_CODIGO'
      Origin = 'MOVIMIENTOS.CLI_CODIGO'
    end
    object QMovEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'MOVIMIENTOS.EMP_CODIGO'
    end
    object QMovFAC_FORMA: TIBStringField
      FieldName = 'FAC_FORMA'
      Origin = 'MOVIMIENTOS.FAC_FORMA'
      Size = 1
    end
    object QMovMOV_ABONO: TFloatField
      FieldName = 'MOV_ABONO'
      Origin = 'MOVIMIENTOS.MOV_ABONO'
      currency = True
    end
    object QMovMOV_FECHA: TDateTimeField
      FieldName = 'MOV_FECHA'
      Origin = 'MOVIMIENTOS.MOV_FECHA'
    end
    object QMovMOV_FECHAVENCE: TDateTimeField
      FieldName = 'MOV_FECHAVENCE'
      Origin = 'MOVIMIENTOS.MOV_FECHAVENCE'
    end
    object QMovMOV_MONTO: TFloatField
      FieldName = 'MOV_MONTO'
      Origin = 'MOVIMIENTOS.MOV_MONTO'
      currency = True
    end
    object QMovMOV_NUMERO: TIntegerField
      FieldName = 'MOV_NUMERO'
      Origin = 'MOVIMIENTOS.MOV_NUMERO'
    end
    object QMovMOV_SECUENCIA: TIntegerField
      FieldName = 'MOV_SECUENCIA'
      Origin = 'MOVIMIENTOS.MOV_SECUENCIA'
      DisplayFormat = '00'
    end
    object QMovMOV_STATUS: TIBStringField
      FieldName = 'MOV_STATUS'
      Origin = 'MOVIMIENTOS.MOV_STATUS'
      Size = 3
    end
    object QMovMOV_TIPO: TIBStringField
      FieldName = 'MOV_TIPO'
      Origin = 'MOVIMIENTOS.MOV_TIPO'
      Size = 3
    end
    object QMovTFA_CODIGO: TIntegerField
      FieldName = 'TFA_CODIGO'
      Origin = 'MOVIMIENTOS.TFA_CODIGO'
    end
    object QMovMOV_CUOTA: TIBStringField
      FieldName = 'MOV_CUOTA'
      Origin = 'MOVIMIENTOS.MOV_CUOTA'
      Size = 5
    end
    object QMovSUC_CODIGO: TIntegerField
      FieldName = 'SUC_CODIGO'
    end
    object QMovMON_CODIGO: TIntegerField
      FieldName = 'MON_CODIGO'
    end
    object QMovMOV_TASA: TBCDField
      FieldName = 'MOV_TASA'
      Precision = 15
      Size = 2
    end
  end
  object dsMov: TDataSource
    DataSet = QMov
    Left = 248
    Top = 88
  end
  object QUpdateAbono: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    Parameters = <
      item
        Name = 'monto'
        DataType = ftFloat
        Size = -1
        Value = Null
      end
      item
        Name = 'numero'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'company'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'sucursal'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'update Facturas'
      'set fac_abono = :monto'
      
        'where fac_numero = :numero and emp_codigo = :company and suc_cod' +
        'igo = :sucursal')
    Left = 288
    Top = 88
    object IntegerField1: TIntegerField
      FieldName = 'CLI_CODIGO'
      Origin = 'MOVIMIENTOS.CLI_CODIGO'
    end
    object IntegerField2: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'MOVIMIENTOS.EMP_CODIGO'
    end
    object IBStringField1: TIBStringField
      FieldName = 'FAC_FORMA'
      Origin = 'MOVIMIENTOS.FAC_FORMA'
      Size = 1
    end
    object FloatField1: TFloatField
      FieldName = 'MOV_ABONO'
      Origin = 'MOVIMIENTOS.MOV_ABONO'
      currency = True
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'MOV_FECHA'
      Origin = 'MOVIMIENTOS.MOV_FECHA'
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'MOV_FECHAVENCE'
      Origin = 'MOVIMIENTOS.MOV_FECHAVENCE'
    end
    object FloatField2: TFloatField
      FieldName = 'MOV_MONTO'
      Origin = 'MOVIMIENTOS.MOV_MONTO'
      currency = True
    end
    object IntegerField3: TIntegerField
      FieldName = 'MOV_NUMERO'
      Origin = 'MOVIMIENTOS.MOV_NUMERO'
    end
    object IntegerField4: TIntegerField
      FieldName = 'MOV_SECUENCIA'
      Origin = 'MOVIMIENTOS.MOV_SECUENCIA'
      DisplayFormat = '00'
    end
    object IBStringField2: TIBStringField
      FieldName = 'MOV_STATUS'
      Origin = 'MOVIMIENTOS.MOV_STATUS'
      Size = 3
    end
    object IBStringField3: TIBStringField
      FieldName = 'MOV_TIPO'
      Origin = 'MOVIMIENTOS.MOV_TIPO'
      Size = 3
    end
    object IntegerField5: TIntegerField
      FieldName = 'TFA_CODIGO'
      Origin = 'MOVIMIENTOS.TFA_CODIGO'
    end
    object IBStringField4: TIBStringField
      FieldName = 'MOV_CUOTA'
      Origin = 'MOVIMIENTOS.MOV_CUOTA'
      Size = 5
    end
    object IntegerField6: TIntegerField
      FieldName = 'SUC_CODIGO'
    end
    object IntegerField7: TIntegerField
      FieldName = 'MON_CODIGO'
    end
    object BCDField1: TBCDField
      FieldName = 'MOV_TASA'
      Precision = 15
      Size = 2
    end
  end
end
