object frmDevDinero: TfrmDevDinero
  Left = 294
  Top = 419
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Devolver dinero al cliente'
  ClientHeight = 191
  ClientWidth = 397
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 14
  object Label1: TLabel
    Left = 9
    Top = 155
    Width = 108
    Height = 14
    Caption = 'Monto del Desembolso'
  end
  object GridForma: TDBGrid
    Left = 0
    Top = 0
    Width = 397
    Height = 148
    Align = alTop
    Ctl3D = False
    DataSource = dsFormaPago
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
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
  object DBEdit1: TDBEdit
    Left = 138
    Top = 155
    Width = 96
    Height = 23
    BevelKind = bkFlat
    BorderStyle = bsNone
    Color = clInfoBk
    DataField = 'DEV_TOTAL'
    DataSource = frmDevolucion.dsDevolucion
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object btClose: TBitBtn
    Left = 311
    Top = 156
    Width = 81
    Height = 27
    Caption = '&Salir'
    Default = True
    TabOrder = 2
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
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select top 1 EMP_CODIGO, FOR_DESCRIPCION, FOR_MONTO, '
      'FPA_CODIGO, DES_NUMERO, suc_codigo from DESEMFORMAPAGO'
      'where emp_codigo = :emp'
      'and des_numero = :numero'
      'and suc_codigo = :suc'
      'ORDER BY FPA_CODIGO')
    Left = 208
    Top = 40
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
    object QFormasPagoEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'DESEMFORMAPAGO.EMP_CODIGO'
    end
    object QFormasPagoFOR_DESCRIPCION: TIBStringField
      FieldName = 'FOR_DESCRIPCION'
      Origin = 'DESEMFORMAPAGO.FOR_DESCRIPCION'
      Size = 40
    end
    object QFormasPagoFOR_MONTO: TFloatField
      FieldName = 'FOR_MONTO'
      Origin = 'DESEMFORMAPAGO.FOR_MONTO'
      currency = True
    end
    object QFormasPagoFPA_CODIGO: TIntegerField
      FieldName = 'FPA_CODIGO'
      Origin = 'DESEMFORMAPAGO.FPA_CODIGO'
      Required = True
    end
    object QFormasPagoDES_NUMERO: TIntegerField
      FieldName = 'DES_NUMERO'
      Origin = 'DESEMFORMAPAGO.DES_NUMERO'
    end
    object QFormasPagosuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
  end
  object dsFormaPago: TDataSource
    DataSet = QFormasPago
    Left = 288
    Top = 56
  end
  object QForma: TADOQuery
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
      'select  FPA_CODIGO, FPA_NOMBRE from FORMASPAGO'
      'where emp_codigo = :emp_codigo'
      'order by FPA_NOMBRE')
    Left = 72
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
    Left = 128
    Top = 96
  end
  object Query1: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <>
    Left = 24
    Top = 24
  end
end
