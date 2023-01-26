object frmMovProductoFactura: TfrmMovProductoFactura
  Left = 203
  Top = 217
  ActiveControl = sgfac
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Movimiento de productos por factura'
  ClientHeight = 461
  ClientWidth = 741
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
  object sgfac: TStringGrid
    Left = 0
    Top = 0
    Width = 201
    Height = 461
    Align = alLeft
    ColCount = 3
    DefaultRowHeight = 18
    FixedCols = 0
    RowCount = 2
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goEditing]
    ParentFont = False
    ScrollBars = ssNone
    TabOrder = 0
    OnDrawCell = sgfacDrawCell
    OnKeyPress = sgfacKeyPress
  end
  object BitBtn2: TBitBtn
    Left = 576
    Top = 432
    Width = 75
    Height = 25
    Caption = 'Imprimir'
    TabOrder = 1
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
  object btClose: TBitBtn
    Left = 656
    Top = 432
    Width = 75
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
  object DBGrid1: TDBGrid
    Left = 208
    Top = 0
    Width = 529
    Height = 425
    DataSource = dsProd
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 3
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
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRO_RORIGINAL'
        Title.Alignment = taCenter
        Title.Caption = 'Ref. Original'
        Width = 79
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRO_NOMBRE'
        Title.Caption = 'Nombre del Producto'
        Width = 258
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
        Expanded = False
        FieldName = 'CANTIDAD'
        Title.Alignment = taCenter
        Title.Caption = 'Cantidad'
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 416
    Top = 432
    Width = 75
    Height = 25
    Caption = 'Procesar'
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 496
    Top = 432
    Width = 75
    Height = 25
    Caption = 'Limpiar'
    TabOrder = 5
    OnClick = Button2Click
  end
  object QProd: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <
      item
        Name = 'EMP'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'FORMA'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end
      item
        Name = 'TIPO'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT'
      'PRO_CODIGO, PRO_RORIGINAL, PRO_NOMBRE, '
      'DET_MEDIDA, SUM(DET_CANTIDAD) AS CANTIDAD'
      'FROM'
      'DET_FACTURA'
      'WHERE'
      'EMP_CODIGO = :EMP'
      'AND FAC_FORMA = :FORMA'
      'AND TFA_CODIGO = :TIPO')
    Left = 312
    Top = 88
    object QProdPRO_CODIGO: TIntegerField
      FieldName = 'PRO_CODIGO'
    end
    object QProdPRO_NOMBRE: TIBStringField
      FieldName = 'PRO_NOMBRE'
      Size = 60
    end
    object QProdCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
    end
    object QProdPRO_RORIGINAL: TIBStringField
      FieldName = 'PRO_RORIGINAL'
      Size = 50
    end
    object QProdDET_MEDIDA: TIBStringField
      FieldName = 'DET_MEDIDA'
      Size = 3
    end
  end
  object dsProd: TDataSource
    DataSet = QProd
    Left = 344
    Top = 88
  end
end
