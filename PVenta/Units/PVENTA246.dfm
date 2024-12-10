object FrmRecibosPagoDestino: TFrmRecibosPagoDestino
  Left = 315
  Top = 296
  Width = 805
  Height = 220
  ActiveControl = GridForma
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Recibos Pago Destino'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 789
    Height = 137
    Align = alTop
    Ctl3D = True
    ParentCtl3D = False
    TabOrder = 0
    DesignSize = (
      789
      137)
    object Label3: TLabel
      Left = 10
      Top = 84
      Width = 30
      Height = 13
      Caption = 'Fecha'
    end
    object Label4: TLabel
      Left = 10
      Top = 60
      Width = 46
      Height = 13
      Caption = 'Concepto'
    end
    object Label6: TLabel
      Left = 138
      Top = 84
      Width = 30
      Height = 13
      Caption = 'Monto'
    end
    object Label2: TLabel
      Left = 10
      Top = 38
      Width = 32
      Height = 13
      Caption = 'Cliente'
    end
    object Label14: TLabel
      Left = 10
      Top = 8
      Width = 41
      Height = 13
      Caption = 'Sucursal'
    end
    object DBEdit2: TDBEdit
      Left = 64
      Top = 56
      Width = 337
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'REC_CONCEPTO'
      DataSource = dsRecibo
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
      Top = 80
      Width = 65
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'REC_FECHA'
      DataSource = dsRecibo
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object DBEdit4: TDBEdit
      Left = 176
      Top = 80
      Width = 113
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = clInfoBk
      DataField = 'REC_MONTO'
      DataSource = dsRecibo
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object GridForma: TDBGrid
      Left = 404
      Top = 8
      Width = 377
      Height = 113
      Anchors = [akLeft, akTop, akRight]
      Ctl3D = False
      DataSource = dsFormaPago
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 5
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'forma'
          Title.Caption = 'Forma pago'
          Width = 96
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FOR_MONTO'
          Title.Alignment = taCenter
          Title.Caption = 'Monto'
          Width = 77
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FOR_DESCRIPCION'
          Title.Caption = 'Descripci'#243'n'
          Width = 67
          Visible = True
        end>
    end
    object DBEdit7: TDBEdit
      Left = 64
      Top = 33
      Width = 337
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'REC_NOMBRE'
      DataSource = dsRecibo
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 64
      Top = 8
      Width = 333
      Height = 21
      DataField = 'SUC_CODIGO'
      DataSource = dsRecibo
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
      TabStop = False
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 137
    Width = 789
    Height = 41
    Align = alTop
    TabOrder = 1
    DesignSize = (
      789
      41)
    object btClose: TSpeedButton
      Left = 151
      Top = 6
      Width = 150
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = '[ F10 ] - Salir / Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      NumGlyphs = 2
      ParentFont = False
      OnClick = btCloseClick
    end
    object btGrabar: TSpeedButton
      Left = 2
      Top = 6
      Width = 148
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = '[ F2 ] - Grabar / Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btGrabarClick
    end
  end
  object QRecibos: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    BeforePost = QRecibosBeforePost
    AfterPost = QRecibosAfterPost
    OnNewRecord = QRecibosNewRecord
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
      'CLI_CODIGO, EMP_CODIGO, REC_CONCEPTO, REC_DESCUENTO, '
      'REC_FECHA, REC_MONTO, REC_NOMBRE, REC_NUMERO, '
      'REC_NUMEROMANUAL, REC_STATUS, REC_TIPO, USU_CODIGO, '
      'VEN_CODIGO, CAJ_CODIGO, REC_COMISION, '
      'REC_PORCCOMISION, REC_CONCEPTO2, PED_TIPO, PED_NUMERO,'
      'SUC_CODIGO, rec_comisionpagada, rec_porc_descuento,'
      'rec_caja, pro_codigo, mon_codigo, rec_tasa, rec_retencion,'
      'rec_interes, NUMERO_RESERVA, REC_MORA'
      'from '
      'RECIBOS'
      'where '
      'emp_codigo = :emp_codigo'
      'and rec_numero = :numero'
      'and suc_codigo = :suc')
    Left = 320
    Top = 145
    object QRecibosCLI_CODIGO: TIntegerField
      FieldName = 'CLI_CODIGO'
      Origin = 'RECIBOS.CLI_CODIGO'
    end
    object QRecibosEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'RECIBOS.EMP_CODIGO'
      Required = True
    end
    object QRecibosREC_CONCEPTO: TIBStringField
      FieldName = 'REC_CONCEPTO'
      Origin = 'RECIBOS.REC_CONCEPTO'
      Size = 60
    end
    object QRecibosREC_DESCUENTO: TFloatField
      FieldName = 'REC_DESCUENTO'
      Origin = 'RECIBOS.REC_DESCUENTO'
      currency = True
    end
    object QRecibosREC_FECHA: TDateTimeField
      FieldName = 'REC_FECHA'
      Origin = 'RECIBOS.REC_FECHA'
      EditMask = 'cc-cc-cccc'
    end
    object QRecibosREC_MONTO: TIBBCDField
      FieldName = 'REC_MONTO'
      Origin = 'RECIBOS.REC_MONTO'
      OnChange = QRecibosREC_MONTOChange
      DisplayFormat = '#,0.00'
      currency = True
      Precision = 9
      Size = 2
    end
    object QRecibosREC_NOMBRE: TIBStringField
      FieldName = 'REC_NOMBRE'
      Origin = 'RECIBOS.REC_NOMBRE'
      Size = 60
    end
    object QRecibosREC_NUMERO: TIntegerField
      FieldName = 'REC_NUMERO'
      Origin = 'RECIBOS.REC_NUMERO'
      Required = True
      DisplayFormat = '00000'
    end
    object QRecibosREC_NUMEROMANUAL: TIBStringField
      FieldName = 'REC_NUMEROMANUAL'
      Origin = 'RECIBOS.REC_NUMEROMANUAL'
      Size = 15
    end
    object QRecibosREC_STATUS: TIBStringField
      FieldName = 'REC_STATUS'
      Origin = 'RECIBOS.REC_STATUS'
      Size = 3
    end
    object QRecibosREC_TIPO: TIBStringField
      FieldName = 'REC_TIPO'
      Origin = 'RECIBOS.REC_TIPO'
      Size = 1
    end
    object QRecibosUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
      Origin = 'RECIBOS.USU_CODIGO'
    end
    object QRecibosVEN_CODIGO: TIntegerField
      FieldName = 'VEN_CODIGO'
      Origin = 'RECIBOS.VEN_CODIGO'
    end
    object QRecibosCAJ_CODIGO: TIntegerField
      FieldName = 'CAJ_CODIGO'
      Origin = 'RECIBOS.CAJ_CODIGO'
    end
    object QRecibosREC_COMISION: TFloatField
      FieldName = 'REC_COMISION'
      Origin = 'RECIBOS.REC_COMISION'
      DisplayFormat = '#,0.00'
      currency = True
    end
    object QRecibosREC_PORCCOMISION: TFloatField
      FieldName = 'REC_PORCCOMISION'
      Origin = 'RECIBOS.REC_PORCCOMISION'
      DisplayFormat = '#,0.00'
      currency = True
    end
    object QRecibosREC_CONCEPTO2: TIBStringField
      FieldName = 'REC_CONCEPTO2'
      Origin = 'RECIBOS.REC_CONCEPTO2'
      Size = 60
    end
    object QRecibosPED_TIPO: TStringField
      FieldName = 'PED_TIPO'
      Size = 1
    end
    object QRecibosPED_NUMERO: TIntegerField
      FieldName = 'PED_NUMERO'
    end
    object QRecibosSUC_CODIGO: TIntegerField
      FieldName = 'SUC_CODIGO'
    end
    object QRecibosrec_comisionpagada: TBCDField
      FieldName = 'rec_comisionpagada'
      DisplayFormat = '#,0.00'
      Precision = 15
      Size = 2
    end
    object QRecibosrec_porc_descuento: TBCDField
      FieldName = 'rec_porc_descuento'
      DisplayFormat = '#,0.00'
      currency = True
      Precision = 15
      Size = 2
    end
    object QRecibosrec_caja: TIntegerField
      FieldName = 'rec_caja'
    end
    object QRecibospro_codigo: TIntegerField
      FieldName = 'pro_codigo'
    end
    object QRecibosmon_codigo: TIntegerField
      FieldName = 'mon_codigo'
    end
    object QRecibosrec_tasa: TBCDField
      FieldName = 'rec_tasa'
      DisplayFormat = '#,0.00'
      currency = True
      Precision = 15
      Size = 2
    end
    object QRecibosrec_retencion: TBCDField
      FieldName = 'rec_retencion'
      DisplayFormat = '#,0.00'
      currency = True
      Precision = 15
      Size = 2
    end
    object QRecibosrec_interes: TBCDField
      FieldName = 'rec_interes'
      DisplayFormat = '#,0.00'
      currency = True
      Precision = 15
      Size = 2
    end
    object QRecibosNUMERO_RESERVA: TIntegerField
      FieldName = 'NUMERO_RESERVA'
    end
    object QRecibosREC_MORA: TCurrencyField
      FieldName = 'REC_MORA'
      DisplayFormat = '#,0.00'
      currency = False
    end
  end
  object dsRecibo: TDataSource
    DataSet = QRecibos
    Left = 352
    Top = 145
  end
  object QFormasPago: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterInsert = QFormasPagoAfterInsert
    BeforeDelete = QFormasPagoBeforeDelete
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
      'select EMP_CODIGO, FOR_DESCRIPCION, FOR_MONTO, '
      'FPA_CODIGO, REC_NUMERO, SUC_CODIGO '
      'from RECFORMAPAGO'
      'where emp_codigo = :emp'
      'and rec_numero = :numero'
      'and suc_codigo = :suc')
    Left = 384
    Top = 145
    object QFormasPagoEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'RECFORMAPAGO.EMP_CODIGO'
    end
    object QFormasPagoFOR_DESCRIPCION: TIBStringField
      DisplayWidth = 60
      FieldName = 'FOR_DESCRIPCION'
      Origin = 'RECFORMAPAGO.FOR_DESCRIPCION'
      Size = 40
    end
    object QFormasPagoFOR_MONTO: TFloatField
      FieldName = 'FOR_MONTO'
      Origin = 'RECFORMAPAGO.FOR_MONTO'
      currency = True
    end
    object QFormasPagoFPA_CODIGO: TIntegerField
      FieldName = 'FPA_CODIGO'
      Origin = 'RECFORMAPAGO.FPA_CODIGO'
    end
    object QFormasPagoREC_NUMERO: TIntegerField
      FieldName = 'REC_NUMERO'
      Origin = 'RECFORMAPAGO.REC_NUMERO'
    end
    object QFormasPagoSUC_CODIGO: TIntegerField
      FieldName = 'SUC_CODIGO'
    end
    object QFormasPagoforma: TStringField
      FieldKind = fkLookup
      FieldName = 'forma'
      LookupDataSet = QForma
      LookupKeyFields = 'FPA_CODIGO'
      LookupResultField = 'FPA_NOMBRE'
      KeyFields = 'FPA_CODIGO'
      Size = 60
      Lookup = True
    end
    object QFormasPagoCAT_CUENTA: TStringField
      FieldKind = fkLookup
      FieldName = 'CAT_CUENTA'
      LookupDataSet = QForma
      LookupKeyFields = 'FPA_CODIGO'
      LookupResultField = 'CAT_CUENTA'
      KeyFields = 'FPA_CODIGO'
      Lookup = True
    end
    object QFormasPagoCAT_NOMBRE: TStringField
      FieldKind = fkLookup
      FieldName = 'CAT_NOMBRE'
      LookupDataSet = QForma
      LookupKeyFields = 'FPA_CODIGO'
      LookupResultField = 'CAT_NOMBRE'
      KeyFields = 'FPA_CODIGO'
      Size = 100
      Lookup = True
    end
  end
  object dsFormaPago: TDataSource
    DataSet = QFormasPago
    Left = 408
    Top = 145
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
    Left = 512
    Top = 145
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
    Left = 544
    Top = 145
  end
  object dsDetalle: TDataSource
    DataSet = QDetalle
    Left = 480
    Top = 145
  end
  object QDetalle: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
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
        Name = 'suc'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT'
      'CAT_CUENTA, CAT_NOMBRE, REC_NUMERO, DET_MONTO, '
      'DET_ORIGEN, DET_SECUENCIA, EMP_CODIGO, SUC_CODIGO'
      'FROM'
      'CONTDET_RECIBOS'
      'WHERE '
      'EMP_CODIGO = :EMP'
      'AND REC_NUMERO = :NUM'
      'and suc_codigo = :suc'
      'ORDER BY'
      'DET_SECUENCIA')
    Left = 448
    Top = 145
    object QDetalleCAT_CUENTA: TIBStringField
      FieldName = 'CAT_CUENTA'
      Origin = 'CONTDET_RECIBOS.CAT_CUENTA'
      Size = 15
    end
    object QDetalleCAT_NOMBRE: TIBStringField
      FieldName = 'CAT_NOMBRE'
      Origin = 'CONTDET_RECIBOS.CAT_NOMBRE'
      Size = 60
    end
    object QDetalleREC_NUMERO: TIntegerField
      FieldName = 'REC_NUMERO'
      Origin = 'CONTDET_RECIBOS.REC_NUMERO'
    end
    object QDetalleDET_MONTO: TFloatField
      FieldName = 'DET_MONTO'
      Origin = 'CONTDET_RECIBOS.DET_MONTO'
      DisplayFormat = '#,0.00'
    end
    object QDetalleDET_ORIGEN: TIBStringField
      FieldName = 'DET_ORIGEN'
      Origin = 'CONTDET_RECIBOS.DET_ORIGEN'
      Size = 7
    end
    object QDetalleDET_SECUENCIA: TIntegerField
      FieldName = 'DET_SECUENCIA'
      Origin = 'CONTDET_RECIBOS.DET_SECUENCIA'
    end
    object QDetalleEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'CONTDET_RECIBOS.EMP_CODIGO'
    end
    object QDetalleSUC_CODIGO: TIntegerField
      FieldName = 'SUC_CODIGO'
    end
  end
  object QForma: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    DataSource = DM.dsEmpresas
    Parameters = <
      item
        Name = 'emp_codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select FPA_CODIGO, FPA_NOMBRE, A.cat_cuenta, B.CAT_NOMBRE'
      'from FORMASPAGO A'
      'INNER JOIN ContCatalogo B ON A.cat_cuenta = B.cat_cuenta'
      'where A.emp_codigo = :emp_codigo'
      'order by A.FPA_NOMBRE')
    Left = 584
    Top = 146
    object QFormaFPA_CODIGO: TIntegerField
      DisplayWidth = 10
      FieldName = 'FPA_CODIGO'
      Origin = 'FORMASPAGO.FPA_CODIGO'
      Required = True
    end
    object QFormaFPA_NOMBRE: TIBStringField
      DisplayWidth = 87
      FieldName = 'FPA_NOMBRE'
      Origin = 'FORMASPAGO.FPA_NOMBRE'
      Size = 60
    end
    object QFormaCAT_CUENTA: TStringField
      FieldName = 'CAT_CUENTA'
    end
    object QFormaCAT_NOMBRE: TStringField
      FieldName = 'CAT_NOMBRE'
      Size = 100
    end
  end
  object dsForma: TDataSource
    DataSet = QForma
    Left = 616
    Top = 146
  end
  object queryMU: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <>
    Left = 344
    Top = 96
  end
end
