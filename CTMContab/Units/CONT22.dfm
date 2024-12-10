object frmCierreMes: TfrmCierreMes
  Left = 437
  Top = 131
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Cierre de Mes'
  ClientHeight = 323
  ClientWidth = 283
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
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 8
    Top = 32
    Width = 19
    Height = 13
    Caption = 'A'#241'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label15: TLabel
    Left = 8
    Top = 8
    Width = 40
    Height = 13
    Caption = 'Sucursal'
  end
  object btClose: TBitBtn
    Left = 200
    Top = 288
    Width = 75
    Height = 25
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
  object DBGrid1: TDBGrid
    Left = 0
    Top = 56
    Width = 281
    Height = 225
    Color = clInfoBk
    DataSource = dsMeses
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit]
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
        FieldName = 'DMes'
        Title.Caption = 'Descripci'#243'n del Mes'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Estado'
        Title.Alignment = taCenter
        Visible = True
      end>
  end
  object btReversa: TBitBtn
    Left = 120
    Top = 288
    Width = 75
    Height = 25
    Caption = 'Reversar'
    TabOrder = 3
    OnClick = btReversaClick
  end
  object btCerrar: TBitBtn
    Left = 40
    Top = 288
    Width = 75
    Height = 25
    Caption = 'Cerrar'
    TabOrder = 4
    OnClick = btCerrarClick
  end
  object spAno: TSpinEdit
    Left = 56
    Top = 32
    Width = 49
    Height = 22
    TabStop = False
    EditorEnabled = False
    MaxValue = 3000
    MinValue = 1900
    TabOrder = 5
    Value = 1900
    OnChange = spAnoChange
  end
  object Fecha: TDateTimePicker
    Left = 160
    Top = 168
    Width = 81
    Height = 21
    Date = 37711.000000000000000000
    Time = 37711.000000000000000000
    TabOrder = 6
    Visible = False
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 56
    Top = 8
    Width = 226
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
    TabOrder = 0
    OnClick = DBLookupComboBox2Click
  end
  object QMeses: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    OnCalcFields = QMesesCalcFields
    DataSource = dsSuc
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
        Name = 'ano'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'suc_codigo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT'
      'EMP_CODIGO, ANO, MES, STATUS, FECHA, SUC_CODIGO'
      'FROM'
      'CONTMESES'
      'WHERE'
      'EMP_CODIGO = :emp_codigo'
      'AND ANO = :ano'
      'AND SUC_CODIGO = :suc_codigo'
      'ORDER BY'
      'MES')
    Left = 64
    Top = 88
    object QMesesEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'CONTMESES.EMP_CODIGO'
      Required = True
    end
    object QMesesANO: TIntegerField
      FieldName = 'ANO'
      Origin = 'CONTMESES.ANO'
      Required = True
    end
    object QMesesMES: TIntegerField
      FieldName = 'MES'
      Origin = 'CONTMESES.MES'
      Required = True
    end
    object QMesesSTATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = 'CONTMESES.STATUS'
      Size = 3
    end
    object QMesesDMes: TStringField
      FieldKind = fkCalculated
      FieldName = 'DMes'
      Calculated = True
    end
    object QMesesEstado: TStringField
      FieldKind = fkCalculated
      FieldName = 'Estado'
      Size = 10
      Calculated = True
    end
    object QMesesFECHA: TDateTimeField
      FieldName = 'FECHA'
      Origin = 'CONTMESES.FECHA'
    end
    object QMesesSUC_CODIGO: TIntegerField
      FieldName = 'SUC_CODIGO'
    end
  end
  object dsMeses: TDataSource
    DataSet = QMeses
    OnDataChange = dsMesesDataChange
    Left = 96
    Top = 88
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
    Left = 112
    Top = 200
    object QSucursalsuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object QSucursalsuc_nombre: TStringField
      FieldName = 'suc_nombre'
      Size = 60
    end
    object QSucursalemp_Codigo: TIntegerField
      FieldName = 'emp_Codigo'
    end
    object QSucursalalm_codigo: TIntegerField
      FieldName = 'alm_codigo'
    end
  end
  object dsSuc: TDataSource
    DataSet = QSucursal
    Left = 144
    Top = 200
  end
end
