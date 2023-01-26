object frmDetalleMargen: TfrmDetalleMargen
  Left = 297
  Top = 218
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Detalle de Transacci'#243'n'
  ClientHeight = 417
  ClientWidth = 685
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  DesignSize = (
    685
    417)
  PixelsPerInch = 96
  TextHeight = 13
  object btClose: TBitBtn
    Left = 605
    Top = 384
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
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
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 685
    Height = 377
    Align = alTop
    Color = clInfoBk
    Ctl3D = False
    DataSource = dsDetalle
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'fecha'
        Title.Alignment = taCenter
        Title.Caption = 'Fecha'
        Width = 63
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'numero'
        Title.Alignment = taCenter
        Title.Caption = 'Numero'
        Width = 42
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cantidad'
        Title.Alignment = taCenter
        Title.Caption = 'Cant'
        Width = 34
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'producto'
        Title.Caption = 'Nombre del Producto'
        Width = 219
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'costo'
        Title.Alignment = taCenter
        Title.Caption = 'Costo'
        Width = 61
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'precio'
        Title.Alignment = taCenter
        Title.Caption = 'Precio'
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CalcItbis'
        Title.Alignment = taCenter
        Title.Caption = 'Itbis'
        Width = 69
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Beneficio'
        Title.Alignment = taCenter
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Margen'
        Title.Alignment = taCenter
        Title.Caption = '%Margen'
        Width = 47
        Visible = True
      end>
  end
  object QDetalle: TADOQuery
    Connection = DM.ADOSigma
    OnCalcFields = QDetalleCalcFields
    Parameters = <
      item
        Name = 'fam1'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'ano1'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'mes1'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'fam2'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'ano2'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'mes2'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select'
      
        'null as fecha, null as tipo, null as numero, null as nombre, nul' +
        'l as total, null as costo,'
      'null as precio, null itbis, null as producto, null as cantidad'
      'union all'
      'select'
      
        'f.fac_fecha, f.tfa_codigo, f.fac_numero, f.fac_nombre, f.fac_tot' +
        'al, d.det_costo, d.det_precio,'
      
        'case d.det_conitbis when '#39'S'#39' then d.det_itbis else 0 end, d.pro_' +
        'nombre, d.det_cantidad'
      'from'
      'facturas f, det_factura d, productos p'
      'where'
      'f.emp_codigo = d.emp_codigo'
      'and f.suc_codigo = d.suc_codigo'
      'and f.tfa_codigo = d.tfa_codigo'
      'and f.fac_forma = d.fac_forma'
      'and f.fac_numero = d.fac_numero'
      'and d.pro_codigo = p.pro_codigo'
      'and p.fam_codigo = :fam1'
      'and year(f.fac_fecha) = :ano1'
      'and month(f.fac_fecha) = :mes1'
      'union all'
      'select'
      
        'm.fecha, null, m.ticket, m.nombre, m.total, t.costo, t.precio, t' +
        '.itbis, t.descripcion, t.cantidad'
      'from'
      'montos_ticket m, ticket t, productos p'
      'where'
      'm.caja = t.caja'
      'and m.fecha = t.fecha'
      'and m.usu_codigo = t.usu_codigo'
      'and m.ticket = t.ticket'
      'and t.producto = p.pro_codigo'
      'and p.fam_codigo = :fam2'
      'and year(m.fecha) = :ano2'
      'and month(m.fecha) = :mes2'
      'order by 1,2')
    Left = 272
    Top = 192
    object QDetallefecha: TDateTimeField
      FieldName = 'fecha'
      ReadOnly = True
    end
    object QDetalletipo: TIntegerField
      FieldName = 'tipo'
      ReadOnly = True
    end
    object QDetallenumero: TIntegerField
      FieldName = 'numero'
      ReadOnly = True
    end
    object QDetallenombre: TStringField
      FieldName = 'nombre'
      ReadOnly = True
      Size = 80
    end
    object QDetalletotal: TBCDField
      FieldName = 'total'
      ReadOnly = True
      currency = True
      Precision = 15
      Size = 2
    end
    object QDetalleitbis: TBCDField
      FieldName = 'itbis'
      ReadOnly = True
      currency = True
      Precision = 15
    end
    object QDetallecosto: TBCDField
      FieldName = 'costo'
      ReadOnly = True
      currency = True
      Precision = 15
      Size = 2
    end
    object QDetalleprecio: TBCDField
      FieldName = 'precio'
      ReadOnly = True
      currency = True
      Precision = 17
    end
    object QDetalleCalcItbis: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CalcItbis'
      currency = True
      Calculated = True
    end
    object QDetalleBeneficio: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Beneficio'
      currency = True
      Calculated = True
    end
    object QDetalleproducto: TStringField
      FieldName = 'producto'
      ReadOnly = True
      Size = 80
    end
    object QDetallecantidad: TBCDField
      FieldName = 'cantidad'
      ReadOnly = True
      Precision = 15
      Size = 2
    end
    object QDetalleCalcPrecio: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CalcPrecio'
      currency = True
      Calculated = True
    end
    object QDetalleMargen: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Margen'
      currency = True
      Calculated = True
    end
  end
  object dsDetalle: TDataSource
    DataSet = QDetalle
    Left = 304
    Top = 192
  end
end
