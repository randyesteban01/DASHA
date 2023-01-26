object frmRequerimientoPersonal: TfrmRequerimientoPersonal
  Left = 417
  Top = 214
  ActiveControl = DBLookupComboBox4
  BorderIcons = [biSystemMenu, biMinimize, biHelp]
  BorderStyle = bsSingle
  Caption = 'Requerimiento de Personal'
  ClientHeight = 368
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
    Left = 6
    Top = 45
    Width = 537
    Height = 316
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
        Left = 8
        Top = 56
        Width = 23
        Height = 13
        Caption = 'Nivel'
      end
      object Label2: TLabel
        Left = 8
        Top = 80
        Width = 58
        Height = 13
        Caption = 'Clasificaci'#243'n'
      end
      object Label3: TLabel
        Left = 8
        Top = 104
        Width = 64
        Height = 13
        Caption = 'Solicitado por'
      end
      object Label4: TLabel
        Left = 8
        Top = 128
        Width = 29
        Height = 13
        Caption = 'Fecha'
      end
      object Label5: TLabel
        Left = 256
        Top = 128
        Width = 56
        Height = 13
        Caption = 'Fecha l'#237'mite'
      end
      object Label6: TLabel
        Left = 8
        Top = 152
        Width = 38
        Height = 13
        Caption = 'Posici'#243'n'
      end
      object Label7: TLabel
        Left = 8
        Top = 176
        Width = 96
        Height = 13
        Caption = 'Personas solicitadas'
      end
      object Label8: TLabel
        Left = 312
        Top = 176
        Width = 31
        Height = 13
        Caption = 'Status'
      end
      object Label9: TLabel
        Left = 8
        Top = 200
        Width = 52
        Height = 13
        Caption = 'Cualidades'
      end
      object Label10: TLabel
        Left = 8
        Top = 8
        Width = 80
        Height = 13
        Caption = 'Requerimiento #'
      end
      object Label14: TLabel
        Left = 8
        Top = 32
        Width = 40
        Height = 13
        Caption = 'Sucursal'
      end
      object DBEdit1: TDBEdit
        Left = 112
        Top = 104
        Width = 289
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'req_solicitado_por'
        DataSource = dsReq
        TabOrder = 3
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 112
        Top = 56
        Width = 289
        Height = 21
        DataField = 'niv_codigo'
        DataSource = dsReq
        KeyField = 'niv_codigo'
        ListField = 'niv_nombre'
        ListSource = dsNiveles
        TabOrder = 2
      end
      object DBLookupComboBox3: TDBLookupComboBox
        Left = 112
        Top = 152
        Width = 289
        Height = 21
        DataField = 'pos_codigo'
        DataSource = dsReq
        KeyField = 'pos_codigo'
        ListField = 'cla_nombre'
        ListSource = dsPosicion
        TabOrder = 6
      end
      object DBEdit2: TDBEdit
        Left = 112
        Top = 128
        Width = 81
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'req_fecha_desde'
        DataSource = dsReq
        TabOrder = 4
      end
      object DBEdit3: TDBEdit
        Left = 320
        Top = 128
        Width = 81
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'req_fecha_hasta'
        DataSource = dsReq
        TabOrder = 5
      end
      object DBEdit4: TDBEdit
        Left = 112
        Top = 176
        Width = 81
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'req_personas'
        DataSource = dsReq
        TabOrder = 7
      end
      object DBEdit5: TDBEdit
        Left = 352
        Top = 176
        Width = 49
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        Color = clInfoBk
        DataField = 'req_status'
        DataSource = dsReq
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
      end
      object DBMemo1: TDBMemo
        Left = 112
        Top = 200
        Width = 289
        Height = 81
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'req_comentario'
        DataSource = dsReq
        TabOrder = 9
      end
      object DBEdit6: TDBEdit
        Left = 112
        Top = 8
        Width = 49
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        Color = clInfoBk
        DataField = 'req_numero'
        DataSource = dsReq
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object DBLookupComboBox4: TDBLookupComboBox
        Left = 112
        Top = 32
        Width = 289
        Height = 21
        DataField = 'suc_codigo'
        DataSource = dsReq
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
        TabOrder = 1
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 112
        Top = 80
        Width = 289
        Height = 21
        DataField = 'cla_codigo'
        DataSource = dsReq
        KeyField = 'cla_nivel'
        ListField = 'niv_nombre'
        ListSource = dsClasif
        TabOrder = 10
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Listado'
      ImageIndex = 1
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 529
        Height = 288
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
            Alignment = taCenter
            Expanded = False
            FieldName = 'req_fecha_desde'
            Title.Alignment = taCenter
            Title.Caption = 'Fecha'
            Width = 73
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Clasificacion'
            Width = 188
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Posicion'
            Width = 146
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'req_personas'
            Title.Alignment = taCenter
            Title.Caption = 'Personas'
            Width = 48
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'req_solicitado_por'
            Title.Caption = 'Solicitado por'
            Width = 133
            Visible = True
          end>
      end
    end
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
    Left = 448
    Top = 96
  end
  object ActionList2: TActionList
    Images = DM.ImgMant
    Left = 480
    Top = 96
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
  object QNiveles: TADOQuery
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
      'emp_codigo, niv_codigo, niv_nombre'
      'from'
      'niveles'
      'where'
      'emp_codigo = :emp_codigo'
      'order by'
      'niv_nombre')
    Left = 448
    Top = 160
    object QNivelesemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QNivelesniv_codigo: TIntegerField
      FieldName = 'niv_codigo'
    end
    object QNivelesniv_nombre: TStringField
      FieldName = 'niv_nombre'
      Size = 60
    end
  end
  object dsNiveles: TDataSource
    DataSet = QNiveles
    Left = 480
    Top = 160
  end
  object QClasif: TADOQuery
    Connection = DM.ADOSigma
    DataSource = dsNiveles
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
      'distinct c.emp_codigo, c.cla_nivel, n.niv_nombre'
      'from'
      'Clasificacion_Niveles c, niveles n'
      'where'
      'c.cla_nivel = n.niv_codigo'
      'and c.emp_codigo = n.emp_codigo'
      'and c.emp_codigo = :emp_codigo'
      'order by'
      'n.niv_nombre'
      '')
    Left = 448
    Top = 192
    object QClasifemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QClasifniv_nombre: TStringField
      FieldName = 'niv_nombre'
      Size = 60
    end
    object QClasifcla_nivel: TIntegerField
      FieldName = 'cla_nivel'
    end
  end
  object dsClasif: TDataSource
    DataSet = QClasif
    Left = 480
    Top = 192
  end
  object QPosicion: TADOQuery
    Connection = DM.ADOSigma
    DataSource = dsClasif
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
        Name = 'cla_nivel'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'pos_codigo, cla_nombre'
      'from'
      'posicion_clasificacion'
      'where'
      'emp_codigo = :emp_codigo'
      'and cla_codigo = :cla_nivel'
      'order by'
      'cla_nombre')
    Left = 448
    Top = 224
    object QPosicionpos_codigo: TIntegerField
      FieldName = 'pos_codigo'
    end
    object QPosicioncla_nombre: TStringField
      FieldName = 'cla_nombre'
      Size = 60
    end
  end
  object dsPosicion: TDataSource
    DataSet = QPosicion
    Left = 480
    Top = 224
  end
  object QReq: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    BeforePost = QReqBeforePost
    AfterPost = QReqAfterPost
    AfterDelete = QReqAfterDelete
    OnNewRecord = QReqNewRecord
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
      'select'
      'emp_codigo, req_numero, suc_codigo, req_fecha_desde,'
      'req_fecha_hasta, req_status, req_comentario,'
      'pos_codigo, niv_codigo, cla_codigo, req_solicitado_por,'
      'req_personas'
      'from'
      'requerimiento_personal'
      'where'
      'emp_codigo = :emp_codigo'
      'and req_numero = :num'
      '')
    Left = 448
    Top = 128
    object QReqemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QReqreq_numero: TIntegerField
      FieldName = 'req_numero'
    end
    object QReqsuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object QReqreq_fecha_desde: TDateTimeField
      FieldName = 'req_fecha_desde'
      EditMask = 'cc-cc-cccc'
    end
    object QReqreq_fecha_hasta: TDateTimeField
      FieldName = 'req_fecha_hasta'
      EditMask = 'cc-cc-cccc'
    end
    object QReqreq_status: TStringField
      FieldName = 'req_status'
      Size = 3
    end
    object QReqreq_comentario: TMemoField
      FieldName = 'req_comentario'
      BlobType = ftMemo
    end
    object QReqpos_codigo: TIntegerField
      FieldName = 'pos_codigo'
    end
    object QReqniv_codigo: TIntegerField
      FieldName = 'niv_codigo'
    end
    object QReqcla_codigo: TIntegerField
      FieldName = 'cla_codigo'
    end
    object QReqreq_solicitado_por: TStringField
      FieldName = 'req_solicitado_por'
      Size = 60
    end
    object QReqreq_personas: TIntegerField
      FieldName = 'req_personas'
    end
  end
  object dsReq: TDataSource
    AutoEdit = False
    DataSet = QReq
    OnStateChange = dsReqStateChange
    Left = 480
    Top = 128
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
    Left = 448
    Top = 256
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
    Left = 480
    Top = 256
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
      'p.cla_nombre as Posicion, n.niv_nombre as Clasificacion,'
      's.req_fecha_desde, s.req_fecha_hasta,'
      's.req_personas, s.req_solicitado_por,'
      's.req_numero'
      'from'
      'niveles n, posicion_clasificacion p, requerimiento_personal s'
      'where'
      's.emp_codigo = n.emp_codigo'
      'and s.cla_codigo = n.niv_codigo'
      'and p.cla_codigo = s.cla_codigo'
      'and p.pos_codigo = s.pos_codigo'
      'and s.emp_codigo = :emp_codigo'
      ''
      '')
    Left = 448
    Top = 288
    object QListadoPosicion: TStringField
      FieldName = 'Posicion'
      Size = 60
    end
    object QListadoClasificacion: TStringField
      FieldName = 'Clasificacion'
      Size = 60
    end
    object QListadoreq_fecha_desde: TDateTimeField
      FieldName = 'req_fecha_desde'
    end
    object QListadoreq_fecha_hasta: TDateTimeField
      FieldName = 'req_fecha_hasta'
    end
    object QListadoreq_personas: TIntegerField
      FieldName = 'req_personas'
    end
    object QListadoreq_solicitado_por: TStringField
      FieldName = 'req_solicitado_por'
      Size = 60
    end
    object QListadoreq_numero: TIntegerField
      FieldName = 'req_numero'
    end
  end
  object dsListado: TDataSource
    DataSet = QListado
    Left = 480
    Top = 288
  end
end
