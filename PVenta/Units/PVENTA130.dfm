object frmCotMultiple: TfrmCotMultiple
  Left = 213
  Top = 107
  ActiveControl = DBEdit5
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Cotizaci'#243'n M'#250'ltiple'
  ClientHeight = 415
  ClientWidth = 682
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
  OnKeyPress = FormKeyPress
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 682
    Height = 153
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object Label2: TLabel
      Left = 8
      Top = 32
      Width = 49
      Height = 13
      Caption = 'Proveedor'
    end
    object SpeedButton2: TSpeedButton
      Left = 132
      Top = 32
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
      OnClick = SpeedButton2Click
    end
    object Label9: TLabel
      Left = 8
      Top = 8
      Width = 30
      Height = 13
      Caption = 'Fecha'
    end
    object Label1: TLabel
      Left = 138
      Top = 8
      Width = 46
      Height = 13
      Caption = 'Concepto'
    end
    object Label4: TLabel
      Left = 8
      Top = 56
      Width = 49
      Height = 13
      Caption = 'Proveedor'
    end
    object SpeedButton1: TSpeedButton
      Left = 132
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
      OnClick = SpeedButton1Click
    end
    object Label7: TLabel
      Left = 8
      Top = 80
      Width = 49
      Height = 13
      Caption = 'Proveedor'
    end
    object SpeedButton3: TSpeedButton
      Left = 132
      Top = 80
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
      OnClick = SpeedButton3Click
    end
    object Label3: TLabel
      Left = 8
      Top = 104
      Width = 49
      Height = 13
      Caption = 'Proveedor'
    end
    object SpeedButton4: TSpeedButton
      Left = 132
      Top = 104
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
      OnClick = SpeedButton4Click
    end
    object Label8: TLabel
      Left = 8
      Top = 128
      Width = 49
      Height = 13
      Caption = 'Proveedor'
    end
    object SpeedButton5: TSpeedButton
      Left = 132
      Top = 128
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
      OnClick = SpeedButton5Click
    end
    object tprov1: TEdit
      Left = 160
      Top = 32
      Width = 513
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
    object DBEdit5: TDBEdit
      Left = 64
      Top = 8
      Width = 65
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'COT_FECHA'
      DataSource = dsCot
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit1: TDBEdit
      Left = 192
      Top = 8
      Width = 481
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'COT_CONCEPTO'
      DataSource = dsCot
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object tprov2: TEdit
      Left = 160
      Top = 56
      Width = 513
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
    object tprov3: TEdit
      Left = 160
      Top = 80
      Width = 513
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
      TabOrder = 4
    end
    object tprov4: TEdit
      Left = 160
      Top = 104
      Width = 513
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
    object tprov5: TEdit
      Left = 160
      Top = 128
      Width = 513
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
      TabOrder = 6
    end
    object dbprov1: TDBEdit
      Left = 64
      Top = 32
      Width = 65
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'SUP_CODIGO1'
      DataSource = dsCot
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object dbprov2: TDBEdit
      Left = 64
      Top = 56
      Width = 65
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'SUP_CODIGO2'
      DataSource = dsCot
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object dbprov3: TDBEdit
      Left = 64
      Top = 80
      Width = 65
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'SUP_CODIGO3'
      DataSource = dsCot
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
    end
    object dbprov4: TDBEdit
      Left = 64
      Top = 104
      Width = 65
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'SUP_CODIGO4'
      DataSource = dsCot
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
    end
    object dbprov5: TDBEdit
      Left = 64
      Top = 128
      Width = 65
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'SUP_CODIGO5'
      DataSource = dsCot
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 376
    Width = 682
    Height = 39
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 2
    object btBusca: TBitBtn
      Left = 504
      Top = 7
      Width = 81
      Height = 25
      Caption = 'Buscar '
      TabOrder = 0
      TabStop = False
      OnClick = btBuscaClick
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
    end
    object btGRabar: TBitBtn
      Left = 8
      Top = 7
      Width = 129
      Height = 25
      Caption = '[ F2 ] - Grabar/Imprimir'
      TabOrder = 1
      TabStop = False
      OnClick = btGRabarClick
    end
    object btLimpiar: TBitBtn
      Left = 144
      Top = 7
      Width = 81
      Height = 26
      Caption = '[ F3 ] - Limpiar'
      TabOrder = 2
      TabStop = False
      OnClick = btLimpiarClick
    end
    object BitBtn6: TBitBtn
      Left = 592
      Top = 7
      Width = 81
      Height = 25
      Caption = '[ F10 ] - Salir '
      TabOrder = 3
      TabStop = False
      OnClick = BitBtn6Click
    end
    object btBuscaProd: TBitBtn
      Left = 232
      Top = 7
      Width = 129
      Height = 25
      Caption = '[ F4 ] - Buscar producto'
      TabOrder = 4
      TabStop = False
      OnClick = btBuscaProdClick
    end
    object btElimina: TBitBtn
      Left = 368
      Top = 7
      Width = 129
      Height = 25
      Caption = '[ F6 ] - Eliminar fila      '
      TabOrder = 5
      TabStop = False
      OnClick = btEliminaClick
    end
  end
  object Grid: TDBGrid
    Left = 0
    Top = 153
    Width = 682
    Height = 223
    Align = alClient
    Ctl3D = False
    DataSource = dsDetalle
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnColEnter = GridColEnter
    OnEnter = GridEnter
    OnKeyDown = GridKeyDown
    OnKeyPress = GridKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'PRO_CODIGO'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Width = 66
        Visible = True
      end
      item
        Color = clInfoBk
        Expanded = False
        FieldName = 'PRO_NOMBRE'
        ReadOnly = True
        Title.Caption = 'Descripci'#243'n del Producto'
        Width = 198
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DET_CANTIDAD'
        Title.Alignment = taCenter
        Title.Caption = 'Cant.'
        Width = 33
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DET_MEDIDA'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Medida'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DET_PRECIOSUP1'
        Title.Alignment = taCenter
        Title.Caption = 'Prov.1'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DET_PRECIOSUP2'
        Title.Alignment = taCenter
        Title.Caption = 'Prov.2'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DET_PRECIOSUP3'
        Title.Alignment = taCenter
        Title.Caption = 'Prov.3'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DET_PRECIOSUP4'
        Title.Alignment = taCenter
        Title.Caption = 'Prov.4'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DET_PRECIOSUP5'
        Title.Alignment = taCenter
        Title.Caption = 'Prov.5'
        Visible = True
      end>
  end
  object QCotizacion: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    BeforePost = QCotizacionBeforePost
    OnNewRecord = QCotizacionNewRecord
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
        Name = 'numero'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select '
      'COT_CONCEPTO, COT_FECHA, COT_NUMERO, EMP_CODIGO,'
      'SUP_CODIGO1, SUP_CODIGO2, SUP_CODIGO3, SUP_CODIGO4, '
      'SUP_CODIGO5, USU_CODIGO'
      ' from '
      'COTIZACION_MULTIPLE'
      'where '
      'emp_codigo = :emp'
      'and cot_numero = :numero')
    Left = 448
    Top = 224
    object QCotizacionCOT_CONCEPTO: TIBStringField
      FieldName = 'COT_CONCEPTO'
      Origin = 'COTIZACION_MULTIPLE.COT_CONCEPTO'
      Size = 60
    end
    object QCotizacionCOT_FECHA: TDateTimeField
      FieldName = 'COT_FECHA'
      Origin = 'COTIZACION_MULTIPLE.COT_FECHA'
      EditMask = 'cc-cc-cccc'
    end
    object QCotizacionCOT_NUMERO: TIntegerField
      FieldName = 'COT_NUMERO'
      Origin = 'COTIZACION_MULTIPLE.COT_NUMERO'
    end
    object QCotizacionEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'COTIZACION_MULTIPLE.EMP_CODIGO'
    end
    object QCotizacionSUP_CODIGO1: TIntegerField
      FieldName = 'SUP_CODIGO1'
      Origin = 'COTIZACION_MULTIPLE.SUP_CODIGO1'
      OnGetText = QCotizacionSUP_CODIGO1GetText
    end
    object QCotizacionSUP_CODIGO2: TIntegerField
      FieldName = 'SUP_CODIGO2'
      Origin = 'COTIZACION_MULTIPLE.SUP_CODIGO2'
      OnGetText = QCotizacionSUP_CODIGO2GetText
    end
    object QCotizacionSUP_CODIGO3: TIntegerField
      FieldName = 'SUP_CODIGO3'
      Origin = 'COTIZACION_MULTIPLE.SUP_CODIGO3'
      OnGetText = QCotizacionSUP_CODIGO3GetText
    end
    object QCotizacionSUP_CODIGO4: TIntegerField
      FieldName = 'SUP_CODIGO4'
      Origin = 'COTIZACION_MULTIPLE.SUP_CODIGO4'
      OnGetText = QCotizacionSUP_CODIGO4GetText
    end
    object QCotizacionSUP_CODIGO5: TIntegerField
      FieldName = 'SUP_CODIGO5'
      Origin = 'COTIZACION_MULTIPLE.SUP_CODIGO5'
      OnGetText = QCotizacionSUP_CODIGO5GetText
    end
    object QCotizacionUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
      Origin = 'COTIZACION_MULTIPLE.USU_CODIGO'
    end
  end
  object dsCot: TDataSource
    DataSet = QCotizacion
    Left = 480
    Top = 224
  end
  object QDetalle: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    BeforePost = QDetalleBeforePost
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
        Name = 'numero'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select '
      'COT_NUMERO, DET_CANTIDAD, DET_MEDIDA, '
      'DET_MEJORPRECIO, DET_PRECIOSUP1, DET_PRECIOSUP2, '
      'DET_PRECIOSUP3, DET_PRECIOSUP4, DET_PRECIOSUP5, '
      'DET_SECUENCIA, EMP_CODIGO, PRO_CODIGO, PRO_NOMBRE, '
      'PRO_RFABRIC, PRO_RORIGINAL'
      'from DET_COTIZACION_MULTIPLE'
      'where '
      'emp_codigo = :emp'
      'and cot_numero = :numero'
      'order by '
      'det_secuencia')
    Left = 448
    Top = 256
    object QDetalleCOT_NUMERO: TIntegerField
      FieldName = 'COT_NUMERO'
      Origin = 'DET_COTIZACION_MULTIPLE.COT_NUMERO'
    end
    object QDetalleDET_CANTIDAD: TFloatField
      FieldName = 'DET_CANTIDAD'
      Origin = 'DET_COTIZACION_MULTIPLE.DET_CANTIDAD'
    end
    object QDetalleDET_MEDIDA: TIBStringField
      FieldName = 'DET_MEDIDA'
      Origin = 'DET_COTIZACION_MULTIPLE.DET_MEDIDA'
      OnChange = QDetalleDET_MEDIDAChange
      Size = 3
    end
    object QDetalleDET_MEJORPRECIO: TFloatField
      FieldName = 'DET_MEJORPRECIO'
      Origin = 'DET_COTIZACION_MULTIPLE.DET_MEJORPRECIO'
    end
    object QDetalleDET_PRECIOSUP1: TFloatField
      FieldName = 'DET_PRECIOSUP1'
      Origin = 'DET_COTIZACION_MULTIPLE.DET_PRECIOSUP1'
      currency = True
    end
    object QDetalleDET_PRECIOSUP2: TFloatField
      FieldName = 'DET_PRECIOSUP2'
      Origin = 'DET_COTIZACION_MULTIPLE.DET_PRECIOSUP2'
      currency = True
    end
    object QDetalleDET_PRECIOSUP3: TFloatField
      FieldName = 'DET_PRECIOSUP3'
      Origin = 'DET_COTIZACION_MULTIPLE.DET_PRECIOSUP3'
      currency = True
    end
    object QDetalleDET_PRECIOSUP4: TFloatField
      FieldName = 'DET_PRECIOSUP4'
      Origin = 'DET_COTIZACION_MULTIPLE.DET_PRECIOSUP4'
      currency = True
    end
    object QDetalleDET_PRECIOSUP5: TFloatField
      FieldName = 'DET_PRECIOSUP5'
      Origin = 'DET_COTIZACION_MULTIPLE.DET_PRECIOSUP5'
      currency = True
    end
    object QDetalleDET_SECUENCIA: TIntegerField
      FieldName = 'DET_SECUENCIA'
      Origin = 'DET_COTIZACION_MULTIPLE.DET_SECUENCIA'
    end
    object QDetalleEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'DET_COTIZACION_MULTIPLE.EMP_CODIGO'
    end
    object QDetallePRO_CODIGO: TIntegerField
      FieldName = 'PRO_CODIGO'
      Origin = 'DET_COTIZACION_MULTIPLE.PRO_CODIGO'
      OnChange = QDetallePRO_CODIGOChange
    end
    object QDetallePRO_NOMBRE: TIBStringField
      FieldName = 'PRO_NOMBRE'
      Origin = 'DET_COTIZACION_MULTIPLE.PRO_NOMBRE'
      Size = 60
    end
    object QDetallePRO_RFABRIC: TIBStringField
      FieldName = 'PRO_RFABRIC'
      Origin = 'DET_COTIZACION_MULTIPLE.PRO_RFABRIC'
      OnChange = QDetallePRO_RFABRICChange
      Size = 60
    end
    object QDetallePRO_RORIGINAL: TIBStringField
      FieldName = 'PRO_RORIGINAL'
      Origin = 'DET_COTIZACION_MULTIPLE.PRO_RORIGINAL'
      OnChange = QDetallePRO_RORIGINALChange
      Size = 50
    end
  end
  object dsDetalle: TDataSource
    DataSet = QDetalle
    Left = 480
    Top = 256
  end
  object Search: TQrySearchDlgADO
    AliasFields.Strings = (
      'Nombre'
      'Codigo')
    AliasName = DM.ADOSigma
    Left = 448
    Top = 288
  end
  object Query1: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <>
    Left = 448
    Top = 192
  end
end
