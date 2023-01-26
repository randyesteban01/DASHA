object frmCuadreDesgloce: TfrmCuadreDesgloce
  Left = 386
  Top = 180
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Desgloce de efectivo'
  ClientHeight = 320
  ClientWidth = 533
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
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 224
    Width = 32
    Height = 13
    Caption = 'Fecha '
  end
  object Label2: TLabel
    Left = 8
    Top = 248
    Width = 32
    Height = 13
    Caption = 'Cajero'
  end
  object Label3: TLabel
    Left = 8
    Top = 272
    Width = 22
    Height = 13
    Caption = 'Caja'
  end
  object sgMontos: TStringGrid
    Left = 8
    Top = 8
    Width = 225
    Height = 209
    ColCount = 3
    Ctl3D = True
    DefaultRowHeight = 16
    RowCount = 12
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    ParentCtl3D = False
    TabOrder = 0
    OnDrawCell = sgMontosDrawCell
    OnKeyPress = sgMontosKeyPress
    OnSelectCell = sgMontosSelectCell
    OnSetEditText = sgMontosSetEditText
    ColWidths = (
      64
      69
      81)
  end
  object sgGeneral: TStringGrid
    Left = 240
    Top = 8
    Width = 288
    Height = 209
    ColCount = 3
    Ctl3D = True
    DefaultColWidth = 120
    DefaultRowHeight = 16
    RowCount = 2
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    ParentCtl3D = False
    TabOrder = 1
    OnDrawCell = sgGeneralDrawCell
    OnKeyPress = sgGeneralKeyPress
    OnSelectCell = sgGeneralSelectCell
    ColWidths = (
      120
      79
      78)
  end
  object btClose: TBitBtn
    Left = 448
    Top = 288
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
  object BitBtn2: TBitBtn
    Left = 288
    Top = 288
    Width = 75
    Height = 25
    Caption = 'Cuadrar'
    TabOrder = 3
    OnClick = BitBtn2Click
  end
  object ckDetalle: TCheckBox
    Left = 48
    Top = 296
    Width = 169
    Height = 17
    Caption = 'Imprimir cuadre detallado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    Visible = False
  end
  object edfecha: TDateTimePicker
    Left = 48
    Top = 224
    Width = 145
    Height = 21
    Date = 39222.000000000000000000
    Time = 39222.000000000000000000
    TabOrder = 5
  end
  object cbCajeros: TDBLookupComboBox
    Left = 48
    Top = 248
    Width = 145
    Height = 21
    KeyField = 'caj_codigo'
    ListField = 'caj_nombre'
    ListSource = dsCajeros
    TabOrder = 6
  end
  object cbCajas: TDBLookupComboBox
    Left = 48
    Top = 272
    Width = 145
    Height = 21
    KeyField = 'caj_codigo'
    ListField = 'caj_nombre'
    ListSource = dsCajas
    TabOrder = 7
  end
  object BitBtn1: TBitBtn
    Left = 368
    Top = 288
    Width = 75
    Height = 25
    Caption = 'Imprimir'
    TabOrder = 8
    OnClick = BitBtn1Click
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
  object QCajas: TADOQuery
    Connection = DM.ADOSigma
    DataSource = DM.dsEmpresas
    Parameters = <
      item
        Name = 'emp_codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'caj_codigo, caj_nombre'
      'from'
      'cajas'
      'where'
      'emp_codigo = :emp_codigo'
      'order by'
      'caj_nombre')
    Left = 312
    Top = 128
    object QCajascaj_codigo: TIntegerField
      FieldName = 'caj_codigo'
    end
    object QCajascaj_nombre: TStringField
      FieldName = 'caj_nombre'
      Size = 60
    end
  end
  object dsCajas: TDataSource
    DataSet = QCajas
    Left = 344
    Top = 128
  end
  object QCajeros: TADOQuery
    Connection = DM.ADOSigma
    DataSource = DM.dsEmpresas
    Parameters = <
      item
        Name = 'emp_codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'caj_codigo, caj_nombre'
      'from'
      'cajeros'
      'where'
      'emp_codigo = :emp_codigo'
      'order by'
      'caj_nombre')
    Left = 312
    Top = 160
    object QCajeroscaj_codigo: TIntegerField
      FieldName = 'caj_codigo'
    end
    object QCajeroscaj_nombre: TStringField
      FieldName = 'caj_nombre'
      Size = 60
    end
  end
  object dsCajeros: TDataSource
    DataSet = QCajeros
    Left = 344
    Top = 160
  end
end
