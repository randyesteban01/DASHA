object frmDepositos: TfrmDepositos
  Left = 1105
  Top = 250
  ActiveControl = DBEdit1
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Dep'#243'sitos - [Crear / Modificar]'
  ClientHeight = 417
  ClientWidth = 691
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
  object Label8: TLabel
    Left = 520
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
    Left = 520
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
    Left = 520
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
    Left = 152
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
    OnClick = btEliminaClick
  end
  object btBuscaCta: TSpeedButton
    Left = 8
    Top = 385
    Width = 137
    Height = 25
    Caption = '[ F4 ] - Buscar Cuenta   '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = btBuscaCtaClick
  end
  object spcentros: TSpeedButton
    Left = 299
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
    OnClick = spcentrosClick
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 691
    Height = 201
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object Label4: TLabel
      Left = 15
      Top = 32
      Width = 29
      Height = 13
      Caption = 'Banco'
    end
    object btBanco: TSpeedButton
      Left = 116
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
      OnClick = btBancoClick
    end
    object Label1: TLabel
      Left = 145
      Top = 56
      Width = 37
      Height = 13
      Caption = 'N'#250'mero'
    end
    object Label2: TLabel
      Left = 15
      Top = 56
      Width = 29
      Height = 13
      Caption = 'Fecha'
    end
    object Label3: TLabel
      Left = 272
      Top = 56
      Width = 30
      Height = 13
      Caption = 'Monto'
    end
    object Label7: TLabel
      Left = 15
      Top = 128
      Width = 33
      Height = 13
      Caption = 'Cliente'
    end
    object Label5: TLabel
      Left = 15
      Top = 152
      Width = 50
      Height = 13
      Caption = 'Proveedor'
    end
    object btCliente: TSpeedButton
      Left = 72
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
      OnClick = btClienteClick
    end
    object btSupli: TSpeedButton
      Left = 72
      Top = 152
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
      OnClick = btSupliClick
    end
    object Label11: TLabel
      Left = 408
      Top = 56
      Width = 51
      Height = 13
      Caption = 'Descuento'
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
      Top = 77
      Width = 57
      Height = 22
      Caption = 'Concepto'
      Flat = True
      OnClick = SpeedButton1Click
    end
    object lbLocSuc: TLabel
      Left = 14
      Top = 180
      Width = 44
      Height = 13
      Caption = 'Localidad'
    end
    object btLocalidad: TSpeedButton
      Left = 122
      Top = 178
      Width = 20
      Height = 19
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
    object DBEdit1: TDBEdit
      Left = 72
      Top = 32
      Width = 41
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'BAN_CODIGO'
      DataSource = dsDepositos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object tBanco: TEdit
      Left = 144
      Top = 32
      Width = 417
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object DBEdit2: TDBEdit
      Left = 192
      Top = 56
      Width = 73
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'DEP_NUMERO'
      DataSource = dsDepositos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object DBEdit3: TDBEdit
      Left = 72
      Top = 56
      Width = 65
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'DEP_FECHA'
      DataSource = dsDepositos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object DBEdit4: TDBEdit
      Left = 312
      Top = 56
      Width = 89
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'DEP_MONTO'
      DataSource = dsDepositos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object DBEdit6: TDBEdit
      Left = 72
      Top = 80
      Width = 489
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'DEP_CONCEPTO1'
      DataSource = dsDepositos
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
      Top = 104
      Width = 489
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'DEP_CONCEPTO2'
      DataSource = dsDepositos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object rbTipo: TDBRadioGroup
      Left = 568
      Top = 2
      Width = 121
      Height = 197
      Align = alRight
      DataField = 'DEP_TIPO'
      DataSource = dsDepositos
      Items.Strings = (
        'CxP Proveedores'
        'CxC Clientes'
        'Otros')
      TabOrder = 1
      Values.Strings = (
        'SUP'
        'CLI'
        'OTR')
      OnClick = rbTipoClick
    end
    object tCliente: TEdit
      Left = 96
      Top = 128
      Width = 465
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
    end
    object tSupli: TEdit
      Left = 96
      Top = 152
      Width = 465
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
    end
    object DBEdit5: TDBEdit
      Left = 472
      Top = 56
      Width = 89
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      DataField = 'DEP_DESCUENTO'
      DataSource = dsDepositos
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 72
      Top = 8
      Width = 489
      Height = 21
      DataField = 'SUC_CODIGO'
      DataSource = dsDepositos
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
    object dbedtcont_numeroSucursal: TDBEdit
      Left = 72
      Top = 176
      Width = 46
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'cont_numeroSucursal'
      DataSource = dsDepositos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
      OnChange = dbedtcont_numeroSucursalChange
      OnKeyDown = dbedtcont_numeroSucursalKeyDown
    end
    object TSucLoc: TEdit
      Left = 146
      Top = 176
      Width = 415
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
      TabOrder = 13
    end
  end
  object lbCR: TStaticText
    Left = 578
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
    TabOrder = 1
  end
  object lbDB: TStaticText
    Left = 578
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
    TabOrder = 2
  end
  object lbBAL: TStaticText
    Left = 578
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
    TabOrder = 3
  end
  object btGrabar: TBitBtn
    Left = 8
    Top = 357
    Width = 137
    Height = 25
    Caption = '[ F2 ] - Grabar Deposito'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = btGrabarClick
  end
  object btLimpiar: TBitBtn
    Left = 152
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
    TabOrder = 5
    OnClick = btLimpiarClick
  end
  object btSalir: TBitBtn
    Left = 296
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
    TabOrder = 6
    OnClick = btSalirClick
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 201
    Width = 691
    Height = 152
    ActivePage = TabSheet1
    Align = alTop
    TabOrder = 7
    object TabSheet1: TTabSheet
      Caption = 'Cuentas contables'
      object GridCuentas: TDBGridObj
        Left = 0
        Top = 0
        Width = 683
        Height = 124
        Align = alClient
        DataSource = dsDetalle
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
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
            Width = 337
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
    object TabSheet2: TTabSheet
      Caption = 'Facturas o Movimientos parqa pagar'
      ImageIndex = 1
      object lbFacturas: TStaticText
        Left = 0
        Top = 0
        Width = 372
        Height = 17
        Align = alTop
        Alignment = taCenter
        BorderStyle = sbsSunken
        Caption = 'FACTURAS O MOVIMIENTOS PARA PAGAR (F8 - Aplicar saldo total)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object GriFacturas: TDBGrid
        Left = 0
        Top = 17
        Width = 683
        Height = 107
        Align = alClient
        Ctl3D = False
        DataSource = dsFacturas
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgColLines, dgTabs, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnColEnter = GriFacturasColEnter
        OnEnter = GriFacturasEnter
        OnKeyDown = GriFacturasKeyDown
        Columns = <
          item
            Alignment = taCenter
            Color = clInfoBk
            Expanded = False
            FieldName = 'MOV_TIPO'
            Title.Alignment = taCenter
            Title.Caption = 'Tipo Mov.'
            Visible = True
          end
          item
            Alignment = taCenter
            Color = clInfoBk
            Expanded = False
            FieldName = 'FAC_FORMA'
            Title.Alignment = taCenter
            Title.Caption = 'Grupo'
            Visible = True
          end
          item
            Alignment = taCenter
            Color = clInfoBk
            Expanded = False
            FieldName = 'TFA_CODIGO'
            Title.Alignment = taCenter
            Title.Caption = 'Tipo Fac.'
            Visible = True
          end
          item
            Alignment = taCenter
            Color = clInfoBk
            Expanded = False
            FieldName = 'FAC_NUMEROSUP'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'N'#250'mero'
            Width = 62
            Visible = True
          end
          item
            Alignment = taCenter
            Color = clInfoBk
            Expanded = False
            FieldName = 'Cuota'
            Title.Alignment = taCenter
            Title.Caption = '#Cuota'
            Width = 51
            Visible = True
          end
          item
            Alignment = taCenter
            Color = clInfoBk
            Expanded = False
            FieldName = 'FAC_FECHA'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Fecha'
            Width = 62
            Visible = True
          end
          item
            Color = clInfoBk
            Expanded = False
            FieldName = 'FAC_SALDO'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Saldo'
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FAC_DESCUENTO'
            Title.Alignment = taCenter
            Title.Caption = 'Descuento'
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FAC_PAGO'
            Title.Alignment = taCenter
            Title.Caption = 'Pago'
            Width = 88
            Visible = True
          end>
      end
    end
  end
  object Search: TQrySearchDlgADO
    AliasName = DM.ADOSigma
    Left = 352
    Top = 248
  end
  object QDepositos: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    AfterInsert = QDepositosAfterInsert
    AfterEdit = QDepositosAfterEdit
    BeforePost = QDepositosBeforePost
    AfterPost = QDepositosAfterPost
    OnNewRecord = QDepositosNewRecord
    DataSource = DM.dsEmpresas
    Parameters = <
      item
        Name = 'EMP_CODIGO'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'BANCO'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'ANO'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'MES'
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
      'BAN_CODIGO, CLI_CODIGO, DEP_ANO, DEP_CONCEPTO1, '
      'DEP_CONCEPTO2, DEP_FECHA, DEP_MES, DEP_MONTO, '
      'DEP_NUMERO, DEP_STATUS, DEP_TIPO, EMP_CODIGO, '
      
        'SUP_CODIGO, DEP_DESCUENTO, USU_CODIGO, SUC_CODIGO, DEP_CONCILIAD' +
        'O, '
      'cont_numeroSucursal'
      'FROM'
      'DEPOSITOS'
      'WHERE'
      'EMP_CODIGO = :EMP_CODIGO'
      'AND BAN_CODIGO = :BANCO'
      'AND DEP_ANO = :ANO'
      'AND DEP_MES = :MES'
      'AND DEP_NUMERO = :NUM'
      'AND SUC_CODIGO = :SUC')
    Left = 256
    Top = 248
    object QDepositosBAN_CODIGO: TIntegerField
      FieldName = 'BAN_CODIGO'
      Origin = 'DEPOSITOS.BAN_CODIGO'
      OnChange = QDepositosBAN_CODIGOChange
    end
    object QDepositosCLI_CODIGO: TIntegerField
      FieldName = 'CLI_CODIGO'
      Origin = 'DEPOSITOS.CLI_CODIGO'
      OnChange = QDepositosCLI_CODIGOChange
    end
    object QDepositosDEP_ANO: TIntegerField
      FieldName = 'DEP_ANO'
      Origin = 'DEPOSITOS.DEP_ANO'
    end
    object QDepositosDEP_CONCEPTO1: TIBStringField
      FieldName = 'DEP_CONCEPTO1'
      Origin = 'DEPOSITOS.DEP_CONCEPTO1'
      Size = 60
    end
    object QDepositosDEP_CONCEPTO2: TIBStringField
      FieldName = 'DEP_CONCEPTO2'
      Origin = 'DEPOSITOS.DEP_CONCEPTO2'
      Size = 60
    end
    object QDepositosDEP_FECHA: TDateTimeField
      FieldName = 'DEP_FECHA'
      Origin = 'DEPOSITOS.DEP_FECHA'
      OnChange = QDepositosDEP_FECHAChange
      EditMask = 'cc-cc-cccc'
    end
    object QDepositosDEP_MES: TIntegerField
      FieldName = 'DEP_MES'
      Origin = 'DEPOSITOS.DEP_MES'
    end
    object QDepositosDEP_MONTO: TFloatField
      FieldName = 'DEP_MONTO'
      Origin = 'DEPOSITOS.DEP_MONTO'
      OnChange = QDepositosDEP_MONTOChange
      currency = True
    end
    object QDepositosDEP_NUMERO: TIntegerField
      FieldName = 'DEP_NUMERO'
      Origin = 'DEPOSITOS.DEP_NUMERO'
      Required = True
      OnChange = QDepositosDEP_NUMEROChange
    end
    object QDepositosDEP_STATUS: TIBStringField
      FieldName = 'DEP_STATUS'
      Origin = 'DEPOSITOS.DEP_STATUS'
      Size = 3
    end
    object QDepositosEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'DEPOSITOS.EMP_CODIGO'
    end
    object QDepositosSUP_CODIGO: TIntegerField
      FieldName = 'SUP_CODIGO'
      Origin = 'DEPOSITOS.SUP_CODIGO'
      OnChange = QDepositosSUP_CODIGOChange
    end
    object QDepositosDEP_TIPO: TIBStringField
      FieldName = 'DEP_TIPO'
      Origin = 'DEPOSITOS.DEP_TIPO'
      Size = 3
    end
    object QDepositosDEP_DESCUENTO: TFloatField
      FieldName = 'DEP_DESCUENTO'
      Origin = 'DEPOSITOS.DEP_DESCUENTO'
      currency = True
    end
    object QDepositosUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
      Origin = 'DEPOSITOS.USU_CODIGO'
    end
    object QDepositosSUC_CODIGO: TIntegerField
      FieldName = 'SUC_CODIGO'
    end
    object QDepositosDEP_CONCILIADO: TStringField
      FieldName = 'DEP_CONCILIADO'
      Size = 1
    end
    object QDepositoscont_numeroSucursal: TStringField
      FieldName = 'cont_numeroSucursal'
      Size = 5
    end
  end
  object dsDepositos: TDataSource
    DataSet = QDepositos
    Left = 288
    Top = 248
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
        Name = 'BAN'
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
        Name = 'ANO'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'MES'
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
      'BAN_CODIGO, CAT_CUENTA, CAT_NOMBRE, DEP_ANO, '
      'DEP_MES, DEP_NUMERO, DET_MONTO, DET_ORIGEN, '
      'DET_SECUENCIA, EMP_CODIGO, SUC_CODIGO, cont_numeroSucursal'
      'FROM'
      'DET_DEPOSITO'
      'WHERE '
      'EMP_CODIGO = :EMP'
      'AND BAN_CODIGO = :BAN'
      'AND DEP_NUMERO = :NUM'
      'AND DEP_ANO = :ANO'
      'AND DEP_MES = :MES'
      'AND SUC_CODIGO = :SUC'
      'ORDER BY'
      'DET_SECUENCIA')
    Left = 256
    Top = 280
    object QDetalleBAN_CODIGO: TIntegerField
      FieldName = 'BAN_CODIGO'
      Origin = 'DET_DEPOSITO.BAN_CODIGO'
    end
    object QDetalleCAT_CUENTA: TIBStringField
      FieldName = 'CAT_CUENTA'
      Origin = 'DET_DEPOSITO.CAT_CUENTA'
      OnChange = QDetalleCAT_CUENTAChange
      Size = 15
    end
    object QDetalleCAT_NOMBRE: TIBStringField
      FieldName = 'CAT_NOMBRE'
      Origin = 'DET_DEPOSITO.CAT_NOMBRE'
      Size = 60
    end
    object QDetalleDEP_ANO: TIntegerField
      FieldName = 'DEP_ANO'
      Origin = 'DET_DEPOSITO.DEP_ANO'
    end
    object QDetalleDEP_MES: TIntegerField
      FieldName = 'DEP_MES'
      Origin = 'DET_DEPOSITO.DEP_MES'
    end
    object QDetalleDEP_NUMERO: TIntegerField
      FieldName = 'DEP_NUMERO'
      Origin = 'DET_DEPOSITO.DEP_NUMERO'
    end
    object QDetalleDET_MONTO: TFloatField
      FieldName = 'DET_MONTO'
      Origin = 'DET_DEPOSITO.DET_MONTO'
      currency = True
    end
    object QDetalleDET_SECUENCIA: TIntegerField
      FieldName = 'DET_SECUENCIA'
      Origin = 'DET_DEPOSITO.DET_SECUENCIA'
    end
    object QDetalleEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'DET_DEPOSITO.EMP_CODIGO'
    end
    object QDetalleDET_ORIGEN: TIBStringField
      FieldName = 'DET_ORIGEN'
      Origin = 'DET_DEPOSITO.DET_ORIGEN'
      Size = 7
    end
    object QDetalleSUC_CODIGO: TIntegerField
      FieldName = 'SUC_CODIGO'
    end
    object QDetallecont_numeroSucursal: TStringField
      FieldName = 'cont_numeroSucursal'
      Size = 5
    end
  end
  object dsDetalle: TDataSource
    DataSet = QDetalle
    Left = 288
    Top = 280
  end
  object QFacturas: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    BeforeInsert = QFacturasBeforeInsert
    AfterPost = QFacturasAfterPost
    BeforeDelete = QFacturasBeforeDelete
    OnCalcFields = QFacturasCalcFields
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
        Name = 'BAN'
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
        Name = 'ANO'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'MES'
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
      'BAN_CODIGO, DEP_ANO, DEP_MES, DEP_NUMERO, '
      'DET_SECUENCIA, EMP_CODIGO, FAC_FORMA, FAC_NUMERO, '
      'FAC_NUMEROSUP, FAC_PAGO, FAC_SALDO, TFA_CODIGO, '
      'FAC_FECHA, FAC_DESCUENTO, MOV_TIPO, MOV_CUOTA,'
      'DET_CUOTA, SUC_CODIGO'
      'FROM'
      'DET_DEPOSITOFACTURA'
      'WHERE'
      'EMP_CODIGO = :EMP'
      'AND BAN_CODIGO = :BAN'
      'AND DEP_NUMERO = :NUM'
      'AND DEP_ANO = :ANO'
      'AND DEP_MES = :MES'
      'AND SUC_CODIGO = :SUC'
      'ORDER BY'
      'FAC_FECHA')
    Left = 424
    Top = 248
    object QFacturasBAN_CODIGO: TIntegerField
      FieldName = 'BAN_CODIGO'
      Origin = 'DET_DEPOSITOFACTURA.BAN_CODIGO'
    end
    object QFacturasDEP_ANO: TIntegerField
      FieldName = 'DEP_ANO'
      Origin = 'DET_DEPOSITOFACTURA.DEP_ANO'
    end
    object QFacturasDEP_MES: TIntegerField
      FieldName = 'DEP_MES'
      Origin = 'DET_DEPOSITOFACTURA.DEP_MES'
    end
    object QFacturasDEP_NUMERO: TIntegerField
      FieldName = 'DEP_NUMERO'
      Origin = 'DET_DEPOSITOFACTURA.DEP_NUMERO'
    end
    object QFacturasDET_SECUENCIA: TIntegerField
      FieldName = 'DET_SECUENCIA'
      Origin = 'DET_DEPOSITOFACTURA.DET_SECUENCIA'
      DisplayFormat = '##'
    end
    object QFacturasEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'DET_DEPOSITOFACTURA.EMP_CODIGO'
      Required = True
    end
    object QFacturasFAC_FORMA: TIBStringField
      FieldName = 'FAC_FORMA'
      Origin = 'DET_DEPOSITOFACTURA.FAC_FORMA'
      Size = 1
    end
    object QFacturasFAC_NUMERO: TIntegerField
      FieldName = 'FAC_NUMERO'
      Origin = 'DET_DEPOSITOFACTURA.FAC_NUMERO'
      DisplayFormat = '00000'
    end
    object QFacturasFAC_NUMEROSUP: TIBStringField
      FieldName = 'FAC_NUMEROSUP'
      Origin = 'DET_DEPOSITOFACTURA.FAC_NUMEROSUP'
      Size = 15
    end
    object QFacturasFAC_PAGO: TFloatField
      FieldName = 'FAC_PAGO'
      Origin = 'DET_DEPOSITOFACTURA.FAC_PAGO'
      currency = True
    end
    object QFacturasFAC_SALDO: TFloatField
      FieldName = 'FAC_SALDO'
      Origin = 'DET_DEPOSITOFACTURA.FAC_SALDO'
      currency = True
    end
    object QFacturasTFA_CODIGO: TIntegerField
      FieldName = 'TFA_CODIGO'
      Origin = 'DET_DEPOSITOFACTURA.TFA_CODIGO'
    end
    object QFacturasFAC_FECHA: TDateTimeField
      FieldName = 'FAC_FECHA'
      Origin = 'DET_DEPOSITOFACTURA.FAC_FECHA'
    end
    object QFacturasFAC_DESCUENTO: TFloatField
      FieldName = 'FAC_DESCUENTO'
      Origin = 'DET_DEPOSITOFACTURA.FAC_DESCUENTO'
      OnChange = QFacturasFAC_DESCUENTOChange
      currency = True
    end
    object QFacturasMOV_TIPO: TIBStringField
      FieldName = 'MOV_TIPO'
      Origin = 'DET_DEPOSITOFACTURA.MOV_TIPO'
      Size = 3
    end
    object QFacturasCuota: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Cuota'
      DisplayFormat = '##'
      Calculated = True
    end
    object QFacturasDET_CUOTA: TIBStringField
      FieldName = 'DET_CUOTA'
      Origin = 'DET_DEPOSITOFACTURA.DET_CUOTA'
      Size = 5
    end
    object QFacturasMOV_CUOTA: TIntegerField
      FieldName = 'MOV_CUOTA'
      Origin = 'DET_DEPOSITOFACTURA.MOV_CUOTA'
    end
    object QFacturasSUC_CODIGO: TIntegerField
      FieldName = 'SUC_CODIGO'
    end
  end
  object dsFacturas: TDataSource
    DataSet = QFacturas
    Left = 456
    Top = 248
  end
  object Query1: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <>
    Left = 424
    Top = 280
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
    Top = 272
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
    Left = 544
    Top = 272
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
        Name = 'ban'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'ano'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'mes'
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
      'emp_codigo, ban_codigo, dep_ano, dep_mes, dep_numero,'
      'cen_codigo, det_secuencia, cen_nombre, det_monto,'
      'suc_codigo, cat_cuenta, cen_referencia, sub_referencia,'
      'sub_secuencia'
      'from'
      'DepositoCentrosCosto'
      'where'
      'emp_codigo = :emp'
      'and suc_codigo = :suc'
      'and ban_codigo = :ban'
      'and dep_ano = :ano'
      'and dep_mes = :mes'
      'and dep_numero = :num'
      'order by'
      'det_Secuencia')
    Left = 256
    Top = 312
    object QCentroemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QCentroban_codigo: TIntegerField
      FieldName = 'ban_codigo'
    end
    object QCentrodep_ano: TIntegerField
      FieldName = 'dep_ano'
    end
    object QCentrodep_mes: TIntegerField
      FieldName = 'dep_mes'
    end
    object QCentrodep_numero: TIntegerField
      FieldName = 'dep_numero'
    end
    object QCentrocen_codigo: TIntegerField
      FieldName = 'cen_codigo'
    end
    object QCentrodet_secuencia: TIntegerField
      FieldName = 'det_secuencia'
    end
    object QCentrocen_nombre: TStringField
      DisplayWidth = 255
      FieldName = 'cen_nombre'
      Size = 255
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
      Size = 50
    end
  end
end
