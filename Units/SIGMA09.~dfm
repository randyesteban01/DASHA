object FrmActScripts: TFrmActScripts
  Left = 300
  Top = 240
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Actualizaciones'
  ClientHeight = 446
  ClientWidth = 349
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 349
    Height = 446
    Align = alClient
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'nombre'
        Title.Caption = 'Nombre'
        Width = 164
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fecha'
        Title.Caption = 'Fecha'
        Width = 122
        Visible = True
      end>
  end
  object qActScript: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <>
    SQL.Strings = (
      'select * from uptimedb order by fecha desc')
    Left = 56
    Top = 104
  end
  object DataSource1: TDataSource
    AutoEdit = False
    DataSet = qActScript
    Left = 88
    Top = 104
  end
end
