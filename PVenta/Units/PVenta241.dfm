object frmConsFacturasRestBar: TfrmConsFacturasRestBar
  Left = 360
  Top = 168
  ActiveControl = edTipo
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Listado de Facturas Restbar'
  ClientHeight = 528
  ClientWidth = 997
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
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
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 997
    Height = 209
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    DesignSize = (
      997
      209)
    object Label1: TLabel
      Left = 9
      Top = 39
      Width = 25
      Height = 13
      Caption = 'Mesa'
    end
    object btTipo: TSpeedButton
      Left = 94
      Top = 37
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
    object Label3: TLabel
      Left = 8
      Top = 88
      Width = 32
      Height = 13
      Caption = 'Cajero'
    end
    object SpeedButton1: TSpeedButton
      Left = 94
      Top = 85
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
    object Label4: TLabel
      Left = 158
      Top = 187
      Width = 37
      Height = 13
      Caption = 'Nombre'
    end
    object Label5: TLabel
      Left = 317
      Top = 91
      Width = 59
      Height = 13
      Caption = 'Ordenar por'
    end
    object Label6: TLabel
      Left = 8
      Top = 163
      Width = 29
      Height = 13
      Caption = 'Fecha'
    end
    object Label9: TLabel
      Left = 8
      Top = 187
      Width = 37
      Height = 13
      Caption = 'Factura'
    end
    object Label11: TLabel
      Left = 8
      Top = 63
      Width = 22
      Height = 13
      Caption = 'Caja'
    end
    object SpeedButton4: TSpeedButton
      Left = 94
      Top = 61
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
    object Label17: TLabel
      Left = 8
      Top = 112
      Width = 43
      Height = 13
      Caption = 'Tipo NCF'
    end
    object SpeedButton5: TSpeedButton
      Left = 94
      Top = 109
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
    object Label2: TLabel
      Left = 10
      Top = 137
      Width = 33
      Height = 13
      Caption = 'Cliente'
    end
    object SpeedButton2: TSpeedButton
      Left = 94
      Top = 133
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
    object Label8: TLabel
      Left = 8
      Top = 10
      Width = 40
      Height = 13
      Caption = 'Sucursal'
    end
    object Label7: TLabel
      Left = 702
      Top = 96
      Width = 46
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'SubTotal:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 702
      Top = 136
      Width = 40
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'Propina:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 703
      Top = 155
      Width = 55
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'Descuento:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label13: TLabel
      Left = 703
      Top = 116
      Width = 25
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'Itbis:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label18: TLabel
      Left = 703
      Top = 178
      Width = 28
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'Total:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object edTipo: TEdit
      Left = 58
      Top = 37
      Width = 33
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
    end
    object tTipo: TEdit
      Left = 119
      Top = 37
      Width = 186
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
    object tCajero: TEdit
      Left = 119
      Top = 85
      Width = 186
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
    object edCajero: TEdit
      Left = 58
      Top = 85
      Width = 33
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
      TabOrder = 1
    end
    object edNombre: TEdit
      Left = 206
      Top = 183
      Width = 99
      Height = 20
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object cbStatus: TRadioGroup
      Left = 318
      Top = 2
      Width = 84
      Height = 87
      Caption = 'Status'
      ItemIndex = 0
      Items.Strings = (
        'Todas'
        'Anuladas'
        'Pagadas'
        'Pendientes'
        'Vencidas')
      TabOrder = 10
    end
    object cbOrden: TComboBox
      Left = 319
      Top = 106
      Width = 81
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
      TabOrder = 7
      Items.Strings = (
        'Numero'
        'Cliente'
        'Fecha'
        'NCF')
    end
    object Fecha1: TDateTimePicker
      Left = 58
      Top = 159
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
    object Fecha2: TDateTimePicker
      Left = 138
      Top = 159
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
      TabOrder = 3
    end
    object edFac1: TEdit
      Left = 58
      Top = 183
      Width = 47
      Height = 20
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
    end
    object edFac2: TEdit
      Left = 106
      Top = 183
      Width = 47
      Height = 20
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
    object ckrango: TCheckBox
      Left = 224
      Top = 159
      Width = 81
      Height = 17
      Caption = 'Utiliza rango'
      Checked = True
      State = cbChecked
      TabOrder = 11
    end
    object tCaja: TEdit
      Left = 119
      Top = 61
      Width = 186
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
    object edCaja: TEdit
      Left = 58
      Top = 61
      Width = 33
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
      TabOrder = 13
    end
    object ttiponcf: TEdit
      Left = 119
      Top = 109
      Width = 186
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
    object edtiponcf: TEdit
      Left = 58
      Top = 109
      Width = 33
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
    end
    object cbGrupo: TRadioGroup
      Left = 320
      Top = 128
      Width = 57
      Height = 17
      Caption = 'Grupo'
      Items.Strings = (
        'A'
        'B'
        'Todas')
      TabOrder = 16
      Visible = False
    end
    object edCliente: TEdit
      Left = 58
      Top = 133
      Width = 33
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
      TabOrder = 17
    end
    object tCliente: TEdit
      Left = 119
      Top = 133
      Width = 186
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
      TabOrder = 18
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 58
      Top = 8
      Width = 247
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
      TabOrder = 19
    end
    object lbSubTotal: TStaticText
      Left = 762
      Top = 95
      Width = 103
      Height = 17
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 20
    end
    object lbPropina: TStaticText
      Left = 762
      Top = 136
      Width = 103
      Height = 17
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 21
    end
    object lbDescuento: TStaticText
      Left = 762
      Top = 157
      Width = 103
      Height = 17
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 22
    end
    object lbitbis: TStaticText
      Left = 762
      Top = 116
      Width = 103
      Height = 17
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 23
    end
    object lbTotal: TStaticText
      Left = 762
      Top = 177
      Width = 103
      Height = 17
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 24
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 209
    Width = 997
    Height = 137
    Align = alTop
    Anchors = [akLeft, akTop, akRight, akBottom]
    Color = clInfoBk
    Ctl3D = False
    DataSource = dsFacturas
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'facturaid'
        Title.Alignment = taCenter
        Title.Caption = '# Factura'
        Width = 53
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Fecha'
        Title.Alignment = taCenter
        Width = 62
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NCF'
        Title.Alignment = taCenter
        Width = 126
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RNC'
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nombre'
        Title.Caption = 'Nombre del Cliente'
        Width = 259
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'monto_exento'
        Title.Alignment = taCenter
        Title.Caption = 'Exento'
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'grabado'
        Title.Alignment = taCenter
        Title.Caption = 'Grabado'
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Descuento'
        Title.Alignment = taCenter
        Title.Caption = 'Desc.'
        Width = 74
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Itbis'
        Title.Alignment = taCenter
        Width = 79
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTAL'
        Title.Alignment = taCenter
        Title.Caption = 'Total'
        Width = 118
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Pagado'
        Title.Alignment = taCenter
        Title.Caption = 'Abono'
        Width = 92
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Estatus'
        Title.Alignment = taCenter
        Title.Caption = 'Status'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CajaID'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Propina'
        Visible = False
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 488
    Width = 997
    Height = 40
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 2
    DesignSize = (
      997
      40)
    object lbCantidad: TLabel
      Left = 8
      Top = 13
      Width = 61
      Height = 13
      Caption = '0 Facturas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BitBtn2: TBitBtn
      Left = 713
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Listado'
      TabOrder = 0
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
      Left = 633
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Refrescar >>'
      TabOrder = 1
      OnClick = btRefreshClick
    end
    object btClose: TBitBtn
      Left = 793
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '&Salir'
      TabOrder = 2
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
    object ProgressBar1: TProgressBar
      Left = 144
      Top = 12
      Width = 193
      Height = 17
      TabOrder = 3
      Visible = False
    end
  end
  object Memo1: TMemo
    Left = 32
    Top = 240
    Width = 505
    Height = 41
    Lines.Strings = (
      'Memo1')
    TabOrder = 3
    Visible = False
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 346
    Width = 997
    Height = 142
    ActivePage = TabSheet7
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    MultiLine = True
    ParentFont = False
    TabOrder = 4
    TabPosition = tpBottom
    object TabSheet1: TTabSheet
      Caption = 'Detalle'
      object Grid: TDBGrid
        Left = 0
        Top = 0
        Width = 1118
        Height = 92
        Align = alClient
        Ctl3D = False
        DataSource = dsDetalle
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'productoid'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Width = 118
            Visible = True
          end
          item
            Color = clInfoBk
            Expanded = False
            FieldName = 'nombre'
            Title.Caption = 'Descripci'#243'n del Producto'
            Width = 113
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cantidad'
            Title.Alignment = taCenter
            Title.Caption = 'Facturado'
            Width = 54
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'precio'
            Title.Alignment = taCenter
            Title.Caption = 'Precio'
            Width = 88
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descuento'
            Title.Alignment = taCenter
            Title.Caption = '%Desc'
            Width = 36
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Itbis'
            Title.Alignment = taCenter
            Width = 82
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Valor'
            Title.Alignment = taCenter
            Width = 80
            Visible = True
          end>
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Formas de Pago'
      ImageIndex = 4
      object DBGrid5: TDBGrid
        Left = 0
        Top = 0
        Width = 1118
        Height = 92
        Align = alClient
        Color = clInfoBk
        Ctl3D = False
        DataSource = dsFroma
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'NOMBRE'
            Title.Caption = 'Forma de pago'
            Width = 219
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MONTO'
            Title.Alignment = taCenter
            Title.Caption = 'Monto'
            Width = 81
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DEVUELTA'
            Width = 96
            Visible = True
          end>
      end
    end
    object TabSheet7: TTabSheet
      Caption = 'Cuentas contables'
      ImageIndex = 6
      DesignSize = (
        989
        116)
      object Label14: TLabel
        Left = 708
        Top = 1
        Width = 40
        Height = 13
        Anchors = [akTop, akRight]
        Caption = 'Cr'#233'ditos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label15: TLabel
        Left = 708
        Top = 17
        Width = 36
        Height = 13
        Anchors = [akTop, akRight]
        Caption = 'D'#233'bitos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label16: TLabel
        Left = 708
        Top = 33
        Width = 37
        Height = 13
        Anchors = [akTop, akRight]
        Caption = 'Balance'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object GridCuentas: TDBGrid
        Left = 30
        Top = 0
        Width = 672
        Height = 116
        Align = alLeft
        Anchors = [akLeft, akTop, akRight, akBottom]
        Ctl3D = False
        DataSource = dsCuentas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Verdana'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'cat_cuenta'
            Title.Alignment = taCenter
            Title.Caption = 'Cuenta'
            Width = 75
            Visible = True
          end
          item
            Color = clInfoBk
            Expanded = False
            FieldName = 'cat_nombre'
            ReadOnly = True
            Title.Caption = 'Nombre de la Cuenta'
            Width = 375
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'det_origen'
            Title.Alignment = taCenter
            Title.Caption = 'Origen'
            Width = 68
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'det_monto'
            Title.Alignment = taCenter
            Title.Caption = 'Monto'
            Width = 80
            Visible = True
          end>
      end
      object lbCR: TStaticText
        Left = 762
        Top = 1
        Width = 103
        Height = 17
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object lbDB: TStaticText
        Left = 762
        Top = 17
        Width = 103
        Height = 17
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object lbBAL: TStaticText
        Left = 762
        Top = 33
        Width = 103
        Height = 17
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 30
        Height = 116
        Align = alLeft
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 4
        object bteliminacuenta: TSpeedButton
          Left = 4
          Top = 4
          Width = 23
          Height = 22
          Hint = 'Eliminar producto de la lista'
          Flat = True
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
          ParentShowHint = False
          ShowHint = True
          OnClick = bteliminacuentaClick
        end
        object btbuscacuenta: TSpeedButton
          Left = 4
          Top = 26
          Width = 23
          Height = 22
          Hint = 'Nota para el producto'
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
          ParentShowHint = False
          ShowHint = True
          OnClick = btbuscacuentaClick
        end
      end
      object btcodificar: TBitBtn
        Left = 705
        Top = 52
        Width = 159
        Height = 25
        Anchors = [akTop, akRight]
        Caption = 'Codificar Autom'#225'ticamente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        OnClick = btcodificarClick
      end
    end
  end
  object SearchRest: TQrySearchDlgADO
    AliasName = DM.ADOSigmaRest
    Left = 128
    Top = 280
  end
  object Search: TQrySearchDlgADO
    AliasName = DM.ADOSigma
    Left = 128
    Top = 336
  end
  object dsFacturas: TDataSource
    DataSet = QFacturas
    OnDataChange = dsFacturasDataChange
    Left = 456
    Top = 304
  end
  object QFacturas: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    AfterOpen = QFacturasAfterOpen
    AfterScroll = QFacturasAfterScroll
    Parameters = <>
    SQL.Strings = (
      'select * from vw_FacturasRestBar'
      'WHERE Estatus not in ('#39'SER'#39', '#39'ANU'#39')')
    Left = 424
    Top = 304
    object QFacturasemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QFacturassuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object QFacturasCajaID: TIntegerField
      FieldName = 'CajaID'
    end
    object QFacturasCajeroID: TIntegerField
      FieldName = 'CajeroID'
    end
    object QFacturasNombre: TWideStringField
      FieldName = 'Nombre'
      Size = 255
    end
    object QFacturasFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object QFacturasfacturaid: TIntegerField
      FieldName = 'facturaid'
    end
    object QFacturasEstatus: TWideStringField
      FieldName = 'Estatus'
      Size = 30
    end
    object QFacturasConItbis: TBooleanField
      FieldName = 'ConItbis'
    end
    object QFacturasCaja: TStringField
      FieldName = 'Caja'
      Size = 60
    end
    object QFacturasNCF: TWideStringField
      FieldName = 'NCF'
      Size = 255
    end
    object QFacturascajero: TStringField
      FieldName = 'cajero'
      Size = 60
    end
    object QFacturasPagado: TBCDField
      FieldName = 'Pagado'
      DisplayFormat = '#,0.00'
      Precision = 19
    end
    object QFacturasDescuento: TBCDField
      FieldName = 'Descuento'
      DisplayFormat = '#,0.00'
      Precision = 19
    end
    object QFacturasTOTAL: TBCDField
      FieldName = 'TOTAL'
      DisplayFormat = '#,0.00'
      Precision = 19
    end
    object QFacturasItbis: TBCDField
      FieldName = 'Itbis'
      DisplayFormat = '#,0.00'
      Precision = 19
    end
    object QFacturasgrabado: TBCDField
      FieldName = 'grabado'
      DisplayFormat = '#,0.00'
      Precision = 19
    end
    object QFacturasmonto_grabado_incluido: TBCDField
      FieldName = 'monto_grabado_incluido'
      DisplayFormat = '#,0.00'
      Precision = 19
    end
    object QFacturasmonto_exento: TFloatField
      FieldName = 'monto_exento'
      ReadOnly = True
      DisplayFormat = '#,0.00'
    end
    object QFacturasPropina: TCurrencyField
      FieldName = 'Propina'
    end
    object QFacturasRNC: TStringField
      FieldName = 'RNC'
    end
    object QFacturasTipoFactura: TIntegerField
      FieldName = 'TipoFactura'
    end
    object QFacturasSumSubTotal: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'SumSubTotal'
      Calculated = True
    end
  end
  object QDetalle: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    DataSource = dsFacturas
    Parameters = <
      item
        Name = 'FacturaID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = 'EMP_CODIGO'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'SUC_CODIGO'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM vw_DetFacturasRestBar'
      'where facturaid = :FacturaID'
      'AND EMP_CODIGO = :EMP_CODIGO'
      'AND SUC_CODIGO = :SUC_CODIGO')
    Left = 432
    Top = 360
    object QDetalleCantidad: TFloatField
      FieldName = 'Cantidad'
    end
    object QDetalleprecio: TBCDField
      FieldName = 'precio'
      Precision = 19
    end
    object QDetalleFacturaid: TIntegerField
      FieldName = 'Facturaid'
    end
    object QDetalleproductoid: TIntegerField
      FieldName = 'productoid'
    end
    object QDetallenombre: TWideStringField
      FieldName = 'nombre'
      Size = 255
    end
    object QDetalledescuento: TBCDField
      FieldName = 'descuento'
      ReadOnly = True
      Precision = 19
    end
    object QDetalleItbis: TFloatField
      FieldName = 'Itbis'
      ReadOnly = True
    end
    object QDetalleValor: TFloatField
      FieldName = 'Valor'
      ReadOnly = True
    end
  end
  object dsDetalle: TDataSource
    DataSet = QDetalle
    Left = 464
    Top = 360
  end
  object QCuentas: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    AfterInsert = QCuentasAfterInsert
    AfterEdit = QCuentasAfterEdit
    BeforePost = QCuentasBeforePost
    AfterPost = QCuentasAfterPost
    BeforeDelete = QCuentasBeforeDelete
    AfterDelete = QCuentasAfterDelete
    OnNewRecord = QCuentasNewRecord
    DataSource = dsFacturas
    Parameters = <
      item
        Name = 'FacturaID'
        DataType = ftInteger
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'select'
      
        'cat_cuenta, cat_nombre, det_origen, det_monto, fac_numero, det_s' +
        'ecuencia'
      'from'
      'contdet_facturas'
      'where fac_numero = :FacturaID'
      ''
      'and det_secuencia is not null')
    Left = 584
    Top = 336
    object QCuentascat_cuenta: TStringField
      FieldName = 'cat_cuenta'
      Size = 15
    end
    object QCuentascat_nombre: TStringField
      FieldName = 'cat_nombre'
      Size = 60
    end
    object QCuentasdet_origen: TStringField
      FieldName = 'det_origen'
      Size = 7
    end
    object QCuentasdet_monto: TBCDField
      FieldName = 'det_monto'
      currency = True
      Precision = 15
    end
  end
  object dsCuentas: TDataSource
    DataSet = QCuentas
    Left = 616
    Top = 336
  end
  object QForma: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    DataSource = dsFacturas
    Parameters = <
      item
        Name = 'FacturaID'
        DataType = ftInteger
        Value = Null
      end
      item
        Name = 'EMP_CODIGO'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'SUC_CODIGO'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    Prepared = True
    SQL.Strings = (
      'select * from VW_FormaPago_FacturasRestBar'
      'WHERE FacturaID = :FacturaID'
      'AND EMP_CODIGO = :EMP_CODIGO'
      'AND SUC_CODIGO = :SUC_CODIGO'
      '')
    Left = 584
    Top = 272
    object QFormaNOMBRE: TWideStringField
      FieldName = 'NOMBRE'
      Size = 255
    end
    object QFormaMONTO: TBCDField
      FieldName = 'MONTO'
      Precision = 19
    end
    object QFormaDEVUELTA: TCurrencyField
      FieldName = 'DEVUELTA'
    end
  end
  object dsFroma: TDataSource
    DataSet = QForma
    Left = 616
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
    Left = 496
    Top = 56
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
    Left = 528
    Top = 56
  end
end
