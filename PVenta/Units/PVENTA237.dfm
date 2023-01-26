object frmConsTicketTransp: TfrmConsTicketTransp
  Left = 404
  Top = 253
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Consulta de tickets de Transporte'
  ClientHeight = 579
  ClientWidth = 1096
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1096
    Height = 137
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object Label6: TLabel
      Left = 3
      Top = 8
      Width = 30
      Height = 13
      Caption = 'Fecha'
    end
    object Label4: TLabel
      Left = 3
      Top = 61
      Width = 43
      Height = 13
      Caption = 'Producto'
    end
    object btnProductos: TSpeedButton
      Left = 110
      Top = 57
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
      OnClick = btnProductosClick
    end
    object Label7: TLabel
      Left = 3
      Top = 38
      Width = 32
      Height = 13
      Caption = 'Cliente'
    end
    object btnClientes: TSpeedButton
      Left = 110
      Top = 33
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
      OnClick = btnClientesClick
    end
    object Label12: TLabel
      Left = 3
      Top = 83
      Width = 46
      Height = 13
      Caption = 'Vendedor'
    end
    object btVendedor: TSpeedButton
      Left = 110
      Top = 81
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
      OnClick = btVendedorClick
    end
    object lblFicha: TLabel
      Left = 3
      Top = 107
      Width = 26
      Height = 13
      Caption = 'Ficha'
    end
    object btnFicha: TSpeedButton
      Left = 110
      Top = 104
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
      OnClick = btnFichaClick
    end
    object Fecha1: TDateTimePicker
      Left = 48
      Top = 8
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
      TabOrder = 0
      OnChange = Fecha1Change
    end
    object Fecha2: TDateTimePicker
      Left = 130
      Top = 8
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
      OnChange = Fecha2Change
    end
    object rgTipo: TRadioGroup
      Left = 428
      Top = 7
      Width = 93
      Height = 95
      ItemIndex = 0
      Items.Strings = (
        'Todos'
        'Emitidos'
        'Facturados')
      TabOrder = 2
      OnClick = rgTipoClick
    end
    object cborden: TComboBox
      Left = 432
      Top = 104
      Width = 121
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 3
      Text = 'Orden por Fecha'
      Items.Strings = (
        'Orden por Fecha'
        'Orden por Cliente'
        'Orden por Productos'
        'Orden por Vendedor'
        'Orden por Ficha')
    end
    object edProd: TEdit
      Left = 56
      Top = 57
      Width = 52
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
      OnChange = edProdChange
    end
    object tProd: TEdit
      Left = 136
      Top = 57
      Width = 289
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
      TabOrder = 5
    end
    object edCliente: TEdit
      Left = 56
      Top = 33
      Width = 52
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnChange = edClienteChange
    end
    object tCliente: TEdit
      Left = 136
      Top = 33
      Width = 289
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
    object tVendedor: TEdit
      Left = 137
      Top = 81
      Width = 288
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
    object edtVendedor: TEdit
      Left = 56
      Top = 81
      Width = 52
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      OnChange = edtVendedorChange
    end
    object edtFicha: TEdit
      Left = 56
      Top = 105
      Width = 52
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      OnChange = edtFichaChange
    end
    object tFicha: TEdit
      Left = 137
      Top = 104
      Width = 288
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
      TabOrder = 11
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 528
    Width = 1096
    Height = 51
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    DesignSize = (
      1096
      51)
    object lbcant: TLabel
      Left = 8
      Top = 32
      Width = 51
      Height = 13
      Caption = '0 Tickets'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 8
      Top = 8
      Width = 41
      Height = 13
      Caption = 'Sucursal'
    end
    object btRefresh: TBitBtn
      Left = 782
      Top = 25
      Width = 81
      Height = 24
      Anchors = [akTop, akRight]
      Caption = 'Refrescar >>'
      TabOrder = 0
      OnClick = btRefreshClick
    end
    object btClose: TBitBtn
      Left = 1010
      Top = 25
      Width = 81
      Height = 24
      Anchors = [akTop, akRight]
      Caption = '&Salir'
      TabOrder = 1
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
    object btnImprimir: TBitBtn
      Left = 937
      Top = 25
      Width = 72
      Height = 24
      Anchors = [akTop, akRight]
      Caption = 'Imprimir'
      TabOrder = 2
      OnClick = btnImprimirClick
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
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 56
      Top = 4
      Width = 337
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
      TabOrder = 3
      TabStop = False
      OnClick = btRefreshClick
    end
    object btnListado: TBitBtn
      Left = 864
      Top = 25
      Width = 72
      Height = 24
      Anchors = [akTop, akRight]
      Caption = 'Listado'
      TabOrder = 4
      OnClick = btnListadoClick
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
    Top = 137
    Width = 1096
    Height = 391
    Align = alClient
    Color = clInfoBk
    Ctl3D = False
    DataSource = dsBuscar
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
        FieldName = 'NUM'
        Width = 37
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VENDEDOR'
        Width = 183
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLIENTEN'
        Title.Caption = 'CLIENTE'
        Width = 245
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRODUCTON'
        Title.Caption = 'PRODUCTO'
        Width = 219
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FECHA'
        Width = 74
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FICHA'
        Width = 41
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ESTATUS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CANTIDAD'
        Width = 58
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRECIO'
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IMPORTE'
        Width = 90
        Visible = True
      end>
  end
  object Rpt_Liq_Ticket: TfrxReport
    Version = '4.13.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43629.555344861110000000
    ReportOptions.LastChange = 43629.555344861110000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 576
    Top = 608
    Datasets = <
      item
        DataSet = DB_Liq_Ticket
        DataSetName = 'DB_Liq_Ticket'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        Height = 245.669450000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Width = 737.008350000000000000
          Height = 64.252010000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'SINDICATO DE TRANSPORTE BAVARO - PUNTA CANA'
            '(SITRABAPU)')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Top = 64.252010000000000000
          Width = 737.008350000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'FUNDADO EL 23 DE MAYO DEL 1987')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Top = 81.929190000000000000
          Width = 737.008350000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'TEL.: 809-554-4260 FAX: 809-554-4312 / 809-554-0452')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Align = baCenter
          Left = 186.897758500000000000
          Top = 104.267780000000000000
          Width = 366.614410000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'RECIBO DE LIQUIDADCION DE TICKETS')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 591.842920000000000000
          Top = 101.047310000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'RECIBO #:')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 591.842920000000000000
          Top = 120.944960000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'FECHA:')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 668.315400000000000000
          Top = 102.047310000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DB_Liq_Ticket."NUM"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 668.535870000000000000
          Top = 119.944960000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DB_Liq_Ticket."FECHA"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Top = 140.842610000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'FICHA:')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 51.692950000000000000
          Top = 140.842610000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[DB_Liq_Ticket."FICHA"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Top = 170.078850000000000000
          Width = 132.283550000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Hemos entregado a:')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Top = 187.842519685039400000
          Width = 132.283550000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'La suma de:')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Top = 204.094620000000000000
          Width = 132.283550000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Por Concepto de:')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 136.063080000000000000
          Top = 170.078850000000000000
          Width = 374.173470000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DB_Liq_Ticket."VENDEDOR"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 249.448980000000000000
          Top = 187.842519690000000000
          Width = 487.559370000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DB_Liq_Ticket."TOTAL_LET"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 136.063080000000000000
          Top = 204.094620000000000000
          Width = 600.945270000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Liquidacion de Ticket')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 2.559060000000000000
          Top = 226.771800000000000000
          Width = 737.008350000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Detalle del Recibo')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 136.063080000000000000
          Top = 187.842519690000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = DB_Liq_Ticket
          DataSetName = 'DB_Liq_Ticket'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DB_Liq_Ticket."TOTAL"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 325.039580000000000000
        Width = 740.409927000000000000
        DataSet = DB_Liq_Ticket
        DataSetName = 'DB_Liq_Ticket'
        RowCount = 0
        object Memo18: TfrxMemoView
          Align = baLeft
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Codigo')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Align = baLeft
          Left = 79.370130000000000000
          Width = 411.968770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Descripcion')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Align = baLeft
          Left = 491.338900000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Cantidad')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Align = baLeft
          Left = 574.488560000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Costo')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Align = baLeft
          Left = 657.638220000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Importe')
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        Height = 18.897650000000000000
        Top = 366.614410000000000000
        Width = 740.409927000000000000
        DataSet = DB_Liq_Ticket
        DataSetName = 'DB_Liq_Ticket'
        RowCount = 0
        object Memo23: TfrxMemoView
          Align = baLeft
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CODIGO'
          DataSet = DB_Liq_Ticket
          DataSetName = 'DB_Liq_Ticket'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[DB_Liq_Ticket."CODIGO"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Align = baLeft
          Left = 79.370130000000000000
          Width = 411.968770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'PRODUCTO'
          DataSet = DB_Liq_Ticket
          DataSetName = 'DB_Liq_Ticket'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[DB_Liq_Ticket."PRODUCTO"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Align = baLeft
          Left = 491.338900000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CANTIDAD'
          DataSet = DB_Liq_Ticket
          DataSetName = 'DB_Liq_Ticket'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[DB_Liq_Ticket."CANTIDAD"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Align = baLeft
          Left = 574.488560000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'PRECIO'
          DataSet = DB_Liq_Ticket
          DataSetName = 'DB_Liq_Ticket'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[DB_Liq_Ticket."PRECIO"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Align = baLeft
          Left = 657.638220000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'IMPORTE'
          DataSet = DB_Liq_Ticket
          DataSetName = 'DB_Liq_Ticket'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[DB_Liq_Ticket."IMPORTE"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        Height = 86.929190000000000000
        Top = 408.189240000000000000
        Width = 740.409927000000000000
        object Memo28: TfrxMemoView
          Align = baLeft
          Top = 68.031540000000000000
          Width = 306.141930000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            'Recibido Por')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Align = baRight
          Left = 434.267997000000000000
          Top = 68.031540000000000000
          Width = 306.141930000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            'Entregado Por')
          ParentFont = False
        end
      end
    end
  end
  object DB_Liq_Ticket: TfrxDBDataset
    UserName = 'DB_Liq_Ticket'
    CloseDataSource = False
    FieldAliases.Strings = (
      'VENDEDOR=VENDEDOR'
      'TOTAL=TOTAL'
      'TOTAL_LET=TOTAL_LET'
      'CODIGO=CODIGO'
      'PRODUCTO=PRODUCTO'
      'CANTIDAD=CANTIDAD'
      'PRECIO=PRECIO'
      'IMPORTE=IMPORTE'
      'FECHA=FECHA'
      'NUM=NUM'
      'FICHA=FICHA')
    DataSet = qLiqTicket
    BCDToCurrency = False
    Left = 544
    Top = 608
  end
  object qLiqTicket: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <
      item
        Name = 'EMP'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'SUC'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'NUM'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'DECLARE @MONTO NUMERIC(18,2)'
      'DECLARE @MONTOLET VARCHAR(255)'
      'DECLARE @EMP INT '
      'DECLARE @SUC INT '
      'DECLARE @NUM INT '
      ''
      'SET @EMP = :EMP'
      'SET @SUC = :SUC'
      'SET @NUM = :NUM'
      ''
      
        'SET @MONTO = (SELECT TotalImporte/1.01 FROM Ticket_Transp WHERE ' +
        'numero_ticket = @NUM AND EMP_CODIGO = @EMP)'
      ''
      'SET @MONTOLET = (SELECT [dbo].[CantidadConLetra](@MONTO)) '
      ''
      'SELECT '
      
        'T.numero_ticket NUM, V.ven_nombre VENDEDOR, T.TotalImporte/1.01 ' +
        'TOTAL,  @MONTOLET TOTAL_LET,'
      
        'PR.pro_roriginal CODIGO, UPPER(RTRIM(C.cli_nombre))+'#39' / '#39'+PR.pro' +
        '_nombre PRODUCTO, DT.det_cantidad CANTIDAD, DT.prod_precio PRECI' +
        'O, (DT.DET_CANTIDAD*DT.prod_precio) IMPORTE,'
      'T.fecha_ticket FECHA, FT.ficha_nombre FICHA'
      'FROM Ticket_Transp T'
      
        'INNER JOIN Det_Ticket_Transp DT ON T.emp_codigo=DT.emp_codigo AN' +
        'D T.SUC_CODIGO=DT.SUC_CODIGO AND T.NUMERO_TICKET=DT.NUMERO_TICKE' +
        'T'
      
        'INNER JOIN PRODUCTOS PR ON DT.prod_codigo=PR.pro_codigo AND DT.e' +
        'mp_codigo = PR.emp_codigo'
      'INNER JOIN USUARIOS U ON T.usu_codigo = U.USU_NOMBRE'
      
        'INNER JOIN VENDEDORES V ON T.EMP_CODIGO = V.emp_codigo AND T.ven' +
        '_codigo = V.ven_codigo'
      'INNER JOIN CLIENTES C ON DT.CLIENTE_ID = C.CLI_CODIGO'
      
        'INNER JOIN Fichas_Transp FT ON T.ficha_id = FT.ficha_id AND T.em' +
        'p_codigo = FT.emp_codigo'
      
        'WHERE T.numero_ticket = @NUM AND T.emp_codigo = @EMP AND T.SUC_C' +
        'ODIGO = @SUC'
      ''
      ''
      '')
    Left = 512
    Top = 608
    object qLiqTicketVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Size = 50
    end
    object qLiqTicketTOTAL: TCurrencyField
      FieldName = 'TOTAL'
    end
    object qLiqTicketTOTAL_LET: TStringField
      FieldName = 'TOTAL_LET'
      Size = 255
    end
    object qLiqTicketCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 10
    end
    object qLiqTicketPRODUCTO: TStringField
      FieldName = 'PRODUCTO'
      Size = 100
    end
    object qLiqTicketCANTIDAD: TCurrencyField
      FieldName = 'CANTIDAD'
    end
    object qLiqTicketPRECIO: TCurrencyField
      FieldName = 'PRECIO'
    end
    object qLiqTicketIMPORTE: TCurrencyField
      FieldName = 'IMPORTE'
    end
    object qLiqTicketFECHA: TDateField
      FieldName = 'FECHA'
    end
    object qLiqTicketNUM: TIntegerField
      FieldName = 'NUM'
    end
    object qLiqTicketFICHA: TStringField
      FieldName = 'FICHA'
      Size = 15
    end
  end
  object qBuscar: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <
      item
        Name = 'EMP'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'SUC'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      ''
      ''
      ''
      '')
    Left = 432
    Top = 299
    object qBuscarNUM: TIntegerField
      FieldName = 'NUM'
    end
    object qBuscarVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Size = 50
    end
    object qBuscarCLIENTEN: TStringField
      FieldName = 'CLIENTEN'
      Size = 50
    end
    object qBuscarPRODUCTON: TStringField
      FieldName = 'PRODUCTON'
      Size = 50
    end
    object qBuscarCANTIDAD: TCurrencyField
      FieldName = 'CANTIDAD'
    end
    object qBuscarPRECIO: TCurrencyField
      FieldName = 'PRECIO'
    end
    object qBuscarIMPORTE: TCurrencyField
      FieldName = 'IMPORTE'
    end
    object qBuscarFECHA: TDateField
      FieldName = 'FECHA'
    end
    object qBuscarFICHA: TStringField
      FieldName = 'FICHA'
      Size = 10
    end
    object qBuscarESTATUS: TStringField
      FieldName = 'ESTATUS'
      Size = 3
    end
  end
  object QSucursal: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <
      item
        Name = 'emp'
        Size = -1
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
      
        'select  s.suc_direccion, s.suc_localidad, s.suc_telefono, s.suc_' +
        'rnc,'
      's.emp_codigo, s.suc_codigo, s.suc_nombre, s.alm_codigo'
      'from'
      'sucursales s, sucursal_acceso a'
      'where'
      's.emp_codigo = a.emp_codigo'
      'and s.suc_codigo = a.suc_codigo'
      'and a.emp_codigo = :emp'
      'and a.usu_codigo = :usu'
      'order by s.suc_codigo')
    Left = 392
    Top = 339
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
    object QSucursalsuc_direccion: TStringField
      FieldName = 'suc_direccion'
      Size = 60
    end
    object QSucursalsuc_localidad: TStringField
      FieldName = 'suc_localidad'
      Size = 60
    end
    object QSucursalsuc_telefono: TStringField
      FieldName = 'suc_telefono'
      Size = 30
    end
    object QSucursalsuc_rnc: TStringField
      FieldName = 'suc_rnc'
      Size = 30
    end
  end
  object dsBuscar: TDataSource
    DataSet = qBuscar
    Left = 464
    Top = 299
  end
  object Search: TQrySearchDlgADO
    AliasFields.Strings = (
      'Nombre'
      'Codigo')
    AliasName = DM.ADOSigma
    Left = 328
    Top = 240
  end
  object dsSuc: TDataSource
    DataSet = QSucursal
    Left = 424
    Top = 339
  end
  object Rpt_Listado: TfrxReport
    Version = '4.13.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43629.555344861100000000
    ReportOptions.LastChange = 43629.555344861100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 576
    Top = 576
    Datasets = <
      item
        DataSet = DB_Listado
        DataSetName = 'DB_Listado'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 279.400000000000000000
      PaperHeight = 215.900000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        Height = 136.063080000000000000
        Top = 18.897650000000000000
        Width = 980.410082000000000000
        object Memo1: TfrxMemoView
          Width = 737.008350000000000000
          Height = 64.252010000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'SINDICATO DE TRANSPORTE BAVARO - PUNTA CANA'
            '(SITRABAPU)')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Top = 64.252010000000000000
          Width = 737.008350000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'FUNDADO EL 23 DE MAYO DEL 1987')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Top = 81.929190000000000000
          Width = 737.008350000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'TEL.: 809-554-4260 FAX: 809-554-4312 / 809-554-0452')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Align = baCenter
          Left = 306.897836000000000000
          Top = 104.267780000000000000
          Width = 366.614410000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'PRE-FACTURACION DE TICKETS')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 215.433210000000000000
        Width = 980.410082000000000000
        DataSet = DB_Listado
        DataSetName = 'DB_Listado'
        RowCount = 0
        object Memo6: TfrxMemoView
          Align = baLeft
          Left = 657.638220000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'FECHA:')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Align = baLeft
          Left = 317.480520000000000000
          Width = 340.157700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Descripcion')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Align = baLeft
          Left = 812.598950000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            'Cantidad')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Align = baLeft
          Left = 729.449290000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            'Costo')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Align = baLeft
          Left = 895.748610000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            'Importe')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Align = baLeft
          Width = 317.480520000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Descripcion')
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        Height = 18.897650000000000000
        Top = 257.008040000000000000
        Width = 980.410082000000000000
        DataSet = DB_Listado
        DataSetName = 'DB_Listado'
        RowCount = 0
        object Memo24: TfrxMemoView
          Align = baLeft
          Left = 317.480520000000000000
          Width = 340.157700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'PRODUCTON'
          DataSet = DB_Listado
          DataSetName = 'DB_Listado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[DB_Listado."PRODUCTON"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Align = baLeft
          Left = 729.449290000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CANTIDAD'
          DataSet = DB_Listado
          DataSetName = 'DB_Listado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[DB_Listado."CANTIDAD"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Align = baLeft
          Left = 812.598950000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'PRECIO'
          DataSet = DB_Listado
          DataSetName = 'DB_Listado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[DB_Listado."PRECIO"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Align = baLeft
          Left = 895.748610000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'IMPORTE'
          DataSet = DB_Listado
          DataSetName = 'DB_Listado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[DB_Listado."IMPORTE"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Align = baLeft
          Left = 657.638220000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'FECHA'
          DataSet = DB_Listado
          DataSetName = 'DB_Listado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[DB_Listado."FECHA"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Align = baLeft
          Width = 317.480520000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CLIENTEN'
          DataSet = DB_Listado
          DataSetName = 'DB_Listado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[DB_Listado."CLIENTEN"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        Height = 86.929190000000000000
        Top = 298.582870000000000000
        Width = 980.410082000000000000
        object Memo28: TfrxMemoView
          Align = baLeft
          Top = 68.031540000000000000
          Width = 306.141930000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            'Recibido Por')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Align = baRight
          Left = 674.268152000000000000
          Top = 68.031540000000000000
          Width = 306.141930000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            'Entregado Por')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Align = baRight
          Left = 704.504392000000000000
          Width = 166.299320000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Totales: ')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Align = baRight
          Left = 870.803712000000000000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<DB_Listado."IMPORTE">,DetailData1)]')
          ParentFont = False
        end
      end
    end
  end
  object DB_Listado: TfrxDBDataset
    UserName = 'DB_Listado'
    CloseDataSource = False
    FieldAliases.Strings = (
      'NUM=NUM'
      'VENDEDOR=VENDEDOR'
      'CLIENTEN=CLIENTEN'
      'PRODUCTON=PRODUCTON'
      'CANTIDAD=CANTIDAD'
      'PRECIO=PRECIO'
      'IMPORTE=IMPORTE'
      'FECHA=FECHA'
      'FICHA=FICHA'
      'ESTATUS=ESTATUS')
    DataSet = qBuscar
    BCDToCurrency = False
    Left = 544
    Top = 576
  end
end
