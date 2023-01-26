object frmChequeDevol: TfrmChequeDevol
  Left = 246
  Top = 162
  ActiveControl = edSol
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Creaci'#243'n de cheque para devoluci'#243'n'
  ClientHeight = 326
  ClientWidth = 490
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 50
    Height = 13
    Caption = 'Solicitud #'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object btSol: TSpeedButton
    Left = 116
    Top = 8
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
    OnClick = btSolClick
  end
  object edSol: TEdit
    Left = 72
    Top = 8
    Width = 41
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
    OnKeyDown = edSolKeyDown
  end
  object Panel1: TPanel
    Left = 0
    Top = 32
    Width = 489
    Height = 129
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object Label4: TLabel
      Left = 7
      Top = 8
      Width = 29
      Height = 13
      Caption = 'Banco'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 7
      Top = 32
      Width = 37
      Height = 13
      Caption = 'N'#250'mero'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 152
      Top = 32
      Width = 29
      Height = 13
      Caption = 'Fecha'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 264
      Top = 32
      Width = 30
      Height = 13
      Caption = 'Monto'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 7
      Top = 56
      Width = 46
      Height = 13
      Caption = 'Concepto'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 7
      Top = 104
      Width = 55
      Height = 13
      Caption = 'Beneficiario'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 72
      Top = 8
      Width = 41
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = clInfoBk
      DataField = 'BAN_CODIGO'
      DataSource = dsCheques
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object tBanco: TEdit
      Left = 120
      Top = 8
      Width = 361
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
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 72
      Top = 32
      Width = 73
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'CHE_NUMERO'
      DataSource = dsCheques
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object DBEdit3: TDBEdit
      Left = 192
      Top = 32
      Width = 65
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'CHE_FECHA'
      DataSource = dsCheques
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object DBEdit4: TDBEdit
      Left = 304
      Top = 32
      Width = 89
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      DataField = 'CHE_MONTO'
      DataSource = dsCheques
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 72
      Top = 56
      Width = 409
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = clInfoBk
      DataField = 'CHE_CONCEPTO1'
      DataSource = dsCheques
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
    object DBEdit7: TDBEdit
      Left = 72
      Top = 80
      Width = 409
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = clInfoBk
      DataField = 'CHE_CONCEPTO2'
      DataSource = dsCheques
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
    end
    object DBEdit8: TDBEdit
      Left = 72
      Top = 104
      Width = 409
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = clInfoBk
      DataField = 'CHE_BENEF'
      DataSource = dsCheques
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 7
    end
  end
  object StaticText1: TStaticText
    Left = 0
    Top = 161
    Width = 489
    Height = 20
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = 'DETALLE DE LAS CUENTAS CONTABLES DEL CHEQUE'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object GridCuentas: TDBGrid
    Left = 0
    Top = 184
    Width = 490
    Height = 105
    Ctl3D = False
    DataSource = dsDetalle
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgColLines, dgRowLines, dgTabs, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CAT_CUENTA'
        Title.Alignment = taCenter
        Title.Caption = 'Cuenta'
        Width = 82
        Visible = True
      end
      item
        Color = clInfoBk
        Expanded = False
        FieldName = 'CAT_NOMBRE'
        Title.Caption = 'Nombre de la Cuenta'
        Width = 244
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DET_ORIGEN'
        Title.Alignment = taCenter
        Title.Caption = 'Origen'
        Width = 53
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DET_MONTO'
        Title.Alignment = taCenter
        Title.Caption = 'Monto'
        Width = 90
        Visible = True
      end>
  end
  object btGrabar: TBitBtn
    Left = 368
    Top = 296
    Width = 117
    Height = 25
    Caption = '[ F2 ] - Grabar /  Salir'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    TabStop = False
    OnClick = btGrabarClick
  end
  object Search: TQrySearchDlgADO
    AliasName = DM.ADOSigma
    Left = 288
    Top = 224
  end
  object QCheques: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    BeforePost = QChequesBeforePost
    OnNewRecord = QChequesNewRecord
    DataSource = DM.dsEmpresas
    Parameters = <
      item
        Name = 'EMP_CODIGO'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'BANCO'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'NUMERO'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT'
      'BAN_CODIGO, CHE_ANO, CHE_BENEF, CHE_CONCEPTO1, '
      'CHE_CONCEPTO2, CHE_FECANULO, CHE_FECHA, CHE_MES, '
      'CHE_MONTO, CHE_MOTIVOANULO, CHE_NUMERO, '
      'CHE_STATUS, CHE_TIPO, CLI_CODIGO, EMP_CODIGO, '
      'EMP_NUMERO, SUP_CODIGO, USU_CODIGO, CHE_DESCUENTO, '
      'CHE_IMPRESO, CHE_ABONO'
      'FROM'
      'CHEQUES'
      'WHERE'
      'EMP_CODIGO = :EMP_CODIGO'
      'AND BAN_CODIGO = :BANCO'
      'AND CHE_NUMERO = :NUMERO')
    Left = 184
    Top = 224
    object QChequesBAN_CODIGO: TIntegerField
      FieldName = 'BAN_CODIGO'
      Origin = 'CHEQUES.BAN_CODIGO'
      OnChange = QChequesBAN_CODIGOChange
    end
    object QChequesCHE_ANO: TIntegerField
      FieldName = 'CHE_ANO'
      Origin = 'CHEQUES.CHE_ANO'
    end
    object QChequesCHE_BENEF: TIBStringField
      FieldName = 'CHE_BENEF'
      Origin = 'CHEQUES.CHE_BENEF'
      Size = 60
    end
    object QChequesCHE_CONCEPTO1: TIBStringField
      FieldName = 'CHE_CONCEPTO1'
      Origin = 'CHEQUES.CHE_CONCEPTO1'
      Size = 60
    end
    object QChequesCHE_CONCEPTO2: TIBStringField
      FieldName = 'CHE_CONCEPTO2'
      Origin = 'CHEQUES.CHE_CONCEPTO2'
      Size = 60
    end
    object QChequesCHE_FECANULO: TDateTimeField
      FieldName = 'CHE_FECANULO'
      Origin = 'CHEQUES.CHE_FECANULO'
    end
    object QChequesCHE_FECHA: TDateTimeField
      FieldName = 'CHE_FECHA'
      Origin = 'CHEQUES.CHE_FECHA'
      EditMask = 'cc-cc-cccc'
    end
    object QChequesCHE_MES: TIntegerField
      FieldName = 'CHE_MES'
      Origin = 'CHEQUES.CHE_MES'
    end
    object QChequesCHE_MONTO: TFloatField
      FieldName = 'CHE_MONTO'
      Origin = 'CHEQUES.CHE_MONTO'
      currency = True
    end
    object QChequesCHE_MOTIVOANULO: TIBStringField
      FieldName = 'CHE_MOTIVOANULO'
      Origin = 'CHEQUES.CHE_MOTIVOANULO'
      Size = 60
    end
    object QChequesCHE_NUMERO: TIntegerField
      FieldName = 'CHE_NUMERO'
      Origin = 'CHEQUES.CHE_NUMERO'
    end
    object QChequesCHE_STATUS: TIBStringField
      FieldName = 'CHE_STATUS'
      Origin = 'CHEQUES.CHE_STATUS'
      Size = 3
    end
    object QChequesCHE_TIPO: TIBStringField
      FieldName = 'CHE_TIPO'
      Origin = 'CHEQUES.CHE_TIPO'
      Size = 3
    end
    object QChequesCLI_CODIGO: TIntegerField
      FieldName = 'CLI_CODIGO'
      Origin = 'CHEQUES.CLI_CODIGO'
    end
    object QChequesEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'CHEQUES.EMP_CODIGO'
    end
    object QChequesEMP_NUMERO: TIntegerField
      FieldName = 'EMP_NUMERO'
      Origin = 'CHEQUES.EMP_NUMERO'
    end
    object QChequesSUP_CODIGO: TIntegerField
      FieldName = 'SUP_CODIGO'
      Origin = 'CHEQUES.SUP_CODIGO'
    end
    object QChequesUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
      Origin = 'CHEQUES.USU_CODIGO'
    end
    object QChequesCHE_DESCUENTO: TFloatField
      FieldName = 'CHE_DESCUENTO'
      Origin = 'CHEQUES.CHE_DESCUENTO'
      currency = True
    end
    object QChequesCHE_IMPRESO: TIBStringField
      FieldName = 'CHE_IMPRESO'
      Origin = 'CHEQUES.CHE_IMPRESO'
      Size = 1
    end
    object QChequesCHE_ABONO: TFloatField
      FieldName = 'CHE_ABONO'
      Origin = 'CHEQUES.CHE_ABONO'
      currency = True
    end
  end
  object dsCheques: TDataSource
    DataSet = QCheques
    Left = 216
    Top = 224
  end
  object QDetalle: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    OnNewRecord = QDetalleNewRecord
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
        Name = 'BAN'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
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
      'BAN_CODIGO, CAT_CUENTA, CAT_NOMBRE, CHE_NUMERO, '
      'DET_MONTO, DET_ORIGEN, DET_SECUENCIA, EMP_CODIGO '
      'FROM'
      'DET_CHEQUE'
      'WHERE '
      'EMP_CODIGO = :EMP'
      'AND BAN_CODIGO = :BAN'
      'AND CHE_NUMERO = :NUM'
      'ORDER BY'
      'DET_SECUENCIA')
    Left = 184
    Top = 256
    object QDetalleBAN_CODIGO: TIntegerField
      FieldName = 'BAN_CODIGO'
      Origin = 'DET_CHEQUE.BAN_CODIGO'
    end
    object QDetalleCAT_CUENTA: TIBStringField
      FieldName = 'CAT_CUENTA'
      Origin = 'DET_CHEQUE.CAT_CUENTA'
      Size = 15
    end
    object QDetalleCAT_NOMBRE: TIBStringField
      FieldName = 'CAT_NOMBRE'
      Origin = 'DET_CHEQUE.CAT_NOMBRE'
      Size = 60
    end
    object QDetalleCHE_NUMERO: TIntegerField
      FieldName = 'CHE_NUMERO'
      Origin = 'DET_CHEQUE.CHE_NUMERO'
    end
    object QDetalleDET_MONTO: TFloatField
      FieldName = 'DET_MONTO'
      Origin = 'DET_CHEQUE.DET_MONTO'
      currency = True
    end
    object QDetalleDET_SECUENCIA: TIntegerField
      FieldName = 'DET_SECUENCIA'
      Origin = 'DET_CHEQUE.DET_SECUENCIA'
    end
    object QDetalleEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'DET_CHEQUE.EMP_CODIGO'
    end
    object QDetalleDET_ORIGEN: TIBStringField
      FieldName = 'DET_ORIGEN'
      Origin = 'DET_CHEQUE.DET_ORIGEN'
      Size = 7
    end
  end
  object dsDetalle: TDataSource
    DataSet = QDetalle
    Left = 216
    Top = 256
  end
  object Query1: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <>
    Left = 288
    Top = 256
  end
end
