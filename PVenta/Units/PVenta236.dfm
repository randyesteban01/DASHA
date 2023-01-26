object FrmLiquidacionTickets: TFrmLiquidacionTickets
  Left = 387
  Top = 119
  Width = 904
  Height = 614
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Liquidacion de Tickets'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 888
    Height = 83
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object Label6: TLabel
      Left = 10
      Top = 31
      Width = 30
      Height = 13
      Caption = 'Fecha'
    end
    object btnFichas: TSpeedButton
      Left = 510
      Top = 26
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
      OnClick = btnFichasClick
    end
    object Label7: TLabel
      Left = 403
      Top = 4
      Width = 32
      Height = 13
      Caption = 'Cliente'
    end
    object btnClientes: TSpeedButton
      Left = 510
      Top = 4
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
      Left = 1
      Top = 53
      Width = 46
      Height = 13
      Caption = 'Vendedor'
    end
    object btVendedor: TSpeedButton
      Left = 108
      Top = 49
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
      Left = 403
      Top = 29
      Width = 26
      Height = 13
      Caption = 'Ficha'
    end
    object Label13: TLabel
      Left = 8
      Top = 8
      Width = 41
      Height = 13
      Caption = 'Sucursal'
    end
    object Label1: TLabel
      Left = 403
      Top = 53
      Width = 44
      Height = 13
      Caption = '# Liquid.:'
    end
    object tFicha: TEdit
      Left = 536
      Top = 26
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
      TabOrder = 4
    end
    object edCliente: TEdit
      Left = 456
      Top = 4
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
      TabOrder = 2
      OnChange = edClienteChange
    end
    object tCliente: TEdit
      Left = 536
      Top = 4
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
      TabOrder = 3
      OnChange = tClienteChange
    end
    object tVendedor: TEdit
      Left = 135
      Top = 49
      Width = 258
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
      TabOrder = 1
    end
    object DBEdt_NumLiq: TDBEdit
      Left = 458
      Top = 50
      Width = 50
      Height = 21
      DataField = 'numero_ticket'
      DataSource = dsqTicketsTransp
      ReadOnly = True
      TabOrder = 5
    end
    object EdtDate_Fecha: TcxDBDateEdit
      Left = 56
      Top = 24
      DataBinding.DataField = 'fecha_ticket'
      DataBinding.DataSource = dsqTicketsTransp
      Properties.SaveTime = False
      Properties.ShowTime = False
      TabOrder = 0
      Width = 121
    end
    object edtVendedor: TEdit
      Left = 55
      Top = 49
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
      OnChange = edtVendedorChange
    end
    object edtFicha: TEdit
      Left = 456
      Top = 27
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
      TabOrder = 7
      OnChange = edtFichaChange
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
      TabOrder = 8
      TabStop = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 508
    Width = 888
    Height = 67
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    DesignSize = (
      888
      67)
    object btBuscarTicket: TBitBtn
      Left = 1
      Top = 1
      Width = 137
      Height = 24
      Anchors = [akTop, akRight]
      Caption = 'Buscar Ticket Liq.'
      TabOrder = 0
      OnClick = btBuscarTicketClick
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
        0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000000000000000000000000000000000000000000FF00FF0000000000FFFF
        FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FFFFFF00000000000000000000000000FF00FF0000000000FFFF
        FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FFFFFF00000000000000000000000000FF00FF00000000000000
        00000000000000000000000000000000000000000000FF00FF00000000000000
        00000000000000000000000000000000000000000000FF00FF00000000000000
        0000FFFFFF00000000000000000000000000000000000000000000000000FFFF
        FF000000000000000000000000000000000000000000FF00FF00000000000000
        0000FFFFFF00000000000000000000000000C0C0C0000000000000000000FFFF
        FF000000000000000000000000000000000000000000FF00FF00000000000000
        0000FFFFFF00000000000000000000000000C0C0C0000000000000000000FFFF
        FF000000000000000000000000000000000000000000FF00FF00FF00FF000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FFFFFF00000000000000000000000000FF00FF0000000000FFFF
        FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000000000000000000000000000000000000000000FF00FF00000000000000
        0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00FF000000
        00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00FF000000
        0000FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00FF000000
        00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    end
    object btClose: TBitBtn
      Left = 464
      Top = 1
      Width = 81
      Height = 24
      Anchors = [akTop, akRight]
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
    object btnGrabar: TBitBtn
      Left = 138
      Top = 1
      Width = 84
      Height = 24
      Anchors = [akTop, akRight]
      Caption = '[ F2 ] Grabar'
      TabOrder = 2
      OnClick = btnGrabarClick
    end
    object btnEliminarLinea: TBitBtn
      Left = 346
      Top = 1
      Width = 117
      Height = 24
      Anchors = [akTop, akRight]
      Caption = '[ F4 ] Eliminar Linea'
      TabOrder = 3
      OnClick = btnEliminarLineaClick
    end
    object btnLimpiar: TBitBtn
      Left = 224
      Top = 1
      Width = 120
      Height = 24
      Anchors = [akTop, akRight]
      Caption = '[ F3 ] Limpiar / Nueva'
      TabOrder = 4
      OnClick = btnLimpiarClick
    end
    object pnl1: TPanel
      Left = 651
      Top = 2
      Width = 235
      Height = 63
      Align = alRight
      Alignment = taRightJustify
      TabOrder = 5
      object lblSubTotal: TLabel
        Left = 7
        Top = 3
        Width = 56
        Height = 13
        Caption = 'Sub-Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblItbis: TLabel
        Left = 7
        Top = 24
        Width = 25
        Height = 13
        Caption = 'Itbis'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblTotal: TLabel
        Left = 7
        Top = 45
        Width = 30
        Height = 13
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object CEdt_SubTotal: TcxCurrencyEdit
        Left = 71
        Top = 0
        EditValue = 0c
        ParentFont = False
        Properties.ReadOnly = True
        Style.Color = clInfoBk
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        TabOrder = 0
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Width = 161
      end
      object CEdt_Itbis: TcxCurrencyEdit
        Left = 71
        Top = 21
        EditValue = 0c
        ParentFont = False
        Properties.ReadOnly = True
        Style.Color = clInfoBk
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        TabOrder = 1
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Width = 161
      end
      object CEdt_Total: TcxCurrencyEdit
        Left = 71
        Top = 42
        EditValue = 0c
        ParentFont = False
        Properties.ReadOnly = True
        Style.Color = clInfoBk
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        TabOrder = 2
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Width = 161
      end
    end
  end
  object DBGrid_1: TDBGrid
    Left = 0
    Top = 83
    Width = 888
    Height = 425
    Align = alClient
    Color = clInfoBk
    Ctl3D = False
    DataSource = ds_DetTicketTransp
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid_1CellClick
    OnKeyPress = DBGrid_1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'prod_codigo'
        Title.Caption = 'Codigo'
        Width = 43
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pro_nombre'
        Title.Caption = 'Descripcion Producto'
        Width = 254
        Visible = True
      end
      item
        Color = clWindow
        Expanded = False
        FieldName = 'det_cantidad'
        Title.Caption = 'Cantidad'
        Width = 54
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'prod_precio'
        Title.Caption = 'Precio'
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DET_CONITBIS'
        Title.Caption = 'Itbis?'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'det_importe'
        Title.Caption = 'Valor'
        Width = 104
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ClienteN'
        Title.Caption = 'Cliente'
        Width = 250
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ESTATUS'
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
    Left = 720
    Top = 440
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
          Left = 245.669450000000000000
          Top = 187.976500000000000000
          Width = 491.338900000000000000
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
          Top = 187.842519685039400000
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
    Left = 688
    Top = 440
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
    Left = 656
    Top = 440
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
  object qTicketsTransp: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterEdit = qTicketsTranspAfterEdit
    OnNewRecord = qTicketsTranspNewRecord
    Parameters = <
      item
        Name = 'emp'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'suc'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'num'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select  '
      
        'emp_codigo, suc_codigo, ven_codigo, numero_ticket, fecha_ticket,' +
        ' ficha_id, SubTotal, TotalImporte, TotalItbis, status_ticket, us' +
        'u_codigo, fecha_crea,'
      'usu_cod_mod, fecha_mod'
      'from ticket_transp'
      
        'where emp_codigo = :emp_codigo and suc_codigo = :suc_codigo and ' +
        'numero_ticket = :numero_ticket')
    Left = 408
    Top = 203
    object qTicketsTranspemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object qTicketsTranspsuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object qTicketsTranspven_codigo: TIntegerField
      FieldName = 'ven_codigo'
    end
    object qTicketsTranspnumero_ticket: TIntegerField
      FieldName = 'numero_ticket'
    end
    object qTicketsTranspfecha_ticket: TDateField
      FieldName = 'fecha_ticket'
    end
    object qTicketsTranspficha_id: TIntegerField
      FieldName = 'ficha_id'
    end
    object qTicketsTranspSubTotal: TCurrencyField
      FieldName = 'SubTotal'
    end
    object qTicketsTranspTotalImporte: TCurrencyField
      FieldName = 'TotalImporte'
    end
    object qTicketsTranspTotalItbis: TCurrencyField
      FieldName = 'TotalItbis'
    end
    object qTicketsTranspstatus_ticket: TStringField
      FieldName = 'status_ticket'
      Size = 3
    end
    object qTicketsTranspusu_codigo: TStringField
      FieldName = 'usu_codigo'
      Size = 10
    end
    object qTicketsTranspfecha_crea: TDateTimeField
      FieldName = 'fecha_crea'
    end
    object qTicketsTranspusu_cod_mod: TStringField
      FieldName = 'usu_cod_mod'
      Size = 10
    end
    object qTicketsTranspfecha_mod: TDateTimeField
      FieldName = 'fecha_mod'
    end
  end
  object dsqTicketsTransp: TDataSource
    DataSet = qTicketsTransp
    Left = 440
    Top = 203
  end
  object QSucursal: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <
      item
        Name = 'emp'
        DataType = ftInteger
        Value = Null
      end
      item
        Name = 'usu'
        DataType = ftInteger
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
  object dsSuc: TDataSource
    DataSet = QSucursal
    Left = 424
    Top = 339
  end
  object qDetTicketTransp: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    DataSource = dsqTicketsTransp
    Parameters = <
      item
        Name = 'emp_codigo'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'suc_codigo'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'numero_ticket'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'select dt.emp_codigo, dt.suc_codigo, numero_ticket, prod_codigo,' +
        ' cliente_id, prod_roriginal, prod_rfabric, p.pro_costo, prod_pre' +
        'cio, det_cantidad,'
      
        'det_itbis, det_importe, det_conitbis, status_ticket, dt.usu_codi' +
        'go, fecha, cli_nombre, pro_nombre'
      'from det_ticket_transp dt'
      
        'inner join clientes c on dt.emp_codigo = c.emp_codigo and dt.cli' +
        'ente_id = c.cli_codigo'
      
        'inner join productos p on dt.prod_codigo = p.pro_codigo and dt.e' +
        'mp_codigo = p.emp_codigo'
      'where dt.emp_codigo = :emp_codigo '
      '  and dt.suc_codigo = :suc_codigo '
      '  and numero_ticket = :numero_ticket'
      'order by dt.cliente_id, p.pro_nombre')
    Left = 472
    Top = 235
  end
  object ds_DetTicketTransp: TDataSource
    DataSet = MD_Detalle
    Left = 440
    Top = 235
  end
  object Search: TQrySearchDlgADO
    AliasFields.Strings = (
      'Nombre'
      'Codigo')
    AliasName = DM.ADOSigma
    Left = 328
    Top = 240
  end
  object qBuscarProd: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <
      item
        Name = 'emp'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'cli'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select '
      
        'p.pro_codigo, pro_roriginal, isnull(pro_rfabric,'#39#39') pro_rfabric,' +
        ' p.pro_costo, c.clp_precio precio, 1 cantidad,'
      
        'case when p.pro_montoitbis > 0 then (c.clp_precio*((p.pro_montoi' +
        'tbis/100))) else 0 end det_itbis, '
      
        'case when p.pro_montoitbis > 0 then (c.clp_precio*(1+(p.pro_mont' +
        'oitbis/100))) else c.clp_precio end det_importe, p.pro_nombre,'
      
        'p.pro_itbis, cast(cast(getdate() as char(11)) as datetime) fecha' +
        ', cli_nombre, C.cli_codigo'
      'from CliProductos C '
      
        'inner join Productos P on C.emp_codigo = P.emp_codigo and c.pro_' +
        'codigo = p.pro_codigo'
      
        'inner join Clientes CL on C.emp_codigo = CL.emp_codigo and c.cli' +
        '_codigo = CL.cli_codigo'
      'WHERE C.emp_codigo = :emp AND C.cli_codigo = :cli'
      'ORDER BY P.PRO_NOMBRE')
    Left = 640
    Top = 232
  end
  object MD_Detalle: TdxMemData
    Indexes = <>
    SortOptions = []
    BeforePost = MD_DetalleBeforePost
    AfterPost = MD_DetalleAfterPost
    Left = 408
    Top = 232
    object MD_Detalleprod_codigo: TIntegerField
      FieldName = 'prod_codigo'
      ReadOnly = True
    end
    object MD_Detallecliente_id: TIntegerField
      FieldName = 'cliente_id'
      ReadOnly = True
    end
    object MD_Detalleprod_roriginal: TStringField
      FieldName = 'prod_roriginal'
      ReadOnly = True
      Size = 5
    end
    object MD_Detalleprod_rfabric: TStringField
      FieldName = 'prod_rfabric'
      ReadOnly = True
      Size = 5
    end
    object MD_Detallepro_costo: TCurrencyField
      FieldName = 'pro_costo'
      ReadOnly = True
    end
    object MD_Detalleprod_precio: TCurrencyField
      FieldName = 'prod_precio'
      ReadOnly = True
    end
    object MD_Detalledet_cantidad: TCurrencyField
      FieldName = 'det_cantidad'
    end
    object MD_Detalledet_itbis: TCurrencyField
      FieldName = 'det_itbis'
      ReadOnly = True
    end
    object MD_Detalledet_importe: TCurrencyField
      FieldName = 'det_importe'
      ReadOnly = True
    end
    object MD_DetalleDET_CONITBIS: TStringField
      FieldName = 'DET_CONITBIS'
      ReadOnly = True
      Size = 1
    end
    object MD_Detallefecha: TDateField
      FieldName = 'fecha'
      ReadOnly = True
    end
    object MD_Detalleusu_codigo: TStringField
      FieldName = 'usu_codigo'
      ReadOnly = True
    end
    object MD_Detalleusu_cod_mod: TStringField
      FieldName = 'usu_cod_mod'
      ReadOnly = True
    end
    object MD_Detallefecha_mod: TDateTimeField
      FieldName = 'fecha_mod'
      ReadOnly = True
    end
    object MD_Detallepro_nombre: TStringField
      DisplayWidth = 100
      FieldName = 'pro_nombre'
      ReadOnly = True
      Size = 100
    end
    object MD_DetalleClienteN: TStringField
      FieldName = 'ClienteN'
      Size = 100
    end
    object MD_DetalleESTATUS: TStringField
      FieldName = 'ESTATUS'
      ReadOnly = True
      Size = 3
    end
  end
end
