object frmTransferenciaBanco: TfrmTransferenciaBanco
  Left = 688
  Top = 186
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Transferencia Bancaria'
  ClientHeight = 416
  ClientWidth = 625
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
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object spcentros: TSpeedButton
    Left = 315
    Top = 389
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
  end
  object Label8: TLabel
    Left = 448
    Top = 358
    Width = 47
    Height = 13
    Caption = 'Cr'#233'ditos'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel
    Left = 448
    Top = 375
    Width = 43
    Height = 13
    Caption = 'D'#233'bitos'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label10: TLabel
    Left = 448
    Top = 392
    Width = 44
    Height = 13
    Caption = 'Balance'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btElimina: TSpeedButton
    Left = 168
    Top = 385
    Width = 137
    Height = 25
    Caption = '[ F6 ] - Eliminar Cuenta '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object btBuscaCta: TSpeedButton
    Left = 8
    Top = 385
    Width = 153
    Height = 25
    Caption = '[ F4 ] - Buscar Cuenta   '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 625
    Height = 161
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 145
      Top = 80
      Width = 37
      Height = 13
      Caption = 'N'#250'mero'
    end
    object Label2: TLabel
      Left = 15
      Top = 80
      Width = 29
      Height = 13
      Caption = 'Fecha'
    end
    object Label3: TLabel
      Left = 272
      Top = 80
      Width = 30
      Height = 13
      Caption = 'Monto'
    end
    object Label14: TLabel
      Left = 15
      Top = 8
      Width = 40
      Height = 13
      Caption = 'Sucursal'
    end
    object SpeedButton1: TSpeedButton
      Left = 8
      Top = 101
      Width = 57
      Height = 22
      Caption = 'Concepto'
      Flat = True
    end
    object Label4: TLabel
      Left = 15
      Top = 32
      Width = 30
      Height = 13
      Caption = 'Desde'
    end
    object Label5: TLabel
      Left = 15
      Top = 56
      Width = 28
      Height = 13
      Caption = 'Hasta'
    end
    object Label6: TLabel
      Left = 416
      Top = 80
      Width = 23
      Height = 13
      Caption = 'Tasa'
    end
    object DBEdit2: TDBEdit
      Left = 192
      Top = 80
      Width = 73
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'tra_numero'
      DataSource = dsTrans
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object DBEdit3: TDBEdit
      Left = 72
      Top = 80
      Width = 65
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'tra_fecha'
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
      Left = 312
      Top = 80
      Width = 89
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'tra_monto'
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
      Top = 104
      Width = 545
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'DEP_CONCEPTO1'
      DataSource = dsTrans
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object DBEdit7: TDBEdit
      Left = 72
      Top = 128
      Width = 545
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'DEP_CONCEPTO2'
      DataSource = dsTrans
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 72
      Top = 8
      Width = 545
      Height = 21
      DataField = 'suc_codigo'
      DataSource = dsTrans
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
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 72
      Top = 32
      Width = 545
      Height = 21
      DataField = 'ban_codigo1'
      DataSource = dsTrans
      DropDownRows = 20
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'suc_codigo'
      ListField = 'suc_nombre'
      ListSource = dsBancos
      ParentFont = False
      TabOrder = 1
    end
    object DBLookupComboBox3: TDBLookupComboBox
      Left = 72
      Top = 56
      Width = 545
      Height = 21
      DataField = 'ban_codigo2'
      DataSource = dsTrans
      DropDownRows = 20
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'suc_codigo'
      ListField = 'suc_nombre'
      ListSource = dsBancos
      ParentFont = False
      TabOrder = 2
    end
    object DBEdit1: TDBEdit
      Left = 448
      Top = 80
      Width = 57
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'tra_tasa'
      DataSource = dsTrans
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 161
    Width = 625
    Height = 192
    ActivePage = TabSheet1
    Align = alTop
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Cuentas contables'
      object GridCuentas: TDBGridObj
        Left = 0
        Top = 0
        Width = 617
        Height = 164
        Align = alClient
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
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
            Width = 270
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
  object lbCR: TStaticText
    Left = 506
    Top = 358
    Width = 103
    Height = 17
    Alignment = taRightJustify
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = '0.00'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object lbDB: TStaticText
    Left = 506
    Top = 375
    Width = 103
    Height = 17
    Alignment = taRightJustify
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = '0.00'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object lbBAL: TStaticText
    Left = 506
    Top = 392
    Width = 103
    Height = 17
    Alignment = taRightJustify
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = '0.00'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
  end
  object btGrabar: TBitBtn
    Left = 8
    Top = 357
    Width = 153
    Height = 25
    Caption = '[ F2 ] - Grabar Transferencia'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object btLimpiar: TBitBtn
    Left = 168
    Top = 357
    Width = 137
    Height = 25
    Caption = '[ F3 ] - Limpiar Pantalla'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
  end
  object btSalir: TBitBtn
    Left = 312
    Top = 357
    Width = 129
    Height = 25
    Caption = '[ F10 ] - Salir / Cancelar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
  end
  object QTrans: TADOQuery
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
      'emp_codigo, suc_codigo, tra_numero, tra_fecha, ban_codigo1,'
      'ban_codigo2, tra_concepto1, tra_concepto2, tra_monto,'
      'usu_codigo, tra_usuario_anulo, manu_codigo,'
      'tra_status, tra_tasa'
      'from'
      'transferbanco'
      'where'
      'emp_codigo = :emp'
      'and suc_codigo = :suc'
      'and tra_numero = :num'
      '')
    Left = 280
    Top = 232
    object QTransemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QTranssuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object QTranstra_numero: TIntegerField
      FieldName = 'tra_numero'
    end
    object QTranstra_fecha: TDateTimeField
      FieldName = 'tra_fecha'
    end
    object QTransban_codigo1: TIntegerField
      FieldName = 'ban_codigo1'
    end
    object QTransban_codigo2: TIntegerField
      FieldName = 'ban_codigo2'
    end
    object QTranstra_concepto1: TStringField
      FieldName = 'tra_concepto1'
      Size = 60
    end
    object QTranstra_concepto2: TStringField
      FieldName = 'tra_concepto2'
      Size = 60
    end
    object QTranstra_monto: TBCDField
      FieldName = 'tra_monto'
      currency = True
      Precision = 18
      Size = 2
    end
    object QTransusu_codigo: TIntegerField
      FieldName = 'usu_codigo'
    end
    object QTranstra_usuario_anulo: TIntegerField
      FieldName = 'tra_usuario_anulo'
    end
    object QTransmanu_codigo: TIntegerField
      FieldName = 'manu_codigo'
    end
    object QTranstra_status: TStringField
      FieldName = 'tra_status'
      Size = 3
    end
    object QTranstra_tasa: TBCDField
      FieldName = 'tra_tasa'
      currency = True
      Precision = 10
      Size = 2
    end
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
    Left = 360
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
    Left = 392
    Top = 232
  end
  object QBancos: TADOQuery
    Connection = DM.ADOSigma
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
      'select'
      'ban_codigo, ban_nombre'
      'from'
      'bancos'
      'where'
      'emp_codigo = :emp_codigo'
      'order by'
      '2')
    Left = 360
    Top = 264
    object QBancosban_codigo: TIntegerField
      FieldName = 'ban_codigo'
    end
    object QBancosban_nombre: TStringField
      FieldName = 'ban_nombre'
      Size = 60
    end
  end
  object dsBancos: TDataSource
    DataSet = QBancos
    Left = 392
    Top = 264
  end
  object dsTrans: TDataSource
    DataSet = QTrans
    Left = 312
    Top = 232
  end
end
