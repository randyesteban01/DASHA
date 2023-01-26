object frmGenera607: TfrmGenera607
  Left = 308
  Top = 254
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Formato de envio de Datos 607'
  ClientHeight = 311
  ClientWidth = 488
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 56
    Width = 19
    Height = 13
    Caption = 'Mes'
  end
  object Label2: TLabel
    Left = 8
    Top = 32
    Width = 19
    Height = 13
    Caption = 'A'#241'o'
  end
  object Label3: TLabel
    Left = 8
    Top = 88
    Width = 118
    Height = 13
    Caption = 'Instrucciones de Uso'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object cbmes: TComboBox
    Left = 40
    Top = 56
    Width = 121
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 0
    Items.Strings = (
      'Enero'
      'Febrero'
      'Marzo'
      'Abril'
      'Mayo'
      'Junio'
      'Julio'
      'Agosto'
      'Septiembre'
      'Octubre'
      'Noviembre'
      'Diciembre'
      'Todos')
  end
  object ProgressBar1: TProgressBar
    Left = 0
    Top = 294
    Width = 488
    Height = 17
    Align = alBottom
    TabOrder = 1
  end
  object Memo1: TMemo
    Left = 8
    Top = 104
    Width = 473
    Height = 185
    Color = clGray
    Ctl3D = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = []
    Lines.Strings = (
      'Primero: Debe seleccionar el A'#241'o'
      'Segundo: Debe seleccionar el Mes'
      'Tercero: Presionar el bot'#243'n "Abrir Hoja de Excel"'
      
        'Cuarto : Buscar y seleccionar el archivo modelo bajado de la DGI' +
        'I'
      'Quinto : Dentro de la hoja de Excel, presionar el boton Inicio'
      'Sexto  : En la pantalla de DASHA, presionar el boton'
      '         "Llenar Hoja de Excel"'
      'Septimo: Verificar su Hoja de Excel'
      ''
      'Nota:'
      
        'En caso de haber algun error, corrijalo en DASHA y siga nuevamen' +
        'te'
      'los pasos de arriba.')
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
  end
  object CheckBox1: TCheckBox
    Left = 40
    Top = 8
    Width = 121
    Height = 17
    Caption = 'Generar por fecha'
    TabOrder = 3
    OnClick = CheckBox1Click
  end
  object BitBtn1: TBitBtn
    Left = 177
    Top = 72
    Width = 113
    Height = 25
    Caption = 'Abrir Hoja de Excel'
    TabOrder = 4
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 293
    Top = 72
    Width = 113
    Height = 25
    Caption = 'Llenar Hoja de Excel'
    TabOrder = 5
    OnClick = BitBtn2Click
  end
  object btClose: TBitBtn
    Left = 408
    Top = 72
    Width = 71
    Height = 25
    Caption = '&Salir'
    TabOrder = 6
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
  object BitBtn3: TBitBtn
    Left = 177
    Top = 40
    Width = 113
    Height = 25
    Caption = 'Generar Archivo TXT'
    TabOrder = 7
    OnClick = BitBtn3Click
  end
  object fecha1: TDateTimePicker
    Left = 177
    Top = 8
    Width = 113
    Height = 21
    Date = 39878.000000000000000000
    Time = 39878.000000000000000000
    TabOrder = 8
    Visible = False
  end
  object fecha2: TDateTimePicker
    Left = 293
    Top = 8
    Width = 98
    Height = 21
    Date = 39878.000000000000000000
    Time = 39878.000000000000000000
    TabOrder = 9
    Visible = False
  end
  object rgOrden: TRadioGroup
    Left = 293
    Top = 35
    Width = 177
    Height = 31
    Caption = '[ Ordenado por ]'
    Columns = 3
    Ctl3D = False
    ItemIndex = 0
    Items.Strings = (
      'NCF'
      'TIPO'
      'FECHA')
    ParentCtl3D = False
    TabOrder = 10
  end
  object cbAno: TSpinEdit
    Left = 40
    Top = 30
    Width = 120
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 11
    Value = 0
  end
  object Query1: TADOQuery
    Connection = DM.ADOSigma
    CommandTimeout = 10000000
    Parameters = <>
    Left = 352
    Top = 208
  end
  object ExcelApplication1: TExcelApplication
    AutoConnect = True
    ConnectKind = ckRunningOrNew
    AutoQuit = False
    Left = 384
    Top = 208
  end
  object OpenDialog1: TOpenDialog
    Left = 416
    Top = 208
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '.txt'
    Filter = 'Texto|*.txt'
    Left = 320
    Top = 208
  end
end
