object frmCierreDia: TfrmCierreDia
  Left = 323
  Top = 165
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Cierre del D'#237'a'
  ClientHeight = 683
  ClientWidth = 1370
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
  OnClose = FormClose
  OnCreate = FormCreate
  DesignSize = (
    1370
    683)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 72
    Width = 76
    Height = 13
    Caption = 'Fecha del cierre'
  end
  object StaticText1: TStaticText
    Left = 8
    Top = 8
    Width = 417
    Height = 49
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = 
      'EL CIERRE DEL DIA BLOQUEA TODAS LAS OPERACIONES CON DOCUMENTOS T' +
      'ALES COMO FACTURAS, RECIBOS, DESEMBOLSOS, NOTAS DE CREDITO, PAGO' +
      'S A PROVEEDORES'
    Color = clSilver
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 0
  end
  object Fecha: TDateTimePicker
    Left = 104
    Top = 72
    Width = 81
    Height = 21
    Date = 37637.000000000000000000
    Time = 37637.000000000000000000
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object btClose: TBitBtn
    Left = 344
    Top = 120
    Width = 75
    Height = 25
    Caption = '&Salir'
    TabOrder = 2
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
  object BitBtn1: TBitBtn
    Left = 248
    Top = 120
    Width = 91
    Height = 25
    Caption = 'Reversar cierre'
    TabOrder = 3
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 152
    Top = 120
    Width = 91
    Height = 25
    Caption = 'Processar cierre'
    TabOrder = 4
    OnClick = BitBtn2Click
  end
  object PageControl1: TPageControl
    Left = 1000
    Top = 104
    Width = 1329
    Height = 534
    ActivePage = TabSheet1
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 5
    Visible = False
    object TabSheet1: TTabSheet
      Caption = 'VENTAS CAJEROS'
      object DBGrid4: TDBGrid
        Left = 0
        Top = 0
        Width = 1321
        Height = 506
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
        ColWidths = (
          168
          100
          100
          100
          100)
      end
    end
  end
  object btnRefreshResEje: TBitBtn
    Left = 996
    Top = 52
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Refrescar'
    TabOrder = 6
    Visible = False
    OnClick = btnRefreshResEjeClick
  end
  object btnImprimirResEje: TBitBtn
    Left = 1076
    Top = 52
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Imprimir'
    TabOrder = 7
    Visible = False
    OnClick = btnImprimirResEjeClick
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
  object btnRefrescarCuadCaj: TBitBtn
    Left = 984
    Top = 16
    Width = 83
    Height = 25
    Caption = 'Refrescar >>'
    TabOrder = 8
    Visible = False
    OnClick = btnRefrescarCuadCajClick
  end
  object btnImprimirCuadCaj: TBitBtn
    Left = 1072
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Imprimir'
    TabOrder = 9
    Visible = False
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
    Left = 232
    Top = 344
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
    Left = 264
    Top = 344
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
    Left = 384
    Top = 368
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
  object QResumen: TADOQuery
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
      'select * from pr_resumen_ejecutivo_caja (:emp, :fec1, :fec2)')
    Left = 384
    Top = 336
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
    Left = 416
    Top = 336
  end
  object Query1: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <>
    Left = 536
    Top = 40
  end
  object QFormas: TADOQuery
    Connection = DM.ADOSigma
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
        Name = 'FEC1'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'FEC2'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'CAJ1'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'CAJ2'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'FORMA'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'CAJA'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'emp2'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT a.*, f.fpa_sumaefectivocuadre FROM PR_CUADRE_FORMASPAGO '
      '(:EMP, :SUC, :FEC1, :FEC2, :CAJ1, :CAJ2, :FORMA, :CAJA) a,'
      'formaspago f '
      'where f.emp_codigo = :emp2 and f.fpa_codigo = a.codigo')
    Left = 571
    Top = 152
    object QFormasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'PR_CUADRE_FORMASPAGO.CODIGO'
    end
    object QFormasFORMA: TIBStringField
      FieldName = 'FORMA'
      Origin = 'PR_CUADRE_FORMASPAGO.FORMA'
      Size = 60
    end
    object QFormasMONTO: TFloatField
      FieldName = 'MONTO'
      Origin = 'PR_CUADRE_FORMASPAGO.MONTO'
      currency = True
    end
    object QFormasid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object QFormasfpa_sumaefectivocuadre: TStringField
      FieldName = 'fpa_sumaefectivocuadre'
      Size = 5
    end
  end
  object QFacturas: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <
      item
        Name = 'FEC'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'CAJ1'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'CAJ2'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'EMP'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'SUC'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT'
      'F.EMP_CODIGO, F.SUC_CODIGO, F.FAC_FORMA,'
      'F.TFA_CODIGO, T.TFA_NOMBRE, T.TFA_ACTBALANCE,'
      'SUM(F.FAC_TOTAL) AS MONTO'
      'FROM'
      'FACTURAS F, TIPOSFACTURA T'
      'WHERE'
      'F.EMP_CODIGO = T.EMP_CODIGO'
      'AND F.TFA_CODIGO = T.TFA_CODIGO'
      'AND F.FAC_STATUS <> '#39'ANU'#39
      'AND F.FAC_FECHA = convert(datetime,:FEC,105)'
      'AND F.CAJ_CODIGO BETWEEN :CAJ1 AND :CAJ2'
      'AND F.EMP_CODIGO = :EMP'
      'AND F.SUC_CODIGO = :SUC'
      'AND (F.FAC_HOLD <> '#39'True'#39' or F.FAC_HOLD is null)'
      'GROUP BY'
      'F.EMP_CODIGO, F.SUC_CODIGO, F.FAC_FORMA,'
      'F.TFA_CODIGO, T.TFA_NOMBRE, T.TFA_ACTBALANCE')
    Left = 520
    Top = 152
    object QFacturasTFA_NOMBRE: TIBStringField
      FieldName = 'TFA_NOMBRE'
      Size = 60
    end
    object QFacturasMONTO: TFloatField
      FieldName = 'MONTO'
      currency = True
    end
    object QFacturasEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
    end
    object QFacturasSUC_CODIGO: TIntegerField
      FieldName = 'SUC_CODIGO'
    end
    object QFacturasFAC_FORMA: TStringField
      FieldName = 'FAC_FORMA'
      Size = 1
    end
    object QFacturasTFA_CODIGO: TIntegerField
      FieldName = 'TFA_CODIGO'
    end
    object QFacturasTFA_ACTBALANCE: TStringField
      FieldName = 'TFA_ACTBALANCE'
      Size = 5
    end
  end
  object QDetalleFactura: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
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
        Name = 'suc_codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'forma1'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end
      item
        Name = 'forma2'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end
      item
        Name = 'tfa_codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'fec1'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'fec2'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'caja1'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'caja2'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'cajero1'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'cajero2'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'fac_numero, convert(datetime,fac_fecha,105) as fecha,'
      'fac_total, fac_status'
      'from'
      'facturas'
      'where'
      'emp_codigo = :emp_codigo'
      'and suc_codigo = :suc_codigo'
      'and fac_forma between :forma1 and :forma2'
      'and tfa_codigo = :tfa_codigo'
      
        'and fac_fecha between convert(datetime,:fec1,105) and convert(da' +
        'tetime,:fec2,105)'
      'and fac_caja between :caja1 and :caja2'
      'and caj_codigo between :cajero1 and :cajero2'
      'AND (FAC_HOLD <> '#39'True'#39' or FAC_HOLD is null)'
      'order by'
      'fac_numero')
    Left = 635
    Top = 152
    object QDetalleFacturafac_numero: TIntegerField
      FieldName = 'fac_numero'
    end
    object QDetalleFacturafecha: TDateTimeField
      FieldName = 'fecha'
      ReadOnly = True
    end
    object QDetalleFacturafac_total: TBCDField
      FieldName = 'fac_total'
      currency = True
      Precision = 15
      Size = 2
    end
    object QDetalleFacturafac_status: TStringField
      FieldName = 'fac_status'
      Size = 3
    end
  end
  object QRecibos: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <
      item
        Name = 'emp'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'suc'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'fec1'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'fec2'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'caja1'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'caja2'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'cajero1'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'cajero2'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'rec_numero, rec_fecha, rec_monto, rec_status, rec_retencion'
      'from'
      'recibos'
      'where'
      'emp_codigo = :emp'
      'and suc_codigo = :suc'
      
        'and rec_fecha between convert(datetime, :fec1, 105) and convert(' +
        'datetime, :fec2, 105)'
      'and rec_caja between :caja1 and :caja2'
      'and caj_codigo between :cajero1 and :cajero2'
      'order by'
      'rec_numero')
    Left = 773
    Top = 152
    object QRecibosrec_numero: TIntegerField
      FieldName = 'rec_numero'
    end
    object QRecibosrec_fecha: TDateTimeField
      FieldName = 'rec_fecha'
    end
    object QRecibosrec_monto: TBCDField
      FieldName = 'rec_monto'
      currency = True
      Precision = 15
      Size = 2
    end
    object QRecibosrec_status: TStringField
      FieldName = 'rec_status'
      Size = 3
    end
    object QRecibosrec_retencion: TBCDField
      FieldName = 'rec_retencion'
      currency = True
      Precision = 15
      Size = 2
    end
  end
  object QDesembolsos: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <
      item
        Name = 'emp'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'suc'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'fec1'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'fec2'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'caja1'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'caja2'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'cajero1'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'cajero2'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'des_numero, des_fecha, des_monto, des_status'
      'from'
      'desembolsos'
      'where'
      'emp_codigo = :emp'
      'and suc_codigo = :suc'
      
        'and des_fecha between convert(datetime,:fec1,105) and convert(da' +
        'tetime,:fec2,105)'
      'and des_caja between :caja1 and :caja2'
      'and caj_codigo between :cajero1 and :cajero2'
      'order by'
      'des_numero')
    Left = 711
    Top = 152
    object QDesembolsosdes_numero: TIntegerField
      FieldName = 'des_numero'
    end
    object QDesembolsosdes_fecha: TDateTimeField
      FieldName = 'des_fecha'
    end
    object QDesembolsosdes_monto: TBCDField
      FieldName = 'des_monto'
      currency = True
      Precision = 15
      Size = 2
    end
    object QDesembolsosdes_status: TStringField
      FieldName = 'des_status'
      Size = 3
    end
  end
  object QItbis: TADOQuery
    Connection = DM.ADOSigma
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
        Name = 'suc_codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'forma1'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end
      item
        Name = 'forma2'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end
      item
        Name = 'fec1'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'fec2'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'caja1'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'caja2'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'cajero1'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'cajero2'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'sum(fac_itbis) as itbis'
      'from'
      'facturas'
      'where'
      'emp_codigo = :emp_codigo'
      'and suc_codigo = :suc_codigo'
      'and fac_forma between :forma1 and :forma2'
      
        'and fac_fecha between convert(datetime,:fec1,105) and convert(da' +
        'tetime,:fec2,105)'
      'and fac_caja between :caja1 and :caja2'
      'and caj_codigo between :cajero1 and :cajero2'
      'AND (FAC_HOLD <> '#39'True'#39' or FAC_HOLD is null)')
    Left = 824
    Top = 152
    object QItbisitbis: TBCDField
      FieldName = 'itbis'
      ReadOnly = True
      currency = True
      Precision = 32
      Size = 2
    end
  end
end
