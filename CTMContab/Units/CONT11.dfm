object frmCatalogo: TfrmCatalogo
  Left = 296
  Top = 145
  BorderIcons = [biSystemMenu, biMinimize, biHelp]
  BorderStyle = bsSingle
  Caption = 'Cat'#225'logo de Cuentas'
  ClientHeight = 394
  ClientWidth = 669
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
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 27
    Width = 669
    Height = 367
    Align = alClient
    Ctl3D = True
    ParentCtl3D = False
    TabOrder = 0
    object sgCatalogo: TStringGrid
      Left = 1
      Top = 1
      Width = 667
      Height = 255
      TabStop = False
      Align = alClient
      DefaultColWidth = 100
      DefaultRowHeight = 18
      FixedCols = 0
      RowCount = 2
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goDrawFocusSelected, goRowSelect]
      ScrollBars = ssVertical
      TabOrder = 0
      OnDrawCell = sgCatalogoDrawCell
      OnEnter = sgCatalogoEnter
      OnSelectCell = sgCatalogoSelectCell
      ColWidths = (
        85
        340
        73
        56
        83)
    end
    object Panel1: TPanel
      Left = 1
      Top = 256
      Width = 667
      Height = 110
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      object Label1: TLabel
        Left = 8
        Top = 8
        Width = 35
        Height = 13
        Caption = 'Cuenta'
        FocusControl = DBEdit1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 8
        Top = 32
        Width = 37
        Height = 13
        Caption = 'Nombre'
        FocusControl = DBEdit2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 8
        Top = 56
        Width = 32
        Height = 13
        Caption = 'Origen'
        FocusControl = DBEdit3
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 116
        Top = 56
        Width = 71
        Height = 13
        Caption = 'Cuenta control'
        FocusControl = DBEdit4
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object btControl: TSpeedButton
        Left = 192
        Top = 56
        Width = 23
        Height = 22
        Enabled = False
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
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
        ParentFont = False
        OnClick = btControlClick
      end
      object DBEdit1: TDBEdit
        Left = 48
        Top = 8
        Width = 105
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'CAT_CUENTA'
        DataSource = dsCatalogo
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 48
        Top = 32
        Width = 289
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'CAT_NOMBRE'
        DataSource = dsCatalogo
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 200
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 48
        Top = 56
        Width = 25
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'CAT_ORIGEN'
        DataSource = dsCatalogo
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 216
        Top = 56
        Width = 121
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'CAT_CONTROL'
        DataSource = dsCatalogo
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 456
        Top = 0
        Width = 96
        Height = 105
        Caption = 'Tipo de cuenta'
        DataField = 'CAT_TIPO'
        DataSource = dsCatalogo
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Items.Strings = (
          'Activo'
          'Pasivo'
          'Capital'
          'Ingreso'
          'Costos'
          'Gastos')
        ParentFont = False
        TabOrder = 4
        Values.Strings = (
          'AC'
          'PA'
          'CA'
          'IN'
          'CO'
          'GA')
      end
      object rgMov: TDBRadioGroup
        Left = 552
        Top = 0
        Width = 97
        Height = 105
        Caption = 'Maneja centros'
        DataField = 'cat_maneja_centro'
        DataSource = dsCatalogo
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Items.Strings = (
          'Si'
          'No')
        ParentFont = False
        TabOrder = 5
        Values.Strings = (
          'S'
          'N')
      end
      object DBRadioGroup2: TDBRadioGroup
        Left = 344
        Top = 0
        Width = 110
        Height = 105
        Caption = 'Acepta movimiento'
        DataField = 'CAT_MOVIMIENTO'
        DataSource = dsCatalogo
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Items.Strings = (
          'Si'
          'No')
        ParentFont = False
        TabOrder = 6
        Values.Strings = (
          'S'
          'N')
      end
    end
  end
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 669
    Height = 27
    AutoSize = True
    Bands = <
      item
        Control = ToolBar1
        ImageIndex = -1
        MinHeight = 23
        Width = 665
      end>
    object ToolBar1: TToolBar
      Left = 9
      Top = 0
      Width = 652
      Height = 23
      AutoSize = True
      ButtonHeight = 21
      ButtonWidth = 50
      Caption = 'ToolBar1'
      Flat = True
      ShowCaptions = True
      TabOrder = 0
      object ToolButton1: TToolButton
        Left = 0
        Top = 0
        Action = btInsert
      end
      object ToolButton2: TToolButton
        Left = 50
        Top = 0
        Action = btEdit
      end
      object ToolButton3: TToolButton
        Left = 100
        Top = 0
        Action = btDelete
      end
      object ToolButton4: TToolButton
        Left = 150
        Top = 0
        Width = 8
        Caption = 'ToolButton4'
        ImageIndex = 3
        Style = tbsSeparator
      end
      object ToolButton5: TToolButton
        Left = 158
        Top = 0
        Action = btPost
      end
      object ToolButton6: TToolButton
        Left = 208
        Top = 0
        Action = btCancel
      end
      object ToolButton7: TToolButton
        Left = 258
        Top = 0
        Width = 8
        Caption = 'ToolButton7'
        ImageIndex = 5
        Style = tbsSeparator
      end
      object ToolButton8: TToolButton
        Left = 266
        Top = 0
        Action = btFind
      end
      object ToolButton9: TToolButton
        Left = 316
        Top = 0
        Action = btPrint
      end
      object ToolButton10: TToolButton
        Left = 366
        Top = 0
        Width = 8
        Caption = 'ToolButton10'
        ImageIndex = 7
        Style = tbsSeparator
      end
      object ToolButton15: TToolButton
        Left = 374
        Top = 0
        Action = btEmail
      end
      object ToolButton11: TToolButton
        Left = 424
        Top = 0
        Action = btClose
      end
    end
  end
  object QCatalogo: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    AfterInsert = QCatalogoAfterInsert
    AfterEdit = QCatalogoAfterEdit
    BeforePost = QCatalogoBeforePost
    AfterPost = QCatalogoAfterPost
    AfterCancel = QCatalogoAfterCancel
    AfterDelete = QCatalogoAfterDelete
    OnNewRecord = QCatalogoNewRecord
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
        Name = 'cta'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 15
        Value = Null
      end>
    SQL.Strings = (
      'SELECT'
      'CAT_BALACTUAL, CAT_BALANT, CAT_CONTROL, CAT_CUENTA, '
      'CAT_MOVIMIENTO, CAT_NOMBRE, CAT_ORIGEN, CAT_TIPO, '
      'EMP_CODIGO, USU_CODIGO, CAT_SITUACION,'
      'cat_flujo_efectivo, cat_maneja_centro'
      'FROM'
      'CONTCATALOGO'
      'WHERE '
      'EMP_CODIGO = :emp_codigo'
      'AND CAT_CUENTA = :cta'
      'ORDER BY CAT_CUENTA')
    Left = 504
    Top = 120
    object QCatalogoCAT_BALACTUAL: TFloatField
      FieldName = 'CAT_BALACTUAL'
      Origin = 'CONTCATALOGO.CAT_BALACTUAL'
      currency = True
    end
    object QCatalogoCAT_BALANT: TFloatField
      FieldName = 'CAT_BALANT'
      Origin = 'CONTCATALOGO.CAT_BALANT'
      currency = True
    end
    object QCatalogoCAT_CONTROL: TIBStringField
      FieldName = 'CAT_CONTROL'
      Origin = 'CONTCATALOGO.CAT_CONTROL'
      OnChange = QCatalogoCAT_CONTROLChange
      Size = 15
    end
    object QCatalogoCAT_CUENTA: TIBStringField
      FieldName = 'CAT_CUENTA'
      Origin = 'CONTCATALOGO.CAT_CUENTA'
      Required = True
      Size = 15
    end
    object QCatalogoCAT_MOVIMIENTO: TIBStringField
      FieldName = 'CAT_MOVIMIENTO'
      Origin = 'CONTCATALOGO.CAT_MOVIMIENTO'
      Size = 1
    end
    object QCatalogoCAT_NOMBRE: TIBStringField
      FieldName = 'CAT_NOMBRE'
      Origin = 'CONTCATALOGO.CAT_NOMBRE'
      Size = 60
    end
    object QCatalogoCAT_ORIGEN: TIBStringField
      FieldName = 'CAT_ORIGEN'
      Origin = 'CONTCATALOGO.CAT_ORIGEN'
      Size = 1
    end
    object QCatalogoCAT_TIPO: TIBStringField
      FieldName = 'CAT_TIPO'
      Origin = 'CONTCATALOGO.CAT_TIPO'
      Size = 2
    end
    object QCatalogoEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'CONTCATALOGO.EMP_CODIGO'
      Required = True
    end
    object QCatalogoUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
      Origin = 'CONTCATALOGO.USU_CODIGO'
    end
    object QCatalogoCAT_SITUACION: TIBStringField
      FieldName = 'CAT_SITUACION'
      Origin = 'CONTCATALOGO.CAT_SITUACION'
      Size = 1
    end
    object QCatalogocat_flujo_efectivo: TStringField
      FieldName = 'cat_flujo_efectivo'
      Size = 2
    end
    object QCatalogocat_maneja_centro: TStringField
      FieldName = 'cat_maneja_centro'
      Size = 1
    end
  end
  object Search: TQrySearchDlgADO
    Title = 'Listado de Familias'
    ResultField = 'tfa_codigo'
    Query.Strings = (
      'select caj_nombre, caj_codigo'
      'from cajeros')
    AliasFields.Strings = (
      'Nombre'
      'C'#243'digo')
    AliasName = DM.ADOSigma
    Left = 504
    Top = 152
  end
  object dsCatalogo: TDataSource
    AutoEdit = False
    DataSet = QCatalogo
    OnStateChange = dsCatalogoStateChange
    OnDataChange = dsCatalogoDataChange
    Left = 536
    Top = 120
  end
  object ActionList2: TActionList
    Left = 536
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
      OnExecute = btPrintClick
    end
    object btClose: TAction
      Caption = 'Salir'
      ImageIndex = 0
      OnExecute = btCloseClick
    end
    object btEmail: TAction
      Caption = 'e-mail'
      ImageIndex = 10
      OnExecute = btEmailClick
    end
  end
end
