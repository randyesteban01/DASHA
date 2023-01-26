object frmEvaluacionSolicitud: TfrmEvaluacionSolicitud
  Left = 105
  Top = 88
  ActiveControl = DBEdit2
  BorderIcons = [biSystemMenu, biMinimize, biHelp]
  BorderStyle = bsSingle
  Caption = 'Evaluaci'#243'n Solicitud'
  ClientHeight = 383
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
    Height = 329
    ActivePage = TabSheet1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Datos generales'
      object Label1: TLabel
        Left = 16
        Top = 16
        Width = 62
        Height = 13
        Caption = 'Evaluaci'#243'n #'
      end
      object Label2: TLabel
        Left = 16
        Top = 40
        Width = 50
        Height = 13
        Caption = 'Solicitud #'
      end
      object Label3: TLabel
        Left = 16
        Top = 64
        Width = 83
        Height = 13
        Caption = 'Fecha evaluaci'#243'n'
      end
      object Label4: TLabel
        Left = 16
        Top = 112
        Width = 38
        Height = 13
        Caption = 'Posici'#243'n'
      end
      object Label5: TLabel
        Left = 16
        Top = 136
        Width = 53
        Height = 13
        Caption = 'Puntuaci'#243'n'
      end
      object Label6: TLabel
        Left = 16
        Top = 160
        Width = 55
        Height = 13
        Caption = 'Comentario'
      end
      object Label7: TLabel
        Left = 16
        Top = 256
        Width = 63
        Height = 13
        Caption = 'Evaluado por'
      end
      object btsolicitud: TSpeedButton
        Left = 172
        Top = 40
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
        OnClick = btsolicitudClick
      end
      object Label14: TLabel
        Left = 16
        Top = 88
        Width = 40
        Height = 13
        Caption = 'Sucursal'
      end
      object DBEdit1: TDBEdit
        Left = 104
        Top = 16
        Width = 65
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        Color = clInfoBk
        DataField = 'eva_secuencia'
        DataSource = dsEvaluacion
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
        Top = 40
        Width = 65
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'sol_numero'
        DataSource = dsEvaluacion
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 104
        Top = 64
        Width = 65
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'eva_fecha'
        DataSource = dsEvaluacion
        TabOrder = 2
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 104
        Top = 112
        Width = 289
        Height = 21
        DataField = 'pos_codigo'
        DataSource = dsEvaluacion
        KeyField = 'pos_codigo'
        ListField = 'Posicion'
        ListSource = dsPosiciones
        TabOrder = 4
      end
      object DBEdit4: TDBEdit
        Left = 104
        Top = 136
        Width = 65
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'eva_puntuacion'
        DataSource = dsEvaluacion
        TabOrder = 5
      end
      object DBMemo1: TDBMemo
        Left = 104
        Top = 160
        Width = 289
        Height = 89
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'eva_comentario'
        DataSource = dsEvaluacion
        TabOrder = 6
      end
      object DBEdit5: TDBEdit
        Left = 104
        Top = 256
        Width = 289
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'eva_evaluador'
        DataSource = dsEvaluacion
        TabOrder = 7
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 104
        Top = 88
        Width = 289
        Height = 21
        DataField = 'suc_codigo'
        DataSource = dsEvaluacion
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
        TabOrder = 3
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Listado'
      ImageIndex = 1
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 529
        Height = 301
        Align = alClient
        DataSource = dsListado
        Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
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
            FieldName = 'Nombre'
            Title.Caption = 'Persona evaluada'
            Width = 199
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'eva_fecha'
            Title.Alignment = taCenter
            Title.Caption = 'Fecha'
            Width = 67
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'eva_evaluador'
            Title.Caption = 'Evaluador'
            Width = 174
            Visible = True
          end>
      end
    end
  end
  object QEvaluacion: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    BeforePost = QEvaluacionBeforePost
    AfterPost = QEvaluacionAfterPost
    AfterDelete = QEvaluacionAfterDelete
    OnNewRecord = QEvaluacionNewRecord
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
        Name = 'num'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select '
      'emp_codigo, eva_secuencia, sol_numero, suc_codigo, eva_fecha,'
      'eva_puntuacion, eva_comentario, eva_evaluador, pos_codigo'
      'from '
      'evaluacion_solicitud'
      'where'
      'emp_codigo = :emp_codigo'
      'and eva_Secuencia = :num'
      'order by eva_secuencia')
    Left = 432
    Top = 112
    object QEvaluacionemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QEvaluacioneva_secuencia: TIntegerField
      FieldName = 'eva_secuencia'
    end
    object QEvaluacionsol_numero: TIntegerField
      FieldName = 'sol_numero'
    end
    object QEvaluacionsuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object QEvaluacioneva_fecha: TDateTimeField
      FieldName = 'eva_fecha'
      EditMask = 'cc-cc-cccc'
    end
    object QEvaluacioneva_puntuacion: TBCDField
      FieldName = 'eva_puntuacion'
      Precision = 15
      Size = 2
    end
    object QEvaluacioneva_comentario: TMemoField
      FieldName = 'eva_comentario'
      BlobType = ftMemo
    end
    object QEvaluacioneva_evaluador: TStringField
      FieldName = 'eva_evaluador'
      Size = 60
    end
    object QEvaluacionpos_codigo: TIntegerField
      FieldName = 'pos_codigo'
    end
  end
  object dsEvaluacion: TDataSource
    AutoEdit = False
    DataSet = QEvaluacion
    OnStateChange = dsEvaluacionStateChange
    Left = 464
    Top = 112
  end
  object Search: TQrySearchDlgADO
    Title = 'Posiciones'
    ResultField = 'pos_codigo'
    Query.Strings = (
      'select fpa_nombre, fpa_codigo'
      'from formaspago')
    AliasFields.Strings = (
      'Nombre'
      'C'#243'digo')
    AliasName = DM.ADOSigma
    Left = 432
    Top = 144
  end
  object ActionList2: TActionList
    Images = DM.ImgMant
    Left = 464
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
  object QPosiciones: TADOQuery
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
      'p.pos_Codigo, p.cla_nombre as Posicion'
      'from'
      'niveles n, posicion_clasificacion p'
      'where'
      'p.emp_codigo = n.emp_codigo'
      'and p.pos_codigo = n.niv_codigo'
      'and p.emp_codigo = :emp_codigo'
      'order by 2')
    Left = 432
    Top = 80
    object QPosicionespos_Codigo: TIntegerField
      FieldName = 'pos_Codigo'
    end
    object QPosicionesPosicion: TStringField
      FieldName = 'Posicion'
      Size = 60
    end
  end
  object dsPosiciones: TDataSource
    DataSet = QPosiciones
    Left = 464
    Top = 80
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
      's.suc_codigo, s.suc_nombre, s.alm_codigo'
      'from'
      'sucursales s, sucursal_acceso a'
      'where'
      's.emp_codigo = a.emp_codigo'
      'and s.suc_codigo = a.suc_codigo'
      'and a.emp_codigo = :emp_codigo'
      'and a.usu_codigo = :usu'
      'order by s.suc_codigo')
    Left = 432
    Top = 176
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
  end
  object dsSuc: TDataSource
    DataSet = QSucursal
    Left = 464
    Top = 176
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
      
        'e.eva_fecha, s.sol_nombre+'#39' '#39'+s.sol_apellido_paterno+'#39' '#39'+s.sol_a' +
        'pellido_materno as Nombre,'
      'e.eva_evaluador, e.eva_secuencia'
      'from'
      'solicitud_empleo s, evaluacion_solicitud e'
      'where'
      's.emp_codigo = e.emp_codigo'
      'and s.sol_numero = e.sol_numero'
      'and e.emp_codigo = :emp_codigo'
      'order by'
      'e.eva_fecha'
      '')
    Left = 432
    Top = 208
    object QListadoeva_fecha: TDateTimeField
      FieldName = 'eva_fecha'
    end
    object QListadoNombre: TStringField
      FieldName = 'Nombre'
      ReadOnly = True
      Size = 182
    end
    object QListadoeva_evaluador: TStringField
      FieldName = 'eva_evaluador'
      Size = 60
    end
    object QListadoeva_secuencia: TIntegerField
      FieldName = 'eva_secuencia'
    end
  end
  object dsListado: TDataSource
    DataSet = QListado
    Left = 464
    Top = 208
  end
end
