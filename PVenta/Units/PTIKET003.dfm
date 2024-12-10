object frmConsBoletos: TfrmConsBoletos
  Left = -80
  Top = 120
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Consulta de Boletos'
  ClientHeight = 542
  ClientWidth = 1288
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
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
    Top = 482
    Width = 1288
    Height = 60
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    DesignSize = (
      1288
      60)
    object lbCantidad: TLabel
      Left = 171
      Top = 2
      Width = 107
      Height = 56
      Align = alLeft
      Caption = '0 Boletos'
      Color = clBackground
      Font.Charset = ANSI_CHARSET
      Font.Color = clLime
      Font.Height = -27
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object lbTotal: TLabel
      Left = 285
      Top = 2
      Width = 82
      Height = 56
      Align = alLeft
      Caption = '0 Total'
      Color = clBackground
      Font.Charset = ANSI_CHARSET
      Font.Color = clLime
      Font.Height = -27
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object LTotal: TLabel
      Left = 278
      Top = 2
      Width = 7
      Height = 56
      Align = alLeft
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 2
      Top = 2
      Width = 169
      Height = 56
      Align = alLeft
      Caption = 'CANTIDAD : '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BitBtn1: TBitBtn
      Left = 1026
      Top = 30
      Width = 127
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Pago de Boletos'
      TabOrder = 3
      OnClick = BitBtn1Click
      Glyph.Data = {
        E6000000424DE6000000000000007600000028000000100000000E0000000100
        0400000000007000000000000000000000001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333330000000000003330777777777777033088888888899703308888888888
        870333000000000000333330FCCCCCCF03333330FFFFFFFF03333330FCCCCCCF
        03333330FFFFFFFF03333330FCCCCCCF03333330FFFFFFFF0333333000000000
        03333333333333333333}
    end
    object BitBtn2: TBitBtn
      Left = 895
      Top = 30
      Width = 127
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Listado'
      TabOrder = 0
      OnClick = BitBtn2Click
      Glyph.Data = {
        E6000000424DE6000000000000007600000028000000100000000E0000000100
        0400000000007000000000000000000000001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333330000000000003330777777777777033088888888899703308888888888
        870333000000000000333330FCCCCCCF03333330FFFFFFFF03333330FCCCCCCF
        03333330FFFFFFFF03333330FCCCCCCF03333330FFFFFFFF0333333000000000
        03333333333333333333}
    end
    object btRefresh: TBitBtn
      Left = 1156
      Top = 3
      Width = 127
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Refrescar >>'
      TabOrder = 1
      OnClick = btRefreshClick
    end
    object btClose: TBitBtn
      Left = 1158
      Top = 30
      Width = 127
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '&Salir'
      TabOrder = 2
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
    object ProgressBar1: TProgressBar
      Left = 379
      Top = 4
      Width = 202
      Height = 17
      TabOrder = 4
      Visible = False
    end
    object btnImprimir: TBitBtn
      Left = 1026
      Top = 3
      Width = 127
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Reimpresion Recibos'
      TabOrder = 5
      OnClick = btnImprimirClick
      Glyph.Data = {
        E6000000424DE6000000000000007600000028000000100000000E0000000100
        0400000000007000000000000000000000001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333330000000000003330777777777777033088888888899703308888888888
        870333000000000000333330FCCCCCCF03333330FFFFFFFF03333330FCCCCCCF
        03333330FFFFFFFF03333330FCCCCCCF03333330FFFFFFFF0333333000000000
        03333333333333333333}
    end
    object btnBalance: TBitBtn
      Left = 896
      Top = 3
      Width = 127
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Balance'
      TabOrder = 6
      OnClick = btnBalanceClick
      Glyph.Data = {
        E6000000424DE6000000000000007600000028000000100000000E0000000100
        0400000000007000000000000000000000001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333330000000000003330777777777777033088888888899703308888888888
        870333000000000000333330FCCCCCCF03333330FFFFFFFF03333330FCCCCCCF
        03333330FFFFFFFF03333330FCCCCCCF03333330FFFFFFFF0333333000000000
        03333333333333333333}
    end
    object btnReimpresionBoleto: TBitBtn
      Left = 766
      Top = 3
      Width = 127
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Reimpresion Boleto'
      TabOrder = 7
      OnClick = btnReimpresionBoletoClick
      Glyph.Data = {
        E6000000424DE6000000000000007600000028000000100000000E0000000100
        0400000000007000000000000000000000001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333330000000000003330777777777777033088888888899703308888888888
        870333000000000000333330FCCCCCCF03333330FFFFFFFF03333330FCCCCCCF
        03333330FFFFFFFF03333330FCCCCCCF03333330FFFFFFFF0333333000000000
        03333333333333333333}
    end
    object btnAnular: TBitBtn
      Left = 767
      Top = 30
      Width = 127
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Anular'
      TabOrder = 8
      OnClick = btnAnularClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
  end
  object Memo1: TMemo
    Left = 7
    Top = 0
    Width = 905
    Height = 41
    Lines.Strings = (
      'Memo1')
    TabOrder = 1
    Visible = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1288
    Height = 129
    Align = alTop
    TabOrder = 2
    object Label8: TLabel
      Left = 8
      Top = 8
      Width = 41
      Height = 13
      Caption = 'Sucursal'
    end
    object Label6: TLabel
      Left = 8
      Top = 33
      Width = 61
      Height = 13
      Caption = 'Fecha/ Hora'
    end
    object Label5: TLabel
      Left = 8
      Top = 60
      Width = 56
      Height = 13
      Caption = 'Ordenar por'
    end
    object Label1: TLabel
      Left = 11
      Top = 84
      Width = 26
      Height = 13
      Caption = 'Ficha'
    end
    object Label7: TLabel
      Left = 12
      Top = 107
      Width = 36
      Height = 13
      Caption = 'Usuario'
    end
    object SpeedButton3: TSpeedButton
      Left = 122
      Top = 104
      Width = 22
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
      OnClick = SpeedButton3Click
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 87
      Top = 8
      Width = 338
      Height = 21
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
      TabOrder = 0
      OnClick = btRefreshClick
    end
    object Fecha1: TDateTimePicker
      Left = 87
      Top = 33
      Width = 90
      Height = 21
      Date = 37506.000000000000000000
      Time = 37506.000000000000000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object Fecha2: TDateTimePicker
      Left = 261
      Top = 33
      Width = 90
      Height = 21
      Date = 37506.000000000000000000
      Time = 37506.000000000000000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object ckrango: TCheckBox
      Left = 438
      Top = 33
      Width = 80
      Height = 17
      Caption = 'Utiliza rango'
      Checked = True
      State = cbChecked
      TabOrder = 3
      OnClick = btRefreshClick
    end
    object cbOrden: TComboBox
      Left = 87
      Top = 58
      Width = 80
      Height = 21
      BevelKind = bkSoft
      Style = csDropDownList
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemHeight = 13
      ParentFont = False
      TabOrder = 4
      OnClick = btRefreshClick
      Items.Strings = (
        'Boleto'
        'Fecha'
        'Origen'
        'Destino'
        'Ficha')
    end
    object cbStatus: TRadioGroup
      Left = 525
      Top = 11
      Width = 88
      Height = 76
      Caption = '  Status  '
      ItemIndex = 0
      Items.Strings = (
        'Todos'
        'Pagado'
        'No Pagado')
      TabOrder = 5
      OnClick = btRefreshClick
    end
    object edtFicha: TEdit
      Left = 86
      Top = 82
      Width = 120
      Height = 21
      TabOrder = 6
    end
    object edUsuario: TEdit
      Left = 86
      Top = 104
      Width = 32
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnChange = edUsuarioChange
      OnKeyDown = edUsuarioKeyDown
    end
    object tUsuario: TEdit
      Left = 147
      Top = 104
      Width = 171
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
      TabOrder = 8
    end
    object Hora1: TDateTimePicker
      Left = 178
      Top = 33
      Width = 75
      Height = 21
      Date = 37506.000000000000000000
      Format = 'hh:mm tt'
      Time = 37506.000000000000000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Kind = dtkTime
      ParentFont = False
      TabOrder = 9
    end
    object Hora2: TDateTimePicker
      Left = 352
      Top = 33
      Width = 75
      Height = 21
      Date = 37506.500000000000000000
      Format = 'hh:mm tt'
      Time = 37506.500000000000000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Kind = dtkTime
      ParentFont = False
      TabOrder = 10
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 129
    Width = 1288
    Height = 353
    Align = alClient
    DataSource = dsBoletos
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnEnter = DBGrid1Enter
    Columns = <
      item
        Expanded = False
        FieldName = 'fecha'
        Title.Alignment = taCenter
        Title.Caption = 'FECHA'
        Width = 150
        Visible = True
      end
      item
        Alignment = taLeftJustify
        Expanded = False
        FieldName = 'boleto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'BOLETO'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'descripcion'
        Title.Caption = 'TIPO'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'suc_origen'
        Title.Caption = 'ORIGEN'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'suc_destino'
        Title.Caption = 'DESTINO'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'precio'
        Title.Alignment = taCenter
        Title.Caption = 'PRECIO'
        Width = 75
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'ficha_pagado'
        Title.Alignment = taCenter
        Title.Caption = 'FICHA PAG.'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fecha_pagado'
        Title.Alignment = taCenter
        Title.Caption = 'F. PAGADO'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Estado'
        Title.Alignment = taCenter
        Title.Caption = 'ESTADO'
        Width = 100
        Visible = True
      end>
  end
  object QSucursal: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
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
      
        'select s.suc_direccion, s.suc_localidad, s.suc_telefono, s.suc_r' +
        'nc,'
      's.suc_codigo, s.suc_nombre, s.alm_codigo, s.emp_codigo'
      'from'
      'sucursales s, sucursal_acceso a'
      'where'
      's.emp_codigo = a.emp_codigo'
      'and s.suc_codigo = a.suc_codigo'
      'and a.emp_codigo = :emp_codigo'
      'and a.usu_codigo = :usu'
      'order by s.suc_codigo')
    Left = 240
    Top = 200
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
    object QSucursalsuc_direccion: TStringField
      FieldName = 'suc_direccion'
      Size = 60
    end
    object QSucursalsuc_localidad: TStringField
      FieldName = 'suc_localidad'
      Size = 60
    end
    object QSucursalsuc_telefono: TStringField
      FieldName = 'suc_telefono'
      Size = 30
    end
    object QSucursalsuc_rnc: TStringField
      FieldName = 'suc_rnc'
      Size = 30
    end
  end
  object dsSuc: TDataSource
    DataSet = QSucursal
    Left = 272
    Top = 200
  end
  object Search: TQrySearchDlgADO
    AliasName = DM.ADOSigma
    Left = 208
    Top = 200
  end
  object QBoletos: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'emp'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end
      item
        Name = 'suc'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end>
    SQL.Strings = (
      ''
      
        'select b.*, so.suc_nombre suc_origen, sd.suc_nombre suc_destino,' +
        ' comentario_anulado,'
      
        'case anulado when 1 then '#39'Anulado'#39' else '#39'Vigente'#39' end as Estado ' +
        'from boleto b'
      
        'left join sucursales so on b.suc_cod_origen=so.suc_codigo and b.' +
        'emp_codigo=so.emp_codigo'
      
        'left join sucursales sd on b.suc_cod_destino=sd.suc_codigo and b' +
        '.emp_codigo=sd.emp_codigo'
      'where b.emp_codigo = :emp'
      '  and b.suc_cod_origen = :suc')
    Left = 240
    Top = 232
    object QBoletosemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
      Visible = False
    end
    object QBoletosusu_codigo: TIntegerField
      FieldName = 'usu_codigo'
      Visible = False
    end
    object QBoletosfecha: TDateTimeField
      DisplayWidth = 27
      FieldName = 'fecha'
    end
    object QBoletosboleto: TAutoIncField
      DisplayWidth = 12
      FieldName = 'boleto'
      ReadOnly = True
    end
    object QBoletoscaja: TIntegerField
      DisplayWidth = 12
      FieldName = 'caja'
      Visible = False
    end
    object QBoletossuc_cod_origen: TIntegerField
      DisplayWidth = 15
      FieldName = 'suc_cod_origen'
      Visible = False
    end
    object QBoletossuc_origen: TStringField
      FieldName = 'suc_origen'
      Size = 60
    end
    object QBoletossuc_cod_destino: TIntegerField
      DisplayWidth = 16
      FieldName = 'suc_cod_destino'
      Visible = False
    end
    object QBoletossuc_destino: TStringField
      FieldName = 'suc_destino'
      Size = 60
    end
    object QBoletosproducto: TIntegerField
      DisplayWidth = 12
      FieldName = 'producto'
      Visible = False
    end
    object QBoletosdescripcion: TStringField
      DisplayWidth = 37
      FieldName = 'descripcion'
      Size = 80
    end
    object QBoletosprecio: TBCDField
      DisplayWidth = 19
      FieldName = 'precio'
      DisplayFormat = ',0.00'
      Precision = 15
      Size = 2
    end
    object QBoletoscobrado: TBCDField
      DisplayWidth = 19
      FieldName = 'cobrado'
      Visible = False
      Precision = 15
      Size = 2
    end
    object QBoletosdevuelto: TBCDField
      DisplayWidth = 19
      FieldName = 'devuelto'
      Visible = False
      Precision = 15
      Size = 2
    end
    object QBoletosficha_pagado: TStringField
      DisplayWidth = 24
      FieldName = 'ficha_pagado'
    end
    object QBoletosfecha_pagado: TDateTimeField
      DisplayWidth = 22
      FieldName = 'fecha_pagado'
    end
    object QBoletossecuencia_rando: TWideStringField
      FieldName = 'secuencia_rando'
      FixedChar = True
      Size = 8
    end
    object QBoletosanulado: TBooleanField
      FieldName = 'anulado'
    end
    object QBoletoscomentario_anulado: TStringField
      FieldName = 'comentario_anulado'
      Size = 500
    end
    object QBoletosEstado: TStringField
      FieldName = 'Estado'
      Size = 100
    end
  end
  object dsBoletos: TDataSource
    DataSet = QBoletos
    Left = 272
    Top = 232
  end
  object QPago: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'select * from boleto ')
    Left = 240
    Top = 288
    object QPagoemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QPagousu_codigo: TIntegerField
      FieldName = 'usu_codigo'
    end
    object QPagofecha: TDateTimeField
      FieldName = 'fecha'
    end
    object QPagoboleto: TAutoIncField
      FieldName = 'boleto'
      ReadOnly = True
    end
    object QPagocaja: TIntegerField
      FieldName = 'caja'
    end
    object QPagosuc_cod_origen: TIntegerField
      FieldName = 'suc_cod_origen'
    end
    object QPagosuc_cod_destino: TIntegerField
      FieldName = 'suc_cod_destino'
    end
    object QPagoproducto: TIntegerField
      FieldName = 'producto'
    end
    object QPagodescripcion: TStringField
      FieldName = 'descripcion'
      Size = 80
    end
    object QPagoprecio: TBCDField
      FieldName = 'precio'
      DisplayFormat = ',0.00'
      Precision = 15
      Size = 2
    end
    object QPagocobrado: TBCDField
      FieldName = 'cobrado'
      Precision = 15
      Size = 2
    end
    object QPagodevuelto: TBCDField
      FieldName = 'devuelto'
      Precision = 15
      Size = 2
    end
    object QPagoficha_pagado: TStringField
      FieldName = 'ficha_pagado'
    end
    object QPagofecha_pagado: TDateTimeField
      FieldName = 'fecha_pagado'
    end
    object QPagosecuencia_rando: TWideStringField
      FieldName = 'secuencia_rando'
      FixedChar = True
      Size = 8
    end
  end
  object dsPago: TDataSource
    DataSet = QPago
    Left = 272
    Top = 288
  end
  object DB_1: TfrxDBDataset
    UserName = 'DB_1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'suc_nombre=suc_nombre'
      'suc_telefono=suc_telefono'
      'suc_direccion=suc_direccion'
      'usu_nombre=usu_nombre'
      'fecha_pagado=fecha_pagado'
      'precio=precio'
      'ficha_pagado=ficha_pagado'
      'CANT=CANT'
      'DESCRIPCION=DESCRIPCION')
    DataSet = qReporte
    BCDToCurrency = False
    Left = 256
    Top = 329
  end
  object qReporte: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <
      item
        Name = 'fecha'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'ficha'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      'declare @ficha char(10) '
      'declare @fecha datetime '
      'set DATEFORMAT ymd'
      'set @fecha = :FECHA'
      'set @ficha = :FICHA'
      
        'select s.suc_nombre, s.suc_telefono, s.suc_direccion, u.usu_nomb' +
        're, a.fecha_pagado, a.precio, a.ficha_pagado,'
      'COUNT(PRECIO) CANT, A.descripcion'
      'from boleto a '
      'inner join Empresas e on a.emp_codigo=e.emp_codigo'
      
        'inner join Sucursales s on a.suc_cod_origen=s.suc_codigo and a.e' +
        'mp_codigo=s.emp_codigo'
      'inner join Usuarios u on a.usu_codigo=u.usu_codigo'
      'where codbarra is not null and ficha_pagado is not null '
      
        'and a.ficha_pagado = @ficha and CAST(CAST(a.fecha_pagado AS CHAR' +
        '(11)) AS DATETIME) = @fecha'
      
        'GROUP BY S.suc_nombre, S.suc_telefono, S.suc_direccion, U.usu_no' +
        'mbre, A.fecha_pagado, A.PRECIO, A.ficha_pagado, A.descripcion')
    Left = 224
    Top = 328
    object qReportesuc_nombre: TStringField
      FieldName = 'suc_nombre'
      Size = 50
    end
    object qReportesuc_telefono: TStringField
      FieldName = 'suc_telefono'
      Size = 30
    end
    object qReportesuc_direccion: TStringField
      FieldName = 'suc_direccion'
      Size = 100
    end
    object qReporteusu_nombre: TStringField
      FieldName = 'usu_nombre'
      Size = 30
    end
    object qReportefecha_pagado: TDateField
      FieldName = 'fecha_pagado'
    end
    object qReporteprecio: TCurrencyField
      FieldName = 'precio'
    end
    object qReporteficha_pagado: TStringField
      FieldName = 'ficha_pagado'
      Size = 15
    end
    object qReporteCANT: TIntegerField
      FieldName = 'CANT'
    end
    object qReporteDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 50
    end
  end
  object Rpt_Reimp_Pag_Ticket: TfrxReport
    Version = '4.13.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    PrintOptions.ShowDialog = False
    ReportOptions.CreateDate = 42473.961810925900000000
    ReportOptions.LastChange = 43540.522369282410000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '       '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 292
    Top = 331
    Datasets = <
      item
        DataSet = DB_1
        DataSetName = 'DB_1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page2: TfrxReportPage
      PaperWidth = 76.200000000000000000
      PaperHeight = 160.000000000000000000
      PaperSize = 256
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object frxMemoView1: TfrxMemoView
        Top = 16.338590000000000000
        Width = 249.448980000000000000
        Height = 30.236240000000000000
        ShowHint = False
        DataField = 'suc_nombre'
        DataSet = DB_1
        DataSetName = 'DB_1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8 = (
          '[DB_1."suc_nombre"]')
        ParentFont = False
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 249.448980000000000000
        Width = 250.204886000000000000
        DataSet = DB_1
        DataSetName = 'DB_1'
        RowCount = 0
        object Memo11: TfrxMemoView
          Align = baLeft
          Left = 49.133890000000000000
          Width = 143.622140000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'DESCRIPCION'
          DataSet = DB_1
          DataSetName = 'DB_1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DB_1."DESCRIPCION"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'CANT'
          DataSet = DB_1
          DataSetName = 'DB_1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DB_1."CANT"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Align = baLeft
          Left = 192.756030000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'precio'
          DataSet = DB_1
          DataSetName = 'DB_1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DB_1."precio"]')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 170.196970000000000000
        Top = 18.897650000000000000
        Width = 250.204886000000000000
        object Memo2: TfrxMemoView
          Top = 40.677180000000000000
          Width = 249.448980000000000000
          Height = 45.354360000000000000
          ShowHint = False
          DataSet = DB_1
          DataSetName = 'DB_1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[DB_1."suc_telefono"]'
            '[DB_1."suc_direccion"]'
            '-RE IMPRESION-')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Top = 86.929190000000000000
          Width = 249.448980000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = DB_1
          DataSetName = 'DB_1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Pago de Tickets')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Top = 119.504020000000000000
          Width = 249.448980000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = DB_1
          DataSetName = 'DB_1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'FECHA PAGO: [Date] [Time]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Align = baLeft
          Top = 151.181200000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = DB_1
          DataSetName = 'DB_1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'CANT')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Align = baLeft
          Left = 49.133890000000000000
          Top = 151.181200000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = DB_1
          DataSetName = 'DB_1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'DESCRIPCION')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Align = baLeft
          Left = 192.756030000000000000
          Top = 151.181200000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = DB_1
          DataSetName = 'DB_1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'PRECIO')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        Height = 241.889920000000000000
        Top = 291.023810000000000000
        Width = 250.204886000000000000
        object Memo4: TfrxMemoView
          Top = 3.220470000000000000
          Width = 249.448980000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = DB_1
          DataSetName = 'DB_1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Cantidad Boletos: [COUNT(MasterData1)]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Top = 41.574830000000000000
          Width = 249.448980000000000000
          Height = 22.677180000000000000
          ShowHint = False
          DataSet = DB_1
          DataSetName = 'DB_1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Monto a Pagar RD$: [SUM(<DB_1."precio">,MasterData1)]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Top = 115.708720000000000000
          Width = 249.448980000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = DB_1
          DataSetName = 'DB_1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            'FICHA RECIBE([DB_1."ficha_pagado"])')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Top = 196.535560000000000000
          Width = 249.448980000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = DB_1
          DataSetName = 'DB_1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            'ENTREGADO POR: ([DB_1."usu_nombre"])')
          ParentFont = False
        end
      end
    end
  end
  object qBalance: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <
      item
        Name = 'EMP'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'SUC'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'FECHA_INICIO'
        Size = -1
        Value = Null
      end
      item
        Name = 'FECHA_FIN'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'DECLARE @fechaInicio DATETIME'
      'DECLARE @fechaFin DATETIME'
      'DECLARE @SUC INT'
      'DECLARE @EMPRESA INT '
      ''
      'SET DATEFORMAT ymd'
      'SET @EMPRESA = :EMP'
      'SET @SUC = :SUC'
      'SET @fechaInicio = :FECHA_INICIO'
      'SET @fechaFin = :FECHA_FIN'
      ''
      'SELECT '
      '    s.suc_nombre, '
      '    s.suc_telefono, '
      '    s.suc_direccion, '
      '    u.usu_nombre, '
      '    A.PRECIO,'
      '    SUM(A.PRECIO) AS TOTAL, '
      '    COUNT(PRECIO) AS CANT, '
      '    A.descripcion,'
      '    (SELECT SUM(PRECIO) '
      '     FROM BOLETO '
      '     WHERE emp_codigo = @EMPRESA '
      '       AND suc_cod_origen = @SUC '
      '       AND fecha BETWEEN @fechaInicio AND @fechaFin'
      '       AND fecha_pagado IS NOT NULL '
      '       AND DESCRIPCION = A.descripcion '
      '       AND usu_codigo = A.usu_codigo'
      '     GROUP BY USU_CODIGO) AS PAGADO,'
      '    (SELECT SUM(PRECIO) '
      '     FROM BOLETO '
      '     WHERE emp_codigo = @EMPRESA '
      '       AND suc_cod_origen = @SUC '
      '       AND fecha BETWEEN @fechaInicio AND @fechaFin'
      '       AND fecha_pagado IS NULL '
      '       AND DESCRIPCION = A.descripcion '
      '       AND usu_codigo = A.usu_codigo'
      '     GROUP BY USU_CODIGO) AS BALANCE,'
      '    A.usu_codigo'
      'FROM '
      '    BOLETO A '
      'INNER JOIN '
      '    Empresas E ON A.emp_codigo = E.emp_codigo'
      'INNER JOIN '
      
        '    Sucursales S ON A.suc_cod_origen = S.suc_codigo AND A.emp_co' +
        'digo = S.emp_codigo'
      'INNER JOIN '
      '    Usuarios U ON A.usu_codigo = U.usu_codigo'
      'WHERE '
      '    codbarra IS NOT NULL'
      '    AND A.emp_codigo = @EMPRESA '
      '    AND A.suc_cod_origen = @SUC '
      '    AND A.fecha BETWEEN @fechaInicio AND @fechaFin'
      'GROUP BY '
      '    S.suc_nombre, '
      '    S.suc_telefono, '
      '    S.suc_direccion, '
      '    U.usu_nombre, '
      '    A.PRECIO, '
      '    A.descripcion, '
      '    A.usu_codigo')
    Left = 224
    Top = 360
    object StringField1: TStringField
      FieldName = 'suc_nombre'
      Size = 50
    end
    object StringField2: TStringField
      FieldName = 'suc_telefono'
      Size = 30
    end
    object StringField3: TStringField
      FieldName = 'suc_direccion'
      Size = 100
    end
    object StringField4: TStringField
      FieldName = 'usu_nombre'
      Size = 30
    end
    object CurrencyField1: TCurrencyField
      FieldName = 'precio'
    end
    object IntegerField1: TIntegerField
      FieldName = 'CANT'
    end
    object StringField6: TStringField
      FieldName = 'DESCRIPCION'
      Size = 50
    end
    object qBalancePAGADO: TCurrencyField
      FieldName = 'PAGADO'
    end
    object qBalanceTOTAL: TCurrencyField
      FieldName = 'TOTAL'
    end
    object qBalanceBALANCE: TCurrencyField
      FieldName = 'BALANCE'
    end
  end
  object DB_Balance: TfrxDBDataset
    UserName = 'DB_Balance'
    CloseDataSource = False
    FieldAliases.Strings = (
      'suc_nombre=suc_nombre'
      'suc_telefono=suc_telefono'
      'suc_direccion=suc_direccion'
      'usu_nombre=usu_nombre'
      'precio=precio'
      'CANT=CANT'
      'DESCRIPCION=DESCRIPCION'
      'PAGADO=PAGADO'
      'TOTAL=TOTAL'
      'BALANCE=BALANCE')
    DataSet = qBalance
    BCDToCurrency = False
    Left = 256
    Top = 361
  end
  object Rpt_Balance: TfrxReport
    Version = '4.13.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43540.603361319450000000
    ReportOptions.LastChange = 43540.603361319450000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 288
    Top = 360
    Datasets = <
      item
        DataSet = DB_Balance
        DataSetName = 'DB_Balance'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 80.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 164
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 249.448980000000000000
        Width = 226.771800000000000000
        DataSet = DB_Balance
        DataSetName = 'DB_Balance'
        RowCount = 0
        object Memo11: TfrxMemoView
          Align = baLeft
          Left = 41.574830000000000000
          Width = 128.504020000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'DESCRIPCION'
          DataSet = DB_Balance
          DataSetName = 'DB_Balance'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DB_Balance."DESCRIPCION"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'CANT'
          DataSet = DB_Balance
          DataSetName = 'DB_Balance'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DB_Balance."CANT"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Align = baLeft
          Left = 170.078850000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'precio'
          DataSet = DB_Balance
          DataSetName = 'DB_Balance'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DB_Balance."precio"]')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 170.196970000000000000
        Top = 18.897650000000000000
        Width = 226.771800000000000000
        object Memo2: TfrxMemoView
          Top = 40.677180000000000000
          Width = 249.448980000000000000
          Height = 45.354360000000000000
          ShowHint = False
          DataSet = DB_1
          DataSetName = 'DB_1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[DB_Balance."suc_telefono"]'
            '[DB_Balance."suc_direccion"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Top = 86.929190000000000000
          Width = 249.448980000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = DB_1
          DataSetName = 'DB_1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Balance de Boletos')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Top = 119.504020000000000000
          Width = 249.448980000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = DB_1
          DataSetName = 'DB_1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'FECHA: [Date] [Time]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Align = baLeft
          Top = 151.181200000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = DB_1
          DataSetName = 'DB_1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'CANT')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Align = baLeft
          Left = 41.574830000000000000
          Top = 151.181200000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = DB_1
          DataSetName = 'DB_1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'DESCRIPCION')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Align = baLeft
          Left = 170.078850000000000000
          Top = 151.181200000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = DB_1
          DataSetName = 'DB_1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'PRECIO')
          ParentFont = False
        end
        object frxMemoView1: TfrxMemoView
          Top = 3.000000000000000000
          Width = 226.771800000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = DB_1
          DataSetName = 'DB_1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[DB_Balance."suc_nombre"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        Height = 313.700990000000000000
        Top = 291.023810000000000000
        Width = 226.771800000000000000
        object Memo4: TfrxMemoView
          Top = 3.220470000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = DB_1
          DataSetName = 'DB_1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Cantidad Boletos: [SUM(<DB_Balance."CANT">,MasterData1)]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Top = 42.929190000000000000
          Width = 222.992270000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = DB_1
          DataSetName = 'DB_1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Total Fact. RD$: [SUM(<DB_Balance."TOTAL">,MasterData1)]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Top = 268.346630000000000000
          Width = 222.992270000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = DB_1
          DataSetName = 'DB_1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            'PREPARADO POR: ([DB_Balance."usu_nombre"])')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Top = 61.677180000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = DB_1
          DataSetName = 'DB_1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Total Pagado RD$: [SUM(<DB_Balance."PAGADO">,MasterData1)]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Top = 166.299320000000000000
          Width = 249.448980000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = DB_1
          DataSetName = 'DB_1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            'VERIFICADO POR')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Top = 82.370130000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = DB_1
          DataSetName = 'DB_1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Bce. Caja RD$: [SUM(<DB_Balance."BALANCE">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object qry: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'boleto'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      ''
      
        'select e.emp_nombre,s.suc_telefono,s.suc_direccion,s.suc_localid' +
        'ad Terminal_origen, sd.loc_nombre Terminal_destino, b.*,'
      'u.usu_nombre, b.codbarra,'
      
        '(SELECT COUNT(BOLETO) FROM BOLETO WHERE SUC_COD_ORIGEN = B.SUC_C' +
        'OD_ORIGEN AND CAST(cast(FECHA_VALIDA as char(11)) AS DATETIME) =' +
        ' CAST(cast(B.FECHA_VALIDA as char(11)) AS DATETIME)  AND HORA_VA' +
        'LIDA = B.HORA_VALIDA AND SUC_COD_DESTINO = B.SUC_COD_DESTINO) CO' +
        'NTEO'
      '  from boleto b'
      '  left join empresas e on b.emp_codigo=e.emp_codigo'
      
        '  left join sucursales s on b.emp_codigo=s.emp_codigo and b.suc_' +
        'cod_origen=s.suc_codigo'
      
        '  left join Localidades sd on b.emp_codigo=sd.emp_codigo and b.s' +
        'uc_cod_origen=sd.suc_codigo AND b.suc_cod_destino=sd.loc_codigo'
      '  inner join usuarios u on b.usu_codigo=u.usu_codigo'
      ' where b.boleto= :boleto')
    Left = 176
    Top = 193
    object qryemp_nombre: TStringField
      FieldName = 'emp_nombre'
      Size = 60
    end
    object qrysuc_telefono: TStringField
      FieldName = 'suc_telefono'
      Size = 30
    end
    object qrysuc_direccion: TStringField
      FieldName = 'suc_direccion'
      Size = 60
    end
    object qryTerminal_origen: TStringField
      FieldName = 'Terminal_origen'
      Size = 60
    end
    object qryTerminal_destino: TStringField
      FieldName = 'Terminal_destino'
      Size = 60
    end
    object qryemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object qryusu_codigo: TIntegerField
      FieldName = 'usu_codigo'
    end
    object qryfecha: TDateTimeField
      FieldName = 'fecha'
      DisplayFormat = 'dd/mm/yyyy hh:mm'
    end
    object qryboleto: TAutoIncField
      FieldName = 'boleto'
      ReadOnly = True
    end
    object qrycaja: TIntegerField
      FieldName = 'caja'
    end
    object qrysuc_cod_origen: TIntegerField
      FieldName = 'suc_cod_origen'
    end
    object qrysuc_cod_destino: TIntegerField
      FieldName = 'suc_cod_destino'
    end
    object qryproducto: TIntegerField
      FieldName = 'producto'
    end
    object qrydescripcion: TStringField
      FieldName = 'descripcion'
      Size = 80
    end
    object qryprecio: TBCDField
      FieldName = 'precio'
      Precision = 15
      Size = 2
    end
    object qrycobrado: TBCDField
      FieldName = 'cobrado'
      Precision = 15
      Size = 2
    end
    object qrydevuelto: TBCDField
      FieldName = 'devuelto'
      Precision = 15
      Size = 2
    end
    object qryficha_pagado: TStringField
      FieldName = 'ficha_pagado'
    end
    object qryfecha_pagado: TDateTimeField
      FieldName = 'fecha_pagado'
    end
    object qrysecuencia_rando: TWideStringField
      FieldName = 'secuencia_rando'
      FixedChar = True
      Size = 8
    end
    object qryusu_nombre: TStringField
      FieldName = 'usu_nombre'
      Size = 50
    end
    object qrycodbarra: TStringField
      FieldName = 'codbarra'
      Size = 15
    end
    object qryCONTEO: TIntegerField
      FieldName = 'CONTEO'
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'DB_1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'emp_nombre=emp_nombre'
      'suc_telefono=suc_telefono'
      'suc_direccion=suc_direccion'
      'Terminal_origen=Terminal_origen'
      'Terminal_destino=Terminal_destino'
      'emp_codigo=emp_codigo'
      'usu_codigo=usu_codigo'
      'fecha=fecha'
      'boleto=boleto'
      'caja=caja'
      'suc_cod_origen=suc_cod_origen'
      'suc_cod_destino=suc_cod_destino'
      'producto=producto'
      'descripcion=descripcion'
      'precio=precio'
      'cobrado=cobrado'
      'devuelto=devuelto'
      'ficha_pagado=ficha_pagado'
      'fecha_pagado=fecha_pagado'
      'secuencia_rando=secuencia_rando'
      'usu_nombre=usu_nombre'
      'codbarra=codbarra'
      'CONTEO=CONTEO')
    DataSet = qry
    BCDToCurrency = False
    Left = 176
    Top = 233
  end
  object Rpt_Ticket: TfrxReport
    Version = '4.13.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    PrintOptions.ShowDialog = False
    ReportOptions.CreateDate = 42473.961810925900000000
    ReportOptions.LastChange = 42585.354137731500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '       '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 180
    Top = 267
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'DB_1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page2: TfrxReportPage
      PaperWidth = 76.200000000000000000
      PaperHeight = 120.000000000000000000
      PaperSize = 256
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object Rich1: TfrxRichView
        Left = -1.000000000000000000
        Width = 249.448980000000000000
        Height = 215.433210000000000000
        ShowHint = False
        GapX = 2.000000000000000000
        GapY = 1.000000000000000000
        RichEdit = {
          7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
          7569636F6D7061745C6465666C616E67313033337B5C666F6E7474626C7B5C66
          305C666E696C204D532053616E732053657269663B7D7B5C66315C6673776973
          735C6663686172736574302043616C696272693B7D7D0D0A7B5C2A5C67656E65
          7261746F722052696368656432302031302E302E31373736337D5C766965776B
          696E64345C756331200D0A5C706172645C71635C625C66305C66733330205B44
          425F312E22656D705F6E6F6D627265225D5C7061720D0A5C66733230205B4442
          5F312E227375635F74656C65666F6E6F225D5C7061720D0A5B44425F312E2273
          75635F646972656363696F6E225D5C7061720D0A5C7061720D0A0D0A5C706172
          645C66315C6C616E67373137382043414A45524F2F413A202020202020202020
          2020202020202020205C6230205B44425F312E227573755F6E6F6D627265225D
          5C625C7061720D0A5445524D494E414C204F524947454E3A2020205C6230205B
          44425F312E225465726D696E616C5F6F726967656E225D5C625C7061720D0A54
          45524D494E414C2044455354494E4F3A205C6230205B44425F312E225465726D
          696E616C5F64657374696E6F225D5C7061720D0A5C6220424F4C45544F3A2020
          2020202020202020202020202020202020202020205C6230205B44425F312E22
          434F4E54454F225D5C7061720D0A5C625C667333305C7061720D0A0D0A5C7061
          72645C71632056414C4F52205244243A20205C756C205B466F726D6174466C6F
          61742827232C302E3030272C3C44425F312E2270726563696F223E295D5C756C
          6E6F6E655C62305C66305C667331365C6C616E67313033335C7061720D0A7D0D
          0A00}
      end
      object BarCode2: TfrxBarCodeView
        Align = baCenter
        Left = 60.602443000000000000
        Top = 227.008040000000000000
        Width = 129.000000000000000000
        Height = 71.811021180000000000
        ShowHint = False
        BarType = bcCode39
        DataField = 'codbarra'
        DataSet = frxDBDataset1
        DataSetName = 'DB_1'
        Expression = '0101020042177'
        HAlign = haCenter
        Rotation = 0
        Text = '12345678'
        WideBarRatio = 2.000000000000000000
        Zoom = 1.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
      end
      object frxMemoView1: TfrxMemoView
        Left = 0.559060000000000000
        Top = 353.039580000000000000
        Width = 71.811070000000000000
        Height = 22.677180000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8 = (
          'Validez:')
        ParentFont = False
      end
      object Memo2: TfrxMemoView
        Left = 69.031540000000000000
        Top = 352.819110000000000000
        Width = 177.637910000000000000
        Height = 22.677180000000000000
        ShowHint = False
        DisplayFormat.FormatStr = 'dd/mm/yyyy'
        DisplayFormat.Kind = fkDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8 = (
          '[Date] 11:59 P.M.')
        ParentFont = False
      end
      object Memo3: TfrxMemoView
        Top = 329.039580000000000000
        Width = 71.811070000000000000
        Height = 22.677180000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8 = (
          'Fecha:')
        ParentFont = False
      end
      object Memo4: TfrxMemoView
        Left = 68.472480000000000000
        Top = 328.819110000000000000
        Width = 177.637910000000000000
        Height = 18.897650000000000000
        ShowHint = False
        StretchMode = smActualHeight
        AutoWidth = True
        DisplayFormat.FormatStr = 'dd/mm/yyyy'
        DisplayFormat.Kind = fkDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8 = (
          
            '[FormatDateTime('#39'dd/mm/yyyy'#39',<Date>)] [FormatDateTime('#39'hh:nn am/' +
            'pm'#39',<Time>)]')
        ParentFont = False
      end
    end
  end
end
