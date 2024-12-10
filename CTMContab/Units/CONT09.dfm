object frmBancos: TfrmBancos
  Left = 483
  Top = 159
  BorderIcons = [biSystemMenu, biMinimize, biHelp]
  BorderStyle = bsSingle
  Caption = 'Bancos'
  ClientHeight = 383
  ClientWidth = 550
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
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 47
    Width = 545
    Height = 34
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object Label14: TLabel
      Left = 128
      Top = 8
      Width = 41
      Height = 13
      Caption = 'Sucursal'
    end
    object DBEdit1: TDBEdit
      Left = 48
      Top = 8
      Width = 73
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      DataField = 'BAN_CODIGO'
      DataSource = dsBancos
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 176
      Top = 8
      Width = 225
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
      TabOrder = 1
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 88
    Width = 545
    Height = 289
    ActivePage = TabSheet1
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Datos Generales'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      object Label2: TLabel
        Left = 16
        Top = 8
        Width = 37
        Height = 13
        Caption = 'Nombre'
      end
      object Label4: TLabel
        Left = 16
        Top = 32
        Width = 43
        Height = 13
        Caption = 'Direccion'
      end
      object Label5: TLabel
        Left = 16
        Top = 80
        Width = 42
        Height = 13
        Caption = 'Tel'#233'fono'
      end
      object Label6: TLabel
        Left = 220
        Top = 80
        Width = 18
        Height = 13
        Caption = 'Fax'
      end
      object Label7: TLabel
        Left = 16
        Top = 104
        Width = 57
        Height = 13
        Caption = 'P'#225'gina Web'
      end
      object Label8: TLabel
        Left = 16
        Top = 128
        Width = 28
        Height = 13
        Caption = 'E-mail'
      end
      object Label9: TLabel
        Left = 16
        Top = 56
        Width = 44
        Height = 13
        Caption = 'Localidad'
      end
      object Label11: TLabel
        Left = 16
        Top = 152
        Width = 44
        Height = 13
        Caption = 'Contacto'
      end
      object Label3: TLabel
        Left = 16
        Top = 176
        Width = 57
        Height = 13
        Caption = 'Ult. Cheque'
        FocusControl = DBEdit3
      end
      object btmoneda: TSpeedButton
        Left = 156
        Top = 200
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
        OnClick = btmonedaClick
      end
      object Label15: TLabel
        Left = 16
        Top = 200
        Width = 38
        Height = 13
        Caption = 'Moneda'
        FocusControl = DBEdit3
      end
      object Label16: TLabel
        Left = 16
        Top = 224
        Width = 72
        Height = 13
        Caption = 'Balance m'#237'nimo'
        FocusControl = DBEdit3
      end
      object Label18: TLabel
        Left = 184
        Top = 179
        Width = 33
        Height = 14
        Caption = 'C'#243'digo'
      end
      object DBEdit2: TDBEdit
        Left = 96
        Top = 8
        Width = 257
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'BAN_NOMBRE'
        DataSource = dsBancos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit4: TDBEdit
        Left = 96
        Top = 32
        Width = 257
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'BAN_DIRECCION'
        DataSource = dsBancos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit5: TDBEdit
        Left = 96
        Top = 56
        Width = 257
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'BAN_LOCALIDAD'
        DataSource = dsBancos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object DBEdit6: TDBEdit
        Left = 96
        Top = 80
        Width = 97
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'BAN_TELEFONO'
        DataSource = dsBancos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object DBEdit7: TDBEdit
        Left = 248
        Top = 80
        Width = 105
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'BAN_FAX'
        DataSource = dsBancos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object DBEdit8: TDBEdit
        Left = 96
        Top = 104
        Width = 257
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'BAN_WEB'
        DataSource = dsBancos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object DBEdit9: TDBEdit
        Left = 96
        Top = 128
        Width = 257
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'BAN_EMAIL'
        DataSource = dsBancos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
      end
      object DBEdit11: TDBEdit
        Left = 96
        Top = 152
        Width = 257
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'BAN_CONTACTO'
        DataSource = dsBancos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
      end
      object DBEdit3: TDBEdit
        Left = 96
        Top = 176
        Width = 57
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'BAN_CHEQUE'
        DataSource = dsBancos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 360
        Top = 8
        Width = 169
        Height = 57
        Caption = 'Modifica la secuencia del cheque'
        DataField = 'BAN_MODSECUENCIA'
        DataSource = dsBancos
        Items.Strings = (
          'Si'
          'No')
        TabOrder = 11
        Values.Strings = (
          'S'
          'N')
      end
      object DBEdit14: TDBEdit
        Left = 96
        Top = 200
        Width = 57
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'mon_codigo'
        DataSource = dsBancos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
      end
      object tmoneda: TEdit
        Left = 184
        Top = 200
        Width = 169
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
        TabOrder = 12
      end
      object DBRadioGroup2: TDBRadioGroup
        Left = 360
        Top = 72
        Width = 169
        Height = 57
        Caption = 'Idioma Impresion'
        DataField = 'ban_idioma_numeracion'
        DataSource = dsBancos
        Items.Strings = (
          'Espa'#241'ol'
          'Ingl'#233's')
        TabOrder = 13
        Values.Strings = (
          'ES'
          'IN')
      end
      object DBCheckBox1: TDBCheckBox
        Left = 360
        Top = 196
        Width = 169
        Height = 22
        Caption = 'Utilizar como tarjeta de cr'#233'dito'
        DataField = 'ban_tarjeta'
        DataSource = dsBancos
        TabOrder = 14
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBRadioGroup3: TDBRadioGroup
        Left = 360
        Top = 136
        Width = 169
        Height = 57
        Caption = 'Secuencia de cheques a utilizar'
        DataField = 'ban_tipo_secuencia'
        DataSource = dsBancos
        Items.Strings = (
          'Especificada en el banco'
          'Ultima secuencia')
        TabOrder = 15
        Values.Strings = (
          'B'
          'U')
      end
      object DBCheckBox2: TDBCheckBox
        Left = 360
        Top = 216
        Width = 105
        Height = 17
        Caption = 'Permite sobregiro'
        DataField = 'ban_permite_sobregiro'
        DataSource = dsBancos
        TabOrder = 16
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBEdit15: TDBEdit
        Left = 96
        Top = 224
        Width = 89
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'ban_balance_minimo'
        DataSource = dsBancos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
      end
      object dbchkban_imprime_negritas: TDBCheckBox
        Left = 360
        Top = 236
        Width = 105
        Height = 17
        Caption = 'Imprimir Negritas'
        DataField = 'ban_imprime_negritas'
        DataSource = dsBancos
        TabOrder = 17
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBEdit16: TDBEdit
        Left = 233
        Top = 176
        Width = 120
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'codigo_banco'
        DataSource = dsBancos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 18
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Contabilidad'
      ImageIndex = 1
      object Label10: TLabel
        Left = 8
        Top = 16
        Width = 78
        Height = 13
        Caption = 'Cuenta contable'
        FocusControl = DBEdit10
      end
      object Label12: TLabel
        Left = 8
        Top = 40
        Width = 91
        Height = 13
        Caption = 'Numero de entrada'
        FocusControl = DBEdit12
      end
      object Label13: TLabel
        Left = 8
        Top = 64
        Width = 78
        Height = 13
        Caption = 'Cuenta bancaria'
        FocusControl = DBEdit13
      end
      object btCuenta: TSpeedButton
        Left = 164
        Top = 16
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
        OnClick = btCuentaClick
      end
      object Label17: TLabel
        Left = 8
        Top = 88
        Width = 72
        Height = 13
        Caption = 'Tipo de cuenta'
        FocusControl = DBEdit13
      end
      object DBEdit10: TDBEdit
        Left = 104
        Top = 16
        Width = 57
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'CAT_CUENTA'
        DataSource = dsBancos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit12: TDBEdit
        Left = 104
        Top = 40
        Width = 57
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'ENT_NUMERO'
        DataSource = dsBancos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit13: TDBEdit
        Left = 104
        Top = 64
        Width = 89
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'BAN_CUENTA'
        DataSource = dsBancos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object tCuenta: TEdit
        Left = 192
        Top = 16
        Width = 201
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
      object DBComboBox1: TDBComboBox
        Left = 104
        Top = 88
        Width = 145
        Height = 21
        DataField = 'ban_tipo_cuenta'
        DataSource = dsBancos
        ItemHeight = 13
        Items.Strings = (
          'CORRIENTE'
          'AHORRO')
        TabOrder = 4
      end
    end
  end
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 550
    Height = 42
    AutoSize = True
    Bands = <
      item
        Control = ToolBar1
        ImageIndex = -1
        MinHeight = 38
        Width = 546
      end>
    object ToolBar1: TToolBar
      Left = 9
      Top = 0
      Width = 533
      Height = 38
      AutoSize = True
      ButtonHeight = 36
      ButtonWidth = 50
      Caption = 'ToolBar1'
      Flat = True
      Images = DM.ImgMant
      ShowCaptions = True
      TabOrder = 0
      object ToolButton13: TToolButton
        Left = 0
        Top = 0
        Action = btPrior
      end
      object ToolButton12: TToolButton
        Left = 50
        Top = 0
        Action = btNext
      end
      object ToolButton14: TToolButton
        Left = 100
        Top = 0
        Width = 8
        Caption = 'ToolButton14'
        ImageIndex = 1
        Style = tbsSeparator
      end
      object ToolButton1: TToolButton
        Left = 108
        Top = 0
        Action = btInsert
      end
      object ToolButton2: TToolButton
        Left = 158
        Top = 0
        Action = btEdit
      end
      object ToolButton3: TToolButton
        Left = 208
        Top = 0
        Action = btDelete
      end
      object ToolButton4: TToolButton
        Left = 258
        Top = 0
        Width = 8
        Caption = 'ToolButton4'
        ImageIndex = 3
        Style = tbsSeparator
      end
      object ToolButton5: TToolButton
        Left = 266
        Top = 0
        Action = btPost
      end
      object ToolButton6: TToolButton
        Left = 316
        Top = 0
        Action = btCancel
      end
      object ToolButton7: TToolButton
        Left = 366
        Top = 0
        Width = 8
        Caption = 'ToolButton7'
        ImageIndex = 5
        Style = tbsSeparator
      end
      object ToolButton8: TToolButton
        Left = 374
        Top = 0
        Action = btFind
      end
      object ToolButton9: TToolButton
        Left = 424
        Top = 0
        Action = btPrint
      end
      object ToolButton10: TToolButton
        Left = 474
        Top = 0
        Width = 8
        Caption = 'ToolButton10'
        ImageIndex = 7
        Style = tbsSeparator
      end
      object ToolButton11: TToolButton
        Left = 482
        Top = 0
        Action = btClose
      end
    end
  end
  object Search: TQrySearchDlgADO
    Title = 'Listado de Proveedores'
    ResultField = 'sup_codigo'
    Query.Strings = (
      'select sup_nombre, sup_codigo'
      'from proveedores')
    AliasFields.Strings = (
      'Nombre'
      'C'#243'digo')
    AliasName = DM.ADOSigma
    Left = 272
    Top = 184
  end
  object QBancos: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    BeforePost = QBancosBeforePost
    AfterPost = QBancosAfterPost
    AfterDelete = QBancosAfterDelete
    OnNewRecord = QBancosNewRecord
    DataSource = dsSuc
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
        Name = 'suc_codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT'
      'BAN_CODIGO, BAN_CONTACTO, BAN_DIRECCION, BAN_NOMBRE, '
      'BAN_TELEFONO, EMP_CODIGO, BAN_LOCALIDAD, BAN_EMAIL, '
      'BAN_FAX, BAN_WEB, BAN_CHEQUE, BAN_MODSECUENCIA,'
      'BAN_CUENTA, ENT_NUMERO, CAT_CUENTA, suc_codigo,'
      
        'mon_codigo, ban_idioma_numeracion, ban_tarjeta, ban_tipo_secuenc' +
        'ia,'
      'ban_permite_sobregiro, ban_monto_sobregiro, ban_balance_minimo,'
      'ban_tipo_cuenta, ban_imprime_negritas,codigo_banco'
      'FROM'
      'BANCOS'
      'WHERE '
      'EMP_CODIGO = :emp_codigo'
      'and suc_codigo = :suc_codigo')
    Left = 272
    Top = 120
    object QBancosBAN_CODIGO: TIntegerField
      FieldName = 'BAN_CODIGO'
    end
    object QBancosBAN_CONTACTO: TStringField
      FieldName = 'BAN_CONTACTO'
      Size = 60
    end
    object QBancosBAN_DIRECCION: TStringField
      FieldName = 'BAN_DIRECCION'
      Size = 60
    end
    object QBancosBAN_NOMBRE: TStringField
      FieldName = 'BAN_NOMBRE'
      Size = 60
    end
    object QBancosBAN_TELEFONO: TStringField
      FieldName = 'BAN_TELEFONO'
      Size = 30
    end
    object QBancosEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
    end
    object QBancosBAN_LOCALIDAD: TStringField
      FieldName = 'BAN_LOCALIDAD'
      Size = 60
    end
    object QBancosBAN_EMAIL: TStringField
      FieldName = 'BAN_EMAIL'
      Size = 60
    end
    object QBancosBAN_FAX: TStringField
      FieldName = 'BAN_FAX'
      Size = 30
    end
    object QBancosBAN_WEB: TStringField
      FieldName = 'BAN_WEB'
      Size = 60
    end
    object QBancosBAN_CHEQUE: TIntegerField
      FieldName = 'BAN_CHEQUE'
    end
    object QBancosBAN_MODSECUENCIA: TStringField
      FieldName = 'BAN_MODSECUENCIA'
      Size = 1
    end
    object QBancosBAN_CUENTA: TStringField
      FieldName = 'BAN_CUENTA'
      Size = 15
    end
    object QBancosENT_NUMERO: TIntegerField
      FieldName = 'ENT_NUMERO'
    end
    object QBancosCAT_CUENTA: TStringField
      FieldName = 'CAT_CUENTA'
      OnGetText = QBancosCAT_CUENTAGetText
      Size = 15
    end
    object QBancossuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object QBancosmon_codigo: TIntegerField
      FieldName = 'mon_codigo'
      OnGetText = QBancosmon_codigoGetText
    end
    object QBancosban_idioma_numeracion: TStringField
      FieldName = 'ban_idioma_numeracion'
      Size = 2
    end
    object QBancosban_tarjeta: TStringField
      FieldName = 'ban_tarjeta'
      Size = 5
    end
    object QBancosban_tipo_secuencia: TStringField
      FieldName = 'ban_tipo_secuencia'
      Size = 1
    end
    object QBancosban_permite_sobregiro: TStringField
      FieldName = 'ban_permite_sobregiro'
      Size = 5
    end
    object QBancosban_monto_sobregiro: TBCDField
      FieldName = 'ban_monto_sobregiro'
      currency = True
      Precision = 18
      Size = 2
    end
    object QBancosban_balance_minimo: TBCDField
      FieldName = 'ban_balance_minimo'
      currency = True
      Precision = 18
      Size = 2
    end
    object QBancosban_tipo_cuenta: TStringField
      FieldName = 'ban_tipo_cuenta'
      Size = 10
    end
    object QBancosban_imprime_negritas: TBooleanField
      FieldName = 'ban_imprime_negritas'
    end
    object QBancoscodigo_banco: TStringField
      FieldName = 'codigo_banco'
      Size = 60
    end
  end
  object dsBancos: TDataSource
    AutoEdit = False
    DataSet = QBancos
    OnStateChange = dsBancosStateChange
    Left = 304
    Top = 120
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
    Left = 272
    Top = 152
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
    Left = 304
    Top = 152
  end
  object ActionList2: TActionList
    Left = 240
    Top = 152
    object btPrior: TAction
      Caption = 'Anterior'
      ImageIndex = 8
      OnExecute = btpriorClick
    end
    object btNext: TAction
      Caption = 'Pr'#243'ximo'
      ImageIndex = 9
      OnExecute = btnextClick
    end
    object btInsert: TAction
      Caption = 'Insertar'
      ImageIndex = 6
      OnExecute = btInsertClick
    end
    object btEdit: TAction
      Caption = 'Modificar'
      ImageIndex = 7
      OnExecute = btEditClick
    end
    object btDelete: TAction
      Caption = 'Eliminar'
      ImageIndex = 1
      OnExecute = btDeleteClick
    end
    object btPost: TAction
      Caption = 'Grabar'
      ImageIndex = 2
      OnExecute = btPostClick
    end
    object btCancel: TAction
      Caption = 'Cancelar'
      ImageIndex = 3
      OnExecute = btCancelClick
    end
    object btFind: TAction
      Caption = 'Buscar'
      ImageIndex = 4
      OnExecute = btFindClick
    end
    object btPrint: TAction
      Caption = 'Imprimir'
      ImageIndex = 5
    end
    object btClose: TAction
      Caption = 'Salir'
      ImageIndex = 0
      OnExecute = btCloseClick
    end
  end
end
