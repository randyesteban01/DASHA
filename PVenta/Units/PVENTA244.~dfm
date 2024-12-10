object FrmConfCorreo: TFrmConfCorreo
  Left = 362
  Top = 266
  ActiveControl = DBEdit66
  BorderStyle = bsToolWindow
  Caption = 'Configuracion de Correo'
  ClientHeight = 287
  ClientWidth = 298
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnmail: TPanel
    Left = 0
    Top = 0
    Width = 298
    Height = 287
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label75: TLabel
      Left = 16
      Top = 24
      Width = 40
      Height = 13
      Caption = 'Servidor'
      FocusControl = DBEdit66
    end
    object Label76: TLabel
      Left = 16
      Top = 64
      Width = 92
      Height = 13
      Caption = 'Direccion de correo'
      FocusControl = DBEdit67
    end
    object Label77: TLabel
      Left = 16
      Top = 144
      Width = 36
      Height = 13
      Caption = 'Usuario'
      FocusControl = DBEdit68
    end
    object Label78: TLabel
      Left = 16
      Top = 184
      Width = 27
      Height = 13
      Caption = 'Clave'
    end
    object Label79: TLabel
      Left = 16
      Top = 104
      Width = 32
      Height = 13
      Caption = 'Puerto'
      FocusControl = DBEdit70
    end
    object DBEdit66: TDBEdit
      Left = 16
      Top = 40
      Width = 217
      Height = 21
      DataField = 'par_mailservidor'
      DataSource = dsUsuario
      TabOrder = 0
    end
    object DBEdit67: TDBEdit
      Left = 16
      Top = 80
      Width = 217
      Height = 21
      DataField = 'par_mailcorreo'
      DataSource = dsUsuario
      TabOrder = 1
    end
    object DBEdit68: TDBEdit
      Left = 16
      Top = 160
      Width = 217
      Height = 21
      DataField = 'par_mailusuario'
      DataSource = dsUsuario
      TabOrder = 3
    end
    object DBEdit70: TDBEdit
      Left = 16
      Top = 120
      Width = 65
      Height = 21
      DataField = 'par_mailpuerto'
      DataSource = dsUsuario
      TabOrder = 2
    end
    object btnPruebaEmail: TBitBtn
      Left = 32
      Top = 240
      Width = 75
      Height = 25
      Caption = 'Test'
      TabOrder = 4
      OnClick = btnPruebaEmailClick
    end
    object EdtPassMail: TEdit
      Left = 16
      Top = 200
      Width = 217
      Height = 21
      PasswordChar = '*'
      TabOrder = 5
      Text = 'EdtPassMail'
    end
    object btnGrabar: TBitBtn
      Left = 160
      Top = 240
      Width = 75
      Height = 25
      Caption = '&Grabar'
      TabOrder = 6
      Visible = False
      OnClick = btnGrabarClick
    end
  end
  object dsUsuario: TDataSource
    DataSet = DM.QUsuarios
    Left = 144
    Top = 152
  end
end
