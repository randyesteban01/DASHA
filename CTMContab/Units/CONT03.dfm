object frmClientes: TfrmClientes
  Left = 109
  Top = 115
  ActiveControl = DBEdit17
  BorderIcons = [biSystemMenu, biMinimize, biHelp]
  BorderStyle = bsSingle
  Caption = 'Clientes'
  ClientHeight = 402
  ClientWidth = 686
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
  object Panel1: TPanel
    Left = 8
    Top = 7
    Width = 673
    Height = 41
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 13
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object Label11: TLabel
      Left = 288
      Top = 13
      Width = 39
      Height = 13
      Caption = 'Balance'
    end
    object Label18: TLabel
      Left = 136
      Top = 13
      Width = 29
      Height = 13
      Caption = 'Refer.'
    end
    object DBEdit1: TDBEdit
      Left = 48
      Top = 10
      Width = 73
      Height = 21
      Color = clInfoBk
      DataField = 'CLI_CODIGO'
      DataSource = dsClientes
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit11: TDBEdit
      Left = 336
      Top = 10
      Width = 113
      Height = 21
      Color = clInfoBk
      DataField = 'CLI_BALANCE'
      DataSource = dsClientes
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object DBEdit17: TDBEdit
      Left = 184
      Top = 10
      Width = 89
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CLI_REFERENCIA'
      DataSource = dsClientes
      TabOrder = 2
    end
  end
  object TPanel
    Left = 352
    Top = 360
    Width = 329
    Height = 41
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 3
    object btInsert: TBitBtn
      Left = 88
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Crear'
      TabOrder = 0
      TabStop = False
      OnClick = btInsertClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
        333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
        0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
        07333337F33333337F333330FFFFFFFF07333337F33333337F333330FFFFFFFF
        07333FF7F33333337FFFBBB0FFFFFFFF0BB37777F3333333777F3BB0FFFFFFFF
        0BBB3777F3333FFF77773330FFFF000003333337F333777773333330FFFF0FF0
        33333337F3337F37F3333330FFFF0F0B33333337F3337F77FF333330FFFF003B
        B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
        3BB33773333773333773B333333B3333333B7333333733333337}
      NumGlyphs = 2
    end
    object btEdit: TBitBtn
      Left = 168
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Modificar'
      TabOrder = 1
      TabStop = False
      OnClick = btEditClick
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
    object btDelete: TBitBtn
      Left = 248
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Eliminar'
      TabOrder = 2
      TabStop = False
      OnClick = btDeleteClick
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
    object btFind: TBitBtn
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Buscar'
      TabOrder = 3
      TabStop = False
      OnClick = btFindClick
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
    end
  end
  object Panel3: TPanel
    Left = 592
    Top = 56
    Width = 89
    Height = 297
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 2
    object btPost: TBitBtn
      Left = 6
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Grabar'
      Enabled = False
      TabOrder = 0
      OnClick = btPostClick
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777770000000000007770330770000330777033077000033077703307700003
        30777033000000033077703333333333307770330000000330777030FFFFFFF0
        30777030FCCCCFF030777030FFCCCFF030777037FCCCCFF000777077CCCFCFF0
        8077777CCC777700007777CCC77777777777777C777777777777}
    end
    object btCancel: TBitBtn
      Left = 6
      Top = 40
      Width = 75
      Height = 25
      Caption = 'Cance&lar'
      Enabled = False
      TabOrder = 1
      OnClick = btCancelClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
        3333333777333777FF3333993333339993333377FF3333377FF3399993333339
        993337777FF3333377F3393999333333993337F777FF333337FF993399933333
        399377F3777FF333377F993339993333399377F33777FF33377F993333999333
        399377F333777FF3377F993333399933399377F3333777FF377F993333339993
        399377FF3333777FF7733993333339993933373FF3333777F7F3399933333399
        99333773FF3333777733339993333339933333773FFFFFF77333333999999999
        3333333777333777333333333999993333333333377777333333}
      NumGlyphs = 2
    end
    object btClose: TBitBtn
      Left = 6
      Top = 248
      Width = 75
      Height = 25
      Caption = '&Salir'
      TabOrder = 2
      TabStop = False
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
  end
  object PageControl1: TPageControl
    Left = 8
    Top = 56
    Width = 577
    Height = 297
    ActivePage = TabSheet1
    TabIndex = 0
    TabOrder = 1
    TabStop = False
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = 'Datos Personales'
      object Label2: TLabel
        Left = 40
        Top = 8
        Width = 37
        Height = 13
        Caption = 'Nombre'
      end
      object Label3: TLabel
        Left = 54
        Top = 32
        Width = 23
        Height = 13
        Caption = 'RNC'
      end
      object Label4: TLabel
        Left = 32
        Top = 80
        Width = 45
        Height = 13
        Caption = 'Direccion'
      end
      object Label5: TLabel
        Left = 35
        Top = 128
        Width = 42
        Height = 13
        Caption = 'Tel'#233'fono'
      end
      object Label6: TLabel
        Left = 212
        Top = 128
        Width = 17
        Height = 13
        Caption = 'Fax'
      end
      object Label7: TLabel
        Left = 18
        Top = 152
        Width = 59
        Height = 13
        Caption = 'P'#225'gina Web'
      end
      object Label8: TLabel
        Left = 49
        Top = 176
        Width = 28
        Height = 13
        Caption = 'E-mail'
      end
      object Label9: TLabel
        Left = 31
        Top = 104
        Width = 46
        Height = 13
        Caption = 'Localidad'
      end
      object Label10: TLabel
        Left = 44
        Top = 56
        Width = 33
        Height = 13
        Caption = 'Cedula'
      end
      object Label12: TLabel
        Left = 56
        Top = 200
        Width = 21
        Height = 13
        Caption = 'Tipo'
      end
      object btTipo: TSpeedButton
        Left = 134
        Top = 200
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
        OnClick = btTipoClick
      end
      object Label13: TLabel
        Left = 14
        Top = 224
        Width = 63
        Height = 13
        Caption = '% Descuento'
      end
      object Label14: TLabel
        Left = 168
        Top = 224
        Width = 69
        Height = 13
        Caption = 'Tipo de Precio'
      end
      object DBEdit2: TDBEdit
        Left = 88
        Top = 8
        Width = 257
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CLI_NOMBRE'
        DataSource = dsClientes
        TabOrder = 0
      end
      object DBEdit3: TDBEdit
        Left = 88
        Top = 32
        Width = 257
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CLI_RNC'
        DataSource = dsClientes
        TabOrder = 1
      end
      object DBEdit4: TDBEdit
        Left = 88
        Top = 80
        Width = 257
        Height = 21
        DataField = 'CLI_DIRECCION'
        DataSource = dsClientes
        TabOrder = 3
      end
      object DBEdit5: TDBEdit
        Left = 88
        Top = 104
        Width = 257
        Height = 21
        DataField = 'CLI_LOCALIDAD'
        DataSource = dsClientes
        TabOrder = 4
      end
      object DBEdit6: TDBEdit
        Left = 88
        Top = 128
        Width = 97
        Height = 21
        DataField = 'CLI_TELEFONO'
        DataSource = dsClientes
        TabOrder = 5
      end
      object DBEdit7: TDBEdit
        Left = 240
        Top = 128
        Width = 105
        Height = 21
        DataField = 'CLI_FAX'
        DataSource = dsClientes
        TabOrder = 6
      end
      object DBEdit8: TDBEdit
        Left = 88
        Top = 152
        Width = 257
        Height = 21
        DataField = 'CLI_WEB'
        DataSource = dsClientes
        TabOrder = 7
      end
      object DBEdit9: TDBEdit
        Left = 88
        Top = 176
        Width = 257
        Height = 21
        DataField = 'CLI_EMAIL'
        DataSource = dsClientes
        TabOrder = 8
      end
      object DBEdit10: TDBEdit
        Left = 88
        Top = 56
        Width = 257
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CLI_CEDULA'
        DataSource = dsClientes
        TabOrder = 2
      end
      object DBEdit12: TDBEdit
        Left = 88
        Top = 200
        Width = 41
        Height = 21
        DataField = 'TCL_CODIGO'
        DataSource = dsClientes
        TabOrder = 9
      end
      object tTipo: TEdit
        Left = 160
        Top = 200
        Width = 185
        Height = 21
        Color = clInfoBk
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 10
      end
      object DBEdit13: TDBEdit
        Left = 88
        Top = 224
        Width = 73
        Height = 21
        DataField = 'CLI_DESCUENTO'
        DataSource = dsClientes
        TabOrder = 11
      end
      object DBComboBox1: TDBComboBox
        Left = 248
        Top = 224
        Width = 97
        Height = 21
        Style = csDropDownList
        DataField = 'CLI_PRECIO'
        DataSource = dsClientes
        ItemHeight = 13
        Items.Strings = (
          'Precio1'
          'Precio2'
          'Precio3'
          'Precio4')
        TabOrder = 12
      end
    end
    object TabSheet7: TTabSheet
      Caption = 'Inf. Crediticia'
      ImageIndex = 6
      object GroupBox1: TGroupBox
        Left = 0
        Top = 75
        Width = 569
        Height = 97
        Align = alBottom
        Caption = 'Referencias Personales'
        TabOrder = 1
        object StaticText1: TStaticText
          Left = 8
          Top = 24
          Width = 345
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Nombre de la persona'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object StaticText2: TStaticText
          Left = 360
          Top = 24
          Width = 97
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Tel'#233'fono'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object StaticText3: TStaticText
          Left = 464
          Top = 24
          Width = 97
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Parentesco'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
        object DBEdit14: TDBEdit
          Left = 8
          Top = 48
          Width = 345
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CLI_PERNOMBRE1'
          DataSource = dsClientes
          TabOrder = 3
        end
        object DBEdit16: TDBEdit
          Left = 360
          Top = 48
          Width = 97
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CLI_PERTEL1'
          DataSource = dsClientes
          TabOrder = 4
        end
        object DBEdit24: TDBEdit
          Left = 464
          Top = 48
          Width = 97
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CLI_PERPARENT1'
          DataSource = dsClientes
          TabOrder = 5
        end
        object DBEdit25: TDBEdit
          Left = 8
          Top = 72
          Width = 345
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CLI_PERNOMBRE2'
          DataSource = dsClientes
          TabOrder = 6
        end
        object DBEdit26: TDBEdit
          Left = 360
          Top = 72
          Width = 97
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CLI_PERTEL2'
          DataSource = dsClientes
          TabOrder = 7
        end
        object DBEdit27: TDBEdit
          Left = 464
          Top = 72
          Width = 97
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CLI_PERPARENT2'
          DataSource = dsClientes
          TabOrder = 8
        end
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 172
        Width = 569
        Height = 97
        Align = alBottom
        Caption = 'Referencias Comerciales'
        TabOrder = 2
        object StaticText4: TStaticText
          Left = 8
          Top = 24
          Width = 449
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Nombre de la instituci'#243'n crediticia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object StaticText5: TStaticText
          Left = 464
          Top = 24
          Width = 97
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Tel'#233'fono'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object DBEdit28: TDBEdit
          Left = 8
          Top = 48
          Width = 449
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CLI_REFNOMBRE1'
          DataSource = dsClientes
          TabOrder = 2
        end
        object DBEdit29: TDBEdit
          Left = 464
          Top = 48
          Width = 97
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CLI_REFTEL1'
          DataSource = dsClientes
          TabOrder = 3
        end
        object DBEdit30: TDBEdit
          Left = 8
          Top = 72
          Width = 449
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CLI_REFNOMBRE2'
          DataSource = dsClientes
          TabOrder = 4
        end
        object DBEdit31: TDBEdit
          Left = 464
          Top = 72
          Width = 97
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CLI_REFTEL2'
          DataSource = dsClientes
          TabOrder = 5
        end
      end
      object GroupBox3: TGroupBox
        Left = 0
        Top = 0
        Width = 569
        Height = 69
        Align = alTop
        Caption = 'Instituci'#243'n donde trabaja'
        TabOrder = 0
        object StaticText6: TStaticText
          Left = 8
          Top = 24
          Width = 449
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Nombre de la instituci'#243'n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object StaticText7: TStaticText
          Left = 464
          Top = 24
          Width = 97
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Tel'#233'fono'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object DBEdit32: TDBEdit
          Left = 8
          Top = 44
          Width = 449
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CLI_INSTNOMBRE'
          DataSource = dsClientes
          TabOrder = 2
        end
        object DBEdit33: TDBEdit
          Left = 464
          Top = 48
          Width = 97
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CLI_INSTTEL'
          DataSource = dsClientes
          TabOrder = 3
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Para facturar'
      ImageIndex = 1
      object Label16: TLabel
        Left = 8
        Top = 16
        Width = 100
        Height = 13
        Caption = 'Condiciones de pago'
      end
      object btCondi: TSpeedButton
        Left = 190
        Top = 16
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
        OnClick = btCondiClick
      end
      object Label19: TLabel
        Left = 29
        Top = 64
        Width = 79
        Height = 13
        Caption = 'L'#237'mite de cr'#233'dito'
        FocusControl = DBEdit18
      end
      object Label17: TLabel
        Left = 62
        Top = 40
        Width = 46
        Height = 13
        Caption = 'Vendedor'
      end
      object btVendedor: TSpeedButton
        Left = 190
        Top = 40
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
        OnClick = btVendedorClick
      end
      object DBEdit15: TDBEdit
        Left = 120
        Top = 16
        Width = 65
        Height = 21
        DataField = 'CPA_CODIGO'
        DataSource = dsClientes
        TabOrder = 0
      end
      object tCondi: TEdit
        Left = 216
        Top = 16
        Width = 329
        Height = 21
        Color = clInfoBk
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit18: TDBEdit
        Left = 120
        Top = 64
        Width = 97
        Height = 21
        Color = clInfoBk
        DataField = 'CLI_LIMITE'
        DataSource = dsClientes
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
      object dbVendedor: TDBEdit
        Left = 120
        Top = 40
        Width = 65
        Height = 21
        DataField = 'VEN_CODIGO'
        DataSource = dsClientes
        TabOrder = 2
      end
      object tVendedor: TEdit
        Left = 216
        Top = 40
        Width = 329
        Height = 21
        Color = clInfoBk
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 48
        Top = 88
        Width = 201
        Height = 49
        Caption = 'Permitir facturar con balance pendiente'
        Columns = 2
        DataField = 'CLI_FACTURARBCE'
        DataSource = dsClientes
        Items.Strings = (
          'Si'
          'No')
        TabOrder = 5
        Values.Strings = (
          'S'
          'N')
      end
      object DBRadioGroup2: TDBRadioGroup
        Left = 328
        Top = 88
        Width = 201
        Height = 49
        Caption = 'Permitir facturar con facturas vencidas'
        Columns = 2
        DataField = 'CLI_FACTURARVENCIDA'
        DataSource = dsClientes
        Items.Strings = (
          'Si'
          'No')
        TabOrder = 6
        Values.Strings = (
          'S'
          'N')
      end
      object DBGrid5: TDBGrid
        Left = 0
        Top = 176
        Width = 569
        Height = 93
        Align = alBottom
        Color = clInfoBk
        DataSource = dsRest
        Options = [dgTitles, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 7
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'FPA_CODIGO'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FPA_NOMBRE'
            Title.Caption = 'Forma de pago'
            Width = 290
            Visible = True
          end>
      end
      object btInsRest: TBitBtn
        Left = 8
        Top = 144
        Width = 193
        Height = 25
        Caption = 'Agregar restricci'#243'n por forma de pago'
        TabOrder = 8
        OnClick = btInsRestClick
      end
      object btDelRest: TBitBtn
        Left = 208
        Top = 144
        Width = 193
        Height = 25
        Caption = 'Eliminar restricci'#243'n por forma de pago'
        TabOrder = 9
        OnClick = btDelRestClick
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Desc. x Familia'
      ImageIndex = 2
      object Label20: TLabel
        Left = 32
        Top = 216
        Width = 32
        Height = 13
        Caption = 'Familia'
      end
      object Label21: TLabel
        Left = 4
        Top = 240
        Width = 60
        Height = 13
        Caption = '%Descuento'
        FocusControl = DBEdit20
      end
      object btFamilia: TSpeedButton
        Left = 72
        Top = 216
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
        OnClick = btFamiliaClick
      end
      object fbtinsert: TSpeedButton
        Left = 160
        Top = 246
        Width = 81
        Height = 22
        Caption = 'A'#241'adir'
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
          333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
          0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
          07333337F33333337F333330FFFFFFFF07333337F33333337F333330FFFFFFFF
          07333FF7F33333337FFFBBB0FFFFFFFF0BB37777F3333333777F3BB0FFFFFFFF
          0BBB3777F3333FFF77773330FFFF000003333337F333777773333330FFFF0FF0
          33333337F3337F37F3333330FFFF0F0B33333337F3337F77FF333330FFFF003B
          B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
          3BB33773333773333773B333333B3333333B7333333733333337}
        NumGlyphs = 2
        OnClick = fbtinsertClick
      end
      object fbtedit: TSpeedButton
        Left = 241
        Top = 246
        Width = 81
        Height = 22
        Caption = 'Modificar'
        Flat = True
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
        OnClick = fbteditClick
      end
      object fbtdelete: TSpeedButton
        Left = 322
        Top = 246
        Width = 81
        Height = 22
        Caption = 'Eliminar'
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
        OnClick = fbtdeleteClick
      end
      object fbtpost: TSpeedButton
        Left = 484
        Top = 246
        Width = 81
        Height = 22
        Caption = 'Grabar'
        Enabled = False
        Flat = True
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000010000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          7777770000000000007770330770000330777033077000033077703307700003
          30777033000000033077703333333333307770330000000330777030FFFFFFF0
          30777030FCCCCFF030777030FFCCCFF030777037FCCCCFF000777077CCCFCFF0
          8077777CCC777700007777CCC77777777777777C777777777777}
        OnClick = fbtpostClick
      end
      object fbtcancel: TSpeedButton
        Left = 403
        Top = 246
        Width = 81
        Height = 22
        Caption = 'Cancelar'
        Enabled = False
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
          3333333777333777FF3333993333339993333377FF3333377FF3399993333339
          993337777FF3333377F3393999333333993337F777FF333337FF993399933333
          399377F3777FF333377F993339993333399377F33777FF33377F993333999333
          399377F333777FF3377F993333399933399377F3333777FF377F993333339993
          399377FF3333777FF7733993333339993933373FF3333777F7F3399933333399
          99333773FF3333777733339993333339933333773FFFFFF77333333999999999
          3333333777333777333333333999993333333333377777333333}
        NumGlyphs = 2
        OnClick = fbtcancelClick
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 569
        Height = 209
        Align = alTop
        Color = clInfoBk
        Ctl3D = False
        DataSource = dsFamilias
        Options = [dgTitles, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Familia'
            Width = 276
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLF_DESCUENTO'
            Title.Alignment = taCenter
            Title.Caption = '%Descuento'
            Visible = True
          end>
      end
      object DBEdit20: TDBEdit
        Left = 72
        Top = 240
        Width = 64
        Height = 21
        DataField = 'CLF_DESCUENTO'
        DataSource = dsFamilias
        TabOrder = 1
      end
      object DBEdit19: TDBEdit
        Left = 96
        Top = 216
        Width = 297
        Height = 21
        Color = clInfoBk
        DataField = 'Familia'
        DataSource = dsFamilias
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Desc. x Producto'
      ImageIndex = 3
      object Label22: TLabel
        Left = 24
        Top = 192
        Width = 43
        Height = 13
        Caption = 'Producto'
      end
      object Label23: TLabel
        Left = 7
        Top = 216
        Width = 60
        Height = 13
        Caption = '%Descuento'
        FocusControl = DBEdit21
      end
      object btProducto: TSpeedButton
        Left = 72
        Top = 192
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
        OnClick = btProductoClick
      end
      object pbtpost: TSpeedButton
        Left = 411
        Top = 245
        Width = 73
        Height = 22
        Caption = 'Grabar'
        Enabled = False
        Flat = True
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000010000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          7777770000000000007770330770000330777033077000033077703307700003
          30777033000000033077703333333333307770330000000330777030FFFFFFF0
          30777030FCCCCFF030777030FFCCCFF030777037FCCCCFF000777077CCCFCFF0
          8077777CCC777700007777CCC77777777777777C777777777777}
        OnClick = pbtpostClick
      end
      object pbtinsert: TSpeedButton
        Left = 192
        Top = 245
        Width = 73
        Height = 22
        Caption = 'A'#241'adir'
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
          333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
          0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
          07333337F33333337F333330FFFFFFFF07333337F33333337F333330FFFFFFFF
          07333FF7F33333337FFFBBB0FFFFFFFF0BB37777F3333333777F3BB0FFFFFFFF
          0BBB3777F3333FFF77773330FFFF000003333337F333777773333330FFFF0FF0
          33333337F3337F37F3333330FFFF0F0B33333337F3337F77FF333330FFFF003B
          B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
          3BB33773333773333773B333333B3333333B7333333733333337}
        NumGlyphs = 2
        OnClick = pbtinsertClick
      end
      object pbtedit: TSpeedButton
        Left = 265
        Top = 245
        Width = 73
        Height = 22
        Caption = 'Modificar'
        Flat = True
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
        OnClick = pbteditClick
      end
      object pbtdelete: TSpeedButton
        Left = 338
        Top = 245
        Width = 73
        Height = 22
        Caption = 'Eliminar'
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
        OnClick = pbtdeleteClick
      end
      object pbtcancel: TSpeedButton
        Left = 484
        Top = 245
        Width = 73
        Height = 22
        Caption = 'Cancelar'
        Enabled = False
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
          3333333777333777FF3333993333339993333377FF3333377FF3399993333339
          993337777FF3333377F3393999333333993337F777FF333337FF993399933333
          399377F3777FF333377F993339993333399377F33777FF33377F993333999333
          399377F333777FF3377F993333399933399377F3333777FF377F993333339993
          399377FF3333777FF7733993333339993933373FF3333777F7F3399933333399
          99333773FF3333777733339993333339933333773FFFFFF77333333999999999
          3333333777333777333333333999993333333333377777333333}
        NumGlyphs = 2
        OnClick = pbtcancelClick
      end
      object Label24: TLabel
        Left = 144
        Top = 216
        Width = 30
        Height = 13
        Caption = 'Precio'
        FocusControl = DBEdit23
      end
      object DBGrid2: TDBGrid
        Left = 0
        Top = 0
        Width = 569
        Height = 185
        Align = alTop
        Color = clInfoBk
        Ctl3D = False
        DataSource = dsProductos
        Options = [dgTitles, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Producto'
            Width = 276
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLP_DESCUENTO'
            Title.Alignment = taCenter
            Title.Caption = '%Descuento'
            Width = 67
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLP_PRECIO'
            Title.Alignment = taCenter
            Title.Caption = 'Precio'
            Width = 73
            Visible = True
          end>
      end
      object DBEdit21: TDBEdit
        Left = 72
        Top = 216
        Width = 64
        Height = 21
        DataField = 'CLP_DESCUENTO'
        DataSource = dsProductos
        TabOrder = 2
      end
      object DBEdit22: TDBEdit
        Left = 96
        Top = 192
        Width = 297
        Height = 21
        Color = clInfoBk
        DataField = 'Producto'
        DataSource = dsProductos
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit23: TDBEdit
        Left = 184
        Top = 216
        Width = 72
        Height = 21
        DataField = 'CLP_PRECIO'
        DataSource = dsProductos
        TabOrder = 3
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'CxC'
      ImageIndex = 4
      object Label15: TLabel
        Left = 8
        Top = 250
        Width = 41
        Height = 13
        Caption = 'TOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbSaldo: TStaticText
        Left = 56
        Top = 248
        Width = 133
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
        TabOrder = 0
      end
      object DBGrid3: TDBGrid
        Left = 0
        Top = 0
        Width = 569
        Height = 241
        Align = alTop
        Color = clInfoBk
        Ctl3D = False
        DataSource = dsCXC
        Options = [dgTitles, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit]
        ParentCtl3D = False
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'MOV_TIPO'
            Title.Alignment = taCenter
            Title.Caption = 'Tipo'
            Width = 30
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'FAC_FORMA'
            Title.Alignment = taCenter
            Title.Caption = 'Grupo'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'TFA_CODIGO'
            Title.Alignment = taCenter
            Title.Caption = 'Tipo Fac.'
            Width = 46
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'MOV_NUMERO'
            Title.Alignment = taCenter
            Title.Caption = 'N'#250'mero'
            Width = 52
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MOV_FECHA'
            Title.Alignment = taCenter
            Title.Caption = 'Fecha'
            Width = 66
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MOV_MONTO'
            Title.Alignment = taCenter
            Title.Caption = 'Total'
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MOV_ABONO'
            Title.Alignment = taCenter
            Title.Caption = 'Abono'
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Saldo'
            Title.Alignment = taCenter
            Width = 75
            Visible = True
          end>
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'Limites de cr'#233'dito'
      ImageIndex = 5
      object DBGrid4: TDBGrid
        Left = 0
        Top = 0
        Width = 569
        Height = 233
        Align = alTop
        Color = clInfoBk
        Ctl3D = False
        DataSource = dsLimite
        Options = [dgTitles, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit]
        ParentCtl3D = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'LIM_FECHA'
            Title.Alignment = taCenter
            Title.Caption = 'Fecha'
            Width = 68
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LIM_CONCEPTO'
            Title.Caption = 'Concepto'
            Width = 235
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LIM_MONTO'
            Title.Alignment = taCenter
            Title.Caption = 'L'#237'mite'
            Width = 85
            Visible = True
          end>
      end
      object BitBtn2: TBitBtn
        Left = 486
        Top = 240
        Width = 75
        Height = 25
        Caption = 'Imprimir'
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
    end
  end
  object QClientes: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.IBTransaction1
    AfterDelete = QClientesAfterDelete
    AfterOpen = QClientesAfterOpen
    AfterPost = QClientesAfterPost
    BeforePost = QClientesBeforePost
    OnNewRecord = QClientesNewRecord
    BufferChunks = 1000
    CachedUpdates = True
    DataSource = DM.dsEmpresas
    SQL.Strings = (
      'select '
      
        'CLI_TELEFONO, CLI_FAX, CLI_WEB, CLI_EMAIL, TCL_CODIGO, CLI_DESCU' +
        'ENTO, CLI_PRECIO, CLI_STATUS, FPA_CODIGO, CPA_CODIGO, CLI_CUENTA' +
        ', CLI_BALANCE, EMP_CODIGO, CLI_CODIGO, CLI_REFERENCIA, CLI_NOMBR' +
        'E, CLI_RNC, CLI_CEDULA, CLI_DIRECCION, CLI_LOCALIDAD, CLI_LIMITE' +
        ', VEN_CODIGO, CLI_FACTURARBCE, CLI_FACTURARVENCIDA,'
      
        'CLI_INSTNOMBRE, CLI_INSTTEL, CLI_PERNOMBRE1, CLI_PERNOMBRE2, CLI' +
        '_PERPARENT1, CLI_PERPARENT2, CLI_PERTEL1, CLI_PERTEL2, CLI_REFNO' +
        'MBRE1, CLI_REFNOMBRE2, CLI_REFTEL1, CLI_REFTEL2'
      'from '
      'CLIENTES'
      'where emp_codigo = :emp_codigo'
      'and cli_codigo = :cli')
    UpdateObject = UPDClientes
    Left = 472
    Top = 88
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'emp_codigo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cli'
        ParamType = ptUnknown
      end>
    object QClientesCLI_TELEFONO: TIBStringField
      FieldName = 'CLI_TELEFONO'
      Size = 30
    end
    object QClientesCLI_FAX: TIBStringField
      FieldName = 'CLI_FAX'
      Size = 30
    end
    object QClientesCLI_WEB: TIBStringField
      FieldName = 'CLI_WEB'
      Size = 60
    end
    object QClientesCLI_EMAIL: TIBStringField
      FieldName = 'CLI_EMAIL'
      Size = 60
    end
    object QClientesTCL_CODIGO: TIntegerField
      FieldName = 'TCL_CODIGO'
      OnGetText = QClientesTCL_CODIGOGetText
    end
    object QClientesCLI_DESCUENTO: TFloatField
      FieldName = 'CLI_DESCUENTO'
    end
    object QClientesCLI_PRECIO: TIBStringField
      FieldName = 'CLI_PRECIO'
      Size = 8
    end
    object QClientesCLI_STATUS: TIBStringField
      FieldName = 'CLI_STATUS'
      Size = 3
    end
    object QClientesFPA_CODIGO: TIntegerField
      FieldName = 'FPA_CODIGO'
    end
    object QClientesCPA_CODIGO: TIntegerField
      FieldName = 'CPA_CODIGO'
      OnGetText = QClientesCPA_CODIGOGetText
    end
    object QClientesCLI_CUENTA: TIBStringField
      FieldName = 'CLI_CUENTA'
      Size = 15
    end
    object QClientesCLI_BALANCE: TFloatField
      FieldName = 'CLI_BALANCE'
      currency = True
    end
    object QClientesEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
    end
    object QClientesCLI_CODIGO: TIntegerField
      FieldName = 'CLI_CODIGO'
    end
    object QClientesCLI_REFERENCIA: TIBStringField
      FieldName = 'CLI_REFERENCIA'
      Size = 10
    end
    object QClientesCLI_NOMBRE: TIBStringField
      FieldName = 'CLI_NOMBRE'
      Size = 60
    end
    object QClientesCLI_RNC: TIBStringField
      FieldName = 'CLI_RNC'
      Size = 30
    end
    object QClientesCLI_CEDULA: TIBStringField
      FieldName = 'CLI_CEDULA'
      OnChange = QClientesCLI_CEDULAChange
      EditMask = 'ccc-ccccccc-c'
      Size = 30
    end
    object QClientesCLI_DIRECCION: TIBStringField
      FieldName = 'CLI_DIRECCION'
      Size = 60
    end
    object QClientesCLI_LOCALIDAD: TIBStringField
      FieldName = 'CLI_LOCALIDAD'
      Size = 60
    end
    object QClientesCLI_LIMITE: TFloatField
      FieldName = 'CLI_LIMITE'
      currency = True
    end
    object QClientesVEN_CODIGO: TIntegerField
      FieldName = 'VEN_CODIGO'
      Origin = 'CLIENTES.VEN_CODIGO'
      OnGetText = QClientesVEN_CODIGOGetText
    end
    object QClientesCLI_FACTURARBCE: TIBStringField
      FieldName = 'CLI_FACTURARBCE'
      Origin = 'CLIENTES.CLI_FACTURARBCE'
      Size = 1
    end
    object QClientesCLI_FACTURARVENCIDA: TIBStringField
      FieldName = 'CLI_FACTURARVENCIDA'
      Origin = 'CLIENTES.CLI_FACTURARVENCIDA'
      Size = 1
    end
    object QClientesCLI_INSTNOMBRE: TIBStringField
      FieldName = 'CLI_INSTNOMBRE'
      Origin = 'CLIENTES.CLI_INSTNOMBRE'
      Size = 60
    end
    object QClientesCLI_INSTTEL: TIBStringField
      FieldName = 'CLI_INSTTEL'
      Origin = 'CLIENTES.CLI_INSTTEL'
      Size = 13
    end
    object QClientesCLI_PERNOMBRE1: TIBStringField
      FieldName = 'CLI_PERNOMBRE1'
      Origin = 'CLIENTES.CLI_PERNOMBRE1'
      Size = 60
    end
    object QClientesCLI_PERNOMBRE2: TIBStringField
      FieldName = 'CLI_PERNOMBRE2'
      Origin = 'CLIENTES.CLI_PERNOMBRE2'
      Size = 60
    end
    object QClientesCLI_PERPARENT1: TIBStringField
      FieldName = 'CLI_PERPARENT1'
      Origin = 'CLIENTES.CLI_PERPARENT1'
      Size = 30
    end
    object QClientesCLI_PERPARENT2: TIBStringField
      FieldName = 'CLI_PERPARENT2'
      Origin = 'CLIENTES.CLI_PERPARENT2'
      Size = 30
    end
    object QClientesCLI_PERTEL1: TIBStringField
      FieldName = 'CLI_PERTEL1'
      Origin = 'CLIENTES.CLI_PERTEL1'
      Size = 13
    end
    object QClientesCLI_PERTEL2: TIBStringField
      FieldName = 'CLI_PERTEL2'
      Origin = 'CLIENTES.CLI_PERTEL2'
      Size = 13
    end
    object QClientesCLI_REFNOMBRE1: TIBStringField
      FieldName = 'CLI_REFNOMBRE1'
      Origin = 'CLIENTES.CLI_REFNOMBRE1'
      Size = 60
    end
    object QClientesCLI_REFNOMBRE2: TIBStringField
      FieldName = 'CLI_REFNOMBRE2'
      Origin = 'CLIENTES.CLI_REFNOMBRE2'
      Size = 60
    end
    object QClientesCLI_REFTEL1: TIBStringField
      FieldName = 'CLI_REFTEL1'
      Origin = 'CLIENTES.CLI_REFTEL1'
      Size = 13
    end
    object QClientesCLI_REFTEL2: TIBStringField
      FieldName = 'CLI_REFTEL2'
      Origin = 'CLIENTES.CLI_REFTEL2'
      Size = 13
    end
  end
  object dsClientes: TDataSource
    AutoEdit = False
    DataSet = QClientes
    OnStateChange = dsClientesStateChange
    Left = 504
    Top = 88
  end
  object UPDClientes: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  EMP_CODIGO,'
      '  CLI_CODIGO,'
      '  CLI_REFERENCIA,'
      '  CLI_NOMBRE,'
      '  CLI_RNC,'
      '  CLI_CEDULA,'
      '  CLI_DIRECCION,'
      '  CLI_LOCALIDAD,'
      '  CLI_TELEFONO,'
      '  CLI_FAX,'
      '  CLI_WEB,'
      '  CLI_EMAIL,'
      '  TCL_CODIGO,'
      '  CLI_DESCUENTO,'
      '  CLI_PRECIO,'
      '  CLI_STATUS,'
      '  FPA_CODIGO,'
      '  CPA_CODIGO,'
      '  CLI_CUENTA,'
      '  CLI_BALANCE,'
      '  CLI_LIMITE,'
      '  VEN_CODIGO,'
      '  CLI_FACTURARBCE,'
      '  CLI_FACTURARVENCIDA,'
      '  CLI_INSTNOMBRE,'
      '  CLI_INSTTEL,'
      '  CLI_PERNOMBRE1,'
      '  CLI_PERPARENT1,'
      '  CLI_PERTEL1,'
      '  CLI_PERNOMBRE2,'
      '  CLI_PERPARENT2,'
      '  CLI_PERTEL2,'
      '  CLI_REFNOMBRE1,'
      '  CLI_REFTEL1,'
      '  CLI_REFNOMBRE2,'
      '  CLI_REFTEL2'
      'from CLIENTES '
      'where'
      '  EMP_CODIGO = :EMP_CODIGO and'
      '  CLI_CODIGO = :CLI_CODIGO')
    ModifySQL.Strings = (
      'update CLIENTES'
      'set'
      '  EMP_CODIGO = :EMP_CODIGO,'
      '  CLI_CODIGO = :CLI_CODIGO,'
      '  CLI_REFERENCIA = :CLI_REFERENCIA,'
      '  CLI_NOMBRE = :CLI_NOMBRE,'
      '  CLI_RNC = :CLI_RNC,'
      '  CLI_CEDULA = :CLI_CEDULA,'
      '  CLI_DIRECCION = :CLI_DIRECCION,'
      '  CLI_LOCALIDAD = :CLI_LOCALIDAD,'
      '  CLI_TELEFONO = :CLI_TELEFONO,'
      '  CLI_FAX = :CLI_FAX,'
      '  CLI_WEB = :CLI_WEB,'
      '  CLI_EMAIL = :CLI_EMAIL,'
      '  TCL_CODIGO = :TCL_CODIGO,'
      '  CLI_DESCUENTO = :CLI_DESCUENTO,'
      '  CLI_PRECIO = :CLI_PRECIO,'
      '  CLI_STATUS = :CLI_STATUS,'
      '  FPA_CODIGO = :FPA_CODIGO,'
      '  CPA_CODIGO = :CPA_CODIGO,'
      '  CLI_CUENTA = :CLI_CUENTA,'
      '  CLI_BALANCE = :CLI_BALANCE,'
      '  CLI_LIMITE = :CLI_LIMITE,'
      '  VEN_CODIGO = :VEN_CODIGO,'
      '  CLI_FACTURARBCE = :CLI_FACTURARBCE,'
      '  CLI_FACTURARVENCIDA = :CLI_FACTURARVENCIDA,'
      '  CLI_INSTNOMBRE = :CLI_INSTNOMBRE,'
      '  CLI_INSTTEL = :CLI_INSTTEL,'
      '  CLI_PERNOMBRE1 = :CLI_PERNOMBRE1,'
      '  CLI_PERPARENT1 = :CLI_PERPARENT1,'
      '  CLI_PERTEL1 = :CLI_PERTEL1,'
      '  CLI_PERNOMBRE2 = :CLI_PERNOMBRE2,'
      '  CLI_PERPARENT2 = :CLI_PERPARENT2,'
      '  CLI_PERTEL2 = :CLI_PERTEL2,'
      '  CLI_REFNOMBRE1 = :CLI_REFNOMBRE1,'
      '  CLI_REFTEL1 = :CLI_REFTEL1,'
      '  CLI_REFNOMBRE2 = :CLI_REFNOMBRE2,'
      '  CLI_REFTEL2 = :CLI_REFTEL2'
      'where'
      '  EMP_CODIGO = :OLD_EMP_CODIGO and'
      '  CLI_CODIGO = :OLD_CLI_CODIGO')
    InsertSQL.Strings = (
      'insert into CLIENTES'
      
        '  (EMP_CODIGO, CLI_CODIGO, CLI_REFERENCIA, CLI_NOMBRE, CLI_RNC, ' +
        'CLI_CEDULA, '
      
        '   CLI_DIRECCION, CLI_LOCALIDAD, CLI_TELEFONO, CLI_FAX, CLI_WEB,' +
        ' CLI_EMAIL, '
      
        '   TCL_CODIGO, CLI_DESCUENTO, CLI_PRECIO, CLI_STATUS, FPA_CODIGO' +
        ', CPA_CODIGO, '
      
        '   CLI_CUENTA, CLI_BALANCE, CLI_LIMITE, VEN_CODIGO, CLI_FACTURAR' +
        'BCE, CLI_FACTURARVENCIDA, '
      
        '   CLI_INSTNOMBRE, CLI_INSTTEL, CLI_PERNOMBRE1, CLI_PERPARENT1, ' +
        'CLI_PERTEL1, '
      
        '   CLI_PERNOMBRE2, CLI_PERPARENT2, CLI_PERTEL2, CLI_REFNOMBRE1, ' +
        'CLI_REFTEL1, '
      '   CLI_REFNOMBRE2, CLI_REFTEL2)'
      'values'
      
        '  (:EMP_CODIGO, :CLI_CODIGO, :CLI_REFERENCIA, :CLI_NOMBRE, :CLI_' +
        'RNC, :CLI_CEDULA, '
      
        '   :CLI_DIRECCION, :CLI_LOCALIDAD, :CLI_TELEFONO, :CLI_FAX, :CLI' +
        '_WEB, :CLI_EMAIL, '
      
        '   :TCL_CODIGO, :CLI_DESCUENTO, :CLI_PRECIO, :CLI_STATUS, :FPA_C' +
        'ODIGO, '
      
        '   :CPA_CODIGO, :CLI_CUENTA, :CLI_BALANCE, :CLI_LIMITE, :VEN_COD' +
        'IGO, :CLI_FACTURARBCE, '
      
        '   :CLI_FACTURARVENCIDA, :CLI_INSTNOMBRE, :CLI_INSTTEL, :CLI_PER' +
        'NOMBRE1, '
      
        '   :CLI_PERPARENT1, :CLI_PERTEL1, :CLI_PERNOMBRE2, :CLI_PERPAREN' +
        'T2, :CLI_PERTEL2, '
      '   :CLI_REFNOMBRE1, :CLI_REFTEL1, :CLI_REFNOMBRE2, :CLI_REFTEL2)')
    DeleteSQL.Strings = (
      'delete from CLIENTES'
      'where'
      '  EMP_CODIGO = :OLD_EMP_CODIGO and'
      '  CLI_CODIGO = :OLD_CLI_CODIGO')
    Left = 536
    Top = 88
  end
  object Search: TQrySearchDlgIB
    Title = 'Listado de Clientes'
    ResultField = 'cli_codigo'
    Query.Strings = (
      'select cli_nombre, cli_codigo'
      'from clientes')
    AliasFields.Strings = (
      'Nombre'
      'C'#243'digo')
    AliasName = DM.IBDatabase
    Left = 400
    Top = 176
  end
  object QFamiliasCli: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.IBTransaction1
    AfterDelete = QFamiliasCliAfterDelete
    AfterPost = QFamiliasCliAfterPost
    BeforePost = QFamiliasCliBeforePost
    OnNewRecord = QFamiliasCliNewRecord
    BufferChunks = 1000
    CachedUpdates = True
    DataSource = dsClientes
    SQL.Strings = (
      
        'select EMP_CODIGO, CLI_CODIGO, FAM_CODIGO, CLF_DESCUENTO from CL' +
        'IFAMILIAS'
      'where emp_codigo = :emp_codigo'
      'and cli_codigo = :cli_codigo'
      'order by fam_codigo')
    UpdateObject = UPDFamilias
    Left = 472
    Top = 120
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'emp_codigo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cli_codigo'
        ParamType = ptUnknown
      end>
    object QFamiliasCliCLI_CODIGO: TIntegerField
      FieldName = 'CLI_CODIGO'
    end
    object QFamiliasCliEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
    end
    object QFamiliasCliFAM_CODIGO: TIntegerField
      FieldName = 'FAM_CODIGO'
    end
    object QFamiliasCliCLF_DESCUENTO: TFloatField
      FieldName = 'CLF_DESCUENTO'
      currency = True
    end
    object QFamiliasCliFamilia: TStringField
      FieldKind = fkLookup
      FieldName = 'Familia'
      LookupDataSet = QFamilias
      LookupKeyFields = 'FAM_CODIGO'
      LookupResultField = 'FAM_NOMBRE'
      KeyFields = 'FAM_CODIGO'
      Size = 40
      Lookup = True
    end
  end
  object dsFamilias: TDataSource
    AutoEdit = False
    DataSet = QFamiliasCli
    OnStateChange = dsFamiliasStateChange
    Left = 504
    Top = 120
  end
  object UPDFamilias: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  EMP_CODIGO,'
      '  CLI_CODIGO,'
      '  FAM_CODIGO,'
      '  CLF_DESCUENTO'
      'from CLIFAMILIAS '
      'where'
      '  EMP_CODIGO = :EMP_CODIGO and'
      '  CLI_CODIGO = :CLI_CODIGO and'
      '  FAM_CODIGO = :FAM_CODIGO')
    ModifySQL.Strings = (
      'update CLIFAMILIAS'
      'set'
      '  EMP_CODIGO = :EMP_CODIGO,'
      '  CLI_CODIGO = :CLI_CODIGO,'
      '  FAM_CODIGO = :FAM_CODIGO,'
      '  CLF_DESCUENTO = :CLF_DESCUENTO'
      'where'
      '  EMP_CODIGO = :OLD_EMP_CODIGO and'
      '  CLI_CODIGO = :OLD_CLI_CODIGO and'
      '  FAM_CODIGO = :OLD_FAM_CODIGO')
    InsertSQL.Strings = (
      'insert into CLIFAMILIAS'
      '  (EMP_CODIGO, CLI_CODIGO, FAM_CODIGO, CLF_DESCUENTO)'
      'values'
      '  (:EMP_CODIGO, :CLI_CODIGO, :FAM_CODIGO, :CLF_DESCUENTO)')
    DeleteSQL.Strings = (
      'delete from CLIFAMILIAS'
      'where'
      '  EMP_CODIGO = :OLD_EMP_CODIGO and'
      '  CLI_CODIGO = :OLD_CLI_CODIGO and'
      '  FAM_CODIGO = :OLD_FAM_CODIGO')
    Left = 536
    Top = 120
  end
  object QFamilias: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = DM.dsEmpresas
    SQL.Strings = (
      'select FAM_CODIGO, FAM_NOMBRE from FAMILIAS'
      'where emp_codigo = :emp_codigo')
    Left = 432
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'emp_codigo'
        ParamType = ptUnknown
      end>
    object QFamiliasFAM_CODIGO: TIntegerField
      FieldName = 'FAM_CODIGO'
      Required = True
    end
    object QFamiliasFAM_NOMBRE: TIBStringField
      FieldName = 'FAM_NOMBRE'
      Size = 60
    end
  end
  object QProductos: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = DM.dsEmpresas
    SQL.Strings = (
      'select PRO_CODIGO, PRO_NOMBRE from PRODUCTOS'
      'where EMP_CODIGO = :emp_codigo')
    Left = 400
    Top = 208
    ParamData = <
      item
        DataType = ftInteger
        Name = 'EMP_CODIGO'
        ParamType = ptUnknown
      end>
    object QProductosPRO_CODIGO: TIntegerField
      FieldName = 'PRO_CODIGO'
      Required = True
    end
    object QProductosPRO_NOMBRE: TIBStringField
      FieldName = 'PRO_NOMBRE'
      Size = 60
    end
  end
  object QProductosCli: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.IBTransaction1
    AfterDelete = QProductosCliAfterDelete
    AfterPost = QProductosCliAfterPost
    BeforePost = QProductosCliBeforePost
    OnNewRecord = QProductosCliNewRecord
    BufferChunks = 1000
    CachedUpdates = True
    DataSource = dsClientes
    SQL.Strings = (
      
        'select EMP_CODIGO, CLI_CODIGO, PRO_CODIGO, CLP_DESCUENTO, CLP_PR' +
        'ECIO from CLIPRODUCTOS'
      'where emp_codigo = :emp_codigo'
      'and cli_codigo = :cli_Codigo'
      'order by pro_codigo')
    UpdateObject = UPDProductos
    Left = 472
    Top = 152
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'emp_codigo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cli_Codigo'
        ParamType = ptUnknown
      end>
    object QProductosCliEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Required = True
    end
    object QProductosCliCLI_CODIGO: TIntegerField
      FieldName = 'CLI_CODIGO'
      Required = True
    end
    object QProductosCliPRO_CODIGO: TIntegerField
      FieldName = 'PRO_CODIGO'
      Required = True
    end
    object QProductosCliCLP_DESCUENTO: TFloatField
      FieldName = 'CLP_DESCUENTO'
      currency = True
    end
    object QProductosCliCLP_PRECIO: TFloatField
      FieldName = 'CLP_PRECIO'
      currency = True
    end
    object QProductosCliProducto: TStringField
      FieldKind = fkLookup
      FieldName = 'Producto'
      LookupDataSet = QProductos
      LookupKeyFields = 'PRO_CODIGO'
      LookupResultField = 'PRO_NOMBRE'
      KeyFields = 'PRO_CODIGO'
      Size = 60
      Lookup = True
    end
  end
  object dsProductos: TDataSource
    AutoEdit = False
    DataSet = QProductosCli
    OnStateChange = dsProductosStateChange
    Left = 504
    Top = 152
  end
  object UPDProductos: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  EMP_CODIGO,'
      '  CLI_CODIGO,'
      '  PRO_CODIGO,'
      '  CLP_DESCUENTO,'
      '  CLP_PRECIO'
      'from CLIPRODUCTOS '
      'where'
      '  EMP_CODIGO = :EMP_CODIGO and'
      '  CLI_CODIGO = :CLI_CODIGO and'
      '  PRO_CODIGO = :PRO_CODIGO')
    ModifySQL.Strings = (
      'update CLIPRODUCTOS'
      'set'
      '  EMP_CODIGO = :EMP_CODIGO,'
      '  CLI_CODIGO = :CLI_CODIGO,'
      '  PRO_CODIGO = :PRO_CODIGO,'
      '  CLP_DESCUENTO = :CLP_DESCUENTO,'
      '  CLP_PRECIO = :CLP_PRECIO'
      'where'
      '  EMP_CODIGO = :OLD_EMP_CODIGO and'
      '  CLI_CODIGO = :OLD_CLI_CODIGO and'
      '  PRO_CODIGO = :OLD_PRO_CODIGO')
    InsertSQL.Strings = (
      'insert into CLIPRODUCTOS'
      
        '  (EMP_CODIGO, CLI_CODIGO, PRO_CODIGO, CLP_DESCUENTO, CLP_PRECIO' +
        ')'
      'values'
      
        '  (:EMP_CODIGO, :CLI_CODIGO, :PRO_CODIGO, :CLP_DESCUENTO, :CLP_P' +
        'RECIO)')
    DeleteSQL.Strings = (
      'delete from CLIPRODUCTOS'
      'where'
      '  EMP_CODIGO = :OLD_EMP_CODIGO and'
      '  CLI_CODIGO = :OLD_CLI_CODIGO and'
      '  PRO_CODIGO = :OLD_PRO_CODIGO')
    Left = 536
    Top = 152
  end
  object QCXC: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.IBTransaction1
    OnCalcFields = QCXCCalcFields
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dsClientes
    SQL.Strings = (
      
        'select FAC_FORMA, MOV_ABONO, MOV_FECHA, MOV_MONTO, MOV_NUMERO, M' +
        'OV_TIPO, TFA_CODIGO from MOVIMIENTOS'
      'where emp_codigo = :emp_codigo'
      'and cli_codigo = :cli_codigo'
      'and mov_status = '#39'PEN'#39
      'order by mov_fecha desc')
    Left = 472
    Top = 184
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'emp_codigo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cli_codigo'
        ParamType = ptUnknown
      end>
    object QCXCSaldo: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Saldo'
      currency = True
      Calculated = True
    end
    object QCXCFAC_FORMA: TIBStringField
      FieldName = 'FAC_FORMA'
      Origin = 'MOVIMIENTOS.FAC_FORMA'
      Size = 1
    end
    object QCXCMOV_ABONO: TFloatField
      FieldName = 'MOV_ABONO'
      Origin = 'MOVIMIENTOS.MOV_ABONO'
      currency = True
    end
    object QCXCMOV_FECHA: TDateTimeField
      FieldName = 'MOV_FECHA'
      Origin = 'MOVIMIENTOS.MOV_FECHA'
    end
    object QCXCMOV_MONTO: TFloatField
      FieldName = 'MOV_MONTO'
      Origin = 'MOVIMIENTOS.MOV_MONTO'
      currency = True
    end
    object QCXCMOV_NUMERO: TIntegerField
      FieldName = 'MOV_NUMERO'
      Origin = 'MOVIMIENTOS.MOV_NUMERO'
      Required = True
      DisplayFormat = '000000'
    end
    object QCXCMOV_TIPO: TIBStringField
      FieldName = 'MOV_TIPO'
      Origin = 'MOVIMIENTOS.MOV_TIPO'
      Required = True
      Size = 3
    end
    object QCXCTFA_CODIGO: TIntegerField
      FieldName = 'TFA_CODIGO'
      Origin = 'MOVIMIENTOS.TFA_CODIGO'
    end
  end
  object dsCXC: TDataSource
    DataSet = QCXC
    Left = 504
    Top = 184
  end
  object QLimite: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dsClientes
    SQL.Strings = (
      'select '
      
        'CLI_CODIGO, EMP_CODIGO, LIM_CONCEPTO, LIM_FECHA, LIM_MONTO, LIM_' +
        'SECUENCIA '
      'from '
      'CLILIMITE'
      'where'
      'emp_Codigo = :emp_codigo'
      'and cli_codigo = :cli_codigo'
      'order by lim_secuencia')
    Left = 472
    Top = 216
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'emp_codigo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cli_codigo'
        ParamType = ptUnknown
      end>
    object QLimiteCLI_CODIGO: TIntegerField
      FieldName = 'CLI_CODIGO'
      Origin = 'CLILIMITE.CLI_CODIGO'
      Required = True
    end
    object QLimiteEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'CLILIMITE.EMP_CODIGO'
      Required = True
    end
    object QLimiteLIM_CONCEPTO: TIBStringField
      FieldName = 'LIM_CONCEPTO'
      Origin = 'CLILIMITE.LIM_CONCEPTO'
      Size = 60
    end
    object QLimiteLIM_FECHA: TDateTimeField
      FieldName = 'LIM_FECHA'
      Origin = 'CLILIMITE.LIM_FECHA'
    end
    object QLimiteLIM_MONTO: TFloatField
      FieldName = 'LIM_MONTO'
      Origin = 'CLILIMITE.LIM_MONTO'
      currency = True
    end
    object QLimiteLIM_SECUENCIA: TIntegerField
      FieldName = 'LIM_SECUENCIA'
      Origin = 'CLILIMITE.LIM_SECUENCIA'
      Required = True
    end
  end
  object dsLimite: TDataSource
    DataSet = QLimite
    Left = 504
    Top = 216
  end
  object QRest: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.IBTransaction1
    OnNewRecord = QRestNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dsClientes
    SQL.Strings = (
      'SELECT'
      'C.CLI_CODIGO, C.EMP_CODIGO, C.FPA_CODIGO, F.FPA_NOMBRE'
      'FROM'
      'CLIRESTFPAGO C, FORMASPAGO F'
      'WHERE '
      'C.EMP_CODIGO = F.EMP_CODIGO'
      'AND C.FPA_CODIGO = F.FPA_CODIGO'
      'AND C.EMP_CODIGO = :EMP_CODIGO'
      'AND C.CLI_CODIGO = :CLI_CODIGO'
      'ORDER BY C.FPA_CODIGO')
    Left = 472
    Top = 248
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'EMP_CODIGO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CLI_CODIGO'
        ParamType = ptUnknown
      end>
    object QRestCLI_CODIGO: TIntegerField
      FieldName = 'CLI_CODIGO'
      Origin = 'CLIRESTFPAGO.CLI_CODIGO'
      Required = True
    end
    object QRestEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'CLIRESTFPAGO.EMP_CODIGO'
      Required = True
    end
    object QRestFPA_CODIGO: TIntegerField
      FieldName = 'FPA_CODIGO'
      Origin = 'CLIRESTFPAGO.FPA_CODIGO'
      Required = True
    end
    object QRestFPA_NOMBRE: TIBStringField
      FieldName = 'FPA_NOMBRE'
      Origin = 'FORMASPAGO.FPA_NOMBRE'
      Size = 60
    end
  end
  object dsRest: TDataSource
    DataSet = QRest
    Left = 504
    Top = 248
  end
  object Query1: TIBQuery
    Database = DM.IBDatabase
    Transaction = DM.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    Left = 400
    Top = 144
  end
end
