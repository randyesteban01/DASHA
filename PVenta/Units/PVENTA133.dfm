object frmMoneda: TfrmMoneda
  Left = 404
  Top = 361
  BorderIcons = [biSystemMenu, biMinimize, biHelp]
  BorderStyle = bsSingle
  Caption = 'Tipo de moneda'
  ClientHeight = 355
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
    Height = 313
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Moneda'
      object Label2: TLabel
        Left = 16
        Top = 40
        Width = 37
        Height = 13
        Caption = 'Nombre'
      end
      object Label3: TLabel
        Left = 16
        Top = 64
        Width = 28
        Height = 13
        Caption = 'Siglas'
      end
      object Label4: TLabel
        Left = 16
        Top = 88
        Width = 98
        Height = 13
        Caption = 'Venta Relaci'#243'n RD$'
        FocusControl = DBEdit4
      end
      object Label5: TLabel
        Left = 16
        Top = 112
        Width = 106
        Height = 13
        Caption = 'Compra Relaci'#243'n RD$'
        FocusControl = DBEdit5
      end
      object Label1: TLabel
        Left = 16
        Top = 16
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
      end
      object DBEdit2: TDBEdit
        Left = 128
        Top = 40
        Width = 257
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'MON_NOMBRE'
        DataSource = dsMoneda
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit3: TDBEdit
        Left = 128
        Top = 64
        Width = 65
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'MON_SIGLA'
        DataSource = dsMoneda
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit4: TDBEdit
        Left = 128
        Top = 88
        Width = 65
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'MON_RELACIONPESOVENTA'
        DataSource = dsMoneda
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object DBEdit5: TDBEdit
        Left = 128
        Top = 112
        Width = 65
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'MON_RELACIONPESOCOMPRA'
        DataSource = dsMoneda
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object DBEdit1: TDBEdit
        Left = 128
        Top = 16
        Width = 73
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        Color = clInfoBk
        DataField = 'MON_CODIGO'
        DataSource = dsMoneda
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Tasa promedio mensual'
      ImageIndex = 1
      object Label6: TLabel
        Left = 8
        Top = 8
        Width = 19
        Height = 13
        Caption = 'A'#241'o'
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 32
        Width = 541
        Height = 253
        Align = alBottom
        DataSource = dsPromedio
        Options = [dgEditing, dgTitles, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnKeyPress = DBGrid1KeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'mes'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Mes'
            Width = 37
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'tasa'
            Title.Alignment = taCenter
            Title.Caption = 'Tasa'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'tasa_compra'
            Title.Alignment = taCenter
            Title.Caption = 'Tasa de Compra'
            Width = 96
            Visible = True
          end>
      end
      object spAno: TSpinEdit
        Left = 32
        Top = 8
        Width = 49
        Height = 22
        TabStop = False
        EditorEnabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxValue = 3000
        MinValue = 1900
        ParentFont = False
        TabOrder = 1
        Value = 1900
        OnChange = spAnoChange
      end
    end
  end
  object QMoneda: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    BeforePost = QMonedaBeforePost
    AfterPost = QMonedaAfterPost
    AfterDelete = QMonedaAfterDelete
    OnNewRecord = QMonedaNewRecord
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
      'SELECT'
      'EMP_CODIGO, MON_CODIGO, MON_NOMBRE, '
      'MON_RELACIONPESOVENTA, MON_SIGLA,'
      'MON_RELACIONPESOCOMPRA'
      'FROM'
      'MONEDA'
      'WHERE'
      'EMP_CODIGO = :emp_codigo'
      'ORDER BY'
      'MON_CODIGO')
    Left = 304
    Top = 160
    object QMonedaEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'MONEDA.EMP_CODIGO'
    end
    object QMonedaMON_CODIGO: TIntegerField
      FieldName = 'MON_CODIGO'
      Origin = 'MONEDA.MON_CODIGO'
    end
    object QMonedaMON_NOMBRE: TIBStringField
      FieldName = 'MON_NOMBRE'
      Origin = 'MONEDA.MON_NOMBRE'
      Size = 50
    end
    object QMonedaMON_SIGLA: TIBStringField
      FieldName = 'MON_SIGLA'
      Origin = 'MONEDA.MON_SIGLA'
      Size = 5
    end
    object QMonedaMON_RELACIONPESOVENTA: TFloatField
      FieldName = 'MON_RELACIONPESOVENTA'
      Origin = 'MONEDA.MON_RELACIONPESOVENTA'
      currency = True
    end
    object QMonedaMON_RELACIONPESOCOMPRA: TFloatField
      FieldName = 'MON_RELACIONPESOCOMPRA'
      Origin = 'MONEDA.MON_RELACIONPESOCOMPRA'
      currency = True
    end
  end
  object dsMoneda: TDataSource
    AutoEdit = False
    DataSet = QMoneda
    OnStateChange = dsMonedaStateChange
    Left = 336
    Top = 160
  end
  object Search: TQrySearchDlgADO
    Title = 'Tipo de moneda'
    ResultField = 'mon_codigo'
    Query.Strings = (
      'select cpa_nombre, cpa_codigo'
      'from condiciones')
    AliasFields.Strings = (
      'Nombre'
      'C'#243'digo')
    AliasName = DM.ADOSigma
    Left = 272
    Top = 160
  end
  object ActionList2: TActionList
    Images = DM.ImgMant
    Left = 336
    Top = 192
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
  object QPromedio: TADOQuery
    Connection = DM.ADOSigma
    DataSource = dsMoneda
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
        Name = 'mon_codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'ano'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'emp_codigo, mon_codigo, ano, mes, tasa, tasa_compra'
      'from'
      'Moneda_Tasa_Promedio'
      'where'
      'emp_codigo = :emp_codigo'
      'and mon_codigo = :mon_codigo'
      'and ano = :ano'
      'order by'
      'mes')
    Left = 304
    Top = 128
    object QPromedioemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QPromediomon_codigo: TIntegerField
      FieldName = 'mon_codigo'
    end
    object QPromedioano: TIntegerField
      FieldName = 'ano'
    end
    object QPromediomes: TIntegerField
      FieldName = 'mes'
    end
    object QPromediotasa: TBCDField
      FieldName = 'tasa'
      Precision = 10
    end
    object QPromediotasa_compra: TBCDField
      FieldName = 'tasa_compra'
      Precision = 10
    end
  end
  object dsPromedio: TDataSource
    DataSet = QPromedio
    Left = 336
    Top = 128
  end
end
