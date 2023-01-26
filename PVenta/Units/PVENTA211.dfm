object frmChartResumenVentaProducto: TfrmChartResumenVentaProducto
  Left = 316
  Top = 287
  Width = 706
  Height = 452
  Caption = 'frmChartResumenVentaProducto'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 690
    Height = 414
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Pastel'
      object DBChart1: TDBChart
        Left = 0
        Top = 0
        Width = 682
        Height = 386
        AllowPanning = pmNone
        AllowZoom = False
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        BackWall.Pen.Visible = False
        Title.Text.Strings = (
          'TDBChart')
        AxisVisible = False
        ClipPoints = False
        Frame.Visible = False
        View3DOptions.Elevation = 315
        View3DOptions.Orthogonal = False
        View3DOptions.Perspective = 0
        View3DOptions.Rotation = 360
        View3DWalls = False
        Align = alClient
        TabOrder = 0
        object Series1: TPieSeries
          Marks.ArrowLength = 8
          Marks.Visible = True
          DataSource = dsReporte
          SeriesColor = clRed
          OtherSlice.Text = 'Other'
          PieValues.DateTime = False
          PieValues.Name = 'Pie'
          PieValues.Multiplier = 1.000000000000000000
          PieValues.Order = loNone
          PieValues.ValueSource = 'ene;feb;mar;abr;may;jun;jul;ago;sep;oct;nov;dic'
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Barra horizontal'
      ImageIndex = 1
      object DBChart2: TDBChart
        Left = 0
        Top = 0
        Width = 682
        Height = 386
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        Title.Text.Strings = (
          'TDBChart')
        View3D = False
        Align = alClient
        TabOrder = 0
        object Series2: THorizBarSeries
          ColorEachPoint = True
          Marks.ArrowLength = 20
          Marks.Visible = True
          DataSource = dsReporte
          SeriesColor = clRed
          XValues.DateTime = False
          XValues.Name = 'Bar'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loNone
          XValues.ValueSource = 'ene;feb;mar;abr;may;jun;jul;ago;sep;oct;nov;dic'
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Barra vertical'
      ImageIndex = 2
      object DBChart3: TDBChart
        Left = 0
        Top = 0
        Width = 682
        Height = 386
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        Title.Text.Strings = (
          'TDBChart')
        View3D = False
        Align = alClient
        TabOrder = 0
        object Series3: TBarSeries
          ColorEachPoint = True
          Marks.ArrowLength = 20
          Marks.Visible = True
          DataSource = dsReporte
          SeriesColor = clRed
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Bar'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
          YValues.ValueSource = 'ene;feb;mar;abr;may;jun;jul;ago;sep;oct;nov;dic'
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'L'#237'nea'
      ImageIndex = 3
      object DBChart4: TDBChart
        Left = 0
        Top = 0
        Width = 682
        Height = 386
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        Title.Text.Strings = (
          'TDBChart')
        View3D = False
        Align = alClient
        TabOrder = 0
        object Series4: TLineSeries
          ColorEachPoint = True
          Marks.ArrowLength = 8
          Marks.Visible = False
          DataSource = dsReporte
          SeriesColor = clRed
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
          YValues.ValueSource = 'ene;feb;mar;abr;may;jun;jul;ago;sep;oct;nov;dic'
        end
      end
    end
  end
  object QReporte: TADOStoredProc
    Connection = DM.ADOSigma
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'pr_venta_producto_anual;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@emp'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 1
      end
      item
        Name = '@ano'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 1
      end
      item
        Name = '@tipo'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = '1'
      end
      item
        Name = '@periodo'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = '1'
      end
      item
        Name = '@fec1'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@fec2'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@fam'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 1
      end
      item
        Name = '@ger'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 1
      end
      item
        Name = '@dep'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 1
      end
      item
        Name = '@sup'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 1
      end
      item
        Name = '@prod'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 1
      end>
    Left = 112
    Top = 160
    object QReporteprod: TIntegerField
      FieldName = 'prod'
    end
    object QReportenombre: TStringField
      FieldName = 'nombre'
      Size = 100
    end
    object QReporteene: TBCDField
      FieldName = 'ene'
      currency = True
      Precision = 19
    end
    object QReportefeb: TBCDField
      FieldName = 'feb'
      currency = True
      Precision = 19
    end
    object QReportemar: TBCDField
      FieldName = 'mar'
      currency = True
      Precision = 19
    end
    object QReporteabr: TBCDField
      FieldName = 'abr'
      currency = True
      Precision = 19
    end
    object QReportemay: TBCDField
      FieldName = 'may'
      currency = True
      Precision = 19
    end
    object QReportejun: TBCDField
      FieldName = 'jun'
      currency = True
      Precision = 19
    end
    object QReportejul: TBCDField
      FieldName = 'jul'
      currency = True
      Precision = 19
    end
    object QReporteago: TBCDField
      FieldName = 'ago'
      currency = True
      Precision = 19
    end
    object QReportesep: TBCDField
      FieldName = 'sep'
      currency = True
      Precision = 19
    end
    object QReporteoct: TBCDField
      FieldName = 'oct'
      currency = True
      Precision = 19
    end
    object QReportenov: TBCDField
      FieldName = 'nov'
      currency = True
      Precision = 19
    end
    object QReportedic: TBCDField
      FieldName = 'dic'
      currency = True
      Precision = 19
    end
    object QReporteref: TStringField
      FieldName = 'ref'
      Size = 50
    end
    object QReportetot: TBCDField
      FieldName = 'tot'
      ReadOnly = True
      Precision = 19
    end
  end
  object dsReporte: TDataSource
    DataSet = QReporte
    Left = 144
    Top = 160
  end
end
