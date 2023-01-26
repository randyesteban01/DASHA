object frmGenerarCheques: TfrmGenerarCheques
  Left = 204
  Top = 276
  ActiveControl = gbancos
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Generar Cheques'
  ClientHeight = 416
  ClientWidth = 693
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 33
    Width = 693
    Height = 295
    Align = alClient
    Color = clInfoBk
    Ctl3D = False
    DataSource = dsSolicitud
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnKeyDown = DBGrid1KeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'BAN_NOMBRE'
        Title.Caption = 'Banco'
        Width = 191
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'SOL_NUMERO'
        Title.Alignment = taCenter
        Title.Caption = 'N'#250'mero'
        Width = 70
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'SOL_FECHA'
        Title.Alignment = taCenter
        Title.Caption = 'Fecha'
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SOL_MONTO'
        Title.Alignment = taCenter
        Title.Caption = 'Monto'
        Width = 93
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SOL_BENEF'
        Title.Caption = 'Beneficiario'
        Width = 232
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'generar'
        Title.Caption = '  '
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 328
    Width = 693
    Height = 88
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object lbCantidad: TLabel
      Left = 8
      Top = 7
      Width = 71
      Height = 13
      Caption = '0 Solicitudes'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 8
      Top = 56
      Width = 85
      Height = 13
      Caption = 'Fecha generaci'#243'n'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object btClose: TBitBtn
      Left = 608
      Top = 57
      Width = 75
      Height = 25
      Caption = '&Salir'
      TabOrder = 0
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
    object btRefresh: TBitBtn
      Left = 608
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Refrescar >>'
      TabOrder = 1
      OnClick = btRefreshClick
    end
    object StaticText1: TStaticText
      Left = 8
      Top = 29
      Width = 177
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '[ F2 ] - Aprobar / No Aprobar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object gbancos: TDBGrid
      Left = 192
      Top = 2
      Width = 409
      Height = 79
      Color = clInfoBk
      DataSource = dsBancos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 3
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'BANCO'
          Title.Caption = 'Banco'
          Width = 202
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BALANCE'
          Title.Alignment = taCenter
          Title.Caption = 'Balance'
          Width = 94
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MONTOGENERAR'
          Title.Alignment = taCenter
          Title.Caption = 'Monto a pagar'
          Width = 89
          Visible = True
        end>
    end
    object btgenera: TBitBtn
      Left = 608
      Top = 32
      Width = 75
      Height = 25
      Caption = 'Generar cks.'
      TabOrder = 4
      OnClick = btgeneraClick
    end
    object fecha: TDateTimePicker
      Left = 96
      Top = 56
      Width = 89
      Height = 21
      Date = 38503.000000000000000000
      Time = 38503.000000000000000000
      TabOrder = 5
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 693
    Height = 33
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 2
    object Label14: TLabel
      Left = 10
      Top = 8
      Width = 41
      Height = 13
      Caption = 'Sucursal'
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 64
      Top = 8
      Width = 289
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
      TabOrder = 0
    end
  end
  object QSolicitud: TADOQuery
    Connection = DM.ADOSigma
    AfterOpen = QSolicitudAfterOpen
    OnCalcFields = QSolicitudCalcFields
    DataSource = dsSuc
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
        Name = 'SUC_CODIGO'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT'
      'B.BAN_NOMBRE, S.SOL_NUMERO, S.SOL_FECHA,'
      'S.SOL_CONCEPTO1, S.SOL_CONCEPTO2,'
      'S.SOL_BENEF, S.SOL_MONTO, S.SOL_STATUS,'
      'S.SOL_TIPO, U.USU_NOMBRE, S.EMP_CODIGO,'
      'S.BAN_CODIGO, S.SOL_CHEQUE, S.SOL_GENERACHEQUE,'
      'S.SOL_CONCEPTO3, S.SUC_CODIGO'
      'FROM'
      'SOLICITUD S, BANCOS B, USUARIOS U'
      'WHERE'
      'S.EMP_CODIGO = B.EMP_CODIGO'
      'AND S.BAN_CODIGO = B.BAN_CODIGO'
      'AND S.SUC_CODIGO = B.SUC_CODIGO'
      'AND S.USU_CODIGO = U.USU_CODIGO'
      'AND S.SOL_STATUS = '#39'EMI'#39
      'AND S.EMP_CODIGO = :EMP_CODIGO'
      'AND S.SUC_CODIGO = :SUC_CODIGO'
      'ORDER BY'
      'S.SOL_MONTO DESC')
    Left = 416
    Top = 128
    object QSolicitudBAN_NOMBRE: TIBStringField
      FieldName = 'BAN_NOMBRE'
      Origin = 'BANCOS.BAN_NOMBRE'
      Size = 60
    end
    object QSolicitudSOL_NUMERO: TIntegerField
      FieldName = 'SOL_NUMERO'
      Origin = 'SOLICITUD.SOL_NUMERO'
      Required = True
      DisplayFormat = '000000'
    end
    object QSolicitudSOL_FECHA: TDateTimeField
      FieldName = 'SOL_FECHA'
      Origin = 'SOLICITUD.SOL_FECHA'
    end
    object QSolicitudSOL_CONCEPTO1: TIBStringField
      FieldName = 'SOL_CONCEPTO1'
      Origin = 'SOLICITUD.SOL_CONCEPTO1'
      Size = 60
    end
    object QSolicitudSOL_CONCEPTO2: TIBStringField
      FieldName = 'SOL_CONCEPTO2'
      Origin = 'SOLICITUD.SOL_CONCEPTO2'
      Size = 60
    end
    object QSolicitudSOL_BENEF: TIBStringField
      FieldName = 'SOL_BENEF'
      Origin = 'SOLICITUD.SOL_BENEF'
      Size = 60
    end
    object QSolicitudSOL_MONTO: TFloatField
      FieldName = 'SOL_MONTO'
      Origin = 'SOLICITUD.SOL_MONTO'
      currency = True
    end
    object QSolicitudSOL_STATUS: TIBStringField
      FieldName = 'SOL_STATUS'
      Origin = 'SOLICITUD.SOL_STATUS'
      Size = 3
    end
    object QSolicitudSOL_TIPO: TIBStringField
      FieldName = 'SOL_TIPO'
      Origin = 'SOLICITUD.SOL_TIPO'
      Size = 3
    end
    object QSolicitudUSU_NOMBRE: TIBStringField
      FieldName = 'USU_NOMBRE'
      Origin = 'USUARIOS.USU_NOMBRE'
      Size = 60
    end
    object QSolicitudEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'SOLICITUD.EMP_CODIGO'
      Required = True
    end
    object QSolicitudBAN_CODIGO: TIntegerField
      FieldName = 'BAN_CODIGO'
      Origin = 'SOLICITUD.BAN_CODIGO'
    end
    object QSolicitudSOL_CHEQUE: TIntegerField
      FieldName = 'SOL_CHEQUE'
      Origin = 'SOLICITUD.SOL_CHEQUE'
      DisplayFormat = '000000'
    end
    object QSolicitudSOL_GENERACHEQUE: TIBStringField
      FieldName = 'SOL_GENERACHEQUE'
      Origin = 'SOLICITUD.SOL_GENERACHEQUE'
      Size = 1
    end
    object QSolicitudgenerar: TStringField
      FieldKind = fkCalculated
      FieldName = 'generar'
      Size = 1
      Calculated = True
    end
    object QSolicitudSOL_CONCEPTO3: TStringField
      FieldName = 'SOL_CONCEPTO3'
      Size = 60
    end
    object QSolicitudSUC_CODIGO: TIntegerField
      FieldName = 'SUC_CODIGO'
    end
  end
  object dsSolicitud: TDataSource
    DataSet = QSolicitud
    Left = 448
    Top = 128
  end
  object QBancos: TADOQuery
    Connection = DM.ADOSigma
    DataSource = dsSuc
    Parameters = <
      item
        Name = 'emp_codigo'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'fecha'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'suc_codigo'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT '
      '* '
      'FROM '
      'CONTPR_BALANCES_BANCOS (:emp_codigo, :fecha, :suc_codigo)')
    Left = 416
    Top = 160
    object QBancosBANCO: TIBStringField
      FieldName = 'BANCO'
      Origin = 'CONTPR_BALANCES_BANCOS.BANCO'
      Size = 60
    end
    object QBancosBALANCE: TFloatField
      FieldName = 'BALANCE'
      Origin = 'CONTPR_BALANCES_BANCOS.BALANCE'
      currency = True
    end
    object QBancosMONTOGENERAR: TFloatField
      FieldName = 'MONTOGENERAR'
      Origin = 'CONTPR_BALANCES_BANCOS.MONTOGENERAR'
      currency = True
    end
    object QBancosid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
  end
  object dsBancos: TDataSource
    DataSet = QBancos
    Left = 448
    Top = 160
  end
  object Query1: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <>
    Left = 416
    Top = 192
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
    Left = 224
    Top = 176
    object QSucursalsuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object QSucursalsuc_nombre: TStringField
      FieldName = 'suc_nombre'
      Size = 60
    end
    object QSucursalemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QSucursalalm_codigo: TIntegerField
      FieldName = 'alm_codigo'
    end
  end
  object dsSuc: TDataSource
    DataSet = QSucursal
    Left = 256
    Top = 176
  end
end
