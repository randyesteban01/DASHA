object frmSupervisoresCaja: TfrmSupervisoresCaja
  Left = 192
  Top = 115
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Supervisores de Caja'
  ClientHeight = 394
  ClientWidth = 521
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Reference Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 15
  object SpeedButton1: TSpeedButton
    Left = 248
    Top = 24
    Width = 23
    Height = 22
    Caption = '>'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Reference Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = SpeedButton1Click
  end
  object SpeedButton2: TSpeedButton
    Left = 248
    Top = 48
    Width = 23
    Height = 22
    Caption = '<'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Reference Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = SpeedButton2Click
  end
  object btClose: TBitBtn
    Left = 440
    Top = 360
    Width = 75
    Height = 25
    Caption = '&Salir'
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
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 233
    Height = 345
    DataSource = dsUsuarios
    Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Reference Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'usu_nombre'
        Title.Caption = 'Nombre del usuario'
        Width = 211
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 280
    Top = 8
    Width = 233
    Height = 345
    DataSource = dsSuper
    Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 2
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Reference Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'usu_nombre'
        Title.Caption = 'Nombre del supervisor'
        Width = 211
        Visible = True
      end>
  end
  object QUsuarios: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <>
    SQL.Strings = (
      'select'
      'usu_codigo, usu_nombre, usu_clave'
      'from'
      'usuarios'
      'where'
      'usu_codigo not in (select usu_codigo'
      'from clave_supervisor_caja)'
      'order by'
      'usu_nombre')
    Left = 120
    Top = 88
    object QUsuariosusu_codigo: TIntegerField
      FieldName = 'usu_codigo'
    end
    object QUsuariosusu_nombre: TStringField
      FieldName = 'usu_nombre'
      Size = 60
    end
    object QUsuariosusu_clave: TStringField
      FieldName = 'usu_clave'
    end
  end
  object dsUsuarios: TDataSource
    DataSet = QUsuarios
    Left = 152
    Top = 88
  end
  object QSupervisor: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <>
    SQL.Strings = (
      'select'
      'u.usu_nombre, s.usu_codigo'
      'from'
      'usuarios u, clave_supervisor_caja s'
      'where'
      'u.usu_codigo = s.usu_codigo'
      'order by'
      'u.usu_nombre')
    Left = 120
    Top = 120
    object QSupervisorusu_nombre: TStringField
      FieldName = 'usu_nombre'
      Size = 60
    end
    object QSupervisorusu_codigo: TIntegerField
      FieldName = 'usu_codigo'
    end
  end
  object dsSuper: TDataSource
    DataSet = QSupervisor
    Left = 152
    Top = 120
  end
end
