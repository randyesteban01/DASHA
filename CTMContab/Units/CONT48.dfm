object frmCopiaCatalogo: TfrmCopiaCatalogo
  Left = 94
  Top = 108
  Width = 686
  Height = 415
  Caption = 'Copiar cat'#225'logo entre compa'#241#237'as'
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
  OnActivate = FormActivate
  OnClose = FormClose
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 131
    Height = 13
    Caption = 'Compa'#241#237'a de Origen'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 336
    Top = 8
    Width = 137
    Height = 13
    Caption = 'Compa'#241#237'a de Destino'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object sgOrigen: TStringGrid
    Left = 8
    Top = 24
    Width = 326
    Height = 297
    Color = clInfoBk
    ColCount = 2
    DefaultRowHeight = 18
    FixedCols = 0
    RowCount = 2
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect]
    ParentFont = False
    ScrollBars = ssNone
    TabOrder = 0
    OnDrawCell = sgOrigenDrawCell
    OnSelectCell = sgOrigenSelectCell
    ColWidths = (
      64
      256)
  end
  object sgDestino: TStringGrid
    Left = 336
    Top = 24
    Width = 326
    Height = 297
    Color = clInfoBk
    ColCount = 2
    DefaultRowHeight = 18
    FixedCols = 0
    RowCount = 2
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect]
    ParentFont = False
    ScrollBars = ssNone
    TabOrder = 1
    ColWidths = (
      64
      256)
  end
  object BitBtn1: TBitBtn
    Left = 456
    Top = 328
    Width = 123
    Height = 41
    Caption = 'Copiar >>'
    TabOrder = 2
    OnClick = BitBtn1Click
    Glyph.Data = {
      360C0000424D360C000000000000360000002800000020000000200000000100
      180000000000000C000000000000000000000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
      7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7FFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
      7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7FFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000007F7F7F7F7F7FFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      0000FFFF007F7F00FFFF007F7F00FFFF007F7F00FFFF007F7F00FFFF007F7F00
      FFFF007F7F00FFFF007F7F00FFFF0000007F7F7FFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      0000000000FFFF007F7F00FFFF007F7F00FFFF007F7F00FFFF007F7F00FFFF00
      7F7F00FFFF007F7F00FFFF007F7F00FFFF000000FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      00FFFFFF00000000FFFF007F7F00FFFF007F7F00FFFF007F7F00FFFF007F7F00
      FFFF007F7F00FFFF007F7F00FFFF007F7F000000FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      0000FFFF000000007F7F00FFFF007F7F00FFFF007F7F00FFFF007F7F00FFFF00
      7F7F00FFFF007F7F00FFFF007F7F00FFFF007F7F000000FFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      00FFFFFF00FFFF000000007F7F00FFFF007F7F00FFFF007F7F00FFFF007F7F00
      FFFF007F7F00FFFF007F7F00FFFF007F7F00FFFF000000FFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      0000FFFFFFFFFF00000000FFFF007F7F00FFFF007F7F00FFFF007F7F00FFFF00
      7F7F00FFFF007F7F00FFFF007F7F00FFFF007F7F00FFFF000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      00FFFFFF00FFFFFFFFFF00000000FFFF007F7F00FFFF007F7F00FFFF007F7F00
      FFFF007F7F00FFFF007F7F00FFFF007F7F00FFFF007F7F000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      0000FFFFFFFFFF00FFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      00FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFF
      FFFF00FFFFFFFFFF00FFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      0000FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00
      FFFFFFFFFF00FFFF000000FFFF00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      00000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00000000000000000000
      0000000000000000FFFF00FFFF00FFFF00000000FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFFFFFFFFFF
      FFFF000000FFFF00FFFF00FFFF00FFFF00FFFF00000000FFFFFFFFFFFFFFFFFF
      7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
      7F7F7F7F000000000000000000000000000000000000FFFFFFFFFFFFFFFFFF00
      0000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00000000FFFFFF7F7F7F
      7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
      7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
      0000000000000000FFFF00FFFF00FFFF00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFF000000FFFF00FFFF00FFFF00000000FFFFFFFFFFFF00000000FFFF
      007F7F00FFFF007F7F00FFFF007F7F00FFFF007F7F00FFFF007F7F00FFFF007F
      7F00FFFF007F7F000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FF
      FFFFFFFFFF000000FFFF00FFFF00FFFF00000000FFFFFFFFFFFF000000000000
      00FFFF007F7F00FFFF007F7F00FFFF007F7F00FFFF007F7F00FFFF007F7F00FF
      FF007F7F00FFFF007F7F000000FFFFFFFFFFFFFFFFFF000000BFBFBF000000FF
      FFFFFFFFFF000000FFFF00FFFF00FFFF00000000FFFFFFFFFFFF000000FFFFFF
      00000000FFFF007F7F00FFFF007F7F00FFFF007F7F00FFFF007F7F00FFFF007F
      7F00FFFF007F7F00FFFF000000FFFFFFFFFFFF000000BFBFBFBFBFBF00000000
      0000000000000000FFFF00FFFF00FFFF00000000FFFFFFFFFFFF00000000FFFF
      000000007F7F00FFFF007F7F00FFFF007F7F00FFFF007F7F00FFFF007F7F00FF
      FF007F7F00FFFF007F7F00FFFF000000000000BFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBF000000FFFF00FFFF00FFFF00000000FFFFFFFFFFFF000000FFFFFF
      00FFFF000000007F7F00FFFF007F7F00FFFF007F7F00FFFF007F7F00FFFF007F
      7F00FFFF007F7F00FFFF007F7F000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBF000000FFFF00FFFF00000000FFFFFFFFFFFFFFFFFF00000000FFFF
      FFFFFF00000000FFFF007F7F00FFFF007F7F00FFFF007F7F00FFFF007F7F00FF
      FF007F7F00FFFF007F7F00FFFF007F7F000000BFBFBFBFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBF000000FFFF00000000FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF
      00FFFFFFFFFF00000000FFFF007F7F00FFFF007F7F00FFFF007F7F00FFFF007F
      7F00FFFF007F7F00FFFF007F7F00FFFF000000000000BFBFBFBFBFBF00000000
      0000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFF
      FFFFFF00FFFF0000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFFFF000000BFBFBF000000FF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF
      00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FF
      FFFFFFFF00FFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000FF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFF
      FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFF
      FF00FFFFFFFFFF00FFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF000000000000000000000000000000
      00000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00000000FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
  end
  object btClose: TBitBtn
    Left = 584
    Top = 328
    Width = 75
    Height = 41
    Caption = '&Salir'
    TabOrder = 3
    TabStop = False
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
  object Query1: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <>
    Left = 200
    Top = 96
  end
end