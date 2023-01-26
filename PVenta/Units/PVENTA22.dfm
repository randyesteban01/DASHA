object frmNotasDB: TfrmNotasDB
  Left = 570
  Top = 218
  ActiveControl = edCliente
  BorderIcons = [biSystemMenu, biMinimize, biHelp]
  BorderStyle = bsSingle
  Caption = 'Notas de d'#233'bito'
  ClientHeight = 406
  ClientWidth = 615
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
  object spcentros: TSpeedButton
    Left = 483
    Top = 378
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
  object Panel1: TPanel
    Left = 8
    Top = 7
    Width = 601
    Height = 41
    TabOrder = 0
    object Label1: TLabel
      Left = 19
      Top = 13
      Width = 37
      Height = 13
      Caption = 'N'#250'mero'
    end
    object Label14: TLabel
      Left = 151
      Top = 8
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
      DataField = 'NDE_NUMERO'
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
      Top = 8
      Width = 393
      Height = 21
      DataField = 'SUC_CODIGO'
      DataSource = dsNota
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
    Top = 56
    Width = 601
    Height = 313
    Ctl3D = True
    ParentCtl3D = False
    TabOrder = 1
    object SpeedButton2: TSpeedButton
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
      OnClick = SpeedButton2Click
    end
    object Label3: TLabel
      Left = 10
      Top = 56
      Width = 30
      Height = 13
      Caption = 'Fecha'
    end
    object Label4: TLabel
      Left = 10
      Top = 32
      Width = 46
      Height = 13
      Caption = 'Concepto'
    end
    object Label6: TLabel
      Left = 266
      Top = 56
      Width = 30
      Height = 13
      Caption = 'Monto'
    end
    object Label2: TLabel
      Left = 10
      Top = 8
      Width = 32
      Height = 13
      Caption = 'Cliente'
    end
    object Label5: TLabel
      Left = 146
      Top = 56
      Width = 31
      Height = 13
      Caption = 'Vence'
    end
    object edCliente: TEdit
      Left = 64
      Top = 8
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
      TabOrder = 0
      OnKeyDown = edClienteKeyDown
    end
    object tCliente: TEdit
      Left = 141
      Top = 8
      Width = 252
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
      Width = 329
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'NDE_CONCEPTO'
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
      DataField = 'NDE_FECHA'
      DataSource = dsNota
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 304
      Top = 56
      Width = 89
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'NDE_MONTO'
      DataSource = dsNota
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object PageControl1: TPageControl
      Left = 1
      Top = 80
      Width = 599
      Height = 232
      ActivePage = TabSheet2
      Align = alBottom
      TabOrder = 6
      object TabSheet2: TTabSheet
        Caption = 'Cuentas contables'
        ImageIndex = 1
        object Label8: TLabel
          Left = 424
          Top = 157
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
          Top = 173
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
          Top = 189
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
        object btBuscaCta: TBitBtn
          Left = 8
          Top = 177
          Width = 153
          Height = 25
          Caption = '[ F4 ] - Buscar Cuenta   '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = btBuscaCtaClick
        end
        object btElimina: TBitBtn
          Left = 168
          Top = 177
          Width = 153
          Height = 25
          Caption = '[ F6 ] - Eliminar Cuenta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = btEliminaClick
        end
        object lbCR: TStaticText
          Left = 480
          Top = 155
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
        object lbBAL: TStaticText
          Left = 480
          Top = 187
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
        object lbDB: TStaticText
          Left = 480
          Top = 171
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
          TabOrder = 4
        end
        object GridCuentas: TDBGridObj
          Left = 0
          Top = 0
          Width = 591
          Height = 153
          Align = alTop
          DataSource = dsDetalle
          Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 5
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnColEnter = GridCuentasColEnter
          OnDrawColumnCell = GridCuentasDrawColumnCell
          OnEnter = GridCuentasEnter
          OnKeyDown = GridCuentasKeyDown
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
              Width = 244
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
              FieldName = 'DET_MONTO'
              Title.Alignment = taCenter
              Title.Caption = 'Monto'
              Width = 95
              Visible = True
            end>
        end
      end
    end
    object DBEdit4: TDBEdit
      Left = 184
      Top = 56
      Width = 73
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'NDE_VENCE'
      DataSource = dsNota
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object DBCheckBox1: TDBCheckBox
      Left = 304
      Top = 80
      Width = 89
      Height = 17
      Caption = 'Genera NCF'
      DataField = 'NDE_GENERA_NCF'
      DataSource = dsNota
      TabOrder = 7
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
  end
  object btLimpiar: TBitBtn
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
    TabOrder = 2
    OnClick = btLimpiarClick
  end
  object BitBtn2: TBitBtn
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
    ParentFont = False
    TabOrder = 3
    OnClick = btCloseClick
    NumGlyphs = 2
  end
  object btPost: TBitBtn
    Left = 16
    Top = 375
    Width = 147
    Height = 25
    Caption = '[ F2 ] - Grabar Nota'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = btPostClick
  end
  object QNota: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    BeforePost = QNotaBeforePost
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
      'CLI_CODIGO, CLI_REFERENCIA, EMP_CODIGO, NDE_CONCEPTO, '
      'NDE_FECHA, NDE_MONTO, NDE_NUMERO, NDE_STATUS, '
      'USU_CODIGO, NDE_ABONO, NDE_VENCE, SUC_CODIGO,'
      'NDE_GENERA_NCF'
      'from '
      'NOTASDEBITO'
      'where '
      'emp_codigo = :emp'
      'and nde_numero = :numero'
      'and suc_codigo = :suc')
    Left = 184
    Top = 208
    object QNotaCLI_CODIGO: TIntegerField
      FieldName = 'CLI_CODIGO'
      Origin = 'NOTASDEBITO.CLI_CODIGO'
    end
    object QNotaCLI_REFERENCIA: TIBStringField
      FieldName = 'CLI_REFERENCIA'
      Origin = 'NOTASDEBITO.CLI_REFERENCIA'
      Size = 10
    end
    object QNotaEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'NOTASDEBITO.EMP_CODIGO'
      Required = True
    end
    object QNotaNDE_CONCEPTO: TIBStringField
      FieldName = 'NDE_CONCEPTO'
      Origin = 'NOTASDEBITO.NDE_CONCEPTO'
      Size = 60
    end
    object QNotaNDE_FECHA: TDateTimeField
      FieldName = 'NDE_FECHA'
      Origin = 'NOTASDEBITO.NDE_FECHA'
      EditMask = 'cc-cc-cccc'
    end
    object QNotaNDE_MONTO: TFloatField
      FieldName = 'NDE_MONTO'
      Origin = 'NOTASDEBITO.NDE_MONTO'
      OnChange = QNotaNDE_MONTOChange
      currency = True
    end
    object QNotaNDE_NUMERO: TIntegerField
      FieldName = 'NDE_NUMERO'
      Origin = 'NOTASDEBITO.NDE_NUMERO'
      Required = True
    end
    object QNotaNDE_STATUS: TIBStringField
      FieldName = 'NDE_STATUS'
      Origin = 'NOTASDEBITO.NDE_STATUS'
      Size = 3
    end
    object QNotaUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
      Origin = 'NOTASDEBITO.USU_CODIGO'
    end
    object QNotaNDE_ABONO: TFloatField
      FieldName = 'NDE_ABONO'
      Origin = 'NOTASDEBITO.NDE_ABONO'
    end
    object QNotaNDE_VENCE: TDateTimeField
      FieldName = 'NDE_VENCE'
      Origin = 'NOTASDEBITO.NDE_VENCE'
      EditMask = 'cc-cc-cccc'
    end
    object QNotaSUC_CODIGO: TIntegerField
      FieldName = 'SUC_CODIGO'
    end
    object QNotaNDE_GENERA_NCF: TStringField
      FieldName = 'NDE_GENERA_NCF'
      Size = 5
    end
  end
  object dsNota: TDataSource
    AutoEdit = False
    DataSet = QNota
    Left = 216
    Top = 208
  end
  object Search: TQrySearchDlgADO
    AliasName = DM.ADOSigma
    Left = 280
    Top = 208
  end
  object QDetalle: TADOQuery
    Connection = DM.ADOSigma
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
      'CAT_CUENTA, CAT_NOMBRE, NDE_NUMERO, DET_MONTO, '
      'DET_ORIGEN, DET_SECUENCIA, EMP_CODIGO, SUC_CODIGO'
      'FROM'
      'CONTDET_NOTADEBITO'
      'WHERE '
      'EMP_CODIGO = :EMP'
      'AND NDE_NUMERO = :NUM'
      'AND SUC_CODIGO = :SUC'
      'ORDER BY'
      'DET_SECUENCIA')
    Left = 184
    Top = 240
    object QDetalleCAT_CUENTA: TIBStringField
      FieldName = 'CAT_CUENTA'
      Origin = 'CONTDET_NOTADEBITO.CAT_CUENTA'
      OnChange = QDetalleCAT_CUENTAChange
      Size = 15
    end
    object QDetalleCAT_NOMBRE: TIBStringField
      FieldName = 'CAT_NOMBRE'
      Origin = 'CONTDET_NOTADEBITO.CAT_NOMBRE'
      Size = 60
    end
    object QDetalleNDE_NUMERO: TIntegerField
      FieldName = 'NDE_NUMERO'
      Origin = 'CONTDET_NOTADEBITO.NDE_NUMERO'
    end
    object QDetalleDET_MONTO: TFloatField
      FieldName = 'DET_MONTO'
      Origin = 'CONTDET_NOTADEBITO.DET_MONTO'
      currency = True
    end
    object QDetalleDET_ORIGEN: TIBStringField
      FieldName = 'DET_ORIGEN'
      Origin = 'CONTDET_NOTADEBITO.DET_ORIGEN'
      Size = 7
    end
    object QDetalleDET_SECUENCIA: TIntegerField
      FieldName = 'DET_SECUENCIA'
      Origin = 'CONTDET_NOTADEBITO.DET_SECUENCIA'
    end
    object QDetalleEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'CONTDET_NOTADEBITO.EMP_CODIGO'
    end
    object QDetalleSUC_CODIGO: TIntegerField
      FieldName = 'SUC_CODIGO'
    end
  end
  object dsDetalle: TDataSource
    DataSet = QDetalle
    Left = 216
    Top = 240
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
    Left = 344
    Top = 240
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
    Left = 376
    Top = 240
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
      'emp_codigo, nde_numero,'
      'cen_codigo, det_secuencia, cen_nombre, det_monto,'
      'suc_codigo, cat_cuenta, cen_referencia, sub_referencia,'
      'sub_secuencia'
      'from'
      'NDCentroCostos'
      'where'
      'emp_codigo = :emp'
      'and suc_codigo = :suc'
      'and nde_numero = :num'
      'order by'
      'det_Secuencia')
    Left = 344
    Top = 272
    object QCentroemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
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
    object QCentrosub_referencia: TStringField
      FieldName = 'sub_referencia'
      Size = 50
    end
    object QCentrosub_secuencia: TIntegerField
      FieldName = 'sub_secuencia'
    end
    object QCentronde_numero: TIntegerField
      FieldName = 'nde_numero'
    end
    object QCentrocat_cuenta: TStringField
      FieldName = 'cat_cuenta'
      Size = 15
    end
  end
end
