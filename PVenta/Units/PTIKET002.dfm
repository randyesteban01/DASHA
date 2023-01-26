object frmBoletoPrecio: TfrmBoletoPrecio
  Left = 567
  Top = 360
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Boleto Precio'
  ClientHeight = 284
  ClientWidth = 596
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 14
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 596
    Height = 43
    AutoSize = True
    Bands = <
      item
        Control = ToolBar1
        ImageIndex = -1
        MinHeight = 39
        Width = 592
      end>
    object ToolBar1: TToolBar
      Left = 9
      Top = 0
      Width = 579
      Height = 39
      AutoSize = True
      ButtonHeight = 37
      ButtonWidth = 51
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
        Left = 51
        Top = 0
        Action = btNext
      end
      object ToolButton14: TToolButton
        Left = 102
        Top = 0
        Width = 8
        Caption = 'ToolButton14'
        ImageIndex = 1
        Style = tbsSeparator
      end
      object ToolButton1: TToolButton
        Left = 110
        Top = 0
        Action = btInsert
      end
      object ToolButton2: TToolButton
        Left = 161
        Top = 0
        Action = btEdit
      end
      object ToolButton3: TToolButton
        Left = 212
        Top = 0
        Action = btDelete
      end
      object ToolButton4: TToolButton
        Left = 263
        Top = 0
        Width = 8
        Caption = 'ToolButton4'
        ImageIndex = 3
        Style = tbsSeparator
      end
      object ToolButton5: TToolButton
        Left = 271
        Top = 0
        Action = btPost
      end
      object ToolButton6: TToolButton
        Left = 322
        Top = 0
        Action = btCancel
      end
      object ToolButton7: TToolButton
        Left = 373
        Top = 0
        Width = 8
        Caption = 'ToolButton7'
        ImageIndex = 5
        Style = tbsSeparator
      end
      object ToolButton8: TToolButton
        Left = 381
        Top = 0
        Action = btFind
      end
      object ToolButton9: TToolButton
        Left = 432
        Top = 0
        Action = btPrint
      end
      object ToolButton10: TToolButton
        Left = 483
        Top = 0
        Width = 8
        Caption = 'ToolButton10'
        ImageIndex = 7
        Style = tbsSeparator
      end
      object ToolButton11: TToolButton
        Left = 491
        Top = 0
        Action = btClose
      end
    end
  end
  object Panel1: TPanel
    Left = 9
    Top = 52
    Width = 578
    Height = 216
    BevelOuter = bvNone
    BevelWidth = 4
    BorderWidth = 4
    BorderStyle = bsSingle
    TabOrder = 1
    object Label1: TLabel
      Left = 9
      Top = 9
      Width = 33
      Height = 14
      Caption = 'C'#243'digo'
    end
    object Label2: TLabel
      Left = 9
      Top = 60
      Width = 37
      Height = 14
      Caption = 'Nombre'
    end
    object Label3: TLabel
      Left = 9
      Top = 138
      Width = 30
      Height = 14
      Caption = 'precio'
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 9
      Top = 164
      Width = 57
      Height = 14
      Caption = 'Num. Orden'
      FocusControl = DBEdit4
    end
    object Label5: TLabel
      Left = 9
      Top = 34
      Width = 30
      Height = 14
      Caption = 'Fecha'
      FocusControl = DBEdit5
    end
    object Label8: TLabel
      Left = 9
      Top = 86
      Width = 32
      Height = 14
      Caption = 'Origen'
    end
    object Label7: TLabel
      Left = 9
      Top = 112
      Width = 36
      Height = 14
      Caption = 'Destino'
    end
    object DBEdit1: TDBEdit
      Left = 78
      Top = 9
      Width = 78
      Height = 22
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      DataField = 'pre_codigo'
      DataSource = dsBoletoPrecio
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 78
      Top = 60
      Width = 233
      Height = 23
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'descripcion'
      DataSource = dsBoletoPrecio
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object DBEdit3: TDBEdit
      Left = 78
      Top = 138
      Width = 95
      Height = 22
      DataField = 'precio'
      DataSource = dsBoletoPrecio
      TabOrder = 5
    end
    object DBEdit4: TDBEdit
      Left = 78
      Top = 164
      Width = 95
      Height = 22
      DataField = 'num_orden'
      DataSource = dsBoletoPrecio
      TabOrder = 6
    end
    object DBEdit5: TDBEdit
      Left = 78
      Top = 34
      Width = 78
      Height = 23
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'fecha'
      DataSource = dsBoletoPrecio
      TabOrder = 1
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 78
      Top = 86
      Width = 233
      Height = 22
      DataField = 'suc_cod_origen'
      DataSource = dsBoletoPrecio
      DropDownRows = 20
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'suc_codigo'
      ListField = 'suc_nombre'
      ListSource = dsSuc_Origen
      ParentFont = False
      TabOrder = 3
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 78
      Top = 112
      Width = 233
      Height = 22
      DataField = 'suc_cod_destino'
      DataSource = dsBoletoPrecio
      DropDownRows = 20
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'suc_codigo'
      ListField = 'suc_nombre'
      ListSource = dsSuc_Destino
      ParentFont = False
      TabOrder = 4
    end
    object DBRadioGroup1: TDBRadioGroup
      Left = 215
      Top = 2
      Width = 96
      Height = 56
      DataField = 'status'
      DataSource = dsBoletoPrecio
      Items.Strings = (
        'Activo'
        'Inactivo')
      TabOrder = 7
      Values.Strings = (
        'A'
        'I')
    end
  end
  object QBoletoPrecio: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterPost = QBoletoPrecioAfterPost
    OnNewRecord = QBoletoPrecioNewRecord
    DataSource = DM.dsParametros
    Parameters = <
      item
        Name = 'EMP_CODIGO'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end>
    SQL.Strings = (
      'select *'
      'from '
      'boleto_precio'
      'where '
      'emp_codigo = :EMP_CODIGO'
      'order by num_orden')
    Left = 312
    Top = 56
    object QBoletoPreciodescripcion: TStringField
      FieldName = 'descripcion'
      Size = 80
    end
    object QBoletoPreciosuc_cod_origen: TIntegerField
      FieldName = 'suc_cod_origen'
    end
    object QBoletoPreciosuc_cod_destino: TIntegerField
      FieldName = 'suc_cod_destino'
    end
    object QBoletoPrecioprecio: TBCDField
      FieldName = 'precio'
      Precision = 19
    end
    object QBoletoPreciostatus: TStringField
      FieldName = 'status'
      Size = 3
    end
    object QBoletoPreciousu_codigo: TIntegerField
      FieldName = 'usu_codigo'
    end
    object QBoletoPreciofecha: TDateTimeField
      FieldName = 'fecha'
      EditMask = 'cc-cc-cccc'
    end
    object QBoletoPrecionum_orden: TIntegerField
      FieldName = 'num_orden'
    end
    object QBoletoPreciopre_codigo: TAutoIncField
      AutoGenerateValue = arAutoInc
      FieldName = 'pre_codigo'
      ReadOnly = True
    end
    object QBoletoPrecioemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
  end
  object dsBoletoPrecio: TDataSource
    AutoEdit = False
    DataSet = QBoletoPrecio
    Left = 344
    Top = 56
  end
  object ActionList1: TActionList
    Left = 432
    Top = 200
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
      OnExecute = btFindExecute
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
  object Search: TQrySearchDlgADO
    Title = 'Listado de Almacenes'
    ResultField = 'alm_codigo'
    Query.Strings = (
      'select caj_nombre, caj_codigo'
      'from cajeros')
    AliasFields.Strings = (
      'Nombre'
      'C'#243'digo')
    AliasName = DM.ADOSigma
    Left = 312
    Top = 88
  end
  object dsSuc_Origen: TDataSource
    DataSet = QSucursal_Origen
    OnDataChange = dsSuc_OrigenDataChange
    Left = 384
    Top = 96
  end
  object QSucursal_Origen: TADOQuery
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
      's.suc_codigo, s.suc_nombre, s.emp_codigo'
      'from'
      'sucursales s, sucursal_acceso a'
      'where'
      's.emp_codigo = a.emp_codigo'
      'and s.suc_codigo = a.suc_codigo'
      'and a.emp_codigo = :emp_codigo'
      'and a.usu_codigo = :usu'
      'order by s.suc_codigo')
    Left = 352
    Top = 96
    object QSucursal_Origensuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object QSucursal_Origensuc_nombre: TStringField
      FieldName = 'suc_nombre'
      Size = 60
    end
    object QSucursal_Origenemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
  end
  object dsSuc_Destino: TDataSource
    DataSet = QSucursal_Destino
    Left = 384
    Top = 128
  end
  object QSucursal_Destino: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltReadOnly
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
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'declare @emp int'
      'declare @suc int'
      ''
      'set @emp = :emp_codigo'
      'set @suc = :suc_codigo'
      ''
      'select'
      
        'a.loc_codigo suc_codigo, a.loc_nombre suc_nombre, s.alm_codigo, ' +
        's.emp_codigo'
      'from'
      'sucursales s '
      
        'inner join localidades a on s.emp_codigo = a.emp_codigo and s.su' +
        'c_codigo = a.suc_codigo'
      'and a.emp_codigo = @emp'
      'and a.suc_codigo = @suc'
      'order by a.loc_codigo')
    Left = 352
    Top = 128
    object QSucursal_Destinosuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object QSucursal_Destinosuc_nombre: TStringField
      FieldName = 'suc_nombre'
      Size = 60
    end
    object QSucursal_Destinoemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
  end
end
