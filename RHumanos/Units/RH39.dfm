object frmTipoNomina: TfrmTipoNomina
  Left = 286
  Top = 262
  BorderIcons = [biSystemMenu, biMinimize, biHelp]
  BorderStyle = bsSingle
  Caption = 'Tipos de n'#243'mina'
  ClientHeight = 414
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
    Left = 0
    Top = 42
    Width = 549
    Height = 372
    ActivePage = TabSheet1
    Align = alClient
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
      object Label1: TLabel
        Left = 16
        Top = 8
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
      end
      object Label3: TLabel
        Left = 16
        Top = 80
        Width = 93
        Height = 13
        Caption = 'N'#243'minas mensuales'
      end
      object Label4: TLabel
        Left = 16
        Top = 104
        Width = 29
        Height = 13
        Caption = 'Banco'
      end
      object Label5: TLabel
        Left = 16
        Top = 128
        Width = 35
        Height = 13
        Caption = 'Cuenta'
      end
      object Label6: TLabel
        Left = 232
        Top = 128
        Width = 71
        Height = 13
        Caption = 'Tipo de cuenta'
      end
      object Label7: TLabel
        Left = 16
        Top = 240
        Width = 116
        Height = 13
        Caption = 'Tipo de volante de pago'
      end
      object Label14: TLabel
        Left = 16
        Top = 56
        Width = 40
        Height = 13
        Caption = 'Sucursal'
      end
      object DBEdit2: TDBEdit
        Left = 120
        Top = 32
        Width = 321
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'tno_nombre'
        DataSource = dsTipoNomina
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit1: TDBEdit
        Left = 120
        Top = 8
        Width = 73
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        Color = clInfoBk
        DataField = 'tno_codigo'
        DataSource = dsTipoNomina
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
        Left = 120
        Top = 80
        Width = 73
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'tno_cant_mensual'
        DataSource = dsTipoNomina
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object DBCheckBox1: TDBCheckBox
        Left = 200
        Top = 80
        Width = 97
        Height = 17
        Caption = 'Semanal'
        DataField = 'tno_semanal'
        DataSource = dsTipoNomina
        TabOrder = 3
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 120
        Top = 104
        Width = 321
        Height = 21
        DataField = 'ban_codigo'
        DataSource = dsTipoNomina
        KeyField = 'ban_codigo'
        ListField = 'ban_nombre'
        ListSource = dsBancos
        TabOrder = 4
      end
      object DBEdit4: TDBEdit
        Left = 120
        Top = 128
        Width = 105
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'tno_cuenta'
        DataSource = dsTipoNomina
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object DBComboBox1: TDBComboBox
        Left = 312
        Top = 128
        Width = 129
        Height = 21
        Style = csDropDownList
        DataField = 'tno_tipo_cuenta'
        DataSource = dsTipoNomina
        ItemHeight = 13
        Items.Strings = (
          'Ahorro'
          'Corriente')
        TabOrder = 6
      end
      object GroupBox1: TGroupBox
        Left = 16
        Top = 152
        Width = 233
        Height = 81
        Caption = 'Descontar'
        TabOrder = 7
        object Label8: TLabel
          Left = 160
          Top = 8
          Width = 41
          Height = 13
          Caption = 'Periodos'
        end
        object DBCheckBox2: TDBCheckBox
          Left = 24
          Top = 24
          Width = 97
          Height = 17
          Caption = 'ISR'
          DataField = 'tno_isr'
          DataSource = dsTipoNomina
          TabOrder = 0
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object DBCheckBox3: TDBCheckBox
          Left = 24
          Top = 48
          Width = 97
          Height = 17
          Caption = 'Seguro social'
          DataField = 'tno_ss'
          DataSource = dsTipoNomina
          TabOrder = 1
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object DBComboBox3: TDBComboBox
          Left = 152
          Top = 24
          Width = 65
          Height = 21
          Style = csDropDownList
          DataField = 'tno_periodo_descuento_isr'
          DataSource = dsTipoNomina
          ItemHeight = 13
          Items.Strings = (
            '1'
            '2')
          TabOrder = 2
        end
        object DBComboBox4: TDBComboBox
          Left = 152
          Top = 48
          Width = 65
          Height = 21
          Style = csDropDownList
          DataField = 'tno_periodo_descuento_ss'
          DataSource = dsTipoNomina
          ItemHeight = 13
          Items.Strings = (
            '1'
            '2')
          TabOrder = 3
        end
      end
      object GroupBox2: TGroupBox
        Left = 256
        Top = 152
        Width = 185
        Height = 81
        Caption = 'Incluir'
        TabOrder = 8
        object DBCheckBox4: TDBCheckBox
          Left = 40
          Top = 32
          Width = 97
          Height = 17
          Caption = 'Salario base'
          DataField = 'tno_salario_base'
          DataSource = dsTipoNomina
          TabOrder = 0
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
      end
      object DBComboBox2: TDBComboBox
        Left = 144
        Top = 240
        Width = 297
        Height = 21
        Style = csDropDownList
        DataField = 'tno_tipo_volante'
        DataSource = dsTipoNomina
        ItemHeight = 13
        Items.Strings = (
          '1 volante por p'#225'gina'
          '2 volantes por p'#225'gina'
          '3 volantes por p'#225'gina')
        TabOrder = 9
      end
      object GroupBox3: TGroupBox
        Left = 16
        Top = 260
        Width = 425
        Height = 81
        Caption = 
          'Opci'#243' pago d'#237'as a Empleados que ingresas fuera de la fecha de N'#243 +
          'mina '
        TabOrder = 10
        object DBCheckBox5: TDBCheckBox
          Left = 24
          Top = 32
          Width = 105
          Height = 17
          Caption = 'Pagar sabados'
          DataField = 'tno_pagar_sabados'
          DataSource = dsTipoNomina
          TabOrder = 0
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object DBCheckBox6: TDBCheckBox
          Left = 24
          Top = 56
          Width = 105
          Height = 17
          Caption = 'Pagar domingos'
          DataField = 'tno_pagar_domingos'
          DataSource = dsTipoNomina
          TabOrder = 1
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object DBCheckBox7: TDBCheckBox
          Left = 200
          Top = 32
          Width = 121
          Height = 17
          Caption = 'Pagar d'#237'as feriados'
          DataField = 'tno_pagar_feriados'
          DataSource = dsTipoNomina
          TabOrder = 2
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 120
        Top = 56
        Width = 321
        Height = 21
        DataField = 'suc_codigo'
        DataSource = dsTipoNomina
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
        TabOrder = 11
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Mensaje volante de pago'
      ImageIndex = 1
      object DBMemo1: TDBMemo
        Left = 0
        Top = 0
        Width = 541
        Height = 344
        Align = alClient
        DataField = 'tno_mensaje_volante'
        DataSource = dsTipoNomina
        TabOrder = 0
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Listado'
      ImageIndex = 2
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 541
        Height = 344
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
            FieldName = 'tno_codigo'
            Title.Caption = 'C'#243'digo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'tno_nombre'
            Title.Caption = 'Nombre'
            Visible = True
          end>
      end
    end
  end
  object QTipoNomina: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    BeforePost = QTipoNominaBeforePost
    AfterPost = QTipoNominaAfterPost
    AfterDelete = QTipoNominaAfterDelete
    OnNewRecord = QTipoNominaNewRecord
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
      
        'emp_codigo, tno_codigo, tno_nombre, tno_cant_mensual, tno_semana' +
        'l, tno_cuenta,'
      
        'tno_isr, tno_ss, tno_salario_base, tno_pagar_sabados, tno_pagar_' +
        'domingos,'
      
        'tno_pagar_feriados, tno_mensaje_volante, suc_codigo, ban_codigo,' +
        ' tno_tipo_cuenta,'
      'tno_tipo_volante, tno_periodo_descuento_ss,'
      'tno_periodo_descuento_isr'
      'from'
      'tipo_nomina'
      'where'
      'emp_codigo = :emp_codigo'
      'order by'
      'tno_codigo')
    Left = 312
    Top = 224
    object QTipoNominaemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QTipoNominatno_codigo: TIntegerField
      FieldName = 'tno_codigo'
    end
    object QTipoNominatno_nombre: TStringField
      FieldName = 'tno_nombre'
      Size = 60
    end
    object QTipoNominatno_cant_mensual: TIntegerField
      FieldName = 'tno_cant_mensual'
    end
    object QTipoNominatno_semanal: TStringField
      FieldName = 'tno_semanal'
      Size = 5
    end
    object QTipoNominatno_cuenta: TStringField
      FieldName = 'tno_cuenta'
      Size = 30
    end
    object QTipoNominatno_isr: TStringField
      FieldName = 'tno_isr'
      Size = 5
    end
    object QTipoNominatno_ss: TStringField
      FieldName = 'tno_ss'
      Size = 5
    end
    object QTipoNominatno_salario_base: TStringField
      FieldName = 'tno_salario_base'
      Size = 5
    end
    object QTipoNominatno_pagar_sabados: TStringField
      FieldName = 'tno_pagar_sabados'
      Size = 5
    end
    object QTipoNominatno_pagar_domingos: TStringField
      FieldName = 'tno_pagar_domingos'
      Size = 5
    end
    object QTipoNominatno_pagar_feriados: TStringField
      FieldName = 'tno_pagar_feriados'
      Size = 5
    end
    object QTipoNominatno_mensaje_volante: TMemoField
      FieldName = 'tno_mensaje_volante'
      BlobType = ftMemo
    end
    object QTipoNominasuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object QTipoNominaban_codigo: TIntegerField
      FieldName = 'ban_codigo'
    end
    object QTipoNominatno_tipo_cuenta: TStringField
      FieldName = 'tno_tipo_cuenta'
      Size = 10
    end
    object QTipoNominatno_periodo_descuento_ss: TIntegerField
      FieldName = 'tno_periodo_descuento_ss'
    end
    object QTipoNominatno_periodo_descuento_isr: TIntegerField
      FieldName = 'tno_periodo_descuento_isr'
    end
    object QTipoNominatno_tipo_volante: TStringField
      FieldName = 'tno_tipo_volante'
      Size = 25
    end
  end
  object dsTipoNomina: TDataSource
    AutoEdit = False
    DataSet = QTipoNomina
    OnStateChange = dsTipoNominaStateChange
    Left = 344
    Top = 224
  end
  object Search: TQrySearchDlgADO
    Title = 'Tipos de nomina'
    ResultField = 'tno_codigo'
    Query.Strings = (
      'select fpa_nombre, fpa_codigo'
      'from formaspago')
    AliasFields.Strings = (
      'Nombre'
      'C'#243'digo')
    AliasName = DM.ADOSigma
    Left = 312
    Top = 256
  end
  object ActionList2: TActionList
    Images = DM.ImgMant
    Left = 344
    Top = 256
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
      's.suc_codigo, s.suc_nombre, s.alm_codigo, s.emp_codigo'
      'from'
      'sucursales s, sucursal_acceso a'
      'where'
      's.emp_codigo = a.emp_codigo'
      'and s.suc_codigo = a.suc_codigo'
      'and a.emp_codigo = :emp_codigo'
      'and a.usu_codigo = :usu'
      'order by s.suc_codigo')
    Left = 312
    Top = 192
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
    object QSucursalemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
  end
  object dsSuc: TDataSource
    DataSet = QSucursal
    Left = 344
    Top = 192
  end
  object QBancos: TADOQuery
    Connection = DM.ADOSigma
    DataSource = dsSuc
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
        Name = 'suc_codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'ban_codigo, ban_nombre'
      'from'
      'bancos'
      'where'
      'emp_codigo = :emp_codigo'
      'and suc_codigo = :suc_codigo'
      'order by'
      'ban_nombre')
    Left = 312
    Top = 160
    object QBancosban_codigo: TIntegerField
      FieldName = 'ban_codigo'
    end
    object QBancosban_nombre: TStringField
      FieldName = 'ban_nombre'
      Size = 60
    end
  end
  object dsBancos: TDataSource
    DataSet = QBancos
    Left = 344
    Top = 160
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
      'tno_codigo, tno_nombre'
      'from'
      'tipo_nomina'
      'where'
      'emp_codigo = :emp_codigo'
      'order by'
      'tno_nombre')
    Left = 312
    Top = 288
    object QListadotno_codigo: TIntegerField
      FieldName = 'tno_codigo'
    end
    object QListadotno_nombre: TStringField
      FieldName = 'tno_nombre'
      Size = 60
    end
  end
  object dsListado: TDataSource
    DataSet = QListado
    Left = 344
    Top = 288
  end
end
