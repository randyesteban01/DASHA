object frmConsNovedadesNomina: TfrmConsNovedadesNomina
  Left = 311
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Novedades del Empleado'
  ClientHeight = 359
  ClientWidth = 601
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 601
    Height = 81
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 32
      Width = 37
      Height = 13
      Caption = 'Nombre'
    end
    object Label2: TLabel
      Left = 8
      Top = 56
      Width = 33
      Height = 13
      Caption = 'Cedula'
    end
    object Label3: TLabel
      Left = 8
      Top = 8
      Width = 33
      Height = 13
      Caption = 'Codigo'
    end
    object Label4: TLabel
      Left = 304
      Top = 56
      Width = 32
      Height = 13
      Caption = 'Sueldo'
    end
    object edEmpleado: TEdit
      Left = 64
      Top = 32
      Width = 529
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      ReadOnly = True
      TabOrder = 0
    end
    object Edit1: TEdit
      Left = 64
      Top = 56
      Width = 233
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      ReadOnly = True
      TabOrder = 1
    end
    object Edit2: TEdit
      Left = 64
      Top = 8
      Width = 529
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      ReadOnly = True
      TabOrder = 2
    end
    object Edit3: TEdit
      Left = 360
      Top = 56
      Width = 233
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      ReadOnly = True
      TabOrder = 3
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 81
    Width = 601
    Height = 278
    Align = alClient
    DataSource = dsNovedades
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object QNovedades: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <>
    SQL.Strings = (
      'select'
      
        'null as Descripcion, null as Fecha, null as Ingreso, null as Des' +
        'cuento'
      'union all'
      'select')
    Left = 248
    Top = 232
  end
  object dsNovedades: TDataSource
    DataSet = QNovedades
    Left = 280
    Top = 232
  end
end
