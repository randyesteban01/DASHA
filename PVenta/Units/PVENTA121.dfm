object frmConsCombo: TfrmConsCombo
  Left = 288
  Top = 146
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Combo de producto'
  ClientHeight = 326
  ClientWidth = 317
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid8: TDBGrid
    Left = 0
    Top = 0
    Width = 317
    Height = 289
    Align = alTop
    Color = clInfoBk
    Ctl3D = False
    DataSource = dsCombo
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'PRO_NOMBRE'
        Title.Caption = 'Nombre del producto'
        Width = 192
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COM_CANTIDAD'
        Title.Alignment = taCenter
        Title.Caption = 'Cant.'
        Width = 33
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COM_PRECIO'
        Title.Alignment = taCenter
        Title.Caption = 'Precio'
        Visible = True
      end>
  end
  object btClose: TBitBtn
    Left = 120
    Top = 296
    Width = 75
    Height = 25
    Caption = '&Salir'
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
  object QCombo: TADOQuery
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
        Name = 'PRO'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT'
      'P.PRO_NOMBRE, C.COM_CANTIDAD, C.COM_PRECIO,'
      'C.COM_PRODUCTO, C.COM_SECUENCIA, C.EMP_CODIGO, '
      'C.PRO_CODIGO'
      'FROM'
      'PRODUCTOS P, PRODCOMBO C'
      'WHERE'
      'P.EMP_CODIGO = C.EMP_CODIGO'
      'AND P.PRO_CODIGO = C.COM_PRODUCTO'
      'AND C.EMP_CODIGO = :EMP'
      'AND C.PRO_CODIGO = :PRO'
      'ORDER BY'
      'C.COM_SECUENCIA')
    Left = 152
    Top = 104
    object QComboPRO_NOMBRE: TIBStringField
      FieldName = 'PRO_NOMBRE'
      Origin = 'PRODUCTOS.PRO_NOMBRE'
      Size = 60
    end
    object QComboCOM_CANTIDAD: TFloatField
      FieldName = 'COM_CANTIDAD'
      Origin = 'PRODCOMBO.COM_CANTIDAD'
    end
    object QComboCOM_PRECIO: TFloatField
      FieldName = 'COM_PRECIO'
      Origin = 'PRODCOMBO.COM_PRECIO'
      currency = True
    end
    object QComboCOM_PRODUCTO: TIntegerField
      FieldName = 'COM_PRODUCTO'
      Origin = 'PRODCOMBO.COM_PRODUCTO'
    end
    object QComboCOM_SECUENCIA: TIntegerField
      FieldName = 'COM_SECUENCIA'
      Origin = 'PRODCOMBO.COM_SECUENCIA'
      Required = True
    end
    object QComboEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'PRODCOMBO.EMP_CODIGO'
      Required = True
    end
    object QComboPRO_CODIGO: TIntegerField
      FieldName = 'PRO_CODIGO'
      Origin = 'PRODCOMBO.PRO_CODIGO'
      Required = True
    end
  end
  object dsCombo: TDataSource
    DataSet = QCombo
    Left = 184
    Top = 104
  end
end
