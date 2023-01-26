object frmCashflow: TfrmCashflow
  Left = 315
  Top = 158
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Cashflow'
  ClientHeight = 408
  ClientWidth = 689
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
  object Panel2: TPanel
    Left = 0
    Top = 367
    Width = 689
    Height = 41
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    DesignSize = (
      689
      41)
    object Label3: TLabel
      Left = 8
      Top = 13
      Width = 19
      Height = 13
      Caption = 'A'#241'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object btprocesar: TBitBtn
      Left = 312
      Top = 8
      Width = 81
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Procesar'
      TabOrder = 0
      OnClick = btprocesarClick
      Glyph.Data = {
        66010000424D6601000000000000760000002800000014000000140000000100
        040000000000F000000000000000000000001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777888777777
        777777770000774448877777777777770000772244887777777777770000A222
        22488777777777770000A22222248877777777770000A2222222488777777777
        0000A22222222488777777770000A22222222248877777770000A22248A22224
        887777770000A222488A2222488777770000A2224887A2224488777700007A22
        48877A222488777700007A22477777A222488777000077777777777A22244877
        0000777777777777A222488700007777777777777A2224870000777777777777
        77A224480000777777777777777A224800007777777777777777A24800007777
        7777777777777A270000}
    end
    object btClose: TBitBtn
      Left = 608
      Top = 8
      Width = 73
      Height = 25
      Anchors = [akTop, akRight]
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
    object spAno: TSpinEdit
      Left = 32
      Top = 10
      Width = 49
      Height = 22
      TabStop = False
      EditorEnabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxValue = 3000
      MinValue = 1900
      ParentFont = False
      TabOrder = 2
      Value = 1900
    end
    object BitBtn1: TBitBtn
      Left = 400
      Top = 8
      Width = 91
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Imprimir mes'
      TabOrder = 3
      OnClick = BitBtn1Click
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
    object BitBtn2: TBitBtn
      Left = 496
      Top = 8
      Width = 107
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Imprimir semana'
      TabOrder = 4
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
  object PageControl1: TPageControl
    Left = 0
    Top = 33
    Width = 689
    Height = 334
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = 'Mensual'
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 681
        Height = 306
        Align = alClient
        DataSource = dsCashflow
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        PopupMenu = PopupMenu1
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDrawColumnCell = DBGrid1DrawColumnCell
        OnDblClick = Actualizartransaccin1Click
        Columns = <
          item
            Expanded = False
            FieldName = 'Concepto'
            Title.Caption = 'Descripci'#243'n'
            Width = 273
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Ene'
            Title.Alignment = taCenter
            Title.Caption = 'Enero'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Feb'
            Title.Alignment = taCenter
            Title.Caption = 'Febrero'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Mar'
            Title.Alignment = taCenter
            Title.Caption = 'Marzo'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Abr'
            Title.Alignment = taCenter
            Title.Caption = 'Abril'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'May'
            Title.Alignment = taCenter
            Title.Caption = 'Mayo'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Jun'
            Title.Alignment = taCenter
            Title.Caption = 'Junio'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Jul'
            Title.Alignment = taCenter
            Title.Caption = 'Julio'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Ago'
            Title.Alignment = taCenter
            Title.Caption = 'Agosto'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Sep'
            Title.Alignment = taCenter
            Title.Caption = 'Septiembre'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Oct'
            Title.Alignment = taCenter
            Title.Caption = 'Octubre'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Nov'
            Title.Alignment = taCenter
            Title.Caption = 'Noviembre'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Dic'
            Title.Alignment = taCenter
            Title.Caption = 'Diciembre'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Total'
            Title.Alignment = taCenter
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Porciento'
            Title.Alignment = taCenter
            Title.Caption = '%'
            Width = 48
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Semanal'
      ImageIndex = 1
      object DBGrid2: TDBGrid
        Left = 0
        Top = 33
        Width = 681
        Height = 273
        Align = alClient
        DataSource = dsCashflowSemana
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        PopupMenu = PopupMenu1
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDrawColumnCell = DBGrid2DrawColumnCell
        OnDblClick = DBGrid2DblClick
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 681
        Height = 33
        Align = alTop
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 1
        object Label1: TLabel
          Left = 8
          Top = 8
          Width = 29
          Height = 13
          Caption = 'Fecha'
        end
        object fecha: TDateTimePicker
          Left = 48
          Top = 8
          Width = 81
          Height = 21
          Date = 40449.000000000000000000
          Time = 40449.000000000000000000
          TabOrder = 0
        end
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 689
    Height = 33
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 2
    object Label2: TLabel
      Left = 8
      Top = 8
      Width = 33
      Height = 13
      Caption = 'Centro'
    end
    object Label4: TLabel
      Left = 128
      Top = 8
      Width = 31
      Height = 13
      Caption = 'MapID'
    end
    object edcentro: TEdit
      Left = 48
      Top = 8
      Width = 65
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
      TabOrder = 0
    end
    object edmap: TEdit
      Left = 168
      Top = 8
      Width = 65
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
      TabOrder = 1
    end
  end
  object QCashflow: TADOStoredProc
    Connection = DM.ADOSigma
    ProcedureName = 'pr_cashflow_mensual;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@emp'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@ano'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@cen'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@map'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 136
    Top = 184
    object QCashflowSec: TAutoIncField
      FieldName = 'Sec'
      ReadOnly = True
    end
    object QCashflowNegrita: TStringField
      FieldName = 'Negrita'
      Size = 1
    end
    object QCashflowConcepto: TStringField
      FieldName = 'Concepto'
      Size = 100
    end
    object QCashflowEne: TBCDField
      FieldName = 'Ene'
      currency = True
      Precision = 19
    end
    object QCashflowFeb: TBCDField
      FieldName = 'Feb'
      currency = True
      Precision = 19
    end
    object QCashflowMar: TBCDField
      FieldName = 'Mar'
      currency = True
      Precision = 19
    end
    object QCashflowAbr: TBCDField
      FieldName = 'Abr'
      currency = True
      Precision = 19
    end
    object QCashflowMay: TBCDField
      FieldName = 'May'
      currency = True
      Precision = 19
    end
    object QCashflowJun: TBCDField
      FieldName = 'Jun'
      currency = True
      Precision = 19
    end
    object QCashflowJul: TBCDField
      FieldName = 'Jul'
      currency = True
      Precision = 19
    end
    object QCashflowAgo: TBCDField
      FieldName = 'Ago'
      currency = True
      Precision = 19
    end
    object QCashflowSep: TBCDField
      FieldName = 'Sep'
      currency = True
      Precision = 19
    end
    object QCashflowOct: TBCDField
      FieldName = 'Oct'
      currency = True
      Precision = 19
    end
    object QCashflowNov: TBCDField
      FieldName = 'Nov'
      currency = True
      Precision = 19
    end
    object QCashflowDic: TBCDField
      FieldName = 'Dic'
      currency = True
      Precision = 19
    end
    object QCashflowTotal: TBCDField
      FieldName = 'Total'
      currency = True
      Precision = 19
    end
    object QCashflowPorciento: TBCDField
      FieldName = 'Porciento'
      DisplayFormat = '##0.00%'
      Precision = 19
    end
    object QCashflowGru: TIntegerField
      FieldName = 'Gru'
    end
    object QCashflowSub: TIntegerField
      FieldName = 'Sub'
    end
    object QCashflowCon: TIntegerField
      FieldName = 'Con'
    end
    object QCashflowOperacion: TStringField
      FieldName = 'Operacion'
      Size = 1
    end
  end
  object dsCashflow: TDataSource
    DataSet = QCashflow
    OnDataChange = dsCashflowDataChange
    Left = 168
    Top = 184
  end
  object PopupMenu1: TPopupMenu
    Left = 248
    Top = 184
    object Actualizartransaccin1: TMenuItem
      Caption = 'Transacciones'
      OnClick = Actualizartransaccin1Click
    end
  end
  object QCashflowSemanal: TADOStoredProc
    Connection = DM.ADOSigma
    ProcedureName = 'pr_cashflow_semanal;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@emp'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@fecha'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@cen'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@map'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 136
    Top = 216
  end
  object dsCashflowSemana: TDataSource
    DataSet = QCashflowSemanal
    Left = 168
    Top = 216
  end
  object Search: TQrySearchDlgADO
    AliasName = DM.ADOSigma
    Left = 372
    Top = 177
  end
end
