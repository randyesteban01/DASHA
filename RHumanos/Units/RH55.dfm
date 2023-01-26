object frmCalculoPrestaciones: TfrmCalculoPrestaciones
  Left = 411
  Top = 343
  BorderIcons = [biSystemMenu, biMinimize, biHelp]
  BorderStyle = bsSingle
  Caption = 'C'#225'lculo de Prestaciones'
  ClientHeight = 327
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
    Height = 273
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
      object Label1: TLabel
        Left = 8
        Top = 40
        Width = 46
        Height = 13
        Caption = 'Concepto'
      end
      object Label2: TLabel
        Left = 8
        Top = 16
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
      end
      object Label4: TLabel
        Left = 8
        Top = 64
        Width = 51
        Height = 13
        Caption = 'Mes desde'
      end
      object Label5: TLabel
        Left = 168
        Top = 64
        Width = 49
        Height = 13
        Caption = 'Mes hasta'
      end
      object Label7: TLabel
        Left = 8
        Top = 176
        Width = 60
        Height = 13
        Caption = 'D'#237'as a pagar'
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 88
        Top = 40
        Width = 217
        Height = 21
        DataField = 'pre_concepto'
        DataSource = dsPrestaciones
        KeyField = 'codigo'
        ListField = 'nombre'
        ListSource = dsConceptos
        TabOrder = 1
      end
      object DBEdit1: TDBEdit
        Left = 88
        Top = 16
        Width = 73
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        Color = clInfoBk
        DataField = 'pre_secuencia'
        DataSource = dsPrestaciones
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
        Left = 88
        Top = 64
        Width = 73
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'pre_mes_desde'
        DataSource = dsPrestaciones
        TabOrder = 2
      end
      object DBEdit3: TDBEdit
        Left = 232
        Top = 64
        Width = 73
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'pre_mes_hasta'
        DataSource = dsPrestaciones
        TabOrder = 3
      end
      object GroupBox1: TGroupBox
        Left = 88
        Top = 88
        Width = 225
        Height = 81
        Caption = 'Fecha del c'#243'digo laboral que lo establece'
        TabOrder = 4
        object Label3: TLabel
          Left = 16
          Top = 24
          Width = 61
          Height = 13
          Caption = 'Fecha desde'
        end
        object Label6: TLabel
          Left = 16
          Top = 48
          Width = 59
          Height = 13
          Caption = 'Fecha hasta'
        end
        object DBEdit4: TDBEdit
          Left = 88
          Top = 24
          Width = 73
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'pre_fecha_desde'
          DataSource = dsPrestaciones
          TabOrder = 0
        end
        object DBEdit5: TDBEdit
          Left = 88
          Top = 48
          Width = 73
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'pre_fecha_hasta'
          DataSource = dsPrestaciones
          TabOrder = 1
        end
      end
      object DBEdit6: TDBEdit
        Left = 88
        Top = 176
        Width = 73
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'pre_dias'
        DataSource = dsPrestaciones
        TabOrder = 5
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Consulta'
      ImageIndex = 1
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 529
        Height = 245
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
            FieldName = 'Concepto'
            Width = 146
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'pre_mes_desde'
            Title.Alignment = taCenter
            Title.Caption = 'Mes desde'
            Width = 57
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'pre_mes_hasta'
            Title.Alignment = taCenter
            Title.Caption = 'Mes hasta'
            Width = 56
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'pre_fecha_desde'
            Title.Alignment = taCenter
            Title.Caption = 'Fecha desde'
            Width = 68
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'pre_fecha_hasta'
            Title.Alignment = taCenter
            Title.Caption = 'Fecha hasta'
            Width = 65
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'pre_dias'
            Title.Alignment = taCenter
            Title.Caption = 'D'#237'as'
            Width = 29
            Visible = True
          end>
      end
    end
  end
  object QPrestaciones: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    BeforePost = QPrestacionesBeforePost
    AfterPost = QPrestacionesAfterPost
    AfterDelete = QPrestacionesAfterDelete
    OnNewRecord = QPrestacionesNewRecord
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
      
        'emp_codigo, pre_secuencia, pre_concepto, pre_mes_desde, pre_mes_' +
        'hasta,'
      'pre_fecha_desde, pre_fecha_hasta, pre_dias'
      'from'
      'calculo_prestaciones'
      'where'
      'emp_codigo = :emp_codigo'
      'order by'
      'pre_secuencia')
    Left = 344
    Top = 184
    object QPrestacionesemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QPrestacionespre_secuencia: TIntegerField
      FieldName = 'pre_secuencia'
    end
    object QPrestacionespre_concepto: TStringField
      FieldName = 'pre_concepto'
      Size = 1
    end
    object QPrestacionespre_mes_desde: TIntegerField
      FieldName = 'pre_mes_desde'
    end
    object QPrestacionespre_mes_hasta: TIntegerField
      FieldName = 'pre_mes_hasta'
    end
    object QPrestacionespre_fecha_desde: TDateTimeField
      FieldName = 'pre_fecha_desde'
      EditMask = 'cc-cc-cccc'
    end
    object QPrestacionespre_fecha_hasta: TDateTimeField
      FieldName = 'pre_fecha_hasta'
      EditMask = 'cc-cc-cccc'
    end
    object QPrestacionespre_dias: TIntegerField
      FieldName = 'pre_dias'
    end
  end
  object dsPrestaciones: TDataSource
    AutoEdit = False
    DataSet = QPrestaciones
    OnStateChange = dsPrestacionesStateChange
    Left = 376
    Top = 184
  end
  object Search: TQrySearchDlgADO
    Title = 'Calculo Prestaciones'
    ResultField = 'pre_secuencia'
    Query.Strings = (
      'select fpa_nombre, fpa_codigo'
      'from formaspago')
    AliasFields.Strings = (
      'Concepto'
      'Desde'
      'Hasta'
      'Codigo')
    AliasName = DM.ADOSigma
    Left = 344
    Top = 152
  end
  object ActionList2: TActionList
    Images = DM.ImgMant
    Left = 376
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
      'select '
      'emp_codigo, pre_secuencia,'
      'case pre_concepto'
      '  when '#39'B'#39' then '#39'Bonificacion'#39
      '  when '#39'C'#39' then '#39'Cesantia'#39
      '  when '#39'P'#39' then '#39'Preaviso'#39
      '  when '#39'V'#39' then '#39'Vacaciones'#39' '
      'end as Concepto, pre_mes_desde, pre_mes_hasta,'
      'pre_fecha_desde, pre_fecha_hasta, pre_dias'
      'from'
      'calculo_prestaciones'
      'where'
      'emp_codigo = :emp_codigo'
      'order by'
      'pre_secuencia'
      ''
      ''
      '')
    Left = 344
    Top = 216
    object QListadoemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QListadopre_secuencia: TIntegerField
      FieldName = 'pre_secuencia'
    end
    object QListadopre_mes_desde: TIntegerField
      FieldName = 'pre_mes_desde'
    end
    object QListadopre_mes_hasta: TIntegerField
      FieldName = 'pre_mes_hasta'
    end
    object QListadopre_fecha_desde: TDateTimeField
      FieldName = 'pre_fecha_desde'
    end
    object QListadopre_fecha_hasta: TDateTimeField
      FieldName = 'pre_fecha_hasta'
    end
    object QListadopre_dias: TIntegerField
      FieldName = 'pre_dias'
    end
    object QListadoConcepto: TStringField
      FieldName = 'Concepto'
      ReadOnly = True
      Size = 12
    end
  end
  object dsListado: TDataSource
    DataSet = QListado
    Left = 376
    Top = 216
  end
  object QConceptos: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <>
    SQL.Strings = (
      'select '#39'B'#39' as codigo, '#39'Bonificacion'#39' as nombre'
      'union'
      'select '#39'C'#39', '#39'Cesantia'#39
      'union'
      'select '#39'P'#39', '#39'Preaviso'#39
      'union'
      'select '#39'V'#39', '#39'Vacaciones'#39
      ''
      '')
    Left = 344
    Top = 120
    object QConceptoscodigo: TStringField
      FieldName = 'codigo'
      ReadOnly = True
      Size = 1
    end
    object QConceptosnombre: TStringField
      FieldName = 'nombre'
      ReadOnly = True
      Size = 12
    end
  end
  object dsConceptos: TDataSource
    DataSet = QConceptos
    Left = 376
    Top = 120
  end
end
