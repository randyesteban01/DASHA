object frmEstadisticas: TfrmEstadisticas
  Left = 283
  Top = 114
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Estadisticas generales de Dasha'
  ClientHeight = 542
  ClientWidth = 888
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
  OnClose = FormClose
  OnCreate = FormCreate
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object dxNavBar1: TdxNavBar
    Left = 0
    Top = 56
    Width = 150
    Height = 486
    Align = alLeft
    ActiveGroupIndex = 0
    DragCopyCursor = -1119
    DragCursor = -1120
    DragDropFlags = [fAllowDragLink, fAllowDropLink, fAllowDragGroup, fAllowDropGroup]
    HotTrackedGroupCursor = crDefault
    HotTrackedLinkCursor = -1118
    View = 13
    object Group1: TdxNavBarGroup
      Caption = 'Compras'
      LinksUseSmallImages = True
      SelectedLinkIndex = -1
      ShowAsIconView = False
      ShowControl = False
      TopVisibleLinkIndex = 0
      UseControl = False
      UseSmallImages = True
      Visible = True
      Links = <
        item
          Item = dxCompraGeneral
        end
        item
          Item = dxCompraFamilia
        end
        item
          Item = dxCompraDepto
        end
        item
          Item = dxCompraGerente
        end
        item
          Item = dxCompraProducto
        end
        item
          Item = dxComprasProveedor
        end>
    end
    object Group2: TdxNavBarGroup
      Caption = 'Ventas'
      LinksUseSmallImages = True
      SelectedLinkIndex = -1
      ShowAsIconView = False
      ShowControl = False
      TopVisibleLinkIndex = 0
      UseControl = False
      UseSmallImages = True
      Visible = True
      Links = <
        item
          Item = dxVentaGeneral
        end
        item
          Item = dxVentaFamilia
        end
        item
          Item = dxVentaDepto
        end
        item
          Item = dxVentaGerente
        end
        item
          Item = dxVentaPasillo
        end>
    end
    object dxCompraGeneral: TdxNavBarItem
      Action = aComprasGeneral
    end
    object dxCompraFamilia: TdxNavBarItem
      Action = aCompraFamilia
    end
    object dxCompraProducto: TdxNavBarItem
      Action = aComprasProducto
    end
    object dxCompraGerente: TdxNavBarItem
      Action = aComprasGerente
    end
    object dxCompraDepto: TdxNavBarItem
      Action = aCompraDepartamento
    end
    object dxComprasProveedor: TdxNavBarItem
      Action = aComprasProveedor
    end
    object dxVentaGeneral: TdxNavBarItem
      Action = aVentaGeneral
    end
    object dxVentaProducto: TdxNavBarItem
      Caption = 'Producto'
      Enabled = True
      LargeImageIndex = -1
      SmallImageIndex = -1
      Visible = True
    end
    object dxVentaGerente: TdxNavBarItem
      Action = aVentaGerente
    end
    object dxVentaDepto: TdxNavBarItem
      Action = aVentaDepto
    end
    object dxVentaFamilia: TdxNavBarItem
      Action = aVentaFamilia
    end
    object dxVentaPasillo: TdxNavBarItem
      Action = aVentaPasillo
    end
  end
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 888
    Height = 56
    AutoSize = True
    Bands = <
      item
        Control = ActionMainMenuBar1
        ImageIndex = -1
        Width = 884
      end
      item
        Control = Panel1
        ImageIndex = -1
        Width = 884
      end>
    object ActionMainMenuBar1: TActionMainMenuBar
      Left = 9
      Top = 0
      Width = 871
      Height = 25
      UseSystemFont = False
      ActionManager = ActionManager1
      Caption = 'ActionMainMenuBar1'
      ColorMap.HighlightColor = clWhite
      ColorMap.BtnSelectedColor = clBtnFace
      ColorMap.UnusedColor = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      Spacing = 0
    end
    object Panel1: TPanel
      Left = 9
      Top = 27
      Width = 871
      Height = 25
      BevelOuter = bvNone
      TabOrder = 1
      object cbAno: TComboBox
        Left = 0
        Top = 2
        Width = 89
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 0
        Items.Strings = (
          '2008'
          '2009'
          '2010'
          '2011'
          '2012'
          '2013'
          '2014'
          '2015')
      end
    end
  end
  object pnProveedor: TPanel
    Left = 150
    Top = 56
    Width = 738
    Height = 486
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 2
    object DBAdvChartView1: TDBAdvChartView
      Left = 2
      Top = 241
      Width = 734
      Height = 243
      ShowDesignHelper = True
      Align = alClient
      Color = cl3DLight
      Panes = <
        item
          Bands.Distance = 2.000000000000000000
          BackGround.Font.Charset = DEFAULT_CHARSET
          BackGround.Font.Color = clWindowText
          BackGround.Font.Height = -11
          BackGround.Font.Name = 'MS Sans Serif'
          BackGround.Font.Style = []
          BorderColor = clBlack
          CrossHair.CrossHairYValues.Position = [chYAxis]
          CrossHair.Distance = 0
          Height = 100.000000000000000000
          Legend.Font.Charset = DEFAULT_CHARSET
          Legend.Font.Color = clWindowText
          Legend.Font.Height = -11
          Legend.Font.Name = 'MS Sans Serif'
          Legend.Font.Style = []
          Legend.Visible = False
          Name = 'ChartPane 0'
          Options = []
          Range.RangeTo = 0
          Series = <
            item
              Pie.ShowValues = True
              Pie.ValuePosition = vpOutSideSlice
              Pie.ShowLegendOnSlice = True
              Pie.ValueFont.Charset = DEFAULT_CHARSET
              Pie.ValueFont.Color = clWindowText
              Pie.ValueFont.Height = -11
              Pie.ValueFont.Name = 'MS Sans Serif'
              Pie.ValueFont.Style = []
              Pie.LegendFont.Charset = DEFAULT_CHARSET
              Pie.LegendFont.Color = clWindowText
              Pie.LegendFont.Height = -11
              Pie.LegendFont.Name = 'MS Sans Serif'
              Pie.LegendFont.Style = []
              Annotations = <>
              Color = 22015
              CrossHairYValue.BorderWidth = 0
              CrossHairYValue.Font.Charset = DEFAULT_CHARSET
              CrossHairYValue.Font.Color = clWindowText
              CrossHairYValue.Font.Height = -11
              CrossHairYValue.Font.Name = 'MS Sans Serif'
              CrossHairYValue.Font.Style = []
              CrossHairYValue.GradientSteps = 0
              LineColor = 22015
              LegendText = 'Compras'
              Marker.MarkerType = mCircle
              Marker.MarkerColor = 22015
              Marker.MarkerSize = 7
              Marker.MarkerLineWidth = 0
              Marker.SelectedColor = 26367
              Marker.SelectedLineWidth = 0
              Marker.SelectedSize = 7
              Maximum = 12.000000000000000000
              Name = 'Serie 0'
              ShowValue = True
              ValueFont.Charset = DEFAULT_CHARSET
              ValueFont.Color = clWindowText
              ValueFont.Height = -11
              ValueFont.Name = 'MS Sans Serif'
              ValueFont.Style = []
              ValueAngle = 4
              ValueFormat = '%m'
              ValueWidth = 80
              XAxis.DateTimeFont.Charset = DEFAULT_CHARSET
              XAxis.DateTimeFont.Color = clWindowText
              XAxis.DateTimeFont.Height = -11
              XAxis.DateTimeFont.Name = 'MS Sans Serif'
              XAxis.DateTimeFont.Style = []
              XAxis.MajorFont.Charset = DEFAULT_CHARSET
              XAxis.MajorFont.Color = clWindowText
              XAxis.MajorFont.Height = -11
              XAxis.MajorFont.Name = 'MS Sans Serif'
              XAxis.MajorFont.Style = []
              XAxis.MajorUnit = 1.000000000000000000
              XAxis.MajorUnitSpacing = 0
              XAxis.MinorFont.Charset = DEFAULT_CHARSET
              XAxis.MinorFont.Color = clWindowText
              XAxis.MinorFont.Height = -11
              XAxis.MinorFont.Name = 'MS Sans Serif'
              XAxis.MinorFont.Style = []
              XAxis.MinorUnit = 1.000000000000000000
              XAxis.MinorUnitSpacing = 0
              XAxis.TextTop.Font.Charset = DEFAULT_CHARSET
              XAxis.TextTop.Font.Color = clWindowText
              XAxis.TextTop.Font.Height = -11
              XAxis.TextTop.Font.Name = 'MS Sans Serif'
              XAxis.TextTop.Font.Style = []
              XAxis.TextBottom.Font.Charset = DEFAULT_CHARSET
              XAxis.TextBottom.Font.Color = clWindowText
              XAxis.TextBottom.Font.Height = -11
              XAxis.TextBottom.Font.Name = 'MS Sans Serif'
              XAxis.TextBottom.Font.Style = []
              XAxis.TickMarkSize = 6
              YAxis.MajorFont.Charset = DEFAULT_CHARSET
              YAxis.MajorFont.Color = clWindowText
              YAxis.MajorFont.Height = -11
              YAxis.MajorFont.Name = 'MS Sans Serif'
              YAxis.MajorFont.Style = []
              YAxis.MajorUnit = 1.000000000000000000
              YAxis.MajorUnitSpacing = 0
              YAxis.MinorFont.Charset = DEFAULT_CHARSET
              YAxis.MinorFont.Color = clWindowText
              YAxis.MinorFont.Height = -11
              YAxis.MinorFont.Name = 'MS Sans Serif'
              YAxis.MinorFont.Style = []
              YAxis.MinorUnitSpacing = 10
              YAxis.TextLeft.Angle = -90
              YAxis.TextLeft.Font.Charset = DEFAULT_CHARSET
              YAxis.TextLeft.Font.Color = clWindowText
              YAxis.TextLeft.Font.Height = -11
              YAxis.TextLeft.Font.Name = 'MS Sans Serif'
              YAxis.TextLeft.Font.Style = []
              YAxis.TextRight.Angle = 90
              YAxis.TextRight.Font.Charset = DEFAULT_CHARSET
              YAxis.TextRight.Font.Color = clWindowText
              YAxis.TextRight.Font.Height = -11
              YAxis.TextRight.Font.Name = 'MS Sans Serif'
              YAxis.TextRight.Font.Style = []
              YAxis.TickMarkColor = clRed
              BarValueTextFont.Charset = DEFAULT_CHARSET
              BarValueTextFont.Color = clWindowText
              BarValueTextFont.Height = -11
              BarValueTextFont.Name = 'Tahoma'
              BarValueTextFont.Style = []
              FieldNameValue = 'Total'
              FieldNameXAxis = 'Mes'
            end>
          Title.Alignment = taCenter
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Title.Position = tTop
          Title.Size = 8
          XAxis.Font.Charset = DEFAULT_CHARSET
          XAxis.Font.Color = clWindowText
          XAxis.Font.Height = -11
          XAxis.Font.Name = 'MS Sans Serif'
          XAxis.Font.Style = []
          XGrid.MajorFont.Charset = DEFAULT_CHARSET
          XGrid.MajorFont.Color = clWindowText
          XGrid.MajorFont.Height = -11
          XGrid.MajorFont.Name = 'MS Sans Serif'
          XGrid.MajorFont.Style = []
          XGrid.MinorFont.Charset = DEFAULT_CHARSET
          XGrid.MinorFont.Color = clWindowText
          XGrid.MinorFont.Height = -11
          XGrid.MinorFont.Name = 'MS Sans Serif'
          XGrid.MinorFont.Style = []
          YAxis.Font.Charset = DEFAULT_CHARSET
          YAxis.Font.Color = clWindowText
          YAxis.Font.Height = -11
          YAxis.Font.Name = 'MS Sans Serif'
          YAxis.Font.Style = []
          YAxis.Size = 40
          YGrid.MinorDistance = 1.000000000000000000
          YGrid.MajorDistance = 2.000000000000000000
          YGrid.Visible = True
          DataSource = dsCompras
        end>
      Tracker.Font.Charset = DEFAULT_CHARSET
      Tracker.Font.Color = clWindowText
      Tracker.Font.Height = -11
      Tracker.Font.Name = 'MS Sans Serif'
      Tracker.Font.Style = []
      Tracker.Title.Font.Charset = DEFAULT_CHARSET
      Tracker.Title.Font.Color = clWindowText
      Tracker.Title.Font.Height = -11
      Tracker.Title.Font.Name = 'MS Sans Serif'
      Tracker.Title.Font.Style = []
      Tracker.Title.Text = 'TRACKER'
      Version = '2.8.0.0 MAY, 2010'
      XAxisZoomSensitivity = 1.000000000000000000
      YAxisZoomSensitivity = 1.000000000000000000
    end
    object cxGrid1: TcxGrid
      Left = 2
      Top = 2
      Width = 734
      Height = 239
      Align = alTop
      TabOrder = 1
      object cxGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataModeController.SmartRefresh = True
        DataController.DataSource = dsCompras
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object ActionList1: TActionList
    Left = 40
    Top = 312
    object aSalir: TAction
      Caption = 'Salir'
      OnExecute = aSalirExecute
    end
    object aExportar: TAction
      Caption = 'Exportar Excel'
    end
    object aImprimir: TAction
      Caption = 'Imprimir'
    end
    object aComprasGeneral: TAction
      Caption = 'General'
      OnExecute = aComprasGeneralExecute
    end
    object aComprasProveedor: TAction
      Caption = 'Proveedor'
      OnExecute = aComprasProveedorExecute
    end
    object aComprasProducto: TAction
      Caption = 'Producto'
      OnExecute = aComprasProductoExecute
    end
    object aComprasGerente: TAction
      Caption = 'Gerente'
      OnExecute = aComprasGerenteExecute
    end
    object aCompraFamilia: TAction
      Caption = 'Familia'
      OnExecute = aCompraFamiliaExecute
    end
    object aCompraDepartamento: TAction
      Caption = 'Departamento'
      OnExecute = aCompraDepartamentoExecute
    end
    object aVentaGeneral: TAction
      Caption = 'General'
      OnExecute = aVentaGeneralExecute
    end
    object aVentaFamilia: TAction
      Caption = 'Familia'
      OnExecute = aVentaFamiliaExecute
    end
    object aVentaDepto: TAction
      Caption = 'Departamento'
      OnExecute = aVentaDeptoExecute
    end
    object aVentaGerente: TAction
      Caption = 'Gerente'
      OnExecute = aVentaGerenteExecute
    end
    object aVentaProveedor: TAction
      Caption = 'Proveedor'
    end
    object aVentaPasillo: TAction
      Caption = 'Pasillo'
      OnExecute = aVentaPasilloExecute
    end
  end
  object ActionManager1: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Items = <
              item
                Action = aExportar
                Caption = '&Exportar Excel'
              end
              item
                Action = aImprimir
                Caption = '&Imprimir'
              end
              item
                Caption = '-'
              end
              item
                Action = aSalir
                Caption = '&Salir'
              end>
            Caption = '&Estadisticas'
          end>
        ActionBar = ActionMainMenuBar1
      end>
    Left = 72
    Top = 312
    StyleName = 'XP Style'
  end
  object QCompras: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    CommandTimeout = 0
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
        Name = 'ano'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      '  case'
      '    when month(f.fac_fecha) = 01 then '#39'Ene'#39
      '    when month(f.fac_fecha) = 02 then '#39'Feb'#39
      '    when month(f.fac_fecha) = 03 then '#39'Mar'#39
      '    when month(f.fac_fecha) = 04 then '#39'Abr'#39
      '    when month(f.fac_fecha) = 05 then '#39'May'#39
      '    when month(f.fac_fecha) = 06 then '#39'Jun'#39
      '    when month(f.fac_fecha) = 07 then '#39'Jul'#39
      '    when month(f.fac_fecha) = 08 then '#39'Ago'#39
      '    when month(f.fac_fecha) = 09 then '#39'Sep'#39
      '    when month(f.fac_fecha) = 10 then '#39'Oct'#39
      '    when month(f.fac_fecha) = 11 then '#39'Nov'#39
      '    when month(f.fac_fecha) = 12 then '#39'Dic'#39
      '  end Mes, month(f.fac_fecha) as NMes,'
      '  sum(f.fac_total - f.fac_itbis) as Total'
      'from'
      '  provfacturas f'
      'where'
      '  f.emp_codigo = :emp'
      '  and year(f.fac_fecha) = :ano'
      '  and f.fac_status <> '#39'ANU'#39
      'group by'
      '  case'
      '    when month(f.fac_fecha) = 01 then '#39'Ene'#39
      '    when month(f.fac_fecha) = 02 then '#39'Feb'#39
      '    when month(f.fac_fecha) = 03 then '#39'Mar'#39
      '    when month(f.fac_fecha) = 04 then '#39'Abr'#39
      '    when month(f.fac_fecha) = 05 then '#39'May'#39
      '    when month(f.fac_fecha) = 06 then '#39'Jun'#39
      '    when month(f.fac_fecha) = 07 then '#39'Jul'#39
      '    when month(f.fac_fecha) = 08 then '#39'Ago'#39
      '    when month(f.fac_fecha) = 09 then '#39'Sep'#39
      '    when month(f.fac_fecha) = 10 then '#39'Oct'#39
      '    when month(f.fac_fecha) = 11 then '#39'Nov'#39
      '    when month(f.fac_fecha) = 12 then '#39'Dic'#39
      '  end, month(f.fac_fecha)'
      'order by'
      '   month(f.fac_fecha)')
    Left = 40
    Top = 344
    object QComprasMes: TStringField
      FieldName = 'Mes'
      Size = 3
    end
    object QComprasNMes: TIntegerField
      FieldName = 'NMes'
      Visible = False
    end
    object QComprasTotal: TBCDField
      FieldName = 'Total'
      ReadOnly = True
      currency = True
      Precision = 32
      Size = 2
    end
  end
  object dsCompras: TDataSource
    DataSet = QCompras
    Left = 72
    Top = 344
  end
  object QMaster: TADOQuery
    Connection = DM.ADOSigma
    CommandTimeout = 0
    Parameters = <>
    Left = 40
    Top = 280
  end
  object dsMaster: TDataSource
    DataSet = QMaster
    OnDataChange = dsMasterDataChange
    Left = 72
    Top = 280
  end
  object QVentas: TADOQuery
    Connection = DM.ADOSigma
    CommandTimeout = 0
    Parameters = <>
    Left = 40
    Top = 376
    object QVentasMes: TStringField
      FieldName = 'Mes'
      Size = 3
    end
    object QVentasNMes: TIntegerField
      FieldName = 'NMes'
    end
    object QVentasTotal: TBCDField
      FieldName = 'Total'
      ReadOnly = True
      currency = True
      Precision = 32
      Size = 2
    end
  end
  object dsVentas: TDataSource
    DataSet = QVentas
    Left = 72
    Top = 376
  end
end
