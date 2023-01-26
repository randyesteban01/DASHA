object frmModificaPrecio: TfrmModificaPrecio
  Left = 737
  Top = 261
  ActiveControl = edFamilia
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Modifica Precio'
  ClientHeight = 226
  ClientWidth = 391
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
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object btFamilia: TSpeedButton
    Left = 102
    Top = 63
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
    OnClick = btFamiliaClick
  end
  object Label4: TLabel
    Left = 8
    Top = 64
    Width = 32
    Height = 13
    Caption = 'Familia'
  end
  object Label1: TLabel
    Left = 16
    Top = 184
    Width = 51
    Height = 13
    Caption = 'Porcentaje'
  end
  object btMarca: TSpeedButton
    Left = 102
    Top = 87
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
    OnClick = btMarcaClick
  end
  object Label2: TLabel
    Left = 8
    Top = 88
    Width = 30
    Height = 13
    Caption = 'Marca'
  end
  object rbCondi: TRadioGroup
    Left = 8
    Top = 8
    Width = 289
    Height = 49
    Caption = 'Condici'#243'n'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'Por familia'
      'Por Marca'
      'Todos los productos')
    TabOrder = 8
  end
  object tFamilia: TEdit
    Left = 128
    Top = 64
    Width = 257
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
    TabOrder = 2
  end
  object edFamilia: TEdit
    Left = 48
    Top = 64
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
    OnChange = edFamiliaChange
    OnKeyDown = edFamiliaKeyDown
  end
  object btClose: TBitBtn
    Left = 304
    Top = 192
    Width = 75
    Height = 25
    Caption = '&Salir'
    TabOrder = 5
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
  object BitBtn1: TBitBtn
    Left = 216
    Top = 192
    Width = 75
    Height = 25
    Caption = 'Procesar >>'
    TabOrder = 4
    OnClick = BitBtn1Click
  end
  object rbPrecio: TRadioGroup
    Left = 8
    Top = 120
    Width = 377
    Height = 57
    Caption = 'Precio que se quiere cambiar'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'Precio1'
      'Precio2'
      'Precio3'
      'Precio4')
    TabOrder = 6
  end
  object rbOpe: TRadioGroup
    Left = 295
    Top = 8
    Width = 90
    Height = 49
    Caption = 'Operasi'#243'n'
    ItemIndex = 0
    Items.Strings = (
      'Aumenta'
      'Disminuye')
    TabOrder = 7
  end
  object edPorc: TEdit
    Left = 72
    Top = 184
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
    TabOrder = 3
  end
  object tMarca: TEdit
    Left = 128
    Top = 88
    Width = 257
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
  object edMarca: TEdit
    Left = 48
    Top = 88
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
    TabOrder = 1
    OnChange = edMarcaChange
    OnKeyDown = edMarcaKeyDown
  end
  object Search: TQrySearchDlgADO
    AliasName = DM.ADOSigma
    Left = 176
    Top = 40
  end
end
