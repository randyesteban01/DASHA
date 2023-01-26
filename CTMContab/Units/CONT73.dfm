object frmCuentasAcumulan: TfrmCuentasAcumulan
  Left = 745
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cuentas que acumulan'
  ClientHeight = 369
  ClientWidth = 389
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  DesignSize = (
    389
    369)
  PixelsPerInch = 96
  TextHeight = 13
  object btClose: TBitBtn
    Left = 307
    Top = 336
    Width = 75
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
    Left = 211
    Top = 336
    Width = 91
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Seleccionar'
    Default = True
    ModalResult = 1
    TabOrder = 1
    OnClick = btRefreshClick
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00
      FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00FF000000
      000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FFFFFF00FF00
      FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FFFFFF00FFFF
      FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF0000000000FF00FF00FFFFFF00FFFFFF00000000000000
      000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF000000000000000000FF00FF00FFFFFF00FFFFFF0000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
      0000FFFFFF00FF00FF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
      0000FFFFFF00FFFFFF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF0000000000FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 389
    Height = 329
    Align = alTop
    Color = clInfoBk
    Ctl3D = False
    DataSource = dsCuentas
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'cat_nombre'
        Title.Caption = 'Nombre de la Cuenta'
        Width = 276
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Balance'
        Title.Alignment = taCenter
        Width = 89
        Visible = True
      end>
  end
  object QCuentas: TADOQuery
    Connection = DM.ADOSigma
    Filtered = True
    OnFilterRecord = QCuentasFilterRecord
    Parameters = <
      item
        Name = 'mes'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'ano'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'emp'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'cta'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'd.cuenta_sumar, c.cat_nombre, case :mes'
      'when 1 then sum(isnull(b.bal_ene,0))'
      'when 2 then sum(isnull(b.bal_feb,0))'
      'when 3 then sum(isnull(b.bal_mar,0))'
      'when 4 then sum(isnull(b.bal_abr,0))'
      'when 5 then sum(isnull(b.bal_may,0))'
      'when 6 then sum(isnull(b.bal_jun,0))'
      'when 7 then sum(isnull(b.bal_jul,0))'
      'when 8 then sum(isnull(b.bal_ago,0))'
      'when 9 then sum(isnull(b.bal_sep,0))'
      'when 10 then sum(isnull(b.bal_oct,0))'
      'when 11 then sum(isnull(b.bal_nov,0))'
      'when 12 then sum(isnull(b.bal_dic,0)) end as Balance'
      'from'
      'ContConfig_Situacion_Detalle d, contcatalogo c, contbalances b'
      'where'
      'd.emp_codigo = c.emp_codigo'
      'and d.cuenta_sumar = c.cat_cuenta'
      'and d.emp_codigo = b.emp_codigo'
      'and d.cuenta_sumar = b.cat_cuenta'
      'and b.bal_ano = :ano'
      'and d.emp_codigo = :emp'
      'and d.cuenta = :cta'
      'group by d.cuenta_sumar, c.cat_nombre'
      'order by'
      'd.cuenta_sumar')
    Left = 248
    Top = 112
    object QCuentascuenta_sumar: TStringField
      FieldName = 'cuenta_sumar'
      Size = 15
    end
    object QCuentascat_nombre: TStringField
      FieldName = 'cat_nombre'
      Size = 60
    end
    object QCuentasBalance: TBCDField
      FieldName = 'Balance'
      ReadOnly = True
      currency = True
      Precision = 32
      Size = 2
    end
  end
  object dsCuentas: TDataSource
    DataSet = QCuentas
    Left = 280
    Top = 112
  end
end
