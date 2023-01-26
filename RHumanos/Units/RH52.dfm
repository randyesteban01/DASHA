object frmTablaISR: TfrmTablaISR
  Left = 320
  Top = 240
  BorderIcons = [biSystemMenu, biMinimize, biHelp]
  BorderStyle = bsSingle
  Caption = 'Tabla de ISR'
  ClientHeight = 295
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
    Height = 241
    ActivePage = TabSheet1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Registro'
      object Label1: TLabel
        Left = 8
        Top = 40
        Width = 30
        Height = 13
        Caption = 'Desde'
      end
      object Label2: TLabel
        Left = 8
        Top = 16
        Width = 48
        Height = 13
        Caption = 'Secuencia'
      end
      object Label3: TLabel
        Left = 8
        Top = 64
        Width = 28
        Height = 13
        Caption = 'Hasta'
      end
      object Label4: TLabel
        Left = 8
        Top = 88
        Width = 48
        Height = 13
        Caption = '% Exceso'
      end
      object Label5: TLabel
        Left = 8
        Top = 112
        Width = 67
        Height = 13
        Caption = 'Monto Exceso'
      end
      object Label6: TLabel
        Left = 8
        Top = 136
        Width = 76
        Height = 13
        Caption = 'Monto Aumento'
      end
      object Label7: TLabel
        Left = 192
        Top = 40
        Width = 77
        Height = 13
        Caption = '** Salario Anual'
      end
      object Label8: TLabel
        Left = 192
        Top = 64
        Width = 77
        Height = 13
        Caption = '** Salario Anual'
      end
      object Label9: TLabel
        Left = 192
        Top = 88
        Width = 188
        Height = 13
        Caption = '** Porcentaje a aplicar sobre el exceso'
      end
      object Label10: TLabel
        Left = 192
        Top = 112
        Width = 209
        Height = 13
        Caption = '** Monto a tomar en cuenta para el exceso'
      end
      object Label11: TLabel
        Left = 192
        Top = 136
        Width = 202
        Height = 13
        Caption = '** Monto a aumentar  sobre el porcentaje'
      end
      object DBEdit1: TDBEdit
        Left = 96
        Top = 16
        Width = 89
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        Color = clInfoBk
        DataField = 'isr_secuencia'
        DataSource = dsISR
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
        Left = 96
        Top = 40
        Width = 89
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'Desde'
        DataSource = dsISR
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 96
        Top = 64
        Width = 89
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'Hasta'
        DataSource = dsISR
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 96
        Top = 88
        Width = 89
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'Exceso_Porciento'
        DataSource = dsISR
        TabOrder = 3
      end
      object DBEdit5: TDBEdit
        Left = 96
        Top = 112
        Width = 89
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'Exceso_Monto'
        DataSource = dsISR
        TabOrder = 4
      end
      object DBEdit6: TDBEdit
        Left = 96
        Top = 136
        Width = 89
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'Exceso_Aumento'
        DataSource = dsISR
        TabOrder = 5
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Consulta'
      ImageIndex = 1
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 529
        Height = 213
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
            FieldName = 'Desde'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Hasta'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Exceso_Porciento'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Exceso_Monto'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Exceso_Aumento'
            Visible = True
          end>
      end
    end
  end
  object QISR: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    BeforePost = QISRBeforePost
    AfterPost = QISRAfterPost
    AfterDelete = QISRAfterDelete
    OnNewRecord = QISRNewRecord
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
        Name = 'sec'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select '
      'emp_codigo, isr_secuencia, Desde, Hasta,'
      'Exceso_Monto, Exceso_Porciento, Exceso_Aumento'
      'from'
      'ISR'
      'where'
      'emp_codigo = :emp_codigo'
      'and isr_secuencia = :sec'
      'order by'
      'isr_secuencia')
    Left = 432
    Top = 144
    object QISRemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QISRisr_secuencia: TIntegerField
      FieldName = 'isr_secuencia'
    end
    object QISRDesde: TBCDField
      FieldName = 'Desde'
      currency = True
      Precision = 15
      Size = 2
    end
    object QISRHasta: TBCDField
      FieldName = 'Hasta'
      currency = True
      Precision = 15
      Size = 2
    end
    object QISRExceso_Monto: TBCDField
      FieldName = 'Exceso_Monto'
      currency = True
      Precision = 15
      Size = 2
    end
    object QISRExceso_Porciento: TBCDField
      FieldName = 'Exceso_Porciento'
      currency = True
      Precision = 15
      Size = 2
    end
    object QISRExceso_Aumento: TBCDField
      FieldName = 'Exceso_Aumento'
      currency = True
      Precision = 15
      Size = 2
    end
  end
  object dsISR: TDataSource
    AutoEdit = False
    DataSet = QISR
    OnStateChange = dsISRStateChange
    Left = 464
    Top = 144
  end
  object Search: TQrySearchDlgADO
    Title = 'Tabla ISR'
    ResultField = 'isr_secuencia'
    Query.Strings = (
      'select fpa_nombre, fpa_codigo'
      'from formaspago')
    AliasFields.Strings = (
      'Limite inferior'
      'Limite superior'
      'Secuencia')
    AliasName = DM.ADOSigma
    Left = 432
    Top = 112
  end
  object ActionList2: TActionList
    Images = DM.ImgMant
    Left = 464
    Top = 112
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
      'select '
      'emp_codigo, isr_secuencia, Desde, Hasta,'
      'Exceso_Monto, Exceso_Porciento, Exceso_Aumento'
      'from'
      'ISR'
      'where'
      'emp_codigo = :emp_codigo'
      'order by'
      'Desde, Hasta')
    Left = 432
    Top = 176
    object QListadoemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QListadoisr_secuencia: TIntegerField
      FieldName = 'isr_secuencia'
    end
    object QListadoDesde: TBCDField
      FieldName = 'Desde'
      currency = True
      Precision = 15
      Size = 2
    end
    object QListadoHasta: TBCDField
      FieldName = 'Hasta'
      currency = True
      Precision = 15
      Size = 2
    end
    object QListadoExceso_Monto: TBCDField
      FieldName = 'Exceso_Monto'
      currency = True
      Precision = 15
      Size = 2
    end
    object QListadoExceso_Porciento: TBCDField
      FieldName = 'Exceso_Porciento'
      currency = True
      Precision = 15
      Size = 2
    end
    object QListadoExceso_Aumento: TBCDField
      FieldName = 'Exceso_Aumento'
      currency = True
      Precision = 15
      Size = 2
    end
  end
  object dsListado: TDataSource
    DataSet = QListado
    Left = 464
    Top = 176
  end
end
