object frmCashFlow_ImprimeMes: TfrmCashFlow_ImprimeMes
  Left = 473
  Top = 304
  BorderStyle = bsSingle
  Caption = 'Cashflow'
  ClientHeight = 116
  ClientWidth = 257
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  DesignSize = (
    257
    116)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 19
    Height = 13
    Caption = 'Mes'
  end
  object Label2: TLabel
    Left = 16
    Top = 40
    Width = 29
    Height = 13
    Caption = 'Grupo'
  end
  object cbMes: TComboBox
    Left = 48
    Top = 16
    Width = 185
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 0
    Text = 'Enero'
    Items.Strings = (
      'Enero'
      'Febrero'
      'Marzo'
      'Abril'
      'Mayo'
      'Junio'
      'Julio'
      'Agosto'
      'Septiembre'
      'Octubre'
      'Noviembre'
      'Diciembre')
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 48
    Top = 40
    Width = 185
    Height = 21
    KeyField = 'GrupoID'
    ListField = 'Nombre'
    ListSource = dsGrupos
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 56
    Top = 72
    Width = 91
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Imprimir'
    TabOrder = 2
    OnClick = BitBtn1Click
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
  object btClose: TBitBtn
    Left = 152
    Top = 72
    Width = 73
    Height = 25
    Anchors = [akTop, akRight]
    Caption = '&Salir'
    TabOrder = 3
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
  object QGrupos: TADOQuery
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
      'select'
      'GrupoID, Nombre'
      'from'
      'Cashflow_Grupo'
      'where'
      'emp_codigo = :emp_codigo'
      'order by'
      '1')
    Left = 8
    Top = 64
    object QGruposGrupoID: TIntegerField
      FieldName = 'GrupoID'
    end
    object QGruposNombre: TStringField
      FieldName = 'Nombre'
      Size = 80
    end
  end
  object dsGrupos: TDataSource
    DataSet = QGrupos
    Left = 40
    Top = 64
  end
end
