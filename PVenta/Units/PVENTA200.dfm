object frmAntiguedadCxC: TfrmAntiguedadCxC
  Left = 383
  Top = 315
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Antiguedad de Saldo CxC'
  ClientHeight = 147
  ClientWidth = 381
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
  PixelsPerInch = 96
  TextHeight = 13
  object BitBtn1: TBitBtn
    Left = 192
    Top = 104
    Width = 83
    Height = 25
    Caption = 'Imprimir'
    TabOrder = 0
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
    Left = 281
    Top = 104
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
  object CheckBox1: TCheckBox
    Left = 16
    Top = 24
    Width = 81
    Height = 17
    Caption = 'Antiguedad'
    TabOrder = 2
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 104
    Top = 24
    Width = 257
    Height = 21
    KeyField = 'Desde'
    ListField = 'Descripcion'
    ListSource = dsAntiguedad
    TabOrder = 3
  end
  object QAntiguedad: TADOQuery
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
      'select a.Descripcion, Desde, Hasta from'
      
        '(select emp_codigo, par_dia1label as Descripcion, 1 as Desde, pa' +
        'r_dia1hasta as Hasta'
      'from paramantigsaldo'
      'union all'
      
        'select emp_codigo, par_dia2label as Descripcion, 2 as Desde, par' +
        '_dia2hasta as Hasta'
      'from paramantigsaldo'
      'union all'
      
        'select emp_codigo, par_dia3label as Descripcion, 3 as Desde, par' +
        '_dia3hasta as Hasta'
      'from paramantigsaldo'
      'union all'
      
        'select emp_codigo, par_dia4label as Descripcion, 4 as Desde, par' +
        '_dia4hasta as Hasta'
      'from paramantigsaldo'
      ') a'
      'where emp_codigo = :emp_codigo'
      '')
    Left = 80
    Top = 64
    object QAntiguedadDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 10
    end
    object QAntiguedadDesde: TIntegerField
      FieldName = 'Desde'
    end
    object QAntiguedadHasta: TIntegerField
      FieldName = 'Hasta'
    end
  end
  object dsAntiguedad: TDataSource
    DataSet = QAntiguedad
    Left = 112
    Top = 64
  end
  object Search: TQrySearchDlgADO
    AliasName = DM.ADOSigma
    Left = 16
    Top = 88
  end
end
