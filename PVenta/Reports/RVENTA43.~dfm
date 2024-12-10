object frmAbono: TfrmAbono
  Left = 251
  Top = 302
  ActiveControl = GridForma
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Abono a Factura'
  ClientHeight = 176
  ClientWidth = 372
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 144
    Width = 81
    Height = 13
    Caption = 'Monto del Abono'
  end
  object DBEdit1: TDBEdit
    Left = 96
    Top = 144
    Width = 89
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    Color = clInfoBk
    DataField = 'FAC_ABONO'
    DataSource = frmFactura.dsFactura
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object btClose: TBitBtn
    Left = 289
    Top = 148
    Width = 75
    Height = 25
    Caption = '&Salir'
    Default = True
    TabOrder = 1
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
  object GridForma: TDBGrid
    Left = 0
    Top = 0
    Width = 372
    Height = 137
    Align = alTop
    Ctl3D = False
    DataSource = dsFormaPago
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnColEnter = GridFormaColEnter
    OnEnter = GridFormaEnter
    OnKeyDown = GridFormaKeyDown
    Columns = <
      item
        Color = clInfoBk
        Expanded = False
        FieldName = 'Forma'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Forma pago'
        Width = 79
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FOR_MONTO'
        Title.Alignment = taCenter
        Title.Caption = 'Monto'
        Width = 77
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FOR_DESCRIPCION'
        Title.Caption = 'Descripci'#243'n'
        Width = 191
        Visible = True
      end>
  end
  object QFormasPago: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    AfterInsert = QFormasPagoAfterInsert
    AfterPost = QFormasPagoAfterPost
    BeforeDelete = QFormasPagoBeforeDelete
    OnNewRecord = QFormasPagoNewRecord
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
        Name = 'numero'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'suc'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select EMP_CODIGO, FOR_DESCRIPCION, FOR_MONTO, '
      'FPA_CODIGO, REC_NUMERO, SUC_CODIGO from RECFORMAPAGO'
      'where emp_codigo = :emp'
      'and rec_numero = :numero'
      'and suc_codigo = :suc'
      'order by fpa_codigo')
    Left = 152
    Top = 64
    object QFormasPagoEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'RECFORMAPAGO.EMP_CODIGO'
    end
    object QFormasPagoFOR_DESCRIPCION: TIBStringField
      FieldName = 'FOR_DESCRIPCION'
      Origin = 'RECFORMAPAGO.FOR_DESCRIPCION'
      Size = 40
    end
    object QFormasPagoFOR_MONTO: TFloatField
      FieldName = 'FOR_MONTO'
      Origin = 'RECFORMAPAGO.FOR_MONTO'
      currency = True
    end
    object QFormasPagoFPA_CODIGO: TIntegerField
      FieldName = 'FPA_CODIGO'
      Origin = 'RECFORMAPAGO.FPA_CODIGO'
    end
    object QFormasPagoREC_NUMERO: TIntegerField
      FieldName = 'REC_NUMERO'
      Origin = 'RECFORMAPAGO.REC_NUMERO'
    end
    object QFormasPagoForma: TStringField
      FieldKind = fkLookup
      FieldName = 'Forma'
      LookupDataSet = QForma
      LookupKeyFields = 'FPA_CODIGO'
      LookupResultField = 'FPA_NOMBRE'
      KeyFields = 'FPA_CODIGO'
      Size = 35
      Lookup = True
    end
    object QFormasPagoSUC_CODIGO: TIntegerField
      FieldName = 'SUC_CODIGO'
    end
  end
  object dsFormaPago: TDataSource
    DataSet = QFormasPago
    Left = 184
    Top = 64
  end
  object QForma: TADOQuery
    Active = True
    Connection = DM.ADOSigma
    CursorType = ctStatic
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
      'select FPA_CODIGO, FPA_NOMBRE from FORMASPAGO'
      'where emp_codigo = :emp_codigo'
      'order by FPA_NOMBRE')
    Left = 152
    Top = 96
    object QFormaFPA_CODIGO: TIntegerField
      FieldName = 'FPA_CODIGO'
      Origin = 'FORMASPAGO.FPA_CODIGO'
      Required = True
    end
    object QFormaFPA_NOMBRE: TIBStringField
      FieldName = 'FPA_NOMBRE'
      Origin = 'FORMASPAGO.FPA_NOMBRE'
      Size = 60
    end
  end
  object dsForma: TDataSource
    DataSet = QForma
    Left = 184
    Top = 96
  end
  object Query1: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <>
    Left = 152
    Top = 32
  end
  object QDetalle: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
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
        Name = 'NUM'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'suc'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT'
      'CAT_CUENTA, CAT_NOMBRE, REC_NUMERO, DET_MONTO, '
      'DET_ORIGEN, DET_SECUENCIA, EMP_CODIGO, SUC_CODIGO'
      'FROM'
      'CONTDET_RECIBOS'
      'WHERE '
      'EMP_CODIGO = :EMP'
      'AND REC_NUMERO = :NUM'
      'and suc_codigo = :suc'
      'ORDER BY'
      'DET_SECUENCIA')
    Left = 152
    Top = 128
    object QDetalleCAT_CUENTA: TIBStringField
      FieldName = 'CAT_CUENTA'
      Origin = 'CONTDET_RECIBOS.CAT_CUENTA'
      OnChange = QDetalleCAT_CUENTAChange
      Size = 15
    end
    object QDetalleCAT_NOMBRE: TIBStringField
      FieldName = 'CAT_NOMBRE'
      Origin = 'CONTDET_RECIBOS.CAT_NOMBRE'
      Size = 60
    end
    object QDetalleREC_NUMERO: TIntegerField
      FieldName = 'REC_NUMERO'
      Origin = 'CONTDET_RECIBOS.REC_NUMERO'
    end
    object QDetalleDET_MONTO: TFloatField
      FieldName = 'DET_MONTO'
      Origin = 'CONTDET_RECIBOS.DET_MONTO'
      currency = True
    end
    object QDetalleDET_ORIGEN: TIBStringField
      FieldName = 'DET_ORIGEN'
      Origin = 'CONTDET_RECIBOS.DET_ORIGEN'
      Size = 7
    end
    object QDetalleDET_SECUENCIA: TIntegerField
      FieldName = 'DET_SECUENCIA'
      Origin = 'CONTDET_RECIBOS.DET_SECUENCIA'
    end
    object QDetalleEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'CONTDET_RECIBOS.EMP_CODIGO'
    end
    object QDetalleSUC_CODIGO: TIntegerField
      FieldName = 'SUC_CODIGO'
    end
  end
  object dsDetalle: TDataSource
    DataSet = QDetalle
    Left = 184
    Top = 128
  end
end
