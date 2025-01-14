object frmConsComision: TfrmConsComision
  Left = 308
  Top = 200
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Consuta de comisiones por vendedor'
  ClientHeight = 416
  ClientWidth = 676
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 676
    Height = 41
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object Label6: TLabel
      Left = 16
      Top = 8
      Width = 30
      Height = 13
      Caption = 'Fecha'
    end
    object Label12: TLabel
      Left = 223
      Top = 12
      Width = 46
      Height = 13
      Caption = 'Vendedor'
    end
    object btVendedor: TSpeedButton
      Left = 310
      Top = 9
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
      OnClick = btVendedorClick
    end
    object Fecha1: TDateTimePicker
      Left = 56
      Top = 8
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
      TabOrder = 0
    end
    object Fecha2: TDateTimePicker
      Left = 136
      Top = 8
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
    object tVendedor: TEdit
      Left = 335
      Top = 10
      Width = 330
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
      TabOrder = 2
    end
    object edVendedor: TEdit
      Left = 274
      Top = 10
      Width = 33
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
      TabOrder = 3
      OnChange = edVendedorChange
      OnKeyDown = edVendedorKeyDown
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 376
    Width = 676
    Height = 40
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    DesignSize = (
      676
      40)
    object BitBtn2: TBitBtn
      Left = 392
      Top = 5
      Width = 75
      Height = 30
      Anchors = [akTop, akRight]
      Caption = 'Imprimir'
      TabOrder = 0
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
    object btRefresh: TBitBtn
      Left = 304
      Top = 5
      Width = 75
      Height = 30
      Anchors = [akTop, akRight]
      Caption = 'Refrescar >>'
      TabOrder = 1
      OnClick = btRefreshClick
    end
    object btClose: TBitBtn
      Left = 592
      Top = 5
      Width = 75
      Height = 30
      Anchors = [akTop, akRight]
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
    object btnTickePos: TBitBtn
      Left = 480
      Top = 5
      Width = 97
      Height = 30
      Hint = 'Imprime comisiones de  venta proveniente  del POS'
      Anchors = [akTop, akRight]
      Caption = 'Ticket POS'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
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
    Top = 41
    Width = 676
    Height = 335
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = 'Facturas'
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 668
        Height = 307
        Align = alClient
        Color = clInfoBk
        DataSource = dsFacturas
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnColEnter = DBGrid1ColEnter
        OnEnter = DBGrid1Enter
        Columns = <
          item
            Expanded = False
            FieldName = 'SUC_NOMBRE'
            Title.Caption = 'Sucursal'
            Width = 130
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'FAC_FORMA'
            Title.Alignment = taCenter
            Title.Caption = 'Grp'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'TFA_CODIGO'
            Title.Alignment = taCenter
            Title.Caption = 'Tipo'
            Width = 28
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'FAC_NUMERO'
            Title.Alignment = taCenter
            Title.Caption = 'N'#250'mero'
            Width = 50
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'FAC_FECHA'
            Title.Alignment = taCenter
            Title.Caption = 'Fecha'
            Width = 56
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FAC_NOMBRE'
            Title.Caption = 'Nombre del Cliente'
            Width = 210
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FAC_TOTAL'
            Title.Alignment = taCenter
            Title.Caption = 'Monto'
            Width = 58
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'fac_porccomision'
            Title.Caption = '%Com.'
            Width = 38
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FAC_COMISION'
            Title.Alignment = taCenter
            Title.Caption = 'Comisi'#243'n'
            Width = 48
            Visible = True
          end>
      end
      object cbGrupo: TRadioGroup
        Left = 394
        Top = 154
        Width = 183
        Height = 31
        Caption = 'Grupo'
        Columns = 3
        ItemIndex = 0
        Items.Strings = (
          'A'
          'B'
          'Todas')
        TabOrder = 1
        Visible = False
        OnClick = btRefreshClick
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Recibos'
      ImageIndex = 1
      object DBGrid2: TDBGrid
        Left = 0
        Top = 0
        Width = 668
        Height = 307
        Align = alClient
        Color = clInfoBk
        DataSource = dsRecibos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnColEnter = DBGrid2ColEnter
        OnEnter = DBGrid2Enter
        Columns = <
          item
            Expanded = False
            FieldName = 'SUC_NOMBRE'
            Title.Caption = 'Sucursal'
            Width = 125
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'REC_NUMERO'
            Title.Alignment = taCenter
            Title.Caption = 'N'#250'mero'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'REC_NUMEROMANUAL'
            Title.Alignment = taCenter
            Title.Caption = '# Manual'
            Width = 62
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'REC_FECHA'
            Title.Alignment = taCenter
            Title.Caption = 'Fecha'
            Width = 68
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'REC_NOMBRE'
            Title.Caption = 'Nombre del Cliente'
            Width = 163
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'REC_MONTO'
            Title.Alignment = taCenter
            Title.Caption = 'Monto'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'rec_porccomision'
            Title.Caption = '%Com.'
            Width = 41
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'REC_COMISION'
            Title.Alignment = taCenter
            Title.Caption = 'Comisi'#243'n'
            Width = 50
            Visible = True
          end>
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Devoluciones'
      ImageIndex = 2
      object DBGrid3: TDBGrid
        Left = 0
        Top = 0
        Width = 668
        Height = 307
        Align = alClient
        Color = clInfoBk
        DataSource = dsDevol
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'SUC_NOMBRE'
            Title.Caption = 'Sucursal'
            Width = 123
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DEV_NUMERO'
            Title.Alignment = taCenter
            Title.Caption = 'N'#250'mero'
            Width = 43
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DEV_FECHA'
            Title.Alignment = taCenter
            Title.Caption = 'Fecha'
            Width = 68
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DEV_NOMBRE'
            Title.Caption = 'Nombre del Cliente'
            Width = 242
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DEV_TOTAL'
            Title.Alignment = taCenter
            Title.Caption = 'Monto'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dev_porccomision'
            Title.Alignment = taCenter
            Title.Caption = '%Com.'
            Width = 38
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Comision'
            Title.Alignment = taCenter
            Width = 55
            Visible = True
          end>
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Cargos bancarios'
      ImageIndex = 3
      object DBGrid4: TDBGrid
        Left = 0
        Top = 0
        Width = 668
        Height = 307
        Align = alClient
        Color = clInfoBk
        DataSource = dsCargos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CAR_NUMERO'
            Title.Alignment = taCenter
            Title.Caption = 'N'#250'mero'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CAR_FECHA'
            Title.Alignment = taCenter
            Title.Caption = 'Fecha'
            Width = 68
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLI_NOMBRE'
            Title.Caption = 'Nombre del Cliente'
            Width = 220
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CAR_STATUS'
            Title.Alignment = taCenter
            Title.Caption = 'Status'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CAR_MONTO'
            Title.Alignment = taCenter
            Title.Caption = 'Monto'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CAR_COMISION'
            Title.Alignment = taCenter
            Title.Caption = 'Comision'
            Width = 55
            Visible = True
          end>
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Ticket POS'
      ImageIndex = 4
      object DBGrid5: TDBGrid
        Left = 0
        Top = 0
        Width = 668
        Height = 307
        Align = alClient
        Color = clInfoBk
        DataSource = dsFacturaPOS
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnColEnter = DBGrid1ColEnter
        OnEnter = DBGrid1Enter
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'FAC_NUMERO'
            Title.Alignment = taCenter
            Title.Caption = 'N'#250'mero'
            Width = 50
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'FAC_FECHA'
            Title.Alignment = taCenter
            Title.Caption = 'Fecha'
            Width = 56
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FAC_NOMBRE'
            Title.Caption = 'Nombre del Cliente'
            Width = 210
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'fac_total'
            Title.Alignment = taCenter
            Title.Caption = 'Monto'
            Width = 58
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'fac_porccomision'
            Title.Caption = '%Com.'
            Width = 38
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FAC_COMISION'
            Title.Alignment = taCenter
            Title.Caption = 'Comisi'#243'n'
            Width = 48
            Visible = True
          end>
      end
    end
  end
  object Search: TQrySearchDlgADO
    AliasName = DM.ADOSigma
    Left = 272
    Top = 216
  end
  object QFacturas: TADOQuery
    Connection = DM.ADOSigma
    OnCalcFields = QFacturasCalcFields
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
        Name = 'VEN'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'FECHA1'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'FECHA2'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT F.FAC_FORMA, F.TFA_CODIGO, F.FAC_NUMERO, F.FAC_FECHA, F.F' +
        'AC_STATUS, F.FAC_NOMBRE,'
      
        '             S.SUC_NOMBRE, F.FAC_COMISION, f.fac_porccomision,(f' +
        '.fac_total-fac_itbis) as fac_total, f.fac_itbis'
      'FROM FACTURAS F, SUCURSALES S'
      'WHERE F.EMP_CODIGO = S.EMP_CODIGO'
      '     AND F.SUC_CODIGO = S.SUC_CODIGO'
      '    AND F.EMP_CODIGO = :EMP'
      '    AND f.VEN_CODIGO = :VEN'
      '   AND F.FAC_STATUS <> '#39'ANU'#39
      
        '   AND F.FAC_FECHA BETWEEN convert(datetime,:FECHA1,105) AND con' +
        'vert(datetime,:FECHA2,105)'
      'ORDER BY F.FAC_FECHA')
    Left = 272
    Top = 120
    object QFacturasFAC_FORMA: TIBStringField
      FieldName = 'FAC_FORMA'
      Origin = 'FACTURAS.FAC_FORMA'
      Required = True
      Size = 1
    end
    object QFacturasTFA_CODIGO: TIntegerField
      FieldName = 'TFA_CODIGO'
      Origin = 'FACTURAS.TFA_CODIGO'
      Required = True
    end
    object QFacturasFAC_NUMERO: TIntegerField
      FieldName = 'FAC_NUMERO'
      Origin = 'FACTURAS.FAC_NUMERO'
      Required = True
      DisplayFormat = '000000'
    end
    object QFacturasFAC_FECHA: TDateTimeField
      FieldName = 'FAC_FECHA'
      Origin = 'FACTURAS.FAC_FECHA'
    end
    object QFacturasFAC_STATUS: TIBStringField
      FieldName = 'FAC_STATUS'
      Origin = 'FACTURAS.FAC_STATUS'
      Size = 3
    end
    object QFacturasFAC_NOMBRE: TIBStringField
      FieldName = 'FAC_NOMBRE'
      Origin = 'FACTURAS.FAC_NOMBRE'
      Size = 60
    end
    object QFacturasFAC_TOTAL: TFloatField
      FieldName = 'FAC_TOTAL'
      currency = True
    end
    object QFacturasComision: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Comision'
      currency = True
      Calculated = True
    end
    object QFacturasSUC_NOMBRE: TStringField
      FieldName = 'SUC_NOMBRE'
      Size = 60
    end
    object QFacturasFAC_COMISION: TBCDField
      FieldName = 'FAC_COMISION'
      currency = True
      Precision = 15
      Size = 2
    end
    object QFacturasfac_porccomision: TBCDField
      FieldName = 'fac_porccomision'
      OnChange = QFacturasfac_porccomisionChange
      currency = True
      Precision = 15
      Size = 2
    end
    object QFacturasfac_itbis: TBCDField
      FieldName = 'fac_itbis'
      Precision = 15
    end
  end
  object dsFacturas: TDataSource
    DataSet = QFacturas
    Left = 304
    Top = 120
  end
  object QRecibos: TADOQuery
    Connection = DM.ADOSigma
    OnCalcFields = QRecibosCalcFields
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
        Name = 'VEN'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'FECHA1'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'FECHA2'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      'SELECT'
      'R.REC_NUMERO, R.REC_NUMEROMANUAL, R.REC_NOMBRE, R.REC_FECHA, '
      'R.REC_MONTO, R.REC_STATUS, R.REC_COMISION,  S.SUC_NOMBRE,'
      'r.rec_porccomision'
      'FROM'
      'RECIBOS R, SUCURSALES S'
      'WHERE '
      'R.EMP_CODIGO = S.EMP_CODIGO'
      'AND R.SUC_CODIGO = S.SUC_CODIGO'
      'AND R.REC_STATUS <> '#39'ANU'#39
      'AND R.EMP_CODIGO = :EMP'
      'AND R.VEN_CODIGO = :VEN'
      
        'AND R.REC_FECHA BETWEEN convert(datetime,:FECHA1,105) AND conver' +
        't(datetime,:FECHA2,105)'
      'ORDER BY R.REC_FECHA')
    Left = 272
    Top = 152
    object QRecibosREC_NUMERO: TIntegerField
      FieldName = 'REC_NUMERO'
      Origin = 'RECIBOS.REC_NUMERO'
      Required = True
      DisplayFormat = '000000'
    end
    object QRecibosREC_NUMEROMANUAL: TIBStringField
      FieldName = 'REC_NUMEROMANUAL'
      Origin = 'RECIBOS.REC_NUMEROMANUAL'
      Size = 15
    end
    object QRecibosREC_NOMBRE: TIBStringField
      FieldName = 'REC_NOMBRE'
      Origin = 'RECIBOS.REC_NOMBRE'
      Size = 60
    end
    object QRecibosREC_FECHA: TDateTimeField
      FieldName = 'REC_FECHA'
      Origin = 'RECIBOS.REC_FECHA'
    end
    object QRecibosREC_MONTO: TIBBCDField
      FieldName = 'REC_MONTO'
      Origin = 'RECIBOS.REC_MONTO'
      currency = True
      Precision = 9
      Size = 2
    end
    object QRecibosREC_STATUS: TIBStringField
      FieldName = 'REC_STATUS'
      Origin = 'RECIBOS.REC_STATUS'
      Size = 3
    end
    object QRecibosREC_COMISION: TFloatField
      FieldName = 'REC_COMISION'
      Origin = 'RECIBOS.REC_COMISION'
      currency = True
    end
    object QRecibosSUC_NOMBRE: TStringField
      FieldName = 'SUC_NOMBRE'
      Size = 60
    end
    object QRecibosComision: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Comision'
      currency = True
      Calculated = True
    end
    object QRecibosrec_porccomision: TBCDField
      FieldName = 'rec_porccomision'
      OnChange = QRecibosrec_porccomisionChange
      currency = True
      Precision = 15
      Size = 2
    end
  end
  object dsRecibos: TDataSource
    DataSet = QRecibos
    Left = 304
    Top = 152
  end
  object QDevol: TADOQuery
    Connection = DM.ADOSigma
    OnCalcFields = QDevolCalcFields
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
        Name = 'VEN'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'FECHA1'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'FECHA2'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      'UPDATE DEVOLUCION '
      'SET dev_porccomision = F.fac_porccomision,'
      
        '    dev_comision = (F.fac_total-F.FAC_ITBIS)*(F.fac_porccomision' +
        '/100) '
      'FROM DEVOLUCION D '
      
        'INNER JOIN FACTURAS F ON D.EMP_CODIGO = F.EMP_CODIGO AND D.suc_c' +
        'odigo = F.suc_codigo AND D.fac_numero = F.fac_numero AND D.fac_f' +
        'orma = F.fac_forma AND D.tfa_codigo = F.tfa_codigo'
      ''
      ''
      'SELECT'
      
        'D.DEV_FECHA, D.DEV_NUMERO, D.DEV_STATUS, d.dev_comision, d.dev_p' +
        'orccomision,'
      
        'D.DEV_NOMBRE, S.SUC_NOMBRE, (d.dev_total-d.dev_itbis) as dev_tot' +
        'al'
      'FROM'
      'DEVOLUCION D, SUCURSALES S'
      'WHERE'
      'D.EMP_CODIGO = S.EMP_CODIGO'
      'AND D.SUC_CODIGO = S.SUC_CODIGO'
      'AND D.EMP_CODIGO = :EMP'
      'AND d.VEN_CODIGO = :VEN'
      'AND D.DEV_STATUS <> '#39'ANU'#39
      
        'AND D.DEV_FECHA BETWEEN convert(datetime,:FECHA1,105) AND conver' +
        't(datetime,:FECHA2,105)'
      'ORDER BY D.DEV_FECHA')
    Left = 272
    Top = 184
    object QDevolDEV_FECHA: TDateTimeField
      FieldName = 'DEV_FECHA'
      Origin = 'DEVOLUCION.DEV_FECHA'
    end
    object QDevolDEV_NUMERO: TIntegerField
      FieldName = 'DEV_NUMERO'
      Origin = 'DEVOLUCION.DEV_NUMERO'
      Required = True
      DisplayFormat = '000000'
    end
    object QDevolDEV_STATUS: TIBStringField
      FieldName = 'DEV_STATUS'
      Origin = 'DEVOLUCION.DEV_STATUS'
      Size = 3
    end
    object QDevolDEV_TOTAL: TFloatField
      FieldName = 'DEV_TOTAL'
      Origin = 'DEVOLUCION.DEV_TOTAL'
      currency = True
    end
    object QDevolComision: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Comision'
      currency = True
      Calculated = True
    end
    object QDevolDEV_NOMBRE: TIBStringField
      FieldName = 'DEV_NOMBRE'
      Size = 60
    end
    object QDevolSUC_NOMBRE: TStringField
      FieldName = 'SUC_NOMBRE'
      Size = 60
    end
    object QDevoldev_comision: TBCDField
      FieldName = 'dev_comision'
      Precision = 15
      Size = 2
    end
    object QDevoldev_porccomision: TBCDField
      FieldName = 'dev_porccomision'
      OnChange = QDevoldev_porccomisionChange
      Precision = 15
      Size = 2
    end
  end
  object dsDevol: TDataSource
    DataSet = QDevol
    Left = 304
    Top = 184
  end
  object QCargos: TADOQuery
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
        Name = 'FEC1'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'FEC2'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'VEN'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT'
      'B.BAN_NOMBRE, C.CAR_NUMERO, C.CAR_FECHA,'
      'C.CAR_CONCEPTO1, C.CAR_CONCEPTO2,'
      'C.CAR_MONTO, C.CAR_STATUS, '
      'C.CAR_TIPO, U.USU_NOMBRE, C.EMP_CODIGO,'
      'C.BAN_CODIGO, C.CAR_ANO, C.CAR_MES, C.CAR_FORMA,'
      'C.CAR_ABONO, C.SUC_CODIGO, CL.CLI_NOMBRE,'
      'C.REC_NUMERO, V.VEN_NOMBRE, C.CAR_COMISION'
      'FROM'
      'CARGOSBANCO C'
      'LEFT OUTER JOIN CLIENTES CL ON'
      '(C.EMP_CODIGO = CL.EMP_CODIGO'
      'AND C.CLI_CODIGO = CL.CLI_CODIGO)'
      'LEFT OUTER JOIN RECIBOS R ON'
      '(C.EMP_CODIGO = R.EMP_CODIGO'
      'AND C.SUC_CODIGO = R.SUC_CODIGO'
      'AND C.REC_NUMERO = R.REC_NUMERO)'
      'LEFT OUTER JOIN VENDEDORES V ON'
      '(R.EMP_CODIGO = V.EMP_CODIGO'
      'AND R.VEN_CODIGO = V.VEN_CODIGO), BANCOS B, USUARIOS U'
      'WHERE'
      'C.EMP_CODIGO = B.EMP_CODIGO'
      'AND C.BAN_CODIGO = B.BAN_CODIGO'
      'AND C.SUC_CODIGO = B.SUC_CODIGO'
      'AND C.USU_CODIGO = U.USU_CODIGO'
      'AND C.EMP_CODIGO = :EMP'
      
        'AND C.CAR_FECHA BETWEEN CONVERT(DATETIME, :FEC1, 105) AND CONVER' +
        'T(DATETIME, :FEC2, 105)'
      'AND V.VEN_CODIGO = :VEN')
    Left = 352
    Top = 120
    object QCargosBAN_NOMBRE: TIBStringField
      FieldName = 'BAN_NOMBRE'
      Origin = 'BANCOS.BAN_NOMBRE'
      Size = 60
    end
    object QCargosCAR_NUMERO: TIntegerField
      FieldName = 'CAR_NUMERO'
      Origin = 'CARGOSBANCO.CAR_NUMERO'
      Required = True
      DisplayFormat = '000000'
    end
    object QCargosCAR_FECHA: TDateTimeField
      FieldName = 'CAR_FECHA'
      Origin = 'CARGOSBANCO.CAR_FECHA'
    end
    object QCargosCAR_CONCEPTO1: TIBStringField
      FieldName = 'CAR_CONCEPTO1'
      Origin = 'CARGOSBANCO.CAR_CONCEPTO1'
      Size = 60
    end
    object QCargosCAR_CONCEPTO2: TIBStringField
      FieldName = 'CAR_CONCEPTO2'
      Origin = 'CARGOSBANCO.CAR_CONCEPTO2'
      Size = 60
    end
    object QCargosCAR_MONTO: TFloatField
      FieldName = 'CAR_MONTO'
      Origin = 'CARGOSBANCO.CAR_MONTO'
      currency = True
    end
    object QCargosCAR_STATUS: TIBStringField
      FieldName = 'CAR_STATUS'
      Origin = 'CARGOSBANCO.CAR_STATUS'
      Size = 3
    end
    object QCargosCAR_TIPO: TIBStringField
      FieldName = 'CAR_TIPO'
      Origin = 'CARGOSBANCO.CAR_TIPO'
      Size = 3
    end
    object QCargosUSU_NOMBRE: TIBStringField
      FieldName = 'USU_NOMBRE'
      Origin = 'USUARIOS.USU_NOMBRE'
      Size = 60
    end
    object QCargosEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'CARGOSBANCO.EMP_CODIGO'
      Required = True
    end
    object QCargosBAN_CODIGO: TIntegerField
      FieldName = 'BAN_CODIGO'
      Origin = 'CARGOSBANCO.BAN_CODIGO'
      Required = True
    end
    object QCargosCAR_ANO: TIntegerField
      FieldName = 'CAR_ANO'
      Origin = 'CARGOSBANCO.CAR_ANO'
      Required = True
    end
    object QCargosCAR_MES: TIntegerField
      FieldName = 'CAR_MES'
      Origin = 'CARGOSBANCO.CAR_MES'
      Required = True
    end
    object QCargosCAR_FORMA: TIBStringField
      FieldName = 'CAR_FORMA'
      Origin = 'CARGOSBANCO.CAR_FORMA'
      Size = 1
    end
    object QCargosCAR_ABONO: TFloatField
      FieldName = 'CAR_ABONO'
      Origin = 'CARGOSBANCO.CAR_ABONO'
      currency = True
    end
    object QCargosSUC_CODIGO: TIntegerField
      FieldName = 'SUC_CODIGO'
    end
    object QCargosCLI_NOMBRE: TStringField
      FieldName = 'CLI_NOMBRE'
      Size = 60
    end
    object QCargosREC_NUMERO: TIntegerField
      FieldName = 'REC_NUMERO'
    end
    object QCargosVEN_NOMBRE: TStringField
      FieldName = 'VEN_NOMBRE'
      Size = 60
    end
    object QCargosCAR_COMISION: TBCDField
      FieldName = 'CAR_COMISION'
      currency = True
      Precision = 15
      Size = 2
    end
  end
  object dsCargos: TDataSource
    DataSet = QCargos
    Left = 384
    Top = 120
  end
  object adoFacturaPOS: TADOQuery
    Connection = DM.ADOSigma
    OnCalcFields = QFacturasCalcFields
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
        Name = 'VEN'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'FECHA1'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'FECHA2'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      
        'Select Ticket FAC_NUMERO,fecha FAC_FECHA,[status] as FAC_STATUS,' +
        'nombre  FAC_NOMBRE,'
      'tk_Monto_comision FAC_COMISION,porciento_Com fac_porccomision,'
      '(Total - itbis) fac_total,itbis'
      'From dbo.Montos_Ticket'
      'Where emp_codigo = :EMP'
      'and ven_codigo = :VEN'
      'and status <> '#39'ANU'#39
      
        'and fecha BETWEEN convert(datetime,:FECHA1,105) AND convert(date' +
        'time,:FECHA2,105)'
      'Order by Fecha')
    Left = 352
    Top = 152
    object adoFacturaPOSFAC_NUMERO: TIntegerField
      FieldName = 'FAC_NUMERO'
    end
    object adoFacturaPOSFAC_FECHA: TDateTimeField
      FieldName = 'FAC_FECHA'
    end
    object adoFacturaPOSFAC_STATUS: TStringField
      FieldName = 'FAC_STATUS'
      Size = 3
    end
    object adoFacturaPOSFAC_NOMBRE: TStringField
      FieldName = 'FAC_NOMBRE'
      Size = 80
    end
    object adoFacturaPOSFAC_COMISION: TBCDField
      FieldName = 'FAC_COMISION'
      Precision = 15
      Size = 2
    end
    object adoFacturaPOSfac_porccomision: TBCDField
      FieldName = 'fac_porccomision'
      Precision = 7
      Size = 3
    end
    object adoFacturaPOSfac_total: TBCDField
      FieldName = 'fac_total'
      ReadOnly = True
      Precision = 18
    end
    object adoFacturaPOSitbis: TBCDField
      FieldName = 'itbis'
      Precision = 15
    end
  end
  object dsFacturaPOS: TDataSource
    DataSet = adoFacturaPOS
    Left = 388
    Top = 161
  end
end
