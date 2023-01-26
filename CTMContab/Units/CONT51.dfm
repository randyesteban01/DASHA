object frmPasarDocumentos: TfrmPasarDocumentos
  Left = 439
  Top = 213
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Pasar Documentos a Contabilidad'
  ClientHeight = 281
  ClientWidth = 329
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
  PixelsPerInch = 96
  TextHeight = 13
  object Label8: TLabel
    Left = 6
    Top = 8
    Width = 41
    Height = 13
    Caption = 'Sucursal'
  end
  object Panel1: TPanel
    Left = 8
    Top = 40
    Width = 313
    Height = 57
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 91
      Height = 13
      Caption = 'Rango de Fecha'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Fecha1: TDateTimePicker
      Left = 112
      Top = 16
      Width = 81
      Height = 21
      Date = 37775.000000000000000000
      Time = 37775.000000000000000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Fecha2: TDateTimePicker
      Left = 200
      Top = 16
      Width = 81
      Height = 21
      Date = 37775.000000000000000000
      Time = 37775.000000000000000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
  end
  object ckCheque: TCheckBox
    Left = 8
    Top = 112
    Width = 129
    Height = 17
    Caption = 'Cheques'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object ckDepositos: TCheckBox
    Left = 8
    Top = 128
    Width = 129
    Height = 17
    Caption = 'Dep'#243'sitos'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object ckCargos: TCheckBox
    Left = 8
    Top = 144
    Width = 129
    Height = 17
    Caption = 'Cargos Bancarios'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object btClose: TBitBtn
    Left = 240
    Top = 248
    Width = 75
    Height = 25
    Caption = '&Salir'
    TabOrder = 5
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
  object BitBtn1: TBitBtn
    Left = 160
    Top = 248
    Width = 75
    Height = 25
    Caption = 'Processar >>'
    TabOrder = 6
    OnClick = BitBtn1Click
  end
  object ckRecibos: TCheckBox
    Left = 8
    Top = 160
    Width = 129
    Height = 17
    Caption = 'Recibos'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
  end
  object ckFacturas: TCheckBox
    Left = 8
    Top = 176
    Width = 129
    Height = 17
    Caption = 'Facturas de Venta'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
  end
  object ckCompra: TCheckBox
    Left = 8
    Top = 192
    Width = 129
    Height = 17
    Caption = 'Facturas de CxP'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
  end
  object ckDesem: TCheckBox
    Left = 152
    Top = 112
    Width = 161
    Height = 17
    Caption = 'Desembolsos de Caja'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
  end
  object ckNC: TCheckBox
    Left = 152
    Top = 160
    Width = 161
    Height = 17
    Caption = 'Notas de Credito CxC'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
  end
  object ckND: TCheckBox
    Left = 152
    Top = 176
    Width = 161
    Height = 17
    Caption = 'Notas de Debito CxC'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 56
    Top = 8
    Width = 265
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
  object cknccxp: TCheckBox
    Left = 152
    Top = 192
    Width = 161
    Height = 17
    Caption = 'Notas de Credito CxP'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 13
  end
  object ckliq: TCheckBox
    Left = 8
    Top = 208
    Width = 129
    Height = 17
    Caption = 'Liquidaciones'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 14
  end
  object ckconduce: TCheckBox
    Left = 152
    Top = 208
    Width = 129
    Height = 17
    Caption = 'Conduces'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 15
  end
  object ckdevventa: TCheckBox
    Left = 152
    Top = 128
    Width = 161
    Height = 17
    Caption = 'Devoluciones en venta'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 16
  end
  object ckdevcompra: TCheckBox
    Left = 152
    Top = 144
    Width = 161
    Height = 17
    Caption = 'Devoluciones en compra'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 17
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
    Left = 8
    Top = 240
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
    Left = 40
    Top = 240
  end
end
