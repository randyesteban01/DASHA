object frmTiposDoc: TfrmTiposDoc
  Left = 592
  Top = 276
  BorderIcons = [biSystemMenu, biMinimize, biHelp]
  BorderStyle = bsSingle
  Caption = 'Tipos de documento'
  ClientHeight = 256
  ClientWidth = 655
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
    Width = 655
    Height = 42
    AutoSize = True
    Bands = <
      item
        Control = ToolBar1
        ImageIndex = -1
        MinHeight = 38
        Width = 651
      end>
    object ToolBar1: TToolBar
      Left = 9
      Top = 0
      Width = 638
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
  object Panel2: TPanel
    Left = 0
    Top = 48
    Width = 641
    Height = 204
    Ctl3D = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
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
      FocusControl = DBEdit1
    end
    object Label3: TLabel
      Left = 16
      Top = 56
      Width = 21
      Height = 13
      Caption = 'ED#'
    end
    object DBEdit2: TDBEdit
      Left = 64
      Top = 32
      Width = 257
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'TDO_NOMBRE'
      DataSource = dsTipo
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DBEdit1: TDBEdit
      Left = 64
      Top = 8
      Width = 43
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'TDO_CODIGO'
      DataSource = dsTipo
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object gbNCF: TGroupBox
      Left = 1
      Top = 88
      Width = 639
      Height = 115
      Align = alBottom
      Caption = 'Numeros de Control Fiscal (NCF)'
      TabOrder = 3
      object DBGrid1: TDBGrid
        Left = 2
        Top = 15
        Width = 551
        Height = 98
        Align = alLeft
        Ctl3D = False
        DataSource = dsNCF
        Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'suc_nombre'
            Title.Caption = 'Sucursal'
            Width = 113
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NCF_Fijo'
            Title.Alignment = taCenter
            Title.Caption = 'NCF Fijo'
            Width = 52
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NCF_Inicial'
            Title.Alignment = taCenter
            Title.Caption = 'NCF Inicial'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NCF_Final'
            Title.Alignment = taCenter
            Title.Caption = 'NCF Final'
            Width = 57
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Cantidad'
            Title.Alignment = taCenter
            Width = 47
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NCF_Secuencia'
            Title.Alignment = taCenter
            Title.Caption = 'Sec. Actual'
            Width = 67
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NCF_Status'
            Title.Alignment = taCenter
            Title.Caption = 'Status'
            Width = 48
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FechaVenc'
            Title.Caption = 'Vencimiento'
            Width = 86
            Visible = True
          end>
      end
      object btinsertNCF: TBitBtn
        Left = 559
        Top = 8
        Width = 75
        Height = 25
        Caption = 'Inserta NCF'
        TabOrder = 1
        OnClick = btinsertNCFClick
      end
      object btdeleteNCF: TBitBtn
        Left = 559
        Top = 72
        Width = 75
        Height = 25
        Caption = 'Elimina NCF'
        TabOrder = 2
        OnClick = btdeleteNCFClick
      end
      object btmodificaNCF: TBitBtn
        Left = 559
        Top = 40
        Width = 75
        Height = 25
        Caption = 'Modifica NCF'
        TabOrder = 3
        OnClick = btmodificaNCFClick
      end
    end
    object DBEdit3: TDBEdit
      Left = 64
      Top = 56
      Width = 41
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'ent_numero'
      DataSource = dsTipo
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
  end
  object Search: TQrySearchDlgADO
    Title = 'Tipos de Documentos'
    ResultField = 'tdo_codigo'
    Query.Strings = (
      'select tdo_nombre, tdo_codigo'
      'from tiposdoc')
    AliasFields.Strings = (
      'Nombre'
      'C'#243'digo')
    AliasName = DM.ADOSigma
    Left = 472
    Top = 88
  end
  object QTipo: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    AfterOpen = QTipoAfterOpen
    BeforePost = QTipoBeforePost
    AfterPost = QTipoAfterPost
    AfterDelete = QTipoAfterDelete
    OnNewRecord = QTipoNewRecord
    DataSource = DM.dsEmpresas
    Parameters = <
      item
        Name = 'EMP_CODIGO'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT'
      'EMP_CODIGO, TDO_CODIGO, TDO_NOMBRE, ent_numero'
      'FROM'
      'TIPOSDOC'
      'WHERE'
      'EMP_CODIGO = :EMP_CODIGO')
    Left = 472
    Top = 56
    object QTipoEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'TIPOSDOC.EMP_CODIGO'
      Required = True
    end
    object QTipoTDO_CODIGO: TIBStringField
      FieldName = 'TDO_CODIGO'
      Origin = 'TIPOSDOC.TDO_CODIGO'
      Required = True
      OnChange = QTipoTDO_CODIGOChange
      Size = 3
    end
    object QTipoTDO_NOMBRE: TIBStringField
      FieldName = 'TDO_NOMBRE'
      Origin = 'TIPOSDOC.TDO_NOMBRE'
      Size = 60
    end
    object QTipoent_numero: TIntegerField
      FieldName = 'ent_numero'
    end
  end
  object dsTipo: TDataSource
    AutoEdit = False
    DataSet = QTipo
    OnStateChange = dsTipoStateChange
    Left = 504
    Top = 56
  end
  object ActionList2: TActionList
    Images = DM.ImgMant
    Left = 504
    Top = 88
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
  object QNCF: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    OnCalcFields = QNCFCalcFields
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
        Name = 'tdo_codigo'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 3
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'n.emp_codigo, n.suc_codigo, n.NCF_Fijo,'
      'n.NCF_Inicial, n.NCF_Final, n.NCF_Secuencia,'
      'n.NCF_Status, s.suc_nombre, n.NCF_Fecha_Creacion,'
      'n.tdo_codigo,'
      'n.FechaVenc,'
      'n.VerificaVenc'
      'from'
      'NCF n, sucursales s'
      'where'
      'n.emp_codigo = :emp_codigo'
      'and n.tdo_codigo = :tdo_codigo'
      'and n.emp_codigo = s.emp_codigo'
      'and n.suc_codigo = s.suc_codigo'
      'order by'
      
        'n.NCF_Fecha_Creacion desc, n.suc_codigo, n.NCF_Fijo, n.NCF_Inici' +
        'al')
    Left = 161
    Top = 192
    object QNCFemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QNCFsuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object QNCFNCF_Fijo: TStringField
      FieldName = 'NCF_Fijo'
      Size = 11
    end
    object QNCFNCF_Inicial: TBCDField
      FieldName = 'NCF_Inicial'
      DisplayFormat = '00000000'
      Precision = 18
      Size = 0
    end
    object QNCFNCF_Final: TBCDField
      FieldName = 'NCF_Final'
      DisplayFormat = '00000000'
      Precision = 18
      Size = 0
    end
    object QNCFNCF_Secuencia: TBCDField
      FieldName = 'NCF_Secuencia'
      DisplayFormat = '00000000'
      Precision = 18
      Size = 0
    end
    object QNCFNCF_Status: TStringField
      FieldName = 'NCF_Status'
      Size = 3
    end
    object QNCFsuc_nombre: TStringField
      FieldName = 'suc_nombre'
      Size = 60
    end
    object QNCFCantidad: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Cantidad'
      Calculated = True
    end
    object QNCFNCF_Fecha_Creacion: TDateTimeField
      FieldName = 'NCF_Fecha_Creacion'
    end
    object QNCFtdo_codigo: TStringField
      FieldName = 'tdo_codigo'
      Size = 3
    end
    object QNCFFechaVenc: TDateField
      FieldName = 'FechaVenc'
    end
    object QNCFVerificaVenc: TBooleanField
      FieldName = 'VerificaVenc'
    end
  end
  object dsNCF: TDataSource
    DataSet = QNCF
    Left = 193
    Top = 192
  end
end
