object frmAccionPersonal: TfrmAccionPersonal
  Left = 256
  Top = 294
  BorderIcons = [biSystemMenu, biMinimize, biHelp]
  BorderStyle = bsSingle
  Caption = 'Acciones de personal'
  ClientHeight = 403
  ClientWidth = 654
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
  PixelsPerInch = 96
  TextHeight = 13
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 654
    Height = 42
    AutoSize = True
    Bands = <
      item
        Control = ToolBar1
        ImageIndex = -1
        MinHeight = 38
        Width = 650
      end>
    object ToolBar1: TToolBar
      Left = 9
      Top = 0
      Width = 637
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
    Left = 0
    Top = 42
    Width = 654
    Height = 361
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Registro'
      object Label1: TLabel
        Left = 16
        Top = 16
        Width = 46
        Height = 13
        Caption = 'Empleado'
      end
      object Label2: TLabel
        Left = 16
        Top = 40
        Width = 68
        Height = 13
        Caption = 'Tipo de acci'#243'n'
      end
      object Label3: TLabel
        Left = 432
        Top = 16
        Width = 33
        Height = 13
        Caption = 'C'#233'dula'
      end
      object Label4: TLabel
        Left = 432
        Top = 40
        Width = 29
        Height = 13
        Caption = 'Fecha'
      end
      object Label15: TLabel
        Left = 16
        Top = 216
        Width = 30
        Height = 13
        Caption = 'Raz'#243'n'
      end
      object GroupBox1: TGroupBox
        Left = 304
        Top = 64
        Width = 337
        Height = 145
        Caption = 'Estado propuesto'
        TabOrder = 4
        object Label5: TLabel
          Left = 16
          Top = 24
          Width = 82
          Height = 13
          Caption = 'Grupo de trabajo'
        end
        object Label6: TLabel
          Left = 16
          Top = 48
          Width = 23
          Height = 13
          Caption = 'Nivel'
        end
        object Label7: TLabel
          Left = 16
          Top = 72
          Width = 58
          Height = 13
          Caption = 'Clasificaci'#243'n'
        end
        object Label8: TLabel
          Left = 16
          Top = 96
          Width = 38
          Height = 13
          Caption = 'Posici'#243'n'
        end
        object Label9: TLabel
          Left = 16
          Top = 120
          Width = 32
          Height = 13
          Caption = 'Sueldo'
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 104
          Top = 48
          Width = 225
          Height = 21
          DataField = 'niv_codigo'
          DataSource = dsAccion
          KeyField = 'niv_codigo'
          ListField = 'niv_nombre'
          ListSource = dsNiveles
          TabOrder = 1
        end
        object DBLookupComboBox3: TDBLookupComboBox
          Left = 104
          Top = 72
          Width = 225
          Height = 21
          DataField = 'cla_codigo'
          DataSource = dsAccion
          KeyField = 'cla_nivel'
          ListField = 'niv_nombre'
          ListSource = dsClasif
          TabOrder = 2
          OnClick = DBLookupComboBox3Click
        end
        object DBLookupComboBox4: TDBLookupComboBox
          Left = 104
          Top = 96
          Width = 225
          Height = 21
          DataField = 'pos_codigo'
          DataSource = dsAccion
          KeyField = 'pos_codigo'
          ListField = 'cla_nombre'
          ListSource = dsPosicion
          TabOrder = 3
        end
        object DBLookupComboBox7: TDBLookupComboBox
          Left = 104
          Top = 24
          Width = 225
          Height = 21
          DataField = 'gru_codigo'
          DataSource = dsAccion
          KeyField = 'gru_codigo'
          ListField = 'gru_nombre'
          ListSource = dsGrupo
          TabOrder = 0
        end
        object DBEdit1: TDBEdit
          Left = 104
          Top = 120
          Width = 97
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'acc_sueldo'
          DataSource = dsAccion
          TabOrder = 4
        end
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 64
        Width = 297
        Height = 145
        Caption = 'Estado actual'
        TabOrder = 5
        object Label10: TLabel
          Left = 16
          Top = 24
          Width = 82
          Height = 13
          Caption = 'Grupo de trabajo'
        end
        object Label11: TLabel
          Left = 16
          Top = 48
          Width = 23
          Height = 13
          Caption = 'Nivel'
        end
        object Label12: TLabel
          Left = 16
          Top = 72
          Width = 58
          Height = 13
          Caption = 'Clasificaci'#243'n'
        end
        object Label13: TLabel
          Left = 16
          Top = 96
          Width = 38
          Height = 13
          Caption = 'Posici'#243'n'
        end
        object Label14: TLabel
          Left = 16
          Top = 120
          Width = 32
          Height = 13
          Caption = 'Sueldo'
        end
        object DBEdit2: TDBEdit
          Left = 104
          Top = 120
          Width = 97
          Height = 21
          TabStop = False
          BevelKind = bkFlat
          BorderStyle = bsNone
          Color = clInfoBk
          DataField = 'emp_salario'
          DataSource = dsEmpleado
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit3: TDBEdit
          Left = 104
          Top = 96
          Width = 185
          Height = 21
          TabStop = False
          BevelKind = bkFlat
          BorderStyle = bsNone
          Color = clInfoBk
          DataField = 'cla_nombre'
          DataSource = dsEmpleado
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit4: TDBEdit
          Left = 104
          Top = 72
          Width = 185
          Height = 21
          TabStop = False
          BevelKind = bkFlat
          BorderStyle = bsNone
          Color = clInfoBk
          DataField = 'Clasificacion'
          DataSource = dsEmpleado
          ReadOnly = True
          TabOrder = 2
        end
        object DBEdit5: TDBEdit
          Left = 104
          Top = 48
          Width = 185
          Height = 21
          TabStop = False
          BevelKind = bkFlat
          BorderStyle = bsNone
          Color = clInfoBk
          DataField = 'niv_nombre'
          DataSource = dsEmpleado
          ReadOnly = True
          TabOrder = 3
        end
        object DBEdit6: TDBEdit
          Left = 104
          Top = 24
          Width = 185
          Height = 21
          TabStop = False
          BevelKind = bkFlat
          BorderStyle = bsNone
          Color = clInfoBk
          DataField = 'gru_nombre'
          DataSource = dsEmpleado
          ReadOnly = True
          TabOrder = 4
        end
      end
      object DBMemo1: TDBMemo
        Left = 64
        Top = 216
        Width = 233
        Height = 113
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'acc_razon'
        DataSource = dsAccion
        TabOrder = 6
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 96
        Top = 16
        Width = 321
        Height = 21
        DataField = 'emp_numero'
        DataSource = dsAccion
        KeyField = 'emp_numero'
        ListField = 'Nombres'
        ListSource = dsEmpleado
        TabOrder = 0
      end
      object DBLookupComboBox5: TDBLookupComboBox
        Left = 96
        Top = 40
        Width = 321
        Height = 21
        DataField = 'tip_codigo'
        DataSource = dsAccion
        KeyField = 'tip_codigo'
        ListField = 'tip_nombre'
        ListSource = dsTipo
        TabOrder = 1
      end
      object DBEdit7: TDBEdit
        Left = 480
        Top = 16
        Width = 97
        Height = 21
        TabStop = False
        BevelKind = bkFlat
        BorderStyle = bsNone
        Color = clInfoBk
        DataField = 'emp_cedula'
        DataSource = dsEmpleado
        ReadOnly = True
        TabOrder = 2
      end
      object DBEdit8: TDBEdit
        Left = 480
        Top = 40
        Width = 97
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'acc_fecha'
        DataSource = dsAccion
        TabOrder = 3
      end
      object GroupBox3: TGroupBox
        Left = 304
        Top = 216
        Width = 337
        Height = 113
        Caption = 'Datos de la autorizaci'#243'n'
        TabOrder = 7
        object Label16: TLabel
          Left = 16
          Top = 24
          Width = 64
          Height = 13
          Caption = 'Solicitado por'
        end
        object Label17: TLabel
          Left = 168
          Top = 24
          Width = 71
          Height = 13
          Caption = 'Autorizado por'
        end
        object Label18: TLabel
          Left = 16
          Top = 64
          Width = 71
          Height = 13
          Caption = 'Fecha efectiva'
        end
        object Label19: TLabel
          Left = 96
          Top = 64
          Width = 29
          Height = 13
          Caption = 'Cargo'
        end
        object Label20: TLabel
          Left = 256
          Top = 64
          Width = 57
          Height = 13
          Caption = '# Empleado'
        end
        object DBEdit9: TDBEdit
          Left = 16
          Top = 40
          Width = 145
          Height = 21
          TabStop = False
          BevelKind = bkFlat
          BorderStyle = bsNone
          Color = clInfoBk
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit10: TDBEdit
          Left = 168
          Top = 40
          Width = 161
          Height = 21
          TabStop = False
          BevelKind = bkFlat
          BorderStyle = bsNone
          Color = clInfoBk
          DataField = 'acc_autorizado_por'
          DataSource = dsAccion
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit11: TDBEdit
          Left = 16
          Top = 80
          Width = 73
          Height = 21
          TabStop = False
          BevelKind = bkFlat
          BorderStyle = bsNone
          Color = clInfoBk
          DataField = 'acc_fecha_efectiva'
          DataSource = dsAccion
          ReadOnly = True
          TabOrder = 2
        end
        object DBEdit12: TDBEdit
          Left = 96
          Top = 80
          Width = 153
          Height = 21
          TabStop = False
          BevelKind = bkFlat
          BorderStyle = bsNone
          Color = clInfoBk
          ReadOnly = True
          TabOrder = 3
        end
        object DBEdit13: TDBEdit
          Left = 256
          Top = 80
          Width = 73
          Height = 21
          TabStop = False
          BevelKind = bkFlat
          BorderStyle = bsNone
          Color = clInfoBk
          ReadOnly = True
          TabOrder = 4
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Consulta'
      ImageIndex = 1
      object btautoizar: TSpeedButton
        Left = 0
        Top = 8
        Width = 81
        Height = 22
        Caption = 'Autorizar'
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADAADA0000000000DADDA7FFFFFFFFFF0DAAD7FFF88FFFFF0ADDA7FFF188FFF
          F0DAAD7FF11188FFF0ADDA7F11F118FFF0DAAD7FFFFF178FF0ADDA7FFFFFF188
          F0DAAD7FFFFFFF18F0ADDA7FFFFFFFF1F0DAAD7FFFFFFFFFF0ADDA7FF000000F
          F0DAADA770F888077DADDADADA7777DADADAADADADADADADADAD}
        OnClick = btautoizarClick
      end
      object CheckBox1: TCheckBox
        Left = 544
        Top = 8
        Width = 97
        Height = 17
        Caption = 'No Autorizadas'
        TabOrder = 0
        OnClick = CheckBox1Click
      end
      object Memo1: TMemo
        Left = 288
        Top = 112
        Width = 185
        Height = 89
        Lines.Strings = (
          'Memo1')
        TabOrder = 1
        Visible = False
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 32
        Width = 646
        Height = 301
        Align = alBottom
        Ctl3D = True
        DataSource = dsListado
        Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 2
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'acc_codigo'
            Title.Alignment = taCenter
            Title.Caption = 'N'#250'mero'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Nombres'
            Title.Caption = 'Nombre'
            Width = 212
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'acc_fecha'
            Title.Alignment = taCenter
            Title.Caption = 'Fecha'
            Width = 67
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'acc_fecha_efectiva'
            Title.Alignment = taCenter
            Title.Caption = 'Fecha efectiva'
            Width = 76
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'tip_nombre'
            Title.Caption = 'Tipo de accion'
            Width = 114
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'acc_sueldo'
            Title.Alignment = taCenter
            Title.Caption = 'Sueldo propuesto'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'acc_status'
            Title.Alignment = taCenter
            Title.Caption = 'Status'
            Visible = True
          end>
      end
    end
  end
  object QAccion: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    BeforePost = QAccionBeforePost
    AfterPost = QAccionAfterPost
    AfterDelete = QAccionAfterDelete
    OnNewRecord = QAccionNewRecord
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
        Name = 'acc'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select '
      'emp_codigo, acc_codigo, tip_codigo, emp_numero, acc_fecha,'
      'acc_razon, acc_status, acc_solicitado_por, acc_fecha_aprobacion,'
      'acc_fecha_efectiva, acc_sueldo, gru_codigo, niv_codigo,'
      'pos_codigo, cla_codigo, acc_autorizado_por'
      'from'
      'acciones_personal'
      'where'
      'emp_codigo = :emp_codigo'
      'and acc_codigo = :acc')
    Left = 208
    Top = 312
    object QAccionemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QAccionacc_codigo: TIntegerField
      FieldName = 'acc_codigo'
    end
    object QAcciontip_codigo: TIntegerField
      FieldName = 'tip_codigo'
    end
    object QAccionemp_numero: TIntegerField
      FieldName = 'emp_numero'
    end
    object QAccionacc_fecha: TDateTimeField
      FieldName = 'acc_fecha'
      EditMask = 'cc-cc-cccc'
    end
    object QAccionacc_razon: TMemoField
      FieldName = 'acc_razon'
      BlobType = ftMemo
    end
    object QAccionacc_status: TStringField
      FieldName = 'acc_status'
      Size = 3
    end
    object QAccionacc_fecha_aprobacion: TDateTimeField
      FieldName = 'acc_fecha_aprobacion'
      EditMask = 'cc-cc-cccc'
    end
    object QAccionacc_fecha_efectiva: TDateTimeField
      FieldName = 'acc_fecha_efectiva'
      EditMask = 'cc-cc-cccc'
    end
    object QAccionacc_sueldo: TBCDField
      FieldName = 'acc_sueldo'
      currency = True
      Precision = 15
      Size = 2
    end
    object QAcciongru_codigo: TIntegerField
      FieldName = 'gru_codigo'
    end
    object QAccionniv_codigo: TIntegerField
      FieldName = 'niv_codigo'
    end
    object QAccionpos_codigo: TIntegerField
      FieldName = 'pos_codigo'
    end
    object QAccioncla_codigo: TIntegerField
      FieldName = 'cla_codigo'
    end
    object QAccionacc_autorizado_por: TStringField
      FieldName = 'acc_autorizado_por'
      Size = 60
    end
    object QAccionacc_solicitado_por: TStringField
      FieldName = 'acc_solicitado_por'
      Size = 60
    end
  end
  object dsAccion: TDataSource
    AutoEdit = False
    DataSet = QAccion
    OnStateChange = dsAccionStateChange
    Left = 240
    Top = 312
  end
  object Search: TQrySearchDlgADO
    Title = 'Acciones de personal'
    ResultField = 'acc_codigo'
    Query.Strings = (
      'select fpa_nombre, fpa_codigo'
      'from formaspago')
    AliasFields.Strings = (
      'Nombre'
      'C'#243'digo')
    AliasName = DM.ADOSigma
    Left = 208
    Top = 344
  end
  object ActionList2: TActionList
    Images = DM.ImgMant
    Left = 240
    Top = 344
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
  object dsEmpleado: TDataSource
    DataSet = QEmpleados
    Left = 240
    Top = 280
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
    Left = 208
    Top = 184
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
    Left = 240
    Top = 184
  end
  object dsClasif: TDataSource
    DataSet = QClasif
    Left = 240
    Top = 216
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
      'n.niv_nombre')
    Left = 208
    Top = 216
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
        Attributes = [paSigned, paNullable]
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
    Left = 208
    Top = 248
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
    Left = 240
    Top = 248
  end
  object QGrupo: TADOQuery
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
      'gru_codigo, gru_nombre'
      'from'
      'grupos_trabajo'
      'where'
      'emp_codigo = :emp_codigo'
      'order by'
      'gru_nombre')
    Left = 208
    Top = 152
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
    Left = 240
    Top = 152
  end
  object QTipo: TADOQuery
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
      'tip_codigo, tip_nombre'
      'from'
      'tipos_accion_personal'
      'where'
      'emp_codigo = :emp_codigo'
      'order by'
      'tip_nombre')
    Left = 208
    Top = 120
    object QTipotip_codigo: TIntegerField
      FieldName = 'tip_codigo'
    end
    object QTipotip_nombre: TStringField
      FieldName = 'tip_nombre'
      Size = 60
    end
  end
  object dsTipo: TDataSource
    DataSet = QTipo
    Left = 240
    Top = 120
  end
  object QEmpleados: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    DataSource = DM.dsEmpresas
    Parameters = <
      item
        Name = 'emp_codigo'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select'
      
        '(e.emp_nombres+'#39' '#39'+e.emp_apellido_paterno+'#39' '#39'+e.emp_apellido_mat' +
        'erno) as Nombres,'
      'e.emp_fecha_entrada, g.gru_nombre, p.cla_nombre, n.niv_nombre,'
      'e.emp_numero, e.emp_cedula, e.emp_salario,'
      'Clasificacion = (select distinct n2.niv_nombre'
      'from Clasificacion_Niveles c, niveles n2'
      'where c.cla_nivel = n2.niv_codigo'
      'and c.emp_codigo = n2.emp_codigo'
      'and c.emp_codigo = e.emp_codigo'
      'and c.cla_nivel = e.cla_codigo)'
      ''
      'from'
      
        'empleados e, posicion_clasificacion p, grupos_trabajo g, niveles' +
        ' n'
      'where'
      'e.emp_codigo = n.emp_codigo'
      'and e.niv_codigo = n.niv_codigo'
      'and e.emp_codigo = g.emp_codigo'
      'and e.gru_codigo = g.gru_codigo'
      'and e.emp_codigo = p.emp_codigo'
      'and e.pos_codigo = p.pos_codigo'
      'and e.emp_codigo = :emp_codigo'
      'order by 1'
      '')
    Left = 208
    Top = 280
    object QEmpleadosNombres: TStringField
      FieldName = 'Nombres'
      ReadOnly = True
      Size = 182
    end
    object QEmpleadosemp_fecha_entrada: TDateTimeField
      FieldName = 'emp_fecha_entrada'
    end
    object QEmpleadosgru_nombre: TStringField
      FieldName = 'gru_nombre'
      Size = 60
    end
    object QEmpleadoscla_nombre: TStringField
      FieldName = 'cla_nombre'
      Size = 60
    end
    object QEmpleadosniv_nombre: TStringField
      FieldName = 'niv_nombre'
      Size = 60
    end
    object QEmpleadosemp_numero: TIntegerField
      FieldName = 'emp_numero'
    end
    object QEmpleadosemp_cedula: TStringField
      FieldName = 'emp_cedula'
      Size = 13
    end
    object QEmpleadosemp_salario: TBCDField
      FieldName = 'emp_salario'
      currency = True
      Precision = 15
      Size = 2
    end
    object QEmpleadosClasificacion: TStringField
      FieldName = 'Clasificacion'
      ReadOnly = True
      Size = 60
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
      'a.acc_codigo,'
      
        '(e.emp_nombres+'#39' '#39'+e.emp_apellido_paterno+'#39' '#39'+emp_apellido_mater' +
        'no) as Nombres,'
      'a.acc_fecha, a.acc_fecha_efectiva, t.tip_nombre, a.acc_sueldo,'
      'a.acc_status, a.emp_numero, a.cla_codigo, a.niv_codigo,'
      'a.pos_codigo, a.gru_codigo'
      'from'
      'acciones_personal a, empleados e, tipos_accion_personal t'
      'where'
      'a.emp_codigo = e.emp_codigo'
      'and a.emp_numero = e.emp_numero'
      'and a.emp_codigo = t.emp_codigo'
      'and a.tip_codigo = t.tip_codigo'
      'and a.emp_codigo = :emp_codigo'
      '')
    Left = 208
    Top = 88
    object QListadoacc_codigo: TIntegerField
      FieldName = 'acc_codigo'
    end
    object QListadoNombres: TStringField
      FieldName = 'Nombres'
      ReadOnly = True
      Size = 182
    end
    object QListadoacc_fecha: TDateTimeField
      FieldName = 'acc_fecha'
    end
    object QListadoacc_fecha_efectiva: TDateTimeField
      FieldName = 'acc_fecha_efectiva'
    end
    object QListadotip_nombre: TStringField
      FieldName = 'tip_nombre'
      Size = 60
    end
    object QListadoacc_sueldo: TBCDField
      FieldName = 'acc_sueldo'
      currency = True
      Precision = 15
      Size = 2
    end
    object QListadoacc_status: TStringField
      FieldName = 'acc_status'
      Size = 3
    end
    object QListadoemp_numero: TIntegerField
      FieldName = 'emp_numero'
    end
    object QListadocla_codigo: TIntegerField
      FieldName = 'cla_codigo'
    end
    object QListadoniv_codigo: TIntegerField
      FieldName = 'niv_codigo'
    end
    object QListadopos_codigo: TIntegerField
      FieldName = 'pos_codigo'
    end
    object QListadogru_codigo: TIntegerField
      FieldName = 'gru_codigo'
    end
  end
  object dsListado: TDataSource
    DataSet = QListado
    OnDataChange = dsListadoDataChange
    Left = 240
    Top = 88
  end
end
