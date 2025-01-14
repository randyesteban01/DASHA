object frmNotaCreditoCompra: TfrmNotaCreditoCompra
  Left = 326
  Top = 172
  ActiveControl = edProv
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Nota de credito a proveedores'
  ClientHeight = 409
  ClientWidth = 613
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
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object btLimpiar: TSpeedButton
    Left = 168
    Top = 376
    Width = 147
    Height = 25
    Caption = '[ F3 ] - Limpiar / Nueva'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = btLimpiarClick
  end
  object BitBtn2: TSpeedButton
    Left = 320
    Top = 376
    Width = 155
    Height = 25
    Caption = '[ F10 ] - Salir / Cancelar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    NumGlyphs = 2
    ParentFont = False
    OnClick = BitBtn2Click
  end
  object btPost: TSpeedButton
    Left = 16
    Top = 376
    Width = 147
    Height = 25
    Caption = '[ F2 ] - Grabar Nota'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = btPostClick
  end
  object Panel1: TPanel
    Left = 8
    Top = 7
    Width = 601
    Height = 41
    TabOrder = 0
    object Label1: TLabel
      Left = 10
      Top = 13
      Width = 37
      Height = 13
      Caption = 'N'#250'mero'
    end
    object Label14: TLabel
      Left = 151
      Top = 13
      Width = 41
      Height = 13
      Caption = 'Sucursal'
    end
    object DBEdit1: TDBEdit
      Left = 64
      Top = 10
      Width = 73
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      DataField = 'NCR_NUMERO'
      DataSource = dsNota
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 200
      Top = 10
      Width = 393
      Height = 21
      DataField = 'SUC_CODIGO'
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
  end
  object Panel2: TPanel
    Left = 8
    Top = 48
    Width = 601
    Height = 321
    Ctl3D = True
    ParentCtl3D = False
    TabOrder = 1
    object Label2: TLabel
      Left = 8
      Top = 8
      Width = 49
      Height = 13
      Caption = 'Proveedor'
    end
    object btCliente: TSpeedButton
      Left = 116
      Top = 8
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
      OnClick = btClienteClick
    end
    object Label3: TLabel
      Left = 8
      Top = 56
      Width = 30
      Height = 13
      Caption = 'Fecha'
    end
    object Label4: TLabel
      Left = 8
      Top = 32
      Width = 46
      Height = 13
      Caption = 'Concepto'
    end
    object Label6: TLabel
      Left = 458
      Top = 80
      Width = 24
      Height = 13
      Caption = 'Total'
    end
    object Label5: TLabel
      Left = 8
      Top = 80
      Width = 36
      Height = 13
      Caption = 'Factura'
    end
    object Label7: TLabel
      Left = 288
      Top = 56
      Width = 21
      Height = 13
      Caption = 'NCF'
    end
    object Label9: TLabel
      Left = 240
      Top = 80
      Width = 64
      Height = 13
      Caption = 'NCF Modifica'
    end
    object Label12: TLabel
      Left = 458
      Top = 8
      Width = 41
      Height = 13
      Caption = 'Grabado'
    end
    object Label13: TLabel
      Left = 458
      Top = 32
      Width = 33
      Height = 13
      Caption = 'Exento'
    end
    object Label15: TLabel
      Left = 458
      Top = 56
      Width = 19
      Height = 13
      Caption = 'Itbis'
    end
    object edProv: TEdit
      Left = 64
      Top = 8
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
      TabOrder = 0
      OnKeyDown = edProvKeyDown
    end
    object tprov: TEdit
      Left = 141
      Top = 8
      Width = 308
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
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 64
      Top = 32
      Width = 385
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'NCR_CONCEPTO'
      DataSource = dsNota
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object DBEdit3: TDBEdit
      Left = 64
      Top = 56
      Width = 73
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'NCR_FECHA'
      DataSource = dsNota
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object PageControl1: TPageControl
      Left = 1
      Top = 104
      Width = 599
      Height = 216
      ActivePage = TabSheet1
      Align = alBottom
      TabOrder = 10
      object TabSheet2: TTabSheet
        Caption = 'Cuentas contables'
        ImageIndex = 1
        object Label8: TLabel
          Left = 424
          Top = 132
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
        object Label10: TLabel
          Left = 424
          Top = 150
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
        object Label11: TLabel
          Left = 424
          Top = 167
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
        object btBuscaCta: TSpeedButton
          Left = 8
          Top = 161
          Width = 153
          Height = 25
          Caption = '[ F5 ] - Buscar Cuenta   '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = btBuscaCtaClick
        end
        object btElimina: TSpeedButton
          Left = 168
          Top = 161
          Width = 153
          Height = 25
          Caption = '[ F4 ] - Eliminar Cuenta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = btEliminaClick
        end
        object GridCuentas: TDBGrid
          Left = 0
          Top = 0
          Width = 591
          Height = 129
          Align = alTop
          Ctl3D = False
          DataSource = dsDetalle
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
              Width = 319
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
        object lbCR: TStaticText
          Left = 480
          Top = 131
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
          TabOrder = 3
        end
        object lbBAL: TStaticText
          Left = 480
          Top = 165
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
          TabOrder = 1
        end
        object lbDB: TStaticText
          Left = 480
          Top = 148
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
          TabOrder = 2
        end
      end
      object TabSheet1: TTabSheet
        Caption = 'Cuenta por Pagar'
        ImageIndex = 1
        object DBGrid3: TDBGrid
          Left = 0
          Top = 0
          Width = 591
          Height = 188
          Align = alClient
          Color = clInfoBk
          Ctl3D = False
          DataSource = dsCxP
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [dgTitles, dgColLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnEnter = cbfacturaChange
          OnExit = cbfacturaChange
          Columns = <
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'FAC_NUMERO'
              Title.Alignment = taCenter
              Title.Caption = 'N'#250'mero'
              Width = 132
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'FAC_FECHA'
              Title.Alignment = taCenter
              Title.Caption = 'Fecha'
              Width = 61
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'FAC_VENCE'
              Title.Alignment = taCenter
              Title.Caption = 'Vence'
              Width = 66
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FAC_ABONO'
              Title.Alignment = taCenter
              Title.Caption = 'Abono'
              Width = 77
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Saldo'
              Title.Alignment = taCenter
              Width = 76
              Visible = True
            end>
        end
      end
    end
    object cbfactura: TDBComboBox
      Left = 64
      Top = 80
      Width = 169
      Height = 21
      Style = csDropDownList
      DataField = 'fac_numero'
      DataSource = dsNota
      ItemHeight = 13
      TabOrder = 5
      OnChange = cbfacturaChange
      OnClick = cbfacturaClick
    end
    object DBEdit4: TDBEdit
      Left = 314
      Top = 56
      Width = 135
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'ncr_ncf'
      DataSource = dsNota
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 19
      ParentFont = False
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 314
      Top = 80
      Width = 135
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = clInfoBk
      DataField = 'ncr_ncf_modifica'
      DataSource = dsNota
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 19
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
    end
    object DBEdit7: TDBEdit
      Left = 503
      Top = 8
      Width = 92
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'ncr_grabado'
      DataSource = dsNota
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object DBEdit8: TDBEdit
      Left = 503
      Top = 32
      Width = 92
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'ncr_exento'
      DataSource = dsNota
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object DBEdit9: TDBEdit
      Left = 503
      Top = 56
      Width = 92
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'ncr_itbis'
      DataSource = dsNota
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 19
      ParentFont = False
      TabOrder = 9
    end
    object DBEdit5: TDBEdit
      Left = 503
      Top = 80
      Width = 92
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = clInfoBk
      DataField = 'ncr_monto'
      DataSource = dsNota
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 19
      ParentFont = False
      ReadOnly = True
      TabOrder = 11
    end
  end
  object dsSuc: TDataSource
    DataSet = QSucursal
    Left = 368
    Top = 256
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
    Left = 336
    Top = 256
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
  object Search: TQrySearchDlgADO
    AliasName = DM.ADOSigma
    Left = 264
    Top = 216
  end
  object QNota: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    OnNewRecord = QNotaNewRecord
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
        Name = 'num'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'emp_codigo, suc_codigo, ncr_numero, ncr_fecha,'
      'ncr_concepto, ncr_monto, ncr_status, ncr_montousado,'
      'ncr_devolucion, sup_codigo, fac_numero, usu_codigo,'
      'ncr_ncf, ncr_ncf_modifica, ncr_itbis, ncr_grabado, ncr_exento'
      'from'
      'notascreditocompra'
      'where'
      'emp_codigo = :emp'
      'and suc_codigo = :suc'
      'and ncr_numero = :num')
    Left = 336
    Top = 192
    object QNotaemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QNotasuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object QNotancr_numero: TIntegerField
      FieldName = 'ncr_numero'
    end
    object QNotancr_fecha: TDateTimeField
      FieldName = 'ncr_fecha'
      EditMask = 'cc-cc-cccc'
    end
    object QNotancr_concepto: TStringField
      FieldName = 'ncr_concepto'
      Size = 60
    end
    object QNotancr_monto: TBCDField
      FieldName = 'ncr_monto'
      OnChange = QNotancr_montoChange
      currency = True
      Precision = 15
      Size = 2
    end
    object QNotancr_status: TStringField
      FieldName = 'ncr_status'
      Size = 3
    end
    object QNotancr_montousado: TBCDField
      FieldName = 'ncr_montousado'
      Precision = 15
      Size = 2
    end
    object QNotancr_devolucion: TIntegerField
      FieldName = 'ncr_devolucion'
    end
    object QNotasup_codigo: TIntegerField
      FieldName = 'sup_codigo'
    end
    object QNotafac_numero: TStringField
      FieldName = 'fac_numero'
      OnChange = QNotafac_numeroChange
      Size = 15
    end
    object QNotausu_codigo: TIntegerField
      FieldName = 'usu_codigo'
    end
    object QNotancr_ncf: TStringField
      FieldName = 'ncr_ncf'
    end
    object QNotancr_ncf_modifica: TStringField
      FieldName = 'ncr_ncf_modifica'
    end
    object QNotancr_itbis: TBCDField
      FieldName = 'ncr_itbis'
      OnChange = QNotancr_itbisChange
      currency = True
      Precision = 18
      Size = 2
    end
    object QNotancr_grabado: TBCDField
      FieldName = 'ncr_grabado'
      OnChange = QNotancr_grabadoChange
      currency = True
      Precision = 18
      Size = 2
    end
    object QNotancr_exento: TBCDField
      FieldName = 'ncr_exento'
      OnChange = QNotancr_exentoChange
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object dsNota: TDataSource
    DataSet = QNota
    Left = 368
    Top = 192
  end
  object QDetalle: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    BeforePost = QDetalleBeforePost
    AfterPost = QDetalleAfterPost
    AfterDelete = QDetalleAfterDelete
    OnNewRecord = QDetalleNewRecord
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
      'CAT_CUENTA, CAT_NOMBRE, NCR_NUMERO, DET_MONTO, '
      'DET_ORIGEN, DET_SECUENCIA, EMP_CODIGO, SUC_CODIGO'
      'FROM'
      'CONTDET_NOTACREDITOCOMPRA'
      'WHERE '
      'EMP_CODIGO = :EMP'
      'AND NCR_NUMERO = :NUM'
      'AND SUC_CODIGO = :SUC'
      'ORDER BY'
      'DET_SECUENCIA')
    Left = 336
    Top = 224
    object QDetalleCAT_CUENTA: TIBStringField
      FieldName = 'CAT_CUENTA'
      Origin = 'CONTDET_NOTACREDITO.CAT_CUENTA'
      OnChange = QDetalleCAT_CUENTAChange
      Size = 15
    end
    object QDetalleCAT_NOMBRE: TIBStringField
      FieldName = 'CAT_NOMBRE'
      Origin = 'CONTDET_NOTACREDITO.CAT_NOMBRE'
      Size = 60
    end
    object QDetalleNCR_NUMERO: TIntegerField
      FieldName = 'NCR_NUMERO'
      Origin = 'CONTDET_NOTACREDITO.NCR_NUMERO'
    end
    object QDetalleDET_MONTO: TFloatField
      FieldName = 'DET_MONTO'
      Origin = 'CONTDET_NOTACREDITO.DET_MONTO'
      currency = True
    end
    object QDetalleDET_ORIGEN: TIBStringField
      FieldName = 'DET_ORIGEN'
      Origin = 'CONTDET_NOTACREDITO.DET_ORIGEN'
      Size = 7
    end
    object QDetalleDET_SECUENCIA: TIntegerField
      FieldName = 'DET_SECUENCIA'
      Origin = 'CONTDET_NOTACREDITO.DET_SECUENCIA'
    end
    object QDetalleEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'CONTDET_NOTACREDITO.EMP_CODIGO'
    end
    object QDetalleSUC_CODIGO: TIntegerField
      FieldName = 'SUC_CODIGO'
    end
  end
  object dsDetalle: TDataSource
    DataSet = QDetalle
    Left = 368
    Top = 224
  end
  object QFac: TADOQuery
    Connection = DM.ADOSigma
    AfterScroll = QFacAfterScroll
    OnCalcFields = QFacCalcFields
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
        Name = 'sup'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select '
      'FAC_NUMERO, FAC_FECHA, FAC_VENCE, FAC_TOTAL, '
      'FAC_ABONO, EMP_CODIGO, sup_codigo, NCF'
      'from '
      'PROVFACTURAS'
      'where '
      'emp_codigo = :emp'
      'and sup_codigo = :sup'
      'and fac_status = '#39'PEN'#39
      'order by '
      'fac_fecha desc')
    Left = 168
    Top = 208
    object QFacFAC_NUMERO: TIBStringField
      FieldName = 'FAC_NUMERO'
      Origin = 'PROVFACTURAS.FAC_NUMERO'
      Required = True
      Size = 15
    end
    object QFacFAC_FECHA: TDateTimeField
      FieldName = 'FAC_FECHA'
      Origin = 'PROVFACTURAS.FAC_FECHA'
    end
    object QFacFAC_VENCE: TDateTimeField
      FieldName = 'FAC_VENCE'
      Origin = 'PROVFACTURAS.FAC_VENCE'
    end
    object QFacFAC_TOTAL: TFloatField
      FieldName = 'FAC_TOTAL'
      Origin = 'PROVFACTURAS.FAC_TOTAL'
      currency = True
    end
    object QFacFAC_ABONO: TFloatField
      FieldName = 'FAC_ABONO'
      Origin = 'PROVFACTURAS.FAC_ABONO'
      currency = True
    end
    object QFacSaldo: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Saldo'
      currency = True
      Calculated = True
    end
    object QFacEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'PROVFACTURAS.EMP_CODIGO'
      Required = True
    end
    object QFacSUP_CODIGO: TIntegerField
      FieldName = 'SUP_CODIGO'
      Origin = 'PROVFACTURAS.SUP_CODIGO'
      Required = True
    end
    object QFacNCF: TStringField
      FieldName = 'NCF'
    end
  end
  object dsCxP: TDataSource
    DataSet = QFac
    Left = 205
    Top = 208
  end
  object Query1: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <>
    Left = 168
    Top = 240
  end
end
