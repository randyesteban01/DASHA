object frmTipoEvaluacion: TfrmTipoEvaluacion
  Left = 227
  Top = 140
  BorderIcons = [biSystemMenu, biMinimize, biHelp]
  BorderStyle = bsSingle
  Caption = 'Tipo de evaluaciones'
  ClientHeight = 385
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
  object Panel2: TPanel
    Left = 8
    Top = 48
    Width = 545
    Height = 329
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
      Top = 40
      Width = 37
      Height = 13
      Caption = 'Nombre'
    end
    object Label3: TLabel
      Left = 16
      Top = 64
      Width = 92
      Height = 13
      Caption = 'Puntuacion M'#225'xima'
    end
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object btinsertares: TSpeedButton
      Left = 328
      Top = 296
      Width = 201
      Height = 22
      Caption = 'Dar mantenimiento a as preguntas'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00000000000000000000000000000000000000000000000000000000000000
        00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FF00FF00FF00FF0080000000800000008000000080000000FF00
        FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FF00FF00FF00FF0080000000800000008000000080000000FF00
        FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FF00FF00FF00FF00800000008000000080000000FF00FF000000
        00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
        0000C0C0C00000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
        000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00000000000000000000000000000000000000000000000000000000000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      OnClick = btinsertaresClick
    end
    object DBEdit2: TDBEdit
      Left = 112
      Top = 40
      Width = 297
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'tip_nombre'
      DataSource = dsTipos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit3: TDBEdit
      Left = 112
      Top = 64
      Width = 73
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'tip_puntuacion_maxima'
      DataSource = dsTipos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DBEdit1: TDBEdit
      Left = 112
      Top = 16
      Width = 73
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      DataField = 'tip_codigo'
      DataSource = dsTipos
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object StaticText1: TStaticText
      Left = 16
      Top = 96
      Width = 513
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'BANCO DE PREGUNTAS'
      Color = clInfoBk
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 3
    end
    object DBGrid1: TDBGrid
      Left = 16
      Top = 112
      Width = 513
      Height = 177
      DataSource = dsPreguntas
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 4
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'pre_secuencia'
          Title.Alignment = taCenter
          Title.Caption = 'Pregunta #'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Tipo'
          Width = 124
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'pre_descripcion'
          Title.Caption = 'Descripci'#243'n'
          Width = 231
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'pre_porciento'
          Title.Alignment = taCenter
          Title.Caption = 'Puntuaci'#243'n'
          Width = 60
          Visible = True
        end>
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
      'emp_codigo, tip_codigo, tip_nombre, tip_puntuacion_maxima'
      'from '
      'tipo_evaluacion'
      'where '
      'emp_codigo = :emp_codigo'
      'order by tip_codigo')
    Left = 448
    Top = 200
    object QTiposemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QTipostip_codigo: TIntegerField
      FieldName = 'tip_codigo'
    end
    object QTipostip_nombre: TStringField
      FieldName = 'tip_nombre'
      Size = 60
    end
    object QTipostip_puntuacion_maxima: TBCDField
      FieldName = 'tip_puntuacion_maxima'
      currency = True
      Precision = 15
      Size = 2
    end
  end
  object dsTipos: TDataSource
    AutoEdit = False
    DataSet = QTipos
    OnStateChange = dsTiposStateChange
    Left = 480
    Top = 200
  end
  object Search: TQrySearchDlgADO
    Title = 'Tipo de evaluaciones'
    ResultField = 'tip_codigo'
    Query.Strings = (
      'select fpa_nombre, fpa_codigo'
      'from formaspago')
    AliasFields.Strings = (
      'Nombre'
      'C'#243'digo')
    AliasName = DM.ADOSigma
    Left = 448
    Top = 232
  end
  object ActionList2: TActionList
    Images = DM.ImgMant
    Left = 480
    Top = 232
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
  object QPreguntas: TADOQuery
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
        Name = 'tip_codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'emp_codigo, tip_codigo, pre_secuencia,'
      'case pre_tipo'
      '  when 1 then '#39'Seleccion Multiple'#39
      '  when 2 then '#39'Falso/Verdadero'#39
      '  when 3 then '#39'Desarrollo'#39
      'end as Tipo, pre_descripcion,'
      'pre_porciento'
      'from'
      'preguntas_evaluacion'
      'where'
      'emp_codigo = :emp_codigo'
      'and tip_codigo = :tip_codigo'
      'order by'
      'pre_secuencia')
    Left = 448
    Top = 264
    object QPreguntasemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QPreguntastip_codigo: TIntegerField
      FieldName = 'tip_codigo'
    end
    object QPreguntaspre_secuencia: TIntegerField
      FieldName = 'pre_secuencia'
    end
    object QPreguntaspre_porciento: TBCDField
      FieldName = 'pre_porciento'
      Precision = 15
      Size = 2
    end
    object QPreguntasTipo: TStringField
      FieldName = 'Tipo'
      ReadOnly = True
      Size = 18
    end
    object QPreguntaspre_descripcion: TStringField
      FieldName = 'pre_descripcion'
      Size = 100
    end
  end
  object dsPreguntas: TDataSource
    DataSet = QPreguntas
    Left = 480
    Top = 264
  end
end
