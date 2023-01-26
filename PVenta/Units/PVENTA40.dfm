object frmOtrosFac: TfrmOtrosFac
  Left = 126
  Top = 183
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Otros Impuestos'
  ClientHeight = 221
  ClientWidth = 649
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object GridCargos: TDBGrid
    Left = 0
    Top = 0
    Width = 393
    Height = 185
    DataSource = dsCargosFac
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnColEnter = GridCargosColEnter
    OnEnter = GridCargosEnter
    OnKeyDown = GridCargosKeyDown
    Columns = <
      item
        Color = clInfoBk
        Expanded = False
        FieldName = 'CAR_CODIGO'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Width = 44
        Visible = True
      end
      item
        Color = clInfoBk
        Expanded = False
        FieldName = 'Cargo'
        ReadOnly = True
        Title.Caption = 'Descripcion del cargo'
        Width = 233
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CAR_MONTO'
        Title.Alignment = taCenter
        Title.Caption = 'Monto'
        Width = 84
        Visible = True
      end>
  end
  object Lista: TListBox
    Left = 399
    Top = 0
    Width = 250
    Height = 185
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemHeight = 13
    ParentFont = False
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 464
    Top = 192
    Width = 97
    Height = 25
    Caption = '<< Agregar cargo'
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 360
    Top = 192
    Width = 99
    Height = 25
    Caption = 'Eliminar cargo >>'
    TabOrder = 3
    OnClick = BitBtn2Click
  end
  object btClose: TBitBtn
    Left = 566
    Top = 192
    Width = 75
    Height = 25
    Caption = '&Salir'
    TabOrder = 4
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
  object dsCargosFac: TDataSource
    DataSet = QCargosFAC
    Left = 208
    Top = 48
  end
  object QCargosFAC: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    OnNewRecord = QCargosFACNewRecord
    Parameters = <
      item
        Name = 'emp'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'forma'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'numero'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'tipo'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select CAR_CODIGO, CAR_MONTO, EMP_CODIGO, FAC_FORMA, '
      'FAC_NUMERO, TFA_CODIGO from FACOTROSCARGOS'
      'where emp_codigo = :emp'
      'and fac_forma = :forma'
      'and fac_numero = :numero'
      'and tfa_codigo = :tipo')
    Left = 176
    Top = 48
    object QCargosFACCAR_CODIGO: TIntegerField
      FieldName = 'CAR_CODIGO'
      Origin = 'FACOTROSCARGOS.CAR_CODIGO'
    end
    object QCargosFACCAR_MONTO: TFloatField
      FieldName = 'CAR_MONTO'
      Origin = 'FACOTROSCARGOS.CAR_MONTO'
      currency = True
    end
    object QCargosFACEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'FACOTROSCARGOS.EMP_CODIGO'
    end
    object QCargosFACFAC_FORMA: TIBStringField
      FieldName = 'FAC_FORMA'
      Origin = 'FACOTROSCARGOS.FAC_FORMA'
      Size = 1
    end
    object QCargosFACFAC_NUMERO: TIntegerField
      FieldName = 'FAC_NUMERO'
      Origin = 'FACOTROSCARGOS.FAC_NUMERO'
    end
    object QCargosFACTFA_CODIGO: TIntegerField
      FieldName = 'TFA_CODIGO'
      Origin = 'FACOTROSCARGOS.TFA_CODIGO'
    end
    object QCargosFACCargo: TStringField
      FieldKind = fkLookup
      FieldName = 'Cargo'
      LookupDataSet = QCargos
      LookupKeyFields = 'CAR_CODIGO'
      LookupResultField = 'CAR_NOMBRE'
      KeyFields = 'CAR_CODIGO'
      Size = 30
      Lookup = True
    end
  end
  object QCargos: TADOQuery
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
      'select CAR_CODIGO, CAR_MONTO, CAR_NOMBRE from CARGOS'
      'where emp_codigo = :emp_codigo'
      'order by car_nombre')
    Left = 176
    Top = 80
    object QCargosCAR_CODIGO: TIntegerField
      FieldName = 'CAR_CODIGO'
      Origin = 'CARGOS.CAR_CODIGO'
      Required = True
    end
    object QCargosCAR_MONTO: TFloatField
      FieldName = 'CAR_MONTO'
      Origin = 'CARGOS.CAR_MONTO'
      currency = True
    end
    object QCargosCAR_NOMBRE: TIBStringField
      FieldName = 'CAR_NOMBRE'
      Origin = 'CARGOS.CAR_NOMBRE'
      Size = 60
    end
  end
  object dsCargos: TDataSource
    DataSet = QCargos
    Left = 208
    Top = 80
  end
end
