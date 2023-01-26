object frmActivos: TfrmActivos
  Left = 678
  Top = 165
  BorderIcons = [biSystemMenu, biMinimize, biHelp]
  BorderStyle = bsSingle
  Caption = 'Activos Fijos'
  ClientHeight = 419
  ClientWidth = 554
  Color = clBtnFace
  DefaultMonitor = dmDesktop
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
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 48
    Width = 553
    Height = 369
    Ctl3D = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    object Label2: TLabel
      Left = 16
      Top = 32
      Width = 37
      Height = 13
      Caption = 'Nombre'
    end
    object btCat: TSpeedButton
      Left = 148
      Top = 80
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
      OnClick = btCatClick
    end
    object Label3: TLabel
      Left = 16
      Top = 80
      Width = 47
      Height = 13
      Caption = 'Categoria'
    end
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 33
      Height = 13
      Caption = 'Codigo'
    end
    object Label4: TLabel
      Left = 16
      Top = 56
      Width = 32
      Height = 13
      Caption = '#Serie'
    end
    object Label5: TLabel
      Left = 224
      Top = 56
      Width = 52
      Height = 13
      Caption = 'Referencia'
    end
    object btDep: TSpeedButton
      Left = 148
      Top = 104
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
      OnClick = btDepClick
    end
    object Label6: TLabel
      Left = 16
      Top = 104
      Width = 69
      Height = 13
      Caption = 'Departamento'
    end
    object btFam: TSpeedButton
      Left = 148
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
      OnClick = btFamClick
    end
    object Label7: TLabel
      Left = 16
      Top = 128
      Width = 32
      Height = 13
      Caption = 'Familia'
    end
    object btMar: TSpeedButton
      Left = 148
      Top = 152
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
      OnClick = btMarClick
    end
    object Label8: TLabel
      Left = 16
      Top = 152
      Width = 29
      Height = 13
      Caption = 'Marca'
    end
    object btProv: TSpeedButton
      Left = 148
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
      OnClick = btProvClick
    end
    object Label9: TLabel
      Left = 16
      Top = 176
      Width = 50
      Height = 13
      Caption = 'Proveedor'
    end
    object Label10: TLabel
      Left = 16
      Top = 200
      Width = 54
      Height = 13
      Caption = 'Documento'
    end
    object Label11: TLabel
      Left = 239
      Top = 200
      Width = 84
      Height = 13
      Caption = 'Fecha adquisici'#243'n'
    end
    object Label12: TLabel
      Left = 16
      Top = 224
      Width = 67
      Height = 13
      Caption = 'Costo Original'
    end
    object Label13: TLabel
      Left = 239
      Top = 224
      Width = 45
      Height = 13
      Caption = 'Ubicaci'#243'n'
    end
    object DBEdit2: TDBEdit
      Left = 88
      Top = 32
      Width = 337
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'act_nombre'
      DataSource = dsActivos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object tCat: TEdit
      Left = 172
      Top = 80
      Width = 253
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
      TabOrder = 16
    end
    object DBEdit3: TDBEdit
      Left = 88
      Top = 80
      Width = 57
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'cat_codigo'
      DataSource = dsActivos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object DBEdit1: TDBEdit
      Left = 88
      Top = 8
      Width = 145
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'act_codigo'
      DataSource = dsActivos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit4: TDBEdit
      Left = 88
      Top = 56
      Width = 129
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'act_numeroserie'
      DataSource = dsActivos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object DBEdit5: TDBEdit
      Left = 280
      Top = 56
      Width = 145
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'act_referencia'
      DataSource = dsActivos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object tDepto: TEdit
      Left = 172
      Top = 104
      Width = 253
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
      TabOrder = 17
    end
    object DBEdit6: TDBEdit
      Left = 88
      Top = 104
      Width = 57
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'dep_codigo'
      DataSource = dsActivos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object tFam: TEdit
      Left = 172
      Top = 128
      Width = 253
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
      TabOrder = 18
    end
    object DBEdit7: TDBEdit
      Left = 88
      Top = 128
      Width = 57
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'fam_codigo'
      DataSource = dsActivos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object tMarca: TEdit
      Left = 172
      Top = 152
      Width = 253
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
      TabOrder = 19
    end
    object DBEdit8: TDBEdit
      Left = 88
      Top = 152
      Width = 57
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'mar_codigo'
      DataSource = dsActivos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object tProv: TEdit
      Left = 172
      Top = 176
      Width = 253
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
      TabOrder = 20
    end
    object DBEdit9: TDBEdit
      Left = 88
      Top = 176
      Width = 57
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'sup_codigo'
      DataSource = dsActivos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object DBEdit10: TDBEdit
      Left = 88
      Top = 200
      Width = 137
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'act_documento'
      DataSource = dsActivos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
    end
    object DBEdit11: TDBEdit
      Left = 328
      Top = 200
      Width = 97
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'act_fecadquisicion'
      DataSource = dsActivos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
    end
    object DBEdit12: TDBEdit
      Left = 88
      Top = 224
      Width = 137
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'act_costoadquisicion'
      DataSource = dsActivos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
    end
    object DBRadioGroup1: TDBRadioGroup
      Left = 432
      Top = 24
      Width = 113
      Height = 73
      Caption = 'Tipo'
      DataField = 'act_tipo'
      DataSource = dsActivos
      Items.Strings = (
        'Depreciable'
        'No Depreciable')
      TabOrder = 14
      Values.Strings = (
        'D'
        'N')
    end
    object DBEdit13: TDBEdit
      Left = 288
      Top = 224
      Width = 137
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'act_ubicacion'
      DataSource = dsActivos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
    end
    object GroupBox1: TGroupBox
      Left = 1
      Top = 248
      Width = 551
      Height = 120
      Align = alBottom
      Caption = 'Datos depreciaci'#243'n'
      TabOrder = 13
      object Label14: TLabel
        Left = 15
        Top = 27
        Width = 91
        Height = 13
        Caption = 'Cantidad de Meses'
      end
      object Label15: TLabel
        Left = 285
        Top = 27
        Width = 65
        Height = 13
        Caption = 'Valor en Libro'
      end
      object Label16: TLabel
        Left = 15
        Top = 75
        Width = 116
        Height = 13
        Caption = 'Depreciaci'#243'n Acumulada'
      end
      object Label17: TLabel
        Left = 285
        Top = 51
        Width = 100
        Height = 13
        Caption = 'Depreciaci'#243'n del Mes'
      end
      object Label18: TLabel
        Left = 285
        Top = 75
        Width = 117
        Height = 13
        Caption = 'Depreciaci'#243'n del Per'#237'odo'
      end
      object Label19: TLabel
        Left = 15
        Top = 51
        Width = 67
        Height = 13
        Caption = 'Valor Residual'
      end
      object DBEdit14: TDBEdit
        Left = 136
        Top = 27
        Width = 137
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'act_meses'
        DataSource = dsActivos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit15: TDBEdit
        Left = 408
        Top = 27
        Width = 137
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = clInfoBk
        DataField = 'act_valorlibro'
        DataSource = dsActivos
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
      end
      object DBEdit16: TDBEdit
        Left = 136
        Top = 75
        Width = 137
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = clInfoBk
        DataField = 'act_depresiacionacumulada'
        DataSource = dsActivos
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
      object DBEdit17: TDBEdit
        Left = 408
        Top = 51
        Width = 137
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = clInfoBk
        DataField = 'act_depresiacionmes'
        DataSource = dsActivos
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 4
      end
      object DBEdit18: TDBEdit
        Left = 408
        Top = 74
        Width = 137
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = clInfoBk
        DataField = 'act_depresiacionactual'
        DataSource = dsActivos
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 5
      end
      object DBEdit19: TDBEdit
        Left = 136
        Top = 51
        Width = 137
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'act_valorresidual'
        DataSource = dsActivos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
    end
    object DBRadioGroup2: TDBRadioGroup
      Left = 432
      Top = 104
      Width = 113
      Height = 73
      Caption = 'Status'
      DataField = 'act_status'
      DataSource = dsActivos
      Items.Strings = (
        'Activo'
        'Descontinuado')
      TabOrder = 15
      Values.Strings = (
        'ACT'
        'DES')
    end
    object DBRadioGroup3: TDBRadioGroup
      Left = 432
      Top = 184
      Width = 113
      Height = 57
      DataField = 'act_nuevousado'
      DataSource = dsActivos
      Items.Strings = (
        'Nuevo'
        'Usado')
      TabOrder = 21
      Values.Strings = (
        'N'
        'U')
    end
  end
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 554
    Height = 42
    AutoSize = True
    Bands = <
      item
        Control = ToolBar1
        ImageIndex = -1
        MinHeight = 38
        Width = 550
      end>
    object ToolBar1: TToolBar
      Left = 9
      Top = 0
      Width = 537
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
  object QActivos: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    BeforePost = QActivosBeforePost
    AfterPost = QActivosAfterPost
    AfterDelete = QActivosAfterDelete
    OnNewRecord = QActivosNewRecord
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
      
        'emp_codigo, act_codigo, act_numeroserie, act_referencia, act_nom' +
        'bre,'
      
        'act_fecadquisicion, act_costoadquisicion, act_tasa, act_valorlib' +
        'ro,'
      'act_depresiacionacumulada, act_valorresidual, act_documento,'
      'act_depresiacionactual, act_depresiacionmes, dep_codigo,'
      'fam_codigo, mar_codigo, cat_codigo, sup_codigo, act_procedencia,'
      'act_nuevousado, usu_codigo, act_tipo, act_status, act_ubicacion,'
      'act_meses'
      'from'
      'ACTIVOS'
      'where'
      'emp_codigo = :emp_codigo'
      'order by act_codigo')
    Left = 312
    Top = 160
    object QActivosemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QActivosact_codigo: TStringField
      FieldName = 'act_codigo'
      OnChange = QActivosact_codigoChange
      Size = 15
    end
    object QActivosact_numeroserie: TStringField
      FieldName = 'act_numeroserie'
    end
    object QActivosact_referencia: TStringField
      FieldName = 'act_referencia'
    end
    object QActivosact_nombre: TStringField
      FieldName = 'act_nombre'
      Size = 80
    end
    object QActivosact_fecadquisicion: TDateTimeField
      FieldName = 'act_fecadquisicion'
      EditMask = 'cc-cc-cccc'
    end
    object QActivosact_costoadquisicion: TBCDField
      FieldName = 'act_costoadquisicion'
      currency = True
      Precision = 15
      Size = 2
    end
    object QActivosact_tasa: TBCDField
      FieldName = 'act_tasa'
      currency = True
      Precision = 15
      Size = 2
    end
    object QActivosact_valorlibro: TBCDField
      FieldName = 'act_valorlibro'
      currency = True
      Precision = 15
      Size = 2
    end
    object QActivosact_depresiacionacumulada: TBCDField
      FieldName = 'act_depresiacionacumulada'
      currency = True
      Precision = 15
      Size = 2
    end
    object QActivosact_valorresidual: TBCDField
      FieldName = 'act_valorresidual'
      currency = True
      Precision = 15
      Size = 2
    end
    object QActivosact_documento: TStringField
      FieldName = 'act_documento'
    end
    object QActivosact_depresiacionactual: TBCDField
      FieldName = 'act_depresiacionactual'
      currency = True
      Precision = 15
      Size = 2
    end
    object QActivosact_depresiacionmes: TBCDField
      FieldName = 'act_depresiacionmes'
      currency = True
      Precision = 15
      Size = 2
    end
    object QActivosdep_codigo: TIntegerField
      FieldName = 'dep_codigo'
      OnGetText = QActivosdep_codigoGetText
    end
    object QActivosfam_codigo: TIntegerField
      FieldName = 'fam_codigo'
      OnGetText = QActivosfam_codigoGetText
    end
    object QActivosmar_codigo: TIntegerField
      FieldName = 'mar_codigo'
      OnGetText = QActivosmar_codigoGetText
    end
    object QActivoscat_codigo: TIntegerField
      FieldName = 'cat_codigo'
      OnChange = QActivoscat_codigoChange
      OnGetText = QActivoscat_codigoGetText
    end
    object QActivossup_codigo: TIntegerField
      FieldName = 'sup_codigo'
      OnGetText = QActivossup_codigoGetText
    end
    object QActivosact_procedencia: TStringField
      FieldName = 'act_procedencia'
      Size = 60
    end
    object QActivosact_nuevousado: TStringField
      FieldName = 'act_nuevousado'
      Size = 1
    end
    object QActivosusu_codigo: TIntegerField
      FieldName = 'usu_codigo'
    end
    object QActivosact_tipo: TStringField
      FieldName = 'act_tipo'
      Size = 1
    end
    object QActivosact_status: TStringField
      FieldName = 'act_status'
      Size = 3
    end
    object QActivosact_ubicacion: TStringField
      FieldName = 'act_ubicacion'
      Size = 60
    end
    object QActivosact_meses: TIntegerField
      FieldName = 'act_meses'
    end
  end
  object dsActivos: TDataSource
    AutoEdit = False
    DataSet = QActivos
    OnStateChange = dsActivosStateChange
    Left = 344
    Top = 160
  end
  object Search: TQrySearchDlgADO
    Title = 'Activos fijos'
    ResultField = 'act_codigo'
    Query.Strings = (
      'select fpa_nombre, fpa_codigo'
      'from formaspago')
    AliasFields.Strings = (
      'Nombre'
      'C'#243'digo')
    AliasName = DM.ADOSigma
    Left = 312
    Top = 128
  end
  object ActionList2: TActionList
    Left = 280
    Top = 160
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
end
