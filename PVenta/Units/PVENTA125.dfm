object frmDevueltaEfectivo: TfrmDevueltaEfectivo
  Left = 590
  Top = 250
  Width = 589
  Height = 261
  ActiveControl = edRecibido
  Caption = 'Recepci'#243'n de efectivo'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 14
  object Label1: TLabel
    Left = 19
    Top = 17
    Width = 99
    Height = 21
    Alignment = taRightJustify
    Caption = 'Total a Pagar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 20
    Top = 52
    Width = 122
    Height = 21
    Alignment = taRightJustify
    Caption = 'Efectivo recibido'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 21
    Top = 86
    Width = 108
    Height = 21
    Alignment = taRightJustify
    Caption = 'Favor devolver'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 135
    Width = 573
    Height = 87
    Align = alBottom
    Caption = 'Desgloce efectivo a devolver'
    TabOrder = 2
    object Label4: TLabel
      Left = 18
      Top = 34
      Width = 50
      Height = 14
      Caption = '1,000.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 75
      Top = 34
      Width = 39
      Height = 14
      Caption = '500.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 127
      Top = 34
      Width = 39
      Height = 14
      Caption = '100.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 174
      Top = 34
      Width = 32
      Height = 14
      Caption = '50.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 218
      Top = 34
      Width = 32
      Height = 14
      Caption = '20.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 261
      Top = 34
      Width = 32
      Height = 14
      Caption = '10.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 306
      Top = 34
      Width = 25
      Height = 14
      Caption = '5.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 349
      Top = 34
      Width = 25
      Height = 14
      Caption = '1.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 394
      Top = 34
      Width = 20
      Height = 14
      Caption = '50c'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label13: TLabel
      Left = 438
      Top = 34
      Width = 20
      Height = 14
      Caption = '25c'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label14: TLabel
      Left = 485
      Top = 34
      Width = 13
      Height = 14
      Caption = '1c'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object ed1000: TEdit
      Left = 24
      Top = 52
      Width = 35
      Height = 22
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      OnEnter = ed1000Enter
    end
    object ed500: TEdit
      Left = 75
      Top = 52
      Width = 36
      Height = 22
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      OnEnter = ed1000Enter
    end
    object ed100: TEdit
      Left = 127
      Top = 52
      Width = 36
      Height = 22
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
      OnEnter = ed1000Enter
    end
    object ed50: TEdit
      Left = 170
      Top = 52
      Width = 36
      Height = 22
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
      OnEnter = ed1000Enter
    end
    object ed20: TEdit
      Left = 213
      Top = 52
      Width = 36
      Height = 22
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
      OnEnter = ed1000Enter
    end
    object ed10: TEdit
      Left = 256
      Top = 52
      Width = 36
      Height = 22
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
      OnEnter = ed1000Enter
    end
    object ed050: TEdit
      Left = 386
      Top = 52
      Width = 35
      Height = 22
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
      OnEnter = ed1000Enter
    end
    object ed1: TEdit
      Left = 342
      Top = 52
      Width = 36
      Height = 22
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 7
      OnEnter = ed1000Enter
    end
    object ed5: TEdit
      Left = 299
      Top = 52
      Width = 36
      Height = 22
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 8
      OnEnter = ed1000Enter
    end
    object ed01: TEdit
      Left = 472
      Top = 52
      Width = 35
      Height = 22
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 9
      OnEnter = ed1000Enter
    end
    object ed025: TEdit
      Left = 429
      Top = 52
      Width = 35
      Height = 22
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 10
      OnEnter = ed1000Enter
    end
  end
  object btClose: TBitBtn
    Left = 405
    Top = 95
    Width = 122
    Height = 27
    Caption = '[ F10 ] - &Facturar'
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
  object btcancelar: TBitBtn
    Left = 405
    Top = 60
    Width = 122
    Height = 27
    Caption = '[ ESC ] - Cancelar'
    TabOrder = 1
    OnClick = btcancelarClick
  end
  object edRecibido: TcxCurrencyEdit
    Left = 146
    Top = 46
    ParentFont = False
    Properties.DisplayFormat = '#,0.00;(#,0.00)'
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    TabOrder = 3
    OnExit = edRecibidoExit
    Width = 158
  end
  object edTotal: TcxCurrencyEdit
    Left = 146
    Top = 17
    EditValue = 0c
    ParentFont = False
    Properties.DisplayFormat = '#,0.00;(#,0.00)'
    Properties.ReadOnly = True
    Style.Color = clInfoBk
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    TabOrder = 4
    Width = 158
  end
  object edDevuelta: TcxCurrencyEdit
    Left = 146
    Top = 78
    EditValue = 0c
    ParentFont = False
    Properties.DisplayFormat = '#,0.00;(#,0.00)'
    Properties.ReadOnly = True
    Style.Color = clBlack
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clLime
    Style.Font.Height = -25
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    TabOrder = 5
    Width = 158
  end
end
