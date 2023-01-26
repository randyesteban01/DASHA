object frmConsPago: TfrmConsPago
  Left = 225
  Top = 259
  ActiveControl = edUsuario
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Consulta de pago a proveedores'
  ClientHeight = 416
  ClientWidth = 685
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 376
    Width = 685
    Height = 40
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object lbCantidad: TLabel
      Left = 8
      Top = 13
      Width = 65
      Height = 13
      Caption = '0 Registros'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BitBtn2: TBitBtn
      Left = 520
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Imprimir'
      TabOrder = 0
      OnClick = BitBtn2Click
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
    object btRefresh: TBitBtn
      Left = 440
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Refrescar >>'
      TabOrder = 1
      OnClick = btRefreshClick
    end
    object btClose: TBitBtn
      Left = 600
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Salir'
      TabOrder = 2
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
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 685
    Height = 81
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object Label6: TLabel
      Left = 23
      Top = 8
      Width = 30
      Height = 13
      Caption = 'Fecha'
    end
    object Label7: TLabel
      Left = 230
      Top = 8
      Width = 36
      Height = 13
      Caption = 'Usuario'
    end
    object SpeedButton3: TSpeedButton
      Left = 308
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
      OnClick = SpeedButton3Click
    end
    object Label2: TLabel
      Left = 4
      Top = 32
      Width = 49
      Height = 13
      Caption = 'Proveedor'
    end
    object btProveedor: TSpeedButton
      Left = 116
      Top = 32
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
      OnClick = btProveedorClick
    end
    object Label1: TLabel
      Left = 22
      Top = 56
      Width = 31
      Height = 13
      Caption = 'Banco'
    end
    object btBanco: TSpeedButton
      Left = 116
      Top = 56
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
      OnClick = btBancoClick
    end
    object Fecha1: TDateTimePicker
      Left = 64
      Top = 8
      Width = 79
      Height = 21
      Date = 37506.000000000000000000
      Time = 37506.000000000000000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Fecha2: TDateTimePicker
      Left = 144
      Top = 8
      Width = 79
      Height = 21
      Date = 37506.000000000000000000
      Time = 37506.000000000000000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object tUsuario: TEdit
      Left = 332
      Top = 8
      Width = 173
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
    object edUsuario: TEdit
      Left = 272
      Top = 8
      Width = 33
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnChange = edUsuarioChange
      OnKeyDown = edUsuarioKeyDown
    end
    object edProveedor: TEdit
      Left = 64
      Top = 32
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
      OnChange = edProveedorChange
      OnKeyDown = edProveedorKeyDown
    end
    object tProveedor: TEdit
      Left = 144
      Top = 32
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
      TabOrder = 3
    end
    object rbTipo: TRadioGroup
      Left = 509
      Top = 2
      Width = 174
      Height = 77
      Align = alRight
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Todos'
        'Cheque'
        'Efectivo'
        'Nota de CR')
      TabOrder = 6
      OnClick = btRefreshClick
    end
    object edBAnco: TEdit
      Left = 64
      Top = 56
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
      TabOrder = 7
      OnChange = edBAncoChange
      OnKeyDown = edBAncoKeyDown
    end
    object tBanco: TEdit
      Left = 144
      Top = 56
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
      TabOrder = 8
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 81
    Width = 685
    Height = 295
    Align = alClient
    Color = clInfoBk
    Ctl3D = False
    DataSource = dsPagos
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'SUP_NOMBRE'
        Title.Caption = 'Nombre del Proveedor'
        Width = 176
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PAG_TIPO'
        Title.Alignment = taCenter
        Title.Caption = 'Tipo'
        Width = 36
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PAG_DOCUMENTO'
        Title.Alignment = taCenter
        Title.Caption = 'Documento'
        Width = 70
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PAG_FECHA'
        Title.Alignment = taCenter
        Title.Caption = 'Fecha'
        Width = 68
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PAG_MONTO'
        Title.Alignment = taCenter
        Title.Caption = 'Monto'
        Width = 70
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PAG_STATUS'
        Title.Alignment = taCenter
        Title.Caption = 'Status'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Banco'
        Width = 149
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_NOMBRE'
        Title.Caption = 'Usuario'
        Width = 119
        Visible = True
      end>
  end
  object QPagos: TADOQuery
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
        Name = 'fecha1'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'fecha2'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select '
      'p.EMP_CODIGO, p.PAG_DOCUMENTO, p.PAG_FECHA, p.PAG_MONTO, '
      'p.PAG_NUMERO, p.PAG_STATUS, p.PAG_TIPO, p.SUP_CODIGO,'
      's.sup_nombre, u.usu_nombre, p.ban_codigo'
      'from '
      'PAGOS P, proveedores s, usuarios u'
      'where p.emp_codigo = s.emp_codigo'
      'and p.sup_codigo = s.sup_codigo'
      'and p.emp_codigo = :emp_codigo'
      'and p.usu_codigo = u.usu_codigo'
      'and p.pag_fecha between :fecha1 and :fecha2'
      'order by p.pag_fecha desc')
    Left = 240
    Top = 104
    object QPagosEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'PAGOS.EMP_CODIGO'
      Required = True
    end
    object QPagosPAG_DOCUMENTO: TIBStringField
      FieldName = 'PAG_DOCUMENTO'
      Origin = 'PAGOS.PAG_DOCUMENTO'
      Size = 15
    end
    object QPagosPAG_FECHA: TDateTimeField
      FieldName = 'PAG_FECHA'
      Origin = 'PAGOS.PAG_FECHA'
    end
    object QPagosPAG_MONTO: TFloatField
      FieldName = 'PAG_MONTO'
      Origin = 'PAGOS.PAG_MONTO'
      currency = True
    end
    object QPagosPAG_NUMERO: TIntegerField
      FieldName = 'PAG_NUMERO'
      Origin = 'PAGOS.PAG_NUMERO'
      Required = True
    end
    object QPagosPAG_STATUS: TIBStringField
      FieldName = 'PAG_STATUS'
      Origin = 'PAGOS.PAG_STATUS'
      Size = 3
    end
    object QPagosPAG_TIPO: TIBStringField
      FieldName = 'PAG_TIPO'
      Origin = 'PAGOS.PAG_TIPO'
      Size = 1
    end
    object QPagosSUP_CODIGO: TIntegerField
      FieldName = 'SUP_CODIGO'
      Origin = 'PAGOS.SUP_CODIGO'
    end
    object QPagosSUP_NOMBRE: TIBStringField
      FieldName = 'SUP_NOMBRE'
      Origin = 'PROVEEDORES.SUP_NOMBRE'
      Size = 60
    end
    object QPagosUSU_NOMBRE: TIBStringField
      FieldName = 'USU_NOMBRE'
      Origin = 'USUARIOS.USU_NOMBRE'
      Size = 60
    end
    object QPagosBAN_CODIGO: TIntegerField
      FieldName = 'BAN_CODIGO'
      Origin = 'PAGOS.BAN_CODIGO'
    end
    object QPagosBanco: TStringField
      FieldKind = fkLookup
      FieldName = 'Banco'
      LookupDataSet = QBancos
      LookupKeyFields = 'BAN_CODIGO'
      LookupResultField = 'BAN_NOMBRE'
      KeyFields = 'BAN_CODIGO'
      Size = 60
      Lookup = True
    end
  end
  object dsPagos: TDataSource
    DataSet = QPagos
    Left = 272
    Top = 104
  end
  object Search: TQrySearchDlgADO
    AliasName = DM.ADOSigma
    Left = 240
    Top = 136
  end
  object QBancos: TADOQuery
    Connection = DM.ADOSigma
    DataSource = DM.dsEmpresas
    Parameters = <>
    SQL.Strings = (
      'select BAN_CODIGO, BAN_NOMBRE from BANCOS'
      'where emp_codigo = :emp_codigo'
      'order by ban_nombre')
    Left = 240
    Top = 168
    object QBancosBAN_CODIGO: TIntegerField
      FieldName = 'BAN_CODIGO'
      Origin = 'BANCOS.BAN_CODIGO'
      Required = True
    end
    object QBancosBAN_NOMBRE: TIBStringField
      FieldName = 'BAN_NOMBRE'
      Origin = 'BANCOS.BAN_NOMBRE'
      Size = 60
    end
  end
end
