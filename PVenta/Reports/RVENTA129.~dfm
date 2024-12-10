object frmRepFacVencCxP: TfrmRepFacVencCxP
  Left = 685
  Top = 384
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Reporte general de Facturas Vencidas'
  ClientHeight = 113
  ClientWidth = 429
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
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label8: TLabel
    Left = 16
    Top = 15
    Width = 40
    Height = 13
    Caption = 'Sucursal'
  end
  object Label1: TLabel
    Left = 16
    Top = 40
    Width = 29
    Height = 13
    Caption = 'Fecha'
  end
  object btClose: TBitBtn
    Left = 352
    Top = 80
    Width = 75
    Height = 25
    Caption = '&Salir'
    TabOrder = 2
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
    Left = 272
    Top = 80
    Width = 75
    Height = 25
    Caption = '&Imprimir'
    TabOrder = 3
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
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 80
    Top = 15
    Width = 337
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
  end
  object Fecha1: TDateTimePicker
    Left = 80
    Top = 40
    Width = 81
    Height = 21
    Date = 37607.000000000000000000
    Time = 37607.000000000000000000
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object Search: TQrySearchDlgADO
    AliasName = DM.ADOSigma
    Left = 80
    Top = 128
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
    Top = 128
    object QSucursalsuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object QSucursalsuc_nombre: TStringField
      FieldName = 'suc_nombre'
      Size = 60
    end
    object QSucursalalm_codigo: TIntegerField
      FieldName = 'alm_codigo'
    end
    object QSucursalemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
  end
  object dsSuc: TDataSource
    DataSet = QSucursal
    Left = 144
    Top = 128
  end
  object QFacturas: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'FECHA'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'EMP'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'EMPINV'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'SUC'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'DECLARE @FECHA DATETIME'
      'DECLARE @EMP INT'
      'DECLARE @EMPINV INT'
      'DECLARE @SUC INT'
      'SET DATEFORMAT YMD'
      'SET @FECHA =:FECHA'
      'SET @EMP = :EMP'
      'SET @EMPINV = :EMPINV'
      'SET @SUC = :SUC'
      'select '
      
        'E.emp_nombre, E.emp_direccion, E.emp_localidad, E.emp_telefono, ' +
        'E.emp_rnc, F.sup_codigo, P.sup_nombre,'
      
        'F.FAC_NUMERO, F.FAC_FECHA, DATEDIFF(DAY,FAC_FECHA,@FECHA) FAC_DI' +
        'AS, fac_vence, SUM(F.fac_total-fac_abono) SALDO'
      'from '
      'PROVFACTURAS F'
      'INNER JOIN PROVEEDORES P ON P.SUP_CODIGO = F.SUP_CODIGO'
      'INNER JOIN Empresas E ON F.emp_codigo=F.emp_codigo'
      'where  F.fac_vence <= @FECHA'
      'and F.emp_codigo = @EMP'
      'and p.emp_codigo = @EMPINV'
      'and F.fac_status = '#39'PEN'#39
      'and f.suc_codigo = @suc'
      
        'GROUP BY E.emp_nombre, E.emp_direccion, E.emp_localidad, E.emp_t' +
        'elefono, E.emp_rnc, F.sup_codigo, P.sup_nombre,'
      'F.FAC_NUMERO, F.FAC_FECHA, FAC_DIAS, fac_vence'
      'order by p.sup_nombre, F.fac_vence')
    Left = 128
    Top = 72
    object QFacturasemp_nombre: TStringField
      FieldName = 'emp_nombre'
      Size = 100
    end
    object QFacturasemp_direccion: TStringField
      FieldName = 'emp_direccion'
      Size = 100
    end
    object QFacturasemp_localidad: TStringField
      FieldName = 'emp_localidad'
      Size = 50
    end
    object QFacturasemp_telefono: TStringField
      FieldName = 'emp_telefono'
    end
    object QFacturasemp_rnc: TStringField
      FieldName = 'emp_rnc'
    end
    object QFacturassup_codigo: TIntegerField
      FieldName = 'sup_codigo'
    end
    object QFacturassup_nombre: TStringField
      FieldName = 'sup_nombre'
      Size = 100
    end
    object QFacturasFAC_FECHA: TDateField
      FieldName = 'FAC_FECHA'
    end
    object QFacturasFAC_DIAS: TIntegerField
      FieldName = 'FAC_DIAS'
    end
    object QFacturasfac_vence: TDateField
      FieldName = 'fac_vence'
    end
    object QFacturasSALDO: TCurrencyField
      FieldName = 'SALDO'
    end
    object QFacturasFAC_NUMERO: TStringField
      FieldName = 'FAC_NUMERO'
    end
  end
  object Rpt_FacVencCxP: TfrxReport
    Version = '4.13.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43589.483547338000000000
    ReportOptions.LastChange = 43589.483547338000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnBeforePrint = Rpt_FacVencCxPBeforePrint
    Left = 176
    Top = 80
    Datasets = <
      item
        DataSet = DB_FACVENC
        DataSetName = 'DB_FACVENC'
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
      object GroupHeader1: TfrxGroupHeader
        Height = 60.472480000000000000
        Top = 173.858380000000000000
        Width = 740.409927000000000000
        Condition = 'DB_FACVENC."SUP_NOMBRE"'
        object Memo6: TfrxMemoView
          Align = baLeft
          Top = 19.118120000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[DB_FACVENC."SUP_CODIGO"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Align = baLeft
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'COD')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Align = baLeft
          Left = 34.015770000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'SUPLIDOR')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Align = baLeft
          Left = 34.015770000000000000
          Top = 18.897650000000000000
          Width = 487.559370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[DB_FACVENC."SUP_NOMBRE"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Align = baLeft
          Left = 230.551330000000000000
          Top = 41.574830000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = DB_FACVENC
          DataSetName = 'DB_FACVENC'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'NUMERO')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Align = baLeft
          Left = 332.598640000000000000
          Top = 41.574830000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = DB_FACVENC
          DataSetName = 'DB_FACVENC'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'FECHA')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Align = baLeft
          Left = 434.645950000000000000
          Top = 41.574830000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = DB_FACVENC
          DataSetName = 'DB_FACVENC'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'DIAS')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Align = baLeft
          Left = 536.693260000000000000
          Top = 41.574830000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = DB_FACVENC
          DataSetName = 'DB_FACVENC'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'VENCE')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Align = baLeft
          Left = 638.740570000000000000
          Top = 41.574830000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = DB_FACVENC
          DataSetName = 'DB_FACVENC'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'SALDO')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Align = baLeft
          Top = 41.574830000000000000
          Width = 230.551330000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 257.008040000000000000
        Width = 740.409927000000000000
        DataSet = DB_FACVENC
        DataSetName = 'DB_FACVENC'
        RowCount = 0
        object Memo7: TfrxMemoView
          Align = baLeft
          Left = 230.551330000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'FAC_NUMERO'
          DataSet = DB_FACVENC
          DataSetName = 'DB_FACVENC'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8 = (
            '[DB_FACVENC."FAC_NUMERO"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Align = baLeft
          Left = 332.598640000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'FAC_FECHA'
          DataSet = DB_FACVENC
          DataSetName = 'DB_FACVENC'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8 = (
            '[DB_FACVENC."FAC_FECHA"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Align = baLeft
          Left = 434.645950000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'FAC_DIAS'
          DataSet = DB_FACVENC
          DataSetName = 'DB_FACVENC'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8 = (
            '[DB_FACVENC."FAC_DIAS"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Align = baLeft
          Left = 536.693260000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'FAC_VENCE'
          DataSet = DB_FACVENC
          DataSetName = 'DB_FACVENC'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8 = (
            '[DB_FACVENC."FAC_VENCE"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Align = baLeft
          Left = 638.740570000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'SALDO'
          DataSet = DB_FACVENC
          DataSetName = 'DB_FACVENC'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[DB_FACVENC."SALDO"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Align = baLeft
          Width = 230.551330000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 22.677180000000000000
        Top = 298.582870000000000000
        Width = 740.409927000000000000
        object Memo22: TfrxMemoView
          Align = baLeft
          Width = 638.740570000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'TOTAL SUPLIDOR==>')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Align = baLeft
          Left = 638.740570000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = DB_FACVENC
          DataSetName = 'DB_FACVENC'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          Frame.Style = fsDot
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<DB_FACVENC."SALDO">,MasterData1)]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 18.897650000000000000
        Top = 381.732530000000000000
        Width = 740.409927000000000000
        object Memo24: TfrxMemoView
          Align = baLeft
          Width = 589.606680000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'TOTAL GENERAL==>')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Align = baLeft
          Left = 589.606680000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = DB_FACVENC
          DataSetName = 'DB_FACVENC'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          Frame.Style = fsDot
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<DB_FACVENC."SALDO">,MasterData1)]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 94.708720000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          Width = 740.409927000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[DB_FACVENC."emp_nombre"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Top = 26.677180000000000000
          Width = 336.000217000000000000
          Height = 68.031540000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DB_FACVENC."emp_direccion"]'
            '[DB_FACVENC."emp_localidad"]'
            '[DB_FACVENC."emp_telefono"]'
            '[DB_FACVENC."emp_rnc"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Align = baRight
          Left = 404.409710000000000000
          Top = 26.456710000000000000
          Width = 336.000217000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Facturas de Prov. Vencidas')
          ParentFont = False
        end
        object MFecha: TfrxMemoView
          Align = baRight
          Left = 404.409710000000000000
          Top = 41.913420000000000000
          Width = 336.000217000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Fecha')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Align = baRight
          Left = 404.409710000000000000
          Top = 59.472480000000000000
          Width = 336.000217000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Pagina No. [Page#]')
          ParentFont = False
        end
      end
    end
  end
  object DB_FACVENC: TfrxDBDataset
    UserName = 'DB_FACVENC'
    CloseDataSource = False
    FieldAliases.Strings = (
      'emp_nombre=emp_nombre'
      'emp_direccion=emp_direccion'
      'emp_localidad=emp_localidad'
      'emp_telefono=emp_telefono'
      'emp_rnc=emp_rnc'
      'sup_codigo=SUP_CODIGO'
      'sup_nombre=SUP_NOMBRE'
      'FAC_FECHA=FAC_FECHA'
      'FAC_DIAS=FAC_DIAS'
      'fac_vence=FAC_VENCE'
      'SALDO=SALDO'
      'FAC_NUMERO=FAC_NUMERO')
    DataSet = QFacturas
    BCDToCurrency = False
    Left = 216
    Top = 80
  end
end
