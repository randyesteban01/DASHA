object frmConfigCK: TfrmConfigCK
  Left = 422
  Top = 115
  ActiveControl = sgConfig
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Configurar Impresion de Cheque'
  ClientHeight = 414
  ClientWidth = 613
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
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object Label14: TLabel
    Left = 10
    Top = 8
    Width = 40
    Height = 13
    Caption = 'Sucursal'
  end
  object DBGrid1: TDBGrid
    Left = 5
    Top = 32
    Width = 276
    Height = 345
    DataSource = dsBancos
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
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
        FieldName = 'BAN_NOMBRE'
        Width = 250
        Visible = True
      end>
  end
  object sgConfig: TStringGrid
    Left = 288
    Top = 16
    Width = 321
    Height = 393
    ColCount = 3
    DefaultColWidth = 90
    DefaultRowHeight = 15
    FixedCols = 0
    RowCount = 23
    FixedRows = 0
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goEditing]
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 1
    OnDrawCell = sgConfigDrawCell
    OnEnter = sgConfigEnter
    OnSelectCell = sgConfigSelectCell
    OnSetEditText = sgConfigSetEditText
    ColWidths = (
      191
      54
      51)
  end
  object BitBtn1: TBitBtn
    Left = 8
    Top = 384
    Width = 113
    Height = 25
    Caption = 'Valores predefinidos'
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object btClose: TBitBtn
    Left = 208
    Top = 384
    Width = 75
    Height = 25
    Caption = '&Salir'
    TabOrder = 3
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
  object btPost: TBitBtn
    Left = 128
    Top = 384
    Width = 75
    Height = 25
    Caption = '&Grabar'
    TabOrder = 4
    OnClick = btPostClick
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000010000000000000000000
      BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
      7777770000000000007770330770000330777033077000033077703307700003
      30777033000000033077703333333333307770330000000330777030FFFFFFF0
      30777030FCCCCFF030777030FFCCCFF030777037FCCCCFF000777077CCCFCFF0
      8077777CCC777700007777CCC77777777777777C777777777777}
  end
  object StaticText1: TStaticText
    Left = 482
    Top = 0
    Width = 55
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = 'Columna'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object StaticText2: TStaticText
    Left = 537
    Top = 0
    Width = 51
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = 'Fila'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
  end
  object upCol: TUpDown
    Left = 520
    Top = 33
    Width = 16
    Height = 18
    Min = -500
    Max = 10000
    TabOrder = 7
    OnClick = upColClick
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 56
    Top = 8
    Width = 225
    Height = 21
    DropDownRows = 20
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyField = 'suc_codigo'
    ListField = 'suc_nombre'
    ListSource = dsSuc
    ParentFont = False
    TabOrder = 8
  end
  object QBancos: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    AfterOpen = QBancosAfterOpen
    DataSource = dsSuc
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
        Name = 'SUC_CODIGO'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT'
      'BAN_NOMBRE, BAN_CODIGO, EMP_CODIGO, SUC_CODIGO'
      'FROM'
      'BANCOS'
      'WHERE '
      'EMP_CODIGO = :EMP_CODIGO'
      'AND SUC_CODIGO = :SUC_CODIGO'
      'ORDER BY'
      'BAN_NOMBRE')
    Left = 144
    Top = 80
    object QBancosBAN_NOMBRE: TIBStringField
      FieldName = 'BAN_NOMBRE'
      Origin = 'BANCOS.BAN_NOMBRE'
      Size = 60
    end
    object QBancosBAN_CODIGO: TIntegerField
      FieldName = 'BAN_CODIGO'
      Origin = 'BANCOS.BAN_CODIGO'
      Required = True
    end
    object QBancosEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'BANCOS.EMP_CODIGO'
      Required = True
    end
    object QBancosSUC_CODIGO: TIntegerField
      FieldName = 'SUC_CODIGO'
    end
  end
  object dsBancos: TDataSource
    DataSet = QBancos
    OnDataChange = dsBancosDataChange
    Left = 176
    Top = 80
  end
  object QConfig: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    DataSource = dsBancos
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
        Name = 'BAN_CODIGO'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'SUC_CODIGO'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT '
      'BAN_CODIGO, COL_ANO, COL_CONCEPTO1, COL_CONCEPTO2, '
      'COL_DIA, COL_FECHA, COL_MES, COL_MONTO, '
      'COL_MONTOCONCEPTO, COL_MONTOLETRA, COL_NUMEROCK, '
      'EMP_CODIGO, LIN_ANO, LIN_CONCEPTO1, LIN_CONCEPTO2, '
      'LIN_DIA, LIN_FECHA, LIN_MES, LIN_MONTO, LIN_MONTOCONCEPTO, '
      'LIN_MONTOLETRA, LIN_NUMEROCK, PAR_IMPNUMEROCKCONCEPTO,'
      ' PAR_IMPRIMEDET, COL_NUMEROCKCONC, LIN_NUMEROCKCONC, '
      'COL_DETALLE, LIN_DETALLE, COL_BENEF, LIN_BENEF,'
      'COL_CUENTA, COL_DESCUENTA, COL_DEBITO, COL_CREDITO,'
      'LIN_NOMCIA, COL_NOMCIA, LIN_DIRCIA, COL_DIRCIA,'
      'LIN_RNC, COL_RNC, LIN_NOMBANCO, COL_NOMBANCO,'
      'LIN_CTABANCO, COL_CTABANCO, SUC_CODIGO,'
      'col_concepto3, lin_concepto3, col_fechackconc,'
      'lin_fechackconc'
      'FROM'
      'PARCONFIGCHEQUE'
      'WHERE'
      'EMP_CODIGO = :EMP_CODIGO'
      'AND BAN_CODIGO = :BAN_CODIGO'
      'AND SUC_CODIGO = :SUC_CODIGO')
    Left = 144
    Top = 112
    object QConfigBAN_CODIGO: TIntegerField
      FieldName = 'BAN_CODIGO'
      Origin = 'PARCONFIGCHEQUE.BAN_CODIGO'
      Required = True
    end
    object QConfigCOL_ANO: TIntegerField
      FieldName = 'COL_ANO'
      Origin = 'PARCONFIGCHEQUE.COL_ANO'
    end
    object QConfigCOL_CONCEPTO1: TIntegerField
      FieldName = 'COL_CONCEPTO1'
      Origin = 'PARCONFIGCHEQUE.COL_CONCEPTO1'
    end
    object QConfigCOL_CONCEPTO2: TIntegerField
      FieldName = 'COL_CONCEPTO2'
      Origin = 'PARCONFIGCHEQUE.COL_CONCEPTO2'
    end
    object QConfigCOL_DIA: TIntegerField
      FieldName = 'COL_DIA'
      Origin = 'PARCONFIGCHEQUE.COL_DIA'
    end
    object QConfigCOL_FECHA: TIntegerField
      FieldName = 'COL_FECHA'
      Origin = 'PARCONFIGCHEQUE.COL_FECHA'
    end
    object QConfigCOL_MES: TIntegerField
      FieldName = 'COL_MES'
      Origin = 'PARCONFIGCHEQUE.COL_MES'
    end
    object QConfigCOL_MONTO: TIntegerField
      FieldName = 'COL_MONTO'
      Origin = 'PARCONFIGCHEQUE.COL_MONTO'
    end
    object QConfigCOL_MONTOCONCEPTO: TIntegerField
      FieldName = 'COL_MONTOCONCEPTO'
      Origin = 'PARCONFIGCHEQUE.COL_MONTOCONCEPTO'
    end
    object QConfigCOL_MONTOLETRA: TIntegerField
      FieldName = 'COL_MONTOLETRA'
      Origin = 'PARCONFIGCHEQUE.COL_MONTOLETRA'
    end
    object QConfigCOL_NUMEROCK: TIntegerField
      FieldName = 'COL_NUMEROCK'
      Origin = 'PARCONFIGCHEQUE.COL_NUMEROCK'
    end
    object QConfigEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'PARCONFIGCHEQUE.EMP_CODIGO'
      Required = True
    end
    object QConfigLIN_ANO: TIntegerField
      FieldName = 'LIN_ANO'
      Origin = 'PARCONFIGCHEQUE.LIN_ANO'
    end
    object QConfigLIN_CONCEPTO1: TIntegerField
      FieldName = 'LIN_CONCEPTO1'
      Origin = 'PARCONFIGCHEQUE.LIN_CONCEPTO1'
    end
    object QConfigLIN_CONCEPTO2: TIntegerField
      FieldName = 'LIN_CONCEPTO2'
      Origin = 'PARCONFIGCHEQUE.LIN_CONCEPTO2'
    end
    object QConfigLIN_DIA: TIntegerField
      FieldName = 'LIN_DIA'
      Origin = 'PARCONFIGCHEQUE.LIN_DIA'
    end
    object QConfigLIN_FECHA: TIntegerField
      FieldName = 'LIN_FECHA'
      Origin = 'PARCONFIGCHEQUE.LIN_FECHA'
    end
    object QConfigLIN_MES: TIntegerField
      FieldName = 'LIN_MES'
      Origin = 'PARCONFIGCHEQUE.LIN_MES'
    end
    object QConfigLIN_MONTO: TIntegerField
      FieldName = 'LIN_MONTO'
      Origin = 'PARCONFIGCHEQUE.LIN_MONTO'
    end
    object QConfigLIN_MONTOCONCEPTO: TIntegerField
      FieldName = 'LIN_MONTOCONCEPTO'
      Origin = 'PARCONFIGCHEQUE.LIN_MONTOCONCEPTO'
    end
    object QConfigLIN_MONTOLETRA: TIntegerField
      FieldName = 'LIN_MONTOLETRA'
      Origin = 'PARCONFIGCHEQUE.LIN_MONTOLETRA'
    end
    object QConfigLIN_NUMEROCK: TIntegerField
      FieldName = 'LIN_NUMEROCK'
      Origin = 'PARCONFIGCHEQUE.LIN_NUMEROCK'
    end
    object QConfigPAR_IMPNUMEROCKCONCEPTO: TIBStringField
      FieldName = 'PAR_IMPNUMEROCKCONCEPTO'
      Origin = 'PARCONFIGCHEQUE.PAR_IMPNUMEROCKCONCEPTO'
      Size = 5
    end
    object QConfigPAR_IMPRIMEDET: TIBStringField
      FieldName = 'PAR_IMPRIMEDET'
      Origin = 'PARCONFIGCHEQUE.PAR_IMPRIMEDET'
      Size = 5
    end
    object QConfigCOL_NUMEROCKCONC: TIntegerField
      FieldName = 'COL_NUMEROCKCONC'
      Origin = 'PARCONFIGCHEQUE.COL_NUMEROCKCONC'
    end
    object QConfigLIN_NUMEROCKCONC: TIntegerField
      FieldName = 'LIN_NUMEROCKCONC'
      Origin = 'PARCONFIGCHEQUE.LIN_NUMEROCKCONC'
    end
    object QConfigCOL_DETALLE: TIntegerField
      FieldName = 'COL_DETALLE'
      Origin = 'PARCONFIGCHEQUE.COL_DETALLE'
    end
    object QConfigLIN_DETALLE: TIntegerField
      FieldName = 'LIN_DETALLE'
      Origin = 'PARCONFIGCHEQUE.LIN_DETALLE'
    end
    object QConfigCOL_BENEF: TIntegerField
      FieldName = 'COL_BENEF'
      Origin = 'PARCONFIGCHEQUE.COL_BENEF'
    end
    object QConfigLIN_BENEF: TIntegerField
      FieldName = 'LIN_BENEF'
      Origin = 'PARCONFIGCHEQUE.LIN_BENEF'
    end
    object QConfigCOL_CUENTA: TIntegerField
      FieldName = 'COL_CUENTA'
      Origin = 'PARCONFIGCHEQUE.COL_CUENTA'
    end
    object QConfigCOL_DESCUENTA: TIntegerField
      FieldName = 'COL_DESCUENTA'
      Origin = 'PARCONFIGCHEQUE.COL_DESCUENTA'
    end
    object QConfigCOL_DEBITO: TIntegerField
      FieldName = 'COL_DEBITO'
      Origin = 'PARCONFIGCHEQUE.COL_DEBITO'
    end
    object QConfigCOL_CREDITO: TIntegerField
      FieldName = 'COL_CREDITO'
      Origin = 'PARCONFIGCHEQUE.COL_CREDITO'
    end
    object QConfigLIN_NOMCIA: TIntegerField
      FieldName = 'LIN_NOMCIA'
      Origin = 'PARCONFIGCHEQUE.LIN_NOMCIA'
    end
    object QConfigCOL_NOMCIA: TIntegerField
      FieldName = 'COL_NOMCIA'
      Origin = 'PARCONFIGCHEQUE.COL_NOMCIA'
    end
    object QConfigLIN_DIRCIA: TIntegerField
      FieldName = 'LIN_DIRCIA'
      Origin = 'PARCONFIGCHEQUE.LIN_DIRCIA'
    end
    object QConfigCOL_DIRCIA: TIntegerField
      FieldName = 'COL_DIRCIA'
      Origin = 'PARCONFIGCHEQUE.COL_DIRCIA'
    end
    object QConfigLIN_RNC: TIntegerField
      FieldName = 'LIN_RNC'
      Origin = 'PARCONFIGCHEQUE.LIN_RNC'
    end
    object QConfigCOL_RNC: TIntegerField
      FieldName = 'COL_RNC'
      Origin = 'PARCONFIGCHEQUE.COL_RNC'
    end
    object QConfigLIN_NOMBANCO: TIntegerField
      FieldName = 'LIN_NOMBANCO'
      Origin = 'PARCONFIGCHEQUE.LIN_NOMBANCO'
    end
    object QConfigCOL_NOMBANCO: TIntegerField
      FieldName = 'COL_NOMBANCO'
      Origin = 'PARCONFIGCHEQUE.COL_NOMBANCO'
    end
    object QConfigLIN_CTABANCO: TIntegerField
      FieldName = 'LIN_CTABANCO'
      Origin = 'PARCONFIGCHEQUE.LIN_CTABANCO'
    end
    object QConfigCOL_CTABANCO: TIntegerField
      FieldName = 'COL_CTABANCO'
      Origin = 'PARCONFIGCHEQUE.COL_CTABANCO'
    end
    object QConfigSUC_CODIGO: TIntegerField
      FieldName = 'SUC_CODIGO'
    end
    object QConfigcol_concepto3: TIntegerField
      FieldName = 'col_concepto3'
    end
    object QConfiglin_concepto3: TIntegerField
      FieldName = 'lin_concepto3'
    end
    object QConfigcol_fechackconc: TIntegerField
      FieldName = 'col_fechackconc'
    end
    object QConfiglin_fechackconc: TIntegerField
      FieldName = 'lin_fechackconc'
    end
  end
  object QSucursal: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltReadOnly
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
        Name = 'usu'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      's.suc_codigo, s.suc_nombre, s.alm_codigo, s.emp_codigo'
      'from'
      'sucursales s, sucursal_acceso a'
      'where'
      's.emp_codigo = a.emp_codigo'
      'and s.suc_codigo = a.suc_codigo'
      'and a.emp_codigo = :emp_codigo'
      'and a.usu_codigo = :usu'
      'order by s.suc_codigo')
    Left = 144
    Top = 144
    object QSucursalsuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object QSucursalsuc_nombre: TStringField
      FieldName = 'suc_nombre'
      Size = 60
    end
    object QSucursalemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QSucursalalm_codigo: TIntegerField
      FieldName = 'alm_codigo'
    end
  end
  object dsSuc: TDataSource
    DataSet = QSucursal
    Left = 176
    Top = 144
  end
end
