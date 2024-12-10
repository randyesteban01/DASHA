object frmEntradasDiario: TfrmEntradasDiario
  Left = 465
  Top = 189
  ActiveControl = DBEdit1
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Entradas de Diario [Crear Documentos]'
  ClientHeight = 416
  ClientWidth = 695
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
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnPaint = FormPaint
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 695
    Height = 154
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 32
      Width = 21
      Height = 13
      Caption = 'ED#'
    end
    object Label2: TLabel
      Left = 133
      Top = 32
      Width = 62
      Height = 13
      Caption = 'N'#250'mero Doc.'
    end
    object Label3: TLabel
      Left = 272
      Top = 32
      Width = 29
      Height = 13
      Caption = 'Fecha'
    end
    object Label4: TLabel
      Left = 383
      Top = 32
      Width = 20
      Height = 13
      Caption = 'Tipo'
    end
    object btTipo: TSpeedButton
      Left = 460
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
      OnClick = btTipoClick
    end
    object Label5: TLabel
      Left = 8
      Top = 56
      Width = 46
      Height = 13
      Caption = 'Concepto'
      FocusControl = DBEdit5
    end
    object Label6: TLabel
      Left = 8
      Top = 104
      Width = 55
      Height = 13
      Caption = 'Beneficiario'
      FocusControl = DBEdit7
    end
    object Label7: TLabel
      Left = 8
      Top = 8
      Width = 40
      Height = 13
      Caption = 'Sucursal'
    end
    object btLocalidad: TSpeedButton
      Left = 124
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
      OnClick = btLocalidadClick
    end
    object lbLocSuc: TLabel
      Left = 8
      Top = 132
      Width = 44
      Height = 13
      Caption = 'Localidad'
    end
    object DBEdit1: TDBEdit
      Left = 72
      Top = 32
      Width = 49
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'ENT_NUMERO'
      DataSource = dsTrans
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 200
      Top = 32
      Width = 65
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'TRA_DOC'
      DataSource = dsTrans
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object DBEdit3: TDBEdit
      Left = 312
      Top = 32
      Width = 65
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'TRA_FECHA'
      DataSource = dsTrans
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object DBEdit4: TDBEdit
      Left = 416
      Top = 32
      Width = 41
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'TDO_CODIGO'
      DataSource = dsTrans
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object tTipo: TEdit
      Left = 488
      Top = 32
      Width = 193
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
      TabOrder = 8
    end
    object DBEdit5: TDBEdit
      Left = 72
      Top = 56
      Width = 609
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'TRA_CONCEPTO1'
      DataSource = dsTrans
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object DBEdit6: TDBEdit
      Left = 72
      Top = 80
      Width = 609
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'TRA_CONCEPTO2'
      DataSource = dsTrans
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object DBEdit7: TDBEdit
      Left = 72
      Top = 104
      Width = 609
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'TRA_BENEF'
      DataSource = dsTrans
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 72
      Top = 8
      Width = 609
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
      TabOrder = 0
    end
    object TSucLoc: TEdit
      Left = 149
      Top = 128
      Width = 532
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
      TabOrder = 9
    end
    object dbedtcont_numeroSucursal: TDBEdit
      Left = 72
      Top = 128
      Width = 46
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'cont_numeroSucursal'
      DataSource = dsTrans
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      OnChange = dbedtcont_numeroSucursalChange
      OnKeyDown = dbedtcont_numeroSucursalKeyDown
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 344
    Width = 695
    Height = 72
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object Label8: TLabel
      Left = 512
      Top = 6
      Width = 59
      Height = 16
      Caption = 'Cr'#233'ditos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 512
      Top = 26
      Width = 55
      Height = 16
      Caption = 'D'#233'bitos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 512
      Top = 46
      Width = 58
      Height = 16
      Caption = 'Balance'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object spcentros: TSpeedButton
      Left = 115
      Top = 26
      Width = 66
      Height = 22
      Caption = 'Centros'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFCFCFCDBDBDB6060606A6A6A6F6F6F6E6E6EC1C1C1D3D3D37272726F6F
        6F6A6A6A606060DBDBDBFFFFFFFFFFFFFFFFFFDCDCDC686868939393AFAFAFAD
        ADAD969696707070777777969696ADADADAFAFAF939393686868FFFFFFFFFFFF
        FFFFFFA8A8A8707070D3D3CE8181814444444545455050505050504545454444
        44818181C3C3C3707070FFFFFFA2C9EE76B1E6375D7E7E8184D3D3CE3489D43D
        4145BCBCBCCECECEC1C1C1ACACAC3D4145388BD4C3C3C3858585FFFFFF4698DD
        DEF1FA82A7B775787AD3D3CE667C834B4C4C6464649191917878786464644A4C
        4C758185C3C3C37A7A7AFFFFFF3A96DBEFFAFE9DE5F46B919A909090E8E8E8DD
        DDDDC0C0C0788B8F6A8E96D4D9DADDDDDDC3C3C39090909E9E9EFFFFFF3B9CDB
        F2FAFDB2EDFA9FE2F180ACB6848A8C9D9D9D7886895BBFD74BCAE672868B9D9D
        9D898B8C5084A6F7F7F7FFFFFF3AA2DBF6FCFEC8F2FCB8EFFBABECFA9BE8F98A
        E3F77BE0F66BDCF65CD9F54ED6F443D3F3D0F3FC3AA1DBFFFFFFFFFFFF3AA7DB
        FEFFFFF8FDFFF6FDFFF5FCFFF3FCFED8F6FC93E6F884E3F775DFF667DBF55BD8
        F4D7F4FC3AA6DBFFFFFFFFFFFF38ACDBE8F6FB93D4EF87CEEE72C0E9C9E9F6F2
        FCFEF3FCFEF2FCFEF0FCFEEFFBFEEEFBFEFEFFFF3BADDBFFFFFFFFFFFF3FADDC
        F1FAFD93DEF592DCF480D5F269CAED6BCBEA84D3EF7FD2EF79D0EF75CFEE71CF
        EEE9F7FB3DB1DCFFFFFFFFFFFF40B3DCF7FCFE8DE4F890DEF59EE0F5ABE1F6EF
        FBFEF4FDFEF3FCFEF1FCFEEFFBFEEEFBFEFAFDFF57BCE0FFFFFFFFFFFF3BB4DB
        FDFEFEFEFFFFFEFEFFFDFEFFFEFFFFEAF7FB6EC8E56EC9E46EC9E46EC9E47CCF
        E783D0E8BAE4F2FFFFFFFFFFFF59C1E060C2E262C3E362C3E362C3E361C3E355
        BFE0EDF8FCF3FAFDF3FAFDF3FAFDF3FAFDF3FAFDFCFEFEFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      OnClick = spcentrosClick
    end
    object btGrabar: TBitBtn
      Left = 8
      Top = 8
      Width = 161
      Height = 25
      Caption = '[ F2 ] - Grabar Documento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      TabStop = False
      OnClick = btGrabarClick
    end
    object btLimpia: TBitBtn
      Left = 8
      Top = 40
      Width = 161
      Height = 25
      Caption = '[ F3 ] - Limpiar Pantalla    '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      TabStop = False
      OnClick = btLimpiaClick
    end
    object btBuscaCta: TBitBtn
      Left = 168
      Top = 8
      Width = 161
      Height = 25
      Caption = '[ F4 ] - Buscar Cuenta     '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      TabStop = False
      OnClick = btBuscaCtaClick
    end
    object btElimina: TBitBtn
      Left = 168
      Top = 40
      Width = 161
      Height = 25
      Caption = '[ F5 ] - Eliminar la Cuenta '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      TabStop = False
      OnClick = btEliminaClick
    end
    object btModifica: TBitBtn
      Left = 328
      Top = 8
      Width = 177
      Height = 25
      Caption = '[ F6 ] - Modificar Documento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      TabStop = False
      OnClick = btModificaClick
    end
    object btSalir: TBitBtn
      Left = 328
      Top = 40
      Width = 177
      Height = 25
      Caption = '[ F10 ] - Salir / Cancelar      '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      TabStop = False
      OnClick = btSalirClick
    end
    object lbCR: TStaticText
      Left = 576
      Top = 6
      Width = 113
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
    end
    object lbDB: TStaticText
      Left = 576
      Top = 26
      Width = 113
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
    end
    object lbBAL: TStaticText
      Left = 576
      Top = 46
      Width = 113
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
    end
  end
  object Grid: TDBGridObj
    Left = 0
    Top = 154
    Width = 695
    Height = 190
    Align = alClient
    DataSource = dsDetalle
    Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 2
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnColEnter = GridColEnter
    OnDrawColumnCell = GridDrawColumnCell
    OnEnter = GridEnter
    OnKeyDown = GridKeyDown
    RowHeight = 0
    Columns = <
      item
        Expanded = False
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CAT_CUENTA'
        Title.Alignment = taCenter
        Title.Caption = 'Cuenta'
        Width = 104
        Visible = True
      end
      item
        Color = clInfoBk
        Expanded = False
        FieldName = 'CAT_NOMBRE'
        Title.Caption = 'Nombre de la Cuenta'
        Width = 253
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DET_ORIGEN'
        Title.Alignment = taCenter
        Title.Caption = 'Origen'
        Width = 53
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DET_DEBITO'
        Title.Alignment = taCenter
        Title.Caption = 'D'#233'bito'
        Width = 95
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DET_CREDITO'
        Title.Alignment = taCenter
        Title.Caption = 'Cr'#233'dito'
        Width = 98
        Visible = True
      end>
  end
  object QTrans: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    BeforePost = QTransBeforePost
    OnCalcFields = QTransCalcFields
    OnNewRecord = QTransNewRecord
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
      'CLI_CODIGO, EMP_CODIGO, ENT_NUMERO, SUP_CODIGO, '
      'TDO_CODIGO, TRA_ANO, TRA_BENEF, TRA_CONCEPTO1, '
      'TRA_CONCEPTO2, TRA_DOC, TRA_FECHA, TRA_MES, '
      'TRA_STATUS, TRA_DEBITOS, TRA_CREDITOS, TRA_NUMERO,'
      'SUC_CODIGO, cont_numeroSucursal'
      'FROM'
      'CONTTRANS'
      'WHERE '
      'EMP_CODIGO = :EMP'
      'AND TRA_NUMERO = :NUM'
      'AND SUC_CODIGO = :SUC')
    Left = 304
    Top = 208
    object QTransCLI_CODIGO: TIntegerField
      FieldName = 'CLI_CODIGO'
      Origin = 'CONTTRANS.CLI_CODIGO'
    end
    object QTransEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'CONTTRANS.EMP_CODIGO'
    end
    object QTransENT_NUMERO: TIntegerField
      FieldName = 'ENT_NUMERO'
      Origin = 'CONTTRANS.ENT_NUMERO'
      OnChange = QTransENT_NUMEROChange
    end
    object QTransSUP_CODIGO: TIntegerField
      FieldName = 'SUP_CODIGO'
      Origin = 'CONTTRANS.SUP_CODIGO'
    end
    object QTransTDO_CODIGO: TIBStringField
      FieldName = 'TDO_CODIGO'
      Origin = 'CONTTRANS.TDO_CODIGO'
      OnGetText = QTransTDO_CODIGOGetText
      Size = 3
    end
    object QTransTRA_ANO: TIntegerField
      FieldName = 'TRA_ANO'
      Origin = 'CONTTRANS.TRA_ANO'
      OnChange = QTransENT_NUMEROChange
    end
    object QTransTRA_BENEF: TIBStringField
      FieldName = 'TRA_BENEF'
      Origin = 'CONTTRANS.TRA_BENEF'
      Size = 60
    end
    object QTransTRA_CONCEPTO1: TIBStringField
      FieldName = 'TRA_CONCEPTO1'
      Origin = 'CONTTRANS.TRA_CONCEPTO1'
      Size = 500
    end
    object QTransTRA_CONCEPTO2: TIBStringField
      FieldName = 'TRA_CONCEPTO2'
      Origin = 'CONTTRANS.TRA_CONCEPTO2'
      Size = 500
    end
    object QTransTRA_DOC: TIBStringField
      FieldName = 'TRA_DOC'
      Origin = 'CONTTRANS.TRA_DOC'
      OnChange = QTransENT_NUMEROChange
      Size = 15
    end
    object QTransTRA_FECHA: TDateTimeField
      FieldName = 'TRA_FECHA'
      Origin = 'CONTTRANS.TRA_FECHA'
      OnChange = QTransTRA_FECHAChange
      EditMask = 'cc-cc-cccc'
    end
    object QTransTRA_MES: TIntegerField
      FieldName = 'TRA_MES'
      Origin = 'CONTTRANS.TRA_MES'
      OnChange = QTransENT_NUMEROChange
    end
    object QTransTRA_STATUS: TIBStringField
      FieldName = 'TRA_STATUS'
      Origin = 'CONTTRANS.TRA_STATUS'
      Size = 3
    end
    object QTransValor: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Valor'
      Calculated = True
    end
    object QTransTRA_DEBITOS: TFloatField
      FieldName = 'TRA_DEBITOS'
      Origin = 'CONTTRANS.TRA_DEBITOS'
    end
    object QTransTRA_CREDITOS: TFloatField
      FieldName = 'TRA_CREDITOS'
      Origin = 'CONTTRANS.TRA_CREDITOS'
    end
    object QTransTRA_NUMERO: TIntegerField
      FieldName = 'TRA_NUMERO'
      Origin = 'CONTTRANS.TRA_NUMERO'
    end
    object QTransSUC_CODIGO: TIntegerField
      FieldName = 'SUC_CODIGO'
    end
    object QTranscont_numeroSucursal: TIntegerField
      FieldName = 'cont_numeroSucursal'
    end
  end
  object QDetalle: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    AfterEdit = QDetalleAfterEdit
    BeforePost = QDetalleBeforePost
    AfterPost = QDetalleAfterPost
    BeforeDelete = QDetalleBeforeDelete
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
      'CAT_CUENTA, CAT_NOMBRE, DET_CREDITO, '
      'DET_DEBITO, DET_ORIGEN, DET_SEC, EMP_CODIGO,'
      'ENT_NUMERO, TRA_ANO, TRA_DOC, TRA_MES, TRA_NUMERO,'
      'SUC_CODIGO'
      'FROM'
      'CONTDET_TRANS'
      'WHERE '
      'EMP_CODIGO = :EMP'
      'AND TRA_NUMERO = :NUM'
      'AND SUC_CODIGO = :SUC'
      'ORDER BY DET_SEC')
    Left = 304
    Top = 240
    object QDetalleCAT_CUENTA: TIBStringField
      FieldName = 'CAT_CUENTA'
      Origin = 'CONTDET_TRANS.CAT_CUENTA'
      OnChange = QDetalleCAT_CUENTAChange
      Size = 15
    end
    object QDetalleCAT_NOMBRE: TIBStringField
      FieldName = 'CAT_NOMBRE'
      Origin = 'CONTDET_TRANS.CAT_NOMBRE'
      Size = 500
    end
    object QDetalleDET_CREDITO: TFloatField
      FieldName = 'DET_CREDITO'
      Origin = 'CONTDET_TRANS.DET_CREDITO'
      currency = True
    end
    object QDetalleDET_DEBITO: TFloatField
      FieldName = 'DET_DEBITO'
      Origin = 'CONTDET_TRANS.DET_DEBITO'
      currency = True
    end
    object QDetalleDET_ORIGEN: TIBStringField
      FieldName = 'DET_ORIGEN'
      Origin = 'CONTDET_TRANS.DET_ORIGEN'
      OnChange = QDetalleDET_ORIGENChange
      Size = 1
    end
    object QDetalleDET_SEC: TIntegerField
      FieldName = 'DET_SEC'
      Origin = 'CONTDET_TRANS.DET_SEC'
      DisplayFormat = '00'
    end
    object QDetalleEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'CONTDET_TRANS.EMP_CODIGO'
    end
    object QDetalleENT_NUMERO: TIntegerField
      FieldName = 'ENT_NUMERO'
      Origin = 'CONTDET_TRANS.ENT_NUMERO'
    end
    object QDetalleTRA_ANO: TIntegerField
      FieldName = 'TRA_ANO'
      Origin = 'CONTDET_TRANS.TRA_ANO'
    end
    object QDetalleTRA_DOC: TIBStringField
      FieldName = 'TRA_DOC'
      Origin = 'CONTDET_TRANS.TRA_DOC'
      Size = 15
    end
    object QDetalleTRA_MES: TIntegerField
      FieldName = 'TRA_MES'
      Origin = 'CONTDET_TRANS.TRA_MES'
    end
    object QDetalleValor: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Valor'
      Calculated = True
    end
    object QDetalleTRA_NUMERO: TIntegerField
      FieldName = 'TRA_NUMERO'
      Origin = 'CONTDET_TRANS.TRA_NUMERO'
    end
    object QDetalleSUC_CODIGO: TIntegerField
      FieldName = 'SUC_CODIGO'
    end
  end
  object dsDetalle: TDataSource
    DataSet = QDetalle
    Left = 336
    Top = 240
  end
  object dsTrans: TDataSource
    DataSet = QTrans
    Left = 336
    Top = 208
  end
  object Search: TQrySearchDlgADO
    AliasName = DM.ADOSigma
    Left = 304
    Top = 272
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
    Left = 448
    Top = 200
    object QSucursalsuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object QSucursalsuc_nombre: TStringField
      FieldName = 'suc_nombre'
      Size = 60
    end
    object QSucursalemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QSucursalalm_codigo: TIntegerField
      FieldName = 'alm_codigo'
    end
  end
  object dsSuc: TDataSource
    DataSet = QSucursal
    Left = 480
    Top = 200
  end
  object QCentro: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
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
        Name = 'num'
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
      'select'
      'emp_codigo, tra_numero,'
      'cen_codigo, det_secuencia, cen_nombre, det_monto,'
      'suc_codigo, cat_cuenta, cen_referencia, sub_referencia,'
      'sub_secuencia'
      'from'
      'ContTrans_CentroCostos'
      'where'
      'emp_codigo = :emp'
      'and tra_numero = :num'
      'and suc_codigo = :suc'
      'order by'
      'det_Secuencia')
    Left = 448
    Top = 232
    object QCentroemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QCentrotra_numero: TIntegerField
      FieldName = 'tra_numero'
    end
    object QCentrocen_codigo: TIntegerField
      FieldName = 'cen_codigo'
    end
    object QCentrodet_secuencia: TIntegerField
      FieldName = 'det_secuencia'
    end
    object QCentrocen_nombre: TStringField
      FieldName = 'cen_nombre'
      Size = 60
    end
    object QCentrodet_monto: TBCDField
      FieldName = 'det_monto'
      Precision = 15
      Size = 2
    end
    object QCentrosuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object QCentrocen_referencia: TStringField
      FieldName = 'cen_referencia'
      Size = 10
    end
    object QCentrosub_secuencia: TIntegerField
      FieldName = 'sub_secuencia'
    end
    object QCentrocat_cuenta: TStringField
      FieldName = 'cat_cuenta'
      Size = 15
    end
    object QCentrosub_referencia: TStringField
      FieldName = 'sub_referencia'
      Size = 10
    end
  end
end
