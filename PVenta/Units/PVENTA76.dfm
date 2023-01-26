object frmParametros: TfrmParametros
  Left = 108
  Top = 105
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Par'#225'metros generales'
  ClientHeight = 389
  ClientWidth = 559
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
  object tvParam: TTreeView
    Left = 0
    Top = 0
    Width = 137
    Height = 389
    Align = alLeft
    Indent = 19
    TabOrder = 0
    Items.Data = {
      05000000220000000000000000000000FFFFFFFFFFFFFFFF0000000000000000
      0947656E6572616C6573240000000000000000000000FFFFFFFFFFFFFFFF0000
      0000000000000B466163747572616369F36E2E0000000000000000000000FFFF
      FFFFFFFFFFFF000000000000000015466F726D61746F7320646520496D707265
      7369F36E2C0000000000000000000000FFFFFFFFFFFFFFFF0000000000000000
      13416E74696775656461642064652053616C646F220000000000000000000000
      FFFFFFFFFFFFFFFF000000000000000009536567757269646164}
  end
  object pnGeneral: TPanel
    Left = 144
    Top = 8
    Width = 409
    Height = 345
    TabOrder = 1
    object Label1: TLabel
      Left = 296
      Top = 16
      Width = 19
      Height = 13
      Caption = 'Itbis'
      FocusControl = DBEdit1
    end
    object Label12: TLabel
      Left = 8
      Top = 79
      Width = 172
      Height = 13
      Caption = 'Tipo movimiento para nota de d'#233'bito'
    end
    object btTipo: TSpeedButton
      Left = 238
      Top = 78
      Width = 23
      Height = 22
      Enabled = False
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
    end
    object Label14: TLabel
      Left = 111
      Top = 104
      Width = 69
      Height = 13
      Caption = 'Tipo de Precio'
    end
    object DBRadioGroup1: TDBRadioGroup
      Left = 8
      Top = 8
      Width = 145
      Height = 65
      Caption = 'C'#243'digo del producto a usar'
      Items.Strings = (
        'C'#243'digo'
        'Ref. Orioginal'
        'Ref. Fabricante')
      TabOrder = 0
    end
    object DBRadioGroup2: TDBRadioGroup
      Left = 151
      Top = 8
      Width = 138
      Height = 65
      Caption = 'C'#243'digo del cliente a usar'
      Items.Strings = (
        'C'#243'digo'
        'Referenca')
      TabOrder = 1
    end
    object DBEdit1: TDBEdit
      Left = 328
      Top = 16
      Width = 73
      Height = 21
      DataField = 'PAR_ITBIS'
      DataSource = dsParametros
      TabOrder = 2
    end
    object DBEdit12: TDBEdit
      Left = 192
      Top = 79
      Width = 41
      Height = 21
      DataField = 'PAR_MOVNDE'
      DataSource = dsParametros
      TabOrder = 3
    end
    object tTipo: TEdit
      Left = 264
      Top = 79
      Width = 137
      Height = 21
      Color = clInfoBk
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object DBComboBox1: TDBComboBox
      Left = 192
      Top = 104
      Width = 209
      Height = 21
      Style = csDropDownList
      DataField = 'PAR_TIPOPRECIO'
      DataSource = dsParametros
      ItemHeight = 13
      Items.Strings = (
        'Precio 1'
        'Precio 2'
        'Precio 3'
        'Precio 4')
      TabOrder = 5
    end
  end
  object btClose: TBitBtn
    Left = 480
    Top = 360
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
  object btPost: TBitBtn
    Left = 320
    Top = 360
    Width = 75
    Height = 25
    Caption = '&Grabar'
    TabOrder = 3
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000010000000000000000000
      BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
      7777770000000000007770330770000330777033077000033077703307700003
      30777033000000033077703333333333307770330000000330777030FFFFFFF0
      30777030FCCCCFF030777030FFCCCFF030777037FCCCCFF000777077CCCFCFF0
      8077777CCC777700007777CCC77777777777777C777777777777}
  end
  object btCancel: TBitBtn
    Left = 400
    Top = 360
    Width = 75
    Height = 25
    Caption = 'Cance&lar'
    TabOrder = 4
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
      3333333777333777FF3333993333339993333377FF3333377FF3399993333339
      993337777FF3333377F3393999333333993337F777FF333337FF993399933333
      399377F3777FF333377F993339993333399377F33777FF33377F993333999333
      399377F333777FF3377F993333399933399377F3333777FF377F993333339993
      399377FF3333777FF7733993333339993933373FF3333777F7F3399933333399
      99333773FF3333777733339993333339933333773FFFFFF77333333999999999
      3333333777333777333333333999993333333333377777333333}
    NumGlyphs = 2
  end
  object QParametros: TIBQuery
    BufferChunks = 1000
    CachedUpdates = True
    SQL.Strings = (
      
        'select EMP_CODIGO, PAR_CODIGOPRODUCTO, PAR_CODIGOCLIENTE, PAR_TI' +
        'POPRECIO, PAR_ITBIS, PAR_FACFORMA, PAR_TFACODIGO, PAR_ALMACENVEN' +
        'TA, PAR_FORMATOCOT, PAR_FORMATODES, PAR_FORMATODEV, PAR_FORMATON' +
        'C, PAR_FORMATOND, PAR_FORMATOPED, PAR_FORMATORC, PAR_FORMATORI, ' +
        'PAR_PUERTOCOT, PAR_PUERTODES, PAR_PUERTODEV, PAR_PUERTONC, PAR_P' +
        'UERTOND, PAR_PUERTOPED, PAR_PUERTORC, PAR_PUERTORI, PAR_MOVNDE'
      'from PARAMETROS'
      'where EMP_CODIGO = :EMP_CODIGO')
    Left = 32
    Top = 192
    ParamData = <
      item
        DataType = ftInteger
        Name = 'EMP_CODIGO'
        ParamType = ptUnknown
        Size = 4
      end>
    object QParametrosEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'PARAMETROS.EMP_CODIGO'
      Required = True
    end
    object QParametrosPAR_CODIGOPRODUCTO: TIBStringField
      FieldName = 'PAR_CODIGOPRODUCTO'
      Origin = 'PARAMETROS.PAR_CODIGOPRODUCTO'
      Size = 1
    end
    object QParametrosPAR_CODIGOCLIENTE: TIBStringField
      FieldName = 'PAR_CODIGOCLIENTE'
      Origin = 'PARAMETROS.PAR_CODIGOCLIENTE'
      Size = 1
    end
    object QParametrosPAR_TIPOPRECIO: TIBStringField
      FieldName = 'PAR_TIPOPRECIO'
      Origin = 'PARAMETROS.PAR_TIPOPRECIO'
      Size = 7
    end
    object QParametrosPAR_ITBIS: TFloatField
      FieldName = 'PAR_ITBIS'
      Origin = 'PARAMETROS.PAR_ITBIS'
    end
    object QParametrosPAR_FACFORMA: TIBStringField
      FieldName = 'PAR_FACFORMA'
      Origin = 'PARAMETROS.PAR_FACFORMA'
      Size = 1
    end
    object QParametrosPAR_TFACODIGO: TIntegerField
      FieldName = 'PAR_TFACODIGO'
      Origin = 'PARAMETROS.PAR_TFACODIGO'
    end
    object QParametrosPAR_ALMACENVENTA: TIntegerField
      FieldName = 'PAR_ALMACENVENTA'
      Origin = 'PARAMETROS.PAR_ALMACENVENTA'
    end
    object QParametrosPAR_FORMATOCOT: TIntegerField
      FieldName = 'PAR_FORMATOCOT'
      Origin = 'PARAMETROS.PAR_FORMATOCOT'
    end
    object QParametrosPAR_FORMATODES: TIntegerField
      FieldName = 'PAR_FORMATODES'
      Origin = 'PARAMETROS.PAR_FORMATODES'
    end
    object QParametrosPAR_FORMATODEV: TIntegerField
      FieldName = 'PAR_FORMATODEV'
      Origin = 'PARAMETROS.PAR_FORMATODEV'
    end
    object QParametrosPAR_FORMATONC: TIntegerField
      FieldName = 'PAR_FORMATONC'
      Origin = 'PARAMETROS.PAR_FORMATONC'
    end
    object QParametrosPAR_FORMATOND: TIntegerField
      FieldName = 'PAR_FORMATOND'
      Origin = 'PARAMETROS.PAR_FORMATOND'
    end
    object QParametrosPAR_FORMATOPED: TIntegerField
      FieldName = 'PAR_FORMATOPED'
      Origin = 'PARAMETROS.PAR_FORMATOPED'
    end
    object QParametrosPAR_FORMATORC: TIntegerField
      FieldName = 'PAR_FORMATORC'
      Origin = 'PARAMETROS.PAR_FORMATORC'
    end
    object QParametrosPAR_FORMATORI: TIntegerField
      FieldName = 'PAR_FORMATORI'
      Origin = 'PARAMETROS.PAR_FORMATORI'
    end
    object QParametrosPAR_PUERTOCOT: TIBStringField
      FieldName = 'PAR_PUERTOCOT'
      Origin = 'PARAMETROS.PAR_PUERTOCOT'
    end
    object QParametrosPAR_PUERTODES: TIBStringField
      FieldName = 'PAR_PUERTODES'
      Origin = 'PARAMETROS.PAR_PUERTODES'
    end
    object QParametrosPAR_PUERTODEV: TIBStringField
      FieldName = 'PAR_PUERTODEV'
      Origin = 'PARAMETROS.PAR_PUERTODEV'
    end
    object QParametrosPAR_PUERTONC: TIBStringField
      FieldName = 'PAR_PUERTONC'
      Origin = 'PARAMETROS.PAR_PUERTONC'
    end
    object QParametrosPAR_PUERTOND: TIBStringField
      FieldName = 'PAR_PUERTOND'
      Origin = 'PARAMETROS.PAR_PUERTOND'
    end
    object QParametrosPAR_PUERTOPED: TIBStringField
      FieldName = 'PAR_PUERTOPED'
      Origin = 'PARAMETROS.PAR_PUERTOPED'
    end
    object QParametrosPAR_PUERTORC: TIBStringField
      FieldName = 'PAR_PUERTORC'
      Origin = 'PARAMETROS.PAR_PUERTORC'
    end
    object QParametrosPAR_PUERTORI: TIBStringField
      FieldName = 'PAR_PUERTORI'
      Origin = 'PARAMETROS.PAR_PUERTORI'
    end
    object QParametrosPAR_MOVNDE: TIntegerField
      FieldName = 'PAR_MOVNDE'
      Origin = 'PARAMETROS.PAR_MOVNDE'
    end
  end
  object dsParametros: TDataSource
    DataSet = QParametros
    Left = 64
    Top = 192
  end
  object Search: TQrySearchDlgIB
    Title = 'Listado de Familias'
    ResultField = 'tfa_codigo'
    Query.Strings = (
      'select caj_nombre, caj_codigo'
      'from cajeros')
    AliasFields.Strings = (
      'Nombre'
      'C'#243'digo')
    AliasName = DM.IBDatabase
    Left = 32
    Top = 224
  end
end
