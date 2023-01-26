object frmPlanesSeguro: TfrmPlanesSeguro
  Left = 356
  Top = 255
  BorderIcons = [biSystemMenu, biMinimize, biHelp]
  BorderStyle = bsSingle
  Caption = 'Planes de seguros'
  ClientHeight = 255
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
  object PageControl1: TPageControl
    Left = 8
    Top = 48
    Width = 537
    Height = 201
    ActivePage = TabSheet1
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Plan de seguro'
      object Label2: TLabel
        Left = 16
        Top = 32
        Width = 37
        Height = 13
        Caption = 'Nombre'
      end
      object Label1: TLabel
        Left = 16
        Top = 8
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
      end
      object Label3: TLabel
        Left = 16
        Top = 56
        Width = 71
        Height = 13
        Caption = 'Tipo de seguro'
      end
      object bttipo: TSpeedButton
        Left = 140
        Top = 56
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
        OnClick = bttipoClick
      end
      object Label4: TLabel
        Left = 16
        Top = 80
        Width = 61
        Height = 13
        Caption = 'Tarifa b'#225'sica'
      end
      object Label5: TLabel
        Left = 238
        Top = 80
        Width = 123
        Height = 13
        Caption = '% Asumido por la empresa'
      end
      object DBEdit2: TDBEdit
        Left = 96
        Top = 32
        Width = 321
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'pla_nombre'
        DataSource = dsPlanes
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit1: TDBEdit
        Left = 96
        Top = 8
        Width = 73
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        Color = clInfoBk
        DataField = 'pla_codigo'
        DataSource = dsPlanes
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 96
        Top = 56
        Width = 41
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'tse_codigo'
        DataSource = dsPlanes
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object ttipo: TEdit
        Left = 168
        Top = 56
        Width = 249
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
        TabOrder = 3
      end
      object DBEdit4: TDBEdit
        Left = 96
        Top = 80
        Width = 73
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'pla_tarifa_basica'
        DataSource = dsPlanes
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object DBEdit5: TDBEdit
        Left = 376
        Top = 80
        Width = 41
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'pla_porciento_empresa'
        DataSource = dsPlanes
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Tarifa dependientes'
      ImageIndex = 1
      object Label6: TLabel
        Left = 16
        Top = 8
        Width = 71
        Height = 13
        Caption = 'Tipo de seguro'
      end
      object Label7: TLabel
        Left = 16
        Top = 32
        Width = 71
        Height = 13
        Caption = 'Plan de seguro'
      end
      object SpeedButton1: TSpeedButton
        Left = 264
        Top = 144
        Width = 73
        Height = 22
        Caption = 'Eliminar'
        Flat = True
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00
          FF002900DD002900DF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0008002C002100B60000000000FF00FF00FF00FF00FF00
          FF002900DE002900DF001200640000000000FF00FF00FF00FF00FF00FF00FF00
          FF00000000001D009D002900DF0019008600FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF002900DE002900DF000000000000000000FF00FF00FF00FF000000
          00002500C8002900DF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF002900DF002900DF000000000000000000000000002500
          C8002900DF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF002900DF002700D600000000002500C7002900
          DF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF002900DE002900DF002900DF000000
          0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00000000002800D8002900DF002900DF000000
          000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00000000002500C8002900DF00000000002900DF002900
          DF000400140000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00000000002500C8002900DF0000000000FF00FF00FF00FF002900
          DF002900DF0011005A000000000000000000FF00FF00FF00FF00FF00FF00FF00
          FF00000000002400C7002900DF0009002F00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF002900DF002200BB0000000000FF00FF00FF00FF00FF00FF00FF00
          FF002800D8002900DF0019008700FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF002900DC00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF002900DF002300BE0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        OnClick = SpeedButton1Click
      end
      object ttipo2: TEdit
        Left = 96
        Top = 8
        Width = 249
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
        TabOrder = 0
      end
      object DBEdit6: TDBEdit
        Left = 96
        Top = 32
        Width = 249
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        Color = clInfoBk
        DataField = 'pla_nombre'
        DataSource = dsPlanes
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object DBGrid1: TDBGrid
        Left = 16
        Top = 56
        Width = 241
        Height = 113
        DataSource = dsDepend
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnKeyPress = DBGrid1KeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'dep_cantidad'
            Title.Alignment = taCenter
            Title.Caption = 'Cantidad de personas'
            Width = 119
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dep_tarifa'
            Title.Alignment = taCenter
            Title.Caption = 'Tarifa x persona'
            Visible = True
          end>
      end
    end
  end
  object QPlanes: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    BeforePost = QPlanesBeforePost
    AfterPost = QPlanesAfterPost
    AfterDelete = QPlanesAfterDelete
    OnNewRecord = QPlanesNewRecord
    DataSource = DM.dsEmpresas
    Parameters = <
      item
        Name = 'emp_codigo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select '
      
        'emp_codigo, tse_codigo, pla_codigo, pla_nombre, pla_tarifa_basic' +
        'a, pla_porciento_empresa'
      'from'
      'planes_Seguro'
      'where'
      'emp_codigo = :emp_codigo'
      'order by tse_codigo, pla_codigo')
    Left = 440
    Top = 80
    object QPlanesemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QPlanestse_codigo: TIntegerField
      FieldName = 'tse_codigo'
      OnGetText = QPlanestse_codigoGetText
    end
    object QPlanespla_codigo: TIntegerField
      FieldName = 'pla_codigo'
    end
    object QPlanespla_nombre: TStringField
      FieldName = 'pla_nombre'
      Size = 60
    end
    object QPlanespla_tarifa_basica: TBCDField
      FieldName = 'pla_tarifa_basica'
      currency = True
      Precision = 15
      Size = 2
    end
    object QPlanespla_porciento_empresa: TBCDField
      FieldName = 'pla_porciento_empresa'
      currency = True
      Precision = 15
      Size = 2
    end
  end
  object dsPlanes: TDataSource
    AutoEdit = False
    DataSet = QPlanes
    OnStateChange = dsPlanesStateChange
    Left = 472
    Top = 80
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
    Left = 440
    Top = 112
  end
  object ActionList2: TActionList
    Images = DM.ImgMant
    Left = 472
    Top = 112
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
  object QDepend: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    BeforePost = QDependBeforePost
    AfterPost = QDependAfterPost
    AfterDelete = QDependAfterDelete
    OnNewRecord = QDependNewRecord
    DataSource = dsPlanes
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
        Name = 'tse_codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'pla_codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'tse_codigo, pla_codigo, dep_secuencia, dep_cantidad, dep_tarifa,'
      'emp_codigo'
      'from'
      'planes_dependientes'
      'where'
      'emp_codigo = :emp_codigo'
      'and tse_codigo = :tse_codigo'
      'and pla_codigo = :pla_codigo'
      'order by'
      'dep_secuencia')
    Left = 440
    Top = 144
    object QDependtse_codigo: TIntegerField
      FieldName = 'tse_codigo'
    end
    object QDependpla_codigo: TIntegerField
      FieldName = 'pla_codigo'
    end
    object QDependdep_secuencia: TIntegerField
      FieldName = 'dep_secuencia'
    end
    object QDependdep_cantidad: TIntegerField
      FieldName = 'dep_cantidad'
    end
    object QDependdep_tarifa: TBCDField
      FieldName = 'dep_tarifa'
      currency = True
      Precision = 15
      Size = 2
    end
    object QDependemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
  end
  object dsDepend: TDataSource
    DataSet = QDepend
    Left = 472
    Top = 144
  end
end
