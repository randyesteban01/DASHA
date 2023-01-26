object frmBuscaFactura: TfrmBuscaFactura
  Left = 361
  Top = 324
  ActiveControl = edNumero
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Buscar Factura'
  ClientHeight = 183
  ClientWidth = 391
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 72
    Width = 78
    Height = 13
    Caption = 'Tipos de factura'
  end
  object Label2: TLabel
    Left = 16
    Top = 96
    Width = 90
    Height = 13
    Caption = 'N'#250'mero de factura'
  end
  object Label3: TLabel
    Left = 16
    Top = 48
    Width = 40
    Height = 13
    Caption = 'Sucursal'
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 112
    Top = 72
    Width = 265
    Height = 21
    DropDownRows = 20
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyField = 'TFA_CODIGO'
    ListField = 'TFA_NOMBRE'
    ListSource = dsTipo
    ParentFont = False
    TabOrder = 1
  end
  object edNumero: TEdit
    Left = 112
    Top = 96
    Width = 81
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
  end
  object BitBtn1: TBitBtn
    Left = 208
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Buscar >>'
    Default = True
    TabOrder = 3
    OnClick = BitBtn1Click
  end
  object btClose: TBitBtn
    Left = 296
    Top = 144
    Width = 75
    Height = 25
    Caption = '&Salir'
    TabOrder = 4
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
  object rbForma: TRadioGroup
    Left = 16
    Top = 8
    Width = 89
    Height = 33
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'A'
      'B')
    TabOrder = 5
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 112
    Top = 48
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
  object QTipo: TADOQuery
    Connection = DM.ADOSigma
    DataSource = DM.dsEmpresas
    Parameters = <
      item
        Name = 'emp_codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select TFA_CODIGO, TFA_NOMBRE from TIPOSFACTURA'
      'where emp_codigo = :emp_codigo'
      'order by tfa_codigo')
    Left = 32
    Top = 112
    object QTipoTFA_CODIGO: TIntegerField
      FieldName = 'TFA_CODIGO'
      Origin = 'TIPOSFACTURA.TFA_CODIGO'
      Required = True
    end
    object QTipoTFA_NOMBRE: TIBStringField
      FieldName = 'TFA_NOMBRE'
      Origin = 'TIPOSFACTURA.TFA_NOMBRE'
      Size = 60
    end
  end
  object dsTipo: TDataSource
    DataSet = QTipo
    Left = 64
    Top = 112
  end
  object QSucursal: TADOQuery
    Connection = DM.ADOSigma
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
    Left = 32
    Top = 144
    object QSucursalsuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object QSucursalsuc_nombre: TStringField
      FieldName = 'suc_nombre'
      Size = 60
    end
  end
  object dsSuc: TDataSource
    DataSet = QSucursal
    Left = 64
    Top = 144
  end
end
