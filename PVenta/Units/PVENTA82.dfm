object frmConsBalance: TfrmConsBalance
  Left = 274
  Top = 180
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta de Balance del Cliente'
  ClientHeight = 378
  ClientWidth = 709
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 352
    Width = 116
    Height = 13
    Caption = 'BALANCE VENCIDO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid3: TDBGrid
    Left = 0
    Top = 0
    Width = 709
    Height = 345
    Align = alTop
    Color = clInfoBk
    Ctl3D = False
    DataSource = dsCXC
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
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
        FieldName = 'MOV_TIPO'
        Title.Alignment = taCenter
        Title.Caption = 'Tipo'
        Width = 30
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'FAC_FORMA'
        Title.Alignment = taCenter
        Title.Caption = 'Grupo'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'TFA_CODIGO'
        Title.Alignment = taCenter
        Title.Caption = 'Tipo Fac.'
        Width = 59
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'MOV_NUMERO'
        Title.Alignment = taCenter
        Title.Caption = 'N'#250'mero'
        Width = 68
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MOV_FECHA'
        Title.Alignment = taCenter
        Title.Caption = 'Fecha'
        Width = 66
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DIASFAC'
        Title.Alignment = taCenter
        Title.Caption = '# Dias'
        Width = 51
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MOV_MONTO'
        Title.Alignment = taCenter
        Title.Caption = 'Total'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MOV_ABONO'
        Title.Alignment = taCenter
        Title.Caption = 'Abono'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Saldo'
        Title.Alignment = taCenter
        Width = 75
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'MOV_FECHAVENCE'
        Title.Alignment = taCenter
        Title.Caption = 'Vence'
        Width = 69
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DIASVENC'
        Title.Alignment = taCenter
        Title.Caption = 'Dias Vencidos'
        Width = 73
        Visible = True
      end>
  end
  object btClose: TBitBtn
    Left = 624
    Top = 352
    Width = 75
    Height = 25
    Caption = '&Salir'
    TabOrder = 1
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
  object lbVencido: TStaticText
    Left = 136
    Top = 352
    Width = 97
    Height = 17
    Alignment = taRightJustify
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = '0.00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object QCXC: TADOQuery
    Connection = DM.ADOSigma
    AfterOpen = QCXCAfterOpen
    OnCalcFields = QCXCCalcFields
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
        Name = 'cli'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select '
      'FAC_FORMA, MOV_ABONO, MOV_FECHA, MOV_MONTO, '
      'MOV_NUMERO, MOV_TIPO, TFA_CODIGO, '
      'MOV_FECHAVENCE, DATEDIFF(day,MOV_FECHA, getdate()) AS DIASFAC,'
      'DATEDIFF(day,MOV_FECHAVENCE,getdate()) AS DIASVENC'
      'from '
      'MOVIMIENTOS'
      'where '
      'emp_codigo = :emp'
      'and cli_codigo = :cli'
      'and mov_status = '#39'PEN'#39
      'order by mov_fecha desc')
    Left = 232
    Top = 224
    object QCXCSaldo: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Saldo'
      currency = True
      Calculated = True
    end
    object QCXCFAC_FORMA: TIBStringField
      FieldName = 'FAC_FORMA'
      Origin = 'MOVIMIENTOS.FAC_FORMA'
      Size = 1
    end
    object QCXCMOV_ABONO: TFloatField
      FieldName = 'MOV_ABONO'
      Origin = 'MOVIMIENTOS.MOV_ABONO'
      currency = True
    end
    object QCXCMOV_FECHA: TDateTimeField
      FieldName = 'MOV_FECHA'
      Origin = 'MOVIMIENTOS.MOV_FECHA'
    end
    object QCXCMOV_MONTO: TFloatField
      FieldName = 'MOV_MONTO'
      Origin = 'MOVIMIENTOS.MOV_MONTO'
      currency = True
    end
    object QCXCMOV_NUMERO: TIntegerField
      FieldName = 'MOV_NUMERO'
      Origin = 'MOVIMIENTOS.MOV_NUMERO'
      Required = True
      DisplayFormat = '000000'
    end
    object QCXCMOV_TIPO: TIBStringField
      FieldName = 'MOV_TIPO'
      Origin = 'MOVIMIENTOS.MOV_TIPO'
      Required = True
      Size = 3
    end
    object QCXCTFA_CODIGO: TIntegerField
      FieldName = 'TFA_CODIGO'
      Origin = 'MOVIMIENTOS.TFA_CODIGO'
    end
    object QCXCMOV_FECHAVENCE: TDateTimeField
      FieldName = 'MOV_FECHAVENCE'
      Origin = 'MOVIMIENTOS.MOV_FECHAVENCE'
    end
    object QCXCVencida: TStringField
      FieldKind = fkCalculated
      FieldName = 'Vencida'
      Size = 2
      Calculated = True
    end
    object QCXCDIASFAC: TIntegerField
      FieldName = 'DIASFAC'
      ReadOnly = True
    end
    object QCXCDIASVENC: TIntegerField
      FieldName = 'DIASVENC'
      ReadOnly = True
    end
  end
  object dsCXC: TDataSource
    DataSet = QCXC
    Left = 264
    Top = 224
  end
end
