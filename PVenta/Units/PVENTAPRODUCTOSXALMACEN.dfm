object frmProductosXAlmacen: TfrmProductosXAlmacen
  Left = 365
  Top = 181
  BorderStyle = bsDialog
  Caption = 'Cantidad de Productos x Almacen'
  ClientHeight = 336
  ClientWidth = 451
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 451
    Height = 84
    Align = alTop
    TabOrder = 0
    object lblDescripcion: TLabel
      Left = 8
      Top = 3
      Width = 6
      Height = 20
      Caption = '.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBNavigator1: TDBNavigator
      Left = 5
      Top = 30
      Width = 224
      Height = 50
      DataSource = dsExist
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 0
    end
    object btClose: TBitBtn
      Left = 366
      Top = 31
      Width = 81
      Height = 48
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
  end
  object Panel2: TPanel
    Left = 0
    Top = 84
    Width = 451
    Height = 252
    Align = alClient
    TabOrder = 1
    object DBGrid6: TDBGrid
      Left = 1
      Top = 1
      Width = 449
      Height = 250
      Align = alClient
      Color = clInfoBk
      Ctl3D = False
      DataSource = dsExist
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgEditing, dgTitles, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
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
          FieldName = 'ALM_NOMBRE'
          ReadOnly = True
          Title.Caption = 'Almac'#233'n'
          Width = 126
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EXI_CANTIDAD'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Exist. Und'
          Width = 72
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EXI_EMPAQUE'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Exist. Emp.'
          Width = 74
          Visible = True
        end>
    end
  end
  object QExist: TADOQuery
    Connection = DM.ADOSigma
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
        Name = 'pro_codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      
        'a.alm_nombre, e.exi_cantidad, e.exi_fisico, e.exi_empaque, e.exi' +
        '_minimo,'
      'e.exi_maximo'
      'from'
      'almacen a, existencias e'
      'where'
      'a.emp_codigo = e.emp_codigo'
      'and a.alm_codigo = e.alm_codigo'
      'and e.emp_codigo = :emp_codigo'
      'and e.pro_codigo = :pro_codigo'
      'order by e.alm_codigo')
    Left = 168
    Top = 264
    object QExistALM_NOMBRE: TIBStringField
      FieldName = 'ALM_NOMBRE'
      Origin = 'ALMACEN.ALM_NOMBRE'
      Size = 60
    end
    object QExistEXI_CANTIDAD: TFloatField
      FieldName = 'EXI_CANTIDAD'
      Origin = 'EXISTENCIAS.EXI_CANTIDAD'
      DisplayFormat = '###,###.00'
    end
    object QExistEXI_FISICO: TFloatField
      FieldName = 'EXI_FISICO'
      Origin = 'EXISTENCIAS.EXI_FISICO'
      DisplayFormat = '###,###.00'
    end
    object QExistEXI_EMPAQUE: TFloatField
      FieldName = 'EXI_EMPAQUE'
      Origin = 'EXISTENCIAS.EXI_EMPAQUE'
      DisplayFormat = '###,###.00'
    end
    object QExistexi_minimo: TBCDField
      FieldName = 'exi_minimo'
      Precision = 15
      Size = 2
    end
    object QExistexi_maximo: TBCDField
      FieldName = 'exi_maximo'
      Precision = 15
      Size = 2
    end
  end
  object dsExist: TDataSource
    DataSet = QExist
    Left = 200
    Top = 264
  end
end
