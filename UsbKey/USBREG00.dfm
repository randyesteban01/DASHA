object Form1: TForm1
  Left = 361
  Top = 226
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Registro de Licencias de DASHA'
  ClientHeight = 322
  ClientWidth = 601
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Calibri'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 15
  object GroupBox2: TGroupBox
    Left = 0
    Top = 0
    Width = 601
    Height = 322
    Align = alClient
    Caption = 'Datos de la Empresa'
    TabOrder = 0
    object Label4: TLabel
      Left = 16
      Top = 32
      Width = 69
      Height = 14
      Caption = 'Raz'#243'n Social'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 16
      Top = 56
      Width = 21
      Height = 14
      Caption = 'RNC'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 16
      Top = 80
      Width = 57
      Height = 14
      Caption = 'Direcci'#243'n1'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 16
      Top = 104
      Width = 57
      Height = 14
      Caption = 'Direcci'#243'n2'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 16
      Top = 128
      Width = 57
      Height = 14
      Caption = 'Direcci'#243'n3'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 16
      Top = 152
      Width = 48
      Height = 14
      Caption = 'Tel'#233'fono'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 16
      Top = 176
      Width = 35
      Height = 14
      Caption = 'Correo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 16
      Top = 200
      Width = 16
      Height = 14
      Caption = 'Url'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object LB_1: TLabel
      Left = 16
      Top = 226
      Width = 24
      Height = 14
      Caption = 'Tipo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object LB_2: TLabel
      Left = 18
      Top = 250
      Width = 58
      Height = 14
      Caption = 'Tipo Venc.:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object LB_3: TLabel
      Left = 16
      Top = 272
      Width = 51
      Height = 15
      Caption = 'Conexi'#243'n'
    end
    object LB_4: TLabel
      Left = 296
      Top = 228
      Width = 32
      Height = 14
      Caption = 'Serial'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object ednombre: TEdit
      Left = 96
      Top = 32
      Width = 481
      Height = 23
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = []
      MaxLength = 100
      ParentFont = False
      TabOrder = 0
    end
    object edrnc: TEdit
      Left = 96
      Top = 56
      Width = 481
      Height = 23
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = []
      MaxLength = 100
      ParentFont = False
      TabOrder = 1
    end
    object eddir1: TEdit
      Left = 96
      Top = 80
      Width = 481
      Height = 23
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = []
      MaxLength = 100
      ParentFont = False
      TabOrder = 2
    end
    object eddir2: TEdit
      Left = 96
      Top = 104
      Width = 481
      Height = 23
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = []
      MaxLength = 100
      ParentFont = False
      TabOrder = 3
    end
    object eddir3: TEdit
      Left = 96
      Top = 128
      Width = 481
      Height = 23
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = []
      MaxLength = 100
      ParentFont = False
      TabOrder = 4
    end
    object edtelefono: TEdit
      Left = 96
      Top = 152
      Width = 481
      Height = 23
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = []
      MaxLength = 100
      ParentFont = False
      TabOrder = 5
    end
    object edcorreo: TEdit
      Left = 96
      Top = 176
      Width = 481
      Height = 23
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = []
      MaxLength = 100
      ParentFont = False
      TabOrder = 6
    end
    object edurl: TEdit
      Left = 96
      Top = 200
      Width = 481
      Height = 23
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = []
      MaxLength = 100
      ParentFont = False
      TabOrder = 7
    end
    object CB_TIPO: TComboBox
      Left = 96
      Top = 224
      Width = 145
      Height = 23
      Style = csDropDownList
      ItemHeight = 15
      ItemIndex = 0
      TabOrder = 8
      Text = 'COMPLETA'
      OnChange = CB_TIPOChange
      Items.Strings = (
        'COMPLETA'
        'TEMPORAL'
        'CUOTAS')
    end
    object CB_TIPOVENC: TComboBox
      Left = 96
      Top = 248
      Width = 145
      Height = 23
      Style = csDropDownList
      ItemHeight = 15
      ItemIndex = 0
      TabOrder = 9
      Text = 'DIAS'
      Visible = False
      Items.Strings = (
        'DIAS'
        'SEMANAS'
        'MES'
        'A'#209'OS')
    end
    object seCant: TSpinEdit
      Left = 240
      Top = 248
      Width = 49
      Height = 24
      MaxValue = 0
      MinValue = 0
      TabOrder = 10
      Value = 0
      Visible = False
    end
    object seCantCuotas: TSpinEdit
      Left = 240
      Top = 224
      Width = 49
      Height = 24
      MaxValue = 0
      MinValue = 0
      TabOrder = 11
      Value = 0
      Visible = False
    end
    object CB_Conexion: TComboBox
      Left = 16
      Top = 288
      Width = 569
      Height = 23
      Style = csDropDownList
      ItemHeight = 15
      TabOrder = 12
    end
    object edtSerial: TEdit
      Left = 336
      Top = 225
      Width = 241
      Height = 23
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = []
      MaxLength = 100
      ParentFont = False
      TabOrder = 13
    end
  end
  object BitBtn3: TBitBtn
    Left = 296
    Top = 250
    Width = 121
    Height = 25
    Caption = 'Cargar Licencia'
    TabOrder = 1
    OnClick = BitBtn3Click
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000C40E0000C40E00000000000000000000FFFFFF359CD9
      3098D82B93D7278FD6228BD51D87D41983D3147FD2117BD10E78D10A75D00772
      CF046FCF016DCEFFFFFFFFFFFF3CA2DABBEBFABBEBFCBEEEFEC5F4FFCEF8FFD3
      FAFFD0F8FFC7F2FFB9E9FCB2E4F9AFE2F8AFE2F80570CFFFFFFFFFFFFF42A7DB
      BEECFB58CFF540AFEC4DB9EF59C1EF5FC5EF5BC3EF4BB5EF36A4E62999E137B7
      EEB0E3F80974D0FFFFFFFFFFFF48ACDCC0EEFB5ED3F76BDBFC7EE5FF8EEDFF96
      F2FF92EDFF7BDFFF5ACCF845BDEF3BB9EEB2E3F90E78D1FFFFFFFFFFFF4DB1DD
      C2EFFB64D6F84BB5EC59BCEF94EBFF2F96DD4C81AA83E1FF40A8E9319EE141BD
      EFB3E5F9137DD2FFFFFFFFFFFF52B6DEC5F0FC69D9F87BE2FD8FE8FF98E9FF31
      9EDF538AB189E2FF69D0F94FC4F145C0F0B5E7F91782D3FFFFFFFFFFFF57BADF
      C7F1FC6EDCF955BAED60BCEF9AE7FF34A5E24AA3E18FE2FF48ACE937A3E348C3
      F0B7E8F91D87D4FFFFFFFFFFFF5BBEE0C8F3FC74DFF988E6FD94E7FF99E5FFA9
      EEFFA7EDFF98E3FF73D5F958CCF34EC8F1BAE9FA238CD5FFFFFFFFFFFF5FC1E1
      C9F3FCCBF3FDD4F6FED7F6FFD8F4FFE0F8FFDFF8FFDAF5FFCDF1FCC1EDFABCEB
      FABCEBFA2A92D6FFFFFFFFFFFF60C2E1879FA79090908D8D8D59B8DC54B7DF50
      B4DE4CB0DD48ACDC45A7D7777777757575647D8C3098D8FFFFFFFFFFFFFFFFFF
      B0B0B0C5C5C5939393FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB7C7C7CAAAA
      AA959595FFFFFFFFFFFFFFFFFFFFFFFFBBBBBBC3C3C3A0A0A0EDEDEDFFFFFFFF
      FFFFFFFFFFFFFFFFEBEBEB888888A8A8A8A3A3A3FFFFFFFFFFFFFFFFFFFFFFFF
      D3D3D3B9B9B9BEBEBEA5A5A5F2F2F2FDFDFDFDFDFDF1F1F1929292A7A7A79D9D
      9DC3C3C3FFFFFFFFFFFFFFFFFFFFFFFFFBFBFBADADADC3C3C3BDBDBDA0A0A095
      9595929292969696ADADADADADAD959595FBFBFBFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFEEEEEEADADADBBBBBBCACACACCCCCCCACACAC1C1C1ACACAC9A9A9AE9E9
      E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBD0D0D0B9B9B9B0
      B0B0ADADADB2B2B2C8C8C8FAFAFAFFFFFFFFFFFFFFFFFFFFFFFF}
  end
  object ADOSigma: TADOConnection
    KeepConnection = False
    Left = 368
    Top = 24
  end
  object Query1: TADOQuery
    Connection = ADOSigma
    Parameters = <>
    Left = 400
    Top = 24
  end
end
