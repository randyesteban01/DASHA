object frmSelEscala: TfrmSelEscala
  Left = 377
  Top = 136
  ActiveControl = Grid
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Escalas'
  ClientHeight = 346
  ClientWidth = 140
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
  PixelsPerInch = 96
  TextHeight = 13
  object Grid: TDBGrid
    Left = 0
    Top = 0
    Width = 140
    Height = 346
    Align = alClient
    Ctl3D = False
    DataSource = dsEscala
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnKeyDown = GridKeyDown
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ESC_ESCALA'
        Title.Alignment = taCenter
        Title.Caption = 'Escala'
        Width = 58
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ESC_EXISTENCIA'
        Title.Alignment = taCenter
        Title.Caption = 'Existencia'
        Width = 61
        Visible = True
      end>
  end
  object QEscalas: TADOQuery
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
      'ALM_CODIGO, EMP_CODIGO, ESC_ESCALA, '
      'ESC_EXISTENCIA, ESC_SECUENCIA, PRO_CODIGO'
      'FROM'
      'ESCALAS'
      'WHERE'
      'EMP_CODIGO = :EMP'
      'AND PRO_CODIGO = :PRO'
      'ORDER BY '
      'ESC_SECUENCIA')
    Left = 56
    Top = 144
    object QEscalasALM_CODIGO: TIntegerField
      FieldName = 'ALM_CODIGO'
      Origin = 'ESCALAS.ALM_CODIGO'
    end
    object QEscalasEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'ESCALAS.EMP_CODIGO'
    end
    object QEscalasESC_ESCALA: TIBStringField
      FieldName = 'ESC_ESCALA'
      Origin = 'ESCALAS.ESC_ESCALA'
      Required = True
      Size = 5
    end
    object QEscalasESC_EXISTENCIA: TFloatField
      FieldName = 'ESC_EXISTENCIA'
      Origin = 'ESCALAS.ESC_EXISTENCIA'
    end
    object QEscalasESC_SECUENCIA: TIntegerField
      FieldName = 'ESC_SECUENCIA'
      Origin = 'ESCALAS.ESC_SECUENCIA'
    end
    object QEscalasPRO_CODIGO: TIntegerField
      FieldName = 'PRO_CODIGO'
      Origin = 'ESCALAS.PRO_CODIGO'
    end
  end
  object dsEscala: TDataSource
    DataSet = QEscalas
    Left = 88
    Top = 144
  end
end
