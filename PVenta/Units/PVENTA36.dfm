object frmNota: TfrmNota
  Left = 353
  Top = 276
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Nota'
  ClientHeight = 413
  ClientWidth = 689
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object DBMemo1: TDBMemo
    Left = 0
    Top = 0
    Width = 689
    Height = 193
    Align = alTop
    TabOrder = 0
  end
  object DBCtrlGrid1: TDBCtrlGrid
    Left = 8
    Top = 200
    Width = 338
    Height = 183
    DataSource = dsCotizacion
    PanelHeight = 61
    PanelWidth = 321
    TabOrder = 1
    object DBMemo2: TDBMemo
      Left = 0
      Top = 0
      Width = 321
      Height = 61
      Align = alClient
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'det_nota'
      DataSource = dsCotizacion
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 0
    end
  end
  object DBCtrlGrid2: TDBCtrlGrid
    Left = 348
    Top = 200
    Width = 338
    Height = 183
    DataSource = dsFacturas
    PanelHeight = 61
    PanelWidth = 321
    TabOrder = 2
    object DBMemo3: TDBMemo
      Left = 0
      Top = 0
      Width = 321
      Height = 61
      Align = alClient
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'det_nota'
      DataSource = dsFacturas
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 0
    end
  end
  object btClose: TBitBtn
    Left = 600
    Top = 386
    Width = 73
    Height = 25
    Caption = '&Salir'
    TabOrder = 3
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
  object QCotizaciones: TADOQuery
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
      end
      item
        Name = 'pro'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'top 30 d.det_nota'
      'from'
      'cotizacion c, det_cotizacion d'
      'where'
      'c.emp_codigo = d.emp_codigo'
      'and c.cot_numero = d.cot_numero'
      'and c.emp_codigo = :emp_codigo'
      'and d.pro_codigo = :pro'
      'and d.det_nota is not null'
      'order by'
      'c.cot_fecha desc')
    Left = 256
    Top = 112
    object QCotizacionesdet_nota: TMemoField
      FieldName = 'det_nota'
      BlobType = ftMemo
    end
  end
  object dsCotizacion: TDataSource
    DataSet = QCotizaciones
    Left = 288
    Top = 112
  end
  object QFacturas: TADOQuery
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
      end
      item
        Name = 'pro'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'top 30 d.det_nota'
      'from'
      'facturas f, det_factura d'
      'where'
      'f.emp_codigo = d.emp_codigo'
      'and f.suc_codigo = d.suc_codigo'
      'and f.fac_forma = d.fac_forma'
      'and f.tfa_codigo = d.tfa_codigo'
      'and f.fac_numero = d.fac_numero'
      'and f.emp_codigo = :emp_codigo'
      'and d.pro_codigo = :pro'
      'and d.det_nota is not null'
      'order by'
      'f.fac_fecha desc')
    Left = 256
    Top = 144
    object QFacturasdet_nota: TMemoField
      FieldName = 'det_nota'
      BlobType = ftMemo
    end
  end
  object dsFacturas: TDataSource
    DataSet = QFacturas
    Left = 288
    Top = 144
  end
end
