object frmConsMovimiento: TfrmConsMovimiento
  Left = 135
  Top = 17
  ActiveControl = edCuenta
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Consulta de movimientos por cuenta'
  ClientHeight = 666
  ClientWidth = 1222
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
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1222
    Height = 145
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object Label6: TLabel
      Left = 8
      Top = 32
      Width = 30
      Height = 13
      Caption = 'Fecha'
    end
    object Label3: TLabel
      Left = 8
      Top = 80
      Width = 34
      Height = 13
      Caption = 'Cuenta'
    end
    object btCuenta: TSpeedButton
      Left = 139
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
      OnClick = btCuentaClick
    end
    object Label1: TLabel
      Left = 8
      Top = 104
      Width = 58
      Height = 13
      Caption = 'Bce Anterior'
    end
    object Label2: TLabel
      Left = 512
      Top = 104
      Width = 52
      Height = 13
      Caption = 'Bce Actual'
    end
    object Label4: TLabel
      Left = 176
      Top = 104
      Width = 36
      Height = 13
      Caption = 'D'#233'bitos'
    end
    object Label5: TLabel
      Left = 344
      Top = 104
      Width = 38
      Height = 13
      Caption = 'Cr'#233'ditos'
    end
    object Label7: TLabel
      Left = 8
      Top = 8
      Width = 41
      Height = 13
      Caption = 'Sucursal'
    end
    object Label8: TLabel
      Left = 225
      Top = 32
      Width = 49
      Height = 13
      Caption = 'Proveedor'
    end
    object btProv: TSpeedButton
      Left = 324
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
    object Label9: TLabel
      Left = 8
      Top = 56
      Width = 32
      Height = 13
      Caption = 'Cliente'
    end
    object btcliente: TSpeedButton
      Left = 100
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
      OnClick = btclienteClick
    end
    object Fecha1: TDateTimePicker
      Left = 56
      Top = 32
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
    object Fecha2: TDateTimePicker
      Left = 136
      Top = 32
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
      TabOrder = 2
    end
    object edCuenta: TEdit
      Left = 56
      Top = 80
      Width = 81
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
      OnKeyDown = edCuentaKeyDown
    end
    object tCuenta: TEdit
      Left = 168
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
    object lbAnt: TStaticText
      Left = 72
      Top = 104
      Width = 100
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
    object lbAct: TStaticText
      Left = 576
      Top = 104
      Width = 100
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
    end
    object lbDB: TStaticText
      Left = 224
      Top = 104
      Width = 100
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
    end
    object lbCR: TStaticText
      Left = 392
      Top = 104
      Width = 100
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 56
      Top = 8
      Width = 626
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
    object edProveedor: TEdit
      Left = 280
      Top = 32
      Width = 41
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      OnChange = edProveedorChange
      OnKeyDown = edProveedorKeyDown
    end
    object tProv: TEdit
      Left = 349
      Top = 32
      Width = 332
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
      TabOrder = 10
    end
    object edcliente: TEdit
      Left = 56
      Top = 56
      Width = 41
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
      OnChange = edclienteChange
      OnKeyDown = edclienteKeyDown
    end
    object tcliente: TEdit
      Left = 122
      Top = 56
      Width = 559
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
      TabOrder = 12
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 623
    Width = 1222
    Height = 43
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    DesignSize = (
      1222
      43)
    object lbCantidad: TLabel
      Left = 8
      Top = 15
      Width = 62
      Height = 13
      Caption = '0 Entradas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btClose: TBitBtn
      Left = 1136
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '&Salir'
      TabOrder = 0
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
    object BitBtn2: TBitBtn
      Left = 1016
      Top = 8
      Width = 115
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Imprimir el Listado'
      TabOrder = 1
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
      Left = 712
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Refrescar >>'
      TabOrder = 2
      OnClick = btRefreshClick
    end
    object BitBtn1: TBitBtn
      Left = 792
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Modificar'
      TabOrder = 3
      OnClick = BitBtn1Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
        000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
        00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
        F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
        0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
        FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
        FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
        0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
        00333377737FFFFF773333303300000003333337337777777333}
      NumGlyphs = 2
    end
    object BitBtn3: TBitBtn
      Left = 872
      Top = 8
      Width = 139
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Imprimir el Documento'
      TabOrder = 4
      OnClick = BitBtn3Click
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
    Top = 145
    Width = 1222
    Height = 478
    Align = alClient
    Color = clInfoBk
    Ctl3D = False
    DataSource = dsTrans
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ENT_NUMERO'
        Title.Alignment = taCenter
        Title.Caption = 'ED#'
        Width = 29
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'TRA_FECHA'
        Title.Alignment = taCenter
        Title.Caption = 'Fecha'
        Width = 77
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TDO_NOMBRE'
        Title.Caption = 'Tipo de Documento'
        Width = 135
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TRA_DOC'
        Title.Caption = '# Doc.'
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TRA_CONCEPTO1'
        Title.Caption = 'Concepto'
        Width = 190
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TRA_BENEF'
        Title.Caption = 'Beneficiario'
        Width = 190
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TRA_DEBITOS'
        Title.Alignment = taCenter
        Title.Caption = 'D'#233'bito'
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TRA_CREDITOS'
        Title.Alignment = taCenter
        Title.Caption = 'Cr'#233'dito'
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BALANCE'
        Title.Alignment = taCenter
        Title.Caption = 'Balance'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NCF'
        Visible = True
      end>
  end
  object QTrans: TADOQuery
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
        Name = 'CTA'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'ANT'
        DataType = ftFloat
        Size = -1
        Value = Null
      end
      item
        Name = 'SUP'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'CLI'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM '
      
        'CONTPR_CONS_MOV (:EMP, :SUC, :FEC1, :FEC2, :CTA, :ANT, :SUP, :CL' +
        'I)')
    Left = 280
    Top = 168
    object QTransCLI_CODIGO: TIntegerField
      FieldName = 'CLI_CODIGO'
      Origin = 'CONTPR_CONS_MOV.CLI_CODIGO'
    end
    object QTransEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'CONTPR_CONS_MOV.EMP_CODIGO'
    end
    object QTransENT_NUMERO: TIntegerField
      FieldName = 'ENT_NUMERO'
      Origin = 'CONTPR_CONS_MOV.ENT_NUMERO'
    end
    object QTransSUP_CODIGO: TIntegerField
      FieldName = 'SUP_CODIGO'
      Origin = 'CONTPR_CONS_MOV.SUP_CODIGO'
    end
    object QTransTDO_CODIGO: TIBStringField
      FieldName = 'TDO_CODIGO'
      Origin = 'CONTPR_CONS_MOV.TDO_CODIGO'
      Size = 3
    end
    object QTransTRA_ANO: TIntegerField
      FieldName = 'TRA_ANO'
      Origin = 'CONTPR_CONS_MOV.TRA_ANO'
    end
    object QTransTRA_BENEF: TIBStringField
      FieldName = 'TRA_BENEF'
      Origin = 'CONTPR_CONS_MOV.TRA_BENEF'
      Size = 60
    end
    object QTransTRA_CONCEPTO1: TIBStringField
      DisplayWidth = 500
      FieldName = 'TRA_CONCEPTO1'
      Origin = 'CONTPR_CONS_MOV.TRA_CONCEPTO1'
      Size = 60
    end
    object QTransTRA_CONCEPTO2: TIBStringField
      DisplayWidth = 500
      FieldName = 'TRA_CONCEPTO2'
      Origin = 'CONTPR_CONS_MOV.TRA_CONCEPTO2'
      Size = 60
    end
    object QTransTRA_DOC: TIBStringField
      FieldName = 'TRA_DOC'
      Origin = 'CONTPR_CONS_MOV.TRA_DOC'
      Size = 15
    end
    object QTransTRA_FECHA: TDateTimeField
      FieldName = 'TRA_FECHA'
      Origin = 'CONTPR_CONS_MOV.TRA_FECHA'
    end
    object QTransTRA_MES: TIntegerField
      FieldName = 'TRA_MES'
      Origin = 'CONTPR_CONS_MOV.TRA_MES'
    end
    object QTransTRA_STATUS: TIBStringField
      FieldName = 'TRA_STATUS'
      Origin = 'CONTPR_CONS_MOV.TRA_STATUS'
      Size = 3
    end
    object QTransTRA_DEBITOS: TFloatField
      FieldName = 'TRA_DEBITOS'
      Origin = 'CONTPR_CONS_MOV.TRA_DEBITOS'
      currency = True
    end
    object QTransTRA_CREDITOS: TFloatField
      FieldName = 'TRA_CREDITOS'
      Origin = 'CONTPR_CONS_MOV.TRA_CREDITOS'
      currency = True
    end
    object QTransTRA_NUMERO: TIntegerField
      FieldName = 'TRA_NUMERO'
      Origin = 'CONTPR_CONS_MOV.TRA_NUMERO'
    end
    object QTransTDO_NOMBRE: TIBStringField
      FieldName = 'TDO_NOMBRE'
      Origin = 'CONTPR_CONS_MOV.TDO_NOMBRE'
      Size = 60
    end
    object QTransUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
      Origin = 'CONTPR_CONS_MOV.USU_CODIGO'
    end
    object QTransid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object QTransSUC_CODIGO: TIntegerField
      FieldName = 'SUC_CODIGO'
    end
    object QTransBALANCE: TBCDField
      FieldName = 'BALANCE'
      currency = True
      Precision = 15
      Size = 2
    end
    object QTransORIGEN: TStringField
      FieldName = 'ORIGEN'
      Size = 1
    end
    object QTransNCF: TStringField
      FieldName = 'NCF'
    end
  end
  object dsTrans: TDataSource
    DataSet = QTrans
    Left = 312
    Top = 168
  end
  object Search: TQrySearchDlgADO
    AliasName = DM.ADOSigma
    Left = 280
    Top = 200
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
    Left = 280
    Top = 232
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
    Left = 312
    Top = 232
  end
  object Query1: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <>
    Left = 424
    Top = 168
  end
end
