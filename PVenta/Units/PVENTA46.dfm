object frmConsSerie: TfrmConsSerie
  Left = 236
  Top = 202
  ActiveControl = edNumero
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Consulta por # de Serie'
  ClientHeight = 414
  ClientWidth = 694
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 16
    Width = 50
    Height = 13
    Caption = '# de Serie'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object btClose: TBitBtn
    Left = 606
    Top = 384
    Width = 75
    Height = 25
    Caption = '&Salir'
    TabOrder = 0
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
  object edNumero: TEdit
    Left = 64
    Top = 16
    Width = 121
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 528
    Top = 384
    Width = 75
    Height = 25
    Caption = 'Buscar >>'
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object gfacturas: TDBGrid
    Left = 8
    Top = 64
    Width = 681
    Height = 81
    DataSource = dsFacturas
    Options = [dgTitles, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 3
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'tfa_codigo'
        Title.Alignment = taCenter
        Title.Caption = 'Tipo'
        Width = 28
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'fac_numero'
        Title.Alignment = taCenter
        Title.Caption = 'Numero'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fac_fecha'
        Title.Alignment = taCenter
        Title.Caption = 'Fecha'
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fac_nombre'
        Title.Caption = 'Nombre del Cliente'
        Width = 249
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ven_nombre'
        Title.Caption = 'Vendedor'
        Width = 154
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'det_precio'
        Title.Alignment = taCenter
        Title.Caption = 'Precio'
        Width = 87
        Visible = True
      end>
  end
  object StaticText1: TStaticText
    Left = 8
    Top = 48
    Width = 97
    Height = 17
    AutoSize = False
    BorderStyle = sbsSingle
    Caption = 'Facturas'
    Color = 8454143
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 4
  end
  object StaticText2: TStaticText
    Left = 8
    Top = 152
    Width = 97
    Height = 17
    AutoSize = False
    BorderStyle = sbsSingle
    Caption = 'Entradas'
    Color = 8454143
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 5
  end
  object DBGrid1: TDBGrid
    Left = 6
    Top = 168
    Width = 681
    Height = 89
    DataSource = dsEntradas
    Options = [dgTitles, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 6
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ent_numero'
        Title.Alignment = taCenter
        Title.Caption = 'Numero'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ent_fecha'
        Title.Alignment = taCenter
        Title.Caption = 'Fecha'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ent_concepto'
        Title.Caption = 'Concepto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'det_costo'
        Title.Alignment = taCenter
        Title.Caption = 'Costo'
        Visible = True
      end>
  end
  object StaticText3: TStaticText
    Left = 8
    Top = 264
    Width = 97
    Height = 17
    AutoSize = False
    BorderStyle = sbsSingle
    Caption = 'Conduces'
    Color = 8454143
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 7
  end
  object DBGrid2: TDBGrid
    Left = 6
    Top = 280
    Width = 681
    Height = 89
    DataSource = dsConduce
    Options = [dgTitles, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 8
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'con_numero'
        Title.Alignment = taCenter
        Title.Caption = 'Numero'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'con_fecha'
        Title.Alignment = taCenter
        Title.Caption = 'Fecha'
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'con_nombre'
        Title.Caption = 'Nombre del Cliente'
        Width = 278
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ven_nombre'
        Title.Caption = 'Vendedor'
        Width = 149
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'det_precio'
        Title.Alignment = taCenter
        Title.Caption = 'Precio'
        Width = 89
        Visible = True
      end>
  end
  object tProd: TEdit
    Left = 192
    Top = 16
    Width = 489
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
    TabOrder = 9
    Visible = False
  end
  object QFacturas: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <
      item
        Name = 'emp'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'ser'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end>
    SQL.Strings = (
      'select'
      
        'f.tfa_codigo, f.fac_numero, f.fac_fecha, f.fac_nombre, d.det_pre' +
        'cio, v.ven_nombre'
      'from'
      'facturas f, det_factura d, facserie s, vendedores v'
      'where'
      'f.emp_codigo = d.emp_codigo'
      'and f.suc_codigo = d.suc_codigo'
      'and f.fac_forma = d.fac_forma'
      'and f.fac_numero = d.fac_numero'
      'and f.emp_codigo = v.emp_codigo'
      'and f.ven_codigo = v.ven_codigo'
      'and d.emp_codigo = s.emp_codigo'
      'and d.suc_codigo = s.suc_codigo'
      'and d.fac_forma = s.fac_forma'
      'and d.tfa_codigo = s.tfa_codigo'
      'and d.fac_numero = s.fac_numero'
      'and d.pro_codigo = s.pro_codigo'
      'and s.emp_codigo = :emp'
      'and s.ser_numero = :ser')
    Left = 360
    Top = 80
    object QFacturastfa_codigo: TIntegerField
      FieldName = 'tfa_codigo'
    end
    object QFacturasfac_numero: TIntegerField
      FieldName = 'fac_numero'
    end
    object QFacturasfac_fecha: TDateTimeField
      FieldName = 'fac_fecha'
    end
    object QFacturasfac_nombre: TStringField
      FieldName = 'fac_nombre'
      Size = 60
    end
    object QFacturasdet_precio: TBCDField
      FieldName = 'det_precio'
      currency = True
      Precision = 15
      Size = 2
    end
    object QFacturasven_nombre: TStringField
      FieldName = 'ven_nombre'
      Size = 60
    end
  end
  object dsFacturas: TDataSource
    DataSet = QFacturas
    Left = 392
    Top = 80
  end
  object QEntradas: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <
      item
        Name = 'emp'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'ser'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'e.ent_numero, e.ent_fecha, e.ent_concepto, d.det_costo'
      'from'
      'entradainv e, det_entrada d, entradas_serie s'
      'where'
      'e.emp_codigo = d.emp_codigo'
      'and e.suc_codigo = d.suc_codigo'
      'and e.ent_numero = d.ent_numero'
      'and d.emp_codigo = s.emp_codigo'
      'and d.suc_codigo = s.suc_codigo'
      'and d.ent_numero = s.ent_numero'
      'and d.pro_codigo = s.pro_codigo'
      'and s.emp_codigo = :emp'
      'and s.ser_numero = :ser'
      'order by'
      'e.ent_fecha desc')
    Left = 368
    Top = 208
    object QEntradasent_numero: TIntegerField
      FieldName = 'ent_numero'
    end
    object QEntradasent_fecha: TDateTimeField
      FieldName = 'ent_fecha'
    end
    object QEntradasent_concepto: TStringField
      FieldName = 'ent_concepto'
      Size = 60
    end
    object QEntradasdet_costo: TBCDField
      FieldName = 'det_costo'
      Precision = 15
      Size = 2
    end
  end
  object dsEntradas: TDataSource
    DataSet = QEntradas
    Left = 400
    Top = 208
  end
  object QConduce: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <
      item
        Name = 'emp'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'ser'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end>
    SQL.Strings = (
      'select'
      
        'c.con_numero, c.con_fecha, c.con_nombre, d.det_precio, v.ven_nom' +
        'bre'
      'from'
      'conduce c'
      'left outer join vendedores v on'
      '(c.emp_codigo = v.emp_codigo'
      'and c.ven_codigo = v.ven_codigo),det_conduce d, conduce_serie s'
      'where'
      'c.emp_codigo = d.emp_codigo'
      'and c.suc_codigo = d.suc_codigo'
      'and c.con_numero = d.con_numero'
      'and d.emp_codigo = s.emp_codigo'
      'and d.suc_codigo = s.suc_codigo'
      'and d.con_numero = s.con_numero'
      'and d.pro_codigo = s.pro_codigo'
      'and s.emp_codigo = :emp'
      'and s.ser_numero = :ser'
      'order by'
      'c.con_fecha desc')
    Left = 368
    Top = 320
    object QConducecon_numero: TIntegerField
      FieldName = 'con_numero'
    end
    object QConducecon_fecha: TDateTimeField
      FieldName = 'con_fecha'
    end
    object QConducecon_nombre: TStringField
      FieldName = 'con_nombre'
      Size = 60
    end
    object QConducedet_precio: TBCDField
      FieldName = 'det_precio'
      currency = True
      Precision = 15
      Size = 2
    end
    object QConduceven_nombre: TStringField
      FieldName = 'ven_nombre'
      Size = 60
    end
  end
  object dsConduce: TDataSource
    DataSet = QConduce
    Left = 400
    Top = 320
  end
end
