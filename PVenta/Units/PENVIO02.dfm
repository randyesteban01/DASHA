object frmEnvioM2: TfrmEnvioM2
  Left = 416
  Top = 270
  Width = 870
  Height = 395
  Caption = 'Envio'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDblClick = FormDblClick
  PixelsPerInch = 96
  TextHeight = 13
  object pButton: TPanel
    Left = 0
    Top = 0
    Width = 854
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label5: TLabel
      Left = 6
      Top = 12
      Width = 49
      Height = 13
      Caption = 'Ficha No.:'
    end
    object Label4: TLabel
      Left = 157
      Top = 10
      Width = 91
      Height = 13
      Caption = 'Nombre del Chofer:'
    end
    object cbbFicha: TComboBox
      Left = 64
      Top = 8
      Width = 81
      Height = 21
      BevelKind = bkSoft
      Style = csDropDownList
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemHeight = 13
      ParentFont = False
      TabOrder = 0
      Items.Strings = (
        'Envio'
        'Factura'
        'Fecha')
    end
    object EdtNombreChofer: TEdit
      Left = 258
      Top = 4
      Width = 583
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 41
    Width = 854
    Height = 274
    Align = alClient
    DataSource = dsEnvios
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    OnColEnter = DBGrid1ColEnter
    OnColExit = DBGrid1ColExit
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnKeyDown = DBGrid1KeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'seleccion'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fac_numero'
        Title.Caption = 'Numero'
        Width = 69
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IDEnvio'
        Title.Caption = 'Envio'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Fecha'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Destino'
        Title.Caption = 'Ciudad Destino'
        Width = 129
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nombre_envia'
        Title.Caption = 'Envia'
        Width = 130
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Telefono_Envia'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'Nombre_Recibe'
        Title.Caption = 'Recibe'
        Width = 130
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Telefono_Recibe'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'Descripcion'
        Width = 162
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 315
    Width = 854
    Height = 41
    Align = alBottom
    TabOrder = 2
    object BitBtn2: TBitBtn
      Left = 619
      Top = 2
      Width = 105
      Height = 36
      TabOrder = 0
      OnClick = BitBtn2Click
      Kind = bkOK
    end
    object BitBtn3: TBitBtn
      Left = 731
      Top = 2
      Width = 105
      Height = 36
      TabOrder = 1
      Kind = bkCancel
    end
    object Button1: TButton
      Left = 504
      Top = 2
      Width = 105
      Height = 36
      Caption = 'Seleccionar todo'
      TabOrder = 2
      OnClick = Button1Click
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 41
    Width = 854
    Height = 274
    Align = alClient
    TabOrder = 3
    OnExit = cxGrid1Exit
    object cxGrid1DBTableView1: TcxGridDBTableView
      OnKeyDown = cxGrid1DBTableView1KeyDown
      NavigatorButtons.ConfirmDelete = False
      OnCellClick = cxGrid1DBTableView1CellClick
      DataController.DataSource = dsEnvios
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnGrouping = False
      OptionsCustomize.ColumnMoving = False
      OptionsCustomize.ColumnSorting = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Inserting = False
      OptionsView.ScrollBars = ssNone
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1seleccion: TcxGridDBColumn
        DataBinding.FieldName = 'seleccion'
        Width = 61
      end
      object cxGrid1DBTableView1fac_numero: TcxGridDBColumn
        Caption = 'Numero'
        DataBinding.FieldName = 'fac_numero'
        Width = 68
      end
      object cxGrid1DBTableView1IDEnvio: TcxGridDBColumn
        Caption = 'Envio'
        DataBinding.FieldName = 'IDEnvio'
        Width = 72
      end
      object cxGrid1DBTableView1Fecha: TcxGridDBColumn
        DataBinding.FieldName = 'Fecha'
        Width = 63
      end
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
        Caption = 'Ciudad Destino'
        DataBinding.FieldName = 'Ciudad_Destino'
        Width = 132
      end
      object cxGrid1DBTableView1Nombre_envia: TcxGridDBColumn
        Caption = 'Envia'
        DataBinding.FieldName = 'Nombre_envia'
        Width = 129
      end
      object cxGrid1DBTableView1Nombre_Recibe: TcxGridDBColumn
        Caption = 'Recibe'
        DataBinding.FieldName = 'Nombre_Recibe'
        Width = 136
      end
      object cxGrid1DBTableView1Descripcion: TcxGridDBColumn
        DataBinding.FieldName = 'DescripcionN'
        Width = 161
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object QEn: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    BeforePost = QEnBeforePost
    OnCalcFields = QEnCalcFields
    Parameters = <
      item
        Name = 'emp'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end
      item
        Name = 'suc'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end>
    SQL.Strings = (
      
        'select (select suc_nombre from sucursales where suc_codigo=Envio' +
        '.env_suc_destino and emp_codigo=Envio.emp_codigo)Destino,'
      
        '(select suc_nombre from sucursales where suc_codigo=Envio.suc_co' +
        'digo and emp_codigo=Envio.emp_codigo)Origen,'
      'seleccion,env_status,'
      'fac_numero,IDEnvio,Fecha,Ciudad_Destino,Nombre_envia,'
      
        'Telefono_Envia,Nombre_Recibe,Telefono_Recibe, Descripcion, Ficha' +
        '_id, NombreChofer, SUC_CODIGO, Descripcion2'
      'from Envio '
      'where emp_codigo = :emp'
      'and suc_codigo = :suc')
    Left = 240
    Top = 232
    object QEnseleccion: TBooleanField
      FieldName = 'seleccion'
    end
    object QEnfac_numero: TIntegerField
      FieldName = 'fac_numero'
    end
    object QEnIDEnvio: TIntegerField
      FieldName = 'IDEnvio'
    end
    object QEnFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object QEnCiudad_Destino: TStringField
      FieldName = 'Ciudad_Destino'
      Size = 100
    end
    object QEnNombre_envia: TStringField
      FieldName = 'Nombre_envia'
      Size = 50
    end
    object QEnNombre_Recibe: TStringField
      FieldName = 'Nombre_Recibe'
      Size = 50
    end
    object QEnDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 200
    end
    object QEnenv_status: TStringField
      FieldName = 'env_status'
      Size = 5
    end
    object QEnTelefono_Envia: TStringField
      FieldName = 'Telefono_Envia'
    end
    object QEnTelefono_Recibe: TStringField
      FieldName = 'Telefono_Recibe'
    end
    object QEnNombreChofer: TStringField
      FieldName = 'NombreChofer'
      Size = 50
    end
    object QEnSUC_CODIGO: TIntegerField
      FieldName = 'SUC_CODIGO'
    end
    object QEnFicha_id: TIntegerField
      FieldName = 'Ficha_id'
    end
    object QEnDescripcionN: TStringField
      FieldKind = fkCalculated
      FieldName = 'DescripcionN'
      Calculated = True
    end
    object QEnDescripcion2: TStringField
      FieldName = 'Descripcion2'
      Size = 200
    end
  end
  object dsEnvios: TDataSource
    DataSet = QEn
    Left = 272
    Top = 232
  end
end
