object frmTipoDescuentos: TfrmTipoDescuentos
  Left = 894
  Top = 237
  BorderIcons = [biSystemMenu, biMinimize, biHelp]
  BorderStyle = bsSingle
  Caption = 'Tipos de Descuento'
  ClientHeight = 369
  ClientWidth = 552
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
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 552
    Height = 42
    AutoSize = True
    Bands = <
      item
        Control = ToolBar1
        ImageIndex = -1
        MinHeight = 38
        Width = 548
      end>
    object ToolBar1: TToolBar
      Left = 9
      Top = 0
      Width = 535
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
  object PageControl1: TPageControl
    Left = 8
    Top = 48
    Width = 537
    Height = 313
    ActivePage = TabSheet1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Registro'
      object Label2: TLabel
        Left = 8
        Top = 8
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
      end
      object Label4: TLabel
        Left = 8
        Top = 32
        Width = 37
        Height = 13
        Caption = 'Nombre'
      end
      object Label7: TLabel
        Left = 8
        Top = 56
        Width = 83
        Height = 13
        Caption = 'Forma descuento'
      end
      object Label1: TLabel
        Left = 8
        Top = 80
        Width = 29
        Height = 13
        Caption = 'Grupo'
      end
      object btinsertnom: TSpeedButton
        Left = 392
        Top = 188
        Width = 20
        Height = 19
        Glyph.Data = {
          DE000000424DDE0000000000000076000000280000000D0000000D0000000100
          0400000000006800000000000000000000001000000010000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          7000777777077777700077777700777770007777770607777000770000066077
          7000770666666607700077066666666070007706666666077000770000066077
          7000777777060777700077777700777770007777770777777000777777777777
          7000}
        OnClick = btinsertnomClick
      end
      object btdeletenom: TSpeedButton
        Left = 392
        Top = 204
        Width = 20
        Height = 19
        Glyph.Data = {
          DE000000424DDE0000000000000076000000280000000D0000000D0000000100
          0400000000006800000000000000000000001000000010000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          7000777777077777700077777007777770007777060777777000777066000007
          7000770666666607700070666666660770007706666666077000777066000007
          7000777706077777700077777007777770007777770777777000777777777777
          7000}
        OnClick = btdeletenomClick
      end
      object Label3: TLabel
        Left = 256
        Top = 8
        Width = 121
        Height = 13
        Caption = 'Secuencia para la n'#243'mina'
      end
      object Label5: TLabel
        Left = 8
        Top = 104
        Width = 89
        Height = 13
        Caption = 'Per'#237'odo descuento'
      end
      object btCuenta: TSpeedButton
        Left = 164
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
        OnClick = btCuentaClick
      end
      object Label6: TLabel
        Left = 8
        Top = 128
        Width = 35
        Height = 13
        Caption = 'Cuenta'
      end
      object DBEdit1: TDBEdit
        Left = 104
        Top = 8
        Width = 73
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        Color = clInfoBk
        DataField = 'tde_codigo'
        DataSource = dsDescuentos
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
        Left = 104
        Top = 32
        Width = 321
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'tde_nombre'
        DataSource = dsDescuentos
        TabOrder = 2
      end
      object DBLookupComboBox3: TDBLookupComboBox
        Left = 104
        Top = 56
        Width = 321
        Height = 21
        DataField = 'tde_forma'
        DataSource = dsDescuentos
        KeyField = 'codigo'
        ListField = 'Nombre'
        ListSource = dsForma
        TabOrder = 3
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 104
        Top = 80
        Width = 321
        Height = 21
        DataField = 'gru_codigo'
        DataSource = dsDescuentos
        KeyField = 'gru_codigo'
        ListField = 'gru_nombre'
        ListSource = dsGrupo
        TabOrder = 4
      end
      object DBCheckBox1: TDBCheckBox
        Left = 8
        Top = 152
        Width = 217
        Height = 17
        Caption = 'Este tipo de descuento es de Prestamo'
        DataField = 'tde_prestamo'
        DataSource = dsDescuentos
        TabOrder = 7
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object StaticText1: TStaticText
        Left = 280
        Top = 172
        Width = 113
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Tipos de Nomina'
        Color = clInfoBk
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 8
      end
      object StaticText2: TStaticText
        Left = 411
        Top = 172
        Width = 113
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Nominas Empleado'
        Color = clInfoBk
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 9
      end
      object DBLookupListBox1: TDBLookupListBox
        Left = 280
        Top = 188
        Width = 113
        Height = 65
        BevelKind = bkFlat
        BorderStyle = bsNone
        KeyField = 'tno_codigo'
        ListField = 'tno_nombre'
        ListSource = dsTipoNomina
        TabOrder = 10
        OnClick = DBLookupListBox1Click
      end
      object DBLookupListBox2: TDBLookupListBox
        Left = 411
        Top = 188
        Width = 113
        Height = 65
        BevelKind = bkFlat
        BorderStyle = bsNone
        KeyField = 'tno_codigo'
        ListField = 'tno_nombre'
        ListSource = dsNominaDesc
        TabOrder = 11
      end
      object StaticText3: TStaticText
        Left = 280
        Top = 156
        Width = 244
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Incluir descuento en el tipo de n'#243'mina '
        Color = clActiveCaption
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 12
      end
      object DBCheckBox2: TDBCheckBox
        Left = 8
        Top = 168
        Width = 265
        Height = 17
        Caption = 'Este tipo de descuento es de regal'#237'a y bonificaci'#243'n'
        DataField = 'tde_prestamo'
        DataSource = dsDescuentos
        TabOrder = 13
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox3: TDBCheckBox
        Left = 8
        Top = 184
        Width = 137
        Height = 17
        Caption = 'Visualizar en la n'#243'mina'
        DataField = 'tde_visualizar'
        DataSource = dsDescuentos
        TabOrder = 14
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBEdit3: TDBEdit
        Left = 384
        Top = 8
        Width = 41
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'tde_secuencia_nomina'
        DataSource = dsDescuentos
        TabOrder = 1
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 104
        Top = 104
        Width = 321
        Height = 21
        DataField = 'des_periodo_descuento'
        DataSource = dsDescuentos
        KeyField = 'codigo'
        ListField = 'Nombre'
        ListSource = dsPeriodo
        TabOrder = 5
      end
      object tCuenta: TEdit
        Left = 188
        Top = 128
        Width = 237
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
      object DBEdit4: TDBEdit
        Left = 104
        Top = 128
        Width = 57
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'cat_cuenta'
        DataSource = dsDescuentos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
      end
      object dbchktde_afecta_AFP: TDBCheckBox
        Left = 8
        Top = 200
        Width = 137
        Height = 17
        Caption = 'Afecta AFP'
        DataField = 'tde_afecta_AFP'
        DataSource = dsDescuentos
        TabOrder = 16
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object dbchktde_afecta_ARS: TDBCheckBox
        Left = 8
        Top = 216
        Width = 137
        Height = 17
        Caption = 'Afecta ARS'
        DataField = 'tde_afecta_ARS'
        DataSource = dsDescuentos
        TabOrder = 17
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Consulta'
      ImageIndex = 1
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 529
        Height = 285
        Align = alClient
        DataSource = dsListado
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'tde_codigo'
            Title.Caption = 'C'#243'digo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'tde_nombre'
            Title.Caption = 'Nombre'
            Width = 259
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'tde_visualizar'
            Title.Alignment = taCenter
            Title.Caption = 'Visualizar'
            Width = 54
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'tde_secuencia_nomina'
            Title.Alignment = taCenter
            Title.Caption = 'Sec.'
            Width = 31
            Visible = True
          end>
      end
    end
  end
  object QDescuentos: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    BeforePost = QDescuentosBeforePost
    AfterPost = QDescuentosAfterPost
    AfterDelete = QDescuentosAfterDelete
    OnNewRecord = QDescuentosNewRecord
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
      'select '
      'emp_codigo, tde_codigo, tde_nombre, gru_codigo, tde_prestamo,'
      
        'tde_forma, tde_regalia_bonificacion, tde_visualizar, tde_secuenc' +
        'ia_nomina,'
      
        'des_periodo_descuento, cat_cuenta, tde_afecta_ARS, tde_afecta_AF' +
        'P'
      'from'
      'tipo_descuentos'
      'where'
      'emp_codigo = :emp_codigo'
      'order by tde_codigo')
    Left = 472
    Top = 184
    object QDescuentosemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QDescuentostde_codigo: TIntegerField
      FieldName = 'tde_codigo'
    end
    object QDescuentostde_nombre: TStringField
      FieldName = 'tde_nombre'
      Size = 60
    end
    object QDescuentosgru_codigo: TIntegerField
      FieldName = 'gru_codigo'
    end
    object QDescuentostde_prestamo: TStringField
      FieldName = 'tde_prestamo'
      Size = 5
    end
    object QDescuentostde_forma: TStringField
      FieldName = 'tde_forma'
      Size = 1
    end
    object QDescuentostde_regalia_bonificacion: TStringField
      FieldName = 'tde_regalia_bonificacion'
      Size = 5
    end
    object QDescuentostde_secuencia_nomina: TIntegerField
      FieldName = 'tde_secuencia_nomina'
    end
    object QDescuentosdes_periodo_descuento: TStringField
      FieldName = 'des_periodo_descuento'
      Size = 1
    end
    object QDescuentoscat_cuenta: TStringField
      FieldName = 'cat_cuenta'
      OnGetText = QDescuentoscat_cuentaGetText
      Size = 15
    end
    object QDescuentostde_visualizar: TStringField
      FieldName = 'tde_visualizar'
      Size = 5
    end
    object QDescuentostde_afecta_ARS: TStringField
      FieldName = 'tde_afecta_ARS'
      Size = 5
    end
    object QDescuentostde_afecta_AFP: TStringField
      FieldName = 'tde_afecta_AFP'
      Size = 5
    end
  end
  object dsDescuentos: TDataSource
    AutoEdit = False
    DataSet = QDescuentos
    OnStateChange = dsDescuentosStateChange
    Left = 504
    Top = 184
  end
  object Search: TQrySearchDlgADO
    Title = 'Tipos de descuent'
    ResultField = 'tde_codigo'
    Query.Strings = (
      'select fpa_nombre, fpa_codigo'
      'from formaspago')
    AliasFields.Strings = (
      'Nombre'
      'Tipo Ingreso'
      'C'#243'digo')
    AliasName = DM.ADOSigma
    Left = 472
    Top = 152
  end
  object ActionList2: TActionList
    Images = DM.ImgMant
    Left = 504
    Top = 152
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
  object QGrupo: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
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
      'gru_codigo, gru_nombre'
      'from'
      'grupo_descuentos'
      'where'
      'emp_codigo = :emp_codigo'
      'order by 2')
    Left = 472
    Top = 88
    object QGrupogru_codigo: TIntegerField
      FieldName = 'gru_codigo'
    end
    object QGrupogru_nombre: TStringField
      FieldName = 'gru_nombre'
      Size = 60
    end
  end
  object dsGrupo: TDataSource
    DataSet = QGrupo
    Left = 504
    Top = 88
  end
  object QForma: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <>
    SQL.Strings = (
      'select'
      #39'1'#39' as codigo, '#39'Nominal'#39' as Nombre'
      'union'
      'select'
      #39'2'#39', '#39'Nominal y abono'#39)
    Left = 472
    Top = 120
    object QFormacodigo: TStringField
      FieldName = 'codigo'
      ReadOnly = True
      Size = 1
    end
    object QFormaNombre: TStringField
      FieldName = 'Nombre'
      ReadOnly = True
      Size = 19
    end
  end
  object dsForma: TDataSource
    DataSet = QForma
    Left = 504
    Top = 120
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
      'tde_codigo, tde_nombre, tde_visualizar, tde_secuencia_nomina'
      'from'
      'tipo_descuentos'
      'where'
      'emp_codigo = :emp_codigo'
      'order by'
      'tde_nombre')
    Left = 472
    Top = 216
    object QListadotde_codigo: TIntegerField
      FieldName = 'tde_codigo'
    end
    object QListadotde_nombre: TStringField
      FieldName = 'tde_nombre'
      Size = 60
    end
    object QListadotde_visualizar: TStringField
      FieldName = 'tde_visualizar'
      Size = 5
    end
    object QListadotde_secuencia_nomina: TIntegerField
      FieldName = 'tde_secuencia_nomina'
    end
  end
  object dsListado: TDataSource
    DataSet = QListado
    Left = 504
    Top = 216
  end
  object QTipoNomina: TADOQuery
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
      'tno_codigo, tno_nombre'
      'from'
      'tipo_nomina'
      'where'
      'emp_codigo = :emp_codigo'
      'order by'
      'tno_codigo')
    Left = 472
    Top = 248
    object QTipoNominatno_codigo: TIntegerField
      FieldName = 'tno_codigo'
    end
    object QTipoNominatno_nombre: TStringField
      FieldName = 'tno_nombre'
      Size = 60
    end
  end
  object dsTipoNomina: TDataSource
    DataSet = QTipoNomina
    OnDataChange = dsTipoNominaDataChange
    Left = 504
    Top = 248
  end
  object QNominaDesc: TADOQuery
    Connection = DM.ADOSigma
    DataSource = dsDescuentos
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
        Name = 'tde_codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      't.tno_nombre, d.tno_codigo'
      'from'
      'tipo_descuentos_nomina d, tipo_nomina t'
      'where'
      'd.emp_codigo = t.emp_codigo'
      'and d.tno_codigo = t.tno_codigo'
      'and d.emp_codigo = :emp_codigo'
      'and d.tde_codigo = :tde_codigo'
      'order by'
      'd.tno_codigo')
    Left = 472
    Top = 280
    object QNominaDesctno_nombre: TStringField
      FieldName = 'tno_nombre'
      Size = 60
    end
    object QNominaDesctno_codigo: TIntegerField
      FieldName = 'tno_codigo'
    end
  end
  object dsNominaDesc: TDataSource
    DataSet = QNominaDesc
    Left = 504
    Top = 280
  end
  object QPeriodo: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <>
    SQL.Strings = (
      'select'
      #39'1'#39' as codigo, '#39'Primera Quincena'#39' as Nombre'
      'union'
      'select'
      #39'2'#39', '#39'Segunda Quincena'#39
      'union'
      'select'
      #39'3'#39', '#39'Todas las Quincenas'#39)
    Left = 408
    Top = 280
    object QPeriodocodigo: TStringField
      FieldName = 'codigo'
      ReadOnly = True
      Size = 1
    end
    object QPeriodoNombre: TStringField
      FieldName = 'Nombre'
      ReadOnly = True
      Size = 19
    end
  end
  object dsPeriodo: TDataSource
    DataSet = QPeriodo
    Left = 440
    Top = 280
  end
end
