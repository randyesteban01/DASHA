object frmDevolucionCompra: TfrmDevolucionCompra
  Left = 472
  Top = 313
  ActiveControl = edProv
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Devoluciones en Compra'
  ClientHeight = 416
  ClientWidth = 689
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
  object Panel5: TPanel
    Left = 0
    Top = 344
    Width = 689
    Height = 72
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object Label11: TLabel
      Left = 518
      Top = 13
      Width = 54
      Height = 13
      Caption = 'Cr'#233'ditos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 518
      Top = 29
      Width = 49
      Height = 13
      Caption = 'D'#233'bitos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 518
      Top = 45
      Width = 51
      Height = 13
      Caption = 'Balance'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btGrabar: TBitBtn
      Left = 8
      Top = 8
      Width = 145
      Height = 25
      Caption = '[ F2 ] - Grabar/Imprimir      '
      TabOrder = 0
      TabStop = False
      OnClick = btGrabarClick
    end
    object btLimpiar: TBitBtn
      Left = 160
      Top = 8
      Width = 145
      Height = 25
      Caption = '[ F3 ] - Limpiar/Nueva'
      TabOrder = 1
      TabStop = False
      OnClick = btLimpiarClick
    end
    object btClose: TBitBtn
      Left = 160
      Top = 40
      Width = 145
      Height = 25
      Caption = '[ F10 ] - Cancelar/Salir'
      TabOrder = 2
      TabStop = False
      OnClick = btCloseClick
    end
    object btEliminaCta: TBitBtn
      Left = 6
      Top = 40
      Width = 145
      Height = 25
      Caption = '[ F6 ] - Eliminar Cuenta     '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = btEliminaCtaClick
    end
    object btBuscaCta: TBitBtn
      Left = 314
      Top = 8
      Width = 145
      Height = 25
      Caption = '[ F5 ] - Buscar Cuenta   '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = btBuscaCtaClick
    end
    object lbCR: TStaticText
      Left = 576
      Top = 9
      Width = 103
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
    object lbDB: TStaticText
      Left = 576
      Top = 25
      Width = 103
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
    end
    object lbBAL: TStaticText
      Left = 576
      Top = 41
      Width = 103
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 689
    Height = 105
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object Label9: TLabel
      Left = 280
      Top = 56
      Width = 30
      Height = 13
      Caption = 'Fecha'
    end
    object Label10: TLabel
      Left = 396
      Top = 32
      Width = 58
      Height = 13
      Caption = 'Condiciones'
    end
    object Label1: TLabel
      Left = 8
      Top = 32
      Width = 49
      Height = 13
      Caption = 'Proveedor'
    end
    object btProv: TSpeedButton
      Left = 140
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
      OnClick = btProvClick
    end
    object Label14: TLabel
      Left = 396
      Top = 8
      Width = 48
      Height = 13
      Caption = 'Pendiente'
    end
    object Label3: TLabel
      Left = 8
      Top = 56
      Width = 36
      Height = 13
      Caption = 'Factura'
    end
    object Label2: TLabel
      Left = 8
      Top = 80
      Width = 66
      Height = 13
      Caption = 'Total Excento'
    end
    object Label4: TLabel
      Left = 176
      Top = 80
      Width = 68
      Height = 13
      Caption = 'Total Grabado'
    end
    object Label5: TLabel
      Left = 344
      Top = 80
      Width = 46
      Height = 13
      Caption = 'Total Itbis'
    end
    object Label19: TLabel
      Left = 496
      Top = 80
      Width = 81
      Height = 13
      Caption = 'Total Devoluci'#243'n'
    end
    object Label21: TLabel
      Left = 8
      Top = 8
      Width = 41
      Height = 13
      Caption = 'Sucursal'
    end
    object Label6: TLabel
      Left = 396
      Top = 56
      Width = 21
      Height = 13
      Caption = 'NCF'
    end
    object DBEdit5: TDBEdit
      Left = 320
      Top = 56
      Width = 65
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'DEV_FECHA'
      DataSource = dsDevolucion
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object tCondicion: TEdit
      Left = 464
      Top = 32
      Width = 217
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
    object edProv: TEdit
      Left = 80
      Top = 32
      Width = 57
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnKeyDown = edProvKeyDown
    end
    object tProv: TEdit
      Left = 165
      Top = 32
      Width = 220
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
    object tPendiente: TEdit
      Left = 464
      Top = 8
      Width = 81
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
      TabOrder = 7
    end
    object DBEdit1: TDBEdit
      Left = 80
      Top = 56
      Width = 89
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'FAC_NUMERO'
      DataSource = dsDevolucion
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object DBEdit2: TDBEdit
      Left = 80
      Top = 80
      Width = 89
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      DataField = 'DEV_EXCENTO'
      DataSource = dsDevolucion
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
    end
    object DBEdit3: TDBEdit
      Left = 248
      Top = 80
      Width = 89
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      DataField = 'DEV_GRABADO'
      DataSource = dsDevolucion
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
    end
    object DBEdit4: TDBEdit
      Left = 400
      Top = 80
      Width = 89
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      DataField = 'DEV_ITBIS'
      DataSource = dsDevolucion
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
    end
    object DBEdit10: TDBEdit
      Left = 584
      Top = 80
      Width = 97
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      DataField = 'DEV_TOTAL'
      DataSource = dsDevolucion
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 11
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 80
      Top = 8
      Width = 305
      Height = 21
      DataField = 'SUC_CODIGO'
      DataSource = dsDevolucion
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
    object DBEdit6: TDBEdit
      Left = 464
      Top = 56
      Width = 217
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'dev_ncf'
      DataSource = dsDevolucion
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 19
      ParentFont = False
      TabOrder = 4
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 105
    Width = 689
    Height = 239
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = 'Productos'
      object Grid: TDBGrid
        Left = 0
        Top = 0
        Width = 681
        Height = 211
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
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnColEnter = GridColEnter
        OnEnter = GridEnter
        OnKeyDown = GridKeyDown
        Columns = <
          item
            Color = clInfoBk
            Expanded = False
            FieldName = 'PRO_NOMBRE'
            Title.Caption = 'Nombre del Producto'
            Width = 208
            Visible = True
          end
          item
            Color = clInfoBk
            Expanded = False
            FieldName = 'DEV_CANTFACTURADA'
            Title.Alignment = taCenter
            Title.Caption = 'Cant.'
            Width = 32
            Visible = True
          end
          item
            Alignment = taCenter
            Color = clInfoBk
            Expanded = False
            FieldName = 'DET_MEDIDA'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Medida'
            Visible = True
          end
          item
            Color = clInfoBk
            Expanded = False
            FieldName = 'DEV_COSTO'
            Title.Alignment = taCenter
            Title.Caption = 'Costo'
            Width = 57
            Visible = True
          end
          item
            Alignment = taCenter
            Color = clInfoBk
            Expanded = False
            FieldName = 'DEV_CONITBIS'
            Title.Caption = 'Itbis?'
            Visible = True
          end
          item
            Color = clInfoBk
            Expanded = False
            FieldName = 'PrecioItbis'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Antes Itbis'
            Width = 54
            Visible = True
          end
          item
            Color = clInfoBk
            Expanded = False
            FieldName = 'CalcItbis'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Itbis'
            Width = 52
            Visible = True
          end
          item
            Alignment = taCenter
            Color = clInfoBk
            Expanded = False
            FieldName = 'DET_FECHAVENCE'
            Title.Alignment = taCenter
            Title.Caption = 'Vence'
            Width = 54
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DEV_CANTIDAD'
            Title.Alignment = taCenter
            Title.Caption = 'A Devolver'
            Width = 58
            Visible = True
          end
          item
            Color = clInfoBk
            Expanded = False
            FieldName = 'Valor'
            ReadOnly = True
            Title.Alignment = taCenter
            Width = 68
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Cuentas contables'
      ImageIndex = 1
      object GridCuentas: TDBGrid
        Left = 0
        Top = 0
        Width = 681
        Height = 211
        Align = alClient
        Ctl3D = False
        DataSource = dsCuentas
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgColLines, dgRowLines, dgTabs, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnColEnter = GridCuentasColEnter
        OnEnter = GridCuentasEnter
        OnKeyDown = GridCuentasKeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'CAT_CUENTA'
            Title.Alignment = taCenter
            Title.Caption = 'Cuenta'
            Width = 93
            Visible = True
          end
          item
            Color = clInfoBk
            Expanded = False
            FieldName = 'CAT_NOMBRE'
            ReadOnly = True
            Title.Caption = 'Nombre de la Cuenta'
            Width = 403
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DET_ORIGEN'
            Title.Alignment = taCenter
            Title.Caption = 'Origen'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DET_MONTO'
            Title.Alignment = taCenter
            Title.Caption = 'Monto'
            Width = 90
            Visible = True
          end>
      end
    end
  end
  object QDevolucion: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    BeforePost = QDevolucionBeforePost
    OnCalcFields = QDevolucionCalcFields
    OnNewRecord = QDevolucionNewRecord
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
        Name = 'numero'
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
      end>
    SQL.Strings = (
      'select '
      'DEV_FECHA, DEV_ITBIS, DEV_NOMBRE, DEV_NUMERO, '
      'DEV_STATUS, DEV_TOTAL, EMP_CODIGO, FAC_NUMERO, '
      'SUP_CODIGO, USU_CODIGO, DEV_GRABADO, DEV_EXCENTO,'
      'SUC_CODIGO, dev_ncf, dev_ncf_modifica'
      'from '
      'DEVOLUCIONCOMPRA'
      'where '
      'emp_codigo = :emp_codigo'
      'and dev_numero = :numero'
      'and suc_codigo = :suc')
    Left = 320
    Top = 192
    object QDevolucionDEV_FECHA: TDateTimeField
      FieldName = 'DEV_FECHA'
      Origin = 'DEVOLUCIONCOMPRA.DEV_FECHA'
      EditMask = 'cc-cc-cccc'
    end
    object QDevolucionDEV_ITBIS: TFloatField
      FieldName = 'DEV_ITBIS'
      Origin = 'DEVOLUCIONCOMPRA.DEV_ITBIS'
      OnChange = QDevolucionDEV_ITBISChange
      currency = True
    end
    object QDevolucionDEV_NOMBRE: TIBStringField
      FieldName = 'DEV_NOMBRE'
      Origin = 'DEVOLUCIONCOMPRA.DEV_NOMBRE'
      Size = 60
    end
    object QDevolucionDEV_NUMERO: TIntegerField
      FieldName = 'DEV_NUMERO'
      Origin = 'DEVOLUCIONCOMPRA.DEV_NUMERO'
    end
    object QDevolucionDEV_STATUS: TIBStringField
      FieldName = 'DEV_STATUS'
      Origin = 'DEVOLUCIONCOMPRA.DEV_STATUS'
      Size = 3
    end
    object QDevolucionDEV_TOTAL: TFloatField
      FieldName = 'DEV_TOTAL'
      Origin = 'DEVOLUCIONCOMPRA.DEV_TOTAL'
      currency = True
    end
    object QDevolucionEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'DEVOLUCIONCOMPRA.EMP_CODIGO'
    end
    object QDevolucionSUP_CODIGO: TIntegerField
      FieldName = 'SUP_CODIGO'
      Origin = 'DEVOLUCIONCOMPRA.SUP_CODIGO'
      OnChange = QDevolucionSUP_CODIGOChange
    end
    object QDevolucionUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
      Origin = 'DEVOLUCIONCOMPRA.USU_CODIGO'
    end
    object QDevolucionDEV_GRABADO: TFloatField
      FieldName = 'DEV_GRABADO'
      Origin = 'DEVOLUCIONCOMPRA.DEV_GRABADO'
      OnChange = QDevolucionDEV_GRABADOChange
      currency = True
    end
    object QDevolucionDEV_EXCENTO: TFloatField
      FieldName = 'DEV_EXCENTO'
      Origin = 'DEVOLUCIONCOMPRA.DEV_EXCENTO'
      OnChange = QDevolucionDEV_EXCENTOChange
      currency = True
    end
    object QDevolucionTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      Calculated = True
    end
    object QDevolucionFAC_NUMERO: TIBStringField
      FieldName = 'FAC_NUMERO'
      Origin = 'DEVOLUCIONCOMPRA.FAC_NUMERO'
      OnChange = QDevolucionFAC_NUMEROChange
      Size = 15
    end
    object QDevolucionSUC_CODIGO: TIntegerField
      FieldName = 'SUC_CODIGO'
    end
    object QDevoluciondev_ncf: TStringField
      FieldName = 'dev_ncf'
    end
    object QDevoluciondev_ncf_modifica: TStringField
      FieldName = 'dev_ncf_modifica'
    end
  end
  object dsDevolucion: TDataSource
    DataSet = QDevolucion
    Left = 352
    Top = 192
  end
  object Search: TQrySearchDlgADO
    AliasName = DM.ADOSigma
    Left = 416
    Top = 192
  end
  object QDetalle: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    AfterInsert = QDetalleAfterInsert
    BeforePost = QDetalleBeforePost
    AfterPost = QDetalleAfterPost
    OnCalcFields = QDetalleCalcFields
    OnNewRecord = QDetalleNewRecord
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
      end
      item
        Name = 'suc'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT'
      'DEP_CODIGO, DET_SECUENCIA, DEV_CANTFACTURADA, '
      'DEV_CANTIDAD, DEV_CONITBIS, DEV_COSTO, DEV_ITBIS, '
      'DEV_NUMERO, DEV_TOPECANTIDAD, EMP_CODIGO, '
      'FAM_CODIGO, MAR_CODIGO, PRO_CODIGO, PRO_NOMBRE, '
      'PRO_RFABRIC, PRO_RORIGINAL, PRO_SERVICIO, '
      'DET_COSTOEMP, DET_COSTOITBIS, DET_COSTOUND, '
      'DET_MEDIDA, DET_FECHAVENCE, SUC_CODIGO'
      'FROM'
      'DET_DEVOLUCIONCOMPRA'
      'where '
      'emp_codigo = :emp'
      'and dev_numero = :numero'
      'and suc_codigo = :suc'
      'order by det_secuencia')
    Left = 320
    Top = 224
    object QDetalleValor: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Valor'
      currency = True
      Calculated = True
    end
    object QDetalleDEP_CODIGO: TIntegerField
      FieldName = 'DEP_CODIGO'
      Origin = 'DET_DEVOLUCIONCOMPRA.DEP_CODIGO'
    end
    object QDetalleDET_SECUENCIA: TIntegerField
      FieldName = 'DET_SECUENCIA'
      Origin = 'DET_DEVOLUCIONCOMPRA.DET_SECUENCIA'
    end
    object QDetalleDEV_CANTFACTURADA: TFloatField
      FieldName = 'DEV_CANTFACTURADA'
      Origin = 'DET_DEVOLUCIONCOMPRA.DEV_CANTFACTURADA'
    end
    object QDetalleDEV_CANTIDAD: TFloatField
      FieldName = 'DEV_CANTIDAD'
      Origin = 'DET_DEVOLUCIONCOMPRA.DEV_CANTIDAD'
    end
    object QDetalleDEV_CONITBIS: TIBStringField
      FieldName = 'DEV_CONITBIS'
      Origin = 'DET_DEVOLUCIONCOMPRA.DEV_CONITBIS'
      Size = 1
    end
    object QDetalleDEV_COSTO: TFloatField
      FieldName = 'DEV_COSTO'
      Origin = 'DET_DEVOLUCIONCOMPRA.DEV_COSTO'
      currency = True
    end
    object QDetalleDEV_ITBIS: TFloatField
      FieldName = 'DEV_ITBIS'
      Origin = 'DET_DEVOLUCIONCOMPRA.DEV_ITBIS'
      currency = True
    end
    object QDetalleDEV_NUMERO: TIntegerField
      FieldName = 'DEV_NUMERO'
      Origin = 'DET_DEVOLUCIONCOMPRA.DEV_NUMERO'
    end
    object QDetalleDEV_TOPECANTIDAD: TFloatField
      FieldName = 'DEV_TOPECANTIDAD'
      Origin = 'DET_DEVOLUCIONCOMPRA.DEV_TOPECANTIDAD'
    end
    object QDetalleEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'DET_DEVOLUCIONCOMPRA.EMP_CODIGO'
    end
    object QDetalleFAM_CODIGO: TIntegerField
      FieldName = 'FAM_CODIGO'
      Origin = 'DET_DEVOLUCIONCOMPRA.FAM_CODIGO'
    end
    object QDetalleMAR_CODIGO: TIntegerField
      FieldName = 'MAR_CODIGO'
      Origin = 'DET_DEVOLUCIONCOMPRA.MAR_CODIGO'
    end
    object QDetallePRO_CODIGO: TIntegerField
      FieldName = 'PRO_CODIGO'
      Origin = 'DET_DEVOLUCIONCOMPRA.PRO_CODIGO'
    end
    object QDetallePRO_NOMBRE: TIBStringField
      FieldName = 'PRO_NOMBRE'
      Origin = 'DET_DEVOLUCIONCOMPRA.PRO_NOMBRE'
      Size = 60
    end
    object QDetallePRO_RFABRIC: TIBStringField
      FieldName = 'PRO_RFABRIC'
      Origin = 'DET_DEVOLUCIONCOMPRA.PRO_RFABRIC'
      Size = 60
    end
    object QDetallePRO_RORIGINAL: TIBStringField
      FieldName = 'PRO_RORIGINAL'
      Origin = 'DET_DEVOLUCIONCOMPRA.PRO_RORIGINAL'
      Size = 50
    end
    object QDetallePRO_SERVICIO: TIBStringField
      FieldName = 'PRO_SERVICIO'
      Origin = 'DET_DEVOLUCIONCOMPRA.PRO_SERVICIO'
      Size = 5
    end
    object QDetalleDevuelta: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Devuelta'
      currency = True
      Calculated = True
    end
    object QDetalleDET_COSTOEMP: TFloatField
      FieldName = 'DET_COSTOEMP'
      Origin = 'DET_DEVOLUCIONCOMPRA.DET_COSTOEMP'
      currency = True
    end
    object QDetalleDET_COSTOITBIS: TFloatField
      FieldName = 'DET_COSTOITBIS'
      Origin = 'DET_DEVOLUCIONCOMPRA.DET_COSTOITBIS'
      currency = True
    end
    object QDetalleDET_COSTOUND: TFloatField
      FieldName = 'DET_COSTOUND'
      Origin = 'DET_DEVOLUCIONCOMPRA.DET_COSTOUND'
      currency = True
    end
    object QDetalleDET_MEDIDA: TIBStringField
      FieldName = 'DET_MEDIDA'
      Origin = 'DET_DEVOLUCIONCOMPRA.DET_MEDIDA'
      Size = 3
    end
    object QDetallePrecioItbis: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PrecioItbis'
      Calculated = True
    end
    object QDetalleCalcItbis: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CalcItbis'
      currency = True
      Calculated = True
    end
    object QDetalleCalcDesc: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CalcDesc'
      Calculated = True
    end
    object QDetalleDET_FECHAVENCE: TDateTimeField
      FieldName = 'DET_FECHAVENCE'
      Origin = 'DET_DEVOLUCIONCOMPRA.DET_FECHAVENCE'
    end
    object QDetalleSUC_CODIGO: TIntegerField
      FieldName = 'SUC_CODIGO'
    end
  end
  object dsDetalle: TDataSource
    DataSet = QDetalle
    Left = 352
    Top = 224
  end
  object QCuentas: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    AfterPost = QCuentasAfterPost
    AfterDelete = QCuentasAfterDelete
    OnNewRecord = QCuentasNewRecord
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
        Name = 'NUM'
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
      'CAT_CUENTA, CAT_NOMBRE, DET_MONTO, '
      'DET_ORIGEN, DET_SECUENCIA, EMP_CODIGO, DEV_NUMERO,'
      'SUC_CODIGO'
      'FROM'
      'CONTDET_DEVCOMPRA'
      'WHERE'
      'EMP_CODIGO = :EMP'
      'AND DEV_NUMERO = :NUM'
      'AND SUC_CODIGO = :SUC'
      'ORDER BY'
      'DET_SECUENCIA')
    Left = 320
    Top = 256
    object QCuentasCAT_CUENTA: TIBStringField
      FieldName = 'CAT_CUENTA'
      Origin = 'CONTDET_DEVCOMPRA.CAT_CUENTA'
      OnChange = QCuentasCAT_CUENTAChange
      Size = 15
    end
    object QCuentasCAT_NOMBRE: TIBStringField
      FieldName = 'CAT_NOMBRE'
      Origin = 'CONTDET_DEVCOMPRA.CAT_NOMBRE'
      Size = 60
    end
    object QCuentasDET_MONTO: TFloatField
      FieldName = 'DET_MONTO'
      Origin = 'CONTDET_DEVCOMPRA.DET_MONTO'
      currency = True
    end
    object QCuentasDET_ORIGEN: TIBStringField
      FieldName = 'DET_ORIGEN'
      Origin = 'CONTDET_DEVCOMPRA.DET_ORIGEN'
      Size = 7
    end
    object QCuentasDET_SECUENCIA: TIntegerField
      FieldName = 'DET_SECUENCIA'
      Origin = 'CONTDET_DEVCOMPRA.DET_SECUENCIA'
    end
    object QCuentasEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'CONTDET_DEVCOMPRA.EMP_CODIGO'
    end
    object QCuentasDEV_NUMERO: TIntegerField
      FieldName = 'DEV_NUMERO'
      Origin = 'CONTDET_DEVCOMPRA.DEV_NUMERO'
    end
    object QCuentasSUC_CODIGO: TIntegerField
      FieldName = 'SUC_CODIGO'
    end
  end
  object dsCuentas: TDataSource
    DataSet = QCuentas
    Left = 352
    Top = 256
  end
  object Query1: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <>
    Left = 416
    Top = 224
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
    Left = 488
    Top = 224
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
    Left = 520
    Top = 224
  end
end
