object frmProveedores: TfrmProveedores
  Left = 200
  Top = 131
  BorderIcons = [biSystemMenu, biMinimize, biHelp]
  BorderStyle = bsSingle
  Caption = 'Proveedores'
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
    object Label10: TLabel
      Left = 176
      Top = 13
      Width = 39
      Height = 13
      Caption = 'Balance'
    end
    object DBEdit1: TDBEdit
      Left = 48
      Top = 10
      Width = 73
      Height = 21
      Color = clInfoBk
      DataField = 'SUP_CODIGO'
      DataSource = dsProveedores
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit10: TDBEdit
      Left = 224
      Top = 10
      Width = 113
      Height = 21
      Color = clInfoBk
      DataField = 'SUP_BALANCE'
      DataSource = dsProveedores
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
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
  object PageControl1: TPageControl
    Left = 8
    Top = 50
    Width = 409
    Height = 233
    ActivePage = TabSheet1
    TabIndex = 0
    TabOrder = 4
    object TabSheet1: TTabSheet
      Caption = 'Datos Generales'
      object Label2: TLabel
        Left = 48
        Top = 8
        Width = 37
        Height = 13
        Caption = 'Nombre'
      end
      object Label3: TLabel
        Left = 62
        Top = 32
        Width = 23
        Height = 13
        Caption = 'RNC'
      end
      object Label4: TLabel
        Left = 40
        Top = 56
        Width = 45
        Height = 13
        Caption = 'Direccion'
      end
      object Label5: TLabel
        Left = 43
        Top = 104
        Width = 42
        Height = 13
        Caption = 'Tel'#233'fono'
      end
      object Label6: TLabel
        Left = 220
        Top = 104
        Width = 17
        Height = 13
        Caption = 'Fax'
      end
      object Label7: TLabel
        Left = 26
        Top = 128
        Width = 59
        Height = 13
        Caption = 'P'#225'gina Web'
      end
      object Label8: TLabel
        Left = 57
        Top = 152
        Width = 28
        Height = 13
        Caption = 'E-mail'
      end
      object Label9: TLabel
        Left = 39
        Top = 80
        Width = 46
        Height = 13
        Caption = 'Localidad'
      end
      object Label11: TLabel
        Left = 39
        Top = 176
        Width = 46
        Height = 13
        Caption = 'Vendedor'
      end
      object DBEdit2: TDBEdit
        Left = 96
        Top = 8
        Width = 257
        Height = 21
        CharCase = ecUpperCase
        DataField = 'SUP_NOMBRE'
        DataSource = dsProveedores
        TabOrder = 0
      end
      object DBEdit3: TDBEdit
        Left = 96
        Top = 32
        Width = 257
        Height = 21
        CharCase = ecUpperCase
        DataField = 'SUP_RNC'
        DataSource = dsProveedores
        TabOrder = 1
      end
      object DBEdit4: TDBEdit
        Left = 96
        Top = 56
        Width = 257
        Height = 21
        DataField = 'SUP_DIRECCION'
        DataSource = dsProveedores
        TabOrder = 2
      end
      object DBEdit5: TDBEdit
        Left = 96
        Top = 80
        Width = 257
        Height = 21
        DataField = 'SUP_LOCALIDAD'
        DataSource = dsProveedores
        TabOrder = 3
      end
      object DBEdit6: TDBEdit
        Left = 96
        Top = 104
        Width = 97
        Height = 21
        DataField = 'SUP_TELEFONO'
        DataSource = dsProveedores
        TabOrder = 4
      end
      object DBEdit7: TDBEdit
        Left = 248
        Top = 104
        Width = 105
        Height = 21
        DataField = 'SUP_FAX'
        DataSource = dsProveedores
        TabOrder = 5
      end
      object DBEdit8: TDBEdit
        Left = 96
        Top = 128
        Width = 257
        Height = 21
        DataField = 'SUP_WEB'
        DataSource = dsProveedores
        TabOrder = 6
      end
      object DBEdit9: TDBEdit
        Left = 96
        Top = 152
        Width = 257
        Height = 21
        DataField = 'SUP_EMAIL'
        DataSource = dsProveedores
        TabOrder = 7
      end
      object DBEdit11: TDBEdit
        Left = 96
        Top = 176
        Width = 257
        Height = 21
        CharCase = ecUpperCase
        DataField = 'SUP_VENDEDOR'
        DataSource = dsProveedores
        TabOrder = 8
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Cuentas por pagar'
      ImageIndex = 1
      object DBGrid3: TDBGrid
        Left = 0
        Top = 0
        Width = 401
        Height = 205
        Align = alClient
        Color = clInfoBk
        Ctl3D = False
        DataSource = dsCxP
        Options = [dgTitles, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'FAC_NUMERO'
            Title.Alignment = taCenter
            Title.Caption = 'N'#250'mero'
            Width = 77
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'FAC_FECHA'
            Title.Alignment = taCenter
            Title.Caption = 'Fecha'
            Width = 68
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FAC_TOTAL'
            Title.Alignment = taCenter
            Title.Caption = 'Total'
            Width = 78
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FAC_ABONO'
            Title.Alignment = taCenter
            Title.Caption = 'Abono'
            Width = 77
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Saldo'
            Title.Alignment = taCenter
            Width = 72
            Visible = True
          end>
      end
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
  object QProveedores: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.IBTransaction1
    AfterDelete = QProveedoresAfterDelete
    AfterOpen = QProveedoresAfterOpen
    AfterPost = QProveedoresAfterPost
    BeforePost = QProveedoresBeforePost
    OnNewRecord = QProveedoresNewRecord
    BufferChunks = 1000
    CachedUpdates = True
    SQL.Strings = (
      
        'select EMP_CODIGO, SUP_CODIGO, SUP_NOMBRE, SUP_RNC, SUP_DIRECCIO' +
        'N, SUP_LOCALIDAD, SUP_TELEFONO, SUP_FAX, SUP_WEB, SUP_EMAIL, SUP' +
        '_CUENTA, SUP_STATUS, SUP_BALANCE, SUP_VENDEDOR from PROVEEDORES'
      'where emp_codigo = :emp_codigo')
    UpdateObject = UPDProveedores
    Left = 192
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'emp_codigo'
        ParamType = ptUnknown
      end>
    object QProveedoresEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
    end
    object QProveedoresSUP_CODIGO: TIntegerField
      FieldName = 'SUP_CODIGO'
    end
    object QProveedoresSUP_NOMBRE: TIBStringField
      FieldName = 'SUP_NOMBRE'
      Size = 60
    end
    object QProveedoresSUP_RNC: TIBStringField
      FieldName = 'SUP_RNC'
      Size = 30
    end
    object QProveedoresSUP_DIRECCION: TIBStringField
      FieldName = 'SUP_DIRECCION'
      Size = 60
    end
    object QProveedoresSUP_LOCALIDAD: TIBStringField
      FieldName = 'SUP_LOCALIDAD'
      Size = 60
    end
    object QProveedoresSUP_TELEFONO: TIBStringField
      FieldName = 'SUP_TELEFONO'
      Size = 30
    end
    object QProveedoresSUP_FAX: TIBStringField
      FieldName = 'SUP_FAX'
      Size = 30
    end
    object QProveedoresSUP_WEB: TIBStringField
      FieldName = 'SUP_WEB'
      Size = 60
    end
    object QProveedoresSUP_EMAIL: TIBStringField
      FieldName = 'SUP_EMAIL'
      Size = 60
    end
    object QProveedoresSUP_CUENTA: TIBStringField
      FieldName = 'SUP_CUENTA'
      Size = 15
    end
    object QProveedoresSUP_STATUS: TIBStringField
      FieldName = 'SUP_STATUS'
      Size = 3
    end
    object QProveedoresSUP_BALANCE: TFloatField
      FieldName = 'SUP_BALANCE'
      currency = True
    end
    object QProveedoresSUP_VENDEDOR: TIBStringField
      FieldName = 'SUP_VENDEDOR'
      Size = 60
    end
  end
  object dsProveedores: TDataSource
    AutoEdit = False
    DataSet = QProveedores
    OnStateChange = dsProveedoresStateChange
    Left = 224
    Top = 128
  end
  object UPDProveedores: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  EMP_CODIGO,'
      '  SUP_CODIGO,'
      '  SUP_NOMBRE,'
      '  SUP_RNC,'
      '  SUP_DIRECCION,'
      '  SUP_LOCALIDAD,'
      '  SUP_TELEFONO,'
      '  SUP_FAX,'
      '  SUP_WEB,'
      '  SUP_EMAIL,'
      '  SUP_CUENTA,'
      '  SUP_STATUS,'
      '  SUP_BALANCE,'
      '  SUP_VENDEDOR'
      'from PROVEEDORES '
      'where'
      '  EMP_CODIGO = :EMP_CODIGO and'
      '  SUP_CODIGO = :SUP_CODIGO')
    ModifySQL.Strings = (
      'update PROVEEDORES'
      'set'
      '  EMP_CODIGO = :EMP_CODIGO,'
      '  SUP_CODIGO = :SUP_CODIGO,'
      '  SUP_NOMBRE = :SUP_NOMBRE,'
      '  SUP_RNC = :SUP_RNC,'
      '  SUP_DIRECCION = :SUP_DIRECCION,'
      '  SUP_LOCALIDAD = :SUP_LOCALIDAD,'
      '  SUP_TELEFONO = :SUP_TELEFONO,'
      '  SUP_FAX = :SUP_FAX,'
      '  SUP_WEB = :SUP_WEB,'
      '  SUP_EMAIL = :SUP_EMAIL,'
      '  SUP_CUENTA = :SUP_CUENTA,'
      '  SUP_STATUS = :SUP_STATUS,'
      '  SUP_BALANCE = :SUP_BALANCE,'
      '  SUP_VENDEDOR = :SUP_VENDEDOR'
      'where'
      '  EMP_CODIGO = :OLD_EMP_CODIGO and'
      '  SUP_CODIGO = :OLD_SUP_CODIGO')
    InsertSQL.Strings = (
      'insert into PROVEEDORES'
      
        '  (EMP_CODIGO, SUP_CODIGO, SUP_NOMBRE, SUP_RNC, SUP_DIRECCION, S' +
        'UP_LOCALIDAD, '
      
        '   SUP_TELEFONO, SUP_FAX, SUP_WEB, SUP_EMAIL, SUP_CUENTA, SUP_ST' +
        'ATUS, SUP_BALANCE, '
      '   SUP_VENDEDOR)'
      'values'
      
        '  (:EMP_CODIGO, :SUP_CODIGO, :SUP_NOMBRE, :SUP_RNC, :SUP_DIRECCI' +
        'ON, :SUP_LOCALIDAD, '
      
        '   :SUP_TELEFONO, :SUP_FAX, :SUP_WEB, :SUP_EMAIL, :SUP_CUENTA, :' +
        'SUP_STATUS, '
      '   :SUP_BALANCE, :SUP_VENDEDOR)')
    DeleteSQL.Strings = (
      'delete from PROVEEDORES'
      'where'
      '  EMP_CODIGO = :OLD_EMP_CODIGO and'
      '  SUP_CODIGO = :OLD_SUP_CODIGO')
    Left = 256
    Top = 128
  end
  object QCxP: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.IBTransaction1
    OnCalcFields = QCxPCalcFields
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dsProveedores
    SQL.Strings = (
      'select fac_numero, fac_fecha, fac_total, fac_abono'
      'from provfacturas'
      'where emp_codigo = :emp_codigo'
      'and sup_codigo = :sup_codigo'
      'order by fac_fecha desc')
    Left = 192
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'emp_codigo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sup_codigo'
        ParamType = ptUnknown
      end>
    object QCxPFAC_NUMERO: TIBStringField
      FieldName = 'FAC_NUMERO'
      Origin = 'PROVFACTURAS.FAC_NUMERO'
      Required = True
      Size = 15
    end
    object QCxPFAC_FECHA: TDateTimeField
      FieldName = 'FAC_FECHA'
      Origin = 'PROVFACTURAS.FAC_FECHA'
    end
    object QCxPFAC_TOTAL: TFloatField
      FieldName = 'FAC_TOTAL'
      Origin = 'PROVFACTURAS.FAC_TOTAL'
      currency = True
    end
    object QCxPFAC_ABONO: TFloatField
      FieldName = 'FAC_ABONO'
      Origin = 'PROVFACTURAS.FAC_ABONO'
      currency = True
    end
    object QCxPSaldo: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Saldo'
      currency = True
      Calculated = True
    end
  end
  object dsCxP: TDataSource
    DataSet = QCxP
    Left = 224
    Top = 160
  end
end
