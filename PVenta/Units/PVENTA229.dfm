object frmVerPagos: TfrmVerPagos
  Left = 481
  Top = 396
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta de Pagos'
  ClientHeight = 270
  ClientWidth = 617
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    617
    270)
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 617
    Height = 233
    Align = alTop
    DataSource = dsPagos
    Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Tipo'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Descripcion'
        Width = 202
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Numero'
        Title.Alignment = taCenter
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Fecha'
        Title.Alignment = taCenter
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Monto'
        Title.Alignment = taCenter
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Sigla'
        Title.Alignment = taCenter
        Title.Caption = 'Moneda'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Tasa'
        Title.Alignment = taCenter
        Width = 39
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Concepto1'
        Width = 258
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Concepto2'
        Width = 257
        Visible = True
      end>
  end
  object btClose: TBitBtn
    Left = 534
    Top = 240
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
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
  object QPagosCxP: TADOQuery
    Connection = DM.ADOSigma
    OnCalcFields = QPagosCxPCalcFields
    Parameters = <
      item
        Name = 'emp'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'suc'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'sup'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'fac'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select'
      '*'
      'from'
      
        'contpr_detalle_pago_cxp (:emp, :suc, :sup, :fac, dateadd(year,20' +
        ',GETDATE()))'
      'order'
      'by Tipo, Fecha')
    Left = 224
    Top = 96
    object QPagosCxPDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 100
    end
    object QPagosCxPNumero: TIntegerField
      FieldName = 'Numero'
    end
    object QPagosCxPFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object QPagosCxPPago: TBCDField
      FieldName = 'Pago'
      currency = True
      Precision = 18
      Size = 2
    end
    object QPagosCxPTipo: TStringField
      FieldName = 'Tipo'
      Size = 3
    end
    object QPagosCxPConcepto1: TStringField
      FieldName = 'Concepto1'
      Size = 100
    end
    object QPagosCxPConcepto2: TStringField
      FieldName = 'Concepto2'
      Size = 100
    end
    object QPagosCxPTasa: TBCDField
      FieldName = 'Tasa'
      Precision = 10
      Size = 2
    end
    object QPagosCxPSigla: TStringField
      FieldName = 'Sigla'
      Size = 5
    end
    object QPagosCxPMonto: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Monto'
      currency = True
      Calculated = True
    end
  end
  object dsPagos: TDataSource
    DataSet = QPagosCxP
    Left = 256
    Top = 96
  end
end
