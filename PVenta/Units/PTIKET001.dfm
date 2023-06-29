object frmBoleteria: TfrmBoleteria
  Left = 239
  Top = 108
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Boleter'#237'a'
  ClientHeight = 481
  ClientWidth = 1041
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
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  DesignSize = (
    1041
    481)
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 328
    Top = 48
    Width = 100
    Height = 13
    Caption = 'Pasajero(s)     +  '#243'  -  '
  end
  object pTop: TPanel
    Left = 0
    Top = 0
    Width = 1041
    Height = 41
    Align = alTop
    TabOrder = 0
    DesignSize = (
      1041
      41)
    object btnBalance: TBitBtn
      Left = 910
      Top = 11
      Width = 127
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Balance'
      TabOrder = 0
      OnClick = btnBalanceClick
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
    object cbbHoraValido2: TComboBox
      Left = 208
      Top = 0
      Width = 113
      Height = 32
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 24
      ItemIndex = 0
      ParentFont = False
      TabOrder = 1
      Text = '12:00 AM'
      Visible = False
      OnChange = cbbHoraValidoChange
      Items.Strings = (
        '12:00 AM'
        '01:00 AM'
        '02:00 AM'
        '03:00 AM'
        '04:00 AM'
        '05:00 AM'
        '06:00 AM'
        '07:00 AM'
        '08:00 AM'
        '09:00 AM'
        '10:00 AM'
        '11:00 AM'
        '12:00 PM'
        '01:00 PM'
        '02:00 PM'
        '03:00 PM'
        '04:00 PM'
        '05:00 PM'
        '06:00 PM'
        '07:00 PM'
        '08:00 PM'
        '09:00 PM'
        '10:00 PM'
        '11:00 PM')
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 41
    Width = 321
    Height = 101
    Align = alCustom
    TabOrder = 1
    object Label2: TLabel
      Left = 1
      Top = 1
      Width = 319
      Height = 20
      Align = alTop
      Alignment = taCenter
      Caption = 'TERMINAL DE  O R I G E N'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Panel2: TPanel
      Left = 1
      Top = 21
      Width = 319
      Height = 44
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
    end
    object Panel5: TPanel
      Left = 1
      Top = 65
      Width = 319
      Height = 46
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object Label5: TLabel
        Left = 4
        Top = 12
        Width = 71
        Height = 13
        Caption = 'Valido hasta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object cbbHoraValido: TComboBox
        Left = 200
        Top = 0
        Width = 113
        Height = 32
        Style = csDropDownList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 24
        ItemIndex = 0
        ParentFont = False
        TabOrder = 0
        Text = '12:00 AM'
        OnChange = cbbHoraValidoChange
        Items.Strings = (
          '12:00 AM'
          '01:00 AM'
          '02:00 AM'
          '03:00 AM'
          '04:00 AM'
          '05:00 AM'
          '06:00 AM'
          '07:00 AM'
          '08:00 AM'
          '09:00 AM'
          '10:00 AM'
          '11:00 AM'
          '12:00 PM'
          '01:00 PM'
          '02:00 PM'
          '03:00 PM'
          '04:00 PM'
          '05:00 PM'
          '06:00 PM'
          '07:00 PM'
          '08:00 PM'
          '09:00 PM'
          '10:00 PM'
          '11:00 PM')
      end
      object DEdt_ValidoHasta: TDateTimePicker
        Left = 82
        Top = 0
        Width = 117
        Height = 32
        Date = 37506.000000000000000000
        Time = 37506.000000000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnChange = DEdt_ValidoHastaChange
      end
    end
  end
  object Cantidad: TSpinEdit
    Left = 328
    Top = 64
    Width = 105
    Height = 83
    Hint = 
      'Puede aumentar o disminuir la cantidad precionando las teclas + ' +
      'o -'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -59
    Font.Name = 'MS Reference Sans Serif'
    Font.Style = [fsBold]
    MaxValue = 99
    MinValue = 1
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    Value = 1
  end
  object Panel4: TPanel
    Left = 1
    Top = 152
    Width = 662
    Height = 318
    BevelInner = bvLowered
    TabOrder = 3
    object boton1: TStaticText
      Left = 2
      Top = 6
      Width = 163
      Height = 61
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      Color = 16744448
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 0
      OnClick = ExeButton
    end
    object boton2: TStaticText
      Left = 167
      Top = 7
      Width = 164
      Height = 62
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      Color = 16744448
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 1
      OnClick = ExeButton
    end
    object boton3: TStaticText
      Left = 332
      Top = 7
      Width = 163
      Height = 62
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      Color = 16744448
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 2
      OnClick = ExeButton
    end
    object boton4: TStaticText
      Left = 496
      Top = 7
      Width = 163
      Height = 62
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      Color = 16744448
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 3
      OnClick = ExeButton
    end
    object boton5: TStaticText
      Left = 3
      Top = 68
      Width = 163
      Height = 62
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      Color = 16744448
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 4
      OnClick = ExeButton
    end
    object boton6: TStaticText
      Left = 167
      Top = 68
      Width = 164
      Height = 62
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      Color = 16744448
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 5
      OnClick = ExeButton
    end
    object boton7: TStaticText
      Left = 332
      Top = 68
      Width = 163
      Height = 62
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      Color = 16744448
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 6
      OnClick = ExeButton
    end
    object boton8: TStaticText
      Left = 496
      Top = 68
      Width = 163
      Height = 62
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      Color = 16744448
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 7
      OnClick = ExeButton
    end
    object boton9: TStaticText
      Left = 3
      Top = 129
      Width = 163
      Height = 62
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      Color = 16744448
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 8
      OnClick = ExeButton
    end
    object boton10: TStaticText
      Left = 167
      Top = 129
      Width = 164
      Height = 62
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      Color = 16744448
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 9
      OnClick = ExeButton
    end
    object boton11: TStaticText
      Left = 332
      Top = 129
      Width = 163
      Height = 62
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      Color = 16744448
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 10
      OnClick = ExeButton
    end
    object boton12: TStaticText
      Left = 496
      Top = 129
      Width = 163
      Height = 62
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      Color = 16744448
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 11
      OnClick = ExeButton
    end
    object boton13: TStaticText
      Left = 3
      Top = 190
      Width = 163
      Height = 62
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      Color = 16744448
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 12
      OnClick = ExeButton
    end
    object boton14: TStaticText
      Left = 167
      Top = 190
      Width = 164
      Height = 62
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      Color = 16744448
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 13
      OnClick = ExeButton
    end
    object boton15: TStaticText
      Left = 332
      Top = 190
      Width = 163
      Height = 62
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      Color = 16744448
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 14
      OnClick = ExeButton
    end
    object boton16: TStaticText
      Left = 496
      Top = 190
      Width = 163
      Height = 62
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      Color = 16744448
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 15
      OnClick = ExeButton
    end
    object boton17: TStaticText
      Left = 3
      Top = 251
      Width = 163
      Height = 62
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      Color = 16744448
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 16
      OnClick = ExeButton
    end
    object boton18: TStaticText
      Left = 167
      Top = 251
      Width = 164
      Height = 62
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      Color = 16744448
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 17
      OnClick = ExeButton
    end
    object boton19: TStaticText
      Left = 332
      Top = 251
      Width = 163
      Height = 62
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      Color = 16744448
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 18
      OnClick = ExeButton
    end
    object boton20: TStaticText
      Left = 496
      Top = 251
      Width = 163
      Height = 62
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      Color = 16744448
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 19
      OnClick = ExeButton
    end
    object StaticText41: TStaticText
      Left = 7
      Top = 51
      Width = 34
      Height = 17
      Caption = ' Alt-A '
      Color = clGray
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 20
    end
    object StaticText42: TStaticText
      Left = 87
      Top = 51
      Width = 33
      Height = 17
      Caption = ' Alt-B '
      Color = clGray
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 21
    end
    object StaticText43: TStaticText
      Left = 167
      Top = 51
      Width = 34
      Height = 17
      Caption = ' Alt-C '
      Color = clGray
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 22
    end
    object StaticText44: TStaticText
      Left = 247
      Top = 51
      Width = 34
      Height = 17
      Caption = ' Alt-D '
      Color = clGray
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 23
    end
    object StaticText45: TStaticText
      Left = 7
      Top = 112
      Width = 33
      Height = 17
      Caption = ' Alt-E '
      Color = clGray
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 24
    end
    object StaticText46: TStaticText
      Left = 87
      Top = 112
      Width = 33
      Height = 17
      Caption = ' Alt-F '
      Color = clGray
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 25
    end
    object StaticText47: TStaticText
      Left = 167
      Top = 112
      Width = 34
      Height = 17
      Caption = ' Alt-G '
      Color = clGray
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 26
    end
    object StaticText48: TStaticText
      Left = 247
      Top = 112
      Width = 34
      Height = 17
      Caption = ' Alt-H '
      Color = clGray
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 27
    end
    object StaticText49: TStaticText
      Left = 7
      Top = 173
      Width = 31
      Height = 17
      Caption = ' Alt-I '
      Color = clGray
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 28
    end
    object StaticText50: TStaticText
      Left = 87
      Top = 173
      Width = 32
      Height = 17
      Caption = ' Alt-J '
      Color = clGray
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 29
    end
    object StaticText51: TStaticText
      Left = 167
      Top = 173
      Width = 33
      Height = 17
      Caption = ' Alt-K '
      Color = clGray
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 30
    end
    object StaticText52: TStaticText
      Left = 247
      Top = 173
      Width = 32
      Height = 17
      Caption = ' Alt-L '
      Color = clGray
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 31
    end
    object StaticText53: TStaticText
      Left = 7
      Top = 234
      Width = 35
      Height = 17
      Caption = ' Alt-M '
      Color = clGray
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 32
    end
    object StaticText54: TStaticText
      Left = 87
      Top = 234
      Width = 34
      Height = 17
      Caption = ' Alt-N '
      Color = clGray
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 33
    end
    object StaticText55: TStaticText
      Left = 167
      Top = 234
      Width = 35
      Height = 17
      Caption = ' Alt-O '
      Color = clGray
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 34
    end
    object StaticText56: TStaticText
      Left = 247
      Top = 234
      Width = 33
      Height = 17
      Caption = ' Alt-P '
      Color = clGray
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 35
    end
    object StaticText57: TStaticText
      Left = 7
      Top = 295
      Width = 35
      Height = 17
      Caption = ' Alt-Q '
      Color = clGray
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 36
    end
    object StaticText58: TStaticText
      Left = 87
      Top = 295
      Width = 34
      Height = 17
      Caption = ' Alt-R '
      Color = clGray
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 37
    end
    object StaticText59: TStaticText
      Left = 167
      Top = 295
      Width = 33
      Height = 17
      Caption = ' Alt-S '
      Color = clGray
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 38
    end
    object StaticText60: TStaticText
      Left = 247
      Top = 295
      Width = 33
      Height = 17
      Caption = ' Alt-T '
      Color = clGray
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 39
    end
  end
  object Panel1: TPanel
    Left = 440
    Top = 64
    Width = 217
    Height = 81
    Hint = 'Ultima transaci'#243'n'
    Color = clGray
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    object Label4: TLabel
      Left = 1
      Top = 1
      Width = 215
      Height = 22
      Align = alTop
      Caption = 'Monto a Cobrar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LTotalCobrar: TLabel
      Left = 122
      Top = 27
      Width = 94
      Height = 56
      Alignment = taRightJustify
      Caption = '0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -48
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LTranss: TLabel
      Left = 1
      Top = 23
      Width = 215
      Height = 13
      Align = alTop
    end
  end
  object GroupBox1: TGroupBox
    Left = 664
    Top = 73
    Width = 377
    Height = 409
    Caption = '  RESUMEN DE BOLETOS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    object Label6: TLabel
      Left = 11
      Top = 361
      Width = 246
      Height = 44
      Alignment = taRightJustify
      Caption = 'Total Boletos:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -37
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblTotal: TLabel
      Left = 335
      Top = 361
      Width = 21
      Height = 44
      Alignment = taRightJustify
      Caption = '0'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -37
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBGrid2: TDBGrid
      Left = 2
      Top = 15
      Width = 373
      Height = 346
      Align = alTop
      DataSource = DS_RESUMEN
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
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
          FieldName = 'SUCURSAL'
          Title.Caption = 'T e r m i n a l'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 250
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CANT'
          Width = 80
          Visible = True
        end>
    end
  end
  object cbSucOrigen: TDBLookupComboBox
    Left = 2
    Top = 72
    Width = 315
    Height = 31
    DropDownRows = 20
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyField = 'suc_codigo'
    ListField = 'suc_nombre'
    ListSource = dsSucOrigen
    ParentFont = False
    TabOrder = 6
    OnCloseUp = cbSucOrigen2CloseUp
  end
  object btRefresh: TBitBtn
    Left = 666
    Top = 44
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Refrescar >>'
    TabOrder = 7
    OnClick = btRefreshClick
  end
  object dsSucOrigen: TDataSource
    DataSet = QSucOrigen
    OnDataChange = dsSucOrigenDataChange
    Left = 272
    Top = 200
  end
  object QSucOrigen: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
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
      
        'select s.suc_direccion, s.suc_localidad, s.suc_telefono, s.suc_r' +
        'nc,'
      's.suc_codigo, s.suc_nombre, s.emp_codigo'
      'from'
      'sucursales s, sucursal_acceso a'
      'where'
      's.emp_codigo = a.emp_codigo'
      'and s.suc_codigo = a.suc_codigo'
      'and a.emp_codigo = :emp_codigo'
      'and a.usu_codigo = :usu'
      'order by s.suc_codigo')
    Left = 240
    Top = 200
    object QSucOrigensuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object QSucOrigensuc_nombre: TStringField
      FieldName = 'suc_nombre'
      OnChange = QSucOrigensuc_nombreChange
      Size = 60
    end
    object QSucOrigenemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QSucOrigensuc_direccion: TStringField
      FieldName = 'suc_direccion'
      Size = 60
    end
    object QSucOrigensuc_localidad: TStringField
      FieldName = 'suc_localidad'
      Size = 60
    end
    object QSucOrigensuc_telefono: TStringField
      FieldName = 'suc_telefono'
      Size = 30
    end
    object QSucOrigensuc_rnc: TStringField
      FieldName = 'suc_rnc'
      Size = 30
    end
  end
  object dsSucDestino: TDataSource
    DataSet = QSucDestino
    Left = 272
    Top = 240
  end
  object QSucDestino: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    LockType = ltReadOnly
    DataSource = dsSucOrigen
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
        Name = 'suc_codigo'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'declare @emp int'
      'declare @suc int'
      ''
      'set @emp = :emp_codigo'
      'set @suc = :suc_codigo'
      ''
      'select'
      'a.loc_codigo suc_codigo, pb.descripcion suc_nombre'
      'from'
      'sucursales s '
      
        'inner join localidades a on s.emp_codigo = a.emp_codigo and s.su' +
        'c_codigo = a.suc_codigo'
      'inner join boleto_precio pb on a.loc_codigo = pb.suc_cod_destino'
      'and a.emp_codigo = @emp'
      'and a.suc_codigo = @suc'
      'order by a.loc_codigo')
    Left = 240
    Top = 240
    object QSucDestinosuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object QSucDestinosuc_nombre: TStringField
      FieldName = 'suc_nombre'
      Size = 60
    end
  end
  object qBoleto: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    BeforePost = qBoletoBeforePost
    AfterPost = qBoletoAfterPost
    OnNewRecord = qBoletoNewRecord
    DataSource = dsSucOrigen
    Parameters = <
      item
        Name = 'emp_codigo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = 'suc_codigo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    SQL.Strings = (
      'select *'
      'from'
      'boleto'
      'where emp_codigo = :emp_codigo'
      'and suc_cod_origen= :suc_codigo'
      'order by suc_cod_origen')
    Left = 240
    Top = 280
    object qBoletousu_codigo: TIntegerField
      FieldName = 'usu_codigo'
    end
    object qBoletofecha: TDateTimeField
      FieldName = 'fecha'
    end
    object qBoletoboleto: TIntegerField
      FieldName = 'boleto'
    end
    object qBoletocaja: TIntegerField
      FieldName = 'caja'
    end
    object qBoletosuc_cod_origen: TIntegerField
      FieldName = 'suc_cod_origen'
    end
    object qBoletosuc_cod_destino: TIntegerField
      FieldName = 'suc_cod_destino'
    end
    object qBoletoproducto: TIntegerField
      FieldName = 'producto'
    end
    object qBoletodescripcion: TStringField
      FieldName = 'descripcion'
      Size = 80
    end
    object qBoletoprecio: TBCDField
      FieldName = 'precio'
      Precision = 15
      Size = 2
    end
    object qBoletocobrado: TBCDField
      FieldName = 'cobrado'
      Precision = 15
      Size = 2
    end
    object qBoletodevuelto: TBCDField
      FieldName = 'devuelto'
      Precision = 15
      Size = 2
    end
    object qBoletoficha_pagado: TStringField
      FieldName = 'ficha_pagado'
    end
    object qBoletofecha_pagado: TDateTimeField
      FieldName = 'fecha_pagado'
    end
    object qBoletoemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object qBoletosecuencia_rando: TWideStringField
      FieldName = 'secuencia_rando'
      OnChange = qBoletosecuencia_randoChange
      FixedChar = True
      Size = 8
    end
    object qBoletocodbarra: TStringField
      DisplayWidth = 15
      FieldName = 'codbarra'
      Size = 15
    end
    object qBoletoFECHA_VALIDA: TDateField
      FieldName = 'FECHA_VALIDA'
    end
    object qBoletoHORA_VALIDA: TStringField
      FieldName = 'HORA_VALIDA'
      Size = 10
    end
  end
  object DataSource1: TDataSource
    DataSet = qBoleto
    Left = 272
    Top = 280
  end
  object qry: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'boleto'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      ''
      
        'select e.emp_nombre,s.suc_telefono,s.suc_direccion,s.suc_localid' +
        'ad Terminal_origen, sd.loc_nombre Terminal_destino, b.*,'
      'u.usu_nombre, b.codbarra,'
      
        '(SELECT COUNT(BOLETO) FROM BOLETO WHERE SUC_COD_ORIGEN = B.SUC_C' +
        'OD_ORIGEN AND CAST(cast(FECHA_VALIDA as char(11)) AS DATETIME) =' +
        ' CAST(cast(B.FECHA_VALIDA as char(11)) AS DATETIME)  AND HORA_VA' +
        'LIDA = B.HORA_VALIDA AND SUC_COD_DESTINO = B.SUC_COD_DESTINO) CO' +
        'NTEO'
      '  from boleto b'
      '  left join empresas e on b.emp_codigo=e.emp_codigo'
      
        '  left join sucursales s on b.emp_codigo=s.emp_codigo and b.suc_' +
        'cod_origen=s.suc_codigo'
      
        '  left join Localidades sd on b.emp_codigo=sd.emp_codigo and b.s' +
        'uc_cod_origen=sd.suc_codigo AND b.suc_cod_destino=sd.loc_codigo'
      '  inner join usuarios u on b.usu_codigo=u.usu_codigo'
      ' where b.boleto= :boleto')
    Left = 176
    Top = 193
    object qryemp_nombre: TStringField
      FieldName = 'emp_nombre'
      Size = 60
    end
    object qrysuc_telefono: TStringField
      FieldName = 'suc_telefono'
      Size = 30
    end
    object qrysuc_direccion: TStringField
      FieldName = 'suc_direccion'
      Size = 60
    end
    object qryTerminal_origen: TStringField
      FieldName = 'Terminal_origen'
      Size = 60
    end
    object qryTerminal_destino: TStringField
      FieldName = 'Terminal_destino'
      Size = 60
    end
    object qryemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object qryusu_codigo: TIntegerField
      FieldName = 'usu_codigo'
    end
    object qryfecha: TDateTimeField
      FieldName = 'fecha'
      DisplayFormat = 'dd/mm/yyyy hh:mm'
    end
    object qryboleto: TAutoIncField
      FieldName = 'boleto'
      ReadOnly = True
    end
    object qrycaja: TIntegerField
      FieldName = 'caja'
    end
    object qrysuc_cod_origen: TIntegerField
      FieldName = 'suc_cod_origen'
    end
    object qrysuc_cod_destino: TIntegerField
      FieldName = 'suc_cod_destino'
    end
    object qryproducto: TIntegerField
      FieldName = 'producto'
    end
    object qrydescripcion: TStringField
      FieldName = 'descripcion'
      Size = 80
    end
    object qryprecio: TBCDField
      FieldName = 'precio'
      Precision = 15
      Size = 2
    end
    object qrycobrado: TBCDField
      FieldName = 'cobrado'
      Precision = 15
      Size = 2
    end
    object qrydevuelto: TBCDField
      FieldName = 'devuelto'
      Precision = 15
      Size = 2
    end
    object qryficha_pagado: TStringField
      FieldName = 'ficha_pagado'
    end
    object qryfecha_pagado: TDateTimeField
      FieldName = 'fecha_pagado'
    end
    object qrysecuencia_rando: TWideStringField
      FieldName = 'secuencia_rando'
      FixedChar = True
      Size = 8
    end
    object qryusu_nombre: TStringField
      FieldName = 'usu_nombre'
      Size = 50
    end
    object qrycodbarra: TStringField
      FieldName = 'codbarra'
      Size = 15
    end
    object qryCONTEO: TIntegerField
      FieldName = 'CONTEO'
    end
  end
  object DB_1: TfrxDBDataset
    UserName = 'DB_1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'emp_nombre=emp_nombre'
      'suc_telefono=suc_telefono'
      'suc_direccion=suc_direccion'
      'Terminal_origen=Terminal_origen'
      'Terminal_destino=Terminal_destino'
      'emp_codigo=emp_codigo'
      'usu_codigo=usu_codigo'
      'fecha=fecha'
      'boleto=boleto'
      'caja=caja'
      'suc_cod_origen=suc_cod_origen'
      'suc_cod_destino=suc_cod_destino'
      'producto=producto'
      'descripcion=descripcion'
      'precio=precio'
      'cobrado=cobrado'
      'devuelto=devuelto'
      'ficha_pagado=ficha_pagado'
      'fecha_pagado=fecha_pagado'
      'secuencia_rando=secuencia_rando'
      'usu_nombre=usu_nombre'
      'codbarra=codbarra'
      'CONTEO=CONTEO')
    DataSet = qry
    BCDToCurrency = False
    Left = 176
    Top = 233
  end
  object Rpt_Ticket: TfrxReport
    Version = '4.13.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    PrintOptions.ShowDialog = False
    ReportOptions.CreateDate = 42473.961810925900000000
    ReportOptions.LastChange = 42585.354137731500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '       '
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnBeforePrint = Rpt_TicketBeforePrint
    Left = 180
    Top = 267
    Datasets = <
      item
        DataSet = DB_1
        DataSetName = 'DB_1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page2: TfrxReportPage
      PaperWidth = 76.200000000000000000
      PaperHeight = 120.000000000000000000
      PaperSize = 256
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object Rich1: TfrxRichView
        Left = -1.000000000000000000
        Width = 249.448980000000000000
        Height = 215.433210000000000000
        ShowHint = False
        GapX = 2.000000000000000000
        GapY = 1.000000000000000000
        RichEdit = {
          7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
          7569636F6D7061745C6465666C616E67313033337B5C666F6E7474626C7B5C66
          305C666E696C204D532053616E732053657269663B7D7B5C66315C6673776973
          735C6663686172736574302043616C696272693B7D7D0D0A7B5C2A5C67656E65
          7261746F722052696368656432302031302E302E31393034317D5C766965776B
          696E64345C756331200D0A5C706172645C71635C625C66305C66733330205B44
          425F312E22656D705F6E6F6D627265225D5C7061720D0A5C66733230205B4442
          5F312E227375635F74656C65666F6E6F225D5C7061720D0A5B44425F312E2273
          75635F646972656363696F6E225D5C7061720D0A5C7061720D0A0D0A5C706172
          645C66315C6C616E67373137382043414A45524F2F413A202020202020202020
          2020202020202020205C6230205B44425F312E227573755F6E6F6D627265225D
          5C625C7061720D0A5445524D494E414C204F524947454E3A2020205C6230205B
          44425F312E225465726D696E616C5F6F726967656E225D5C625C7061720D0A54
          45524D494E414C2044455354494E4F3A205C6230205B44425F312E225465726D
          696E616C5F64657374696E6F225D5C7061720D0A5C6220424F4C45544F3A2020
          2020202020202020202020202020202020202020205C6230205B44425F312E22
          434F4E54454F225D5C7061720D0A5C625C667333305C7061720D0A0D0A5C7061
          72645C71632056414C4F52205244243A20205C756C205B466F726D6174466C6F
          61742827232C302E3030272C3C44425F312E2270726563696F223E295D5C756C
          6E6F6E655C62305C66305C667331365C6C616E67313033335C7061720D0A7D0D
          0A00}
      end
      object BarCode2: TfrxBarCodeView
        Align = baCenter
        Left = 60.602443000000000000
        Top = 227.008040000000000000
        Width = 129.000000000000000000
        Height = 71.811021180000000000
        ShowHint = False
        BarType = bcCode39
        DataField = 'codbarra'
        DataSet = DB_1
        DataSetName = 'DB_1'
        Expression = '0101020042177'
        HAlign = haCenter
        Rotation = 0
        Text = '12345678'
        WideBarRatio = 2.000000000000000000
        Zoom = 1.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
      end
      object Memo1: TfrxMemoView
        Left = 0.559060000000000000
        Top = 353.039580000000000000
        Width = 71.811070000000000000
        Height = 22.677180000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8 = (
          'Validez:')
        ParentFont = False
      end
      object Memo2: TfrxMemoView
        Left = 69.031540000000000000
        Top = 352.819110000000000000
        Width = 177.637910000000000000
        Height = 22.677180000000000000
        ShowHint = False
        DisplayFormat.FormatStr = 'dd/mm/yyyy'
        DisplayFormat.Kind = fkDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8 = (
          '[Date] 11:59 P.M.')
        ParentFont = False
      end
      object Memo3: TfrxMemoView
        Top = 329.039580000000000000
        Width = 71.811070000000000000
        Height = 22.677180000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8 = (
          'Fecha:')
        ParentFont = False
      end
      object Memo4: TfrxMemoView
        Left = 68.472480000000000000
        Top = 328.819110000000000000
        Width = 177.637910000000000000
        Height = 18.897650000000000000
        ShowHint = False
        StretchMode = smActualHeight
        AutoWidth = True
        DisplayFormat.FormatStr = 'dd/mm/yyyy'
        DisplayFormat.Kind = fkDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8 = (
          
            '[FormatDateTime('#39'dd/mm/yyyy'#39',<Date>)] [FormatDateTime('#39'hh:nn am/' +
            'pm'#39',<Time>)]')
        ParentFont = False
      end
    end
  end
  object frxBarCodeObject1: TfrxBarCodeObject
    Left = 136
    Top = 297
  end
  object qEjecutar: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    OnNewRecord = qBoletoNewRecord
    Parameters = <
      item
        Name = 'emp'
        Size = -1
        Value = Null
      end
      item
        Name = 'COD'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'declare @ticket int,'
      '        @cod int '
      
        'set @ticket = (select max(boleto)+1 from boleto where emp_codigo' +
        ' = :emp)'
      'set @cod    = :COD'
      ''
      
        'select descripcion,precio, '#39'0'#39'+rtrim(emp_codigo)+'#39'0'#39'+rtrim(suc_c' +
        'od_origen)+'#39'0'#39'+rtrim(suc_cod_destino)+substring('#39'000000000000'#39',6' +
        '+len(rtrim(@ticket)),15)+rtrim(@ticket) codbarra, suc_cod_destin' +
        'o from boleto_precio'
      'where pre_codigo = @cod ')
    Left = 240
    Top = 320
    object qEjecutardescripcion: TStringField
      FieldName = 'descripcion'
      Size = 100
    end
    object qEjecutarprecio: TCurrencyField
      FieldName = 'precio'
    end
    object qEjecutarcodbarra: TStringField
      FieldName = 'codbarra'
      Size = 15
    end
    object qEjecutarsuc_cod_destino: TIntegerField
      FieldName = 'suc_cod_destino'
    end
  end
  object frxRichObject1: TfrxRichObject
    Left = 192
    Top = 345
  end
  object AccessApplication1: TAccessApplication
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 328
    Top = 240
  end
  object Rpt_TicketCopia: TfrxReport
    Version = '4.13.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    PrintOptions.ShowDialog = False
    ReportOptions.CreateDate = 42473.961810925900000000
    ReportOptions.LastChange = 42585.354137731500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '       '
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnBeforePrint = Rpt_TicketCopiaBeforePrint
    Left = 100
    Top = 379
    Datasets = <
      item
        DataSet = DB_1
        DataSetName = 'DB_1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page2: TfrxReportPage
      PaperWidth = 76.200000000000000000
      PaperHeight = 115.000000000000000000
      PaperSize = 256
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object Rich1: TfrxRichView
        Left = -1.000000000000000000
        Width = 249.448980000000000000
        Height = 219.212740000000000000
        ShowHint = False
        GapX = 2.000000000000000000
        GapY = 1.000000000000000000
        RichEdit = {
          7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
          7569636F6D7061745C6465666C616E67313033337B5C666F6E7474626C7B5C66
          305C666E696C204D532053616E732053657269663B7D7B5C66315C6673776973
          735C6663686172736574302043616C696272693B7D7D0D0A7B5C2A5C67656E65
          7261746F722052696368656432302031302E302E31393034317D5C766965776B
          696E64345C756331200D0A5C706172645C71635C625C66305C66733330205B44
          425F312E22656D705F6E6F6D627265225D5C7061720D0A5C66733230205B4442
          5F312E227375635F74656C65666F6E6F225D5C7061720D0A5B44425F312E2273
          75635F646972656363696F6E225D5C7061720D0A5C7061720D0A0D0A5C706172
          645C66315C6C616E67373137382043414A45524F2F413A202020202020202020
          2020202020202020205C6230205B44425F312E227573755F6E6F6D627265225D
          5C625C7061720D0A46454348413A202020202020202020202020202020202020
          202020202020205C66733136205B466F726D61744461746554696D6528276464
          2F6D6D2F79797979272C3C446174653E295D205B466F726D6174446174655469
          6D65282768683A6E6E20616D2F706D272C3C54696D653E295D5C62305C667332
          305C7061720D0A5C62205445524D494E414C204F524947454E3A2020205C6230
          205B44425F312E225465726D696E616C5F6F726967656E225D5C625C7061720D
          0A5445524D494E414C2044455354494E4F3A205C6230205B44425F312E225465
          726D696E616C5F64657374696E6F225D5C7061720D0A5C6220424F4C45544F3A
          202020202020202020202020202020202020202020205C6230205B44425F312E
          22434F4E54454F225D5C625C667333305C7061720D0A0D0A5C706172645C7163
          2056414C4F52205244243A20205C756C205B466F726D6174466C6F6174282723
          2C302E3030272C3C44425F312E2270726563696F223E295D5C756C6E6F6E655C
          62305C66305C667331365C6C616E67313033335C7061720D0A7D0D0A00}
      end
      object BarCode2: TfrxBarCodeView
        Align = baCenter
        Left = 60.602443000000000000
        Top = 226.008040000000000000
        Width = 129.000000000000000000
        Height = 71.811021180000000000
        ShowHint = False
        BarType = bcCode39
        DataField = 'codbarra'
        DataSet = DB_1
        DataSetName = 'DB_1'
        Expression = '0101020042177'
        HAlign = haCenter
        Rotation = 0
        Text = '12345678'
        WideBarRatio = 2.000000000000000000
        Zoom = 1.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
      end
      object Memo1: TfrxMemoView
        Left = 0.559060000000000000
        Top = 304.819110000000000000
        Width = 56.692950000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8 = (
          'Validez:')
        ParentFont = False
      end
      object Memo2: TfrxMemoView
        Left = 62.031540000000000000
        Top = 304.819110000000000000
        Width = 185.196970000000000000
        Height = 18.897650000000000000
        ShowHint = False
        DisplayFormat.FormatStr = 'dd/mm/yyyy'
        DisplayFormat.Kind = fkDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8 = (
          '[Date] 11:59 P.M.')
        ParentFont = False
      end
      object Memo3: TfrxMemoView
        Align = baBottom
        Left = 3.779530000000000000
        Top = 328.819110000000000000
        Width = 241.889920000000000000
        Height = 30.236240000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8 = (
          '*COPIA CONTROL*')
        ParentFont = False
      end
    end
  end
  object DS_RESUMEN: TDataSource
    DataSet = QRESUMEN
    Left = 832
    Top = 216
  end
  object QRESUMEN: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterOpen = QRESUMENAfterOpen
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
        Name = 'FECHA'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'HORA'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'DECLARE @EMP INT, @SUC INT, @FECHA DATETIME, @HORA CHAR(10)'
      ''
      'SET @EMP = :EMP'
      'SET @SUC = :SUC'
      'SET @FECHA = :FECHA'
      'SET @HORA = :HORA'
      ''
      '/*update boleto'
      'set suc_cod_destino = pb.suc_cod_destino'
      'from boleto_precio pb'
      
        'inner join boleto b on pb.emp_codigo = b.emp_codigo and pb.descr' +
        'ipcion = b.descripcion'
      '*/'
      'SELECT '
      '*'
      'FROM('
      'SELECT b.descripcion SUCURSAL,  --a.loc_nombre SUCURSAL,'
      'COUNT(B.BOLETO) CANT, B.SUC_COD_DESTINO DESTINO'
      'FROM BOLETO b'
      
        'inner join boleto_precio pb on pb.descripcion= b.descripcion and' +
        ' b.emp_codigo= pb.emp_codigo'
      
        'inner join Localidades s on b.suc_cod_ORIGEN = s.suc_codigo and ' +
        'b.emp_codigo = s.emp_codigo and pb.suc_cod_destino = s.loc_codig' +
        'o'
      'where b.suc_cod_origen = @SUC '
      
        'and b.emp_codigo = @EMP and convert(varchar(10),fecha_valida,112' +
        ') = convert(varchar(10),@FECHA,112) and hora_valida = @HORA'
      'GROUP BY b.descripcion, --S.loc_nombre, '
      'B.SUC_COD_DESTINO'
      ') AS TEMP'
      'WHERE DESTINO IN '
      
        '(SELECT SUC_COD_DESTINO FROM BOLETO_PRECIO WHERE SUC_COD_ORIGEN ' +
        '= @SUC)'
      ''
      '/*'
      'SELECT * FROM('
      
        'SELECT S.loc_nombre SUCURSAL, COUNT(B.BOLETO) CANT, B.SUC_COD_DE' +
        'STINO DESTINO'
      'FROM BOLETO b'
      
        'inner join Localidades s on b.suc_cod_ORIGEN = s.suc_codigo and ' +
        'b.emp_codigo = s.emp_codigo and b.suc_cod_destino = s.loc_codigo'
      
        'where b.suc_cod_origen = @SUC and b.emp_codigo = @EMP and fecha_' +
        'valida = @FECHA and hora_valida = @HORA'
      'GROUP BY S.loc_nombre, B.SUC_COD_DESTINO'
      ') AS TEMP'
      'WHERE DESTINO IN '
      
        '(SELECT SUC_COD_DESTINO FROM BOLETO_PRECIO WHERE SUC_COD_ORIGEN ' +
        '= @SUC)*/')
    Left = 800
    Top = 216
    object QRESUMENSUCURSAL: TStringField
      FieldName = 'SUCURSAL'
      Size = 100
    end
    object QRESUMENCANT: TIntegerField
      FieldName = 'CANT'
    end
  end
  object qBalance: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    LockType = ltBatchOptimistic
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
        Name = 'fecha'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'HORA'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'declare @fecha datetime '
      'DECLARE @SUC INT'
      'DECLARE @EMPRESA INT '
      'DECLARE @HORA VARCHAR(10)'
      'set DATEFORMAT ymd'
      'SET @EMPRESA = :EMP'
      'SET @SUC = :SUC'
      'set @fecha = :FECHA'
      'SET @HORA = :HORA'
      
        'select s.suc_nombre, s.suc_telefono, s.suc_direccion, u.usu_nomb' +
        're, A.PRECIO,'
      
        'SUM(ISNULL(A.PRECIO,0)) TOTAL, COUNT(PRECIO) CANT, A.descripcion' +
        ','
      
        'ISNULL((SELECT SUM(PRECIO) FROM BOLETO WHERE emp_codigo = @EMPRE' +
        'SA AND suc_cod_origen = @SUC and CAST(CAST(fecha AS CHAR(11)) AS' +
        ' DATETIME) = @fecha'
      
        ' AND fecha_pagado IS NOT NULL AND DESCRIPCION = A.descripcion AN' +
        'D usu_codigo = A.usu_codigo AND HORA_VALIDA = @HORA'
      ' GROUP BY USU_CODIGO),0) PAGADO,'
      
        '(SELECT SUM(PRECIO) FROM BOLETO WHERE emp_codigo = @EMPRESA AND ' +
        'suc_cod_origen = @SUC and CAST(CAST(fecha AS CHAR(11)) AS DATETI' +
        'ME) = @fecha'
      
        ' AND fecha_pagado IS NULL AND DESCRIPCION = A.descripcion AND us' +
        'u_codigo = A.usu_codigo AND HORA_VALIDA = @HORA'
      ' GROUP BY USU_CODIGO) BALANCE,'
      ' A.usu_codigo'
      'from boleto a '
      'inner join Empresas e on a.emp_codigo=e.emp_codigo'
      
        'inner join Sucursales s on a.suc_cod_origen=s.suc_codigo and a.e' +
        'mp_codigo=s.emp_codigo'
      'inner join Usuarios u on a.usu_codigo=u.usu_codigo'
      'where codbarra is not null'
      
        'AND A.emp_codigo = @EMPRESA AND A.suc_cod_origen = @SUC and CAST' +
        '(CAST(a.fecha_valida AS CHAR(11)) AS DATETIME) = @fecha'
      'AND A.HORA_VALIDA = @HORA'
      
        'GROUP BY S.suc_nombre, S.suc_telefono, S.suc_direccion, U.usu_no' +
        'mbre, A.PRECIO, A.descripcion, A.usu_codigo')
    Left = 896
    Top = 40
    object StringField1: TStringField
      FieldName = 'suc_nombre'
      Size = 50
    end
    object StringField2: TStringField
      FieldName = 'suc_telefono'
      Size = 30
    end
    object StringField3: TStringField
      FieldName = 'suc_direccion'
      Size = 100
    end
    object StringField4: TStringField
      FieldName = 'usu_nombre'
      Size = 30
    end
    object CurrencyField1: TCurrencyField
      FieldName = 'precio'
    end
    object IntegerField1: TIntegerField
      FieldName = 'CANT'
    end
    object StringField6: TStringField
      FieldName = 'DESCRIPCION'
      Size = 50
    end
    object qBalancePAGADO: TCurrencyField
      FieldName = 'PAGADO'
    end
    object qBalanceTOTAL: TCurrencyField
      FieldName = 'TOTAL'
    end
    object qBalanceBALANCE: TCurrencyField
      FieldName = 'BALANCE'
    end
  end
  object DB_Balance: TfrxDBDataset
    UserName = 'DB_Balance'
    CloseDataSource = False
    FieldAliases.Strings = (
      'suc_nombre=suc_nombre'
      'suc_telefono=suc_telefono'
      'suc_direccion=suc_direccion'
      'usu_nombre=usu_nombre'
      'precio=precio'
      'CANT=CANT'
      'DESCRIPCION=DESCRIPCION'
      'PAGADO=PAGADO'
      'TOTAL=TOTAL'
      'BALANCE=BALANCE')
    DataSet = qBalance
    BCDToCurrency = False
    Left = 928
    Top = 41
  end
  object Rpt_Balance: TfrxReport
    Version = '4.13.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43540.603361319450000000
    ReportOptions.LastChange = 43540.603361319450000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnBeforePrint = Rpt_BalanceBeforePrint
    Left = 960
    Top = 40
    Datasets = <
      item
        DataSet = DB_Balance
        DataSetName = 'DB_Balance'
      end
      item
        DataSet = DB_SUCORIGEN
        DataSetName = 'DB_SUCORIGEN'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 80.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 164
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 257.008040000000000000
        Width = 226.771800000000000000
        DataSet = DB_Balance
        DataSetName = 'DB_Balance'
        RowCount = 0
        object Memo11: TfrxMemoView
          Align = baLeft
          Left = 41.574830000000000000
          Width = 128.504020000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = DB_Balance
          DataSetName = 'DB_Balance'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DB_Balance."DESCRIPCION"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'CANT'
          DataSet = DB_Balance
          DataSetName = 'DB_Balance'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DB_Balance."CANT"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Align = baLeft
          Left = 170.078850000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = DB_Balance
          DataSetName = 'DB_Balance'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DB_Balance."precio"]')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 177.756030000000000000
        Top = 18.897650000000000000
        Width = 226.771800000000000000
        object Memo2: TfrxMemoView
          Top = 40.677180000000000000
          Width = 249.448980000000000000
          Height = 45.354360000000000000
          ShowHint = False
          DataSet = DB_1
          DataSetName = 'DB_1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[DB_Balance."suc_telefono"]'
            '[DB_Balance."suc_direccion"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Top = 86.929190000000000000
          Width = 249.448980000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = DB_1
          DataSetName = 'DB_1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Balance de Boletos')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Top = 119.504020000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = DB_1
          DataSetName = 'DB_1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'FECHA: ')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Align = baLeft
          Top = 157.181200000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = DB_1
          DataSetName = 'DB_1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'CANT')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Align = baLeft
          Left = 41.574830000000000000
          Top = 157.181200000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = DB_1
          DataSetName = 'DB_1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'DESCRIPCION')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Align = baLeft
          Left = 170.078850000000000000
          Top = 157.181200000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = DB_1
          DataSetName = 'DB_1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'PRECIO')
          ParentFont = False
        end
        object frxMemoView1: TfrxMemoView
          Top = 3.000000000000000000
          Width = 226.771800000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = DB_1
          DataSetName = 'DB_1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[DB_Balance."suc_nombre"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = -3.779530000000000000
          Top = 137.622140000000000000
          Width = 230.551330000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = DB_1
          DataSetName = 'DB_1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[DB_SUCORIGEN."suc_nombre"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        Height = 313.700990000000000000
        Top = 298.582870000000000000
        Width = 226.771800000000000000
        object Memo4: TfrxMemoView
          Top = 3.220470000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = DB_1
          DataSetName = 'DB_1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Cantidad Boletos: [SUM(<DB_Balance."CANT">,MasterData1)]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Top = 42.929190000000000000
          Width = 222.992270000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = DB_1
          DataSetName = 'DB_1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Total Fact. RD$: [SUM(<DB_Balance."TOTAL">,MasterData1)]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Top = 268.346630000000000000
          Width = 222.992270000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = DB_1
          DataSetName = 'DB_1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            'PREPARADO POR: ([DB_Balance."usu_nombre"])')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Top = 166.299320000000000000
          Width = 249.448980000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = DB_1
          DataSetName = 'DB_1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            'VERIFICADO POR')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Top = 63.370130000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = DB_1
          DataSetName = 'DB_1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Bce. Caja RD$: [SUM(<DB_Balance."BALANCE">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object DB_SUCORIGEN: TfrxDBDataset
    UserName = 'DB_SUCORIGEN'
    CloseDataSource = False
    FieldAliases.Strings = (
      'suc_nombre=suc_nombre'
      'suc_telefono=suc_telefono'
      'suc_direccion=suc_direccion'
      'usu_nombre=usu_nombre'
      'precio=precio'
      'CANT=CANT'
      'DESCRIPCION=DESCRIPCION'
      'PAGADO=PAGADO'
      'TOTAL=TOTAL'
      'BALANCE=BALANCE')
    DataSet = QSucOrigen
    BCDToCurrency = False
    Left = 920
    Top = 73
  end
end
