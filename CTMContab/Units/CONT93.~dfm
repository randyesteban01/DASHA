object frmDispBanco: TfrmDispBanco
  Left = 247
  Top = 249
  Width = 1235
  Height = 540
  Caption = 'Disponibilidad en Banco'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1219
    Height = 82
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object Label6: TLabel
      Left = 5
      Top = 32
      Width = 30
      Height = 13
      Caption = 'Fecha'
    end
    object Label3: TLabel
      Left = 6
      Top = 60
      Width = 31
      Height = 13
      Caption = 'Banco'
    end
    object btBanco: TSpeedButton
      Left = 108
      Top = 56
      Width = 23
      Height = 22
      Flat = True
      Glyph.Data = {
        42010000424D4201000000000000760000002800000011000000110000000100
        040000000000CC00000000000000000000001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        77777000000077777777777777777000000070000077777000007000000070B0
        00777770F0007000000070F000777770B0007000000070000000700000007000
        0000700B000000B0000070000000700F000700F0000070000000700B000700B0
        0000700000007700000000000007700000007770B00070B00077700000007770
        0000700000777000000077770007770007777000000077770B07770B07777000
        0000777700077700077770000000777777777777777770000000777777777777
        777770000000}
      OnClick = btBancoClick
    end
    object Label14: TLabel
      Left = 5
      Top = 8
      Width = 41
      Height = 13
      Caption = 'Sucursal'
    end
    object Fecha1: TDateTimePicker
      Left = 56
      Top = 32
      Width = 79
      Height = 21
      Date = 37506.000000000000000000
      Time = 37506.000000000000000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object edBanco: TEdit
      Left = 56
      Top = 56
      Width = 49
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnChange = edBancoChange
      OnKeyDown = edBancoKeyDown
    end
    object tBanco: TEdit
      Left = 136
      Top = 56
      Width = 353
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 56
      Top = 8
      Width = 249
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
    object btRefresh: TBitBtn
      Left = 503
      Top = 53
      Width = 75
      Height = 25
      Caption = 'Refrescar >>'
      TabOrder = 4
      OnClick = btRefreshClick
    end
    object BitBtn2: TBitBtn
      Left = 583
      Top = 53
      Width = 115
      Height = 25
      Caption = 'Imprimir el Listado'
      TabOrder = 5
      OnClick = BitBtn2Click
      Glyph.Data = {
        E6000000424DE6000000000000007600000028000000100000000E0000000100
        0400000000007000000000000000000000001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333330000000000003330777777777777033088888888899703308888888888
        870333000000000000333330FCCCCCCF03333330FFFFFFFF03333330FCCCCCCF
        03333330FFFFFFFF03333330FCCCCCCF03333330FFFFFFFF0333333000000000
        03333333333333333333}
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 82
    Width = 1219
    Height = 419
    Align = alClient
    Color = clInfoBk
    DataSource = dsBalBanco
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'BANCO'
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BANCONOMBRE'
        Title.Caption = 'BANCO NOMBRE'
        Width = 204
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BALANTERIOR'
        Title.Caption = 'BALANCE ANT'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DEPOSITOS'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CARGOSCRED'
        Title.Caption = 'CARGOS CR'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CARGOSDEB'
        Title.Caption = 'CARGOS DB'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CHEQUES'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BALANCELIBRO'
        Title.Caption = 'BAL LIBRO'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CHEQUESTRANS'
        Title.Caption = 'CK TRANSITOS'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DEPOSTRANS'
        Title.Caption = 'DEP TRANSITOS'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BANCODISP'
        Title.Caption = 'BAL DISP BANCO'
        Width = 120
        Visible = True
      end>
  end
  object qBalBanco: TADOQuery
    Connection = DM.ADOSigma
    AfterOpen = qBalBancoAfterOpen
    Parameters = <
      item
        Name = 'EMP'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'SUC'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'BANCO'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'FECHA'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'DECLARE @EMP INT'
      'DECLARE @SUC INT'
      'DECLARE @BANCO INT'
      'DECLARE @FECHA DATETIME'
      ''
      'SET @EMP = :EMP'
      'SET @SUC = :SUC'
      'SET @BANCO = :BANCO'
      'SET @FECHA = :FECHA'
      ''
      
        'SELECT * FROM [dbo].[pr_bal_disponibilidad_bancos] (@EMP,  @SUC,' +
        ' @BANCO, @FECHA)'
      ''
      '')
    Left = 112
    Top = 152
    object qBalBancoBANCO: TIntegerField
      FieldName = 'BANCO'
    end
    object qBalBancoBANCONOMBRE: TStringField
      FieldName = 'BANCONOMBRE'
      Size = 255
    end
    object qBalBancoBALANTERIOR: TCurrencyField
      FieldName = 'BALANTERIOR'
    end
    object qBalBancoDEPOSITOS: TCurrencyField
      FieldName = 'DEPOSITOS'
    end
    object qBalBancoCARGOSCRED: TCurrencyField
      FieldName = 'CARGOSCRED'
    end
    object qBalBancoCARGOSDEB: TCurrencyField
      FieldName = 'CARGOSDEB'
    end
    object qBalBancoCHEQUES: TCurrencyField
      FieldName = 'CHEQUES'
    end
    object qBalBancoBALANCELIBRO: TCurrencyField
      FieldName = 'BALANCELIBRO'
    end
    object qBalBancoCHEQUESTRANS: TCurrencyField
      FieldName = 'CHEQUESTRANS'
    end
    object qBalBancoDEPOSTRANS: TCurrencyField
      FieldName = 'DEPOSTRANS'
    end
    object qBalBancoBANCODISP: TCurrencyField
      FieldName = 'BANCODISP'
    end
  end
  object dsBalBanco: TDataSource
    AutoEdit = False
    DataSet = qBalBanco
    Left = 144
    Top = 152
  end
  object dsSuc: TDataSource
    DataSet = QSucursal
    Left = 312
    Top = 160
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
    Left = 280
    Top = 160
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
  object DBBalBanco: TfrxDBDataset
    UserName = 'DBBalBanco'
    CloseDataSource = False
    DataSet = qBalBanco
    BCDToCurrency = False
    Left = 600
    Top = 256
  end
  object Rpt_BalanceBanco: TfrxReport
    Version = '4.13.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44462.917608275500000000
    ReportOptions.LastChange = 44462.917608275500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 632
    Top = 256
    Datasets = <
      item
        DataSet = DM.DB_CIA
        DataSetName = 'DB_CIA'
      end
      item
        DataSet = DBBalBanco
        DataSetName = 'DBBalBanco'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 279.400000000000000000
      PaperHeight = 215.900000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 154.960730000000000000
        Top = 18.897650000000000000
        Width = 980.410082000000000000
        object Memo1: TfrxMemoView
          Top = 3.779530000000000000
          Width = 737.008350000000000000
          Height = 151.181200000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[DB_CIA."EMP_NOMBRE"]'
            'R N C :  [DB_CIA."EMP_RNC"]'
            'TEL: [DB_CIA."EMP_TELEFONO"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 234.330860000000000000
        Width = 980.410082000000000000
        DataSet = DBBalBanco
        DataSetName = 'DBBalBanco'
        RowCount = 0
        object Memo2: TfrxMemoView
          Align = baLeft
          Width = 196.535560000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'BANCO')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Align = baLeft
          Left = 196.535560000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'BALANCE ANT')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Align = baLeft
          Left = 298.582870000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'DEPOSITOS')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Align = baLeft
          Left = 370.393940000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'CARGOS CR')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Align = baLeft
          Left = 438.425480000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'CARGOS DB')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Align = baLeft
          Left = 578.268090000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'BALANCE LIBRO')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Align = baLeft
          Left = 506.457020000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'CHEQUES')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Align = baLeft
          Left = 691.653990000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'DEP TRANS')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Align = baLeft
          Left = 771.024120000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'CK TRANS')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Align = baLeft
          Left = 854.173780000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'BALANCE DISPONIBLE')
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        Height = 18.897650000000000000
        Top = 275.905690000000000000
        Width = 980.410082000000000000
        DataSet = DBBalBanco
        DataSetName = 'DBBalBanco'
        RowCount = 0
        object Memo3: TfrxMemoView
          Align = baLeft
          Width = 196.535560000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DBBalBanco."BANCO"] - [DBBalBanco."BANCONOMBRE"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Align = baLeft
          Left = 196.535560000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'BALANTERIOR'
          DataSet = DBBalBanco
          DataSetName = 'DBBalBanco'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[DBBalBanco."BALANTERIOR"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Align = baLeft
          Left = 298.582870000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'DEPOSITOS'
          DataSet = DBBalBanco
          DataSetName = 'DBBalBanco'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[DBBalBanco."DEPOSITOS"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Align = baLeft
          Left = 370.393940000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CARGOSCRED'
          DataSet = DBBalBanco
          DataSetName = 'DBBalBanco'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[DBBalBanco."CARGOSCRED"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Align = baLeft
          Left = 438.425480000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CARGOSDEB'
          DataSet = DBBalBanco
          DataSetName = 'DBBalBanco'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[DBBalBanco."CARGOSDEB"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Align = baLeft
          Left = 578.268090000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'BALANCELIBRO'
          DataSet = DBBalBanco
          DataSetName = 'DBBalBanco'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[DBBalBanco."BALANCELIBRO"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Align = baLeft
          Left = 506.457020000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CHEQUES'
          DataSet = DBBalBanco
          DataSetName = 'DBBalBanco'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[DBBalBanco."CHEQUES"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Align = baLeft
          Left = 691.653990000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = DBBalBanco
          DataSetName = 'DBBalBanco'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[DBBalBanco."DEPOSTRANS"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Align = baLeft
          Left = 771.024120000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CHEQUESTRANS'
          DataSet = DBBalBanco
          DataSetName = 'DBBalBanco'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[DBBalBanco."CHEQUESTRANS"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Align = baLeft
          Left = 854.173780000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'BANCODISP'
          DataSet = DBBalBanco
          DataSetName = 'DBBalBanco'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[DBBalBanco."BANCODISP"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        Height = 22.677180000000000000
        Top = 317.480520000000000000
        Width = 980.410082000000000000
        object Memo22: TfrxMemoView
          Left = 198.000000000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = DBBalBanco
          DataSetName = 'DBBalBanco'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<DBBalBanco."BALANTERIOR">,DetailData1)]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Align = baLeft
          Left = 300.047310000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = DBBalBanco
          DataSetName = 'DBBalBanco'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<DBBalBanco."DEPOSITOS">,DetailData1)]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Align = baLeft
          Left = 371.858380000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = DBBalBanco
          DataSetName = 'DBBalBanco'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<DBBalBanco."CARGOSCRED">,DetailData1)]'
            '')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Align = baLeft
          Left = 439.889920000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = DBBalBanco
          DataSetName = 'DBBalBanco'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<DBBalBanco."CARGOSDEB">,DetailData1)]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Align = baLeft
          Left = 579.732530000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = DBBalBanco
          DataSetName = 'DBBalBanco'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<DBBalBanco."BALANCELIBRO">,DetailData1)]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Align = baLeft
          Left = 507.921460000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = DBBalBanco
          DataSetName = 'DBBalBanco'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<DBBalBanco."CHEQUES">,DetailData1)]'
            '')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Align = baLeft
          Left = 693.118430000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = DBBalBanco
          DataSetName = 'DBBalBanco'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<DBBalBanco."DEPOSTRANS">,DetailData1)]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Align = baLeft
          Left = 772.488560000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = DBBalBanco
          DataSetName = 'DBBalBanco'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<DBBalBanco."CHEQUESTRANS">,DetailData1)]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Align = baLeft
          Left = 855.638220000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = DBBalBanco
          DataSetName = 'DBBalBanco'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<DBBalBanco."BANCODISP">,DetailData1)]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Align = baLeft
          Width = 196.535560000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'TOTALES:   ')
          ParentFont = False
        end
      end
    end
  end
  object Search: TQrySearchDlgADO
    AliasName = DM.ADOSigma
    Left = 280
    Top = 128
  end
end
