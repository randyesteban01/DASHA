object frmRepVencimiento: TfrmRepVencimiento
  Left = 451
  Top = 353
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Reporte de Vencimiento'
  ClientHeight = 131
  ClientWidth = 315
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 32
    Top = 16
    Width = 30
    Height = 13
    Caption = 'Desde'
  end
  object Label3: TLabel
    Left = 32
    Top = 48
    Width = 28
    Height = 13
    Caption = 'Hasta'
  end
  object btClose: TBitBtn
    Left = 208
    Top = 45
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
  object btPrint: TBitBtn
    Left = 208
    Top = 16
    Width = 75
    Height = 25
    Caption = '&Imprimir'
    TabOrder = 0
    OnClick = btPrintClick
    Glyph.Data = {
      66010000424D6601000000000000760000002800000014000000140000000100
      040000000000F000000000000000000000001000000010000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
      DDDDDDDD0000DDDDDDDDDDDDDDDDDDDD0000DD000DDDDDDDDDD000DD0000D000
      000000000000000D0000D0F8888888888888880D0000D0F8888888888888880D
      0000D0F8888888822899880D0000D0FFFFFFFFFFFFFFFF0D0000D70077777777
      7777007D0000DDD00000000000000DDD0000DDD00FFFFFFFFFF00DDD0000DDDD
      0F00000000F0DDDD0000DDDD0FFFFFFFFFF0DDDD0000DDDD0F00000000F0DDDD
      0000DDDD0FFFFFFFFFF0DDDD0000DDDD0F00FFFFFFF0DDDD0000DDDD0FFFFFFF
      FFF0DDDD0000DDDD000000000000DDDD0000DDDDDDDDDDDDDDDDDDDD0000DDDD
      DDDDDDDDDDDDDDDD0000}
  end
  object fecha1: TDateTimePicker
    Left = 72
    Top = 16
    Width = 97
    Height = 21
    Date = 39158.000000000000000000
    Time = 39158.000000000000000000
    TabOrder = 2
  end
  object fecha2: TDateTimePicker
    Left = 72
    Top = 48
    Width = 97
    Height = 21
    Date = 39158.000000000000000000
    Time = 39158.000000000000000000
    TabOrder = 3
  end
  object RG_1: TRadioGroup
    Left = 72
    Top = 72
    Width = 212
    Height = 51
    Caption = 'Tipo Reporte'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'Seguros'
      'Licencias')
    TabOrder = 4
  end
  object DB_REP: TfrxDBDataset
    UserName = 'DB_REP'
    CloseDataSource = False
    FieldAliases.Strings = (
      'cli_nombre=cli_nombre'
      'FECHA=FECHA'
      'TIPO=TIPO')
    DataSet = QReportes
    BCDToCurrency = False
    Left = 8
    Top = 40
  end
  object Rpt_Vencimiento: TfrxReport
    Version = '4.13.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43162.419074571800000000
    ReportOptions.LastChange = 43162.419074571800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnBeforePrint = Rpt_VencimientoBeforePrint
    Left = 8
    Top = 72
    Datasets = <
      item
        DataSet = DM.DB_CIA
        DataSetName = 'DB_CIA'
      end
      item
        DataSet = DB_REP
        DataSetName = 'DB_REP'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 109.606370000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object MCia: TfrxMemoView
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 22.677180000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'CAlibri'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[DB_CIA."EMP_NOMBRE"]')
          ParentFont = False
        end
        object MDireccion: TfrxMemoView
          Top = 27.015770000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8 = (
            '[DB_CIA."EMP_DIRECCION"]')
          ParentFont = False
        end
        object MLocalidad: TfrxMemoView
          Top = 45.354360000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8 = (
            '[DB_CIA."EMP_LOCALIDAD"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Top = 64.252010000000000000
          Width = 102.047310000000000000
          Height = 34.015770000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Tel'#195#169'fono :'
            'RNC      :')
          ParentFont = False
        end
        object MTitulo: TfrxMemoView
          Left = 415.748300000000000000
          Top = 3.779530000000000000
          Width = 325.039580000000000000
          Height = 22.677180000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'CAlibri'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Reporte de Vencimiento de Licencias')
          ParentFont = False
        end
        object MFecha: TfrxMemoView
          Left = 415.748300000000000000
          Top = 26.456710000000000000
          Width = 325.039580000000000000
          Height = 22.677180000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'CAlibri'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Desde Fecha1 hasta Fecha2')
          ParentFont = False
        end
        object MTelefono: TfrxMemoView
          Left = 102.047310000000000000
          Top = 64.252010000000000000
          Width = 238.110390000000000000
          Height = 34.015770000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8 = (
            '[DB_CIA."EMP_TELEFONO"]'
            '[DB_CIA."EMP_RNC"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 15.118120000000000000
        Top = 188.976500000000000000
        Width = 740.409927000000000000
        DataSet = DB_REP
        DataSetName = 'DB_REP'
        RowCount = 0
        object Memo2: TfrxMemoView
          Align = baLeft
          Width = 291.023810000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Memo.UTF8 = (
            'CLIENTE')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Align = baLeft
          Left = 291.023810000000000000
          Width = 117.165430000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Memo.UTF8 = (
            'FECHA VENC')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Align = baLeft
          Left = 408.189240000000000000
          Width = 332.598640000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Memo.UTF8 = (
            'TIPO')
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        Height = 18.897650000000000000
        Top = 226.771800000000000000
        Width = 740.409927000000000000
        DataSet = DB_REP
        DataSetName = 'DB_REP'
        RowCount = 0
        object Memo5: TfrxMemoView
          Align = baLeft
          Width = 291.023810000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'cli_nombre'
          DataSet = DB_REP
          DataSetName = 'DB_REP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Memo.UTF8 = (
            '[DB_REP."cli_nombre"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Align = baLeft
          Left = 291.023810000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'FECHA'
          DataSet = DB_REP
          DataSetName = 'DB_REP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Memo.UTF8 = (
            '[DB_REP."FECHA"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Align = baLeft
          Left = 408.189240000000000000
          Width = 332.598640000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'TIPO'
          DataSet = DB_REP
          DataSetName = 'DB_REP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Memo.UTF8 = (
            '[DB_REP."TIPO"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        Height = 22.677180000000000000
        Top = 268.346630000000000000
        Width = 740.409927000000000000
        object Memo9: TfrxMemoView
          Align = baLeft
          Width = 408.189240000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = DB_REP
          DataSetName = 'DB_REP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            'TOTAL DE REGISTROS:')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Align = baLeft
          Left = 408.189240000000000000
          Width = 332.598640000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = DB_REP
          DataSetName = 'DB_REP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[COUNT(DetailData1)]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 15.118120000000000000
        Top = 351.496290000000000000
        Width = 740.409927000000000000
        object Memo8: TfrxMemoView
          Align = baRight
          Left = 547.653897000000000000
          Width = 192.756030000000000000
          Height = 11.338590000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Pagina [Page#] DE [TotalPages#]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Align = baLeft
          Width = 257.008040000000000000
          Height = 11.338590000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[Date] [Time]')
          ParentFont = False
        end
        object MUsuario: TfrxMemoView
          Align = baCenter
          Left = 273.826948500000000000
          Width = 192.756030000000000000
          Height = 11.338590000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Pagina [Page#] DE [TotalPages#]')
          ParentFont = False
        end
      end
    end
  end
  object QReportes: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    DataSource = DM.dsEmpresas
    Parameters = <
      item
        Name = 'RANGO'
        DataType = ftString
        Size = 1
        Value = '1'
      end
      item
        Name = 'CIA'
        DataType = ftString
        Size = 1
        Value = '1'
      end
      item
        Name = 'DESDE'
        DataType = ftDateTime
        Size = 10
        Value = 2d
      end
      item
        Name = 'HASTA'
        DataType = ftDateTime
        Size = 10
        Value = 43831d
      end>
    SQL.Strings = (
      'DECLARE @RANGO INT, @CIA INT, @DESDE DATETIME, @HASTA DATETIME'
      ''
      'SET @RANGO = :RANGO'
      'SET @CIA       = :CIA'
      'SET @DESDE  = :DESDE'
      'SET @HASTA  = :HASTA'
      ''
      'IF @RANGO = 0 BEGIN '
      'select'
      'cli_nombre, FECHA_VENC_SEG FECHA, '
      'case when TIPO_SEG= 1 then '#39'DE LEY'#39
      '        when TIPO_SEG= 2 then '#39'DE LEY + OTROS BENEF'#39
      '        when TIPO_SEG= 3 then '#39'SEMI-FULL'#39
      '        when TIPO_SEG= 4 then '#39'FULL'#39' END TIPO'
      ''
      'from'
      'clientes'
      'where'
      'emp_codigo = @CIA'
      'and FECHA_VENC_SEG between @DESDE AND @HASTA'
      'order by FECHA_VENC_SEG '
      'END'
      ''
      'IF @RANGO = 1  BEGIN '
      'select'
      'cli_nombre, FECHA_VENC_LIC FECHA, '
      'case when TIPO_CAT_LIC = 1 then '#39'CATEGOR'#205'A I MOTORES'#39
      
        '        when TIPO_CAT_LIC = 2 then '#39'CATEGOR'#205'A II VEH'#205'CULOS LIVIA' +
        'NOS'#39
      
        '        when TIPO_CAT_LIC = 3 then '#39'PESADA, VEH'#205'CULOS PESADOS PR' +
        'IMERA'#39
      '        when TIPO_CAT_LIC = 4 then '#39'PESADA, SEGUNDA CATEGOR'#205'A'#39' '
      '        when TIPO_CAT_LIC = 5 THEN '#39'CATEGOR'#205'A V'#39' END TIPO'
      'from'
      'clientes'
      'where emp_codigo = @CIA'
      'and FECHA_VENC_LIC BETWEEN @DESDE AND @HASTA'
      'order by'
      'FECHA_VENC_LIC'
      'END'
      ''
      ''
      
        '                                                                ' +
        '                           ')
    Left = 8
    Top = 8
    object QReportescli_nombre: TStringField
      FieldName = 'cli_nombre'
      Size = 255
    end
    object QReportesFECHA: TDateTimeField
      FieldName = 'FECHA'
    end
    object QReportesTIPO: TStringField
      FieldName = 'TIPO'
      ReadOnly = True
      Size = 33
    end
  end
end
