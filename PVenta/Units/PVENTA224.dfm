object frmBuscaTemporal: TfrmBuscaTemporal
  Left = 361
  Top = 258
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Buscar Factura Temporal'
  ClientHeight = 353
  ClientWidth = 822
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 822
    Height = 313
    Align = alTop
    DataSource = dsFacturas
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    PopupMenu = PopupMenu2
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'tfa_codigo'
        Title.Alignment = taCenter
        Title.Caption = 'Tipo Factura'
        Width = 67
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'fac_fecha'
        Title.Alignment = taCenter
        Title.Caption = 'Fecha'
        Width = 78
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cli_codigo'
        Title.Caption = 'Codigo Cliente'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fac_nombre'
        Title.Caption = 'Nombre del Cliente'
        Width = 265
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fac_total'
        Title.Caption = 'Total'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'producto'
        Title.Caption = 'Producto'
        Width = 230
        Visible = True
      end>
  end
  object BitBtn1: TBitBtn
    Left = 552
    Top = 320
    Width = 75
    Height = 25
    Caption = 'Salilr'
    TabOrder = 1
    OnClick = BitBtn1Click
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
  object BitBtn2: TBitBtn
    Left = 472
    Top = 320
    Width = 75
    Height = 25
    Caption = 'Seleccionar'
    TabOrder = 2
    OnClick = BitBtn2Click
  end
  object QFacturas: TADOQuery
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
        Name = 'suc_codigo'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'Select fac_fecha, tfa_codigo, CLI_CODIGO, '
      'fac_nombre, fac_numero, fac_forma, suc_codigo, fac_total,'
      
        '(select top 1 rtrim(pro_nombre)+'#39' X '#39'+rtrim(det_cantidad) from d' +
        'et_facturatmp where fac_numero = f.fac_numero and suc_codigo = f' +
        '.suc_codigo '
      
        'and tfa_codigo = f.tfa_codigo and fac_forma = f.fac_forma and em' +
        'p_codigo = f.emp_codigo'
      
        ' and pro_nombre is not null order by det_secuencia desc) product' +
        'o'
      'From facturastmp f'
      'Where f.emp_codigo = :emp_codigo and f.suc_codigo = :suc_codigo'
      'Order by f.fac_fecha')
    Left = 160
    Top = 152
    object QFacturasfac_fecha: TDateTimeField
      FieldName = 'fac_fecha'
    end
    object QFacturastfa_codigo: TIntegerField
      FieldName = 'tfa_codigo'
    end
    object QFacturascli_codigo: TIntegerField
      FieldName = 'cli_codigo'
    end
    object QFacturasfac_nombre: TStringField
      FieldName = 'fac_nombre'
      Size = 60
    end
    object QFacturasfac_numero: TIntegerField
      FieldName = 'fac_numero'
    end
    object QFacturasfac_forma: TStringField
      FieldName = 'fac_forma'
      Size = 1
    end
    object QFacturassuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object QFacturasfac_total: TCurrencyField
      FieldName = 'fac_total'
    end
    object QFacturasproducto: TStringField
      FieldName = 'producto'
      Size = 255
    end
  end
  object dsFacturas: TDataSource
    DataSet = QFacturas
    Left = 240
    Top = 136
  end
  object PopupMenu2: TPopupMenu
    Left = 400
    Top = 137
    object MenuItem2: TMenuItem
      Caption = 'Eliminar Factura temporal'
      OnClick = MenuItem2Click
    end
  end
end
