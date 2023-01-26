object frmEnvioMant: TfrmEnvioMant
  Left = 505
  Top = 286
  Width = 705
  Height = 263
  Caption = 'Entrega de envio'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 105
    Width = 69
    Height = 13
    Caption = 'Recibido por : '
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 480
    Top = 105
    Width = 33
    Height = 13
    Caption = 'Cedula'
    FocusControl = DBEdit2
  end
  object pTop: TPanel
    Left = 0
    Top = 0
    Width = 689
    Height = 48
    Align = alTop
    Alignment = taLeftJustify
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object DBEdit1: TDBEdit
    Left = 96
    Top = 105
    Width = 377
    Height = 21
    DataField = 'env_recibido'
    DataSource = frmConsFTEnvios.dsDetalle
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 524
    Top = 105
    Width = 150
    Height = 21
    DataField = 'env_rec_cedula'
    DataSource = frmConsFTEnvios.dsDetalle
    TabOrder = 2
  end
  object BitBtn2: TBitBtn
    Left = 569
    Top = 160
    Width = 105
    Height = 36
    TabOrder = 3
    Kind = bkCancel
  end
  object BitBtn1: TBitBtn
    Left = 456
    Top = 160
    Width = 105
    Height = 36
    TabOrder = 4
    Kind = bkAll
  end
end
