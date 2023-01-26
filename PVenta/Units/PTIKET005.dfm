object frmBoletoPago: TfrmBoletoPago
  Left = 489
  Top = 274
  Width = 766
  Height = 480
  ActiveControl = edFicha
  Caption = 'Pagos de Boleto'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 14
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 750
    Height = 65
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 12
      Width = 67
      Height = 27
      Caption = 'FICHA :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -23
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 240
      Top = 12
      Width = 181
      Height = 27
      Caption = 'CODIGO DE BARRA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -23
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
    end
    object edFicha: TEdit
      Left = 83
      Top = 12
      Width = 130
      Height = 33
      Color = clMenuText
      Font.Charset = ANSI_CHARSET
      Font.Color = clLime
      Font.Height = -23
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnExit = edFichaExit
      OnKeyPress = edFichaKeyPress
    end
    object fechapago: TDateTimePicker
      Left = 645
      Top = 12
      Width = 158
      Height = 35
      CalColors.TextColor = clLime
      Date = 43009.000000000000000000
      Time = 43009.000000000000000000
      Color = clInfoBk
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clLime
      Font.Height = -23
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      TabStop = False
    end
    object edcodBarra: TEdit
      Left = 422
      Top = 12
      Width = 181
      Height = 33
      Color = 16777088
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -23
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnKeyPress = edcodBarraKeyPress
    end
    object Button1: TButton
      Left = 610
      Top = 17
      Width = 26
      Height = 27
      Caption = '....'
      TabOrder = 3
      OnClick = Button1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 398
    Width = 750
    Height = 43
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      750
      43)
    object lbCantidad: TLabel
      Left = 9
      Top = 14
      Width = 53
      Height = 15
      Caption = '0 Boletos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbTotal: TLabel
      Left = 162
      Top = 14
      Width = 37
      Height = 15
      Caption = '0 Total'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnImprimir: TBitBtn
      Left = 671
      Top = 9
      Width = 137
      Height = 27
      Anchors = [akTop, akRight]
      Caption = 'Imprimir Recibo'
      TabOrder = 0
      OnClick = btnImprimirClick
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
    Top = 65
    Width = 750
    Height = 333
    TabStop = False
    Align = alClient
    DataSource = dsPago
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'codbarra'
        Title.Alignment = taCenter
        Title.Caption = 'CODIGO DE BARRA'
        Width = 113
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ficha_pagado'
        Title.Alignment = taCenter
        Title.Caption = 'FICHA'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 81
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fecha_pagado'
        Title.Alignment = taCenter
        Title.Caption = 'PAGO'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'boleto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'producto'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'descripcion'
        Width = 131
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'precio'
        Width = 62
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fecha'
        Title.Caption = 'fecha del boleto'
        Width = 145
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'devuelto'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'emp_codigo'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'usu_codigo'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'caja'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'suc_cod_origen'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'suc_cod_destino'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'cobrado'
        Visible = False
      end>
  end
  object QPago: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    BeforeOpen = QPagoBeforeOpen
    AfterOpen = QPagoAfterOpen
    Parameters = <
      item
        Name = 'ficha'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'fecha'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'suc'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from boleto '
      
        'WHERE ficha_pagado =:ficha and fecha_pagado = :fecha and suc_cod' +
        '_origen = :suc')
    Left = 264
    Top = 168
    object QPagoemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QPagousu_codigo: TIntegerField
      FieldName = 'usu_codigo'
    end
    object QPagofecha: TDateTimeField
      FieldName = 'fecha'
    end
    object QPagoboleto: TAutoIncField
      FieldName = 'boleto'
      ReadOnly = True
    end
    object QPagocaja: TIntegerField
      FieldName = 'caja'
    end
    object QPagosuc_cod_origen: TIntegerField
      FieldName = 'suc_cod_origen'
    end
    object QPagosuc_cod_destino: TIntegerField
      FieldName = 'suc_cod_destino'
    end
    object QPagoproducto: TIntegerField
      FieldName = 'producto'
    end
    object QPagodescripcion: TStringField
      FieldName = 'descripcion'
      Size = 80
    end
    object QPagoprecio: TBCDField
      FieldName = 'precio'
      DisplayFormat = ',0.00'
      Precision = 15
      Size = 2
    end
    object QPagocobrado: TBCDField
      FieldName = 'cobrado'
      Precision = 15
      Size = 2
    end
    object QPagodevuelto: TBCDField
      FieldName = 'devuelto'
      Precision = 15
      Size = 2
    end
    object QPagoficha_pagado: TStringField
      FieldName = 'ficha_pagado'
    end
    object QPagofecha_pagado: TDateTimeField
      FieldName = 'fecha_pagado'
    end
    object QPagosecuencia_rando: TWideStringField
      FieldName = 'secuencia_rando'
      FixedChar = True
      Size = 8
    end
    object QPagocodbarra: TStringField
      FieldName = 'codbarra'
      Size = 15
    end
  end
  object dsPago: TDataSource
    DataSet = QPago
    Left = 264
    Top = 192
  end
  object DB_1: TfrxDBDataset
    UserName = 'DB_1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'suc_nombre=suc_nombre'
      'suc_telefono=suc_telefono'
      'suc_direccion=suc_direccion'
      'usu_nombre=usu_nombre'
      'fecha_pagado=fecha_pagado'
      'precio=precio'
      'ficha_pagado=ficha_pagado'
      'CANT=CANT'
      'DESCRIPCION=DESCRIPCION'
      'TOTAL=TOTAL')
    DataSet = qReporte
    BCDToCurrency = False
    Left = 160
    Top = 225
  end
  object qReporte: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    BeforeOpen = QPagoBeforeOpen
    AfterOpen = QPagoAfterOpen
    Parameters = <
      item
        Name = 'fecha'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'ficha'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'SUC'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'declare @ficha char(10) '
      'declare @fecha datetime '
      'declare @suc int'
      'set DATEFORMAT ymd'
      'set @fecha = :FECHA'
      'set @ficha = :FICHA'
      'set @suc = :SUC'
      
        'select s.suc_nombre, s.suc_telefono, s.suc_direccion, u.usu_nomb' +
        're, a.fecha_pagado, a.precio, a.ficha_pagado,'
      'COUNT(PRECIO) CANT, A.descripcion, COUNT(PRECIO)*PRECIO TOTAL'
      'from boleto a '
      'inner join Empresas e on a.emp_codigo=e.emp_codigo'
      
        'inner join Sucursales s on a.suc_cod_origen=s.suc_codigo and a.e' +
        'mp_codigo=s.emp_codigo'
      'inner join Usuarios u on a.usu_codigo=u.usu_codigo'
      'where codbarra is not null and ficha_pagado is not null '
      
        'and a.ficha_pagado = @ficha and CAST(CAST(a.fecha_pagado AS CHAR' +
        '(11)) AS DATETIME) = @fecha and a.suc_cod_origen = @suc'
      
        'GROUP BY S.suc_nombre, S.suc_telefono, S.suc_direccion, U.usu_no' +
        'mbre, A.fecha_pagado, A.PRECIO, A.ficha_pagado, A.descripcion')
    Left = 128
    Top = 224
    object qReportesuc_nombre: TStringField
      FieldName = 'suc_nombre'
      Size = 50
    end
    object qReportesuc_telefono: TStringField
      FieldName = 'suc_telefono'
      Size = 30
    end
    object qReportesuc_direccion: TStringField
      FieldName = 'suc_direccion'
      Size = 100
    end
    object qReporteusu_nombre: TStringField
      FieldName = 'usu_nombre'
      Size = 30
    end
    object qReportefecha_pagado: TDateField
      FieldName = 'fecha_pagado'
    end
    object qReporteprecio: TCurrencyField
      FieldName = 'precio'
    end
    object qReporteficha_pagado: TStringField
      FieldName = 'ficha_pagado'
      Size = 15
    end
    object qReporteCANT: TIntegerField
      FieldName = 'CANT'
    end
    object qReporteDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 50
    end
    object qReporteTOTAL: TCurrencyField
      FieldName = 'TOTAL'
    end
  end
  object Rpt_Pag_Ticket: TfrxReport
    Version = '4.13.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    PrintOptions.ShowDialog = False
    ReportOptions.CreateDate = 42473.961810925900000000
    ReportOptions.LastChange = 43540.522369282410000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '       '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 196
    Top = 227
    Datasets = <
      item
        DataSet = DB_1
        DataSetName = 'DB_1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page2: TfrxReportPage
      PaperWidth = 76.200000000000000000
      PaperHeight = 160.000000000000000000
      PaperSize = 256
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object frxMemoView1: TfrxMemoView
        Top = 16.338590000000000000
        Width = 249.448980000000000000
        Height = 30.236240000000000000
        ShowHint = False
        DataField = 'suc_nombre'
        DataSet = DB_1
        DataSetName = 'DB_1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8 = (
          '[DB_1."suc_nombre"]')
        ParentFont = False
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 249.448980000000000000
        Width = 250.204886000000000000
        DataSet = DB_1
        DataSetName = 'DB_1'
        RowCount = 0
        object Memo11: TfrxMemoView
          Align = baLeft
          Left = 49.133890000000000000
          Width = 143.622140000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'DESCRIPCION'
          DataSet = DB_1
          DataSetName = 'DB_1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DB_1."DESCRIPCION"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'CANT'
          DataSet = DB_1
          DataSetName = 'DB_1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DB_1."CANT"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Align = baLeft
          Left = 192.756030000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = DB_1
          DataSetName = 'DB_1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DB_1."precio"]')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 170.196970000000000000
        Top = 18.897650000000000000
        Width = 250.204886000000000000
        object Memo2: TfrxMemoView
          Top = 40.677180000000000000
          Width = 249.448980000000000000
          Height = 45.354360000000000000
          ShowHint = False
          DataSet = DB_1
          DataSetName = 'DB_1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[DB_1."suc_telefono"]'
            '[DB_1."suc_direccion"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Top = 86.929190000000000000
          Width = 249.448980000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = DB_1
          DataSetName = 'DB_1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Pago de Tickets')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Top = 119.504020000000000000
          Width = 249.448980000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = DB_1
          DataSetName = 'DB_1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'FECHA PAGO: [Date] [Time]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Align = baLeft
          Top = 151.181200000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = DB_1
          DataSetName = 'DB_1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'CANT')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Align = baLeft
          Left = 49.133890000000000000
          Top = 151.181200000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = DB_1
          DataSetName = 'DB_1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'DESCRIPCION')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Align = baLeft
          Left = 192.756030000000000000
          Top = 151.181200000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = DB_1
          DataSetName = 'DB_1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'PRECIO')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        Height = 241.889920000000000000
        Top = 291.023810000000000000
        Width = 250.204886000000000000
        object Memo4: TfrxMemoView
          Top = 3.220470000000000000
          Width = 249.448980000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = DB_1
          DataSetName = 'DB_1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Cantidad Boletos: [COUNT(MasterData1)]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Top = 41.574830000000000000
          Width = 249.448980000000000000
          Height = 22.677180000000000000
          ShowHint = False
          DataSet = DB_1
          DataSetName = 'DB_1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Monto a Pagar RD$: [SUM(<DB_1."TOTAL">,MasterData1)]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Top = 115.708720000000000000
          Width = 249.448980000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = DB_1
          DataSetName = 'DB_1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            'FICHA RECIBE([DB_1."ficha_pagado"])')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Top = 196.535560000000000000
          Width = 249.448980000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = DB_1
          DataSetName = 'DB_1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            'ENTREGADO POR: ([DB_1."usu_nombre"])')
          ParentFont = False
        end
      end
    end
  end
end
