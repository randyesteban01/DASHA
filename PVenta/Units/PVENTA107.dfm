object frmAnulaPago: TfrmAnulaPago
  Left = 317
  Top = 123
  ActiveControl = edBanco
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Anular pago a proveedores'
  ClientHeight = 131
  ClientWidth = 351
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
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 8
    Top = 72
    Width = 37
    Height = 13
    Caption = 'N'#250'mero'
  end
  object Label1: TLabel
    Left = 8
    Top = 48
    Width = 29
    Height = 13
    Caption = 'Banco'
  end
  object btBanco: TSpeedButton
    Left = 93
    Top = 48
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
  object edNumero: TEdit
    Left = 56
    Top = 72
    Width = 57
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object btClose: TBitBtn
    Left = 264
    Top = 96
    Width = 75
    Height = 25
    Caption = '&Salir'
    TabOrder = 4
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
  object btAnular: TBitBtn
    Left = 184
    Top = 96
    Width = 75
    Height = 25
    Caption = '&Anular'
    TabOrder = 3
    OnClick = btAnularClick
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000010000000000000000000
      BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777770000077
      777777700AAAAA007777770AAAAAAAAA077770AAAAAAAAAAA07770AA0AAAAA0A
      A0770AAA00AAA00AAA070AAAA00000AAAA070AAAAAAAAAAAAA070AAAAAAAAAAA
      AA070AAA00AAA00AAA0770AA00AAA00AA07770AAAAAAAAAAA077770AAAAAAAAA
      077777700AAAAA00777777777000007777777777777777777777}
  end
  object cbTipo: TRadioGroup
    Left = 8
    Top = 8
    Width = 281
    Height = 33
    Columns = 3
    ItemIndex = 0
    Items.Strings = (
      'Cheque'
      'Efectivo'
      'Nota de Credito')
    TabOrder = 5
    OnClick = cbTipoClick
  end
  object edBanco: TEdit
    Left = 56
    Top = 48
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
    TabOrder = 0
    OnChange = edBancoChange
    OnKeyDown = edBancoKeyDown
  end
  object tBanco: TEdit
    Left = 120
    Top = 48
    Width = 217
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
  object Query1: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <>
    Left = 120
    Top = 80
  end
  object Search: TQrySearchDlgADO
    AliasName = DM.ADOSigma
    Left = 152
    Top = 80
  end
end
