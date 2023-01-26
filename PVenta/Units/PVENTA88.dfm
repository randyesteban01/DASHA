object frmConsTransferencia: TfrmConsTransferencia
  Left = 314
  Top = 122
  ActiveControl = Fecha1
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Transferencias entre almacen'
  ClientHeight = 416
  ClientWidth = 698
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
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
  object Splitter1: TSplitter
    Left = 0
    Top = 241
    Width = 698
    Height = 4
    Cursor = crVSplit
    Align = alTop
  end
  object Panel2: TPanel
    Left = 0
    Top = 376
    Width = 698
    Height = 40
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    DesignSize = (
      698
      40)
    object lbCantidad: TLabel
      Left = 8
      Top = 13
      Width = 96
      Height = 13
      Caption = '0 Transferencias'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BitBtn2: TBitBtn
      Left = 536
      Top = 8
      Width = 75
      Height = 25
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
      Left = 248
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Refrescar >>'
      TabOrder = 1
      OnClick = btRefreshClick
    end
    object btClose: TBitBtn
      Left = 616
      Top = 8
      Width = 75
      Height = 25
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
    object btpostear: TBitBtn
      Left = 416
      Top = 8
      Width = 115
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Postear al inventario'
      TabOrder = 3
      OnClick = btpostearClick
    end
    object btAnula: TBitBtn
      Left = 328
      Top = 8
      Width = 81
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Anular'
      TabOrder = 4
      OnClick = btAnulaClick
      Glyph.Data = {
        66010000424D6601000000000000760000002800000014000000140000000100
        040000000000F000000000000000000000001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777888877777
        8877777700007770888777778887777700007911088877910888777700007911
        0088879100888777000079111008891110087777000079911108911111007777
        0000779111101111110777770000777911111111077777770000777991111111
        8777777700007777991111108877777700007777791111108887777700007777
        7911111088877777000077777911111108887777000077779111991100888777
        0000777911108991100888770000777911187799110088870000777111187779
        1110888700007771110777779111087700007779997777777991777700007777
        77777777779977770000}
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 698
    Height = 41
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object Label6: TLabel
      Left = 7
      Top = 8
      Width = 30
      Height = 13
      Caption = 'Fecha'
    end
    object Fecha1: TDateTimePicker
      Left = 42
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
      Left = 122
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
    object rbTipo: TRadioGroup
      Left = 208
      Top = 2
      Width = 280
      Height = 37
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        'Todas'
        'Procesadas'
        'Sin Procesar')
      TabOrder = 2
      OnClick = btRefreshClick
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 41
    Width = 698
    Height = 200
    Align = alTop
    Anchors = [akLeft, akTop, akRight, akBottom]
    Color = clInfoBk
    Ctl3D = False
    DataSource = dsTrans
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'TRA_NUMERO'
        Title.Alignment = taCenter
        Title.Caption = 'N'#250'mero'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TRA_ALMACEN1'
        Title.Alignment = taCenter
        Title.Caption = 'Desde'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TRA_ALMACEN2'
        Title.Alignment = taCenter
        Title.Caption = 'Hasta'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'TRA_FECHA'
        Title.Alignment = taCenter
        Title.Caption = 'Fecha'
        Width = 74
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TRA_CONCEPTO'
        Title.Caption = 'Concepto'
        Width = 369
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'TRA_STATUS'
        Title.Alignment = taCenter
        Title.Caption = 'Status'
        Visible = True
      end>
  end
  object GridMov: TDBGrid
    Left = 0
    Top = 245
    Width = 698
    Height = 131
    Align = alClient
    Color = clInfoBk
    Ctl3D = False
    DataSource = dsDetalle
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 3
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'PRO_NOMBRE'
        Title.Caption = 'Descripcion del Producto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DET_CANTIDAD'
        Title.Caption = 'Cantidad transferida'
        Width = 105
        Visible = True
      end>
  end
  object Memo1: TMemo
    Left = 24
    Top = 128
    Width = 489
    Height = 89
    Lines.Strings = (
      'Memo1')
    TabOrder = 4
    Visible = False
  end
  object QTrans: TADOQuery
    Connection = DM.ADOSigma
    AfterOpen = QTransAfterOpen
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
        Name = 'fecha1'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'fecha2'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      'select EMP_CODIGO, TRA_ALMACEN1, TRA_ALMACEN2, '
      'TRA_CONCEPTO, TRA_FECHA, TRA_NUMERO, TRA_STATUS, '
      'USU_CODIGO from TRANSFER'
      'where emp_codigo = :emp'
      
        'and tra_fecha between convert(datetime,:fecha1,105) and convert(' +
        'datetime,:fecha2,105)')
    Left = 288
    Top = 136
    object QTransEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'TRANSFER.EMP_CODIGO'
    end
    object QTransTRA_ALMACEN1: TIntegerField
      FieldName = 'TRA_ALMACEN1'
      Origin = 'TRANSFER.TRA_ALMACEN1'
      DisplayFormat = '000000'
    end
    object QTransTRA_ALMACEN2: TIntegerField
      FieldName = 'TRA_ALMACEN2'
      Origin = 'TRANSFER.TRA_ALMACEN2'
      DisplayFormat = '000000'
    end
    object QTransTRA_CONCEPTO: TIBStringField
      FieldName = 'TRA_CONCEPTO'
      Origin = 'TRANSFER.TRA_CONCEPTO'
      Size = 60
    end
    object QTransTRA_FECHA: TDateTimeField
      FieldName = 'TRA_FECHA'
      Origin = 'TRANSFER.TRA_FECHA'
      EditMask = 'cc-cc-cccc'
    end
    object QTransTRA_NUMERO: TIntegerField
      FieldName = 'TRA_NUMERO'
      Origin = 'TRANSFER.TRA_NUMERO'
      DisplayFormat = '00000'
    end
    object QTransTRA_STATUS: TIBStringField
      FieldName = 'TRA_STATUS'
      Origin = 'TRANSFER.TRA_STATUS'
      Size = 3
    end
    object QTransUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
      Origin = 'TRANSFER.USU_CODIGO'
    end
  end
  object dsTrans: TDataSource
    DataSet = QTrans
    OnDataChange = dsTransDataChange
    Left = 320
    Top = 136
  end
  object QDetalle: TADOQuery
    Connection = DM.ADOSigma
    DataSource = dsTrans
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
        Name = 'tra_numero'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select DET_CANTIDAD, DET_SECUENCIA, EMP_CODIGO, '
      'PRO_CODIGO, PRO_NOMBRE, PRO_RFABRIC, PRO_RORIGINAL, '
      'TRA_NUMERO from DET_TRANSFER'
      'where emp_codigo = :emp_codigo'
      'and tra_numero = :tra_numero'
      'order by det_secuencia')
    Left = 288
    Top = 168
    object QDetalleDET_CANTIDAD: TFloatField
      FieldName = 'DET_CANTIDAD'
      Origin = 'DET_TRANSFER.DET_CANTIDAD'
    end
    object QDetalleDET_SECUENCIA: TIntegerField
      FieldName = 'DET_SECUENCIA'
      Origin = 'DET_TRANSFER.DET_SECUENCIA'
    end
    object QDetalleEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'DET_TRANSFER.EMP_CODIGO'
    end
    object QDetallePRO_CODIGO: TIntegerField
      FieldName = 'PRO_CODIGO'
      Origin = 'DET_TRANSFER.PRO_CODIGO'
    end
    object QDetallePRO_NOMBRE: TIBStringField
      FieldName = 'PRO_NOMBRE'
      Origin = 'DET_TRANSFER.PRO_NOMBRE'
      Size = 60
    end
    object QDetallePRO_RFABRIC: TIBStringField
      FieldName = 'PRO_RFABRIC'
      Origin = 'DET_TRANSFER.PRO_RFABRIC'
      Size = 60
    end
    object QDetallePRO_RORIGINAL: TIBStringField
      FieldName = 'PRO_RORIGINAL'
      Origin = 'DET_TRANSFER.PRO_RORIGINAL'
      Size = 50
    end
    object QDetalleTRA_NUMERO: TIntegerField
      FieldName = 'TRA_NUMERO'
      Origin = 'DET_TRANSFER.TRA_NUMERO'
    end
  end
  object dsDetalle: TDataSource
    DataSet = QDetalle
    Left = 320
    Top = 168
  end
end
