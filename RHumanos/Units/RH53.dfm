object frmSemanasSS: TfrmSemanasSS
  Left = 455
  Top = 163
  ActiveControl = DBGrid1
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Semanas del Mes SS'
  ClientHeight = 303
  ClientWidth = 237
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
  object btClose: TBitBtn
    Left = 152
    Top = 272
    Width = 75
    Height = 25
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
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 237
    Height = 265
    Align = alTop
    DataSource = dsSemanas
    Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnColEnter = DBGrid1ColEnter
    OnEnter = DBGrid1Enter
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ss_mes'
        Title.Alignment = taCenter
        Title.Caption = ' '
        Width = 22
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Mes'
        Width = 126
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ss_semanas'
        Title.Alignment = taCenter
        Title.Caption = 'Semanas'
        Visible = True
      end>
  end
  object QSemanas: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    AfterPost = QSemanasAfterPost
    BeforeDelete = QSemanasBeforeDelete
    OnCalcFields = QSemanasCalcFields
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
      'select'
      'emp_codigo, ss_mes, ss_semanas'
      'from'
      'ss_semanas'
      'where'
      'emp_codigo = :emp_codigo'
      'order by'
      'ss_mes')
    Left = 88
    Top = 104
    object QSemanasemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QSemanasss_mes: TIntegerField
      FieldName = 'ss_mes'
    end
    object QSemanasss_semanas: TIntegerField
      FieldName = 'ss_semanas'
    end
    object QSemanasMes: TStringField
      FieldKind = fkCalculated
      FieldName = 'Mes'
      Calculated = True
    end
  end
  object dsSemanas: TDataSource
    DataSet = QSemanas
    Left = 120
    Top = 104
  end
end
