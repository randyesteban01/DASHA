object frmAjusteInventario: TfrmAjusteInventario
  Left = 198
  Top = 227
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Ajuste de inventario'
  ClientHeight = 417
  ClientWidth = 857
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
  OnPaint = FormPaint
  DesignSize = (
    857
    417)
  PixelsPerInch = 96
  TextHeight = 13
  object bt1: TSpeedButton
    Left = 5
    Top = 373
    Width = 68
    Height = 22
    Anchors = [akLeft, akBottom]
    Caption = 'Unidad'
    Flat = True
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
      000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
      00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
      F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
      0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
      FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
      FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
      0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
      00333377737FFFFF773333303300000003333337337777777333}
    NumGlyphs = 2
    OnClick = bt1Click
  end
  object bt2: TSpeedButton
    Left = 236
    Top = 373
    Width = 23
    Height = 22
    Anchors = [akLeft, akBottom]
    Flat = True
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
      000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
      00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
      F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
      0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
      FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
      FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
      0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
      00333377737FFFFF773333303300000003333337337777777333}
    NumGlyphs = 2
    OnClick = bt2Click
  end
  object btdel3: TSpeedButton
    Left = 468
    Top = 373
    Width = 23
    Height = 22
    Anchors = [akLeft, akBottom]
    Flat = True
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00
      FF002900DD002900DF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF0008002C002100B60000000000FF00FF00FF00FF00FF00
      FF002900DE002900DF001200640000000000FF00FF00FF00FF00FF00FF00FF00
      FF00000000001D009D002900DF0019008600FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF002900DE002900DF000000000000000000FF00FF00FF00FF000000
      00002500C8002900DF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF002900DF002900DF000000000000000000000000002500
      C8002900DF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF002900DF002700D600000000002500C7002900
      DF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF002900DE002900DF002900DF000000
      0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00000000002800D8002900DF002900DF000000
      000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00000000002500C8002900DF00000000002900DF002900
      DF000400140000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00000000002500C8002900DF0000000000FF00FF00FF00FF002900
      DF002900DF0011005A000000000000000000FF00FF00FF00FF00FF00FF00FF00
      FF00000000002400C7002900DF0009002F00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF002900DF002200BB0000000000FF00FF00FF00FF00FF00FF00FF00
      FF002800D8002900DF0019008700FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF002900DC00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF002900DF002300BE0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    OnClick = btdel3Click
  end
  object btdel2: TSpeedButton
    Left = 260
    Top = 373
    Width = 23
    Height = 22
    Anchors = [akLeft, akBottom]
    Flat = True
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00
      FF002900DD002900DF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF0008002C002100B60000000000FF00FF00FF00FF00FF00
      FF002900DE002900DF001200640000000000FF00FF00FF00FF00FF00FF00FF00
      FF00000000001D009D002900DF0019008600FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF002900DE002900DF000000000000000000FF00FF00FF00FF000000
      00002500C8002900DF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF002900DF002900DF000000000000000000000000002500
      C8002900DF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF002900DF002700D600000000002500C7002900
      DF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF002900DE002900DF002900DF000000
      0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00000000002800D8002900DF002900DF000000
      000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00000000002500C8002900DF00000000002900DF002900
      DF000400140000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00000000002500C8002900DF0000000000FF00FF00FF00FF002900
      DF002900DF0011005A000000000000000000FF00FF00FF00FF00FF00FF00FF00
      FF00000000002400C7002900DF0009002F00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF002900DF002200BB0000000000FF00FF00FF00FF00FF00FF00FF00
      FF002800D8002900DF0019008700FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF002900DC00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF002900DF002300BE0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    OnClick = btdel2Click
  end
  object SpeedButton1: TSpeedButton
    Left = 77
    Top = 373
    Width = 68
    Height = 22
    Anchors = [akLeft, akBottom]
    Caption = 'Empaque'
    Flat = True
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
      000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
      00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
      F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
      0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
      FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
      FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
      0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
      00333377737FFFFF773333303300000003333337337777777333}
    NumGlyphs = 2
    OnClick = SpeedButton1Click
  end
  object lbCantidad: TLabel
    Left = 8
    Top = 401
    Width = 69
    Height = 13
    Anchors = [akLeft, akBottom]
    Caption = '0 Productos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object gProductos: TDBGrid
    Left = 0
    Top = 97
    Width = 857
    Height = 164
    Align = alTop
    Anchors = [akLeft, akTop, akRight, akBottom]
    Ctl3D = False
    DataSource = dsProductos
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection]
    ParentCtl3D = False
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    OnKeyDown = gProductosKeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'pro_codigo'
        Title.Caption = 'Codigo'
        Width = 41
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pro_roriginal'
        Title.Caption = 'Ref.Original'
        Width = 78
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pro_rfabric'
        Title.Caption = 'Ref.Fabricante'
        Width = 87
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pro_nombre'
        Title.Caption = 'Nombre'
        Width = 213
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pro_existencia'
        Title.Caption = 'Exist'
        Width = 33
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pro_precio1'
        Title.Caption = 'Precio1'
        Width = 53
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pro_precio2'
        Title.Caption = 'Precio2'
        Width = 53
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pro_precio3'
        Title.Caption = 'Precio3'
        Width = 53
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pro_precio4'
        Title.Caption = 'Precio4'
        Width = 51
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pro_existempaque'
        Title.Caption = 'Exist.Emp'
        Width = 57
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SUPLIDOR'
        Title.Caption = 'Proveedor'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MARCA'
        Width = 54
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FAMILIA'
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COLOR'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRO_STKMINIMO'
        Title.Caption = 'Min'
        Width = 26
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRO_STKMAXIMO'
        Title.Caption = 'Max'
        Width = 28
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DEPARTAMENTO'
        Width = 93
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GONDOLERO'
        Title.Caption = 'GONDOL'
        Width = 53
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CostoUnd'
        Title.Caption = 'Costo'
        Width = 74
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CostoEmp'
        Title.Caption = 'Costo Emp'
        Width = 68
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pro_escala'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'pro_ubicacion'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'pro_vence'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'CostoUnd'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'CostoEmp'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'pro_itbis'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'CostoUnd'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'CalcCostoEmp'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'ger_codigo'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'gon_codigo'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'dep_codigo'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'fam_codigo'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'col_codigo'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'mar_codigo'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'sup_codigo'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'pro_montoitbis'
        Visible = False
      end>
  end
  object StaticText1: TStaticText
    Left = 5
    Top = 245
    Width = 225
    Height = 17
    Alignment = taCenter
    Anchors = [akLeft, akBottom]
    AutoSize = False
    BorderStyle = sbsSingle
    Caption = 'Existencia por Almacen'
    Color = clSkyBlue
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 1
  end
  object StaticText2: TStaticText
    Left = 236
    Top = 245
    Width = 225
    Height = 17
    Alignment = taCenter
    Anchors = [akLeft, akBottom]
    AutoSize = False
    BorderStyle = sbsSingle
    Caption = 'Existencia por Escala'
    Color = clSkyBlue
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 2
  end
  object StaticText3: TStaticText
    Left = 468
    Top = 245
    Width = 225
    Height = 17
    Alignment = taCenter
    Anchors = [akLeft, akBottom]
    AutoSize = False
    BorderStyle = sbsSingle
    Caption = 'Existencia por Vencimiento'
    Color = clSkyBlue
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 3
  end
  object DBGrid1: TDBGrid
    Left = 5
    Top = 265
    Width = 225
    Height = 105
    Anchors = [akLeft, akBottom]
    DataSource = dsExistAlmacen
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 4
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'Almacen'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'exi_cantidad'
        Title.Alignment = taCenter
        Title.Caption = 'Und'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'exi_empaque'
        Title.Alignment = taCenter
        Title.Caption = 'Emp'
        Width = 40
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 236
    Top = 265
    Width = 225
    Height = 105
    Anchors = [akLeft, akBottom]
    DataSource = dsEscalas
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 5
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'Almacen'
        Width = 107
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'esc_escala'
        Title.Alignment = taCenter
        Title.Caption = 'Escala'
        Width = 44
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'esc_existencia'
        Title.Alignment = taCenter
        Title.Caption = 'Exist.'
        Width = 48
        Visible = True
      end>
  end
  object gVence: TDBGrid
    Left = 468
    Top = 265
    Width = 225
    Height = 105
    Anchors = [akLeft, akBottom]
    DataSource = dsVence
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection]
    ParentFont = False
    TabOrder = 6
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    OnKeyPress = gVenceKeyPress
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ven_lote'
        Title.Alignment = taCenter
        Title.Caption = 'Lote'
        Width = 40
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ven_fecha'
        Title.Alignment = taCenter
        Title.Caption = 'Fecha'
        Width = 93
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ven_cantpendiente'
        Title.Alignment = taCenter
        Title.Caption = 'Pendiente'
        Width = 65
        Visible = True
      end>
  end
  object btClose: TBitBtn
    Left = 615
    Top = 385
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = '&Salir'
    TabOrder = 7
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
    Left = 511
    Top = 385
    Width = 99
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'Buscar producto'
    TabOrder = 8
    OnClick = BitBtn1Click
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 857
    Height = 97
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 9
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 24
      Height = 13
      Caption = 'Filtro'
    end
    object Label6: TLabel
      Left = 8
      Top = 32
      Width = 50
      Height = 13
      Caption = 'Proveedor'
    end
    object btProveedor: TSpeedButton
      Left = 118
      Top = 30
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
      OnClick = btProveedorClick
    end
    object btFamilia: TSpeedButton
      Left = 470
      Top = 6
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
      OnClick = btFamiliaClick
    end
    object Label4: TLabel
      Left = 376
      Top = 8
      Width = 32
      Height = 13
      Caption = 'Familia'
    end
    object Label2: TLabel
      Left = 376
      Top = 32
      Width = 32
      Height = 13
      Caption = 'Buscar'
    end
    object Label3: TLabel
      Left = 8
      Top = 56
      Width = 48
      Height = 13
      Caption = 'Existencia'
    end
    object Label5: TLabel
      Left = 376
      Top = 56
      Width = 29
      Height = 13
      Caption = 'Depto'
    end
    object btnDepto: TSpeedButton
      Left = 470
      Top = 54
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
      OnClick = btnDeptoClick
    end
    object cbfiltro: TComboBox
      Left = 64
      Top = 6
      Width = 305
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 0
      Text = '**Todos**'
      OnClick = btrefreshClick
      Items.Strings = (
        '**Todos**'
        'Precio1 > 0'
        'Precio1 = 0'
        'Precio2 > 0'
        'Precio2 = 0'
        'Precio3 > 0'
        'Precio3 = 0'
        'Precio4 > 0'
        'Precio4 = 0')
    end
    object btrefresh: TBitBtn
      Left = 616
      Top = 30
      Width = 75
      Height = 22
      Caption = 'Refrescar '
      TabOrder = 1
      OnClick = btrefreshClick
    end
    object edProveedor: TEdit
      Left = 64
      Top = 30
      Width = 49
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
      OnChange = edProveedorChange
      OnKeyDown = edProveedorKeyDown
    end
    object tProveedor: TEdit
      Left = 144
      Top = 30
      Width = 225
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
    object tFamilia: TEdit
      Left = 496
      Top = 6
      Width = 193
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
      TabOrder = 4
    end
    object edFamilia: TEdit
      Left = 416
      Top = 6
      Width = 49
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnChange = edFamiliaChange
      OnKeyDown = edFamiliaKeyDown
    end
    object edbusqueda: TEdit
      Left = 416
      Top = 30
      Width = 193
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
      TabOrder = 6
    end
    object cbexistencia: TComboBox
      Left = 64
      Top = 52
      Width = 145
      Height = 21
      BevelKind = bkFlat
      Style = csDropDownList
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemHeight = 13
      ItemIndex = 0
      ParentFont = False
      TabOrder = 7
      Text = 'Todos'
      OnClick = btrefreshClick
      Items.Strings = (
        'Todos'
        'Mayor que 0'
        'Menor que 0'
        'Igual a 0'
        'Diferente de 0')
    end
    object ckgerente: TCheckBox
      Left = 304
      Top = 75
      Width = 81
      Height = 17
      Caption = 'Sin Gerente'
      TabOrder = 8
      OnClick = btrefreshClick
    end
    object ckfamilia: TCheckBox
      Left = 392
      Top = 75
      Width = 73
      Height = 17
      Caption = 'Sin Familia'
      TabOrder = 9
      OnClick = btrefreshClick
    end
    object ckdepto: TCheckBox
      Left = 472
      Top = 75
      Width = 73
      Height = 17
      Caption = 'Sin Depto'
      TabOrder = 10
      OnClick = btrefreshClick
    end
    object cksup: TCheckBox
      Left = 552
      Top = 75
      Width = 97
      Height = 17
      Caption = 'Sin Proveedor'
      TabOrder = 11
      OnClick = btrefreshClick
    end
    object edDepto: TEdit
      Left = 416
      Top = 54
      Width = 49
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
      OnChange = edDeptoChange
      OnKeyDown = edDeptoKeyDown
    end
    object tDepto: TEdit
      Left = 496
      Top = 54
      Width = 193
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
      TabOrder = 13
    end
  end
  object QProductos: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    BeforeOpen = QProductosBeforeOpen
    AfterOpen = QProductosAfterOpen
    AfterInsert = QProductosAfterInsert
    BeforePost = QProductosBeforePost
    AfterPost = QProductosAfterPost
    BeforeDelete = QProductosBeforeDelete
    OnCalcFields = QProductosCalcFields
    DataSource = DM.dsEmpresas
    Parameters = <
      item
        Name = 'emp_codigo'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'par_invempresa'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select P.emp_codigo,'
      
        'p.pro_codigo, pro_roriginal, pro_rfabric, pro_nombre, sum(isnull' +
        '(e.exi_cantidad,0)) pro_existencia, '
      
        'pro_precio1, pro_precio2, pro_precio3, pro_precio4, sum(isnull(e' +
        '.exi_empaque,0)) pro_existempaque, '
      
        'RTRIM(MAR_NOMBRE)  MARCA, RTRIM(FAM_NOMBRE) FAMILIA, RTRIM(col_n' +
        'ombre) COLOR, RTRIM(dep_nombre) DEPARTAMENTO,'
      
        'P.pro_beneficio GONDOLERO, P.pro_costo, P.pro_costoempaque, pro_' +
        'escala, pro_vence, pro_ubicacion, pro_itbis,'
      
        'P.ger_codigo, gon_codigo, P.dep_codigo, P.fam_codigo, P.col_codi' +
        'go, P.mar_codigo, PRO_STKMINIMO, PRO_STKMAXIMO,'
      
        'sup_codigo, pro_montoitbis,(SELECT TOP 1 SUP_CODIGO FROM PRODPRO' +
        'VEEDORES WHERE PRO_CODIGO =  P.PRO_CODIGO AND emp_codigo = P.emp' +
        '_codigo) SUPLIDOR'
      'from'
      'productos p'
      
        'LEFT JOIN Marcas M ON P.emp_codigo = M.emp_codigo AND P.mar_codi' +
        'go = M.mar_codigo'
      
        'LEFT JOIN Familias F ON P.emp_codigo = M.emp_codigo AND P.fam_co' +
        'digo = F.fam_codigo'
      
        'LEFT JOIN Colores C ON P.emp_codigo = M.emp_codigo AND P.col_cod' +
        'igo = C.col_codigo'
      
        'LEFT JOIN Departamentos D ON P.emp_codigo = M.emp_codigo AND P.d' +
        'ep_codigo = D.dep_codigo'
      
        'left join Existencias E on p.pro_codigo = e.pro_codigo and e.emp' +
        '_codigo = :emp_codigo and e.alm_codigo > 0'
      'where p.emp_codigo = :par_invempresa'
      'and p.pro_status <> '#39'INA'#39)
    Left = 232
    Top = 56
    object QProductosemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QProductospro_codigo: TIntegerField
      FieldName = 'pro_codigo'
    end
    object QProductospro_roriginal: TStringField
      FieldName = 'pro_roriginal'
      Size = 50
    end
    object QProductospro_rfabric: TStringField
      FieldName = 'pro_rfabric'
      Size = 60
    end
    object QProductospro_nombre: TStringField
      FieldName = 'pro_nombre'
      Size = 80
    end
    object QProductospro_existencia: TBCDField
      FieldName = 'pro_existencia'
      OnChange = QProductospro_existenciaChange
      Precision = 15
      Size = 2
    end
    object QProductospro_existempaque: TBCDField
      FieldName = 'pro_existempaque'
      OnChange = QProductospro_existempaqueChange
      Precision = 15
      Size = 2
    end
    object QProductospro_costo: TBCDField
      FieldName = 'pro_costo'
      currency = True
      Precision = 15
      Size = 2
    end
    object QProductospro_costoempaque: TBCDField
      FieldName = 'pro_costoempaque'
      currency = True
      Precision = 15
      Size = 2
    end
    object QProductospro_precio1: TBCDField
      FieldName = 'pro_precio1'
      currency = True
      Precision = 15
      Size = 2
    end
    object QProductospro_precio2: TBCDField
      FieldName = 'pro_precio2'
      currency = True
      Precision = 15
      Size = 2
    end
    object QProductosCostoUnd: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CostoUnd'
      currency = True
      Calculated = True
    end
    object QProductosCostoEmp: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CostoEmp'
      currency = True
      Calculated = True
    end
    object QProductospro_itbis: TStringField
      FieldName = 'pro_itbis'
      Size = 1
    end
    object QProductosCalcCosto: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CalcCosto'
      Calculated = True
    end
    object QProductosCalcCostoEmp: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CalcCostoEmp'
      Calculated = True
    end
    object QProductosger_codigo: TIntegerField
      FieldName = 'ger_codigo'
    end
    object QProductosgon_codigo: TIntegerField
      FieldName = 'gon_codigo'
    end
    object QProductosdep_codigo: TIntegerField
      FieldName = 'dep_codigo'
    end
    object QProductosfam_codigo: TIntegerField
      FieldName = 'fam_codigo'
    end
    object QProductoscol_codigo: TIntegerField
      FieldName = 'col_codigo'
    end
    object QProductosmar_codigo: TIntegerField
      FieldName = 'mar_codigo'
    end
    object QProductosPRO_STKMINIMO: TBCDField
      FieldName = 'PRO_STKMINIMO'
      Precision = 15
      Size = 2
    end
    object QProductosPRO_STKMAXIMO: TBCDField
      FieldName = 'PRO_STKMAXIMO'
      Precision = 15
      Size = 2
    end
    object QProductossup_codigo: TIntegerField
      FieldName = 'sup_codigo'
    end
    object QProductospro_montoitbis: TBCDField
      FieldName = 'pro_montoitbis'
      currency = True
      Precision = 10
      Size = 2
    end
    object QProductospro_precio3: TBCDField
      FieldName = 'pro_precio3'
      currency = True
      Precision = 18
    end
    object QProductospro_precio4: TBCDField
      FieldName = 'pro_precio4'
      currency = True
      Precision = 18
    end
    object QProductosGONDOLERO: TBCDField
      FieldName = 'GONDOLERO'
      Precision = 15
      Size = 2
    end
    object QProductosSUPLIDOR: TIntegerField
      FieldName = 'SUPLIDOR'
    end
  end
  object dsProductos: TDataSource
    AutoEdit = False
    DataSet = QProductos
    OnDataChange = dsProductosDataChange
    Left = 264
    Top = 56
  end
  object QExistAlmacen: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    BeforeOpen = QExistAlmacenBeforeOpen
    BeforePost = QExistAlmacenBeforePost
    BeforeDelete = QExistAlmacenBeforeDelete
    DataSource = dsProductos
    Parameters = <
      item
        Name = 'emp'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'pro_codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'alm_codigo, emp_codigo, pro_codigo, exi_cantidad,'
      'exi_fisico, exi_empaque, exi_fisicoemp'
      'from'
      'existencias'
      'where'
      'emp_codigo = :emp'
      'and pro_codigo = :pro_codigo and alm_codigo <> 0'
      'order by'
      'alm_codigo')
    Left = 232
    Top = 88
    object QExistAlmacenalm_codigo: TIntegerField
      FieldName = 'alm_codigo'
    end
    object QExistAlmacenemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QExistAlmacenpro_codigo: TIntegerField
      FieldName = 'pro_codigo'
    end
    object QExistAlmacenexi_cantidad: TBCDField
      FieldName = 'exi_cantidad'
      Precision = 15
      Size = 2
    end
    object QExistAlmacenexi_fisico: TBCDField
      FieldName = 'exi_fisico'
      Precision = 15
      Size = 2
    end
    object QExistAlmacenexi_empaque: TBCDField
      FieldName = 'exi_empaque'
      Precision = 15
      Size = 2
    end
    object QExistAlmacenexi_fisicoemp: TBCDField
      FieldName = 'exi_fisicoemp'
      Precision = 15
      Size = 2
    end
    object QExistAlmacenAlmacen: TStringField
      FieldKind = fkLookup
      FieldName = 'Almacen'
      LookupDataSet = QAlmacen
      LookupKeyFields = 'ALM_CODIGO'
      LookupResultField = 'ALM_NOMBRE'
      KeyFields = 'alm_codigo'
      Size = 40
      Lookup = True
    end
  end
  object dsExistAlmacen: TDataSource
    AutoEdit = False
    DataSet = QExistAlmacen
    Left = 264
    Top = 88
  end
  object QAlmacen: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    BeforeOpen = QAlmacenBeforeOpen
    Parameters = <
      item
        Name = 'emp'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select '
      'ALM_CODIGO, ALM_NOMBRE '
      'from '
      'ALMACEN'
      'where '
      'emp_codigo = :emp and alm_codigo > 0')
    Left = 160
    Top = 88
    object QAlmacenALM_CODIGO: TIntegerField
      FieldName = 'ALM_CODIGO'
    end
    object QAlmacenALM_NOMBRE: TStringField
      FieldName = 'ALM_NOMBRE'
      Size = 60
    end
  end
  object dsAlmacen: TDataSource
    AutoEdit = False
    DataSet = QAlmacen
    Left = 192
    Top = 88
  end
  object QEscalas: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    DataSource = dsProductos
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
        Name = 'pro_codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'alm_codigo, esc_escala, esc_existencia'
      'from'
      'escalas'
      'where'
      'emp_codigo = :emp_codigo'
      'and pro_codigo = :pro_codigo'
      'order by'
      'esc_secuencia')
    Left = 232
    Top = 120
    object QEscalasalm_codigo: TIntegerField
      FieldName = 'alm_codigo'
    end
    object QEscalasesc_escala: TStringField
      FieldName = 'esc_escala'
      Size = 5
    end
    object QEscalasesc_existencia: TBCDField
      FieldName = 'esc_existencia'
      Precision = 15
      Size = 2
    end
    object QEscalasAlmacen: TStringField
      FieldKind = fkLookup
      FieldName = 'Almacen'
      LookupDataSet = QAlmacen
      LookupKeyFields = 'ALM_CODIGO'
      LookupResultField = 'ALM_NOMBRE'
      KeyFields = 'alm_codigo'
      Size = 40
      Lookup = True
    end
  end
  object dsEscalas: TDataSource
    AutoEdit = False
    DataSet = QEscalas
    Left = 264
    Top = 120
  end
  object QVence: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    AfterPost = QVenceAfterPost
    DataSource = dsProductos
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
        Name = 'pro_codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'ven_fecha, ven_lote, ven_cantpendiente'
      'from'
      'provence'
      'where'
      'emp_codigo = :emp_codigo'
      'and pro_codigo = :pro_codigo'
      'order by'
      'ven_fecha')
    Left = 232
    Top = 152
    object QVenceven_lote: TIntegerField
      FieldName = 'ven_lote'
      DisplayFormat = '##'
    end
    object QVenceven_fecha: TDateTimeField
      FieldName = 'ven_fecha'
      EditMask = 'cc-cc-cccc'
    end
    object QVenceven_cantpendiente: TBCDField
      FieldName = 'ven_cantpendiente'
      Precision = 15
      Size = 2
    end
  end
  object dsVence: TDataSource
    AutoEdit = False
    DataSet = QVence
    Left = 264
    Top = 152
  end
  object Query1: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <>
    Left = 320
    Top = 88
  end
  object Search: TQrySearchDlgADO
    AliasName = DM.ADOSigma
    Left = 392
    Top = 144
  end
  object PopupMenu1: TPopupMenu
    Left = 464
    Top = 88
    object raerpantalladeproducto1: TMenuItem
      Caption = 'Traer pantalla de producto'
      OnClick = raerpantalladeproducto1Click
    end
    object raerpantallaReporte1: TMenuItem
      Caption = 'Traer pantalla Reporte Existencias por Producto '
      OnClick = raerpantallaReporte1Click
    end
  end
  object qRegExist: TADOQuery
    Connection = DM.ADOSigma
    DataSource = DM.dsEmpresas
    Parameters = <
      item
        Name = 'EMP'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'ALM'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'PROD'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'EXI_ANT_UND'
        DataType = ftFloat
        Size = -1
        Value = Null
      end
      item
        Name = 'EXI_UND'
        DataType = ftFloat
        Size = -1
        Value = Null
      end
      item
        Name = 'EXI_ANT_EMP'
        DataType = ftFloat
        Size = -1
        Value = Null
      end
      item
        Name = 'EXI_EMP'
        DataType = ftFloat
        Size = -1
        Value = Null
      end
      item
        Name = 'USU'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'INSERT INTO AJUSTE_INVENTARIO '
      
        '(emp_codigo, alm_codigo, pro_codigo, exist_ant_und, exist_ajuste' +
        '_und, exist_ant_emp, exist_ajuste_emp,'
      ' usu_codigo, fecha_ajuste, tipo)'
      
        'SELECT :EMP, :ALM, :PROD, :EXI_ANT_UND, :EXI_UND, :EXI_ANT_EMP, ' +
        ':EXI_EMP, '
      ':USU, GETDATE(), '#39'AJU '#39' ')
    Left = 88
    Top = 152
  end
  object qActulizaProd: TADOQuery
    Connection = DM.ADOSigma
    DataSource = DM.dsEmpresas
    Parameters = <
      item
        Name = 'PROD'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'EMP'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'declare @prod int, @empaque numeric(18,2), @existe numeric(18,2)' +
        ', @emp int'
      'set @prod = :prod'
      'set @EMP = :emp'
      
        'set @empaque = (select isnull(sum(isnull(exi_empaque,0)),0) from' +
        ' existencias where pro_codigo = @prod)'
      
        'set @existe = (select isnull(sum(isnull(exi_cantidad,0)),0) from' +
        ' existencias where pro_codigo = @prod)'
      'update productos'
      'set pro_existempaque = @empaque, '
      '    pro_existencia = @existe'
      'where pro_codigo = @prod'
      
        'and emp_codigo = (select par_invempresa from Parametros where em' +
        'p_codigo = @emp)'
      '')
    Left = 128
    Top = 152
  end
end
