object frmProductosDespachados: TfrmProductosDespachados
  Left = 226
  Top = 265
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Productos Pedidos -> Despachados'
  ClientHeight = 174
  ClientWidth = 496
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 481
    Height = 161
    TabOrder = 0
    object Label12: TLabel
      Left = 8
      Top = 56
      Width = 33
      Height = 13
      Caption = 'Cliente'
    end
    object btcliente: TSpeedButton
      Left = 150
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
      OnClick = btclienteClick
    end
    object Label2: TLabel
      Left = 8
      Top = 32
      Width = 76
      Height = 13
      Caption = 'Rango de fecha'
    end
    object Label8: TLabel
      Left = 8
      Top = 7
      Width = 40
      Height = 13
      Caption = 'Sucursal'
    end
    object edCliente: TEdit
      Left = 88
      Top = 56
      Width = 57
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
      OnChange = edClienteChange
      OnKeyDown = edClienteKeyDown
    end
    object tCliente: TEdit
      Left = 176
      Top = 56
      Width = 297
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
      TabOrder = 1
    end
    object Fecha1: TDateTimePicker
      Left = 88
      Top = 32
      Width = 81
      Height = 21
      Date = 37626.000000000000000000
      Time = 37626.000000000000000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object Fecha2: TDateTimePicker
      Left = 176
      Top = 32
      Width = 81
      Height = 21
      Date = 37626.000000000000000000
      Time = 37626.000000000000000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object rgtipo: TRadioGroup
      Left = 88
      Top = 80
      Width = 289
      Height = 73
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Pendiente de Despacho'
        'Despachados'
        'Pendiente de Facturar'
        'Facturados'
        'Todos')
      TabOrder = 4
    end
    object btPrint: TBitBtn
      Left = 400
      Top = 96
      Width = 75
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 5
      OnClick = btPrintClick
      Glyph.Data = {
        66010000424D6601000000000000760000002800000014000000140000000100
        040000000000F000000000000000000000001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        DDDDDDDD0000DDDDDDDDDDDDDDDDDDDD0000DD000DDDDDDDDDD000DD0000D000
        000000000000000D0000D0F8888888888888880D0000D0F8888888888888880D
        0000D0F8888888822899880D0000D0FFFFFFFFFFFFFFFF0D0000D70077777777
        7777007D0000DDD00000000000000DDD0000DDD00FFFFFFFFFF00DDD0000DDDD
        0F00000000F0DDDD0000DDDD0FFFFFFFFFF0DDDD0000DDDD0F00000000F0DDDD
        0000DDDD0FFFFFFFFFF0DDDD0000DDDD0F00FFFFFFF0DDDD0000DDDD0FFFFFFF
        FFF0DDDD0000DDDD000000000000DDDD0000DDDDDDDDDDDDDDDDDDDD0000DDDD
        DDDDDDDDDDDDDDDD0000}
    end
    object btClose: TBitBtn
      Left = 400
      Top = 128
      Width = 75
      Height = 25
      Caption = '&Salir'
      TabOrder = 6
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
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 88
      Top = 7
      Width = 321
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
      TabOrder = 7
    end
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
    Left = 320
    Top = 88
    object QSucursalsuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object QSucursalsuc_nombre: TStringField
      FieldName = 'suc_nombre'
      Size = 60
    end
    object QSucursalalm_codigo: TIntegerField
      FieldName = 'alm_codigo'
    end
    object QSucursalemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
  end
  object dsSuc: TDataSource
    DataSet = QSucursal
    Left = 352
    Top = 88
  end
  object Search: TQrySearchDlgADO
    AliasName = DM.ADOSigma
    Left = 320
    Top = 120
  end
end
