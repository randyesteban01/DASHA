object frmTipoHora: TfrmTipoHora
  Left = 286
  Top = 209
  BorderIcons = [biSystemMenu, biMinimize, biHelp]
  BorderStyle = bsSingle
  Caption = 'Tipo de horas trabajadas'
  ClientHeight = 269
  ClientWidth = 550
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
    Width = 550
    Height = 42
    AutoSize = True
    Bands = <
      item
        Control = ToolBar1
        ImageIndex = -1
        MinHeight = 38
        Width = 546
      end>
    object ToolBar1: TToolBar
      Left = 9
      Top = 0
      Width = 533
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
    Height = 217
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
        Top = 32
        Width = 37
        Height = 13
        Caption = 'Nombre'
      end
      object Label3: TLabel
        Left = 16
        Top = 56
        Width = 45
        Height = 13
        Caption = 'Porciento'
      end
      object Label1: TLabel
        Left = 16
        Top = 8
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
      end
      object btinsertnom: TSpeedButton
        Left = 184
        Top = 120
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
        Left = 184
        Top = 136
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
      object Label4: TLabel
        Left = 248
        Top = 56
        Width = 96
        Height = 13
        Caption = 'ORden en la n'#243'mina'
      end
      object DBEdit2: TDBEdit
        Left = 72
        Top = 32
        Width = 321
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'tho_nombre'
        DataSource = dsTipos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 72
        Top = 56
        Width = 73
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'tho_porciento'
        DataSource = dsTipos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object DBEdit1: TDBEdit
        Left = 72
        Top = 8
        Width = 73
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        Color = clInfoBk
        DataField = 'tho_codigo'
        DataSource = dsTipos
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object StaticText1: TStaticText
        Left = 72
        Top = 104
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
        TabOrder = 4
      end
      object StaticText2: TStaticText
        Left = 203
        Top = 104
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
        TabOrder = 5
      end
      object DBLookupListBox1: TDBLookupListBox
        Left = 72
        Top = 120
        Width = 113
        Height = 52
        BevelKind = bkFlat
        BorderStyle = bsNone
        KeyField = 'tno_codigo'
        ListField = 'tno_nombre'
        ListSource = dsTipoNomina
        TabOrder = 6
        OnClick = DBLookupListBox1Click
      end
      object DBLookupListBox2: TDBLookupListBox
        Left = 203
        Top = 120
        Width = 113
        Height = 52
        BevelKind = bkFlat
        BorderStyle = bsNone
        KeyField = 'tno_codigo'
        ListField = 'tno_nombre'
        ListSource = dsNominaHora
        TabOrder = 7
      end
      object StaticText3: TStaticText
        Left = 72
        Top = 88
        Width = 244
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Incluir tipo de hora en el tipo de n'#243'mina '
        Color = clActiveCaption
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 8
      end
      object DBEdit4: TDBEdit
        Left = 352
        Top = 56
        Width = 41
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'tho_orden_nomina'
        DataSource = dsTipos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Consulta'
      ImageIndex = 1
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 529
        Height = 189
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
        Columns = <
          item
            Expanded = False
            FieldName = 'tho_codigo'
            Title.Caption = 'C'#243'digo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'tho_nombre'
            Title.Caption = 'Nombre'
            Visible = True
          end>
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
      'emp_codigo, tho_codigo, tho_nombre, tho_porciento,'
      'tho_orden_nomina'
      'from '
      'tipo_horas_trabajadas'
      'where '
      'emp_codigo = :emp_codigo'
      'order by tho_codigo')
    Left = 456
    Top = 112
    object QTiposemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QTipostho_codigo: TIntegerField
      FieldName = 'tho_codigo'
    end
    object QTipostho_nombre: TStringField
      FieldName = 'tho_nombre'
      Size = 60
    end
    object QTipostho_porciento: TBCDField
      FieldName = 'tho_porciento'
      currency = True
      Precision = 15
      Size = 2
    end
    object QTipostho_orden_nomina: TIntegerField
      FieldName = 'tho_orden_nomina'
    end
  end
  object dsTipos: TDataSource
    AutoEdit = False
    DataSet = QTipos
    OnStateChange = dsTiposStateChange
    Left = 488
    Top = 112
  end
  object Search: TQrySearchDlgADO
    Title = 'Tipo de horas trabajadas'
    ResultField = 'tho_codigo'
    Query.Strings = (
      'select fpa_nombre, fpa_codigo'
      'from formaspago')
    AliasFields.Strings = (
      'Nombre'
      'C'#243'digo')
    AliasName = DM.ADOSigma
    Left = 456
    Top = 144
  end
  object ActionList2: TActionList
    Images = DM.ImgMant
    Left = 488
    Top = 144
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
  object QNominaHora: TADOQuery
    Connection = DM.ADOSigma
    DataSource = dsTipos
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
        Name = 'tho_codigo'
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
      'tipo_horas_nomina d, tipo_nomina t'
      'where'
      'd.emp_codigo = t.emp_codigo'
      'and d.tno_codigo = t.tno_codigo'
      'and d.emp_codigo = :emp_codigo'
      'and d.tho_codigo = :tho_codigo'
      'order by'
      'd.tno_codigo')
    Left = 456
    Top = 176
    object QNominaHoratno_nombre: TStringField
      FieldName = 'tno_nombre'
      Size = 60
    end
    object QNominaHoratno_codigo: TIntegerField
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
      'tho_codigo, tho_nombre'
      'from'
      'tipo_horas_trabajadas'
      'where'
      'emp_codigo = :emp_codigo'
      'order by'
      'tho_nombre')
    Left = 456
    Top = 208
    object QListadotho_codigo: TIntegerField
      FieldName = 'tho_codigo'
    end
    object QListadotho_nombre: TStringField
      FieldName = 'tho_nombre'
      Size = 60
    end
  end
  object dsListado: TDataSource
    DataSet = QListado
    Left = 488
    Top = 208
  end
  object dsNominaHora: TDataSource
    DataSet = QNominaHora
    Left = 488
    Top = 176
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
    Left = 456
    Top = 80
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
    Left = 488
    Top = 80
  end
end
