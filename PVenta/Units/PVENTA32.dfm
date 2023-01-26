object frmVendedor: TfrmVendedor
  Left = 465
  Top = 367
  BorderIcons = [biSystemMenu, biMinimize, biHelp]
  BorderStyle = bsSingle
  Caption = 'Vendedores'
  ClientHeight = 298
  ClientWidth = 552
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
    Width = 552
    Height = 42
    AutoSize = True
    Bands = <
      item
        Control = ToolBar1
        ImageIndex = -1
        MinHeight = 38
        Width = 548
      end>
    object ToolBar1: TToolBar
      Left = 9
      Top = 0
      Width = 535
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
    Height = 241
    ActivePage = TabSheet1
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Datos generales'
      object Label2: TLabel
        Left = 8
        Top = 32
        Width = 37
        Height = 13
        Caption = 'Nombre'
      end
      object Label4: TLabel
        Left = 8
        Top = 80
        Width = 42
        Height = 13
        Caption = 'Tel'#233'fono'
        FocusControl = DBEdit4
      end
      object Label5: TLabel
        Left = 168
        Top = 80
        Width = 32
        Height = 13
        Caption = 'Celular'
        FocusControl = DBEdit5
      end
      object Label6: TLabel
        Left = 296
        Top = 80
        Width = 34
        Height = 13
        Caption = 'Beeper'
        FocusControl = DBEdit6
      end
      object Label3: TLabel
        Left = 8
        Top = 104
        Width = 69
        Height = 13
        Caption = 'Fecha entrada'
        FocusControl = DBEdit3
      end
      object Label1: TLabel
        Left = 8
        Top = 8
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
      end
      object Label7: TLabel
        Left = 8
        Top = 56
        Width = 24
        Height = 13
        Caption = 'email'
      end
      object Label8: TLabel
        Left = 8
        Top = 128
        Width = 80
        Height = 13
        Caption = '%Comision venta'
        FocusControl = DBEdit8
      end
      object Label9: TLabel
        Left = 8
        Top = 152
        Width = 80
        Height = 13
        Caption = '%Comision cobro'
        FocusControl = DBEdit8
      end
      object DBEdit2: TDBEdit
        Left = 96
        Top = 32
        Width = 313
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'VEN_NOMBRE'
        DataSource = dsVendedor
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit4: TDBEdit
        Left = 96
        Top = 80
        Width = 65
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'VEN_TELEFONO'
        DataSource = dsVendedor
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object DBEdit5: TDBEdit
        Left = 208
        Top = 80
        Width = 65
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'VEN_CELULAR'
        DataSource = dsVendedor
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object DBEdit6: TDBEdit
        Left = 335
        Top = 80
        Width = 74
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'VEN_BEEPER'
        DataSource = dsVendedor
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object DBCheckBox1: TDBCheckBox
        Left = 96
        Top = 176
        Width = 161
        Height = 17
        Caption = 'Cobra comisiones por Venta'
        DataField = 'ven_comision_venta'
        DataSource = dsVendedor
        TabOrder = 9
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox2: TDBCheckBox
        Left = 96
        Top = 192
        Width = 161
        Height = 17
        Caption = 'Cobra comisiones por Cobro'
        DataField = 'ven_comision_cobro'
        DataSource = dsVendedor
        TabOrder = 10
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBEdit3: TDBEdit
        Left = 96
        Top = 104
        Width = 65
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'ven_fecha_entrada'
        DataSource = dsVendedor
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
      end
      object DBEdit1: TDBEdit
        Left = 96
        Top = 8
        Width = 73
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        Color = clInfoBk
        DataField = 'VEN_CODIGO'
        DataSource = dsVendedor
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit7: TDBEdit
        Left = 96
        Top = 56
        Width = 313
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecLowerCase
        DataField = 'ven_email'
        DataSource = dsVendedor
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object DBEdit8: TDBEdit
        Left = 96
        Top = 128
        Width = 65
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'VEN_COMCOBRO'
        DataSource = dsVendedor
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
      end
      object DBEdit9: TDBEdit
        Left = 96
        Top = 152
        Width = 65
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'VEN_COMVENTA'
        DataSource = dsVendedor
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Objetivos de venta'
      ImageIndex = 1
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 320
        Height = 213
        Align = alLeft
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
  end
  object QVendedor: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    BeforePost = QVendedorBeforePost
    AfterPost = QVendedorAfterPost
    AfterDelete = QVendedorAfterDelete
    OnNewRecord = QVendedorNewRecord
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
      'EMP_CODIGO, VEN_CODIGO, VEN_NOMBRE, '
      'VEN_TELEFONO, VEN_CELULAR, VEN_BEEPER, '
      'VEN_STATUS, VEN_COMCOBRO, VEN_COMVENTA,'
      'ven_comision_cobro, ven_comision_venta,'
      'ven_fecha_entrada, ven_email'
      'from '
      'VENDEDORES'
      'where '
      'emp_codigo = :emp_codigo'
      'order by '
      'ven_codigo')
    Left = 288
    Top = 128
    object QVendedorEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
    end
    object QVendedorVEN_CODIGO: TIntegerField
      FieldName = 'VEN_CODIGO'
    end
    object QVendedorVEN_NOMBRE: TIBStringField
      FieldName = 'VEN_NOMBRE'
      Size = 60
    end
    object QVendedorVEN_TELEFONO: TIBStringField
      FieldName = 'VEN_TELEFONO'
      Size = 13
    end
    object QVendedorVEN_CELULAR: TIBStringField
      FieldName = 'VEN_CELULAR'
      Size = 13
    end
    object QVendedorVEN_BEEPER: TIBStringField
      FieldName = 'VEN_BEEPER'
      Size = 13
    end
    object QVendedorVEN_STATUS: TIBStringField
      FieldName = 'VEN_STATUS'
      Size = 3
    end
    object QVendedorVEN_COMCOBRO: TFloatField
      FieldName = 'VEN_COMCOBRO'
      currency = True
    end
    object QVendedorVEN_COMVENTA: TFloatField
      FieldName = 'VEN_COMVENTA'
      currency = True
    end
    object QVendedorven_fecha_entrada: TDateTimeField
      FieldName = 'ven_fecha_entrada'
      EditMask = 'cc-cc-cccc'
    end
    object QVendedorven_email: TStringField
      FieldName = 'ven_email'
      Size = 50
    end
    object QVendedorven_comision_cobro: TStringField
      FieldName = 'ven_comision_cobro'
      Size = 5
    end
    object QVendedorven_comision_venta: TStringField
      FieldName = 'ven_comision_venta'
      Size = 5
    end
  end
  object dsVendedor: TDataSource
    AutoEdit = False
    DataSet = QVendedor
    OnStateChange = dsVendedorStateChange
    Left = 320
    Top = 128
  end
  object Search: TQrySearchDlgADO
    Title = 'Vendedores'
    ResultField = 'ven_codigo'
    Query.Strings = (
      'select caj_nombre, caj_codigo'
      'from cajeros')
    AliasFields.Strings = (
      'Nombre'
      'C'#243'digo')
    AliasName = DM.ADOSigma
    Left = 288
    Top = 192
  end
  object ActionList2: TActionList
    Images = DM.ImgMant
    Left = 320
    Top = 192
    object btPrior: TAction
      Caption = 'Anterior'
      ImageIndex = 8
      OnExecute = btPriorClick
    end
    object btNext: TAction
      Caption = 'Pr'#243'ximo'
      ImageIndex = 9
      OnExecute = btNextClick
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
  object QObjetivo: TADOQuery
    Connection = DM.ADOSigma
    DataSource = dsVendedor
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
        Name = 'ven_codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'emp_codigo, ven_codigo, ano, mes, monto'
      'from'
      'vendecor_objetivo'
      'where'
      'emp_codigo = :emp_codigo'
      'and ven_codigo = :ven_codigo'
      'order by'
      'ano, mes')
    Left = 288
    Top = 160
    object QObjetivoemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QObjetivoven_codigo: TIntegerField
      FieldName = 'ven_codigo'
    end
    object QObjetivoano: TIntegerField
      FieldName = 'ano'
    end
    object QObjetivomes: TIntegerField
      FieldName = 'mes'
    end
    object QObjetivomonto: TBCDField
      FieldName = 'monto'
      Precision = 18
      Size = 2
    end
    object QObjetivoDMes: TStringField
      FieldKind = fkCalculated
      FieldName = 'DMes'
      Calculated = True
    end
  end
  object DataSource1: TDataSource
    DataSet = QObjetivo
    Left = 320
    Top = 160
  end
end
