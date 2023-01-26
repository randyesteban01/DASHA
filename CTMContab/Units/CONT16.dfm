object frmConsEntradas: TfrmConsEntradas
  Left = 393
  Top = 266
  ActiveControl = DBGrid1
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Consulta de entradas de diario'
  ClientHeight = 416
  ClientWidth = 834
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
  OnKeyPress = FormKeyPress
  OnPaint = FormPaint
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 281
    Width = 834
    Height = 4
    Cursor = crVSplit
    Align = alTop
  end
  object Panel1: TPanel
    Left = 0
    Top = 373
    Width = 834
    Height = 43
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    DesignSize = (
      834
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
      Left = 751
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
      Left = 631
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
      Left = 327
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Refrescar >>'
      TabOrder = 2
      OnClick = btRefreshClick
    end
    object BitBtn1: TBitBtn
      Left = 407
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
      Left = 487
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
    object BitBtn4: TBitBtn
      Left = 247
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Eliminar'
      TabOrder = 5
      OnClick = BitBtn4Click
      Glyph.Data = {
        42010000424D4201000000000000760000002800000011000000110000000100
        040000000000CC00000000000000000000001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        777770000000777777777777777770000000777777777777770F700000007777
        0F777777777770000000777000F7777770F770000000777000F777770F777000
        00007777000F77700F777000000077777000F700F7777000000077777700000F
        7777700000007777777000F777777000000077777700000F7777700000007777
        7000F70F7777700000007770000F77700F7770000000770000F7777700F77000
        00007700F7777777700F70000000777777777777777770000000777777777777
        777770000000}
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 834
    Height = 161
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object Label6: TLabel
      Left = 5
      Top = 32
      Width = 30
      Height = 13
      Caption = 'Fecha'
    end
    object Label7: TLabel
      Left = 326
      Top = 56
      Width = 36
      Height = 13
      Caption = 'Usuario'
    end
    object btUsu: TSpeedButton
      Left = 425
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
      OnClick = btUsuClick
    end
    object Label2: TLabel
      Left = 5
      Top = 80
      Width = 32
      Height = 13
      Caption = 'Cliente'
    end
    object btCliente: TSpeedButton
      Left = 108
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
      OnClick = btClienteClick
    end
    object Label5: TLabel
      Left = 326
      Top = 80
      Width = 38
      Height = 13
      Caption = 'Ordenar'
    end
    object Label1: TLabel
      Left = 326
      Top = 32
      Width = 49
      Height = 13
      Caption = 'Proveedor'
    end
    object btProv: TSpeedButton
      Left = 425
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
    object Label3: TLabel
      Left = 5
      Top = 56
      Width = 21
      Height = 13
      Caption = 'Tipo'
    end
    object btTipo: TSpeedButton
      Left = 107
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
      OnClick = btTipoClick
    end
    object Label4: TLabel
      Left = 5
      Top = 104
      Width = 46
      Height = 13
      Caption = 'Concepto'
    end
    object Label8: TLabel
      Left = 326
      Top = 104
      Width = 31
      Height = 13
      Caption = 'Benef.'
    end
    object Label9: TLabel
      Left = 5
      Top = 8
      Width = 41
      Height = 13
      Caption = 'Sucursal'
    end
    object lbLocSuc: TLabel
      Left = 5
      Top = 132
      Width = 46
      Height = 13
      Caption = 'Localidad'
    end
    object btLocalidad: TSpeedButton
      Left = 108
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
    object Fecha1: TDateTimePicker
      Left = 56
      Top = 32
      Width = 81
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
      Width = 81
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
    object cbStatus: TRadioGroup
      Left = 618
      Top = 2
      Width = 102
      Height = 133
      Caption = 'Status'
      ItemIndex = 0
      Items.Strings = (
        'Todas'
        'Anuladas'
        'Posteadas'
        'Sin Postear'
        'Descuadrada')
      TabOrder = 10
      OnClick = btRefreshClick
    end
    object tUsu: TEdit
      Left = 450
      Top = 56
      Width = 164
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
      TabOrder = 11
    end
    object edUsuario: TEdit
      Left = 381
      Top = 56
      Width = 41
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
      TabOrder = 7
      OnChange = edUsuarioChange
      OnKeyDown = edUsuarioKeyDown
    end
    object edCliente: TEdit
      Left = 56
      Top = 80
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
      TabOrder = 4
      OnChange = edClienteChange
      OnKeyDown = edClienteKeyDown
    end
    object tCliente: TEdit
      Left = 133
      Top = 80
      Width = 189
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
    object cbOrden: TComboBox
      Left = 381
      Top = 80
      Width = 233
      Height = 21
      BevelKind = bkSoft
      Style = csDropDownList
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemHeight = 13
      ParentFont = False
      TabOrder = 8
      OnClick = btRefreshClick
      Items.Strings = (
        'Entrada'
        'Documento'
        'Fecha'
        'Tipo')
    end
    object edProveedor: TEdit
      Left = 381
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
      TabOrder = 6
      OnChange = edProveedorChange
      OnKeyDown = edProveedorKeyDown
    end
    object tProv: TEdit
      Left = 450
      Top = 32
      Width = 164
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
    object edTipo: TEdit
      Left = 56
      Top = 56
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
      TabOrder = 3
      OnChange = edTipoChange
      OnKeyDown = edTipoKeyDown
    end
    object tTipo: TEdit
      Left = 132
      Top = 56
      Width = 190
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
      TabOrder = 14
    end
    object edConc: TEdit
      Left = 56
      Top = 104
      Width = 266
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
      TabOrder = 5
    end
    object edBenef: TEdit
      Left = 381
      Top = 104
      Width = 233
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
      TabOrder = 9
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 55
      Top = 8
      Width = 558
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
    object edtSucLoc: TEdit
      Left = 56
      Top = 128
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
      TabOrder = 15
      OnChange = edtSucLocChange
      OnKeyDown = edtSucLocKeyDown
    end
    object TSucLoc: TEdit
      Left = 133
      Top = 128
      Width = 189
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
      TabOrder = 16
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 161
    Width = 834
    Height = 120
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
    TabOrder = 2
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
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
        Title.Caption = 'Tipo'
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
        Width = 235
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TRA_BENEF'
        Title.Caption = 'Beneficiario'
        Width = 220
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 0
    Top = 285
    Width = 834
    Height = 88
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
        FieldName = 'CAT_CUENTA'
        Title.Alignment = taCenter
        Title.Caption = 'Cuenta'
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CAT_NOMBRE'
        Title.Caption = 'Descripci'#243'n de la Cuenta'
        Width = 400
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DET_DEBITO'
        Title.Alignment = taCenter
        Title.Caption = 'D'#233'bito'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DET_CREDITO'
        Title.Alignment = taCenter
        Title.Caption = 'Cr'#233'dito'
        Width = 100
        Visible = True
      end>
  end
  object Memo1: TMemo
    Left = 24
    Top = 176
    Width = 649
    Height = 57
    Lines.Strings = (
      'Memo1')
    TabOrder = 4
    Visible = False
  end
  object QTrans: TADOQuery
    Connection = DM.ADOSigma
    Filtered = True
    AfterOpen = QTransAfterOpen
    OnFilterRecord = QTransFilterRecord
    Parameters = <
      item
        Name = 'emp'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'suc'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'fecha1'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'fecha2'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'sucloc'
        DataType = ftString
        Size = 5
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM '
      'CONTPR_CONS_ENTRADAS (:emp, :suc, :fecha1, :fecha2, :sucloc)'
      'WHERE'
      '1=1')
    Left = 416
    Top = 128
    object QTransValor: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Valor'
      Calculated = True
    end
    object QTransCLI_CODIGO: TIntegerField
      FieldName = 'CLI_CODIGO'
      Origin = 'CONTPR_CONS_ENTRADAS.CLI_CODIGO'
    end
    object QTransEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'CONTPR_CONS_ENTRADAS.EMP_CODIGO'
    end
    object QTransENT_NUMERO: TIntegerField
      FieldName = 'ENT_NUMERO'
      Origin = 'CONTPR_CONS_ENTRADAS.ENT_NUMERO'
    end
    object QTransSUP_CODIGO: TIntegerField
      FieldName = 'SUP_CODIGO'
      Origin = 'CONTPR_CONS_ENTRADAS.SUP_CODIGO'
    end
    object QTransTDO_CODIGO: TIBStringField
      FieldName = 'TDO_CODIGO'
      Origin = 'CONTPR_CONS_ENTRADAS.TDO_CODIGO'
      Size = 3
    end
    object QTransTRA_ANO: TIntegerField
      FieldName = 'TRA_ANO'
      Origin = 'CONTPR_CONS_ENTRADAS.TRA_ANO'
    end
    object QTransTRA_BENEF: TIBStringField
      FieldName = 'TRA_BENEF'
      Origin = 'CONTPR_CONS_ENTRADAS.TRA_BENEF'
      Size = 60
    end
    object QTransTRA_CONCEPTO1: TIBStringField
      DisplayWidth = 500
      FieldName = 'TRA_CONCEPTO1'
      Origin = 'CONTPR_CONS_ENTRADAS.TRA_CONCEPTO1'
      Size = 500
    end
    object QTransTRA_CONCEPTO2: TIBStringField
      FieldName = 'TRA_CONCEPTO2'
      Origin = 'CONTPR_CONS_ENTRADAS.TRA_CONCEPTO2'
      Size = 500
    end
    object QTransTRA_DOC: TIBStringField
      FieldName = 'TRA_DOC'
      Origin = 'CONTPR_CONS_ENTRADAS.TRA_DOC'
      Size = 15
    end
    object QTransTRA_FECHA: TDateTimeField
      FieldName = 'TRA_FECHA'
      Origin = 'CONTPR_CONS_ENTRADAS.TRA_FECHA'
    end
    object QTransTRA_MES: TIntegerField
      FieldName = 'TRA_MES'
      Origin = 'CONTPR_CONS_ENTRADAS.TRA_MES'
    end
    object QTransTRA_STATUS: TIBStringField
      FieldName = 'TRA_STATUS'
      Origin = 'CONTPR_CONS_ENTRADAS.TRA_STATUS'
      Size = 3
    end
    object QTransTRA_DEBITOS: TFloatField
      FieldName = 'TRA_DEBITOS'
      Origin = 'CONTPR_CONS_ENTRADAS.TRA_DEBITOS'
    end
    object QTransTRA_CREDITOS: TFloatField
      FieldName = 'TRA_CREDITOS'
      Origin = 'CONTPR_CONS_ENTRADAS.TRA_CREDITOS'
    end
    object QTransTRA_NUMERO: TIntegerField
      FieldName = 'TRA_NUMERO'
      Origin = 'CONTPR_CONS_ENTRADAS.TRA_NUMERO'
    end
    object QTransTDO_NOMBRE: TIBStringField
      FieldName = 'TDO_NOMBRE'
      Origin = 'CONTPR_CONS_ENTRADAS.TDO_NOMBRE'
      Size = 60
    end
    object QTransUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
      Origin = 'CONTPR_CONS_ENTRADAS.USU_CODIGO'
    end
    object QTransid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object QTransSUC_CODIGO: TIntegerField
      FieldName = 'SUC_CODIGO'
    end
  end
  object dsTrans: TDataSource
    DataSet = QTrans
    Left = 448
    Top = 128
  end
  object QDetalle: TADOQuery
    Connection = DM.ADOSigma
    BeforeOpen = QDetalleBeforeOpen
    DataSource = dsTrans
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
        Name = 'TRA_NUMERO'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'SUC_CODIGO'
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
      'EMP_CODIGO = :EMP_CODIGO'
      'AND TRA_NUMERO = :TRA_NUMERO'
      'AND SUC_CODIGO = :SUC_CODIGO'
      'ORDER BY DET_SEC')
    Left = 416
    Top = 160
    object QDetalleCAT_CUENTA: TIBStringField
      FieldName = 'CAT_CUENTA'
      Origin = 'CONTDET_TRANS.CAT_CUENTA'
      Size = 15
    end
    object QDetalleCAT_NOMBRE: TIBStringField
      DisplayWidth = 100
      FieldName = 'CAT_NOMBRE'
      Origin = 'CONTDET_TRANS.CAT_NOMBRE'
      Size = 100
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
    Left = 448
    Top = 160
  end
  object Search: TQrySearchDlgADO
    AliasName = DM.ADOSigma
    Left = 568
    Top = 176
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
    Left = 312
    Top = 200
  end
end
