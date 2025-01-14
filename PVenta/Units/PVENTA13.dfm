object frmProveedores: TfrmProveedores
  Left = 376
  Top = 208
  BorderIcons = [biSystemMenu, biMinimize, biHelp]
  BorderStyle = bsSingle
  Caption = 'Proveedores'
  ClientHeight = 415
  ClientWidth = 559
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 8
    Top = 47
    Width = 545
    Height = 26
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 5
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object Label10: TLabel
      Left = 136
      Top = 5
      Width = 37
      Height = 13
      Caption = 'Balance'
    end
    object DBEdit1: TDBEdit
      Left = 48
      Top = 2
      Width = 73
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      DataField = 'SUP_CODIGO'
      DataSource = dsProveedores
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit10: TDBEdit
      Left = 184
      Top = 2
      Width = 113
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      DataField = 'SUP_BALANCE'
      DataSource = dsProveedores
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
  end
  object PageControl1: TPageControl
    Left = 8
    Top = 80
    Width = 545
    Height = 329
    ActivePage = TabSheet1
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Datos Generales'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      object Label2: TLabel
        Left = 24
        Top = 8
        Width = 37
        Height = 13
        Caption = 'Nombre'
      end
      object Label3: TLabel
        Left = 24
        Top = 32
        Width = 21
        Height = 13
        Caption = 'RNC'
      end
      object Label4: TLabel
        Left = 24
        Top = 56
        Width = 43
        Height = 13
        Caption = 'Direccion'
      end
      object Label5: TLabel
        Left = 24
        Top = 104
        Width = 42
        Height = 13
        Caption = 'Tel'#233'fono'
      end
      object Label6: TLabel
        Left = 200
        Top = 224
        Width = 18
        Height = 13
        Caption = 'Fax'
      end
      object Label7: TLabel
        Left = 24
        Top = 176
        Width = 57
        Height = 13
        Caption = 'P'#225'gina Web'
      end
      object Label8: TLabel
        Left = 24
        Top = 200
        Width = 33
        Height = 13
        Caption = 'Correo'
      end
      object Label9: TLabel
        Left = 24
        Top = 80
        Width = 44
        Height = 13
        Caption = 'Localidad'
      end
      object Label13: TLabel
        Left = 24
        Top = 224
        Width = 63
        Height = 13
        Caption = 'Limite credito'
      end
      object Label14: TLabel
        Left = 24
        Top = 128
        Width = 48
        Height = 13
        Caption = 'Tel'#233'fono2'
      end
      object Label15: TLabel
        Left = 24
        Top = 152
        Width = 48
        Height = 13
        Caption = 'Tel'#233'fono3'
      end
      object Label11: TLabel
        Left = 24
        Top = 248
        Width = 39
        Height = 13
        Caption = 'Gerente'
      end
      object btgerente: TSpeedButton
        Left = 144
        Top = 248
        Width = 23
        Height = 22
        Enabled = False
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
        OnClick = btgerenteClick
      end
      object btrnc: TSpeedButton
        Left = 240
        Top = 32
        Width = 113
        Height = 22
        Caption = 'Verificar RNC'
        OnClick = btrncClick
      end
      object Label16: TLabel
        Left = 24
        Top = 272
        Width = 20
        Height = 13
        Caption = 'Tipo'
      end
      object bttipo: TSpeedButton
        Left = 144
        Top = 272
        Width = 23
        Height = 22
        Enabled = False
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
        OnClick = bttipoClick
      end
      object Label18: TLabel
        Left = 360
        Top = 101
        Width = 63
        Height = 13
        Caption = 'Dias Creditos'
      end
      object DBEdit2: TDBEdit
        Left = 96
        Top = 8
        Width = 257
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'SUP_NOMBRE'
        DataSource = dsProveedores
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit3: TDBEdit
        Left = 96
        Top = 32
        Width = 137
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'SUP_RNC'
        DataSource = dsProveedores
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit4: TDBEdit
        Left = 96
        Top = 56
        Width = 257
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'SUP_DIRECCION'
        DataSource = dsProveedores
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object DBEdit5: TDBEdit
        Left = 96
        Top = 80
        Width = 257
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'SUP_LOCALIDAD'
        DataSource = dsProveedores
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object DBEdit6: TDBEdit
        Left = 96
        Top = 104
        Width = 97
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'SUP_TELEFONO'
        DataSource = dsProveedores
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object DBEdit7: TDBEdit
        Left = 232
        Top = 224
        Width = 121
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'SUP_FAX'
        DataSource = dsProveedores
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 13
      end
      object DBEdit8: TDBEdit
        Left = 96
        Top = 176
        Width = 257
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'SUP_WEB'
        DataSource = dsProveedores
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
      end
      object DBEdit9: TDBEdit
        Left = 96
        Top = 200
        Width = 257
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'SUP_EMAIL'
        DataSource = dsProveedores
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
      end
      object DBEdit11: TDBEdit
        Left = 200
        Top = 104
        Width = 153
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'SUP_VENDEDOR'
        DataSource = dsProveedores
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 360
        Top = 8
        Width = 169
        Height = 57
        Caption = 'Tipo de Proveedor'
        DataField = 'SUP_TIPO'
        DataSource = dsProveedores
        Items.Strings = (
          'Proveedor formal'
          'Proveedor informal')
        TabOrder = 15
        Values.Strings = (
          'F'
          'I')
      end
      object DBEdit13: TDBEdit
        Left = 96
        Top = 224
        Width = 97
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'SUP_LIMITE'
        DataSource = dsProveedores
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 12
      end
      object DBEdit14: TDBEdit
        Left = 96
        Top = 128
        Width = 97
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'sup_telefono2'
        DataSource = dsProveedores
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
      end
      object DBEdit15: TDBEdit
        Left = 96
        Top = 152
        Width = 97
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'sup_telefono3'
        DataSource = dsProveedores
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
      end
      object DBEdit16: TDBEdit
        Left = 200
        Top = 128
        Width = 153
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'sup_contacto2'
        DataSource = dsProveedores
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
      end
      object DBEdit17: TDBEdit
        Left = 200
        Top = 152
        Width = 153
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'sup_contacto3'
        DataSource = dsProveedores
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
      end
      object DBEdit23: TDBEdit
        Left = 96
        Top = 248
        Width = 47
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'ger_codigo'
        DataSource = dsProveedores
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 14
      end
      object tgerente: TEdit
        Left = 168
        Top = 248
        Width = 185
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
      object DBCheckBox1: TDBCheckBox
        Left = 360
        Top = 64
        Width = 169
        Height = 33
        Caption = 'Imprimir el concepto dentro del cheque'
        DataField = 'sup_concepto_cheque'
        DataSource = dsProveedores
        TabOrder = 17
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        WordWrap = True
      end
      object DBEdit18: TDBEdit
        Left = 96
        Top = 272
        Width = 47
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'tip_codigo'
        DataSource = dsProveedores
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 18
      end
      object ttipo: TEdit
        Left = 168
        Top = 272
        Width = 185
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
        TabOrder = 19
      end
      object DBEdit20: TDBEdit
        Left = 432
        Top = 97
        Width = 57
        Height = 21
        DataField = 'dias_creditos'
        DataSource = dsProveedores
        TabOrder = 20
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Cuentas por pagar'
      ImageIndex = 1
      object DBGrid3: TDBGrid
        Left = 0
        Top = 0
        Width = 537
        Height = 301
        Align = alClient
        Color = clInfoBk
        Ctl3D = False
        DataSource = dsCxP
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
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
            FieldName = 'FAC_NUMERO'
            Title.Alignment = taCenter
            Title.Caption = 'N'#250'mero'
            Width = 77
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'FAC_FECHA'
            Title.Alignment = taCenter
            Title.Caption = 'Fecha'
            Width = 68
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FAC_TOTAL'
            Title.Alignment = taCenter
            Title.Caption = 'Total'
            Width = 78
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
            Width = 72
            Visible = True
          end>
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Contabilidad'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 2
      ParentFont = False
      object Label25: TLabel
        Left = 7
        Top = 16
        Width = 75
        Height = 13
        Caption = 'Cuenta x Pagar'
        FocusControl = DBEdit34
      end
      object btCuenta: TSpeedButton
        Left = 149
        Top = 16
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
      object Label12: TLabel
        Left = 7
        Top = 40
        Width = 61
        Height = 13
        Caption = 'Cta. Compra'
        FocusControl = DBEdit12
      end
      object btctacompra: TSpeedButton
        Left = 149
        Top = 40
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
        OnClick = btctacompraClick
      end
      object Label17: TLabel
        Left = 7
        Top = 64
        Width = 58
        Height = 13
        Caption = 'Tipo de Bien'
        FocusControl = DBEdit19
      end
      object bttipobien: TSpeedButton
        Left = 149
        Top = 64
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
        OnClick = bttipobienClick
      end
      object DBEdit34: TDBEdit
        Left = 88
        Top = 16
        Width = 57
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'SUP_CUENTA'
        DataSource = dsProveedores
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object tCuenta: TEdit
        Left = 176
        Top = 16
        Width = 353
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
      object DBEdit12: TDBEdit
        Left = 88
        Top = 40
        Width = 57
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'SUP_CTACOMPRA'
        DataSource = dsProveedores
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object tCtaCompra: TEdit
        Left = 176
        Top = 40
        Width = 353
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
        TabOrder = 3
      end
      object DBEdit19: TDBEdit
        Left = 88
        Top = 64
        Width = 57
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'tipobienid'
        DataSource = dsProveedores
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object ttipobien: TEdit
        Left = 176
        Top = 64
        Width = 353
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
    end
  end
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 559
    Height = 42
    AutoSize = True
    Bands = <
      item
        Control = ToolBar1
        ImageIndex = -1
        MinHeight = 38
        Width = 555
      end>
    object ToolBar1: TToolBar
      Left = 9
      Top = 0
      Width = 542
      Height = 38
      AutoSize = True
      ButtonHeight = 36
      ButtonWidth = 50
      Caption = 'ToolBar1'
      Flat = True
      Images = DM.ImgMant
      ShowCaptions = True
      TabOrder = 0
      object ToolButton13: TToolButton
        Left = 0
        Top = 0
        Action = btPrior
      end
      object ToolButton12: TToolButton
        Left = 50
        Top = 0
        Action = btNext
      end
      object ToolButton14: TToolButton
        Left = 100
        Top = 0
        Width = 8
        Caption = 'ToolButton14'
        ImageIndex = 1
        Style = tbsSeparator
      end
      object ToolButton1: TToolButton
        Left = 108
        Top = 0
        Action = btInsert
      end
      object ToolButton2: TToolButton
        Left = 158
        Top = 0
        Action = btEdit
      end
      object ToolButton3: TToolButton
        Left = 208
        Top = 0
        Action = btDelete
      end
      object ToolButton4: TToolButton
        Left = 258
        Top = 0
        Width = 8
        Caption = 'ToolButton4'
        ImageIndex = 3
        Style = tbsSeparator
      end
      object ToolButton5: TToolButton
        Left = 266
        Top = 0
        Action = btPost
      end
      object ToolButton6: TToolButton
        Left = 316
        Top = 0
        Action = btCancel
      end
      object ToolButton7: TToolButton
        Left = 366
        Top = 0
        Width = 8
        Caption = 'ToolButton7'
        ImageIndex = 5
        Style = tbsSeparator
      end
      object ToolButton8: TToolButton
        Left = 374
        Top = 0
        Action = btFind
      end
      object ToolButton9: TToolButton
        Left = 424
        Top = 0
        Action = btPrint
      end
      object ToolButton10: TToolButton
        Left = 474
        Top = 0
        Width = 8
        Caption = 'ToolButton10'
        ImageIndex = 7
        Style = tbsSeparator
      end
      object ToolButton11: TToolButton
        Left = 482
        Top = 0
        Action = btClose
      end
    end
  end
  object Search: TQrySearchDlgADO
    Title = 'Listado de Proveedores'
    ResultField = 'sup_codigo'
    Query.Strings = (
      'select sup_nombre, sup_codigo'
      'from proveedores')
    AliasFields.Strings = (
      'Nombre'
      'C'#243'digo')
    AliasName = DM.ADOSigma
    Left = 368
    Top = 336
  end
  object QProveedores: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    BeforeOpen = QProveedoresBeforeOpen
    AfterOpen = QProveedoresAfterOpen
    BeforePost = QProveedoresBeforePost
    AfterPost = QProveedoresAfterPost
    AfterDelete = QProveedoresAfterDelete
    OnNewRecord = QProveedoresNewRecord
    Parameters = <
      item
        Name = 'par_invempresa'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select '
      'EMP_CODIGO, SUP_CODIGO, SUP_NOMBRE, SUP_RNC, '
      'SUP_DIRECCION, SUP_LOCALIDAD, SUP_TELEFONO, '
      'SUP_FAX, SUP_WEB, SUP_EMAIL, SUP_CUENTA, '
      'SUP_STATUS, SUP_BALANCE, SUP_VENDEDOR, SUP_CTACOMPRA,'
      'SUP_TIPO, SUP_LIMITE, sup_telefono2, sup_telefono3,'
      'ger_codigo, sup_contacto2, sup_contacto3,'
      'sup_concepto_cheque, tip_codigo, tipobienid,dias_creditos'
      'from '
      'PROVEEDORES'
      'where '
      'emp_codigo = :par_invempresa')
    Left = 368
    Top = 272
    object QProveedoresEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
    end
    object QProveedoresSUP_CODIGO: TIntegerField
      FieldName = 'SUP_CODIGO'
    end
    object QProveedoresSUP_NOMBRE: TIBStringField
      FieldName = 'SUP_NOMBRE'
      Size = 60
    end
    object QProveedoresSUP_RNC: TIBStringField
      FieldName = 'SUP_RNC'
      OnChange = QProveedoresSUP_RNCChange
      Size = 30
    end
    object QProveedoresSUP_DIRECCION: TIBStringField
      FieldName = 'SUP_DIRECCION'
      Size = 60
    end
    object QProveedoresSUP_LOCALIDAD: TIBStringField
      FieldName = 'SUP_LOCALIDAD'
      Size = 60
    end
    object QProveedoresSUP_TELEFONO: TIBStringField
      FieldName = 'SUP_TELEFONO'
      Size = 30
    end
    object QProveedoresSUP_FAX: TIBStringField
      FieldName = 'SUP_FAX'
      Size = 30
    end
    object QProveedoresSUP_WEB: TIBStringField
      FieldName = 'SUP_WEB'
      Size = 60
    end
    object QProveedoresSUP_EMAIL: TIBStringField
      FieldName = 'SUP_EMAIL'
      Size = 60
    end
    object QProveedoresSUP_CUENTA: TIBStringField
      FieldName = 'SUP_CUENTA'
      OnGetText = QProveedoresSUP_CUENTAGetText
      Size = 15
    end
    object QProveedoresSUP_STATUS: TIBStringField
      FieldName = 'SUP_STATUS'
      Size = 3
    end
    object QProveedoresSUP_BALANCE: TFloatField
      FieldName = 'SUP_BALANCE'
      currency = True
    end
    object QProveedoresSUP_VENDEDOR: TIBStringField
      FieldName = 'SUP_VENDEDOR'
      Size = 60
    end
    object QProveedoresSUP_CTACOMPRA: TIBStringField
      FieldName = 'SUP_CTACOMPRA'
      Origin = 'PROVEEDORES.SUP_CTACOMPRA'
      OnGetText = QProveedoresSUP_CTACOMPRAGetText
      Size = 15
    end
    object QProveedoresSUP_TIPO: TStringField
      FieldName = 'SUP_TIPO'
      Size = 1
    end
    object QProveedoresSUP_LIMITE: TBCDField
      FieldName = 'SUP_LIMITE'
      currency = True
      Precision = 18
      Size = 2
    end
    object QProveedoressup_telefono2: TStringField
      FieldName = 'sup_telefono2'
      Size = 30
    end
    object QProveedoressup_telefono3: TStringField
      FieldName = 'sup_telefono3'
      Size = 30
    end
    object QProveedoresger_codigo: TIntegerField
      FieldName = 'ger_codigo'
      OnGetText = QProveedoresger_codigoGetText
    end
    object QProveedoressup_contacto2: TStringField
      FieldName = 'sup_contacto2'
      Size = 60
    end
    object QProveedoressup_contacto3: TStringField
      FieldName = 'sup_contacto3'
      Size = 60
    end
    object QProveedoressup_concepto_cheque: TStringField
      FieldName = 'sup_concepto_cheque'
      Size = 5
    end
    object QProveedorestip_codigo: TIntegerField
      FieldName = 'tip_codigo'
      OnGetText = QProveedorestip_codigoGetText
    end
    object QProveedorestipobienid: TIntegerField
      FieldName = 'tipobienid'
      OnGetText = QProveedorestipobienidGetText
    end
    object QProveedoresdias_creditos: TIntegerField
      FieldName = 'dias_creditos'
    end
  end
  object dsProveedores: TDataSource
    AutoEdit = False
    DataSet = QProveedores
    OnStateChange = dsProveedoresStateChange
    Left = 400
    Top = 272
  end
  object QCxP: TADOQuery
    Connection = DM.ADOSigma
    OnCalcFields = QCxPCalcFields
    DataSource = dsProveedores
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
        Name = 'sup_codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select fac_numero, fac_fecha, fac_total, fac_abono'
      'from provfacturas'
      'where emp_codigo = :emp_codigo'
      'and sup_codigo = :sup_codigo'
      'and fac_status = '#39'PEN'#39
      'order by fac_fecha desc')
    Left = 368
    Top = 304
    object QCxPFAC_NUMERO: TIBStringField
      FieldName = 'FAC_NUMERO'
      Origin = 'PROVFACTURAS.FAC_NUMERO'
      Required = True
      Size = 15
    end
    object QCxPFAC_FECHA: TDateTimeField
      FieldName = 'FAC_FECHA'
      Origin = 'PROVFACTURAS.FAC_FECHA'
    end
    object QCxPFAC_TOTAL: TFloatField
      FieldName = 'FAC_TOTAL'
      Origin = 'PROVFACTURAS.FAC_TOTAL'
      currency = True
    end
    object QCxPFAC_ABONO: TFloatField
      FieldName = 'FAC_ABONO'
      Origin = 'PROVFACTURAS.FAC_ABONO'
      currency = True
    end
    object QCxPSaldo: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Saldo'
      currency = True
      Calculated = True
    end
  end
  object dsCxP: TDataSource
    DataSet = QCxP
    Left = 400
    Top = 304
  end
  object ActionList2: TActionList
    Images = DM.ImgMant
    Left = 400
    Top = 336
    object btPrior: TAction
      Caption = 'Anterior'
      ImageIndex = 8
      OnExecute = btpriorClick
    end
    object btNext: TAction
      Caption = 'Pr'#243'ximo'
      ImageIndex = 9
      OnExecute = btnextClick
    end
    object btInsert: TAction
      Caption = 'Insertar'
      ImageIndex = 6
      OnExecute = btInsertClick
    end
    object btEdit: TAction
      Caption = 'Modificar'
      ImageIndex = 7
      OnExecute = btEditClick
    end
    object btDelete: TAction
      Caption = 'Eliminar'
      ImageIndex = 1
      OnExecute = btDeleteClick
    end
    object btPost: TAction
      Caption = 'Grabar'
      ImageIndex = 2
      OnExecute = btPostClick
    end
    object btCancel: TAction
      Caption = 'Cancelar'
      ImageIndex = 3
      OnExecute = btCancelClick
    end
    object btFind: TAction
      Caption = 'Buscar'
      ImageIndex = 4
      OnExecute = btFindClick
    end
    object btPrint: TAction
      Caption = 'Imprimir'
      ImageIndex = 5
    end
    object btClose: TAction
      Caption = 'Salir'
      ImageIndex = 0
      OnExecute = btCloseClick
    end
  end
  object Query1: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <>
    Left = 436
    Top = 272
  end
end
