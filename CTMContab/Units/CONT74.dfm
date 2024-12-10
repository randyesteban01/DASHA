object frmRepResultadoAnual: TfrmRepResultadoAnual
  Left = 290
  Top = 246
  ActiveControl = spAno
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Estado de Resultado anual'
  ClientHeight = 410
  ClientWidth = 693
  Color = clBtnFace
  DefaultMonitor = dmMainForm
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 693
    Height = 42
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object Label3: TLabel
      Left = 8
      Top = 15
      Width = 19
      Height = 13
      Caption = 'A'#241'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object spAno: TSpinEdit
      Left = 32
      Top = 10
      Width = 49
      Height = 22
      TabStop = False
      EditorEnabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxValue = 3000
      MinValue = 1900
      ParentFont = False
      TabOrder = 0
      Value = 1900
    end
    object Panel2: TPanel
      Left = 300
      Top = 2
      Width = 391
      Height = 38
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      object btprocesar: TBitBtn
        Left = 104
        Top = 8
        Width = 89
        Height = 25
        Caption = 'Procesar'
        TabOrder = 0
        OnClick = btprocesarClick
        Glyph.Data = {
          66010000424D6601000000000000760000002800000014000000140000000100
          040000000000F000000000000000000000001000000010000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777888777777
          777777770000774448877777777777770000772244887777777777770000A222
          22488777777777770000A22222248877777777770000A2222222488777777777
          0000A22222222488777777770000A22222222248877777770000A22248A22224
          887777770000A222488A2222488777770000A2224887A2224488777700007A22
          48877A222488777700007A22477777A222488777000077777777777A22244877
          0000777777777777A222488700007777777777777A2224870000777777777777
          77A224480000777777777777777A224800007777777777777777A24800007777
          7777777777777A270000}
      end
      object btexportar: TBitBtn
        Left = 200
        Top = 8
        Width = 89
        Height = 25
        Caption = 'Exportar'
        TabOrder = 1
        OnClick = btexportarClick
        Glyph.Data = {
          4E010000424D4E01000000000000760000002800000012000000120000000100
          040000000000D800000000000000000000001000000010000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          7777770000007777777777777777770000007777777777770007770000007444
          4400000006007700000074FFFF08880600080700000074F008000060EE070700
          000074FFFFF8060EE0047700000074F0088060EE00F47700000074FFFF060EE0
          00747700000074F00800EE0EE0047700000074FFFF0EE0F0EE047700000074F0
          080000F000047700000074FFFFFFFFFFFFF47700000074444444444444447700
          000074F444F444F444F477000000744444444444444477000000777777777777
          777777000000777777777777777777000000}
      end
      object btClose: TBitBtn
        Left = 296
        Top = 8
        Width = 89
        Height = 25
        Caption = '&Salir'
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
    end
  end
  object sgestado: TStringGrid
    Left = 0
    Top = 42
    Width = 693
    Height = 368
    Align = alClient
    ColCount = 15
    DefaultColWidth = 105
    DefaultRowHeight = 16
    FixedCols = 0
    RowCount = 2
    GridLineWidth = 2
    Options = [goFixedVertLine, goVertLine]
    TabOrder = 1
    OnDblClick = sgestadoDblClick
    OnDrawCell = sgestadoDrawCell
    ColWidths = (
      105
      370
      105
      105
      105
      105
      105
      105
      105
      105
      105
      105
      105
      105
      105)
  end
  object ListBox1: TListBox
    Left = 112
    Top = 256
    Width = 89
    Height = 33
    ItemHeight = 13
    TabOrder = 2
    Visible = False
  end
  object lbcolor: TListBox
    Left = 336
    Top = 136
    Width = 121
    Height = 97
    ItemHeight = 13
    TabOrder = 3
    Visible = False
  end
  object QEstado: TADOStoredProc
    Connection = DM.ADOSigma
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    DataSource = DM.dsEmpresas
    ProcedureName = 'pr_resultado_anual;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@emp'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@ano'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@area'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@tasa'
        Attributes = [paNullable]
        DataType = ftBCD
        Precision = 19
        Value = Null
      end>
    Left = 112
    Top = 160
    object QEstadocuenta: TStringField
      FieldName = 'cuenta'
    end
    object QEstadocontrol: TStringField
      FieldName = 'control'
      Size = 1
    end
    object QEstadonombre: TStringField
      FieldName = 'nombre'
      Size = 80
    end
    object QEstadoene: TBCDField
      FieldName = 'ene'
      Precision = 19
    end
    object QEstadofeb: TBCDField
      FieldName = 'feb'
      Precision = 19
    end
    object QEstadomar: TBCDField
      FieldName = 'mar'
      Precision = 19
    end
    object QEstadoabr: TBCDField
      FieldName = 'abr'
      Precision = 19
    end
    object QEstadomay: TBCDField
      FieldName = 'may'
      Precision = 19
    end
    object QEstadojun: TBCDField
      FieldName = 'jun'
      Precision = 19
    end
    object QEstadojul: TBCDField
      FieldName = 'jul'
      Precision = 19
    end
    object QEstadoago: TBCDField
      FieldName = 'ago'
      Precision = 19
    end
    object QEstadosep: TBCDField
      FieldName = 'sep'
      Precision = 19
    end
    object QEstadooct: TBCDField
      FieldName = 'oct'
      Precision = 19
    end
    object QEstadonov: TBCDField
      FieldName = 'nov'
      Precision = 19
    end
    object QEstadodic: TBCDField
      FieldName = 'dic'
      Precision = 19
    end
    object QEstadotot: TBCDField
      FieldName = 'tot'
      ReadOnly = True
      Precision = 19
    end
    object QEstadoporc: TBCDField
      FieldName = 'porc'
      Precision = 19
    end
  end
  object dsEstado: TDataSource
    DataSet = QEstado
    Left = 144
    Top = 160
  end
  object ExportXLS: TQExportXLS
    About = '(About EMS QuickExport)'
    _Version = '2.50'
    Formats.DateTimeFormat = 'M/d/yyyy h:mm AMPM'
    Formats.IntegerFormat = '#,###,##0'
    Formats.CurrencyFormat = '00.00$'
    Formats.FloatFormat = '#,###,##0.00'
    Formats.DateFormat = 'M/d/yyyy'
    Formats.TimeFormat = 'h:mm AMPM'
    Formats.BooleanTrue = 'true'
    Formats.BooleanFalse = 'false'
    Formats.NullString = 'null'
    Options.PageFooter = 'Page &P of &N'
    Options.SheetTitle = 'Sheet 1'
    Options.CaptionsFormat.Font.Style = [xfsBold]
    FieldFormats = <>
    StripStyles = <>
    Sheets = <
      item
        Title = 'Sheet 1'
        Options.PageFooter = 'Page &P of &N'
        Options.SheetTitle = 'Sheet 1'
        Options.CaptionsFormat.Font.Style = [xfsBold]
        FieldFormats = <>
        StripStyles = <>
        DataSet = QEstado
        Formats.DateTimeFormat = 'M/d/yyyy h:mm AMPM'
        Formats.IntegerFormat = '#,###,##0'
        Formats.CurrencyFormat = '00.00$'
        Formats.FloatFormat = '#,###,##0.00'
        Formats.DateFormat = 'M/d/yyyy'
        Formats.TimeFormat = 'h:mm AMPM'
        Formats.BooleanTrue = 'true'
        Formats.BooleanFalse = 'false'
        Formats.NullString = 'null'
        OnlyVisibleFields = False
      end>
    Left = 216
    Top = 168
  end
end
