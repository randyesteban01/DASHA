object frmClientesClub: TfrmClientesClub
  Left = 224
  Top = 224
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Clientes del Club'
  ClientHeight = 389
  ClientWidth = 676
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
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 48
    Width = 673
    Height = 337
    ActivePage = TabSheet1
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Datos generales'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      object Label1: TLabel
        Left = 8
        Top = 32
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 8
        Top = 56
        Width = 42
        Height = 13
        Caption = 'Nombres'
        FocusControl = DBEdit3
      end
      object Label3: TLabel
        Left = 8
        Top = 80
        Width = 33
        Height = 13
        Caption = 'C'#233'dula'
        FocusControl = DBEdit4
      end
      object Label5: TLabel
        Left = 8
        Top = 104
        Width = 43
        Height = 13
        Caption = 'Direcci'#243'n'
        FocusControl = DBEdit6
      end
      object Label9: TLabel
        Left = 8
        Top = 176
        Width = 47
        Height = 13
        Caption = 'Tel'#233'fonos'
        FocusControl = DBEdit11
      end
      object Label22: TLabel
        Left = 224
        Top = 32
        Width = 44
        Height = 13
        Caption = '# Carnet'
      end
      object Label23: TLabel
        Left = 226
        Top = 56
        Width = 42
        Height = 13
        Caption = 'Apellidos'
        FocusControl = DBEdit8
      end
      object Label15: TLabel
        Left = 210
        Top = 80
        Width = 58
        Height = 13
        Caption = 'Depende de'
      end
      object btDepen: TSpeedButton
        Left = 336
        Top = 80
        Width = 23
        Height = 22
        Flat = True
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
          0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF000000000000000000000000000000000000000000FF00FF0000000000FFFF
          FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF0000000000FFFFFF00000000000000000000000000FF00FF0000000000FFFF
          FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF0000000000FFFFFF00000000000000000000000000FF00FF00000000000000
          00000000000000000000000000000000000000000000FF00FF00000000000000
          00000000000000000000000000000000000000000000FF00FF00000000000000
          0000FFFFFF00000000000000000000000000000000000000000000000000FFFF
          FF000000000000000000000000000000000000000000FF00FF00000000000000
          0000FFFFFF00000000000000000000000000FF00FF000000000000000000FFFF
          FF000000000000000000000000000000000000000000FF00FF00000000000000
          0000FFFFFF00000000000000000000000000FF00FF000000000000000000FFFF
          FF000000000000000000000000000000000000000000FF00FF00FF00FF000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
          FF0000000000FFFFFF00000000000000000000000000FF00FF0000000000FFFF
          FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF000000000000000000000000000000000000000000FF00FF00000000000000
          0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00FF000000
          00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00FF000000
          0000FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00FF000000
          00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        OnClick = btDepenClick
      end
      object Label16: TLabel
        Left = 8
        Top = 152
        Width = 44
        Height = 13
        Caption = 'Localidad'
        FocusControl = DBEdit17
      end
      object Label36: TLabel
        Left = 8
        Top = 8
        Width = 40
        Height = 13
        Caption = 'Sucursal'
      end
      object DBEdit1: TDBEdit
        Left = 64
        Top = 32
        Width = 64
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        Color = clInfoBk
        DataField = 'cli_codigo'
        DataSource = dsClientes
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 272
        Top = 32
        Width = 153
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'cli_carnet_club'
        DataSource = dsClientes
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 64
        Top = 56
        Width = 153
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'cli_nombre'
        DataSource = dsClientes
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 64
        Top = 80
        Width = 89
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'cli_cedula'
        DataSource = dsClientes
        TabOrder = 4
      end
      object DBEdit6: TDBEdit
        Left = 64
        Top = 104
        Width = 364
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'cli_direccion1'
        DataSource = dsClientes
        TabOrder = 6
      end
      object DBEdit7: TDBEdit
        Left = 64
        Top = 128
        Width = 364
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'cli_direccion2'
        DataSource = dsClientes
        TabOrder = 7
      end
      object DBEdit11: TDBEdit
        Left = 64
        Top = 176
        Width = 82
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'cli_telefono'
        DataSource = dsClientes
        TabOrder = 9
      end
      object DBEdit12: TDBEdit
        Left = 152
        Top = 176
        Width = 82
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'cli_celular'
        DataSource = dsClientes
        TabOrder = 10
      end
      object DBEdit8: TDBEdit
        Left = 272
        Top = 56
        Width = 153
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'cli_apellido'
        DataSource = dsClientes
        TabOrder = 3
      end
      object GroupBox1: TGroupBox
        Left = 8
        Top = 200
        Width = 417
        Height = 105
        Caption = 'Informaci'#243'n sobre sus Puntos'
        TabOrder = 11
        object Label4: TLabel
          Left = 8
          Top = 24
          Width = 150
          Height = 13
          Caption = 'Cantidad de Puntos Disponibles'
          FocusControl = DBEdit5
        end
        object Label6: TLabel
          Left = 304
          Top = 24
          Width = 8
          Height = 13
          Caption = '='
          FocusControl = DBEdit5
        end
        object Label7: TLabel
          Left = 318
          Top = 24
          Width = 20
          Height = 13
          Caption = 'RD$'
          FocusControl = DBEdit5
        end
        object Label8: TLabel
          Left = 8
          Top = 48
          Width = 160
          Height = 13
          Caption = 'Puntos Generados por el Principal'
          FocusControl = DBEdit10
        end
        object Label10: TLabel
          Left = 304
          Top = 48
          Width = 8
          Height = 13
          Caption = '='
          FocusControl = DBEdit5
        end
        object Label11: TLabel
          Left = 318
          Top = 48
          Width = 20
          Height = 13
          Caption = 'RD$'
          FocusControl = DBEdit5
        end
        object Label12: TLabel
          Left = 8
          Top = 72
          Width = 182
          Height = 13
          Caption = 'Puntos Generados por el Dependiente'
          FocusControl = DBEdit14
        end
        object Label13: TLabel
          Left = 304
          Top = 72
          Width = 8
          Height = 13
          Caption = '='
          FocusControl = DBEdit5
        end
        object Label14: TLabel
          Left = 318
          Top = 72
          Width = 20
          Height = 13
          Caption = 'RD$'
          FocusControl = DBEdit5
        end
        object DBEdit5: TDBEdit
          Left = 200
          Top = 24
          Width = 97
          Height = 21
          TabStop = False
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'cli_balance_ptos'
          DataSource = dsClientes
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit9: TDBEdit
          Left = 344
          Top = 24
          Width = 64
          Height = 21
          TabStop = False
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'cli_balance_mto'
          DataSource = dsClientes
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit10: TDBEdit
          Left = 200
          Top = 48
          Width = 97
          Height = 21
          TabStop = False
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'cli_puntos_principal'
          DataSource = dsClientes
          ReadOnly = True
          TabOrder = 2
        end
        object DBEdit13: TDBEdit
          Left = 344
          Top = 48
          Width = 65
          Height = 21
          TabStop = False
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'cli_monto_principal'
          DataSource = dsClientes
          ReadOnly = True
          TabOrder = 3
        end
        object DBEdit14: TDBEdit
          Left = 200
          Top = 72
          Width = 97
          Height = 21
          TabStop = False
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'cli_puntos_depen'
          DataSource = dsClientes
          ReadOnly = True
          TabOrder = 4
        end
        object DBEdit15: TDBEdit
          Left = 344
          Top = 72
          Width = 65
          Height = 21
          TabStop = False
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'cli_monto_depen'
          DataSource = dsClientes
          ReadOnly = True
          TabOrder = 5
        end
      end
      object DBEdit16: TDBEdit
        Left = 272
        Top = 80
        Width = 64
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'cli_depende'
        DataSource = dsClientes
        TabOrder = 5
      end
      object btBono: TBitBtn
        Left = 432
        Top = 280
        Width = 233
        Height = 25
        Caption = 'Generar Bono de Compra'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 13
        OnClick = btBonoClick
      end
      object DBGrid1: TDBGrid
        Left = 432
        Top = 0
        Width = 233
        Height = 273
        Ctl3D = False
        DataSource = dsBonos
        Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        TabOrder = 12
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'bon_numero'
            Title.Alignment = taCenter
            Title.Caption = 'N'#250'mero'
            Width = 75
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'bon_fecha'
            Title.Alignment = taCenter
            Title.Caption = 'Fecha'
            Width = 56
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'bon_monto'
            Title.Alignment = taCenter
            Title.Caption = 'Monto'
            Width = 68
            Visible = True
          end>
      end
      object DBEdit17: TDBEdit
        Left = 64
        Top = 152
        Width = 364
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'cli_localidad'
        DataSource = dsClientes
        TabOrder = 8
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 64
        Top = 8
        Width = 361
        Height = 21
        DataField = 'suc_codigo'
        DataSource = dsClientes
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
        TabOrder = 14
        TabStop = False
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Listado general'
      ImageIndex = 1
      object Panel2: TPanel
        Left = 588
        Top = 0
        Width = 77
        Height = 309
        Align = alRight
        TabOrder = 0
        object SpeedButton1: TSpeedButton
          Left = 4
          Top = 4
          Width = 23
          Height = 22
          GroupIndex = 1
          Caption = 'A'
          OnClick = SpeedButton1Click
        end
        object SpeedButton2: TSpeedButton
          Left = 28
          Top = 4
          Width = 23
          Height = 22
          GroupIndex = 1
          Caption = 'J'
          OnClick = SpeedButton1Click
        end
        object SpeedButton3: TSpeedButton
          Left = 4
          Top = 148
          Width = 23
          Height = 22
          GroupIndex = 1
          Caption = 'G'
          OnClick = SpeedButton1Click
        end
        object SpeedButton4: TSpeedButton
          Left = 28
          Top = 148
          Width = 23
          Height = 22
          GroupIndex = 1
          Caption = 'O'
          OnClick = SpeedButton1Click
        end
        object SpeedButton5: TSpeedButton
          Left = 52
          Top = 4
          Width = 23
          Height = 22
          GroupIndex = 1
          Caption = 'R'
          OnClick = SpeedButton1Click
        end
        object SpeedButton6: TSpeedButton
          Left = 4
          Top = 52
          Width = 23
          Height = 22
          GroupIndex = 1
          Caption = 'C'
          OnClick = SpeedButton1Click
        end
        object SpeedButton7: TSpeedButton
          Left = 28
          Top = 52
          Width = 23
          Height = 22
          GroupIndex = 1
          Caption = 'L'
          OnClick = SpeedButton1Click
        end
        object SpeedButton8: TSpeedButton
          Left = 52
          Top = 172
          Width = 23
          Height = 22
          GroupIndex = 1
          Caption = 'Y'
          OnClick = SpeedButton1Click
        end
        object SpeedButton9: TSpeedButton
          Left = 28
          Top = 172
          Width = 23
          Height = 22
          GroupIndex = 1
          Caption = 'P'
          OnClick = SpeedButton1Click
        end
        object SpeedButton10: TSpeedButton
          Left = 52
          Top = 52
          Width = 23
          Height = 22
          GroupIndex = 1
          Caption = 'T'
          OnClick = SpeedButton1Click
        end
        object SpeedButton11: TSpeedButton
          Left = 4
          Top = 76
          Width = 23
          Height = 22
          GroupIndex = 1
          Caption = 'D'
          OnClick = SpeedButton1Click
        end
        object SpeedButton12: TSpeedButton
          Left = 28
          Top = 76
          Width = 23
          Height = 22
          GroupIndex = 1
          Caption = 'M'
          OnClick = SpeedButton1Click
        end
        object SpeedButton13: TSpeedButton
          Left = 4
          Top = 196
          Width = 23
          Height = 22
          GroupIndex = 1
          Caption = 'I'
          OnClick = SpeedButton1Click
        end
        object SpeedButton14: TSpeedButton
          Left = 28
          Top = 196
          Width = 23
          Height = 22
          GroupIndex = 1
          Caption = 'Q'
          OnClick = SpeedButton1Click
        end
        object SpeedButton15: TSpeedButton
          Left = 52
          Top = 76
          Width = 23
          Height = 22
          GroupIndex = 1
          Caption = 'U'
          OnClick = SpeedButton1Click
        end
        object SpeedButton16: TSpeedButton
          Left = 4
          Top = 100
          Width = 23
          Height = 22
          GroupIndex = 1
          Caption = 'E'
          OnClick = SpeedButton1Click
        end
        object SpeedButton17: TSpeedButton
          Left = 28
          Top = 100
          Width = 23
          Height = 22
          GroupIndex = 1
          Caption = 'N'
          OnClick = SpeedButton1Click
        end
        object SpeedButton19: TSpeedButton
          Left = 52
          Top = 196
          Width = 23
          Height = 22
          GroupIndex = 1
          Caption = 'Z'
          OnClick = SpeedButton1Click
        end
        object SpeedButton20: TSpeedButton
          Left = 52
          Top = 100
          Width = 23
          Height = 22
          GroupIndex = 1
          Caption = 'V'
          OnClick = SpeedButton1Click
        end
        object SpeedButton21: TSpeedButton
          Left = 4
          Top = 124
          Width = 23
          Height = 22
          GroupIndex = 1
          Caption = 'F'
          OnClick = SpeedButton1Click
        end
        object SpeedButton22: TSpeedButton
          Left = 28
          Top = 124
          Width = 23
          Height = 22
          GroupIndex = 1
          Caption = #209
          OnClick = SpeedButton1Click
        end
        object SpeedButton23: TSpeedButton
          Left = 52
          Top = 124
          Width = 23
          Height = 22
          GroupIndex = 1
          Caption = 'W'
          OnClick = SpeedButton1Click
        end
        object SpeedButton24: TSpeedButton
          Left = 4
          Top = 28
          Width = 23
          Height = 22
          GroupIndex = 1
          Caption = 'B'
          OnClick = SpeedButton1Click
        end
        object SpeedButton25: TSpeedButton
          Left = 28
          Top = 28
          Width = 23
          Height = 22
          GroupIndex = 1
          Caption = 'K'
          OnClick = SpeedButton1Click
        end
        object SpeedButton26: TSpeedButton
          Left = 4
          Top = 172
          Width = 23
          Height = 22
          GroupIndex = 1
          Caption = 'H'
          OnClick = SpeedButton1Click
        end
        object SpeedButton27: TSpeedButton
          Left = 52
          Top = 148
          Width = 23
          Height = 22
          GroupIndex = 1
          Caption = 'X'
          OnClick = SpeedButton1Click
        end
        object SpeedButton28: TSpeedButton
          Left = 52
          Top = 28
          Width = 23
          Height = 22
          GroupIndex = 1
          Caption = 'S'
          OnClick = SpeedButton1Click
        end
        object btodos: TSpeedButton
          Left = 4
          Top = 220
          Width = 71
          Height = 22
          GroupIndex = 1
          Down = True
          Caption = 'Todos...'
          OnClick = SpeedButton1Click
        end
      end
      object DBGrid6: TDBGrid
        Left = 0
        Top = 0
        Width = 588
        Height = 309
        Align = alClient
        Color = clInfoBk
        DataSource = dsListado
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = DBGrid6DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'cli_codigo'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cli_carnet_club'
            Title.Alignment = taCenter
            Title.Caption = '# Carnet'
            Width = 99
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cli_nombre'
            Title.Caption = 'Nombre'
            Width = 157
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cli_apellido'
            Title.Caption = 'Apellido'
            Width = 166
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cli_telefono'
            Title.Alignment = taCenter
            Title.Caption = 'Tel'#233'fono'
            Width = 75
            Visible = True
          end>
      end
      object Memo1: TMemo
        Left = 16
        Top = 240
        Width = 441
        Height = 49
        Lines.Strings = (
          'Memo1')
        TabOrder = 2
        Visible = False
      end
    end
  end
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 676
    Height = 42
    AutoSize = True
    Bands = <
      item
        Control = ToolBar1
        ImageIndex = -1
        MinHeight = 38
        Width = 672
      end>
    object ToolBar1: TToolBar
      Left = 9
      Top = 0
      Width = 659
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
  object QClientes: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    BeforePost = QClientesBeforePost
    AfterPost = QClientesAfterPost
    OnNewRecord = QClientesNewRecord
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
        Name = 'cli'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'emp_codigo, cli_carnet_club, cli_nombre, cli_apellido,'
      'cli_cedula, cli_telefono, cli_celular, cli_status,'
      'cli_fecha_nacimiento, cli_fecha_entrada, cli_monto_acumulado,'
      'cli_puntos_acumulado, cli_ultima_compra, usu_codigo,'
      'suc_codigo, cli_codigo, cli_depende, cli_direccion1,'
      
        'cli_direccion2, cli_localidad, cli_balance_ptos, cli_balance_mto' +
        ','
      'cli_puntos_principal, cli_monto_principal, cli_puntos_depen,'
      'cli_monto_depen'
      'from'
      'cliente_club'
      'where'
      'emp_codigo = :emp_codigo'
      'and cli_codigo = :cli')
    Left = 496
    Top = 184
    object QClientesemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QClientescli_nombre: TStringField
      FieldName = 'cli_nombre'
      Size = 60
    end
    object QClientescli_apellido: TStringField
      FieldName = 'cli_apellido'
      Size = 60
    end
    object QClientescli_cedula: TStringField
      FieldName = 'cli_cedula'
      OnChange = QClientescli_cedulaChange
      EditMask = 'ccc-ccccccc-c'
      Size = 13
    end
    object QClientescli_telefono: TStringField
      FieldName = 'cli_telefono'
      Size = 13
    end
    object QClientescli_celular: TStringField
      FieldName = 'cli_celular'
      Size = 13
    end
    object QClientescli_status: TStringField
      FieldName = 'cli_status'
      Size = 3
    end
    object QClientescli_fecha_nacimiento: TDateTimeField
      FieldName = 'cli_fecha_nacimiento'
    end
    object QClientescli_fecha_entrada: TDateTimeField
      FieldName = 'cli_fecha_entrada'
    end
    object QClientescli_monto_acumulado: TBCDField
      FieldName = 'cli_monto_acumulado'
      Precision = 15
      Size = 2
    end
    object QClientescli_puntos_acumulado: TBCDField
      FieldName = 'cli_puntos_acumulado'
      Precision = 15
      Size = 2
    end
    object QClientescli_ultima_compra: TDateTimeField
      FieldName = 'cli_ultima_compra'
    end
    object QClientesusu_codigo: TIntegerField
      FieldName = 'usu_codigo'
    end
    object QClientessuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object QClientescli_codigo: TIntegerField
      FieldName = 'cli_codigo'
    end
    object QClientescli_direccion1: TStringField
      FieldName = 'cli_direccion1'
      Size = 80
    end
    object QClientescli_direccion2: TStringField
      FieldName = 'cli_direccion2'
      Size = 80
    end
    object QClientescli_localidad: TStringField
      FieldName = 'cli_localidad'
      Size = 80
    end
    object QClientescli_balance_ptos: TBCDField
      FieldName = 'cli_balance_ptos'
      currency = True
      Precision = 15
      Size = 2
    end
    object QClientescli_balance_mto: TBCDField
      FieldName = 'cli_balance_mto'
      currency = True
      Precision = 15
      Size = 2
    end
    object QClientescli_puntos_principal: TBCDField
      FieldName = 'cli_puntos_principal'
      currency = True
      Precision = 15
      Size = 2
    end
    object QClientescli_monto_principal: TBCDField
      FieldName = 'cli_monto_principal'
      currency = True
      Precision = 15
      Size = 2
    end
    object QClientescli_puntos_depen: TBCDField
      FieldName = 'cli_puntos_depen'
      currency = True
      Precision = 15
      Size = 2
    end
    object QClientescli_monto_depen: TBCDField
      FieldName = 'cli_monto_depen'
      currency = True
      Precision = 15
      Size = 2
    end
    object QClientescli_depende: TIntegerField
      FieldName = 'cli_depende'
    end
    object QClientescli_carnet_club: TStringField
      FieldName = 'cli_carnet_club'
    end
  end
  object dsClientes: TDataSource
    DataSet = QClientes
    OnStateChange = dsClientesStateChange
    Left = 528
    Top = 184
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
      's.suc_codigo, s.suc_nombre, s.alm_codigo, s.emp_codigo'
      'from'
      'sucursales s, sucursal_acceso a'
      'where'
      's.emp_codigo = a.emp_codigo'
      'and s.suc_codigo = a.suc_codigo'
      'and a.emp_codigo = :emp_codigo'
      'and a.usu_codigo = :usu'
      'order by s.suc_codigo')
    Left = 496
    Top = 216
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
    object QSucursalemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
  end
  object dsSuc: TDataSource
    DataSet = QSucursal
    Left = 528
    Top = 216
  end
  object QBonos: TADOQuery
    Connection = DM.ADOSigma
    DataSource = dsClientes
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
        Name = 'cli_codigo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'bon_numero, bon_fecha, bon_monto, bon_status,'
      'suc_codigo, emp_codigo'
      'from'
      'bono_club'
      'where'
      'emp_codigo = :emp_codigo'
      'and cli_codigo = :cli_codigo'
      'order by '
      'bon_fecha')
    Left = 496
    Top = 248
    object QBonosbon_numero: TStringField
      FieldName = 'bon_numero'
      Size = 30
    end
    object QBonosbon_fecha: TDateTimeField
      FieldName = 'bon_fecha'
    end
    object QBonosbon_monto: TBCDField
      FieldName = 'bon_monto'
      currency = True
      Precision = 15
      Size = 2
    end
    object QBonosbon_status: TStringField
      FieldName = 'bon_status'
      Size = 3
    end
    object QBonossuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object QBonosemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
  end
  object dsBonos: TDataSource
    DataSet = QBonos
    Left = 528
    Top = 248
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
      'emp_codigo, cli_carnet_club, cli_nombre, cli_apellido,'
      'cli_cedula, cli_telefono, cli_celular, cli_status,'
      'cli_fecha_nacimiento, cli_fecha_entrada, cli_monto_acumulado,'
      'cli_puntos_acumulado, cli_ultima_compra, usu_codigo,'
      'suc_codigo, cli_codigo, cli_depende, cli_direccion1,'
      
        'cli_direccion2, cli_localidad, cli_balance_ptos, cli_balance_mto' +
        ','
      'cli_puntos_principal, cli_monto_principal, cli_puntos_depen,'
      'cli_monto_depen'
      'from'
      'cliente_club'
      'where'
      'emp_codigo = :emp_codigo')
    Left = 496
    Top = 152
    object QListadoemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QListadocli_nombre: TStringField
      FieldName = 'cli_nombre'
      Size = 60
    end
    object QListadocli_apellido: TStringField
      FieldName = 'cli_apellido'
      Size = 60
    end
    object QListadocli_cedula: TStringField
      FieldName = 'cli_cedula'
      Size = 13
    end
    object QListadocli_telefono: TStringField
      FieldName = 'cli_telefono'
      Size = 13
    end
    object QListadocli_celular: TStringField
      FieldName = 'cli_celular'
      Size = 13
    end
    object QListadocli_status: TStringField
      FieldName = 'cli_status'
      Size = 3
    end
    object QListadocli_fecha_nacimiento: TDateTimeField
      FieldName = 'cli_fecha_nacimiento'
    end
    object QListadocli_fecha_entrada: TDateTimeField
      FieldName = 'cli_fecha_entrada'
    end
    object QListadocli_monto_acumulado: TBCDField
      FieldName = 'cli_monto_acumulado'
      Precision = 15
      Size = 2
    end
    object QListadocli_puntos_acumulado: TBCDField
      FieldName = 'cli_puntos_acumulado'
      Precision = 15
      Size = 2
    end
    object QListadocli_ultima_compra: TDateTimeField
      FieldName = 'cli_ultima_compra'
    end
    object QListadousu_codigo: TIntegerField
      FieldName = 'usu_codigo'
    end
    object QListadosuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object QListadocli_codigo: TIntegerField
      FieldName = 'cli_codigo'
    end
    object QListadocli_direccion1: TStringField
      FieldName = 'cli_direccion1'
      Size = 80
    end
    object QListadocli_direccion2: TStringField
      FieldName = 'cli_direccion2'
      Size = 80
    end
    object QListadocli_localidad: TStringField
      FieldName = 'cli_localidad'
      Size = 80
    end
    object QListadocli_balance_ptos: TBCDField
      FieldName = 'cli_balance_ptos'
      currency = True
      Precision = 15
      Size = 2
    end
    object QListadocli_balance_mto: TBCDField
      FieldName = 'cli_balance_mto'
      currency = True
      Precision = 15
      Size = 2
    end
    object QListadocli_puntos_principal: TBCDField
      FieldName = 'cli_puntos_principal'
      currency = True
      Precision = 15
      Size = 2
    end
    object QListadocli_monto_principal: TBCDField
      FieldName = 'cli_monto_principal'
      currency = True
      Precision = 15
      Size = 2
    end
    object QListadocli_puntos_depen: TBCDField
      FieldName = 'cli_puntos_depen'
      currency = True
      Precision = 15
      Size = 2
    end
    object QListadocli_monto_depen: TBCDField
      FieldName = 'cli_monto_depen'
      currency = True
      Precision = 15
      Size = 2
    end
    object QListadocli_depende: TIntegerField
      FieldName = 'cli_depende'
    end
    object QListadocli_carnet_club: TStringField
      FieldName = 'cli_carnet_club'
    end
  end
  object dsListado: TDataSource
    DataSet = QListado
    Left = 528
    Top = 152
  end
  object Search: TQrySearchDlgADO
    Title = 'Listado de Clientes'
    ResultField = 'cli_codigo'
    Query.Strings = (
      'select cli_nombre, cli_codigo'
      'from clientes')
    AliasFields.Strings = (
      'Nombre'
      'C'#243'digo')
    AliasName = DM.ADOSigma
    Left = 576
    Top = 192
  end
  object ActionList2: TActionList
    Images = DM.ImgMant
    Left = 496
    Top = 280
    object btPrior: TAction
      Caption = 'Anterior'
      ImageIndex = 8
    end
    object btNext: TAction
      Caption = 'Pr'#243'ximo'
      ImageIndex = 9
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
end
