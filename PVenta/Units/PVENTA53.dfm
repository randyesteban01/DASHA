object frmConsEntrada: TfrmConsEntrada
  Left = 376
  Top = 191
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Consulta de entradas de almac'#233'n'
  ClientHeight = 581
  ClientWidth = 990
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnPaint = FormPaint
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 442
    Width = 990
    Height = 6
    Cursor = crVSplit
    Align = alTop
    Beveled = True
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 990
    Height = 133
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object Label5: TLabel
      Left = 325
      Top = 80
      Width = 56
      Height = 13
      Caption = 'Ordenar por'
    end
    object Label6: TLabel
      Left = 7
      Top = 32
      Width = 30
      Height = 13
      Caption = 'Fecha'
    end
    object Label7: TLabel
      Left = 7
      Top = 56
      Width = 36
      Height = 13
      Caption = 'Usuario'
    end
    object SpeedButton3: TSpeedButton
      Left = 100
      Top = 56
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
      OnClick = SpeedButton3Click
    end
    object Label4: TLabel
      Left = 325
      Top = 56
      Width = 41
      Height = 13
      Caption = 'Almacen'
    end
    object btAlmacen: TSpeedButton
      Left = 448
      Top = 56
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
      OnClick = btAlmacenClick
    end
    object Label8: TLabel
      Left = 7
      Top = 8
      Width = 41
      Height = 13
      Caption = 'Sucursal'
    end
    object Label2: TLabel
      Left = 7
      Top = 80
      Width = 49
      Height = 13
      Caption = 'Proveedor'
    end
    object btProveedor: TSpeedButton
      Left = 100
      Top = 80
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
    object lbLocSuc: TLabel
      Left = 9
      Top = 107
      Width = 46
      Height = 13
      Caption = 'Localidad'
    end
    object btLocalidad: TSpeedButton
      Left = 116
      Top = 103
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
      OnClick = btLocalidadClick
    end
    object cbOrden: TComboBox
      Left = 392
      Top = 80
      Width = 289
      Height = 21
      BevelKind = bkFlat
      Style = csDropDownList
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemHeight = 13
      ParentFont = False
      TabOrder = 6
      OnClick = cbOrdenClick
      Items.Strings = (
        'Numero'
        'Fecha')
    end
    object Fecha1: TDateTimePicker
      Left = 64
      Top = 32
      Width = 79
      Height = 21
      Date = 37506.000000000000000000
      Time = 37506.000000000000000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object Fecha2: TDateTimePicker
      Left = 144
      Top = 32
      Width = 79
      Height = 21
      Date = 37506.000000000000000000
      Time = 37506.000000000000000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object tUsuario: TEdit
      Left = 124
      Top = 56
      Width = 197
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
      TabOrder = 7
    end
    object edUsuario: TEdit
      Left = 64
      Top = 56
      Width = 33
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
      TabOrder = 3
      OnChange = edUsuarioChange
      OnKeyDown = edUsuarioKeyDown
    end
    object edAlmacen: TEdit
      Left = 392
      Top = 56
      Width = 53
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
      OnChange = edAlmacenChange
      OnKeyDown = edAlmacenKeyDown
    end
    object tAlmacen: TEdit
      Left = 472
      Top = 56
      Width = 209
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
      TabOrder = 8
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 64
      Top = 8
      Width = 329
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
    object edProveedor: TEdit
      Left = 64
      Top = 80
      Width = 33
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnChange = edProveedorChange
      OnKeyDown = edProveedorKeyDown
    end
    object tProveedor: TEdit
      Left = 125
      Top = 80
      Width = 196
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
    end
    object cbtipo: TRadioGroup
      Left = 400
      Top = 8
      Width = 281
      Height = 41
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        'Todas'
        'Sin Procesar'
        'Procesada')
      TabOrder = 10
      OnClick = btRefreshClick
    end
    object edtSucLoc: TEdit
      Left = 64
      Top = 104
      Width = 49
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
      TabOrder = 11
      OnChange = edtSucLocChange
      OnKeyDown = edtSucLocKeyDown
    end
    object TSucLoc: TEdit
      Left = 141
      Top = 104
      Width = 220
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
      TabOrder = 12
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 541
    Width = 990
    Height = 40
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    DesignSize = (
      990
      40)
    object lbCantidad: TLabel
      Left = 8
      Top = 13
      Width = 68
      Height = 13
      Caption = '0 Entrasdas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BitBtn2: TBitBtn
      Left = 824
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Listado'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn2Click
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
    object btRefresh: TBitBtn
      Left = 664
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Refrescar >>'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btRefreshClick
    end
    object btClose: TBitBtn
      Left = 904
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '&Salir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
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
      Left = 744
      Top = 7
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Entrada'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
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
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 133
    Width = 990
    Height = 309
    Align = alTop
    Anchors = [akLeft, akTop, akRight, akBottom]
    Color = clInfoBk
    Ctl3D = False
    DataSource = dsEntradas
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ALM_NOMBRE'
        Title.Caption = 'Almac'#233'n'
        Width = 141
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ENT_NUMERO'
        Title.Alignment = taCenter
        Title.Caption = 'N'#250'mero'
        Width = 54
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ped_numero'
        Title.Alignment = taCenter
        Title.Caption = '#Orden'
        Width = 56
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ENT_FECHA'
        Title.Alignment = taCenter
        Title.Caption = 'Fecha'
        Width = 58
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ENT_CONCEPTO'
        Title.Caption = 'Concepto'
        Width = 187
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ENT_ITBIS'
        Title.Alignment = taCenter
        Title.Caption = 'Itbis'
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ENT_TOTAL'
        Title.Alignment = taCenter
        Title.Caption = 'Total'
        Width = 83
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sup_nombre'
        Title.Caption = 'Proveedor'
        Width = 191
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ENT_STATUS'
        Title.Alignment = taCenter
        Title.Caption = 'Status'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_NOMBRE'
        Title.Caption = 'Usuario'
        Width = 124
        Visible = True
      end>
  end
  object Memo1: TMemo
    Left = 24
    Top = 168
    Width = 505
    Height = 41
    Lines.Strings = (
      'Memo1')
    TabOrder = 3
    Visible = False
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 448
    Width = 990
    Height = 93
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 4
    object TabSheet1: TTabSheet
      Caption = 'Productos'
      object Grid: TDBGrid
        Left = 0
        Top = 0
        Width = 982
        Height = 65
        Align = alClient
        Ctl3D = False
        DataSource = dsDetalle
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        PopupMenu = PopupMenu1
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'PRO_CODIGO'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Width = 92
            Visible = True
          end
          item
            Color = clInfoBk
            Expanded = False
            FieldName = 'PRO_NOMBRE'
            Title.Caption = 'Descripci'#243'n del Producto'
            Width = 225
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DET_CANTIDAD'
            Title.Alignment = taCenter
            Title.Caption = 'Cant.'
            Width = 33
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DET_MEDIDA'
            Title.Alignment = taCenter
            Title.Caption = 'Medida'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DET_ESCALA'
            Title.Alignment = taCenter
            Title.Caption = 'Escala'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DET_COSTO'
            Title.Alignment = taCenter
            Title.Caption = 'Costo'
            Width = 52
            Visible = True
          end
          item
            Color = clInfoBk
            Expanded = False
            FieldName = 'CalcItbis'
            Title.Alignment = taCenter
            Title.Caption = 'Itbis'
            Width = 51
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CostoNeto'
            Title.Alignment = taCenter
            Title.Caption = 'Costo+Itbis'
            Width = 68
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DET_FECHAVENCE'
            Title.Alignment = taCenter
            Title.Caption = 'Vence'
            Width = 55
            Visible = True
          end
          item
            Color = clInfoBk
            Expanded = False
            FieldName = 'Valor'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Width = 68
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pro_beneficio'
            Title.Alignment = taCenter
            Title.Caption = 'Beneficio1'
            Width = 68
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pro_precio1'
            Title.Alignment = taCenter
            Title.Caption = 'Precio1'
            Width = 68
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pro_precio2'
            Title.Alignment = taCenter
            Title.Caption = 'Precio2'
            Width = 68
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pro_precio3'
            Title.Alignment = taCenter
            Title.Caption = 'Precio3'
            Width = 68
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'fam_nombre'
            Title.Caption = 'Familia'
            Width = 89
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sup_nombre'
            Title.Caption = 'PROVEEDOR'
            Width = 300
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dep_nombre'
            Title.Caption = 'Departamento'
            Width = 95
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ger_codigo'
            Title.Caption = 'Gerente'
            Width = 88
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Detalle de la Factura de compra de la entrada'
      ImageIndex = 1
      object DBGrid2: TDBGrid
        Left = 0
        Top = 0
        Width = 982
        Height = 65
        Align = alClient
        Ctl3D = False
        DataSource = dsFactura
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'emp_nombre'
            Title.Caption = 'Nombre de la empresa'
            Width = 219
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sup_nombre'
            Title.Caption = 'Nombre del proveedor'
            Width = 177
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'fac_numero'
            Title.Alignment = taCenter
            Width = 88
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NumeroNCF'
            Title.Alignment = taCenter
            Title.Caption = 'NCF'
            Width = 139
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'fac_fecha'
            Title.Alignment = taCenter
            Title.Caption = 'Fecha'
            Width = 71
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'fac_total'
            Title.Alignment = taCenter
            Title.Caption = 'Total'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'fac_itbis'
            Title.Alignment = taCenter
            Title.Caption = 'Itbis'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'fac_grabado'
            Title.Alignment = taCenter
            Title.Caption = 'Grabado'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'fac_exento'
            Title.Alignment = taCenter
            Title.Caption = 'Exento'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'fac_descuento'
            Title.Alignment = taCenter
            Title.Caption = 'Descuento'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'fac_retencion'
            Title.Alignment = taCenter
            Title.Caption = 'Retenci'#243'n'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'fac_status'
            Title.Alignment = taCenter
            Title.Caption = 'Status'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'alm_nombre'
            Title.Caption = 'Almacen'
            Width = 170
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'usu_nombre'
            Title.Caption = 'Usuario'
            Width = 124
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'fac_concepto'
            Title.Caption = 'Concepto'
            Visible = True
          end>
      end
    end
  end
  object QEntradas: TADOQuery
    Connection = DM.ADOSigma
    AfterOpen = QEntradasAfterOpen
    DataSource = dsSuc
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
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'fecha1'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'fecha2'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      'select e.EMP_CODIGO, e.ENT_CONCEPTO, e.ENT_FECHA, '
      'e.ENT_NUMERO, e.ENT_STATUS, e.ENT_TOTAL, u.usu_nombre,'
      'a.alm_nombre, e.suc_codigo, s.sup_nombre, e.ENT_ITBIS,'
      'e.ped_numero'
      'from ENTRADAINV e'
      'left outer join proveedores s on (e.emp_codigo = s.emp_codigo'
      'and e.sup_codigo = s.sup_codigo), usuarios u, almacen a'
      'where e.usu_codigo = u.usu_codigo'
      'and e.emp_codigo = a.emp_codigo'
      'and e.alm_codigo = a.alm_codigo'
      'and e.emp_codigo = :emp_codigo'
      'and e.suc_codigo = :suc_codigo'
      
        'and e.ent_fecha between convert(datetime,:fecha1,105) and conver' +
        't(datetime,:fecha2,105)')
    Left = 464
    Top = 136
    object QEntradasEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'ENTRADAINV.EMP_CODIGO'
      Required = True
    end
    object QEntradasENT_CONCEPTO: TIBStringField
      FieldName = 'ENT_CONCEPTO'
      Origin = 'ENTRADAINV.ENT_CONCEPTO'
      Size = 60
    end
    object QEntradasENT_FECHA: TDateTimeField
      FieldName = 'ENT_FECHA'
      Origin = 'ENTRADAINV.ENT_FECHA'
    end
    object QEntradasENT_NUMERO: TIntegerField
      FieldName = 'ENT_NUMERO'
      Origin = 'ENTRADAINV.ENT_NUMERO'
      Required = True
      DisplayFormat = '00000'
    end
    object QEntradasENT_STATUS: TIBStringField
      FieldName = 'ENT_STATUS'
      Origin = 'ENTRADAINV.ENT_STATUS'
      Size = 3
    end
    object QEntradasENT_TOTAL: TFloatField
      FieldName = 'ENT_TOTAL'
      Origin = 'ENTRADAINV.ENT_TOTAL'
      currency = True
    end
    object QEntradasUSU_NOMBRE: TIBStringField
      FieldName = 'USU_NOMBRE'
      Origin = 'USUARIOS.USU_NOMBRE'
      Size = 60
    end
    object QEntradasALM_NOMBRE: TIBStringField
      FieldName = 'ALM_NOMBRE'
      Origin = 'ALMACEN.ALM_NOMBRE'
      Size = 60
    end
    object QEntradassuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object QEntradassup_nombre: TStringField
      FieldName = 'sup_nombre'
      Size = 60
    end
    object QEntradasENT_ITBIS: TBCDField
      FieldName = 'ENT_ITBIS'
      currency = True
      Precision = 15
    end
    object QEntradasped_numero: TIntegerField
      FieldName = 'ped_numero'
    end
  end
  object dsEntradas: TDataSource
    DataSet = QEntradas
    Left = 496
    Top = 136
  end
  object dsDetalle: TDataSource
    DataSet = QDetalle
    Left = 496
    Top = 168
  end
  object Search: TQrySearchDlgADO
    AliasName = DM.ADOSigma
    Left = 544
    Top = 224
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
    Left = 464
    Top = 200
    object QSucursalsuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object QSucursalsuc_nombre: TStringField
      FieldName = 'suc_nombre'
      Size = 60
    end
    object QSucursalemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QSucursalalm_codigo: TIntegerField
      FieldName = 'alm_codigo'
    end
  end
  object dsSuc: TDataSource
    DataSet = QSucursal
    Left = 496
    Top = 200
  end
  object QDetalle: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    OnCalcFields = QDetalleCalcFields
    DataSource = dsEntradas
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
        Name = 'ent_numero'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'suc_codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      
        '(select TOP 1 ISNULL(sup_nombre,'#39#39') from ProdProveedores where e' +
        'mp_codigo = D.emp_codigo and pro_codigo = p.pro_codigo) sup_nomb' +
        're,'
      'd.DET_CANTIDAD, d.DET_CONITBIS, d.DET_COSTO, d.DET_ITBIS,'
      'd.DET_PRECIO, d.DET_SECUENCIA, d.EMP_CODIGO, d.ENT_NUMERO,'
      'd.PRO_BARRA, d.PRO_CODIGO, d.PRO_NOMBRE, d.PRO_RFABRIC,'
      'd.PRO_RORIGINAL, d.DET_FECHAVENCE, d.DET_LOTE,'
      'd.DET_VENCE, d.DET_ESCALA, d.DET_MANEJAESCALA,'
      'd.DET_MEDIDA, d.DET_COSTOEMP, d.DET_COSTOUND,'
      'd.SUC_CODIGO, f.fam_nombre, t.dep_nombre,'
      'g.ger_nombre, d.pro_precio1, d.pro_precio2, d.pro_precio3,'
      'd.pro_beneficio, d.pro_beneficio2, d.pro_beneficio3,'
      'p.ger_codigo'
      'from'
      'DET_ENTRADA d, productos p'
      'left outer join familias f on (p.fam_codigo = f.fam_codigo)'
      'left outer join departamentos t on (p.dep_codigo = t.dep_codigo)'
      'left outer join gerentes g on (p.ger_codigo = g.ger_codigo)'
      'where d.emp_codigo = :emp_codigo'
      'and d.ent_numero = :ent_numero'
      'and d.suc_codigo = :suc_codigo'
      'and p.pro_codigo = d.pro_codigo'
      'order by d.det_secuencia')
    Left = 464
    Top = 168
    object QDetalleDET_CANTIDAD: TFloatField
      FieldName = 'DET_CANTIDAD'
      Origin = 'DET_ENTRADA.DET_CANTIDAD'
    end
    object QDetalleDET_CONITBIS: TIBStringField
      FieldName = 'DET_CONITBIS'
      Origin = 'DET_ENTRADA.DET_CONITBIS'
      Size = 1
    end
    object QDetalleDET_COSTO: TFloatField
      FieldName = 'DET_COSTO'
      Origin = 'DET_ENTRADA.DET_COSTO'
      currency = True
    end
    object QDetalleDET_ITBIS: TFloatField
      FieldName = 'DET_ITBIS'
      Origin = 'DET_ENTRADA.DET_ITBIS'
      currency = True
    end
    object QDetalleDET_PRECIO: TFloatField
      FieldName = 'DET_PRECIO'
      Origin = 'DET_ENTRADA.DET_PRECIO'
      currency = True
    end
    object QDetalleDET_SECUENCIA: TIntegerField
      FieldName = 'DET_SECUENCIA'
      Origin = 'DET_ENTRADA.DET_SECUENCIA'
      DisplayFormat = '00'
    end
    object QDetalleEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'DET_ENTRADA.EMP_CODIGO'
    end
    object QDetalleENT_NUMERO: TIntegerField
      FieldName = 'ENT_NUMERO'
      Origin = 'DET_ENTRADA.ENT_NUMERO'
    end
    object QDetallePRO_BARRA: TIBStringField
      FieldName = 'PRO_BARRA'
      Origin = 'DET_ENTRADA.PRO_BARRA'
      Size = 30
    end
    object QDetallePRO_CODIGO: TIntegerField
      FieldName = 'PRO_CODIGO'
      Origin = 'DET_ENTRADA.PRO_CODIGO'
    end
    object QDetallePRO_NOMBRE: TIBStringField
      FieldName = 'PRO_NOMBRE'
      Origin = 'DET_ENTRADA.PRO_NOMBRE'
      Size = 60
    end
    object QDetallePRO_RFABRIC: TIBStringField
      FieldName = 'PRO_RFABRIC'
      Origin = 'DET_ENTRADA.PRO_RFABRIC'
      Size = 60
    end
    object QDetallePRO_RORIGINAL: TIBStringField
      FieldName = 'PRO_RORIGINAL'
      Origin = 'DET_ENTRADA.PRO_RORIGINAL'
      Size = 50
    end
    object QDetalleValor: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Valor'
      currency = True
      Calculated = True
    end
    object QDetalleDET_FECHAVENCE: TDateTimeField
      FieldName = 'DET_FECHAVENCE'
      Origin = 'DET_ENTRADA.DET_FECHAVENCE'
      EditMask = 'cc-cc-cccc'
    end
    object QDetalleDET_LOTE: TIntegerField
      FieldName = 'DET_LOTE'
      Origin = 'DET_ENTRADA.DET_LOTE'
    end
    object QDetalleDET_VENCE: TIBStringField
      FieldName = 'DET_VENCE'
      Origin = 'DET_ENTRADA.DET_VENCE'
      Size = 5
    end
    object QDetalleDET_ESCALA: TIBStringField
      FieldName = 'DET_ESCALA'
      Origin = 'DET_ENTRADA.DET_ESCALA'
      Size = 5
    end
    object QDetalleDET_MANEJAESCALA: TIBStringField
      FieldName = 'DET_MANEJAESCALA'
      Origin = 'DET_ENTRADA.DET_MANEJAESCALA'
      Size = 5
    end
    object QDetalleDET_MEDIDA: TIBStringField
      FieldName = 'DET_MEDIDA'
      Origin = 'DET_ENTRADA.DET_MEDIDA'
      Size = 3
    end
    object QDetalleCalcItbis: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CalcItbis'
      currency = True
      Calculated = True
    end
    object QDetallePrecioItbis: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PrecioItbis'
      currency = True
      Calculated = True
    end
    object QDetalleCalcDesc: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CalcDesc'
      currency = True
      Calculated = True
    end
    object QDetalleDET_COSTOEMP: TFloatField
      FieldName = 'DET_COSTOEMP'
      Origin = 'DET_ENTRADA.DET_COSTOEMP'
    end
    object QDetalleDET_COSTOUND: TFloatField
      FieldName = 'DET_COSTOUND'
      Origin = 'DET_ENTRADA.DET_COSTOUND'
    end
    object QDetalleSUC_CODIGO: TIntegerField
      FieldName = 'SUC_CODIGO'
    end
    object QDetallefam_nombre: TStringField
      FieldName = 'fam_nombre'
      Size = 60
    end
    object QDetalledep_nombre: TStringField
      FieldName = 'dep_nombre'
      Size = 60
    end
    object QDetalleger_nombre: TStringField
      FieldName = 'ger_nombre'
      Size = 50
    end
    object QDetallepro_precio1: TBCDField
      FieldName = 'pro_precio1'
      currency = True
      Precision = 15
      Size = 2
    end
    object QDetallepro_precio2: TBCDField
      FieldName = 'pro_precio2'
      currency = True
      Precision = 15
      Size = 2
    end
    object QDetallepro_precio3: TBCDField
      FieldName = 'pro_precio3'
      currency = True
      Precision = 15
      Size = 2
    end
    object QDetallepro_beneficio: TBCDField
      FieldName = 'pro_beneficio'
      currency = True
      Precision = 15
      Size = 2
    end
    object QDetallepro_beneficio2: TBCDField
      FieldName = 'pro_beneficio2'
      currency = True
      Precision = 15
      Size = 2
    end
    object QDetallepro_beneficio3: TBCDField
      FieldName = 'pro_beneficio3'
      currency = True
      Precision = 15
      Size = 2
    end
    object QDetalleCostoItbis: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CostoItbis'
      currency = True
      Calculated = True
    end
    object QDetalleCalcCosto: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CalcCosto'
      Calculated = True
    end
    object QDetalleCalcCostoEmp: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CalcCostoEmp'
      Calculated = True
    end
    object QDetalleCostoNeto: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CostoNeto'
      currency = True
      Calculated = True
    end
    object QDetalleger_codigo: TIntegerField
      FieldName = 'ger_codigo'
    end
    object QDetallePrecioItbisEmp: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PrecioItbisEmp'
      currency = True
      Calculated = True
    end
    object QDetalleCalcItbisEmp: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CalcItbisEmp'
      currency = True
      Calculated = True
    end
    object QDetalleValorEmp: TFloatField
      FieldKind = fkCalculated
      FieldName = 'ValorEmp'
      currency = True
      Calculated = True
    end
    object QDetalleCalcDescEmp: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CalcDescEmp'
      currency = True
      Calculated = True
    end
    object QDetallesup_nombre: TStringField
      FieldName = 'sup_nombre'
      Size = 255
    end
  end
  object QFacturasCxP: TADOQuery
    Connection = DM.ADOSigma
    OnCalcFields = QFacturasCxPCalcFields
    DataSource = dsEntradas
    Parameters = <
      item
        Name = 'ent_numero'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      's.sup_nombre, f.fac_numero, f.ncf, f.ncf_fijo, f.ncf_secuencia,'
      
        'f.fac_fecha, f.fac_total, f.fac_itbis, f.fac_grabado, f.fac_exen' +
        'to,'
      'f.fac_descuento, f.fac_status, a.alm_nombre, u.usu_nombre,'
      'f.fac_retencion, f.fac_concepto, e.emp_nombre'
      'from'
      'provfacturas f, proveedores s, usuarios u, almacen a, empresas e'
      'where'
      'f.emp_codigo = s.emp_codigo'
      'and f.sup_codigo = s.sup_codigo'
      'and f.usu_codigo = u.usu_codigo'
      'and f.alm_codigo = a.alm_codigo'
      'and e.emp_codigo = f.emp_codigo'
      'and f.ent_numero = :ent_numero'
      'order by'
      'f.fac_fecha')
    Left = 568
    Top = 136
    object QFacturasCxPsup_nombre: TStringField
      FieldName = 'sup_nombre'
      Size = 60
    end
    object QFacturasCxPfac_numero: TStringField
      FieldName = 'fac_numero'
      Size = 15
    end
    object QFacturasCxPncf: TStringField
      FieldName = 'ncf'
      Size = 30
    end
    object QFacturasCxPncf_fijo: TStringField
      FieldName = 'ncf_fijo'
      Size = 11
    end
    object QFacturasCxPncf_secuencia: TBCDField
      FieldName = 'ncf_secuencia'
      Precision = 18
      Size = 0
    end
    object QFacturasCxPfac_fecha: TDateTimeField
      FieldName = 'fac_fecha'
    end
    object QFacturasCxPfac_total: TBCDField
      FieldName = 'fac_total'
      currency = True
      Precision = 15
      Size = 2
    end
    object QFacturasCxPfac_itbis: TBCDField
      FieldName = 'fac_itbis'
      currency = True
      Precision = 15
      Size = 2
    end
    object QFacturasCxPfac_grabado: TBCDField
      FieldName = 'fac_grabado'
      currency = True
      Precision = 15
      Size = 2
    end
    object QFacturasCxPfac_exento: TBCDField
      FieldName = 'fac_exento'
      currency = True
      Precision = 15
      Size = 2
    end
    object QFacturasCxPfac_descuento: TBCDField
      FieldName = 'fac_descuento'
      currency = True
      Precision = 15
      Size = 2
    end
    object QFacturasCxPfac_status: TStringField
      FieldName = 'fac_status'
      Size = 3
    end
    object QFacturasCxPalm_nombre: TStringField
      FieldName = 'alm_nombre'
      Size = 60
    end
    object QFacturasCxPusu_nombre: TStringField
      FieldName = 'usu_nombre'
      Size = 60
    end
    object QFacturasCxPfac_retencion: TBCDField
      FieldName = 'fac_retencion'
      Precision = 15
      Size = 2
    end
    object QFacturasCxPfac_concepto: TStringField
      FieldName = 'fac_concepto'
      Size = 60
    end
    object QFacturasCxPNumeroNCF: TStringField
      FieldKind = fkCalculated
      FieldName = 'NumeroNCF'
      Size = 30
      Calculated = True
    end
    object QFacturasCxPemp_nombre: TStringField
      FieldName = 'emp_nombre'
      Size = 60
    end
  end
  object dsFactura: TDataSource
    DataSet = QFacturasCxP
    Left = 600
    Top = 136
  end
  object PopupMenu1: TPopupMenu
    Left = 444
    Top = 311
    object Pantalladeproductos1: TMenuItem
      Caption = 'Pantalla de productos'
      OnClick = Pantalladeproductos1Click
    end
    object Pantalladeajuste1: TMenuItem
      Caption = 'Pantalla de ajuste de inventario'
      OnClick = Pantalladeajuste1Click
    end
  end
  object qActulizaProd: TADOQuery
    Connection = DM.ADOSigma
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
    Left = 208
    Top = 328
  end
end
