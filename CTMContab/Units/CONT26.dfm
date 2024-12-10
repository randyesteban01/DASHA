object frmConsBalances: TfrmConsBalances
  Left = 308
  Top = 159
  ActiveControl = edCuenta
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Balances de una Cuenta'
  ClientHeight = 298
  ClientWidth = 505
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
  object Label3: TLabel
    Left = 9
    Top = 64
    Width = 35
    Height = 13
    Caption = 'Cuenta'
  end
  object btCuenta: TSpeedButton
    Left = 139
    Top = 64
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
  object Label1: TLabel
    Left = 8
    Top = 112
    Width = 42
    Height = 13
    Caption = 'ENERO'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 136
    Width = 57
    Height = 13
    Caption = 'FEBRERO'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 8
    Top = 160
    Width = 44
    Height = 13
    Caption = 'MARZO'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 8
    Top = 184
    Width = 38
    Height = 13
    Caption = 'ABRIL'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 8
    Top = 208
    Width = 36
    Height = 13
    Caption = 'MAYO'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 8
    Top = 232
    Width = 39
    Height = 13
    Caption = 'JUNIO'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 265
    Top = 112
    Width = 37
    Height = 13
    Caption = 'JULIO'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel
    Left = 265
    Top = 136
    Width = 52
    Height = 13
    Caption = 'AGOSTO'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label10: TLabel
    Left = 265
    Top = 160
    Width = 80
    Height = 13
    Caption = 'SEPTIEMBRE'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label11: TLabel
    Left = 265
    Top = 184
    Width = 58
    Height = 13
    Caption = 'OCTUBRE'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label12: TLabel
    Left = 265
    Top = 208
    Width = 74
    Height = 13
    Caption = 'NOVIEMBRE'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label13: TLabel
    Left = 265
    Top = 232
    Width = 71
    Height = 13
    Caption = 'DICIEMBRE'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label14: TLabel
    Left = 9
    Top = 40
    Width = 19
    Height = 13
    Caption = 'A'#241'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label15: TLabel
    Left = 9
    Top = 16
    Width = 40
    Height = 13
    Caption = 'Sucursal'
  end
  object btClose: TBitBtn
    Left = 400
    Top = 264
    Width = 75
    Height = 25
    Caption = '&Salir'
    TabOrder = 1
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
  object edCuenta: TEdit
    Left = 56
    Top = 64
    Width = 81
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
    TabOrder = 2
    OnKeyDown = edCuentaKeyDown
  end
  object tCuenta: TEdit
    Left = 168
    Top = 64
    Width = 329
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
  object btRefresh: TBitBtn
    Left = 240
    Top = 264
    Width = 75
    Height = 25
    Caption = 'Refrescar >>'
    TabOrder = 4
    OnClick = btRefreshClick
  end
  object BitBtn3: TBitBtn
    Left = 320
    Top = 264
    Width = 75
    Height = 25
    Caption = 'Imprimir'
    TabOrder = 5
    OnClick = BitBtn3Click
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
  object lbEne: TStaticText
    Left = 73
    Top = 112
    Width = 97
    Height = 17
    Alignment = taRightJustify
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = '0.00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
  end
  object lbFeb: TStaticText
    Left = 73
    Top = 136
    Width = 97
    Height = 17
    Alignment = taRightJustify
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = '0.00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
  end
  object lbMar: TStaticText
    Left = 73
    Top = 160
    Width = 97
    Height = 17
    Alignment = taRightJustify
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = '0.00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
  end
  object lbAbr: TStaticText
    Left = 73
    Top = 184
    Width = 97
    Height = 17
    Alignment = taRightJustify
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = '0.00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
  end
  object lbMay: TStaticText
    Left = 73
    Top = 208
    Width = 97
    Height = 17
    Alignment = taRightJustify
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = '0.00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
  end
  object lbJun: TStaticText
    Left = 73
    Top = 232
    Width = 97
    Height = 17
    Alignment = taRightJustify
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = '0.00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 11
  end
  object lbJul: TStaticText
    Left = 348
    Top = 112
    Width = 97
    Height = 17
    Alignment = taRightJustify
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = '0.00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 12
  end
  object lbAgo: TStaticText
    Left = 348
    Top = 136
    Width = 97
    Height = 17
    Alignment = taRightJustify
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = '0.00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 13
  end
  object lbSep: TStaticText
    Left = 348
    Top = 160
    Width = 97
    Height = 17
    Alignment = taRightJustify
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = '0.00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 14
  end
  object lbOct: TStaticText
    Left = 348
    Top = 184
    Width = 97
    Height = 17
    Alignment = taRightJustify
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = '0.00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 15
  end
  object lbNov: TStaticText
    Left = 348
    Top = 208
    Width = 97
    Height = 17
    Alignment = taRightJustify
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = '0.00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 16
  end
  object lbDic: TStaticText
    Left = 348
    Top = 232
    Width = 97
    Height = 17
    Alignment = taRightJustify
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = '0.00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 17
  end
  object spAno: TSpinEdit
    Left = 56
    Top = 40
    Width = 49
    Height = 22
    TabStop = False
    EditorEnabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxValue = 3000
    MinValue = 1900
    ParentFont = False
    TabOrder = 18
    Value = 1900
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 56
    Top = 16
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
    TabOrder = 0
  end
  object Search: TQrySearchDlgADO
    AliasName = DM.ADOSigma
    Left = 200
    Top = 152
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
    Left = 184
    Top = 216
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
    Left = 216
    Top = 216
  end
end
