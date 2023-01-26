object frmConsOperaciones: TfrmConsOperaciones
  Left = 236
  Top = 279
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Operaciones'
  ClientHeight = 290
  ClientWidth = 644
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
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
  object Panel2: TPanel
    Left = 0
    Top = 250
    Width = 644
    Height = 40
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 20
      Height = 13
      Caption = 'Mes'
    end
    object btRefresh: TBitBtn
      Left = 480
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Refrescar >>'
      TabOrder = 0
      OnClick = btRefreshClick
    end
    object btClose: TBitBtn
      Left = 560
      Top = 8
      Width = 75
      Height = 25
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
    object cbMes: TComboBox
      Left = 32
      Top = 8
      Width = 129
      Height = 21
      BevelKind = bkSoft
      Style = csDropDownList
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemHeight = 13
      ParentFont = False
      TabOrder = 2
      Items.Strings = (
        'ENERO'
        'FEBRERO'
        'MARZO'
        'ABRIL'
        'MAYO'
        'JUNIO'
        'JULIO'
        'AGOSTO'
        'SEPTIEMBRE'
        'OCTUBRE'
        'NOVIEMBRE'
        'DICIEMBRE')
    end
    object spAno: TSpinEdit
      Left = 161
      Top = 8
      Width = 49
      Height = 22
      EditorEnabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxValue = 0
      MinValue = 0
      ParentFont = False
      TabOrder = 3
      Value = 0
    end
  end
  object StaticText1: TStaticText
    Left = 8
    Top = 8
    Width = 209
    Height = 20
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = 'Detalle de Ingresos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object StaticText2: TStaticText
    Left = 224
    Top = 8
    Width = 209
    Height = 20
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = 'Detalle de Gastos/Egresos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object StaticText3: TStaticText
    Left = 480
    Top = 8
    Width = 161
    Height = 20
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = 'Resultado del Mes'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object sgIng: TStringGrid
    Left = 8
    Top = 34
    Width = 225
    Height = 151
    Color = clInfoBk
    ColCount = 2
    DefaultColWidth = 101
    DefaultRowHeight = 21
    Enabled = False
    FixedCols = 0
    RowCount = 12
    FixedRows = 0
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goDrawFocusSelected]
    ParentFont = False
    ScrollBars = ssNone
    TabOrder = 4
    OnDrawCell = sgIngDrawCell
    ColWidths = (
      121
      97)
  end
  object sgGas: TStringGrid
    Left = 240
    Top = 34
    Width = 233
    Height = 151
    Color = clInfoBk
    ColCount = 2
    DefaultColWidth = 101
    DefaultRowHeight = 21
    Enabled = False
    FixedCols = 0
    RowCount = 12
    FixedRows = 0
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goDrawFocusSelected]
    ParentFont = False
    ScrollBars = ssNone
    TabOrder = 5
    OnDrawCell = sgGasDrawCell
    ColWidths = (
      127
      99)
  end
  object Fec1: TDateTimePicker
    Left = 56
    Top = 96
    Width = 81
    Height = 21
    Date = 37689.000000000000000000
    Time = 37689.000000000000000000
    TabOrder = 6
    Visible = False
  end
  object Fec2: TDateTimePicker
    Left = 56
    Top = 120
    Width = 81
    Height = 21
    Date = 37689.000000000000000000
    Time = 37689.000000000000000000
    TabOrder = 7
    Visible = False
  end
  object lbTotal: TStaticText
    Left = 480
    Top = 40
    Width = 161
    Height = 24
    Alignment = taRightJustify
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = '0.00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
  end
end
