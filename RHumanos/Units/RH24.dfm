object frmPosicionesEmpleados: TfrmPosicionesEmpleados
  Left = 222
  Top = 450
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Posiciones recomendadas'
  ClientHeight = 176
  ClientWidth = 365
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 72
    Width = 38
    Height = 13
    Caption = 'Posici'#243'n'
  end
  object Label2: TLabel
    Left = 8
    Top = 40
    Width = 58
    Height = 13
    Caption = 'Clasificaci'#243'n'
  end
  object Label3: TLabel
    Left = 8
    Top = 8
    Width = 23
    Height = 13
    Caption = 'Nivel'
  end
  object BitBtn1: TBitBtn
    Left = 184
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Grabar'
    TabOrder = 0
    OnClick = BitBtn1Click
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF00FF00FF00FF000000
      0000008080000080800000000000000000000000000000000000000000000000
      0000FF00FF00FF00FF00000000000080800000000000FF00FF00FF00FF000000
      0000008080000080800000000000000000000000000000000000000000000000
      0000FF00FF00FF00FF00000000000080800000000000FF00FF00FF00FF000000
      0000008080000080800000000000000000000000000000000000000000000000
      0000FF00FF00FF00FF00000000000080800000000000FF00FF00FF00FF000000
      0000008080000080800000000000000000000000000000000000000000000000
      00000000000000000000000000000080800000000000FF00FF00FF00FF000000
      0000008080000080800000808000008080000080800000808000008080000080
      80000080800000808000008080000080800000000000FF00FF00FF00FF000000
      0000008080000080800000000000000000000000000000000000000000000000
      00000000000000000000008080000080800000000000FF00FF00FF00FF000000
      00000080800000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00000000000080800000000000FF00FF00FF00FF000000
      00000080800000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00000000000080800000000000FF00FF00FF00FF000000
      00000080800000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00000000000080800000000000FF00FF00FF00FF000000
      00000080800000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00000000000080800000000000FF00FF00FF00FF000000
      00000080800000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00FF000000
      00000080800000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF0000000000FF00FF0000000000FF00FF00FF00FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
  end
  object BitBtn2: TBitBtn
    Left = 272
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 1
    OnClick = BitBtn2Click
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00F8F8F800D1D1D100A1A1A100898989008C8C8C00ADAD
      AD00DCDCDC00FCFCFC00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FEFEFE00D8D8D8006169AE000A1EB7000E24CC000E24CC00091DB2000719
      A2005D6184008F8F8F00EAEAEA00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00C4C5CE001129E000142EF500142EF500142EF500142EF500142EF500142E
      F5000E25D1001627A7006D6D6D00E7E7E700FF00FF00FF00FF00FF00FF00E9E9
      E900142EF500142EF500142EF500142EF500142EF500142EF500142EF500142E
      F500142EF500132DF0001627A70084848400F9F9F900FF00FF00FCFCFC00223B
      F500142EF500142EF5004E62F700FF00FF00FF00FF00FF00FF00F0F0F000142E
      F500142EF500142EF500122AE500545DA200D0D0D000FF00FF00C4CAFC00142E
      F500142EF5008894F400FF00FF00FF00FF00FF00FF00FF00FF003D51E700142E
      F500142EF500142EF500142EF5000719A20097979700FF00FF00223BF500142E
      F500142EF500FF00FF00FF00FF00FF00FF00FF00FF001E34DB00142EF500142E
      F500223BF500142EF500142EF5000F26D60074747400FF00FF00142EF500142E
      F5000E24CC00FF00FF00FF00FF00FF00FF001E34DB00142EF500142EF500223B
      F500ECECEC003E53F500142EF500142EF50070707000FF00FF00142EF500142E
      F5000B20BC00FF00FF00FF00FF001E34DB00142EF500142EF500223BF500FF00
      FF00FF00FF004C60F400142EF500142EF50086868600FF00FF00142EF500142E
      F5001027DB00DFE2F3002038EB00142EF500142EF500223BF500FF00FF00FF00
      FF00FEFEFE00142EF500142EF500132DF000BCBCBC00FF00FF005D6FF800142E
      F500142EF500122AE500142EF500142EF500223BF500FF00FF00FF00FF00FF00
      FF00BBBCC900142EF500142EF5003546CC00EFEFEF00FF00FF00FF00FF00142E
      F500142EF500142EF500142EF500223BF500FF00FF00FF00FF00FF00FF00A1A8
      DB00142EF500142EF500142EF500C8C8C800FF00FF00FF00FF00FF00FF008996
      F900142EF500142EF500142EF5000E25D100091CAC00091DB2000F26D600142E
      F500142EF500142EF500949ACC00FCFCFC00FF00FF00FF00FF00FF00FF00FF00
      FF007B89F900142EF500142EF500142EF500142EF500142EF500142EF500142E
      F500142EF5008E97E200FBFBFB00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00F0F1FE003148F600142EF500142EF500142EF500142EF5004E62
      F700F1F1F100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 72
    Top = 8
    Width = 289
    Height = 21
    KeyField = 'niv_codigo'
    ListField = 'niv_nombre'
    ListSource = dsNiveles
    TabOrder = 2
    OnClick = DBLookupComboBox1Click
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 72
    Top = 40
    Width = 289
    Height = 21
    KeyField = 'cla_nivel'
    ListField = 'niv_nombre'
    ListSource = dsClasif
    TabOrder = 3
    OnClick = DBLookupComboBox2Click
  end
  object DBLookupComboBox3: TDBLookupComboBox
    Left = 72
    Top = 72
    Width = 289
    Height = 21
    KeyField = 'pos_codigo'
    ListField = 'pos_nombre'
    ListSource = dsPosicion
    TabOrder = 4
  end
  object QClasif: TADOQuery
    Connection = DM.ADOSigma
    DataSource = dsNiveles
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
        Name = 'niv_codigo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'distinct c.emp_codigo, c.cla_nivel, n.niv_nombre'
      'from'
      'Clasificacion_Niveles c, niveles n'
      'where'
      'c.cla_nivel = n.niv_codigo'
      'and c.emp_codigo = n.emp_codigo'
      'and c.emp_codigo = :emp_codigo'
      'and c.cla_nivel_padre = :niv_codigo'
      'order by'
      'n.niv_nombre'
      '')
    Left = 280
    Top = 40
    object QClasifemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QClasifcla_nivel: TIntegerField
      FieldName = 'cla_nivel'
    end
    object QClasifniv_nombre: TStringField
      FieldName = 'niv_nombre'
      Size = 60
    end
  end
  object dsClasif: TDataSource
    DataSet = QClasif
    Left = 312
    Top = 40
  end
  object QPosicion: TADOQuery
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
      'pos_codigo, pos_nombre'
      'from'
      'posiciones'
      'where'
      'emp_codigo = :emp_codigo'
      'order by'
      'pos_nombre')
    Left = 280
    Top = 72
    object QPosicionpos_codigo: TIntegerField
      FieldName = 'pos_codigo'
    end
    object QPosicionpos_nombre: TStringField
      FieldName = 'pos_nombre'
      Size = 60
    end
  end
  object QNiveles: TADOQuery
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
      'emp_codigo, niv_codigo, niv_nombre'
      'from'
      'niveles'
      'where'
      'emp_codigo = :emp_codigo'
      'order by'
      'niv_nombre')
    Left = 280
    Top = 8
    object QNivelesemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QNivelesniv_codigo: TIntegerField
      FieldName = 'niv_codigo'
    end
    object QNivelesniv_nombre: TStringField
      FieldName = 'niv_nombre'
      Size = 60
    end
  end
  object dsNiveles: TDataSource
    DataSet = QNiveles
    Left = 312
    Top = 8
  end
  object dsPosicion: TDataSource
    DataSet = QPosicion
    Left = 312
    Top = 72
  end
end