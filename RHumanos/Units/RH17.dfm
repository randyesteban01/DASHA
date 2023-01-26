object frmTipoIngresos: TfrmTipoIngresos
  Left = 1221
  Top = 305
  BorderIcons = [biSystemMenu, biMinimize, biHelp]
  BorderStyle = bsSingle
  Caption = 'Tipo de ingresos'
  ClientHeight = 310
  ClientWidth = 549
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
  object PageControl1: TPageControl
    Left = 8
    Top = 48
    Width = 537
    Height = 257
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
        Left = 16
        Top = 40
        Width = 37
        Height = 13
        Caption = 'Nombre'
      end
      object Label1: TLabel
        Left = 16
        Top = 16
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
      end
      object btinsertnom: TSpeedButton
        Left = 392
        Top = 128
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
        Top = 144
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
      object btCuenta: TSpeedButton
        Left = 124
        Top = 64
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
        Left = 16
        Top = 64
        Width = 35
        Height = 13
        Caption = 'Cuenta'
      end
      object DBEdit2: TDBEdit
        Left = 64
        Top = 40
        Width = 321
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'tin_nombre'
        DataSource = dsTipo
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object DBCheckBox1: TDBCheckBox
        Left = 8
        Top = 96
        Width = 201
        Height = 17
        Caption = 'Para fines de c'#225'lculo de prestaciones'
        DataField = 'tin_prestaciones'
        DataSource = dsTipo
        TabOrder = 2
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox2: TDBCheckBox
        Left = 8
        Top = 112
        Width = 257
        Height = 17
        Caption = 'Para fines de c'#225'lculo de Inpuesto Sobre la Renta'
        DataField = 'tin_isr'
        DataSource = dsTipo
        TabOrder = 3
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox3: TDBCheckBox
        Left = 8
        Top = 128
        Width = 257
        Height = 17
        Caption = 'Para Regal'#237'a'
        DataField = 'tin_regalia'
        DataSource = dsTipo
        TabOrder = 4
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBEdit1: TDBEdit
        Left = 64
        Top = 16
        Width = 73
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        Color = clInfoBk
        DataField = 'tin_codigo'
        DataSource = dsTipo
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
      end
      object StaticText1: TStaticText
        Left = 280
        Top = 112
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
        TabOrder = 6
      end
      object StaticText2: TStaticText
        Left = 411
        Top = 112
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
        TabOrder = 7
      end
      object DBLookupListBox1: TDBLookupListBox
        Left = 280
        Top = 128
        Width = 113
        Height = 65
        BevelKind = bkFlat
        BorderStyle = bsNone
        KeyField = 'tno_codigo'
        ListField = 'tno_nombre'
        ListSource = dsTipoNomina
        TabOrder = 8
        OnClick = DBLookupListBox1Click
      end
      object DBLookupListBox2: TDBLookupListBox
        Left = 411
        Top = 128
        Width = 113
        Height = 65
        BevelKind = bkFlat
        BorderStyle = bsNone
        KeyField = 'tno_codigo'
        ListField = 'tno_nombre'
        ListSource = dsNominaIng
        TabOrder = 9
      end
      object StaticText3: TStaticText
        Left = 280
        Top = 96
        Width = 244
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Incluir ingreso en el tipo de n'#243'mina '
        Color = clActiveCaption
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 10
      end
      object tCuenta: TEdit
        Left = 148
        Top = 64
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
        TabOrder = 11
      end
      object DBEdit4: TDBEdit
        Left = 64
        Top = 64
        Width = 57
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'cat_cuenta'
        DataSource = dsTipo
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object dbchktin_afecta_AFP: TDBCheckBox
        Left = 8
        Top = 144
        Width = 137
        Height = 17
        Caption = 'Afecta AFP'
        DataField = 'tin_afecta_AFP'
        DataSource = dsTipo
        TabOrder = 12
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object dbchktin_afecta_ARS: TDBCheckBox
        Left = 8
        Top = 156
        Width = 137
        Height = 17
        Caption = 'Afecta ARS'
        DataField = 'tin_afecta_ARS'
        DataSource = dsTipo
        TabOrder = 13
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
        Height = 229
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
            FieldName = 'tin_codigo'
            Title.Caption = 'C'#243'digo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'tin_nombre'
            Title.Caption = 'Nombre'
            Visible = True
          end>
      end
    end
  end
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 549
    Height = 42
    AutoSize = True
    Bands = <
      item
        Control = ToolBar1
        ImageIndex = -1
        MinHeight = 38
        Width = 545
      end>
    object ToolBar1: TToolBar
      Left = 9
      Top = 0
      Width = 532
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
  object QTipos: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    BeforePost = QTiposBeforePost
    AfterPost = QTiposAfterPost
    AfterDelete = QTiposAfterDelete
    OnNewRecord = QTiposNewRecord
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
      
        'emp_codigo, tin_codigo, tin_nombre, tin_prestaciones, tin_isr, t' +
        'in_regalia,'
      'cat_cuenta, tin_afecta_ARS, tin_afecta_AFP'
      'from '
      'tipo_ingresos'
      'where '
      'emp_codigo = :emp_codigo'
      'order by tin_codigo')
    Left = 408
    Top = 136
    object QTipostde_afecta_ARS: TStringField
      FieldName = 'tin_afecta_ARS'
      Size = 5
    end
    object QTipostde_afecta_AFP: TStringField
      FieldName = 'tin_afecta_AFP'
      Size = 5
    end
    object QTiposemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QTipostin_codigo: TIntegerField
      FieldName = 'tin_codigo'
    end
    object QTipostin_nombre: TStringField
      FieldName = 'tin_nombre'
      Size = 60
    end
    object QTipostin_prestaciones: TStringField
      FieldName = 'tin_prestaciones'
      Size = 5
    end
    object QTipostin_isr: TStringField
      FieldName = 'tin_isr'
      Size = 5
    end
    object QTipostin_regalia: TStringField
      FieldName = 'tin_regalia'
      Size = 5
    end
    object QTiposcat_cuenta: TStringField
      FieldName = 'cat_cuenta'
      OnGetText = QTiposcat_cuentaGetText
      Size = 15
    end
  end
  object dsTipo: TDataSource
    AutoEdit = False
    DataSet = QTipos
    OnStateChange = dsTipoStateChange
    Left = 440
    Top = 136
  end
  object Search: TQrySearchDlgADO
    Title = 'Tipo de ingresos'
    ResultField = 'tin_codigo'
    Query.Strings = (
      'select fpa_nombre, fpa_codigo'
      'from formaspago')
    AliasFields.Strings = (
      'Nombre'
      'C'#243'digo')
    AliasName = DM.ADOSigma
    Left = 408
    Top = 168
  end
  object ActionList2: TActionList
    Images = DM.ImgMant
    Left = 440
    Top = 168
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
    Left = 408
    Top = 200
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
    Left = 440
    Top = 200
  end
  object dsNominaIng: TDataSource
    DataSet = QNominaIng
    Left = 440
    Top = 232
  end
  object QNominaIng: TADOQuery
    Connection = DM.ADOSigma
    DataSource = dsTipo
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
        Name = 'tin_codigo'
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
      'tipo_ingresos_nomina d, tipo_nomina t'
      'where'
      'd.emp_codigo = t.emp_codigo'
      'and d.tno_codigo = t.tno_codigo'
      'and d.emp_codigo = :emp_codigo'
      'and d.tin_codigo = :tin_codigo'
      'order by'
      'd.tno_codigo')
    Left = 408
    Top = 232
    object QNominaIngtno_nombre: TStringField
      FieldName = 'tno_nombre'
      Size = 60
    end
    object QNominaIngtno_codigo: TIntegerField
      FieldName = 'tno_codigo'
    end
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
      'tin_codigo, tin_nombre'
      'from'
      'tipo_ingresos'
      'where'
      'emp_codigo = :emp_codigo'
      'order by'
      'tin_nombre')
    Left = 408
    Top = 264
    object QListadotin_codigo: TIntegerField
      FieldName = 'tin_codigo'
    end
    object QListadotin_nombre: TStringField
      FieldName = 'tin_nombre'
      Size = 60
    end
  end
  object dsListado: TDataSource
    DataSet = QListado
    Left = 440
    Top = 264
  end
end
