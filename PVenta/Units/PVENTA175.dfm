object frmPronosticoCobro: TfrmPronosticoCobro
  Left = 223
  Top = 154
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Pron'#243'sticos de cobro'
  ClientHeight = 413
  ClientWidth = 694
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
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 376
    Width = 694
    Height = 37
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    DesignSize = (
      694
      37)
    object btClose: TBitBtn
      Left = 608
      Top = 6
      Width = 73
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '&Salir'
      TabOrder = 0
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
    object btRefresh: TBitBtn
      Left = 536
      Top = 6
      Width = 65
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Refrescar'
      TabOrder = 1
    end
    object spAno: TSpinEdit
      Left = 8
      Top = 8
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
      TabOrder = 2
      Value = 1900
      OnChange = spAnoChange
    end
    object cbMes: TComboBox
      Left = 56
      Top = 8
      Width = 105
      Height = 21
      BevelKind = bkSoft
      Style = csDropDownList
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemHeight = 13
      ParentFont = False
      TabOrder = 3
      TabStop = False
      OnChange = cbMesChange
      Items.Strings = (
        'Enero'
        'Febrero'
        'Marzo'
        'Abril'
        'Mayo'
        'Junio'
        'Julio'
        'Agosto'
        'Septiembre'
        'Octubre'
        'Noviembre'
        'Diciembre')
    end
  end
  object sgcalendar: TStringGrid
    Left = 0
    Top = 0
    Width = 694
    Height = 376
    Align = alClient
    ColCount = 7
    DefaultColWidth = 97
    DefaultRowHeight = 52
    FixedCols = 0
    RowCount = 7
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine]
    ScrollBars = ssNone
    TabOrder = 1
    OnDrawCell = sgcalendarDrawCell
  end
  object Calendar1: TCalendar
    Left = 176
    Top = 376
    Width = 81
    Height = 33
    StartOfWeek = 0
    TabOrder = 2
    Visible = False
  end
  object Search: TQrySearchDlgADO
    AliasName = DM.ADOSigma
    Left = 408
    Top = 384
  end
  object QCxC: TADOQuery
    Connection = DM.ADOSigma
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
      end
      item
        Name = 'mes'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'mov_fechavence, sum(mov_monto-mov_abono) as saldo'
      'from'
      'movimientos'
      'where'
      'emp_codigo = :emp'
      'and year(mov_fechavence) = :ano'
      'and month(mov_fechavence) = :mes'
      'and mov_status = '#39'PEN'#39
      'group by mov_fechavence')
    Left = 264
    Top = 168
    object QCxCmov_fechavence: TDateTimeField
      FieldName = 'mov_fechavence'
    end
    object QCxCsaldo: TBCDField
      FieldName = 'saldo'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
  end
end
