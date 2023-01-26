object frmConsResumenEjecutivo: TfrmConsResumenEjecutivo
  Left = 715
  Top = 189
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Resumen Ejecutivo'
  ClientHeight = 401
  ClientWidth = 951
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
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnPaint = FormPaint
  DesignSize = (
    951
    401)
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 585
    Height = 33
    BevelInner = bvLowered
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 33
      Height = 13
      Caption = 'Fecha'
    end
    object fecha1: TDateTimePicker
      Left = 48
      Top = 8
      Width = 96
      Height = 21
      Date = 39733.000000000000000000
      Time = 39733.000000000000000000
      TabOrder = 0
    end
    object fecha2: TDateTimePicker
      Left = 144
      Top = 8
      Width = 96
      Height = 21
      Date = 39733.000000000000000000
      Time = 39733.000000000000000000
      TabOrder = 1
    end
    object cbempresa: TDBLookupComboBox
      Left = 245
      Top = 8
      Width = 195
      Height = 21
      KeyField = 'emp_codigo'
      ListField = 'emp_nombre'
      ListSource = dsEmpresas
      TabOrder = 2
      OnClick = btRefreshClick
    end
  end
  object btRefresh: TBitBtn
    Left = 702
    Top = 371
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Refrescar'
    TabOrder = 1
    OnClick = btRefreshClick
  end
  object BitBtn2: TBitBtn
    Left = 782
    Top = 371
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Imprimir'
    TabOrder = 2
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
  object btClose: TBitBtn
    Left = 862
    Top = 371
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = '&Salir'
    TabOrder = 3
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
    Left = 8
    Top = 48
    Width = 935
    Height = 316
    ActivePage = TabSheet1
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 4
    object TabSheet1: TTabSheet
      Caption = 'VENTAS CAJEROS'
      object DBGrid4: TDBGrid
        Left = 0
        Top = 0
        Width = 927
        Height = 288
        Align = alClient
        Color = clInfoBk
        Ctl3D = False
        DataSource = dsResumen
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'usu_nombre'
            Title.Caption = 'Cajero'
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NombreCaja'
            Title.Alignment = taCenter
            Title.Caption = 'Caja'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Total'
            Title.Alignment = taCenter
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'efectivo'
            Title.Alignment = taCenter
            Title.Caption = 'Efectivo'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cheque'
            Title.Alignment = taCenter
            Title.Caption = 'Cheque'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'tarjeta'
            Title.Alignment = taCenter
            Title.Caption = 'Tarjeta'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'credito'
            Title.Alignment = taCenter
            Title.Caption = 'Credito'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'bonos'
            Title.Alignment = taCenter
            Title.Caption = 'Bonos'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OtrosBonos'
            Title.Caption = 'Otros Bonos'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nc'
            Title.Alignment = taCenter
            Title.Caption = 'Nota CR'
            Width = 80
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'RESUMEN OPERACIONES'
      ImageIndex = 1
      object sgoperaciones: TStringGrid
        Left = 0
        Top = 0
        Width = 577
        Height = 213
        Align = alClient
        ColCount = 6
        Ctl3D = True
        DefaultRowHeight = 18
        FixedCols = 0
        RowCount = 11
        FixedRows = 0
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine]
        ParentCtl3D = False
        TabOrder = 0
        OnDrawCell = sgoperacionesDrawCell
        ColWidths = (
          163
          29
          93
          152
          28
          101)
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'RESUMEN CONTABILIDAD'
      ImageIndex = 2
      object sgcontabilidad: TStringGrid
        Left = 0
        Top = 0
        Width = 577
        Height = 213
        Align = alClient
        Ctl3D = True
        DefaultColWidth = 100
        DefaultRowHeight = 18
        FixedCols = 0
        RowCount = 3
        ParentCtl3D = False
        TabOrder = 0
        OnDrawCell = sgcontabilidadDrawCell
        ColWidths = (
          168
          100
          100
          100
          100)
      end
    end
  end
  object ckdetallado: TCheckBox
    Left = 8
    Top = 371
    Width = 113
    Height = 17
    Anchors = [akLeft, akBottom]
    Caption = 'Imprimir detallado'
    Checked = True
    State = cbChecked
    TabOrder = 5
  end
  object QResumen: TADOQuery
    Connection = DM.ADOSigma
    OnCalcFields = QResumenCalcFields
    CommandTimeout = 120
    Parameters = <
      item
        Name = 'emp'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'fec1'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'fec2'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from pr_resumen_ejecutivo_caja (:emp, :fec1, :fec2)')
    Left = 344
    Top = 144
    object QResumenusu_codigo: TIntegerField
      FieldName = 'usu_codigo'
    end
    object QResumenusu_nombre: TStringField
      FieldName = 'usu_nombre'
      Size = 60
    end
    object QResumencaja: TIntegerField
      FieldName = 'caja'
    end
    object QResumenTotal: TBCDField
      FieldName = 'Total'
      ReadOnly = True
      currency = True
      Precision = 32
      Size = 2
    end
    object QResumenefectivo: TBCDField
      FieldName = 'efectivo'
      currency = True
      Precision = 19
    end
    object QResumencheque: TBCDField
      FieldName = 'cheque'
      currency = True
      Precision = 19
    end
    object QResumentarjeta: TBCDField
      FieldName = 'tarjeta'
      currency = True
      Precision = 19
    end
    object QResumencredito: TBCDField
      FieldName = 'credito'
      currency = True
      Precision = 19
    end
    object QResumenbonos2: TBCDField
      FieldName = 'bonos'
      currency = True
      Precision = 19
    end
    object QResumenbonos: TBCDField
      FieldName = 'OtrosBonos'
      currency = True
      Precision = 19
    end
    object QResumennc: TBCDField
      FieldName = 'nc'
      currency = True
      Precision = 19
    end
    object QResumenNombreCaja: TStringField
      FieldName = 'NombreCaja'
    end
    object QResumendescuento: TBCDField
      FieldName = 'descuento'
      Precision = 19
    end
  end
  object dsResumen: TDataSource
    DataSet = QResumen
    Left = 376
    Top = 144
  end
  object QOperaciones: TADOQuery
    Connection = DM.ADOSigma
    CommandTimeout = 120
    Parameters = <
      item
        Name = 'emp'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'fec1'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'fec2'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from pr_resumen_ejecutivo (:emp, :fec1, :fec2)')
    Left = 344
    Top = 176
    object QOperacionesid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object QOperacionesdescrip: TStringField
      FieldName = 'descrip'
      Size = 30
    end
    object QOperacionescant: TBCDField
      FieldName = 'cant'
      Precision = 15
      Size = 2
    end
    object QOperacionestotal: TBCDField
      FieldName = 'total'
      Precision = 18
      Size = 2
    end
  end
  object QEmpresas: TADOQuery
    Connection = DM.ADOSigma
    CommandTimeout = 120
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
      'select a.usu_codigo,'
      'e.emp_codigo, e.emp_nombre'
      'from'
      'empresas e, empaccesos a'
      'where'
      'e.emp_codigo = a.emp_codigo'
      'and e.emp_codigo= :emp_codigo'
      'and a.usu_codigo = :usu'
      'and e.emp_status = '#39'ACT'#39
      'order by'
      '1')
    Left = 192
    Top = 152
    object QEmpresasemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QEmpresasemp_nombre: TStringField
      FieldName = 'emp_nombre'
      Size = 60
    end
    object QEmpresasusu_codigo: TIntegerField
      FieldName = 'usu_codigo'
    end
  end
  object dsEmpresas: TDataSource
    DataSet = QEmpresas
    Left = 224
    Top = 152
  end
end
