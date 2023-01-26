object frmBackup: TfrmBackup
  Left = 192
  Top = 107
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Copiar / Restaurar Datos'
  ClientHeight = 341
  ClientWidth = 536
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 536
    Height = 305
    ActivePage = TabSheet1
    Align = alTop
    TabIndex = 0
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Copiar'
      object Label2: TLabel
        Left = 0
        Top = 24
        Width = 91
        Height = 13
        Caption = 'Archivo de Backup'
      end
      object rtBackup: TRichEdit
        Left = 0
        Top = 64
        Width = 528
        Height = 213
        Align = alBottom
        ReadOnly = True
        TabOrder = 0
      end
      object edBackup: TEdit
        Left = 0
        Top = 40
        Width = 289
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 1
      end
      object BitBtn1: TBitBtn
        Left = 440
        Top = 32
        Width = 75
        Height = 25
        Caption = 'Copiar'
        TabOrder = 2
        OnClick = BitBtn1Click
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Restaurar'
      ImageIndex = 1
      object Label1: TLabel
        Left = 0
        Top = 24
        Width = 91
        Height = 13
        Caption = 'Archivo de Backup'
      end
      object SpeedButton1: TSpeedButton
        Left = 212
        Top = 40
        Width = 23
        Height = 22
        Caption = '...'
        OnClick = SpeedButton1Click
      end
      object rtRestore: TRichEdit
        Left = 0
        Top = 64
        Width = 528
        Height = 213
        Align = alBottom
        ReadOnly = True
        TabOrder = 0
      end
      object edRestore: TEdit
        Left = 0
        Top = 40
        Width = 209
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 1
      end
      object BitBtn2: TBitBtn
        Left = 440
        Top = 32
        Width = 75
        Height = 25
        Caption = 'Restaurar'
        TabOrder = 2
        OnClick = BitBtn2Click
      end
    end
  end
  object btClose: TBitBtn
    Left = 454
    Top = 312
    Width = 75
    Height = 25
    Caption = '&Salir'
    TabOrder = 1
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
  object IBBackupService1: TIBBackupService
    Active = True
    ServerName = 'Local'
    Params.Strings = (
      'user_name=sysdba'
      'password=masterkey')
    LoginPrompt = False
    TraceFlags = [tfQPrepare, tfQExecute, tfConnect]
    Verbose = True
    BlockingFactor = 0
    DatabaseName = 'D:\Aplications\PVenta\Datos\CTMPV.GDB'
    Options = []
    Left = 152
    Top = 184
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '.gdb'
    Filter = 'Interbase Data|*.gdb'
    Left = 184
    Top = 184
  end
  object IBRestoreService1: TIBRestoreService
    ServerName = 'localhost'
    Params.Strings = (
      'user_name=sysdba'
      'password=masterkey')
    LoginPrompt = False
    TraceFlags = []
    Verbose = True
    PageBuffers = 0
    Options = [Replace, CreateNewDB]
    Left = 216
    Top = 184
  end
  object OpenDialog1: TOpenDialog
    Left = 248
    Top = 184
  end
end
