object frmReimpresion: TfrmReimpresion
  Left = 441
  Top = 260
  ActiveControl = edGrupo
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Reimpresi'#243'n de documentos'
  ClientHeight = 192
  ClientWidth = 604
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
  object Label1: TLabel
    Left = 322
    Top = 8
    Width = 29
    Height = 13
    Caption = 'Grupo'
  end
  object Label2: TLabel
    Left = 322
    Top = 56
    Width = 20
    Height = 13
    Caption = 'Tipo'
  end
  object Label3: TLabel
    Left = 322
    Top = 80
    Width = 37
    Height = 13
    Caption = 'N'#250'mero'
  end
  object btTipo: TSpeedButton
    Left = 408
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
    OnClick = btTipoClick
  end
  object Label8: TLabel
    Left = 322
    Top = 32
    Width = 40
    Height = 13
    Caption = 'Sucursal'
  end
  object Label4: TLabel
    Left = 482
    Top = 80
    Width = 32
    Height = 13
    Caption = 'Idioma'
  end
  object cbDoc: TRadioGroup
    Left = 5
    Top = 0
    Width = 305
    Height = 169
    Caption = 'Documentos'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'Factura'
      'Pedido de clientes'
      'Orden de Compra'
      'Nota de cr'#233'dito'
      'Nota de d'#233'bito'
      'Devoluci'#243'n'
      'Recibo'
      'Desembolso'
      'Cotizaci'#243'n'
      'Entrada de almac'#233'n'
      'Conduce / Salida'
      'Transferencia'
      'Cotizaci'#243'n m'#250'ltiple'
      'Liquidacion de Mercancia'
      'Orden de Servicio'
      'Devoluci'#243'n en Compra')
    TabOrder = 4
    OnClick = cbDocClick
  end
  object edTipo: TEdit
    Left = 368
    Top = 56
    Width = 37
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnChange = edTipoChange
    OnKeyDown = edTipoKeyDown
  end
  object tTipo: TEdit
    Left = 432
    Top = 56
    Width = 164
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
    TabOrder = 5
  end
  object edNumero: TEdit
    Left = 368
    Top = 80
    Width = 49
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object edGrupo: TEdit
    Left = 368
    Top = 8
    Width = 37
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
    OnChange = edGrupoChange
  end
  object btClose: TBitBtn
    Left = 520
    Top = 144
    Width = 75
    Height = 25
    Caption = '&Salir'
    TabOrder = 7
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
    Left = 520
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Imprimir'
    TabOrder = 6
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
  object cbDestino: TRadioGroup
    Left = 310
    Top = 104
    Width = 168
    Height = 64
    Caption = 'Destino'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'Pantalla'
      'Impresora'
      'Correo')
    TabOrder = 8
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 368
    Top = 32
    Width = 233
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
    TabOrder = 1
  end
  object cbidioma: TComboBox
    Left = 520
    Top = 80
    Width = 76
    Height = 21
    BevelKind = bkFlat
    Style = csDropDownList
    Enabled = False
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 9
    Text = 'Espa'#241'ol'
    Items.Strings = (
      'Espa'#241'ol'
      'Ingles')
  end
  object edtHasta: TEdit
    Left = 424
    Top = 80
    Width = 49
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    Visible = False
  end
  object mmo1: TMemo
    Left = 144
    Top = 216
    Width = 185
    Height = 89
    Lines.Strings = (
      'mmo1')
    TabOrder = 11
    Visible = False
  end
  object Search: TQrySearchDlgADO
    AliasName = DM.ADOSigma
    Left = 104
    Top = 120
  end
  object Query1: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <>
    Left = 305
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
      
        's.suc_codigo, s.suc_nombre, s.alm_codigo, s.emp_codigo, s.suc_di' +
        'reccion, s.suc_localidad, s.suc_rnc, s.suc_telefono'
      'from'
      'sucursales s, sucursal_acceso a'
      'where'
      's.emp_codigo = a.emp_codigo'
      'and s.suc_codigo = a.suc_codigo'
      'and a.emp_codigo = :emp_codigo'
      'and a.usu_codigo = :usu'
      'order by s.suc_codigo')
    Left = 240
    Top = 48
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
    object QSucursalsuc_direccion: TStringField
      FieldName = 'suc_direccion'
      Size = 100
    end
    object QSucursalsuc_localidad: TStringField
      FieldName = 'suc_localidad'
      Size = 100
    end
    object QSucursalsuc_rnc: TStringField
      FieldName = 'suc_rnc'
    end
    object QSucursalsuc_telefono: TStringField
      FieldName = 'suc_telefono'
    end
  end
  object dsSuc: TDataSource
    DataSet = QSucursal
    Left = 272
    Top = 48
  end
  object qLiqTicket: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <
      item
        Name = 'EMP'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'PED'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'SUC'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'DECLARE @MONTO NUMERIC(18,2)'
      'DECLARE @MONTOLET VARCHAR(255)'
      'DECLARE @EMP INT '
      'DECLARE @PED INT '
      ''
      'SET @EMP = :EMP'
      'SET @PED = :PED'
      ''
      ''
      
        'SET @MONTO = (SELECT PED_TOTAL FROM PEDIDOS WHERE PED_NUMERO = @' +
        'PED AND EMP_CODIGO = @EMP)'
      ''
      'SET @MONTOLET = (SELECT [dbo].[CantidadConLetra](@MONTO)) '
      'SELECT '
      
        'P.PED_FICHA, V.ven_nombre VENDEDOR, P.ped_total TOTAL,  @MONTOLE' +
        'T TOTAL_LET,'
      
        'PR.pro_roriginal CODIGO, PR.pro_nombre PRODUCTO, DP.det_cantidad' +
        ' CANTIDAD, DP.det_precio, (DP.det_cantidad*DP.det_precio) IMPORT' +
        'E,'
      'P.PED_FECHA, P.PED_NUMERO'
      'FROM PEDIDOS P'
      
        'INNER JOIN DET_PEDIDO DP ON P.emp_codigo=DP.emp_codigo AND P.ped' +
        '_numero=DP.ped_numero'
      
        'INNER JOIN PRODUCTOS PR ON DP.pro_codigo=PR.PRO_CODIGO AND DP.em' +
        'p_codigo = PR.emp_codigo'
      'INNER JOIN USUARIOS U ON P.USU_CODIGO = U.USU_CODIGO'
      
        'LEFT  JOIN VENDEDORES V ON P.EMP_CODIGO = V.emp_codigo AND P.ven' +
        '_codigo = V.ven_codigo'
      
        'WHERE P.ped_numero = @PED AND P.emp_codigo = @EMP AND P.SUC_CODI' +
        'GO = :SUC')
    Left = 16
    Top = 251
    object qLiqTicketPED_FICHA: TStringField
      FieldName = 'PED_FICHA'
      Size = 10
    end
    object qLiqTicketVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Size = 50
    end
    object qLiqTicketTOTAL: TCurrencyField
      FieldName = 'TOTAL'
    end
    object qLiqTicketTOTAL_LET: TStringField
      FieldName = 'TOTAL_LET'
      Size = 255
    end
    object qLiqTicketCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 10
    end
    object qLiqTicketPRODUCTO: TStringField
      FieldName = 'PRODUCTO'
      Size = 100
    end
    object qLiqTicketCANTIDAD: TCurrencyField
      FieldName = 'CANTIDAD'
    end
    object qLiqTicketDET_PRECIO: TCurrencyField
      FieldName = 'DET_PRECIO'
    end
    object qLiqTicketIMPORTE: TCurrencyField
      FieldName = 'IMPORTE'
    end
    object qLiqTicketPED_FECHA: TDateField
      FieldName = 'PED_FECHA'
    end
    object qLiqTicketPED_NUMERO: TIntegerField
      FieldName = 'PED_NUMERO'
    end
  end
  object DB_Liq_Ticket: TfrxDBDataset
    UserName = 'DB_Liq_Ticket'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PED_FICHA=PED_FICHA'
      'VENDEDOR=VENDEDOR'
      'TOTAL=TOTAL'
      'TOTAL_LET=TOTAL_LET'
      'CODIGO=CODIGO'
      'PRODUCTO=PRODUCTO'
      'CANTIDAD=CANTIDAD'
      'DET_PRECIO=DET_PRECIO'
      'IMPORTE=IMPORTE'
      'PED_FECHA=PED_FECHA'
      'PED_NUMERO=PED_NUMERO')
    DataSet = qLiqTicket
    BCDToCurrency = False
    Left = 48
    Top = 251
  end
  object Rpt_Liq_Ticket: TfrxReport
    Version = '4.13.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43629.555344861110000000
    ReportOptions.LastChange = 43629.555344861110000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 80
    Top = 251
    Datasets = <
      item
        DataSet = DB_Liq_Ticket
        DataSetName = 'DB_Liq_Ticket'
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
      object PageHeader1: TfrxPageHeader
        Height = 245.669450000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Width = 737.008350000000000000
          Height = 64.252010000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'SINDICATO DE TRANSPORTE BAVARO - PUNTA CANA'
            '(SITRABAPU)')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Top = 64.252010000000000000
          Width = 737.008350000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'FUNDADO EL 23 DE MAYO DEL 1987')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Top = 81.929190000000000000
          Width = 737.008350000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'TEL.: 809-554-4260 FAX: 809-554-4312 / 809-554-0452')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Align = baCenter
          Left = 186.897758500000000000
          Top = 104.267780000000000000
          Width = 366.614410000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'RECIBO DE LIQUIDADCION DE TICKETS')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 587.842920000000000000
          Top = 101.047310000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'RECIBO #:')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 587.842920000000000000
          Top = 120.944960000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'FECHA:')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 666.315400000000000000
          Top = 102.047310000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DB_Liq_Ticket."PED_NUMERO"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 666.535870000000000000
          Top = 119.944960000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DB_Liq_Ticket."PED_FECHA"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Top = 140.842610000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'FICHA:')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 51.692950000000000000
          Top = 140.842610000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[DB_Liq_Ticket."PED_FICHA"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Top = 170.078850000000000000
          Width = 132.283550000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Hemos entregado a:')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Top = 187.976500000000000000
          Width = 132.283550000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'La suma de:')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Top = 204.094620000000000000
          Width = 132.283550000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Por Concepto de:')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 136.063080000000000000
          Top = 170.078850000000000000
          Width = 374.173470000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DB_Liq_Ticket."VENDEDOR"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 136.063080000000000000
          Top = 187.976500000000000000
          Width = 600.945270000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DB_Liq_Ticket."TOTAL_LET"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 136.063080000000000000
          Top = 204.094620000000000000
          Width = 600.945270000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Liquidacion de Ticket')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 2.559060000000000000
          Top = 226.771800000000000000
          Width = 737.008350000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Detalle del Recibo')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 588.724800000000000000
          Top = 143.622140000000000000
          Width = 151.181200000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '***RE-IMPRESION***')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 325.039580000000000000
        Width = 740.409927000000000000
        DataSet = DB_Liq_Ticket
        DataSetName = 'DB_Liq_Ticket'
        RowCount = 0
        object Memo18: TfrxMemoView
          Align = baLeft
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Codigo')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Align = baLeft
          Left = 79.370130000000000000
          Width = 411.968770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Descripcion')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Align = baLeft
          Left = 491.338900000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Cantidad')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Align = baLeft
          Left = 574.488560000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Costo')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Align = baLeft
          Left = 657.638220000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Importe')
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        Height = 18.897650000000000000
        Top = 366.614410000000000000
        Width = 740.409927000000000000
        DataSet = DB_Liq_Ticket
        DataSetName = 'DB_Liq_Ticket'
        RowCount = 0
        object Memo23: TfrxMemoView
          Align = baLeft
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CODIGO'
          DataSet = DB_Liq_Ticket
          DataSetName = 'DB_Liq_Ticket'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[DB_Liq_Ticket."CODIGO"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Align = baLeft
          Left = 79.370130000000000000
          Width = 411.968770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'PRODUCTO'
          DataSet = DB_Liq_Ticket
          DataSetName = 'DB_Liq_Ticket'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[DB_Liq_Ticket."PRODUCTO"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Align = baLeft
          Left = 491.338900000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CANTIDAD'
          DataSet = DB_Liq_Ticket
          DataSetName = 'DB_Liq_Ticket'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[DB_Liq_Ticket."CANTIDAD"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Align = baLeft
          Left = 574.488560000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'DET_PRECIO'
          DataSet = DB_Liq_Ticket
          DataSetName = 'DB_Liq_Ticket'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[DB_Liq_Ticket."DET_PRECIO"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Align = baLeft
          Left = 657.638220000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'IMPORTE'
          DataSet = DB_Liq_Ticket
          DataSetName = 'DB_Liq_Ticket'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[DB_Liq_Ticket."IMPORTE"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        Height = 86.929190000000000000
        Top = 408.189240000000000000
        Width = 740.409927000000000000
        object Memo28: TfrxMemoView
          Align = baLeft
          Top = 68.031540000000000000
          Width = 306.141930000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            'Recibido Por')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Align = baRight
          Left = 434.267997000000000000
          Top = 68.031540000000000000
          Width = 306.141930000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            'Entregado Por')
          ParentFont = False
        end
      end
    end
  end
  object qFacturaOrdTaller: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    LockType = ltBatchOptimistic
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
        Name = 'num'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'tip'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT'
      'SUCURSAL, DIRECCION, TELEFONO, FAX, EMAIL, RNC, LOGO,'
      'NCF, TIPO_NCF, CASE WHEN LEFT(NCF,3) = '#39'B01'#39' THEN NCF_VENCE '
      '                    WHEN LEFT(NCF,3) = '#39'B02'#39' THEN NULL'
      '                    WHEN LEFT(NCF,3) = '#39'B14'#39' THEN NCF_VENCE '
      
        '                    WHEN LEFT(NCF,3) = '#39'B15'#39' THEN NCF_VENCE END ' +
        'NCF_VENCE, FECHA, VENCE, NUM, ORDEN, CONDICION,'
      'CLI_RNC, CLIENTE, PROPIETARIO,'
      
        'VEH_PLACA, VEH_TIPO, VEH_MARCA, VEH_MODELO, VEH_YEAR, VEH_CHASSI' +
        'S, VEH_KILOM, VEH_NIV, VEH_COLOR,'
      'TIPO, PRODUCTO, CANT, PRECIO, VALOR SUBTOTAL,'
      
        '(CASE WHEN TIPOID = 1 THEN (CANT*PRECIO)*(DESCUENTO) ELSE 0 END)' +
        ' DESC_SERV,'
      
        '(CASE WHEN TIPOID = 2 THEN (CANT*PRECIO)*(DESCUENTO) ELSE 0 END)' +
        ' DESC_PIEZAS,'
      '(VALOR-'
      '(CASE WHEN TIPOID = 1 THEN (CANT*PRECIO)*(DESCUENTO)  '
      
        '      WHEN TIPOID = 2 THEN (CANT*PRECIO)*(DESCUENTO) ELSE 0 END)' +
        ') * ITBIS ITBIS,'
      '(VALOR-'
      '(CASE WHEN TIPOID = 1 THEN (CANT*PRECIO)*(DESCUENTO)  '
      
        '      WHEN TIPOID = 2 THEN (CANT*PRECIO)*(DESCUENTO) ELSE 0 END)' +
        ') +'
      '(VALOR-'
      '(CASE WHEN TIPOID = 1 THEN (CANT*PRECIO)*(DESCUENTO)  '
      
        '      WHEN TIPOID = 2 THEN (CANT*PRECIO)*(DESCUENTO) ELSE 0 END)' +
        ') * ITBIS TOTAL'
      'frOM ('
      
        'select s.suc_nombre SUCURSAL, s.suc_direccion DIRECCION, s.suc_t' +
        'elefono TELEFONO, s.suc_fax FAX, s.suc_email EMAIL, s.suc_rnc RN' +
        'C,'
      
        'f.NCF_Fijo+ RIGHT('#39'000000000'#39' + Ltrim(Rtrim(F.NCF_Secuencia)),8-' +
        'len(F.NCF_Secuencia)) NCF, UPPER(NT.ncf_nombre) TIPO_NCF, N.Fech' +
        'aVenc NCF_VENCE, '
      
        'F.fac_fecha FECHA, F.fac_vence VENCE, F.fac_numero NUM, F.fac_rn' +
        'c CLI_RNC, F.ped_numero ORDEN, F.fac_nombre CLIENTE, C.cli_nombr' +
        'e PROPIETARIO, '
      'ISNULL('#39'CREDITO A '#39'+COND.cpa_nombre,'#39'CONTADO'#39') CONDICION,'
      
        'RTRIM(V.PLACA) VEH_PLACA, TV.nombre VEH_TIPO,MV.nombre VEH_MODEL' +
        'O, MAV.mar_nombre VEH_MARCA, '
      
        'V.Kilometraje VEH_KILOM, V.Chassis VEH_CHASSIS, CL.col_nombre VE' +
        'H_COLOR, V.Annio VEH_YEAR, ISNULL(V.NIV,'#39'N/A'#39') VEH_NIV,'
      'DT.pro_nombre PRODUCTO, '
      '(SELECT TOP 1 CASE WHEN TIPO =  1 THEN '#39'SERVICIOS REALIZADOS'#39
      
        '                   WHEN TIPO =  2 THEN '#39'PIEZAS REEMPLAZADAS'#39' END' +
        ' FROM Det_Ordenes_taller '
      
        ' WHERE emp_codigo = F.emp_codigo AND suc_codigo = F.suc_codigo A' +
        'ND ord_numero = F.ped_numero AND pro_codigo = DT.pro_codigo) TIP' +
        'O,'
      '(SELECT TOP 1 TIPO FROM Det_Ordenes_taller '
      
        ' WHERE emp_codigo = F.emp_codigo AND suc_codigo = F.suc_codigo A' +
        'ND ord_numero = F.ped_numero AND pro_codigo = DT.pro_codigo) TIP' +
        'OID,'
      
        'DT.det_cantidad CANT, DT.det_precio PRECIO, DT.det_cantidad*DT.d' +
        'et_precio VALOR, '
      'DT.det_itbis/100 ITBIS, '
      'DT.det_descuento/100 DESCUENTO,'
      'E.emp_logo LOGO'
      'from Facturas F'
      
        'INNER JOIN Det_Factura DT ON F.emp_codigo = DT.emp_codigo AND F.' +
        'suc_codigo = DT.suc_codigo AND F.fac_numero = DT.fac_numero AND ' +
        'F.fac_forma = DT.fac_forma'
      '                         AND F.tfa_codigo = DT.tfa_codigo'
      'inner join Empresas E on F.emp_codigo = E.emp_codigo'
      
        'inner join Sucursales S on f.emp_codigo = s.emp_codigo and f.suc' +
        '_codigo = s.suc_codigo'
      
        'LEFT JOIN NCF N ON F.emp_codigo = N.emp_codigo AND F.suc_codigo ' +
        '= N.suc_codigo AND F.NCF_Fijo = N.NCF_Fijo'
      
        'LEFT JOIN NCF_Ticket_TipoDoc NT ON N.emp_codigo = NT.emp_codigo ' +
        'AND N.tdo_codigo = NT.tdo_codigo '
      
        'INNER JOIN Ordenes_Taller OT ON F.emp_codigo = OT.emp_codigo AND' +
        ' F.suc_codigo = OT.suc_codigo AND F.ped_numero = OT.ord_numero'
      
        'INNER JOIN Clientes C ON OT.emp_codigo = C.emp_codigo AND OT.pro' +
        'p_codigo = C.cli_codigo '
      'INNER JOIN Vehiculos V ON OT.veh_codigo = V.veh_codigo'
      
        'INNER JOIN Tipos_Vehiculos TV ON V.tipo_Veh_codigo = TV.tipo_Veh' +
        '_codigo'
      'INNER JOIN Modelos_Vehiculos MV ON V.mod_codigo = MV.mod_codigo'
      'INNER JOIN marcas_Vehiculos MAV ON V.mar_codigo = MAV.mar_codigo'
      'INNER JOIN Colores CL ON V.col_codigo = CL.col_codigo '#9#9#9
      
        'LEFT JOIN Condiciones COND ON F.cpa_codigo = COND.cpa_codigo AND' +
        ' F.emp_codigo = COND.emp_codigo'#9#9#9#9#9#9' '
      
        'where F.emp_codigo = :emp and F.suc_codigo = :suc and F.fac_nume' +
        'ro = :num AND F.tfa_codigo = :tip )'
      'AS TEMP '
      'ORDER BY TIPO DESC')
    Left = 40
    Top = 184
    object qFacturaOrdTallerSUCURSAL: TStringField
      FieldName = 'SUCURSAL'
      Size = 60
    end
    object qFacturaOrdTallerDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 60
    end
    object qFacturaOrdTallerTELEFONO: TStringField
      FieldName = 'TELEFONO'
      Size = 30
    end
    object qFacturaOrdTallerFAX: TStringField
      FieldName = 'FAX'
      Size = 30
    end
    object qFacturaOrdTallerEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 30
    end
    object qFacturaOrdTallerRNC: TStringField
      FieldName = 'RNC'
      Size = 30
    end
    object qFacturaOrdTallerNCF: TStringField
      FieldName = 'NCF'
      ReadOnly = True
      Size = 61
    end
    object qFacturaOrdTallerTIPO_NCF: TStringField
      FieldName = 'TIPO_NCF'
      ReadOnly = True
      Size = 80
    end
    object qFacturaOrdTallerNCF_VENCE: TDateTimeField
      FieldName = 'NCF_VENCE'
    end
    object qFacturaOrdTallerFECHA: TDateTimeField
      FieldName = 'FECHA'
    end
    object qFacturaOrdTallerVENCE: TDateTimeField
      FieldName = 'VENCE'
    end
    object qFacturaOrdTallerNUM: TIntegerField
      FieldName = 'NUM'
    end
    object qFacturaOrdTallerORDEN: TIntegerField
      FieldName = 'ORDEN'
    end
    object qFacturaOrdTallerCONDICION: TStringField
      FieldName = 'CONDICION'
      ReadOnly = True
      Size = 60
    end
    object qFacturaOrdTallerCLI_RNC: TStringField
      FieldName = 'CLI_RNC'
      Size = 13
    end
    object qFacturaOrdTallerCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 60
    end
    object qFacturaOrdTallerPROPIETARIO: TStringField
      FieldName = 'PROPIETARIO'
      Size = 255
    end
    object qFacturaOrdTallerVEH_PLACA: TStringField
      FieldName = 'VEH_PLACA'
      ReadOnly = True
      Size = 50
    end
    object qFacturaOrdTallerVEH_TIPO: TStringField
      FieldName = 'VEH_TIPO'
      Size = 75
    end
    object qFacturaOrdTallerVEH_MARCA: TStringField
      FieldName = 'VEH_MARCA'
      Size = 60
    end
    object qFacturaOrdTallerVEH_MODELO: TStringField
      FieldName = 'VEH_MODELO'
      Size = 100
    end
    object qFacturaOrdTallerVEH_YEAR: TIntegerField
      FieldName = 'VEH_YEAR'
    end
    object qFacturaOrdTallerVEH_CHASSIS: TStringField
      FieldName = 'VEH_CHASSIS'
      Size = 75
    end
    object qFacturaOrdTallerVEH_KILOM: TIntegerField
      FieldName = 'VEH_KILOM'
    end
    object qFacturaOrdTallerVEH_NIV: TStringField
      FieldName = 'VEH_NIV'
      ReadOnly = True
      Size = 75
    end
    object qFacturaOrdTallerTIPO: TStringField
      FieldName = 'TIPO'
      ReadOnly = True
    end
    object qFacturaOrdTallerPRODUCTO: TStringField
      FieldName = 'PRODUCTO'
      Size = 256
    end
    object qFacturaOrdTallerCANT: TBCDField
      FieldName = 'CANT'
      Precision = 18
    end
    object qFacturaOrdTallerPRECIO: TBCDField
      FieldName = 'PRECIO'
      Precision = 18
    end
    object qFacturaOrdTallerSUBTOTAL: TBCDField
      FieldName = 'SUBTOTAL'
      ReadOnly = True
      Precision = 32
      Size = 8
    end
    object qFacturaOrdTallerDESC_SERV: TBCDField
      FieldName = 'DESC_SERV'
      ReadOnly = True
      Precision = 32
      Size = 6
    end
    object qFacturaOrdTallerDESC_PIEZAS: TBCDField
      FieldName = 'DESC_PIEZAS'
      ReadOnly = True
      Precision = 32
      Size = 6
    end
    object qFacturaOrdTallerITBIS: TBCDField
      FieldName = 'ITBIS'
      ReadOnly = True
      Precision = 32
      Size = 6
    end
    object qFacturaOrdTallerTOTAL: TBCDField
      FieldName = 'TOTAL'
      ReadOnly = True
      Precision = 32
      Size = 6
    end
    object qFacturaOrdTallerVEH_COLOR: TStringField
      FieldName = 'VEH_COLOR'
      Size = 60
    end
    object qFacturaOrdTallerLOGO: TBlobField
      FieldName = 'LOGO'
    end
  end
  object DB_qFacturaOrdTaller: TfrxDBDataset
    UserName = 'DB_qFacturaOrdTaller'
    CloseDataSource = False
    FieldAliases.Strings = (
      'SUCURSAL=SUCURSAL'
      'DIRECCION=DIRECCION'
      'TELEFONO=TELEFONO'
      'FAX=FAX'
      'EMAIL=EMAIL'
      'RNC=RNC'
      'NCF=NCF'
      'TIPO_NCF=TIPO_NCF'
      'NCF_VENCE=NCF_VENCE'
      'FECHA=FECHA'
      'VENCE=VENCE'
      'NUM=NUM'
      'ORDEN=ORDEN'
      'CONDICION=CONDICION'
      'CLI_RNC=CLI_RNC'
      'CLIENTE=CLIENTE'
      'PROPIETARIO=PROPIETARIO'
      'VEH_PLACA=VEH_PLACA'
      'VEH_TIPO=VEH_TIPO'
      'VEH_MARCA=VEH_MARCA'
      'VEH_MODELO=VEH_MODELO'
      'VEH_YEAR=VEH_YEAR'
      'VEH_CHASSIS=VEH_CHASSIS'
      'VEH_KILOM=VEH_KILOM'
      'VEH_NIV=VEH_NIV'
      'TIPO=TIPO'
      'PRODUCTO=PRODUCTO'
      'CANT=CANT'
      'PRECIO=PRECIO'
      'SUBTOTAL=SUBTOTAL'
      'DESC_SERV=DESC_SERV'
      'DESC_PIEZAS=DESC_PIEZAS'
      'ITBIS=ITBIS'
      'TOTAL=TOTAL'
      'VEH_COLOR=VEH_COLOR'
      'LOGO=LOGO')
    DataSet = qFacturaOrdTaller
    BCDToCurrency = False
    Left = 72
    Top = 184
  end
  object Rpt_FacOrdTaller: TfrxReport
    Version = '4.13.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43629.555344861100000000
    ReportOptions.LastChange = 43629.555344861100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Memo6OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '                                     '
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnBeforePrint = Rpt_FacOrdTallerBeforePrint
    Left = 104
    Top = 184
    Datasets = <
      item
        DataSet = DB_qFacturaOrdTaller
        DataSetName = 'DB_qFacturaOrdTaller'
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
      object PageHeader1: TfrxPageHeader
        Height = 166.299320000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object MCia: TfrxMemoView
          Width = 377.953000000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[DB_qFacturaOrdTaller."SUCURSAL"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 505.220780000000000000
          Width = 94.488250000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'FACTURA')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Align = baRight
          Left = 619.464967000000000000
          Top = 4.779530000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Pagina [Page#] de [TotalPages#]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Align = baRight
          Left = 494.740477000000000000
          Top = 26.456710000000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[DB_qFacturaOrdTaller."TIPO_NCF"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Align = baRight
          Left = 494.740477000000000000
          Top = 45.354360000000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[DB_qFacturaOrdTaller."NCF"]')
          ParentFont = False
        end
        object MVenceNCF: TfrxMemoView
          Align = baRight
          Left = 494.740477000000000000
          Top = 64.252010000000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo6OnBeforePrint'
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'VENCE: [DB_qFacturaOrdTaller."NCF_VENCE"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Align = baLeft
          Top = 80.456710000000000000
          Width = 377.953000000000000000
          Height = 79.370130000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DB_qFacturaOrdTaller."DIRECCION"]'
            
              'TEL: [DB_qFacturaOrdTaller."TELEFONO"] FAX: [DB_qFacturaOrdTalle' +
              'r."FAX"]'
            'EMAIL: [DB_qFacturaOrdTaller."EMAIL"]'
            'RNC: [DB_qFacturaOrdTaller."RNC"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Align = baRight
          Left = -0.377953000000000000
          Top = 164.826840000000000000
          Width = 740.787880000000000000
          Height = 3.779530000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haRight
          ParentFont = False
        end
        object Logo: TfrxPictureView
          Width = 381.732530000000000000
          Height = 64.252010000000000000
          ShowHint = False
          DataField = 'LOGO'
          DataSet = DB_qFacturaOrdTaller
          DataSetName = 'DB_qFacturaOrdTaller'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo1: TfrxMemoView
          Align = baRight
          Left = 494.740477000000000000
          Top = 83.149660000000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo6OnBeforePrint'
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'RE-IMPRESION')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 37.795300000000000000
        Top = 385.512060000000000000
        Width = 740.409927000000000000
        Condition = 'DB_qFacturaOrdTaller."TIPO"'
        object Memo26: TfrxMemoView
          Width = 740.409927000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[DB_qFacturaOrdTaller."TIPO"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Align = baLeft
          Top = 18.897650000000000000
          Width = 85.039370080000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8 = (
            'Cantidad')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Align = baLeft
          Left = 85.039370080000000000
          Top = 18.897650000000000000
          Width = 485.669550080000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8 = (
            'Descripcion')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Align = baLeft
          Left = 570.708920160000000000
          Top = 18.897650000000000000
          Width = 85.039370080000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            'Precio')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Align = baLeft
          Left = 655.748290240000000000
          Top = 18.897650000000000000
          Width = 85.039370080000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            'Valor')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 445.984540000000000000
        Width = 740.409927000000000000
        DataSet = DB_qFacturaOrdTaller
        DataSetName = 'DB_qFacturaOrdTaller'
        RowCount = 0
        object Memo31: TfrxMemoView
          Align = baLeft
          Width = 85.039370080000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CANT'
          DataSet = DB_qFacturaOrdTaller
          DataSetName = 'DB_qFacturaOrdTaller'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8 = (
            '[DB_qFacturaOrdTaller."CANT"]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Align = baLeft
          Left = 85.039370080000000000
          Width = 485.669550080000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'PRODUCTO'
          DataSet = DB_qFacturaOrdTaller
          DataSetName = 'DB_qFacturaOrdTaller'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8 = (
            '[DB_qFacturaOrdTaller."PRODUCTO"]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Align = baLeft
          Left = 570.708920160000000000
          Width = 85.039370080000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'PRECIO'
          DataSet = DB_qFacturaOrdTaller
          DataSetName = 'DB_qFacturaOrdTaller'
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
            '[DB_qFacturaOrdTaller."PRECIO"]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Align = baLeft
          Left = 655.748290240000000000
          Width = 85.039370080000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'SUBTOTAL'
          DataSet = DB_qFacturaOrdTaller
          DataSetName = 'DB_qFacturaOrdTaller'
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
            '[DB_qFacturaOrdTaller."SUBTOTAL"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 18.897650000000000000
        Top = 487.559370000000000000
        Width = 740.409927000000000000
        object Memo35: TfrxMemoView
          Align = baLeft
          Width = 655.748400080000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            'Total:')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Align = baLeft
          Left = 655.748400080000000000
          Width = 85.039370080000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = DB_qFacturaOrdTaller
          DataSetName = 'DB_qFacturaOrdTaller'
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
            '[SUM(<DB_qFacturaOrdTaller."SUBTOTAL">,MasterData1)]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        Height = 117.165430000000000000
        Top = 245.669450000000000000
        Width = 740.409927000000000000
        object Memo8: TfrxMemoView
          Align = baLeft
          Width = 85.039370080000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Fecha:')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Align = baLeft
          Top = 19.897650000000000000
          Width = 85.039370080000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'R.N.C.:')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Align = baLeft
          Top = 40.795300000000000000
          Width = 85.039370080000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Facturado a:')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Align = baLeft
          Top = 59.692950000000000000
          Width = 85.039370080000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Propietario:')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Align = baLeft
          Top = 83.267780000000000000
          Width = 85.039370080000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Vehiculo:')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Align = baLeft
          Left = 85.039370080000000000
          Width = 144.000039060000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DB_qFacturaOrdTaller."FECHA"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Align = baLeft
          Left = 85.039370080000000000
          Top = 19.897650000000000000
          Width = 366.992309060000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DB_qFacturaOrdTaller."CLI_RNC"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Align = baLeft
          Left = 85.039370080000000000
          Top = 39.574830000000000000
          Width = 321.637949060000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DB_qFacturaOrdTaller."CLIENTE"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Align = baLeft
          Left = 85.039370080000000000
          Top = 58.913420000000000000
          Width = 366.992309060000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DB_qFacturaOrdTaller."PROPIETARIO"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Align = baLeft
          Left = 229.039409140000000000
          Width = 53.291319060000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Vence:')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Align = baLeft
          Left = 282.330728200000000000
          Width = 91.086619060000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DB_qFacturaOrdTaller."VENCE"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Align = baRight
          Left = 600.189454550000000000
          Width = 83.527559060000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Factura No.:')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Align = baRight
          Left = 600.189454550000000000
          Top = 18.897650000000000000
          Width = 83.527559060000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Orden No.:')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 549.787648120000000000
          Top = 41.574732360000000000
          Width = 83.527559060000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Condicion:')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Align = baRight
          Left = 683.717013610000000000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DB_qFacturaOrdTaller."NUM"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Align = baRight
          Left = 683.717013610000000000
          Top = 18.897650000000000000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DB_qFacturaOrdTaller."ORDEN"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Align = baLeft
          Left = 633.315207180000000000
          Top = 41.574732360000000000
          Width = 136.062860310000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DB_qFacturaOrdTaller."CONDICION"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Align = baLeft
          Left = 85.039370080000000000
          Top = 83.149660000000000000
          Width = 654.236589060000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            
              '[DB_qFacturaOrdTaller."VEH_PLACA"]     [DB_qFacturaOrdTaller."VE' +
              'H_MARCA"]     [DB_qFacturaOrdTaller."VEH_MODELO"]     [DB_qFactu' +
              'raOrdTaller."VEH_COLOR"]     [DB_qFacturaOrdTaller."VEH_YEAR"]  ' +
              '   [DB_qFacturaOrdTaller."VEH_CHASSIS"]     Km/M: [DB_qFacturaOr' +
              'dTaller."VEH_KILOM"]     NIV: [DB_qFacturaOrdTaller."VEH_NIV"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 275.905690000000000000
        Top = 566.929500000000000000
        Width = 740.409927000000000000
        object Memo37: TfrxMemoView
          Align = baLeft
          Top = 30.236240000000000000
          Width = 85.039370080000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Notas:')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 555.590551180000000000
          Top = 37.795300000000000000
          Width = 85.039370078740200000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Desc. Serv.:')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 555.590551180000000000
          Top = 56.692950000000000000
          Width = 85.039370078740200000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Desc. Resp.:')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 555.590910000000000000
          Top = 75.590600000000000000
          Width = 85.039370078740200000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Sub-Total')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 555.590910000000000000
          Top = 94.488250000000000000
          Width = 85.039370078740200000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'ITBIS:')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 555.590910000000000000
          Top = 113.385900000000000000
          Width = 85.039370078740200000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Total:')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Align = baLeft
          Left = 640.630280078740200000
          Top = 75.590600000000000000
          Width = 96.377960080000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = DB_qFacturaOrdTaller
          DataSetName = 'DB_qFacturaOrdTaller'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<DB_qFacturaOrdTaller."SUBTOTAL">,MasterData1)]')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Align = baLeft
          Left = 640.629921258740200000
          Top = 37.795300000000000000
          Width = 96.377960080000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = DB_qFacturaOrdTaller
          DataSetName = 'DB_qFacturaOrdTaller'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<DB_qFacturaOrdTaller."DESC_SERV">,MasterData1)]')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Align = baLeft
          Left = 640.629921258740200000
          Top = 56.692950000000000000
          Width = 96.377960080000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = DB_qFacturaOrdTaller
          DataSetName = 'DB_qFacturaOrdTaller'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<DB_qFacturaOrdTaller."DESC_PIEZAS">,MasterData1)]')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Align = baLeft
          Left = 640.630280078740200000
          Top = 94.488250000000000000
          Width = 96.377960080000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = DB_qFacturaOrdTaller
          DataSetName = 'DB_qFacturaOrdTaller'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<DB_qFacturaOrdTaller."ITBIS">,MasterData1)]')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Align = baLeft
          Left = 640.630280078740200000
          Top = 113.385900000000000000
          Width = 96.377960080000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = DB_qFacturaOrdTaller
          DataSetName = 'DB_qFacturaOrdTaller'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<DB_qFacturaOrdTaller."TOTAL">,MasterData1)]')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Left = 7.559060000000000000
          Top = 207.874150000000000000
          Width = 332.598640000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            'NOMBRE Y SELLO')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 385.512060000000000000
          Top = 207.874150000000000000
          Width = 332.598640000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            'APROBADO POR')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Align = baLeft
          Top = 245.669450000000000000
          Width = 332.598640000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Original: Cliente / Copia: Contabilidad')
          ParentFont = False
        end
      end
    end
  end
  object QDatos: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <>
    Left = 88
    Top = 272
  end
  object QFactura: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <
      item
        Name = 'emp'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end
      item
        Name = 'tipo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end
      item
        Name = 'numero'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end
      item
        Name = 'forma'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = '1'
      end
      item
        Name = 'suc'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end>
    SQL.Strings = (
      'select '
      
        'emp_codigo, suc_codigo, fac_forma, tfa_codigo, fac_numero, fac_f' +
        'echa, fac_nombre, fac_direccion, fac_localidad,'
      
        'fac_telefono, fac_fax, fac_status, fac_nota, fac_descuento, fac_' +
        'itbis, fac_otros, fac_total, fac_abono, cli_referencia, '
      
        'fac_vence, fac_comision, fac_mensaje1, fac_mensaje2, fac_mensaje' +
        '3, fac_porccomision, fac_cuotas, fac_hora, fac_ano, fac_mes,'
      
        'fac_conitbis, fac_devuelto, fac_tasa, mon_codigo, cpa_codigo, ve' +
        'n_codigo, caj_codigo, cli_codigo, usu_codigo, alm_codigo,'
      
        'ped_tipo,ped_numero, cot_numero, con_numero, fac_domicilio, fac_' +
        'comisionpagada, fac_caja, pro_codigo, NCF_Fijo, NCF_Secuencia,'
      
        'fac_enviado, fac_selectivo_ad, fac_selectivo_con, fac_hold, fac_' +
        'rnc, fac_usuario_anulo, fac_motivo_anulo, fac_dividio, fac_numer' +
        'o1,'
      
        'fac_numero2, OrdenID, Placa, Chofer, Metraje, Compania, Marca, M' +
        'odelo, CamionID, Cashflow_Grupo, Cashflow_Subgrupo, Cashflow_Con' +
        'cepto,'
      
        'Cashflow_TransaccionID, mapid, detallemapid, cen_codigo, fac_aut' +
        'omatica, fac_interes, manu_codigo, tip_codigo, COT_PROYECTO, por' +
        'c_desc_gral,'
      
        'Tdesc_gral, Recargo, PedidoNo, Referencia, FAC_PROPINA, NUMERO_R' +
        'ESERVA, NIF, Tdesc_gral, porc_desc_gral, FAC_HOLD'
      'from'
      'FACTURAS'
      'where emp_codigo = :emp'
      'and tfa_codigo = :tipo'
      'and fac_numero = :numero'
      'and fac_forma = :forma'
      'and suc_codigo = :suc')
    Left = 128
    Top = 27
    object QFacturaCAJ_CODIGO: TIntegerField
      FieldName = 'CAJ_CODIGO'
    end
    object QFacturaCLI_CODIGO: TIntegerField
      FieldName = 'CLI_CODIGO'
    end
    object QFacturaCOT_NUMERO: TIntegerField
      FieldName = 'COT_NUMERO'
    end
    object QFacturaCPA_CODIGO: TIntegerField
      FieldName = 'CPA_CODIGO'
    end
    object QFacturaFAC_ABONO: TBCDField
      FieldName = 'FAC_ABONO'
      Precision = 15
      Size = 2
    end
    object QFacturaEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
    end
    object QFacturaFAC_DIRECCION: TStringField
      FieldName = 'FAC_DIRECCION'
      Size = 100
    end
    object QFacturaFAC_FAX: TStringField
      FieldName = 'FAC_FAX'
      Size = 30
    end
    object QFacturaFAC_FECHA: TDateTimeField
      FieldName = 'FAC_FECHA'
      DisplayFormat = 'DD/MM/YYYY'
    end
    object QFacturaFAC_FORMA: TStringField
      FieldName = 'FAC_FORMA'
      Size = 1
    end
    object QFacturaFAC_LOCALIDAD: TStringField
      FieldName = 'FAC_LOCALIDAD'
      Size = 100
    end
    object QFacturaFAC_NOMBRE: TStringField
      FieldName = 'FAC_NOMBRE'
      Size = 255
    end
    object QFacturaFAC_NUMERO: TIntegerField
      FieldName = 'FAC_NUMERO'
    end
    object QFacturaFAC_STATUS: TStringField
      FieldName = 'FAC_STATUS'
      Size = 3
    end
    object QFacturaFAC_TELEFONO: TStringField
      FieldName = 'FAC_TELEFONO'
      Size = 30
    end
    object QFacturaFAC_OTROS: TBCDField
      FieldName = 'FAC_OTROS'
      DisplayFormat = '#,0.0000'
      Precision = 15
      Size = 2
    end
    object QFacturaPED_NUMERO: TIntegerField
      FieldName = 'PED_NUMERO'
    end
    object QFacturaTFA_CODIGO: TIntegerField
      FieldName = 'TFA_CODIGO'
    end
    object QFacturaUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
    end
    object QFacturaVEN_CODIGO: TIntegerField
      FieldName = 'VEN_CODIGO'
    end
    object QFacturaCLI_REFERENCIA: TStringField
      FieldName = 'CLI_REFERENCIA'
      Size = 30
    end
    object QFacturaALM_CODIGO: TIntegerField
      FieldName = 'ALM_CODIGO'
    end
    object QFacturaFAC_VENCE: TDateTimeField
      FieldName = 'FAC_VENCE'
    end
    object QFacturaFAC_COMISION: TBCDField
      FieldName = 'FAC_COMISION'
      Precision = 15
      Size = 2
    end
    object QFacturaFAC_MENSAJE1: TStringField
      DisplayWidth = 600
      FieldName = 'FAC_MENSAJE1'
      Size = 2500
    end
    object QFacturaFAC_MENSAJE2: TStringField
      FieldName = 'FAC_MENSAJE2'
      Size = 2500
    end
    object QFacturaFAC_MENSAJE3: TStringField
      FieldName = 'FAC_MENSAJE3'
      Size = 2500
    end
    object QFacturaFAC_PORCCOMISION: TBCDField
      FieldName = 'FAC_PORCCOMISION'
      Precision = 15
      Size = 2
    end
    object QFacturaFAC_CUOTAS: TIntegerField
      FieldName = 'FAC_CUOTAS'
    end
    object QFacturaFAC_HORA: TStringField
      FieldName = 'FAC_HORA'
      Size = 15
    end
    object QFacturaCON_NUMERO: TIntegerField
      FieldName = 'CON_NUMERO'
    end
    object QFacturaFAC_ANO: TIntegerField
      FieldName = 'FAC_ANO'
    end
    object QFacturaFAC_MES: TIntegerField
      FieldName = 'FAC_MES'
    end
    object QFacturaFAC_CONITBIS: TStringField
      FieldName = 'FAC_CONITBIS'
      Size = 5
    end
    object QFacturaFAC_DEVUELTO: TBCDField
      FieldName = 'FAC_DEVUELTO'
      Precision = 15
      Size = 2
    end
    object QFacturaMON_CODIGO: TIntegerField
      FieldName = 'MON_CODIGO'
    end
    object QFacturaSUC_CODIGO: TIntegerField
      FieldName = 'SUC_CODIGO'
    end
    object QFacturaFAC_DOMICILIO: TStringField
      FieldName = 'FAC_DOMICILIO'
      Size = 5
    end
    object QFacturafac_comisionpagada: TBCDField
      FieldName = 'fac_comisionpagada'
      Precision = 15
      Size = 2
    end
    object QFacturafac_caja: TIntegerField
      FieldName = 'fac_caja'
    end
    object QFacturapro_codigo: TIntegerField
      FieldName = 'pro_codigo'
    end
    object QFacturaNCF_Fijo: TStringField
      FieldName = 'NCF_Fijo'
      Size = 11
    end
    object QFacturaNCF_Secuencia: TBCDField
      FieldName = 'NCF_Secuencia'
      Precision = 18
      Size = 0
    end
    object QFacturafac_selectivo_ad: TBCDField
      FieldName = 'fac_selectivo_ad'
      Precision = 15
      Size = 2
    end
    object QFacturafac_selectivo_con: TBCDField
      FieldName = 'fac_selectivo_con'
      Precision = 15
      Size = 2
    end
    object QFacturafac_hold: TStringField
      FieldName = 'fac_hold'
      Size = 5
    end
    object QFacturafac_rnc: TStringField
      FieldName = 'fac_rnc'
      Size = 13
    end
    object QFacturaOrdenID: TStringField
      FieldName = 'OrdenID'
      Size = 30
    end
    object QFacturaPlaca: TStringField
      FieldName = 'Placa'
    end
    object QFacturaChofer: TStringField
      FieldName = 'Chofer'
      Size = 50
    end
    object QFacturaModelo: TStringField
      FieldName = 'Modelo'
      Size = 50
    end
    object QFacturaMarca: TStringField
      FieldName = 'Marca'
      Size = 50
    end
    object QFacturaCompania: TStringField
      FieldName = 'Compania'
      Size = 100
    end
    object QFacturaCamionID: TIntegerField
      FieldName = 'CamionID'
    end
    object QFacturaMetraje: TBCDField
      FieldName = 'Metraje'
      Precision = 18
      Size = 2
    end
    object QFacturafac_interes: TBCDField
      FieldName = 'fac_interes'
      Precision = 8
      Size = 2
    end
    object QFacturatip_codigo: TIntegerField
      FieldName = 'tip_codigo'
    end
    object QFacturacot_proyecto: TStringField
      FieldName = 'cot_proyecto'
      Size = 256
    end
    object QFacturaSubTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'SubTotal'
      DisplayFormat = '#,0.0000'
      Calculated = True
    end
    object QFacturaFAC_NOTA: TMemoField
      DisplayWidth = 255
      FieldName = 'FAC_NOTA'
      BlobType = ftMemo
    end
    object QFacturaRecargo: TCurrencyField
      FieldName = 'Recargo'
      DisplayFormat = '#,0.0000'
    end
    object QFacturaPedidoNo: TStringField
      FieldName = 'PedidoNo'
      Size = 30
    end
    object QFacturaReferencia: TStringField
      FieldName = 'Referencia'
      Size = 30
    end
    object QFacturaFAC_DESCUENTO: TBCDField
      FieldName = 'FAC_DESCUENTO'
      DisplayFormat = '#,0.00'
      Precision = 15
      Size = 2
    end
    object QFacturaFAC_ITBIS: TBCDField
      FieldName = 'FAC_ITBIS'
      DisplayFormat = '#,0.00'
      Precision = 15
    end
    object QFacturaFAC_TOTAL: TBCDField
      FieldName = 'FAC_TOTAL'
      DisplayFormat = '#,0.00'
      Precision = 15
      Size = 2
    end
    object QFacturaFAC_PROPINA: TCurrencyField
      FieldName = 'FAC_PROPINA'
      DisplayFormat = '#,0.00'
      currency = False
    end
    object QFacturaNUMERO_RESERVA: TIntegerField
      FieldName = 'NUMERO_RESERVA'
    end
    object QFacturaFAC_SERVICIOS: TFloatField
      DefaultExpression = '0.0000'
      FieldKind = fkCalculated
      FieldName = 'FAC_SERVICIOS'
      DisplayFormat = '#,0.0000'
      EditFormat = '#,0.0000'
      Calculated = True
    end
    object QFacturaFAC_TASA: TFloatField
      FieldName = 'FAC_TASA'
      DisplayFormat = '#,0.00'
    end
    object QFacturaNIF: TStringField
      FieldName = 'NIF'
    end
    object QFacturaTdesc_gral: TCurrencyField
      FieldName = 'Tdesc_gral'
      DisplayFormat = '#,0.00'
    end
    object QFacturaporc_desc_gral: TCurrencyField
      FieldName = 'porc_desc_gral'
      DisplayFormat = '#,0.00'
    end
    object QFacturaTdesc_gral_sin_Itbis: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Tdesc_gral_sin_Itbis'
      DisplayFormat = '#,0.00'
      Calculated = True
    end
  end
  object QSerie: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    DataSource = dsFactura
    Parameters = <
      item
        Name = 'emp_codigo'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'fac_forma'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'tfa_codigo'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'fac_numero'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'suc_codigo'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select '
      'EMP_CODIGO, FAC_FORMA, FAC_NUMERO, PRO_CODIGO, '
      'SER_NUMERO, SER_SECUENCIA, TFA_CODIGO, SUC_CODIGO'
      'from '
      'FACSERIE'
      'where'
      'emp_codigo = :emp_codigo'
      'and fac_forma = :fac_forma'
      'and tfa_codigo = :tfa_codigo'
      'and fac_numero = :fac_numero'
      'and suc_codigo = :suc_codigo'
      'order by'
      'ser_secuencia')
    Left = 79
    Top = 24
    object QSerieEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
    end
    object QSerieFAC_FORMA: TStringField
      FieldName = 'FAC_FORMA'
      Size = 1
    end
    object QSerieFAC_NUMERO: TIntegerField
      FieldName = 'FAC_NUMERO'
    end
    object QSeriePRO_CODIGO: TIntegerField
      FieldName = 'PRO_CODIGO'
    end
    object QSerieSER_NUMERO: TStringField
      FieldName = 'SER_NUMERO'
      Size = 30
    end
    object QSerieSER_SECUENCIA: TIntegerField
      FieldName = 'SER_SECUENCIA'
    end
    object QSerieTFA_CODIGO: TIntegerField
      FieldName = 'TFA_CODIGO'
    end
    object QSerieSUC_CODIGO: TIntegerField
      FieldName = 'SUC_CODIGO'
    end
  end
  object dsFactura: TDataSource
    AutoEdit = False
    DataSet = QFactura
    Left = 176
    Top = 40
  end
end
