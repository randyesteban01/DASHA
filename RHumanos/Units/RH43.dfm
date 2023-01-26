object frmPreguntasRespuestas: TfrmPreguntasRespuestas
  Left = 248
  Top = 409
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Preguntas y respuestas de encuentas'
  ClientHeight = 249
  ClientWidth = 593
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 593
    Height = 38
    AutoSize = True
    ButtonHeight = 36
    ButtonWidth = 50
    Caption = 'ToolBar1'
    Flat = True
    Images = DM.ImgMant
    ShowCaptions = True
    TabOrder = 0
    object ToolButton8: TToolButton
      Left = 0
      Top = 0
      Action = btPrior
    end
    object ToolButton9: TToolButton
      Left = 50
      Top = 0
      Action = btNext
    end
    object ToolButton10: TToolButton
      Left = 100
      Top = 0
      Width = 8
      Caption = 'ToolButton10'
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
    object ToolButton12: TToolButton
      Left = 374
      Top = 0
      Action = btFind
    end
    object ToolButton11: TToolButton
      Left = 424
      Top = 0
      Action = btClose
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 38
    Width = 593
    Height = 211
    ActivePage = TabSheet2
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object TabSheet2: TTabSheet
      Caption = 'Registro'
      ImageIndex = 1
      object Label1: TLabel
        Left = 8
        Top = 16
        Width = 20
        Height = 13
        Caption = 'Tipo'
      end
      object Label2: TLabel
        Left = 8
        Top = 40
        Width = 58
        Height = 13
        Caption = 'Clasificaci'#243'n'
      end
      object Label3: TLabel
        Left = 8
        Top = 64
        Width = 54
        Height = 13
        Caption = 'Descripcion'
      end
      object Label4: TLabel
        Left = 8
        Top = 88
        Width = 53
        Height = 13
        Caption = 'Puntuaci'#243'n'
      end
      object SpeedButton1: TSpeedButton
        Left = 456
        Top = 160
        Width = 121
        Height = 22
        Caption = 'Eliminar respuesta'
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
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 96
        Top = 40
        Width = 241
        Height = 21
        DataField = 'tip_codigo'
        DataSource = dsPreguntas
        KeyField = 'tip_codigo'
        ListField = 'tip_nombre'
        ListSource = dsClasif
        TabOrder = 1
      end
      object DBEdit2: TDBEdit
        Left = 96
        Top = 88
        Width = 73
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'pre_porciento'
        DataSource = dsPreguntas
        TabOrder = 3
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 96
        Top = 16
        Width = 241
        Height = 21
        DataField = 'pre_tipo'
        DataSource = dsPreguntas
        KeyField = 'codigo'
        ListField = 'nombre'
        ListSource = dsTipo
        TabOrder = 0
      end
      object StaticText1: TStaticText
        Left = 344
        Top = 0
        Width = 233
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'POSIBLES RESPUESTAS'
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
      object DBGrid1: TDBGrid
        Left = 344
        Top = 24
        Width = 233
        Height = 129
        DataSource = dsRespuestas
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 5
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnColEnter = DBGrid1ColEnter
        OnEnter = DBGrid1Enter
        OnKeyPress = DBGrid1KeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'res_descripcion'
            Title.Caption = 'Opci'#243'n'
            Width = 147
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'res_puntuacion'
            Title.Alignment = taCenter
            Title.Caption = 'Puntuaci'#243'n'
            Width = 58
            Visible = True
          end>
      end
      object DBEdit1: TDBEdit
        Left = 96
        Top = 64
        Width = 241
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'pre_descripcion'
        DataSource = dsPreguntas
        TabOrder = 2
      end
    end
  end
  object ActionList2: TActionList
    Images = DM.ImgMant
    Left = 256
    Top = 112
    object btPrior: TAction
      Caption = 'Anterior'
      ImageIndex = 8
      OnExecute = btPriorExecute
    end
    object btNext: TAction
      Caption = 'Pr'#243'ximo'
      ImageIndex = 9
      OnExecute = btNextExecute
    end
    object btInsert: TAction
      Caption = 'Insertar'
      ImageIndex = 6
      OnExecute = btInsertExecute
    end
    object btEdit: TAction
      Caption = 'Modificar'
      ImageIndex = 7
      OnExecute = btEditExecute
    end
    object btDelete: TAction
      Caption = 'Eliminar'
      Enabled = False
      ImageIndex = 1
      OnExecute = btDeleteExecute
    end
    object btPost: TAction
      Caption = 'Grabar'
      ImageIndex = 2
      OnExecute = btPostExecute
    end
    object btCancel: TAction
      Caption = 'Cancelar'
      ImageIndex = 3
      OnExecute = btCancelExecute
    end
    object btFind: TAction
      Caption = 'Buscar'
      ImageIndex = 4
    end
    object btPrint: TAction
      Caption = 'Imprimir'
      ImageIndex = 5
    end
    object btClose: TAction
      Caption = 'Salir'
      ImageIndex = 0
      OnExecute = btCloseExecute
    end
  end
  object QPreguntas: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    BeforePost = QPreguntasBeforePost
    AfterPost = QPreguntasAfterPost
    AfterDelete = QPreguntasAfterDelete
    OnNewRecord = QPreguntasNewRecord
    Parameters = <
      item
        Name = 'emp'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'tip'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'emp_codigo, tip_codigo, pre_secuencia, pre_tipo, '
      'pre_descripcion, pre_porciento'
      'from'
      'preguntas_evaluacion'
      'where'
      'emp_codigo = :emp'
      'and tip_codigo = :tip'
      'order by'
      'pre_secuencia')
    Left = 256
    Top = 144
    object QPreguntasemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QPreguntastip_codigo: TIntegerField
      FieldName = 'tip_codigo'
    end
    object QPreguntaspre_secuencia: TIntegerField
      FieldName = 'pre_secuencia'
    end
    object QPreguntaspre_tipo: TIntegerField
      FieldName = 'pre_tipo'
    end
    object QPreguntaspre_porciento: TBCDField
      FieldName = 'pre_porciento'
      Precision = 15
      Size = 2
    end
    object QPreguntaspre_descripcion: TStringField
      FieldName = 'pre_descripcion'
      Size = 100
    end
  end
  object dsPreguntas: TDataSource
    AutoEdit = False
    DataSet = QPreguntas
    OnStateChange = dsPreguntasStateChange
    Left = 288
    Top = 144
  end
  object QTipo: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select 1 as codigo, '#39'Seleccion Multiple'#39' as nombre'
      'union all'
      'select 2, '#39'Falso/Verdadero'#39
      'union all'
      'select 3, '#39'Desarrollo'#39)
    Left = 256
    Top = 176
    object QTipocodigo: TIntegerField
      FieldName = 'codigo'
      ReadOnly = True
    end
    object QTiponombre: TStringField
      FieldName = 'nombre'
      ReadOnly = True
      Size = 18
    end
  end
  object dsTipo: TDataSource
    DataSet = QTipo
    Left = 288
    Top = 176
  end
  object QClasif: TADOQuery
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
      'tip_nombre, tip_codigo'
      'from'
      'tipo_evaluacion'
      'where'
      'emp_codigo = :emp_codigo'
      'order by'
      'tip_nombre')
    Left = 256
    Top = 208
    object QClasiftip_nombre: TStringField
      FieldName = 'tip_nombre'
      Size = 60
    end
    object QClasiftip_codigo: TIntegerField
      FieldName = 'tip_codigo'
    end
  end
  object dsClasif: TDataSource
    DataSet = QClasif
    Left = 288
    Top = 208
  end
  object QRespuestas: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterInsert = QRespuestasAfterInsert
    BeforePost = QRespuestasBeforePost
    AfterPost = QRespuestasAfterPost
    BeforeDelete = QRespuestasBeforeDelete
    AfterDelete = QRespuestasAfterDelete
    OnNewRecord = QRespuestasNewRecord
    DataSource = dsPreguntas
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
      end
      item
        Name = 'pre_secuencia'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'emp_codigo, tip_codigo, pre_secuencia, res_secuencia,'
      'res_descripcion, res_puntuacion'
      'from'
      'respuestas_evaluacion'
      'where'
      'emp_codigo = :emp_codigo'
      'and tip_codigo = :tip_codigo'
      'and pre_secuencia = :pre_secuencia'
      'order by'
      'res_secuencia')
    Left = 404
    Top = 150
    object QRespuestasemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QRespuestastip_codigo: TIntegerField
      FieldName = 'tip_codigo'
    end
    object QRespuestaspre_secuencia: TIntegerField
      FieldName = 'pre_secuencia'
    end
    object QRespuestasres_secuencia: TIntegerField
      FieldName = 'res_secuencia'
    end
    object QRespuestasres_descripcion: TStringField
      FieldName = 'res_descripcion'
      Size = 60
    end
    object QRespuestasres_puntuacion: TBCDField
      FieldName = 'res_puntuacion'
      currency = True
      Precision = 18
      Size = 0
    end
  end
  object dsRespuestas: TDataSource
    DataSet = QRespuestas
    Left = 436
    Top = 150
  end
end
