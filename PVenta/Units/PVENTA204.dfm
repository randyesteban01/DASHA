object frmRepVentaGerenteProveedor: TfrmRepVentaGerenteProveedor
  Left = 256
  Top = 175
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Reporte de Variaci'#243'n en Ventas'
  ClientHeight = 415
  ClientWidth = 694
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
  OnPaint = FormPaint
  DesignSize = (
    694
    415)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 40
    Width = 19
    Height = 13
    Caption = 'A'#241'o'
  end
  object Label8: TLabel
    Left = 24
    Top = 16
    Width = 40
    Height = 13
    Caption = 'Sucursal'
  end
  object Label3: TLabel
    Left = 136
    Top = 40
    Width = 45
    Height = 13
    Caption = 'Trimestre'
  end
  object btClose: TBitBtn
    Left = 608
    Top = 384
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
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
  object cbGrupo: TRadioGroup
    Left = 367
    Top = 26
    Width = 106
    Height = 31
    Caption = 'Grupo'
    Columns = 3
    ItemIndex = 0
    Items.Strings = (
      'A'
      'B'
      'Todas')
    TabOrder = 1
    Visible = False
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 80
    Top = 16
    Width = 601
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
  end
  object cbtrimestre: TComboBox
    Left = 184
    Top = 40
    Width = 145
    Height = 21
    BevelKind = bkFlat
    Style = csDropDownList
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemHeight = 13
    ItemIndex = 0
    ParentFont = False
    TabOrder = 3
    Text = 'Enero-Marzo'
    OnChange = cbtrimestreChange
    Items.Strings = (
      'Enero-Marzo'
      'Abril-Junio'
      'Julio-Septiembre'
      'Octubre-Diciembre')
  end
  object spAno: TSpinEdit
    Left = 80
    Top = 40
    Width = 49
    Height = 22
    TabStop = False
    EditorEnabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxValue = 3000
    MinValue = 1900
    ParentFont = False
    TabOrder = 4
    Value = 1900
  end
  object btRefresh: TBitBtn
    Left = 446
    Top = 383
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Refrescar'
    TabOrder = 5
    OnClick = btRefreshClick
  end
  object PageControl1: TPageControl
    Left = 8
    Top = 64
    Width = 673
    Height = 313
    ActivePage = TabSheet1
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 6
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = 'Proveedor x Gerente'
      object btGerente: TSpeedButton
        Left = 110
        Top = 7
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
        OnClick = btGerenteClick
      end
      object Label4: TLabel
        Left = 8
        Top = 8
        Width = 39
        Height = 13
        Caption = 'Gerente'
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 32
        Width = 665
        Height = 253
        Align = alBottom
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = dsReporte
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
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
            FieldName = 'proveedor'
            Title.Caption = 'Proveedor'
            Width = 243
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'monto1'
            Title.Alignment = taCenter
            Title.Caption = 'Enero'
            Width = 77
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'monto2'
            Title.Alignment = taCenter
            Title.Caption = 'Febrero'
            Width = 77
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Variacion1'
            Title.Alignment = taCenter
            Title.Caption = 'Variaci'#243'n'
            Width = 49
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'monto3'
            Title.Alignment = taCenter
            Title.Caption = 'Marzo'
            Width = 77
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Variacion2'
            Title.Alignment = taCenter
            Title.Caption = 'Variaci'#243'n'
            Width = 48
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Total'
            Title.Alignment = taCenter
            Width = 77
            Visible = True
          end>
      end
      object edGerente: TEdit
        Left = 56
        Top = 8
        Width = 49
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnChange = edGerenteChange
        OnKeyDown = edGerenteKeyDown
      end
      object tGerente: TEdit
        Left = 136
        Top = 8
        Width = 521
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
        TabOrder = 2
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Productos x Familia'
      ImageIndex = 1
      object btFamilia: TSpeedButton
        Left = 86
        Top = 7
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
        OnClick = btFamiliaClick
      end
      object Label5: TLabel
        Left = 8
        Top = 8
        Width = 32
        Height = 13
        Caption = 'Familia'
      end
      object DBGrid2: TDBGrid
        Left = 0
        Top = 32
        Width = 665
        Height = 253
        Align = alBottom
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = dsFamilia
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
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
            FieldName = 'proveedor'
            Title.Caption = 'Producto'
            Width = 243
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'monto1'
            Title.Alignment = taCenter
            Title.Caption = 'Enero'
            Width = 77
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'monto2'
            Title.Alignment = taCenter
            Title.Caption = 'Febrero'
            Width = 77
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Variacion1'
            Title.Alignment = taCenter
            Title.Caption = 'Variaci'#243'n'
            Width = 48
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'monto3'
            Title.Alignment = taCenter
            Title.Caption = 'Marzo'
            Width = 77
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Variacion2'
            Title.Alignment = taCenter
            Title.Caption = 'Variaci'#243'n'
            Width = 49
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Total'
            Title.Alignment = taCenter
            Width = 77
            Visible = True
          end>
      end
      object tFamilia: TEdit
        Left = 112
        Top = 8
        Width = 545
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
        TabOrder = 1
      end
      object edFamilia: TEdit
        Left = 48
        Top = 8
        Width = 33
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnChange = edFamiliaChange
        OnKeyDown = edFamiliaKeyDown
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Productos x Departamento'
      ImageIndex = 2
      object btDepto: TSpeedButton
        Left = 126
        Top = 7
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
        OnClick = btDeptoClick
      end
      object Label27: TLabel
        Left = 8
        Top = 8
        Width = 69
        Height = 13
        Caption = 'Departamento'
      end
      object DBGrid3: TDBGrid
        Left = 0
        Top = 32
        Width = 665
        Height = 253
        Align = alBottom
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = dsDepto
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
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
            FieldName = 'proveedor'
            Title.Caption = 'Producto'
            Width = 243
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'monto1'
            Title.Alignment = taCenter
            Title.Caption = 'Enero'
            Width = 77
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'monto2'
            Title.Alignment = taCenter
            Title.Caption = 'Febrero'
            Width = 77
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Variacion1'
            Title.Alignment = taCenter
            Title.Caption = 'Variaci'#243'n'
            Width = 48
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'monto3'
            Title.Alignment = taCenter
            Title.Caption = 'Marzo'
            Width = 77
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Variacion2'
            Title.Alignment = taCenter
            Title.Caption = 'Variaci'#243'n'
            Width = 49
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Total'
            Title.Alignment = taCenter
            Width = 77
            Visible = True
          end>
      end
      object tDepto: TEdit
        Left = 152
        Top = 8
        Width = 505
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
        TabOrder = 1
      end
      object edDepto: TEdit
        Left = 88
        Top = 8
        Width = 33
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnChange = edDeptoChange
        OnKeyDown = edDeptoKeyDown
      end
    end
  end
  object BitBtn1: TBitBtn
    Left = 528
    Top = 384
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Imprimir'
    TabOrder = 7
    OnClick = BitBtn1Click
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF000000
      0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF0000000000FF00FF0000000000FF00FF00FF00FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF00FF0000000000FF00FF0000000000FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FFFF0000FFFF0000FF
      FF00FF00FF00FF00FF00000000000000000000000000FF00FF0000000000FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000000000000000
      0000FF00FF00FF00FF0000000000FF00FF0000000000FF00FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF00FF00FF00FF000000000000000000FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF0000000000FF00FF0000000000FF00FF0000000000FF00FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF00FF0000000000FF00FF000000000000000000FF00FF00FF00
      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FF00FF0000000000FF00FF0000000000FF00FF00FF00
      FF00FF00FF0000000000FFFFFF00000000000000000000000000000000000000
      0000FFFFFF0000000000000000000000000000000000FF00FF00FF00FF00FF00
      FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF0000000000FFFFFF000000000000000000000000000000
      000000000000FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00000000000000000000000000000000000000
      000000000000000000000000000000000000FF00FF00FF00FF00}
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
    Left = 152
    Top = 208
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
    Left = 184
    Top = 208
  end
  object Search: TQrySearchDlgADO
    AliasName = DM.ADOSigma
    Left = 152
    Top = 176
  end
  object dsReporte: TDataSource
    DataSet = QReporte
    Left = 184
    Top = 240
  end
  object QReporte: TADOQuery
    Connection = DM.ADOSigma
    OnCalcFields = QReporteCalcFields
    CommandTimeout = 0
    DataSource = DM.dsEmpresas
    Parameters = <
      item
        Name = 'emp'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'ano'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'tri'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'ger'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'select * from fn_variacion_gerente_suplidor (:emp, :ano, :tri, :' +
        'ger)')
    Left = 152
    Top = 240
    object QReportecodigo: TIntegerField
      FieldName = 'codigo'
    end
    object QReporteproveedor: TStringField
      FieldName = 'proveedor'
      Size = 80
    end
    object QReportemonto1: TBCDField
      FieldName = 'monto1'
      currency = True
      Precision = 19
    end
    object QReportemonto2: TBCDField
      FieldName = 'monto2'
      currency = True
      Precision = 19
    end
    object QReportemonto3: TBCDField
      FieldName = 'monto3'
      currency = True
      Precision = 19
    end
    object QReporteTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      currency = True
      Calculated = True
    end
    object QReporteVariacion1: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Variacion1'
      DisplayFormat = '##,###.00%'
      Calculated = True
    end
    object QReporteVariacion2: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Variacion2'
      DisplayFormat = '##,###.00%'
      Calculated = True
    end
    object QReporteVariacion3: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Variacion3'
      DisplayFormat = '##,###.00%'
      Calculated = True
    end
  end
  object QFamilia: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    OnCalcFields = QFamiliaCalcFields
    CommandTimeout = 0
    DataSource = DM.dsEmpresas
    Parameters = <
      item
        Name = 'emp'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'ano'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'tri'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'fam'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from fn_variacion_familia (:emp, :ano, :tri, :fam)')
    Left = 152
    Top = 272
    object QFamiliacodigo: TIntegerField
      FieldName = 'codigo'
    end
    object QFamiliaproveedor: TStringField
      FieldName = 'proveedor'
      Size = 80
    end
    object QFamiliamonto1: TBCDField
      FieldName = 'monto1'
      currency = True
      Precision = 19
    end
    object QFamiliamonto2: TBCDField
      FieldName = 'monto2'
      currency = True
      Precision = 19
    end
    object QFamiliamonto3: TBCDField
      FieldName = 'monto3'
      currency = True
      Precision = 19
    end
    object QFamiliaVariacion1: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Variacion1'
      currency = True
      Calculated = True
    end
    object QFamiliaVariacion2: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Variacion2'
      currency = True
      Calculated = True
    end
    object QFamiliaTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      currency = True
      Calculated = True
    end
  end
  object dsFamilia: TDataSource
    DataSet = QFamilia
    Left = 184
    Top = 272
  end
  object QDepartamento: TADOQuery
    Connection = DM.ADOSigma
    OnCalcFields = QDepartamentoCalcFields
    CommandTimeout = 0
    DataSource = DM.dsEmpresas
    Parameters = <
      item
        Name = 'emp'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'ano'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'tri'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'dep'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from fn_variacion_departamento (:emp, :ano, :tri, :dep)')
    Left = 152
    Top = 304
    object QDepartamentocodigo: TIntegerField
      FieldName = 'codigo'
    end
    object QDepartamentoproveedor: TStringField
      FieldName = 'proveedor'
      Size = 80
    end
    object QDepartamentomonto1: TBCDField
      FieldName = 'monto1'
      currency = True
      Precision = 19
    end
    object QDepartamentomonto2: TBCDField
      FieldName = 'monto2'
      currency = True
      Precision = 19
    end
    object QDepartamentomonto3: TBCDField
      FieldName = 'monto3'
      currency = True
      Precision = 19
    end
    object QDepartamentoVariacion1: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Variacion1'
      currency = True
      Calculated = True
    end
    object QDepartamentoVariacion2: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Variacion2'
      currency = True
      Calculated = True
    end
    object QDepartamentoTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      currency = True
      Calculated = True
    end
  end
  object dsDepto: TDataSource
    DataSet = QDepartamento
    Left = 184
    Top = 304
  end
end
