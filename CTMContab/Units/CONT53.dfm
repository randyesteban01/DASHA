object frmCFGBceComparativo: TfrmCFGBceComparativo
  Left = 77
  Top = 130
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Configuraci'#243'n Balance de Comprobacion Comparativo'
  ClientHeight = 350
  ClientWidth = 667
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
  OnActivate = FormActivate
  OnClose = FormClose
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 48
    Height = 13
    Caption = 'Niveles'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 336
    Top = 8
    Width = 52
    Height = 13
    Caption = 'Cuentas'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object GridNiveles: TDBGrid
    Left = 8
    Top = 24
    Width = 321
    Height = 249
    Color = clInfoBk
    DataSource = dsNivel
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
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
        FieldName = 'CAT_NOMBRE'
        Title.Caption = 'Nombre de la Cuenta'
        Width = 295
        Visible = True
      end>
  end
  object BitBtn1: TBitBtn
    Left = 96
    Top = 280
    Width = 113
    Height = 25
    Caption = 'Agregar cuenta '
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object btElimina: TBitBtn
    Left = 216
    Top = 280
    Width = 113
    Height = 25
    Caption = 'Eliminar cuenta '
    TabOrder = 2
    OnClick = btEliminaClick
  end
  object BitBtn3: TBitBtn
    Left = 424
    Top = 280
    Width = 113
    Height = 25
    Caption = 'Agregar cuenta '
    TabOrder = 3
    OnClick = BitBtn3Click
  end
  object BitBtn4: TBitBtn
    Left = 544
    Top = 280
    Width = 113
    Height = 25
    Caption = 'Eliminar cuenta '
    TabOrder = 4
    OnClick = BitBtn4Click
  end
  object DBGrid1: TDBGrid
    Left = 336
    Top = 24
    Width = 321
    Height = 249
    Color = clInfoBk
    DataSource = dsCuentas
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 5
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CAT_NOMBRE'
        Title.Caption = 'Nombre de la Cuenta'
        Width = 295
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 309
    Width = 667
    Height = 41
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 6
    object btClose: TBitBtn
      Left = 584
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Salir'
      TabOrder = 0
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
  object QNivel: TADOQuery
    Connection = DM.ADOSigma
    AfterScroll = QNivelAfterScroll
    DataSource = DM.dsEmpresas
    Parameters = <
      item
        Name = 'EMP_CODIGO'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT'
      'B.BCE_NIVEL, B.CAT_CUENTA, B.EMP_CODIGO, C.CAT_NOMBRE'
      'FROM'
      'CONTCFG_BCECOMP_NIVEL B, CONTCATALOGO C'
      'WHERE'
      'B.EMP_CODIGO = C.EMP_CODIGO'
      'AND B.CAT_CUENTA = C.CAT_CUENTA'
      'AND B.EMP_CODIGO = :EMP_CODIGO'
      'ORDER BY'
      'B.CAT_CUENTA')
    Left = 144
    Top = 80
    object QNivelBCE_NIVEL: TIntegerField
      FieldName = 'BCE_NIVEL'
      Origin = 'CONTCFG_BCECOMP_NIVEL.BCE_NIVEL'
    end
    object QNivelCAT_CUENTA: TIBStringField
      FieldName = 'CAT_CUENTA'
      Origin = 'CONTCFG_BCECOMP_NIVEL.CAT_CUENTA'
      Required = True
      Size = 15
    end
    object QNivelEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'CONTCFG_BCECOMP_NIVEL.EMP_CODIGO'
      Required = True
    end
    object QNivelCAT_NOMBRE: TIBStringField
      FieldName = 'CAT_NOMBRE'
      Origin = 'CONTCATALOGO.CAT_NOMBRE'
      Size = 60
    end
  end
  object dsNivel: TDataSource
    DataSet = QNivel
    Left = 176
    Top = 80
  end
  object QCuentas: TADOQuery
    Connection = DM.ADOSigma
    DataSource = dsNivel
    Parameters = <
      item
        Name = 'EMP_CODIGO'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'BCE_NIVEL'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT'
      'B.BCE_NIVEL, B.CAT_CUENTA, B.EMP_CODIGO, C.CAT_NOMBRE'
      'FROM'
      'CONTCFG_BCECOMP_CTAS B, CONTCATALOGO C'
      'WHERE'
      'B.EMP_CODIGO = C.EMP_CODIGO'
      'AND B.CAT_CUENTA = C.CAT_CUENTA'
      'AND B.EMP_CODIGO = :EMP_CODIGO'
      'AND B.BCE_NIVEL = :BCE_NIVEL'
      'ORDER BY'
      'B.CAT_CUENTA')
    Left = 440
    Top = 72
    object QCuentasBCE_NIVEL: TIntegerField
      FieldName = 'BCE_NIVEL'
      Origin = 'CONTCFG_BCECOMP_CTAS.BCE_NIVEL'
    end
    object QCuentasCAT_CUENTA: TIBStringField
      FieldName = 'CAT_CUENTA'
      Origin = 'CONTCFG_BCECOMP_CTAS.CAT_CUENTA'
      Required = True
      Size = 15
    end
    object QCuentasEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'CONTCFG_BCECOMP_CTAS.EMP_CODIGO'
      Required = True
    end
    object QCuentasCAT_NOMBRE: TIBStringField
      FieldName = 'CAT_NOMBRE'
      Origin = 'CONTCATALOGO.CAT_NOMBRE'
      Size = 60
    end
  end
  object dsCuentas: TDataSource
    DataSet = QCuentas
    Left = 472
    Top = 72
  end
  object Search: TQrySearchDlgADO
    Title = 'Listado de Familias'
    ResultField = 'tfa_codigo'
    Query.Strings = (
      'select caj_nombre, caj_codigo'
      'from cajeros')
    AliasFields.Strings = (
      'Nombre'
      'C'#243'digo')
    AliasName = DM.ADOSigma
    Left = 448
    Top = 144
  end
end
