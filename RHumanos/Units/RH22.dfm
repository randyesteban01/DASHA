object frmSolicitudEmpleo: TfrmSolicitudEmpleo
  Left = 345
  Top = 250
  BorderIcons = [biSystemMenu, biMinimize, biHelp]
  BorderStyle = bsSingle
  Caption = 'Solicitud de Empleo'
  ClientHeight = 419
  ClientWidth = 620
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
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 620
    Height = 42
    AutoSize = True
    Bands = <
      item
        Control = ToolBar1
        ImageIndex = -1
        MinHeight = 38
        Width = 616
      end>
    object ToolBar1: TToolBar
      Left = 9
      Top = 0
      Width = 603
      Height = 38
      AutoSize = True
      ButtonHeight = 36
      ButtonWidth = 50
      Caption = 'ToolBar1'
      Flat = True
      Images = DM.ImgMant
      ShowCaptions = True
      TabOrder = 0
      object ToolButton13: TToolButton
        Left = 0
        Top = 0
        Action = btPrior
      end
      object ToolButton12: TToolButton
        Left = 50
        Top = 0
        Action = btNext
      end
      object ToolButton14: TToolButton
        Left = 100
        Top = 0
        Width = 8
        Caption = 'ToolButton14'
        ImageIndex = 1
        Style = tbsSeparator
      end
      object ToolButton1: TToolButton
        Left = 108
        Top = 0
        Action = btInsert
      end
      object ToolButton2: TToolButton
        Left = 158
        Top = 0
        Action = btEdit
      end
      object ToolButton3: TToolButton
        Left = 208
        Top = 0
        Action = btDelete
      end
      object ToolButton4: TToolButton
        Left = 258
        Top = 0
        Width = 8
        Caption = 'ToolButton4'
        ImageIndex = 3
        Style = tbsSeparator
      end
      object ToolButton5: TToolButton
        Left = 266
        Top = 0
        Action = btPost
      end
      object ToolButton6: TToolButton
        Left = 316
        Top = 0
        Action = btCancel
      end
      object ToolButton7: TToolButton
        Left = 366
        Top = 0
        Width = 8
        Caption = 'ToolButton7'
        ImageIndex = 5
        Style = tbsSeparator
      end
      object ToolButton8: TToolButton
        Left = 374
        Top = 0
        Action = btFind
      end
      object ToolButton9: TToolButton
        Left = 424
        Top = 0
        Action = btPrint
      end
      object ToolButton10: TToolButton
        Left = 474
        Top = 0
        Width = 8
        Caption = 'ToolButton10'
        ImageIndex = 7
        Style = tbsSeparator
      end
      object ToolButton11: TToolButton
        Left = 482
        Top = 0
        Action = btClose
      end
    end
  end
  object TabControl1: TPageControl
    Left = 0
    Top = 48
    Width = 617
    Height = 369
    ActivePage = TabSheet1
    MultiLine = True
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Registro'
      object Label14: TLabel
        Left = 8
        Top = 32
        Width = 40
        Height = 13
        Caption = 'Sucursal'
      end
      object Label1: TLabel
        Left = 8
        Top = 8
        Width = 37
        Height = 13
        Caption = 'N'#250'mero'
      end
      object Label2: TLabel
        Left = 8
        Top = 56
        Width = 42
        Height = 13
        Caption = 'Nombres'
      end
      object Label3: TLabel
        Left = 312
        Top = 56
        Width = 78
        Height = 13
        Caption = 'Apellido paterno'
      end
      object Label4: TLabel
        Left = 8
        Top = 80
        Width = 80
        Height = 13
        Caption = 'Apellido materno'
      end
      object Label5: TLabel
        Left = 312
        Top = 80
        Width = 24
        Height = 13
        Caption = 'Sexo'
      end
      object Label6: TLabel
        Left = 8
        Top = 104
        Width = 83
        Height = 13
        Caption = 'Fecha nacimiento'
      end
      object Label7: TLabel
        Left = 312
        Top = 104
        Width = 81
        Height = 13
        Caption = 'Lugar nacimiento'
      end
      object Label8: TLabel
        Left = 8
        Top = 128
        Width = 60
        Height = 13
        Caption = 'Nacionalidad'
      end
      object Label9: TLabel
        Left = 312
        Top = 128
        Width = 78
        Height = 13
        Caption = 'Lengua materna'
      end
      object Label10: TLabel
        Left = 8
        Top = 152
        Width = 33
        Height = 13
        Caption = 'C'#233'dula'
      end
      object Label11: TLabel
        Left = 312
        Top = 152
        Width = 49
        Height = 13
        Caption = 'Pasaporte'
      end
      object Label12: TLabel
        Left = 8
        Top = 176
        Width = 53
        Height = 13
        Caption = 'Estado civil'
      end
      object Label13: TLabel
        Left = 312
        Top = 176
        Width = 47
        Height = 13
        Caption = 'Tel'#233'fonos'
      end
      object Label15: TLabel
        Left = 8
        Top = 200
        Width = 43
        Height = 13
        Caption = 'Direcci'#243'n'
      end
      object Label16: TLabel
        Left = 8
        Top = 248
        Width = 28
        Height = 13
        Caption = 'e-mail'
      end
      object Label17: TLabel
        Left = 293
        Top = 248
        Width = 99
        Height = 13
        Caption = 'Tiene dependientes?'
      end
      object btpais: TSpeedButton
        Left = 140
        Top = 128
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
        OnClick = btpaisClick
      end
      object btidioma: TSpeedButton
        Left = 444
        Top = 128
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
        OnClick = btidiomaClick
      end
      object btestcivil: TSpeedButton
        Left = 140
        Top = 176
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
        OnClick = btestcivilClick
      end
      object Label33: TLabel
        Left = 187
        Top = 8
        Width = 70
        Height = 13
        Caption = 'Fecha solicitud'
      end
      object Label34: TLabel
        Left = 403
        Top = 8
        Width = 72
        Height = 13
        Caption = 'Status solicitud'
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 96
        Top = 32
        Width = 505
        Height = 21
        DataField = 'suc_codigo'
        DataSource = dsSolicitud
        DropDownRows = 20
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'suc_codigo'
        ListField = 'suc_nombre'
        ListSource = dsSuc
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit1: TDBEdit
        Left = 96
        Top = 8
        Width = 81
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        Color = clInfoBk
        DataField = 'sol_numero'
        DataSource = dsSolicitud
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 96
        Top = 56
        Width = 209
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'sol_nombre'
        DataSource = dsSolicitud
        TabOrder = 2
      end
      object DBEdit3: TDBEdit
        Left = 400
        Top = 56
        Width = 201
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'sol_apellido_paterno'
        DataSource = dsSolicitud
        TabOrder = 3
      end
      object DBEdit4: TDBEdit
        Left = 96
        Top = 80
        Width = 209
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'sol_apellido_materno'
        DataSource = dsSolicitud
        TabOrder = 4
      end
      object DBEdit6: TDBEdit
        Left = 96
        Top = 104
        Width = 209
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'sol_fecha_nacimiento'
        DataSource = dsSolicitud
        TabOrder = 6
      end
      object DBEdit7: TDBEdit
        Left = 400
        Top = 104
        Width = 201
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'sol_lugar_nacimiento'
        DataSource = dsSolicitud
        TabOrder = 7
      end
      object DBEdit8: TDBEdit
        Left = 96
        Top = 128
        Width = 41
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'pai_codigo'
        DataSource = dsSolicitud
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
      end
      object tpais: TEdit
        Left = 168
        Top = 128
        Width = 137
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
      object DBEdit9: TDBEdit
        Left = 400
        Top = 128
        Width = 41
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'idi_codigo'
        DataSource = dsSolicitud
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
      end
      object tidioma: TEdit
        Left = 472
        Top = 128
        Width = 129
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
        TabOrder = 11
      end
      object DBEdit10: TDBEdit
        Left = 96
        Top = 152
        Width = 209
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'sol_cedula'
        DataSource = dsSolicitud
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 12
      end
      object DBEdit11: TDBEdit
        Left = 400
        Top = 152
        Width = 201
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'sol_pasaporte'
        DataSource = dsSolicitud
        TabOrder = 13
      end
      object DBEdit12: TDBEdit
        Left = 96
        Top = 176
        Width = 41
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'est_codigo'
        DataSource = dsSolicitud
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 14
      end
      object testcivil: TEdit
        Left = 168
        Top = 176
        Width = 137
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
        TabOrder = 15
      end
      object DBEdit13: TDBEdit
        Left = 400
        Top = 176
        Width = 97
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'sol_telefono1'
        DataSource = dsSolicitud
        TabOrder = 16
      end
      object DBEdit14: TDBEdit
        Left = 504
        Top = 176
        Width = 97
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'sol_telefono2'
        DataSource = dsSolicitud
        TabOrder = 17
      end
      object DBMemo1: TDBMemo
        Left = 96
        Top = 200
        Width = 505
        Height = 46
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'sol_direccion'
        DataSource = dsSolicitud
        TabOrder = 18
      end
      object DBEdit15: TDBEdit
        Left = 96
        Top = 248
        Width = 193
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'sol_email'
        DataSource = dsSolicitud
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 19
      end
      object DBComboBox1: TDBComboBox
        Left = 400
        Top = 248
        Width = 97
        Height = 21
        Style = csDropDownList
        BevelKind = bkFlat
        DataField = 'sol_dependientes'
        DataSource = dsSolicitud
        ItemHeight = 13
        Items.Strings = (
          'Si'
          'No')
        TabOrder = 20
      end
      object DBEdit24: TDBEdit
        Left = 264
        Top = 8
        Width = 89
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'sol_fecha'
        DataSource = dsSolicitud
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 21
      end
      object DBEdit25: TDBEdit
        Left = 480
        Top = 8
        Width = 121
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        Color = clInfoBk
        DataField = 'Status'
        DataSource = dsSolicitud
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 22
      end
      object DBComboBox7: TDBComboBox
        Left = 400
        Top = 80
        Width = 201
        Height = 21
        Style = csDropDownList
        BevelKind = bkFlat
        DataField = 'sol_sexo'
        DataSource = dsSolicitud
        ItemHeight = 13
        Items.Strings = (
          'Masculino'
          'Femenino')
        TabOrder = 5
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Otras informaciones'
      ImageIndex = 1
      object GroupBox1: TGroupBox
        Left = 0
        Top = 8
        Width = 513
        Height = 145
        Caption = 'Informaciones adicionales'
        TabOrder = 0
        object Label18: TLabel
          Left = 11
          Top = 24
          Width = 200
          Height = 13
          Caption = 'Ha sido empleado nuestro anteriormente?'
        end
        object Label19: TLabel
          Left = 299
          Top = 24
          Width = 139
          Height = 13
          Caption = 'Ha trabajado anteriormente?'
        end
        object Label20: TLabel
          Left = 11
          Top = 48
          Width = 142
          Height = 13
          Caption = 'Est'#225' disponible para trabajar:'
        end
        object Label21: TLabel
          Left = 299
          Top = 48
          Width = 104
          Height = 13
          Caption = 'Trabaja actualmente?'
        end
        object Label22: TLabel
          Left = 11
          Top = 72
          Width = 111
          Height = 13
          Caption = 'Posici'#243'n a la que aspira'
        end
        object btposicion: TSpeedButton
          Left = 172
          Top = 72
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
          OnClick = btposicionClick
        end
        object Label23: TLabel
          Left = 11
          Top = 96
          Width = 96
          Height = 13
          Caption = 'Salario al que aspira'
        end
        object Label24: TLabel
          Left = 299
          Top = 96
          Width = 110
          Height = 13
          Caption = 'Fecha de disponibilidad'
        end
        object Label25: TLabel
          Left = 11
          Top = 120
          Width = 180
          Height = 13
          Caption = 'Tiene alg'#250'n familiar en esta empresa?'
        end
        object DBComboBox2: TDBComboBox
          Left = 216
          Top = 24
          Width = 57
          Height = 21
          Style = csDropDownList
          BevelKind = bkFlat
          DataField = 'sol_fue_empleado'
          DataSource = dsSolicitud
          ItemHeight = 13
          Items.Strings = (
            'Si'
            'No')
          TabOrder = 0
        end
        object DBComboBox3: TDBComboBox
          Left = 448
          Top = 24
          Width = 57
          Height = 21
          Style = csDropDownList
          BevelKind = bkFlat
          DataField = 'sol_ha_trabajado'
          DataSource = dsSolicitud
          ItemHeight = 13
          Items.Strings = (
            'Si'
            'No')
          TabOrder = 1
        end
        object DBComboBox4: TDBComboBox
          Left = 160
          Top = 48
          Width = 113
          Height = 21
          Style = csDropDownList
          BevelKind = bkFlat
          DataField = 'sol_disponible_trabajar'
          DataSource = dsSolicitud
          ItemHeight = 13
          Items.Strings = (
            'Si'
            'No')
          TabOrder = 2
        end
        object DBComboBox5: TDBComboBox
          Left = 408
          Top = 48
          Width = 97
          Height = 21
          Style = csDropDownList
          BevelKind = bkFlat
          DataField = 'sol_actualmente_trabaja'
          DataSource = dsSolicitud
          ItemHeight = 13
          Items.Strings = (
            'Si'
            'No')
          TabOrder = 3
        end
        object DBEdit16: TDBEdit
          Left = 128
          Top = 72
          Width = 41
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'pos_codigo'
          DataSource = dsSolicitud
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object tposicion: TEdit
          Left = 200
          Top = 72
          Width = 305
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
          TabOrder = 5
        end
        object DBEdit17: TDBEdit
          Left = 128
          Top = 96
          Width = 145
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'sol_salario_aspira'
          DataSource = dsSolicitud
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object DBEdit18: TDBEdit
          Left = 424
          Top = 96
          Width = 81
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'sol_fecha_disponible'
          DataSource = dsSolicitud
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
        object DBComboBox6: TDBComboBox
          Left = 200
          Top = 120
          Width = 73
          Height = 21
          Style = csDropDownList
          BevelKind = bkFlat
          DataField = 'sol_familiar_empresa'
          DataSource = dsSolicitud
          ItemHeight = 13
          Items.Strings = (
            'Si'
            'No')
          TabOrder = 8
        end
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 157
        Width = 513
        Height = 162
        Caption = 'En caso de emergencia comunicar a:'
        TabOrder = 1
        object Label26: TLabel
          Left = 16
          Top = 24
          Width = 42
          Height = 13
          Caption = 'Nombres'
        end
        object Label27: TLabel
          Left = 376
          Top = 24
          Width = 42
          Height = 13
          Caption = 'Tel'#233'fono'
        end
        object Label28: TLabel
          Left = 15
          Top = 48
          Width = 43
          Height = 13
          Caption = 'Direcci'#243'n'
        end
        object Label29: TLabel
          Left = 20
          Top = 96
          Width = 38
          Height = 13
          Caption = 'Alergias'
        end
        object Label30: TLabel
          Left = 376
          Top = 96
          Width = 34
          Height = 13
          Caption = 'Sangre'
        end
        object Label31: TLabel
          Left = 25
          Top = 136
          Width = 33
          Height = 13
          Caption = 'M'#233'dico'
        end
        object Label32: TLabel
          Left = 376
          Top = 136
          Width = 42
          Height = 13
          Caption = 'Tel'#233'fono'
        end
        object DBEdit19: TDBEdit
          Left = 64
          Top = 24
          Width = 305
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'sol_emer_nombre'
          DataSource = dsSolicitud
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object DBEdit20: TDBEdit
          Left = 424
          Top = 24
          Width = 81
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'sol_emer_telefono'
          DataSource = dsSolicitud
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object DBMemo2: TDBMemo
          Left = 64
          Top = 48
          Width = 441
          Height = 45
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'sol_emer_direccion'
          DataSource = dsSolicitud
          TabOrder = 2
        end
        object DBMemo3: TDBMemo
          Left = 64
          Top = 96
          Width = 305
          Height = 38
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'sol_emer_alergia'
          DataSource = dsSolicitud
          TabOrder = 3
        end
        object DBEdit21: TDBEdit
          Left = 424
          Top = 96
          Width = 81
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'sol_tipo_sangre'
          DataSource = dsSolicitud
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object DBEdit22: TDBEdit
          Left = 64
          Top = 136
          Width = 305
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'sol_medico'
          DataSource = dsSolicitud
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object DBEdit23: TDBEdit
          Left = 424
          Top = 136
          Width = 81
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'sol_telefono_medico'
          DataSource = dsSolicitud
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Referencias personales'
      ImageIndex = 2
      object btdeletref: TSpeedButton
        Left = 528
        Top = 295
        Width = 73
        Height = 22
        Caption = 'Eliminar'
        Flat = True
        Glyph.Data = {
          42010000424D4201000000000000760000002800000011000000110000000100
          040000000000CC00000000000000000000001000000010000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          777770000000777777777777777770000000777777777777770F700000007777
          0F777777777770000000777000F7777770F770000000777000F777770F777000
          00007777000F77700F777000000077777000F700F7777000000077777700000F
          7777700000007777777000F777777000000077777700000F7777700000007777
          7000F70F7777700000007770000F77700F7770000000770000F7777700F77000
          00007700F7777777700F70000000777777777777777770000000777777777777
          777770000000}
      end
      object gRef: TDBGrid
        Left = 0
        Top = 0
        Width = 609
        Height = 289
        Align = alTop
        Ctl3D = True
        DataSource = dsReferenciasPer
        Options = [dgEditing, dgTitles, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnKeyPress = gRefKeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'ref_nombre'
            Title.Caption = 'Nombres'
            Width = 146
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ref_telefono'
            Title.Alignment = taCenter
            Title.Caption = 'Tel'#233'fono'
            Width = 88
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ref_compania'
            Title.Caption = 'Compa'#241#237'a'
            Width = 193
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ref_ocupacion'
            Title.Caption = 'Ocupaci'#243'n'
            Width = 153
            Visible = True
          end>
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Posiciones recomendadas'
      ImageIndex = 3
      object SpeedButton5: TSpeedButton
        Left = 448
        Top = 295
        Width = 73
        Height = 22
        Caption = 'A'#241'adir'
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
          333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
          0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
          07333337F33333337F333330FFFFFFFF07333337F33333337F333330FFFFFFFF
          07333FF7F33333337FFFBBB0FFFFFFFF0BB37777F3333333777F3BB0FFFFFFFF
          0BBB3777F3333FFF77773330FFFF000003333337F333777773333330FFFF0FF0
          33333337F3337F37F3333330FFFF0F0B33333337F3337F77FF333330FFFF003B
          B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
          3BB33773333773333773B333333B3333333B7333333733333337}
        NumGlyphs = 2
        OnClick = SpeedButton5Click
      end
      object SpeedButton6: TSpeedButton
        Left = 528
        Top = 295
        Width = 73
        Height = 22
        Caption = 'Eliminar'
        Flat = True
        Glyph.Data = {
          42010000424D4201000000000000760000002800000011000000110000000100
          040000000000CC00000000000000000000001000000010000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          777770000000777777777777777770000000777777777777770F700000007777
          0F777777777770000000777000F7777770F770000000777000F777770F777000
          00007777000F77700F777000000077777000F700F7777000000077777700000F
          7777700000007777777000F777777000000077777700000F7777700000007777
          7000F70F7777700000007770000F77700F7770000000770000F7777700F77000
          00007700F7777777700F70000000777777777777777770000000777777777777
          777770000000}
        OnClick = SpeedButton6Click
      end
      object DBGrid2: TDBGrid
        Left = 0
        Top = 0
        Width = 609
        Height = 289
        Align = alTop
        Ctl3D = True
        DataSource = dsPosiciones
        Options = [dgEditing, dgTitles, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Posicion'
            Title.Caption = 'Posici'#243'n'
            Width = 193
            Visible = True
          end>
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Consulta'
      ImageIndex = 4
      object DBGrid3: TDBGrid
        Left = 0
        Top = 0
        Width = 609
        Height = 323
        Align = alClient
        Ctl3D = True
        DataSource = dsListado
        Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = DBGrid3DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'sol_numero'
            Title.Alignment = taCenter
            Title.Caption = 'N'#250'mero'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'sol_fecha'
            Title.Alignment = taCenter
            Title.Caption = 'Fecha'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sol_nombre'
            Title.Caption = 'Nombre'
            Width = 146
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sol_apellido_materno'
            Title.Caption = 'Apellido materno'
            Width = 144
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sol_apellido_paterno'
            Title.Caption = 'Apellido paterno'
            Width = 129
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sol_sexo'
            Title.Alignment = taCenter
            Title.Caption = 'Sexo'
            Width = 92
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'sol_cedula'
            Title.Alignment = taCenter
            Title.Caption = 'C'#233'd'#250'la'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'sol_telefono1'
            Title.Alignment = taCenter
            Title.Caption = 'Tel'#233'fono1'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'sol_telefono2'
            Title.Alignment = taCenter
            Title.Caption = 'Tel'#233'fono2'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'sol_status'
            Title.Alignment = taCenter
            Title.Caption = 'Status'
            Visible = True
          end>
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'Estudios realizados'
      ImageIndex = 5
      object btinsertest: TSpeedButton
        Left = 448
        Top = 295
        Width = 73
        Height = 22
        Caption = 'A'#241'adir'
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
          333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
          0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
          07333337F33333337F333330FFFFFFFF07333337F33333337F333330FFFFFFFF
          07333FF7F33333337FFFBBB0FFFFFFFF0BB37777F3333333777F3BB0FFFFFFFF
          0BBB3777F3333FFF77773330FFFF000003333337F333777773333330FFFF0FF0
          33333337F3337F37F3333330FFFF0F0B33333337F3337F77FF333330FFFF003B
          B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
          3BB33773333773333773B333333B3333333B7333333733333337}
        NumGlyphs = 2
        OnClick = btinsertestClick
      end
      object btdeleteest: TSpeedButton
        Left = 528
        Top = 295
        Width = 73
        Height = 22
        Caption = 'Eliminar'
        Flat = True
        Glyph.Data = {
          42010000424D4201000000000000760000002800000011000000110000000100
          040000000000CC00000000000000000000001000000010000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          777770000000777777777777777770000000777777777777770F700000007777
          0F777777777770000000777000F7777770F770000000777000F777770F777000
          00007777000F77700F777000000077777000F700F7777000000077777700000F
          7777700000007777777000F777777000000077777700000F7777700000007777
          7000F70F7777700000007770000F77700F7770000000770000F7777700F77000
          00007700F7777777700F70000000777777777777777770000000777777777777
          777770000000}
        OnClick = btdeleteestClick
      end
      object DBGrid4: TDBGrid
        Left = 0
        Top = 0
        Width = 609
        Height = 289
        Align = alTop
        Ctl3D = True
        DataSource = dsEstudios
        Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'pai_nombre'
            Title.Caption = 'Pa'#237's'
            Width = 137
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ins_nombre'
            Title.Caption = 'Instituci'#243'n'
            Width = 145
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'est_desde'
            Title.Alignment = taCenter
            Title.Caption = 'Desde'
            Width = 73
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'est_hasta'
            Title.Alignment = taCenter
            Title.Caption = 'Hasta'
            Width = 67
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'est_titulo'
            Title.Caption = 'Titulo'
            Width = 152
            Visible = True
          end>
      end
    end
    object TabSheet7: TTabSheet
      Caption = 'Experiencia laboral'
      ImageIndex = 6
      object btdeleteexp: TSpeedButton
        Left = 528
        Top = 295
        Width = 73
        Height = 22
        Caption = 'Eliminar'
        Flat = True
        Glyph.Data = {
          42010000424D4201000000000000760000002800000011000000110000000100
          040000000000CC00000000000000000000001000000010000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          777770000000777777777777777770000000777777777777770F700000007777
          0F777777777770000000777000F7777770F770000000777000F777770F777000
          00007777000F77700F777000000077777000F700F7777000000077777700000F
          7777700000007777777000F777777000000077777700000F7777700000007777
          7000F70F7777700000007770000F77700F7770000000770000F7777700F77000
          00007700F7777777700F70000000777777777777777770000000777777777777
          777770000000}
      end
      object DBGrid5: TDBGrid
        Left = 0
        Top = 0
        Width = 609
        Height = 289
        Align = alTop
        Ctl3D = True
        DataSource = dsExperiencia
        Options = [dgEditing, dgTitles, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnKeyPress = DBGrid5KeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'exp_empleador'
            Title.Caption = 'Empleador'
            Width = 144
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'exp_telefono'
            Title.Alignment = taCenter
            Title.Caption = 'Telefono'
            Width = 78
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'exp_funcion'
            Title.Caption = 'Funcion'
            Width = 110
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'exp_desde'
            Title.Alignment = taCenter
            Title.Caption = 'Desde'
            Width = 60
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'exp_hasta'
            Title.Alignment = taCenter
            Title.Caption = 'Hasta'
            Width = 57
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'exp_posicion'
            Title.Caption = 'Posicion'
            Width = 111
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'exp_motivo_salida'
            Title.Caption = 'Motivo Salida'
            Width = 158
            Visible = True
          end>
      end
    end
    object TabSheet8: TTabSheet
      Caption = 'Habilidades'
      ImageIndex = 7
      object btinserthab: TSpeedButton
        Left = 448
        Top = 295
        Width = 73
        Height = 22
        Caption = 'A'#241'adir'
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
          333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
          0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
          07333337F33333337F333330FFFFFFFF07333337F33333337F333330FFFFFFFF
          07333FF7F33333337FFFBBB0FFFFFFFF0BB37777F3333333777F3BB0FFFFFFFF
          0BBB3777F3333FFF77773330FFFF000003333337F333777773333330FFFF0FF0
          33333337F3337F37F3333330FFFF0F0B33333337F3337F77FF333330FFFF003B
          B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
          3BB33773333773333773B333333B3333333B7333333733333337}
        NumGlyphs = 2
        OnClick = btinserthabClick
      end
      object btdeletehab: TSpeedButton
        Left = 528
        Top = 295
        Width = 73
        Height = 22
        Caption = 'Eliminar'
        Flat = True
        Glyph.Data = {
          42010000424D4201000000000000760000002800000011000000110000000100
          040000000000CC00000000000000000000001000000010000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          777770000000777777777777777770000000777777777777770F700000007777
          0F777777777770000000777000F7777770F770000000777000F777770F777000
          00007777000F77700F777000000077777000F700F7777000000077777700000F
          7777700000007777777000F777777000000077777700000F7777700000007777
          7000F70F7777700000007770000F77700F7770000000770000F7777700F77000
          00007700F7777777700F70000000777777777777777770000000777777777777
          777770000000}
        OnClick = btdeletehabClick
      end
      object DBGrid6: TDBGrid
        Left = 0
        Top = 0
        Width = 609
        Height = 289
        Align = alTop
        Ctl3D = True
        DataSource = dsHabilidades
        Options = [dgEditing, dgTitles, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'cat_nombre'
            Title.Caption = 'Categor'#237'a'
            Width = 216
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'hab_nombre'
            Title.Caption = 'Habilidad'
            Width = 198
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Destreza'
            Title.Alignment = taCenter
            Width = 98
            Visible = True
          end>
      end
    end
  end
  object QSolicitud: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    BeforePost = QSolicitudBeforePost
    AfterPost = QSolicitudAfterPost
    AfterDelete = QSolicitudAfterDelete
    OnNewRecord = QSolicitudNewRecord
    DataSource = DM.dsEmpresas
    Parameters = <
      item
        Name = 'emp_codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'sol'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      
        'emp_codigo, suc_codigo, sol_numero, sol_nombre, sol_apellido_mat' +
        'erno, sol_apellido_paterno,'
      
        'sol_fecha_nacimiento, sol_lugar_nacimiento, pai_codigo, idi_codi' +
        'go, sol_cedula,'
      
        'sol_pasaporte, est_codigo, sol_telefono1, sol_telefono2, sol_dir' +
        'eccion, sol_email,'
      
        'sol_dependientes, sol_fecha, sol_status, sol_fue_empleado, sol_h' +
        'a_trabajado,'
      'sol_actualmente_trabaja, pos_codigo, sol_salario_aspira,'
      
        'sol_fecha_disponible, sol_familiar_empresa, sol_emer_nombre, sol' +
        '_emer_telefono,'
      
        'sol_emer_direccion, sol_emer_alergia, sol_tipo_sangre, sol_medic' +
        'o, sol_telefono_medico,'
      'sol_disponible_trabajar, sol_sexo'
      'from'
      'solicitud_empleo'
      'where'
      'emp_codigo = :emp_codigo'
      'and sol_numero = :sol'
      'order by'
      'sol_numero')
    Left = 200
    Top = 168
    object QSolicitudemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QSolicitudsuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object QSolicitudsol_numero: TIntegerField
      FieldName = 'sol_numero'
    end
    object QSolicitudsol_nombre: TStringField
      FieldName = 'sol_nombre'
      Size = 60
    end
    object QSolicitudsol_apellido_materno: TStringField
      FieldName = 'sol_apellido_materno'
      Size = 60
    end
    object QSolicitudsol_apellido_paterno: TStringField
      FieldName = 'sol_apellido_paterno'
      Size = 60
    end
    object QSolicitudsol_fecha_nacimiento: TDateTimeField
      FieldName = 'sol_fecha_nacimiento'
      EditMask = 'cc-cc-cccc'
    end
    object QSolicitudsol_lugar_nacimiento: TStringField
      FieldName = 'sol_lugar_nacimiento'
      Size = 60
    end
    object QSolicitudpai_codigo: TIntegerField
      FieldName = 'pai_codigo'
      OnGetText = QSolicitudpai_codigoGetText
    end
    object QSolicitudidi_codigo: TIntegerField
      FieldName = 'idi_codigo'
      OnGetText = QSolicitudidi_codigoGetText
    end
    object QSolicitudsol_cedula: TStringField
      FieldName = 'sol_cedula'
      EditMask = 'ccc-ccccccc-c'
      Size = 13
    end
    object QSolicitudsol_pasaporte: TStringField
      FieldName = 'sol_pasaporte'
      Size = 30
    end
    object QSolicitudest_codigo: TIntegerField
      FieldName = 'est_codigo'
      OnGetText = QSolicitudest_codigoGetText
    end
    object QSolicitudsol_telefono1: TStringField
      FieldName = 'sol_telefono1'
      EditMask = '(ccc)ccc-cccc'
      Size = 13
    end
    object QSolicitudsol_direccion: TMemoField
      FieldName = 'sol_direccion'
      BlobType = ftMemo
    end
    object QSolicitudsol_email: TStringField
      FieldName = 'sol_email'
      Size = 60
    end
    object QSolicitudsol_dependientes: TStringField
      FieldName = 'sol_dependientes'
      Size = 2
    end
    object QSolicitudsol_fecha: TDateTimeField
      FieldName = 'sol_fecha'
      EditMask = 'cc-cc-cccc'
    end
    object QSolicitudsol_status: TStringField
      FieldName = 'sol_status'
      Size = 3
    end
    object QSolicitudsol_fue_empleado: TStringField
      FieldName = 'sol_fue_empleado'
      Size = 2
    end
    object QSolicitudsol_ha_trabajado: TStringField
      FieldName = 'sol_ha_trabajado'
      Size = 2
    end
    object QSolicitudsol_actualmente_trabaja: TStringField
      FieldName = 'sol_actualmente_trabaja'
      Size = 2
    end
    object QSolicitudpos_codigo: TIntegerField
      FieldName = 'pos_codigo'
      OnGetText = QSolicitudpos_codigoGetText
    end
    object QSolicitudsol_salario_aspira: TBCDField
      FieldName = 'sol_salario_aspira'
      currency = True
      Precision = 15
      Size = 2
    end
    object QSolicitudsol_fecha_disponible: TDateTimeField
      FieldName = 'sol_fecha_disponible'
      EditMask = 'cc-cc-cccc'
    end
    object QSolicitudsol_familiar_empresa: TStringField
      FieldName = 'sol_familiar_empresa'
      Size = 2
    end
    object QSolicitudsol_emer_nombre: TStringField
      FieldName = 'sol_emer_nombre'
      Size = 60
    end
    object QSolicitudsol_emer_telefono: TStringField
      FieldName = 'sol_emer_telefono'
      EditMask = '(ccc)ccc-cccc'
      Size = 13
    end
    object QSolicitudsol_emer_direccion: TMemoField
      FieldName = 'sol_emer_direccion'
      BlobType = ftMemo
    end
    object QSolicitudsol_emer_alergia: TMemoField
      FieldName = 'sol_emer_alergia'
      BlobType = ftMemo
    end
    object QSolicitudsol_tipo_sangre: TStringField
      FieldName = 'sol_tipo_sangre'
      Size = 30
    end
    object QSolicitudsol_medico: TStringField
      FieldName = 'sol_medico'
      Size = 60
    end
    object QSolicitudsol_telefono_medico: TStringField
      FieldName = 'sol_telefono_medico'
      EditMask = '(ccc)ccc-cccc'
      Size = 13
    end
    object QSolicitudsol_disponible_trabajar: TStringField
      FieldName = 'sol_disponible_trabajar'
      Size = 15
    end
    object QSolicitudStatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'Status'
      Calculated = True
    end
    object QSolicitudsol_sexo: TStringField
      FieldName = 'sol_sexo'
      Size = 10
    end
    object QSolicitudsol_telefono2: TStringField
      FieldName = 'sol_telefono2'
      EditMask = '(ccc)ccc-cccc'
      Size = 13
    end
  end
  object dsSolicitud: TDataSource
    AutoEdit = False
    DataSet = QSolicitud
    OnStateChange = dsSolicitudStateChange
    Left = 232
    Top = 168
  end
  object Search: TQrySearchDlgADO
    Title = 'Marcas de activos'
    ResultField = 'mar_codigo'
    Query.Strings = (
      'select fpa_nombre, fpa_codigo'
      'from formaspago')
    AliasFields.Strings = (
      'Nombre'
      'C'#243'digo')
    AliasName = DM.ADOSigma
    Left = 200
    Top = 200
  end
  object ActionList2: TActionList
    Images = DM.ImgMant
    Left = 232
    Top = 200
    object btPrior: TAction
      Caption = 'Anterior'
      ImageIndex = 8
      OnExecute = btpriorClick
    end
    object btNext: TAction
      Caption = 'Pr'#243'ximo'
      ImageIndex = 9
      OnExecute = btnextClick
    end
    object btInsert: TAction
      Caption = 'Insertar'
      ImageIndex = 6
      OnExecute = btInsertClick
    end
    object btEdit: TAction
      Caption = 'Modificar'
      ImageIndex = 7
      OnExecute = btEditClick
    end
    object btDelete: TAction
      Caption = 'Eliminar'
      ImageIndex = 1
      OnExecute = btDeleteClick
    end
    object btPost: TAction
      Caption = 'Grabar'
      ImageIndex = 2
      OnExecute = btPostClick
    end
    object btCancel: TAction
      Caption = 'Cancelar'
      ImageIndex = 3
      OnExecute = btCancelClick
    end
    object btFind: TAction
      Caption = 'Buscar'
      ImageIndex = 4
      OnExecute = btFindClick
    end
    object btPrint: TAction
      Caption = 'Imprimir'
      ImageIndex = 5
    end
    object btClose: TAction
      Caption = 'Salir'
      ImageIndex = 0
      OnExecute = btCloseClick
    end
  end
  object QSucursal: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltReadOnly
    DataSource = DM.dsEmpresas
    Parameters = <
      item
        Name = 'emp_codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'usu'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      's.suc_codigo, s.suc_nombre, s.alm_codigo'
      'from'
      'sucursales s, sucursal_acceso a'
      'where'
      's.emp_codigo = a.emp_codigo'
      'and s.suc_codigo = a.suc_codigo'
      'and a.emp_codigo = :emp_codigo'
      'and a.usu_codigo = :usu'
      'order by s.suc_codigo')
    Left = 200
    Top = 232
    object QSucursalsuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object QSucursalsuc_nombre: TStringField
      FieldName = 'suc_nombre'
      Size = 60
    end
    object QSucursalalm_codigo: TIntegerField
      FieldName = 'alm_codigo'
    end
  end
  object dsSuc: TDataSource
    DataSet = QSucursal
    Left = 232
    Top = 232
  end
  object QReferenciasPer: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterInsert = QReferenciasPerAfterInsert
    AfterEdit = QReferenciasPerAfterEdit
    Parameters = <
      item
        Name = 'emp'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'sol'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'emp_codigo, sol_numero, ref_secuencia, ref_nombre, ref_telefono,'
      'ref_compania, ref_ocupacion'
      'from'
      'Solicitud_Referencias'
      'where'
      'emp_codigo = :emp'
      'and sol_numero = :sol'
      'order by'
      'ref_secuencia')
    Left = 324
    Top = 170
    object QReferenciasPeremp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QReferenciasPersol_numero: TIntegerField
      FieldName = 'sol_numero'
    end
    object QReferenciasPerref_secuencia: TIntegerField
      FieldName = 'ref_secuencia'
    end
    object QReferenciasPerref_nombre: TStringField
      FieldName = 'ref_nombre'
      Size = 60
    end
    object QReferenciasPerref_telefono: TStringField
      FieldName = 'ref_telefono'
      EditMask = '(ccc)ccc-cccc'
      Size = 13
    end
    object QReferenciasPerref_compania: TStringField
      FieldName = 'ref_compania'
      Size = 60
    end
    object QReferenciasPerref_ocupacion: TStringField
      FieldName = 'ref_ocupacion'
      Size = 60
    end
  end
  object dsReferenciasPer: TDataSource
    DataSet = QReferenciasPer
    Left = 356
    Top = 170
  end
  object QHabilidades: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    OnCalcFields = QHabilidadesCalcFields
    DataSource = dsSolicitud
    Parameters = <
      item
        Name = 'emp_codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'sol_numero'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'h.hab_nombre, s.hab_destreza, c.cat_nombre, '
      's.cat_codigo,  s.hab_codigo'
      'from'
      'habilidades h, solicitud_habilidades s, categoria_empleados c'
      'where'
      'h.hab_codigo = s.hab_codigo'
      'and s.emp_codigo = c.emp_codigo'
      'and s.cat_codigo = c.cat_codigo'
      'and s.emp_codigo = :emp_codigo'
      'and s.sol_numero = :sol_numero'
      'order by'
      's.hab_secuencia')
    Left = 324
    Top = 202
    object QHabilidadeshab_nombre: TStringField
      FieldName = 'hab_nombre'
      Size = 60
    end
    object QHabilidadeshab_destreza: TStringField
      FieldName = 'hab_destreza'
      Size = 1
    end
    object QHabilidadescat_nombre: TStringField
      FieldName = 'cat_nombre'
      Size = 60
    end
    object QHabilidadesDestreza: TStringField
      FieldKind = fkCalculated
      FieldName = 'Destreza'
      Size = 10
      Calculated = True
    end
    object QHabilidadescat_codigo: TIntegerField
      FieldName = 'cat_codigo'
    end
    object QHabilidadeshab_codigo: TIntegerField
      FieldName = 'hab_codigo'
    end
  end
  object dsHabilidades: TDataSource
    DataSet = QHabilidades
    Left = 356
    Top = 202
  end
  object QPosiciones: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    DataSource = dsSolicitud
    Parameters = <
      item
        Name = 'emp_codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'sol_numero'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'p.pos_nombre as Posicion, s.pos_codigo'
      'from'
      'posiciones p, solicitud_posiciones s'
      'where'
      'p.pos_codigo = s.pos_codigo'
      'and s.emp_codigo = :emp_codigo'
      'and s.sol_numero = :sol_numero'
      '')
    Left = 324
    Top = 234
    object QPosicionesPosicion: TStringField
      FieldName = 'Posicion'
      Size = 60
    end
    object QPosicionespos_codigo: TIntegerField
      FieldName = 'pos_codigo'
    end
  end
  object dsPosiciones: TDataSource
    DataSet = QPosiciones
    Left = 356
    Top = 234
  end
  object QEstudios: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    DataSource = dsSolicitud
    Parameters = <
      item
        Name = 'emp_codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'sol_numero'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      
        'p.pai_nombre, i.ins_nombre, s.est_desde, s.est_hasta, s.est_titu' +
        'lo,'
      's.est_secuencia'
      'from'
      'solicitud_estudios s, Institucion_Academica i, paises p'
      'where'
      's.pai_codigo = p.pai_codigo'
      'and s.ins_codigo = i.ins_codigo'
      'and s.emp_codigo = :emp_codigo'
      'and s.sol_numero = :sol_numero'
      'order by'
      's.est_secuencia')
    Left = 324
    Top = 266
    object QEstudiospai_nombre: TStringField
      FieldName = 'pai_nombre'
      Size = 60
    end
    object QEstudiosins_nombre: TStringField
      FieldName = 'ins_nombre'
      Size = 60
    end
    object QEstudiosest_desde: TDateTimeField
      FieldName = 'est_desde'
    end
    object QEstudiosest_hasta: TDateTimeField
      FieldName = 'est_hasta'
    end
    object QEstudiosest_titulo: TStringField
      FieldName = 'est_titulo'
      Size = 60
    end
    object QEstudiosest_secuencia: TIntegerField
      FieldName = 'est_secuencia'
    end
  end
  object dsEstudios: TDataSource
    DataSet = QEstudios
    Left = 356
    Top = 266
  end
  object Query1: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <>
    Left = 200
    Top = 272
  end
  object QExperiencia: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterInsert = QExperienciaAfterInsert
    AfterEdit = QExperienciaAfterEdit
    Parameters = <
      item
        Name = 'emp'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'sol'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      
        'emp_codigo, sol_numero, exp_secuencia, exp_telefono, exp_funcion' +
        ','
      
        'exp_desde, exp_hasta, exp_motivo_salida, exp_posicion, exp_emple' +
        'ador'
      'from'
      'solicitud_experiencia'
      'where'
      'emp_codigo = :emp'
      'and sol_numero = :sol'
      'order by'
      'exp_secuencia'
      '')
    Left = 324
    Top = 298
    object QExperienciaemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QExperienciasol_numero: TIntegerField
      FieldName = 'sol_numero'
    end
    object QExperienciaexp_secuencia: TIntegerField
      FieldName = 'exp_secuencia'
    end
    object QExperienciaexp_telefono: TStringField
      FieldName = 'exp_telefono'
      EditMask = '(ccc)ccc-cccc'
      Size = 13
    end
    object QExperienciaexp_funcion: TStringField
      FieldName = 'exp_funcion'
      Size = 60
    end
    object QExperienciaexp_desde: TDateTimeField
      FieldName = 'exp_desde'
      EditMask = 'cc-cc-cccc'
    end
    object QExperienciaexp_hasta: TDateTimeField
      FieldName = 'exp_hasta'
      EditMask = 'cc-cc-cccc'
    end
    object QExperienciaexp_motivo_salida: TStringField
      FieldName = 'exp_motivo_salida'
      Size = 60
    end
    object QExperienciaexp_posicion: TStringField
      FieldName = 'exp_posicion'
      Size = 60
    end
    object QExperienciaexp_empleador: TStringField
      FieldName = 'exp_empleador'
      Size = 60
    end
  end
  object dsExperiencia: TDataSource
    DataSet = QExperiencia
    Left = 356
    Top = 298
  end
  object QListado: TADOQuery
    Connection = DM.ADOSigma
    DataSource = DM.dsEmpresas
    Parameters = <
      item
        Name = 'emp_codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      
        'sol_numero, sol_nombre, sol_apellido_materno, sol_apellido_pater' +
        'no, sol_sexo,'
      'sol_cedula, sol_telefono1, sol_telefono2, sol_fecha, sol_status'
      'from'
      'solicitud_empleo'
      'where'
      'emp_codigo = :emp_codigo'
      'order by'
      'sol_fecha ')
    Left = 324
    Top = 330
    object QListadosol_numero: TIntegerField
      FieldName = 'sol_numero'
    end
    object QListadosol_nombre: TStringField
      FieldName = 'sol_nombre'
      Size = 60
    end
    object QListadosol_apellido_materno: TStringField
      FieldName = 'sol_apellido_materno'
      Size = 60
    end
    object QListadosol_apellido_paterno: TStringField
      FieldName = 'sol_apellido_paterno'
      Size = 60
    end
    object QListadosol_sexo: TStringField
      FieldName = 'sol_sexo'
      Size = 10
    end
    object QListadosol_cedula: TStringField
      FieldName = 'sol_cedula'
      Size = 13
    end
    object QListadosol_telefono1: TStringField
      FieldName = 'sol_telefono1'
      Size = 13
    end
    object QListadosol_telefono2: TStringField
      FieldName = 'sol_telefono2'
      Size = 13
    end
    object QListadosol_fecha: TDateTimeField
      FieldName = 'sol_fecha'
    end
    object QListadosol_status: TStringField
      FieldName = 'sol_status'
      Size = 3
    end
  end
  object dsListado: TDataSource
    DataSet = QListado
    Left = 356
    Top = 330
  end
end
