object frmSerieFactura: TfrmSerieFactura
  Left = 373
  Top = 279
  ActiveControl = GridSerie
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = '# de Serie del producto'
  ClientHeight = 348
  ClientWidth = 487
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 14
  object btClose: TBitBtn
    Left = 612
    Top = 95
    Width = 80
    Height = 27
    Caption = '&Salir'
    TabOrder = 0
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
  object btPost: TBitBtn
    Left = 612
    Top = 58
    Width = 80
    Height = 27
    Caption = '&Eliminar'
    TabOrder = 1
    Glyph.Data = {
      42010000424D4201000000000000760000002800000011000000110000000100
      040000000000CC00000000000000000000001000000010000000000000000000
      BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
      777770000000777777777777777770000000777777777777770F700000007777
      0F777777777770000000777000F7777770F770000000777000F777770F777000
      00007777000F77700F777000000077777000F700F7777000000077777700000F
      7777700000007777777000F777777000000077777700000F7777700000007777
      7000F70F7777700000007770000F77700F7770000000770000F7777700F77000
      00007700F7777777700F70000000777777777777777770000000777777777777
      777770000000}
  end
  object GridSerie: TStringGrid
    Left = 1
    Top = 30
    Width = 353
    Height = 316
    ColCount = 1
    DefaultColWidth = 320
    DefaultRowHeight = 18
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 2
    OnKeyPress = GridSerieKeyPress
  end
  object pTop: TPanel
    Left = 0
    Top = 0
    Width = 487
    Height = 30
    Align = alTop
    BorderWidth = 4
    BorderStyle = bsSingle
    TabOrder = 3
    object DBText1: TDBText
      Left = 178
      Top = 5
      Width = 60
      Height = 16
      Align = alLeft
      AutoSize = True
      DataField = 'PRO_NOMBRE'
      DataSource = frmConduce.dsDetalle
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 105
      Top = 5
      Width = 60
      Height = 16
      Align = alLeft
      Alignment = taRightJustify
      AutoSize = True
      DataField = 'PRO_CODIGO'
      DataSource = frmConduce.dsDetalle
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 5
      Top = 5
      Width = 100
      Height = 16
      Align = alLeft
      Caption = 'PRODUCTO : '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 165
      Top = 5
      Width = 13
      Height = 16
      Align = alLeft
      Caption = ' - '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 238
      Top = 5
      Width = 32
      Height = 16
      Align = alLeft
      Caption = '        '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 395
      Top = 5
      Width = 83
      Height = 16
      Align = alRight
      Caption = 'CANTIDA : '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText3: TDBText
      Left = 335
      Top = 5
      Width = 60
      Height = 16
      Align = alRight
      AutoSize = True
      DataField = 'DET_CANTIDAD'
      DataSource = frmConduce.dsDetalle
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object pBottom: TPanel
    Left = 359
    Top = 30
    Width = 128
    Height = 318
    Align = alRight
    TabOrder = 4
    object BitBtn1: TBitBtn
      Left = 17
      Top = 17
      Width = 99
      Height = 33
      Caption = '&OK'
      TabOrder = 0
      Kind = bkOK
    end
    object BitBtn2: TBitBtn
      Left = 18
      Top = 55
      Width = 99
      Height = 32
      TabOrder = 1
      OnClick = BitBtn2Click
      Kind = bkClose
    end
    object btnEliminar: TBitBtn
      Left = 22
      Top = 95
      Width = 99
      Height = 32
      Caption = '&Eliminar'
      TabOrder = 2
      OnClick = btnEliminarClick
      Glyph.Data = {
        42010000424D4201000000000000760000002800000011000000110000000100
        040000000000CC00000000000000000000001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        777770000000777777777777777770000000777777777777770F700000007777
        0F777777777770000000777000F7777770F770000000777000F777770F777000
        00007777000F77700F777000000077777000F700F7777000000077777700000F
        7777700000007777777000F777777000000077777700000F7777700000007777
        7000F70F7777700000007770000F77700F7770000000770000F7777700F77000
        00007700F7777777700F70000000777777777777777770000000777777777777
        777770000000}
    end
  end
  object dsMantSerie: TDataSource
    Left = 48
    Top = 96
  end
end
