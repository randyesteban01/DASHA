object frmBancos: TfrmBancos
  Left = 200
  Top = 131
  ActiveControl = DBEdit2
  BorderIcons = [biSystemMenu, biMinimize, biHelp]
  BorderStyle = bsSingle
  Caption = 'Bancos'
  ClientHeight = 331
  ClientWidth = 519
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 8
    Top = 7
    Width = 409
    Height = 41
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 13
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object DBEdit1: TDBEdit
      Left = 48
      Top = 10
      Width = 73
      Height = 21
      Color = clInfoBk
      DataField = 'BAN_CODIGO'
      DataSource = dsBancos
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
  end
  object TPanel
    Left = 264
    Top = 288
    Width = 249
    Height = 41
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object btInsert: TBitBtn
      Left = 6
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Crear'
      TabOrder = 0
      TabStop = False
      OnClick = btInsertClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
        333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
        0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
        07333337F33333337F333330FFFFFFFF07333337F33333337F333330FFFFFFFF
        07333FF7F33333337FFFBBB0FFFFFFFF0BB37777F3333333777F3BB0FFFFFFFF
        0BBB3777F3333FFF77773330FFFF000003333337F333777773333330FFFF0FF0
        33333337F3337F37F3333330FFFF0F0B33333337F3337F77FF333330FFFF003B
        B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
        3BB33773333773333773B333333B3333333B7333333733333337}
      NumGlyphs = 2
    end
    object btEdit: TBitBtn
      Left = 86
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Modificar'
      TabOrder = 1
      TabStop = False
      OnClick = btEditClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
        000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
        00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
        F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
        0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
        FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
        FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
        0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
        00333377737FFFFF773333303300000003333337337777777333}
      NumGlyphs = 2
    end
    object btDelete: TBitBtn
      Left = 166
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Eliminar'
      TabOrder = 2
      TabStop = False
      OnClick = btDeleteClick
      Glyph.Data = {
        42010000424D4201000000000000760000002800000011000000110000000100
        040000000000CC00000000000000000000001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        777770000000777777777777777770000000777777777777770F700000007777
        0F777777777770000000777000F7777770F770000000777000F777770F777000
        00007777000F77700F777000000077777000F700F7777000000077777700000F
        7777700000007777777000F777777000000077777700000F7777700000007777
        7000F70F7777700000007770000F77700F7770000000770000F7777700F77000
        00007700F7777777700F70000000777777777777777770000000777777777777
        777770000000}
    end
  end
  object Panel3: TPanel
    Left = 424
    Top = 56
    Width = 89
    Height = 225
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 2
    object btPost: TBitBtn
      Left = 6
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Grabar'
      Enabled = False
      TabOrder = 0
      OnClick = btPostClick
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
      Left = 6
      Top = 40
      Width = 75
      Height = 25
      Caption = 'Cance&lar'
      Enabled = False
      TabOrder = 1
      OnClick = btCancelClick
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
    object btClose: TBitBtn
      Left = 6
      Top = 192
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
  end
  object Panel5: TPanel
    Left = 8
    Top = 288
    Width = 249
    Height = 41
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 3
    object btFind: TBitBtn
      Left = 168
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Buscar'
      TabOrder = 0
      TabStop = False
      OnClick = btFindClick
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
    object btnext: TBitBtn
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Siguien&te'
      TabOrder = 1
      TabStop = False
      OnClick = btnextClick
    end
    object btprior: TBitBtn
      Left = 88
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Anterior'
      TabOrder = 2
      TabStop = False
      OnClick = btpriorClick
    end
  end
  object Panel2: TPanel
    Left = 8
    Top = 56
    Width = 409
    Height = 225
    TabOrder = 4
    object Label2: TLabel
      Left = 48
      Top = 8
      Width = 37
      Height = 13
      Caption = 'Nombre'
    end
    object Label4: TLabel
      Left = 40
      Top = 32
      Width = 45
      Height = 13
      Caption = 'Direccion'
    end
    object Label5: TLabel
      Left = 43
      Top = 80
      Width = 42
      Height = 13
      Caption = 'Tel'#233'fono'
    end
    object Label6: TLabel
      Left = 220
      Top = 80
      Width = 17
      Height = 13
      Caption = 'Fax'
    end
    object Label7: TLabel
      Left = 26
      Top = 104
      Width = 59
      Height = 13
      Caption = 'P'#225'gina Web'
    end
    object Label8: TLabel
      Left = 57
      Top = 128
      Width = 28
      Height = 13
      Caption = 'E-mail'
    end
    object Label9: TLabel
      Left = 39
      Top = 56
      Width = 46
      Height = 13
      Caption = 'Localidad'
    end
    object Label11: TLabel
      Left = 42
      Top = 152
      Width = 43
      Height = 13
      Caption = 'Contacto'
    end
    object Label3: TLabel
      Left = 16
      Top = 176
      Width = 56
      Height = 13
      Caption = 'Ult. Cheque'
      FocusControl = DBEdit3
    end
    object DBEdit2: TDBEdit
      Left = 96
      Top = 8
      Width = 257
      Height = 21
      CharCase = ecUpperCase
      DataField = 'BAN_NOMBRE'
      DataSource = dsBancos
      TabOrder = 0
    end
    object DBEdit4: TDBEdit
      Left = 96
      Top = 32
      Width = 257
      Height = 21
      DataField = 'BAN_DIRECCION'
      DataSource = dsBancos
      TabOrder = 1
    end
    object DBEdit5: TDBEdit
      Left = 96
      Top = 56
      Width = 257
      Height = 21
      DataField = 'BAN_LOCALIDAD'
      DataSource = dsBancos
      TabOrder = 2
    end
    object DBEdit6: TDBEdit
      Left = 96
      Top = 80
      Width = 97
      Height = 21
      DataField = 'BAN_TELEFONO'
      DataSource = dsBancos
      TabOrder = 3
    end
    object DBEdit7: TDBEdit
      Left = 248
      Top = 80
      Width = 105
      Height = 21
      DataField = 'BAN_FAX'
      DataSource = dsBancos
      TabOrder = 4
    end
    object DBEdit8: TDBEdit
      Left = 96
      Top = 104
      Width = 257
      Height = 21
      DataField = 'BAN_WEB'
      DataSource = dsBancos
      TabOrder = 5
    end
    object DBEdit9: TDBEdit
      Left = 96
      Top = 128
      Width = 257
      Height = 21
      DataField = 'BAN_EMAIL'
      DataSource = dsBancos
      TabOrder = 6
    end
    object DBEdit11: TDBEdit
      Left = 96
      Top = 152
      Width = 257
      Height = 21
      CharCase = ecUpperCase
      DataField = 'BAN_CONTACTO'
      DataSource = dsBancos
      TabOrder = 7
    end
    object DBEdit3: TDBEdit
      Left = 96
      Top = 176
      Width = 57
      Height = 21
      DataField = 'BAN_CHEQUE'
      DataSource = dsBancos
      TabOrder = 8
    end
    object DBRadioGroup1: TDBRadioGroup
      Left = 160
      Top = 176
      Width = 193
      Height = 41
      Caption = 'Modifica la secuencia del cheque'
      Columns = 2
      DataField = 'BAN_MODSECUENCIA'
      DataSource = dsBancos
      Items.Strings = (
        'Si'
        'No')
      TabOrder = 9
      Values.Strings = (
        'S'
        'N')
    end
  end
  object Search: TQrySearchDlgIB
    Title = 'Listado de Proveedores'
    ResultField = 'sup_codigo'
    Query.Strings = (
      'select sup_nombre, sup_codigo'
      'from proveedores')
    AliasFields.Strings = (
      'Nombre'
      'C'#243'digo')
    AliasName = DM.IBDatabase
    Left = 192
    Top = 192
  end
  object QBancos: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.IBTransaction1
    AfterDelete = QBancosAfterDelete
    AfterPost = QBancosAfterPost
    BeforePost = QBancosBeforePost
    OnNewRecord = QBancosNewRecord
    BufferChunks = 1000
    CachedUpdates = True
    DataSource = DM.dsEmpresas
    SQL.Strings = (
      
        'select BAN_CODIGO, BAN_CONTACTO, BAN_DIRECCION, BAN_NOMBRE, BAN_' +
        'TELEFONO, EMP_CODIGO, BAN_LOCALIDAD, BAN_EMAIL, BAN_FAX, BAN_WEB' +
        ', BAN_CHEQUE, BAN_MODSECUENCIA from BANCOS'
      'where emp_codigo = :emp_codigo')
    UpdateObject = UPDBancos
    Left = 192
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'emp_codigo'
        ParamType = ptUnknown
      end>
    object QBancosBAN_CODIGO: TIntegerField
      FieldName = 'BAN_CODIGO'
      Origin = 'BANCOS.BAN_CODIGO'
    end
    object QBancosBAN_CONTACTO: TIBStringField
      FieldName = 'BAN_CONTACTO'
      Origin = 'BANCOS.BAN_CONTACTO'
      Size = 60
    end
    object QBancosBAN_DIRECCION: TIBStringField
      FieldName = 'BAN_DIRECCION'
      Origin = 'BANCOS.BAN_DIRECCION'
      Size = 60
    end
    object QBancosBAN_NOMBRE: TIBStringField
      FieldName = 'BAN_NOMBRE'
      Origin = 'BANCOS.BAN_NOMBRE'
      Size = 60
    end
    object QBancosBAN_TELEFONO: TIBStringField
      FieldName = 'BAN_TELEFONO'
      Origin = 'BANCOS.BAN_TELEFONO'
      Size = 30
    end
    object QBancosEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'BANCOS.EMP_CODIGO'
    end
    object QBancosBAN_LOCALIDAD: TIBStringField
      FieldName = 'BAN_LOCALIDAD'
      Origin = 'BANCOS.BAN_LOCALIDAD'
      Size = 60
    end
    object QBancosBAN_EMAIL: TIBStringField
      FieldName = 'BAN_EMAIL'
      Origin = 'BANCOS.BAN_EMAIL'
      Size = 60
    end
    object QBancosBAN_FAX: TIBStringField
      FieldName = 'BAN_FAX'
      Origin = 'BANCOS.BAN_FAX'
      Size = 30
    end
    object QBancosBAN_WEB: TIBStringField
      FieldName = 'BAN_WEB'
      Origin = 'BANCOS.BAN_WEB'
      Size = 60
    end
    object QBancosBAN_CHEQUE: TIntegerField
      FieldName = 'BAN_CHEQUE'
      Origin = 'BANCOS.BAN_CHEQUE'
    end
    object QBancosBAN_MODSECUENCIA: TIBStringField
      FieldName = 'BAN_MODSECUENCIA'
      Origin = 'BANCOS.BAN_MODSECUENCIA'
      Size = 1
    end
  end
  object dsBancos: TDataSource
    AutoEdit = False
    DataSet = QBancos
    OnStateChange = dsBancosStateChange
    Left = 224
    Top = 128
  end
  object UPDBancos: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  EMP_CODIGO,'
      '  BAN_CODIGO,'
      '  BAN_NOMBRE,'
      '  BAN_DIRECCION,'
      '  BAN_TELEFONO,'
      '  BAN_CONTACTO,'
      '  BAN_LOCALIDAD,'
      '  BAN_FAX,'
      '  BAN_WEB,'
      '  BAN_EMAIL,'
      '  BAN_CHEQUE,'
      '  BAN_MODSECUENCIA'
      'from BANCOS '
      'where'
      '  EMP_CODIGO = :EMP_CODIGO and'
      '  BAN_CODIGO = :BAN_CODIGO')
    ModifySQL.Strings = (
      'update BANCOS'
      'set'
      '  EMP_CODIGO = :EMP_CODIGO,'
      '  BAN_CODIGO = :BAN_CODIGO,'
      '  BAN_NOMBRE = :BAN_NOMBRE,'
      '  BAN_DIRECCION = :BAN_DIRECCION,'
      '  BAN_TELEFONO = :BAN_TELEFONO,'
      '  BAN_CONTACTO = :BAN_CONTACTO,'
      '  BAN_LOCALIDAD = :BAN_LOCALIDAD,'
      '  BAN_FAX = :BAN_FAX,'
      '  BAN_WEB = :BAN_WEB,'
      '  BAN_EMAIL = :BAN_EMAIL,'
      '  BAN_CHEQUE = :BAN_CHEQUE,'
      '  BAN_MODSECUENCIA = :BAN_MODSECUENCIA'
      'where'
      '  EMP_CODIGO = :OLD_EMP_CODIGO and'
      '  BAN_CODIGO = :OLD_BAN_CODIGO')
    InsertSQL.Strings = (
      'insert into BANCOS'
      
        '  (EMP_CODIGO, BAN_CODIGO, BAN_NOMBRE, BAN_DIRECCION, BAN_TELEFO' +
        'NO, BAN_CONTACTO, '
      
        '   BAN_LOCALIDAD, BAN_FAX, BAN_WEB, BAN_EMAIL, BAN_CHEQUE, BAN_M' +
        'ODSECUENCIA)'
      'values'
      
        '  (:EMP_CODIGO, :BAN_CODIGO, :BAN_NOMBRE, :BAN_DIRECCION, :BAN_T' +
        'ELEFONO, '
      
        '   :BAN_CONTACTO, :BAN_LOCALIDAD, :BAN_FAX, :BAN_WEB, :BAN_EMAIL' +
        ', :BAN_CHEQUE, '
      '   :BAN_MODSECUENCIA)')
    DeleteSQL.Strings = (
      'delete from BANCOS'
      'where'
      '  EMP_CODIGO = :OLD_EMP_CODIGO and'
      '  BAN_CODIGO = :OLD_BAN_CODIGO')
    Left = 256
    Top = 128
  end
end
