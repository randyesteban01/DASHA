object frmTablaSS: TfrmTablaSS
  Left = 284
  Top = 184
  ActiveControl = DBGrid1
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Tabla Seguro Social'
  ClientHeight = 353
  ClientWidth = 571
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
    Left = 488
    Top = 320
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 571
    Height = 313
    ActivePage = TabSheet1
    Align = alTop
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Tabla Mensual'
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 563
        Height = 285
        Align = alClient
        DataSource = dsMensual
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnEnter = DBGrid1Enter
        OnKeyPress = DBGrid1KeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'ss_desde'
            Title.Alignment = taCenter
            Title.Caption = 'Desde'
            Width = 72
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ss_hasta'
            Title.Alignment = taCenter
            Title.Caption = 'Hasta'
            Width = 79
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ss_semana4_patrono'
            Title.Alignment = taCenter
            Title.Caption = 'Semana4 Patrono'
            Width = 92
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ss_semana4_empleado'
            Title.Alignment = taCenter
            Title.Caption = 'Semana4 Empleado'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ss_semana5_patrono'
            Title.Alignment = taCenter
            Title.Caption = 'Semana5 Patrono'
            Width = 92
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ss_semana5_empleado'
            Title.Alignment = taCenter
            Title.Caption = 'Semana5 Empleado'
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Tabla Semanal'
      ImageIndex = 1
      object DBGrid2: TDBGrid
        Left = 0
        Top = 0
        Width = 563
        Height = 285
        Align = alClient
        DataSource = dsSemanal
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnEnter = DBGrid2Enter
        OnKeyPress = DBGrid2KeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'ss_desde'
            Title.Alignment = taCenter
            Title.Caption = 'Desde'
            Width = 72
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ss_hasta'
            Title.Alignment = taCenter
            Title.Caption = 'Hasta'
            Width = 79
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ss_patrono'
            Title.Alignment = taCenter
            Title.Caption = 'Monto Patrono'
            Width = 92
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ss_empleado'
            Title.Alignment = taCenter
            Title.Caption = 'Monto Empleado'
            Visible = True
          end>
      end
    end
  end
  object BitBtn1: TBitBtn
    Left = 360
    Top = 320
    Width = 121
    Height = 25
    Caption = 'Eliminar registro'
    TabOrder = 2
    OnClick = BitBtn1Click
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00
      FF002900DD002900DF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF0008002C002100B60000000000FF00FF00FF00FF00FF00
      FF002900DE002900DF001200640000000000FF00FF00FF00FF00FF00FF00FF00
      FF00000000001D009D002900DF0019008600FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF002900DE002900DF000000000000000000FF00FF00FF00FF000000
      00002500C8002900DF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF002900DF002900DF000000000000000000000000002500
      C8002900DF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF002900DF002700D600000000002500C7002900
      DF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF002900DE002900DF002900DF000000
      0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00000000002800D8002900DF002900DF000000
      000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00000000002500C8002900DF00000000002900DF002900
      DF000400140000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00000000002500C8002900DF0000000000FF00FF00FF00FF002900
      DF002900DF0011005A000000000000000000FF00FF00FF00FF00FF00FF00FF00
      FF00000000002400C7002900DF0009002F00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF002900DF002200BB0000000000FF00FF00FF00FF00FF00FF00FF00
      FF002800D8002900DF0019008700FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF002900DC00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF002900DF002300BE0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
  end
  object QMensual: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    BeforePost = QMensualBeforePost
    AfterPost = QMensualAfterPost
    AfterDelete = QMensualAfterDelete
    OnNewRecord = QMensualNewRecord
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
      
        'emp_codigo, ss_secuencia, ss_desde, ss_hasta, ss_semana4_patrono' +
        ','
      'ss_semana4_empleado, ss_semana5_patrono, ss_semana5_empleado'
      'from'
      'ss_mensual'
      'where'
      'emp_codigo = :emp_codigo'
      'order by'
      'ss_desde, ss_hasta')
    Left = 348
    Top = 168
    object QMensualemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QMensualss_secuencia: TIntegerField
      FieldName = 'ss_secuencia'
    end
    object QMensualss_desde: TBCDField
      FieldName = 'ss_desde'
      currency = True
      Precision = 15
      Size = 2
    end
    object QMensualss_hasta: TBCDField
      FieldName = 'ss_hasta'
      currency = True
      Precision = 15
      Size = 2
    end
    object QMensualss_semana4_patrono: TBCDField
      FieldName = 'ss_semana4_patrono'
      OnChange = QMensualss_semana4_patronoChange
      currency = True
      Precision = 15
      Size = 2
    end
    object QMensualss_semana4_empleado: TBCDField
      FieldName = 'ss_semana4_empleado'
      OnChange = QMensualss_semana4_empleadoChange
      currency = True
      Precision = 15
      Size = 2
    end
    object QMensualss_semana5_patrono: TBCDField
      FieldName = 'ss_semana5_patrono'
      currency = True
      Precision = 15
      Size = 2
    end
    object QMensualss_semana5_empleado: TBCDField
      FieldName = 'ss_semana5_empleado'
      currency = True
      Precision = 15
      Size = 2
    end
  end
  object dsMensual: TDataSource
    DataSet = QMensual
    Left = 380
    Top = 168
  end
  object QSemanal: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    BeforePost = QSemanalBeforePost
    AfterPost = QSemanalAfterPost
    AfterDelete = QSemanalAfterDelete
    OnNewRecord = QSemanalNewRecord
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
      
        'emp_codigo, ss_secuencia, ss_desde, ss_hasta, ss_patrono, ss_emp' +
        'leado'
      'from'
      'ss_semanal'
      'where'
      'emp_codigo = :emp_codigo'
      'order by'
      'ss_desde, ss_hasta')
    Left = 348
    Top = 200
    object QSemanalemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QSemanalss_secuencia: TIntegerField
      FieldName = 'ss_secuencia'
    end
    object QSemanalss_desde: TBCDField
      FieldName = 'ss_desde'
      currency = True
      Precision = 15
      Size = 2
    end
    object QSemanalss_hasta: TBCDField
      FieldName = 'ss_hasta'
      currency = True
      Precision = 15
      Size = 2
    end
    object QSemanalss_patrono: TBCDField
      FieldName = 'ss_patrono'
      currency = True
      Precision = 15
      Size = 2
    end
    object QSemanalss_empleado: TBCDField
      FieldName = 'ss_empleado'
      currency = True
      Precision = 15
      Size = 2
    end
  end
  object dsSemanal: TDataSource
    DataSet = QSemanal
    Left = 380
    Top = 200
  end
end
