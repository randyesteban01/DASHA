object frmConsCxP: TfrmConsCxP
  Left = 249
  Top = 152
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Consulta general de cuentas por pagar'
  ClientHeight = 561
  ClientWidth = 1136
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 57
    Width = 1136
    Height = 258
    Align = alTop
    Anchors = [akLeft, akTop, akRight, akBottom]
    Color = clInfoBk
    Ctl3D = False
    DataSource = dsProv
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgAlwaysShowSelection, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    PopupMenu = PopupMenu2
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'SUP_CODIGO'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Width = 35
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sup_rnc'
        Title.Alignment = taCenter
        Title.Caption = 'RNC'
        Width = 78
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SUP_NOMBRE'
        Title.Caption = 'Nombre del proveedor'
        Width = 372
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sup_telefono'
        Title.Alignment = taCenter
        Title.Caption = 'Tel'#233'fono'
        Width = 105
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sup_limite'
        Title.Alignment = taCenter
        Title.Caption = 'L'#237'mite'
        Width = 97
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BALANCE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Balance'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VENCIDO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Vencido'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 90
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 520
    Width = 1136
    Height = 41
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    DesignSize = (
      1136
      41)
    object BitBtn2: TBitBtn
      Left = 823
      Top = 8
      Width = 97
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Imprimir todos'
      TabOrder = 0
      OnClick = BitBtn2Click
      Glyph.Data = {
        E6000000424DE6000000000000007600000028000000100000000E0000000100
        0400000000007000000000000000000000001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333330000000000003330777777777777033088888888899703308888888888
        870333000000000000333330FCCCCCCF03333330FFFFFFFF03333330FCCCCCCF
        03333330FFFFFFFF03333330FCCCCCCF03333330FFFFFFFF0333333000000000
        03333333333333333333}
    end
    object btClose: TBitBtn
      Left = 1055
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '&Salir'
      TabOrder = 1
      OnClick = btCloseClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
        03333377777777777F333301BBBBBBBB033333773F3333337F3333011BBBBBBB
        0333337F73F333337F33330111BBBBBB0333337F373F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337FF3337F33330111B0BBBB
        0333337F337733337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F3F7F33337F333301E10BBBBB0333337F7F7F33337F333301EE0BBBBB
        0333337F777FFFFF7F3333000000000003333377777777777333}
      NumGlyphs = 2
    end
    object BitBtn1: TBitBtn
      Left = 927
      Top = 8
      Width = 121
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Imprimir proveedor'
      TabOrder = 2
      OnClick = BitBtn1Click
      Glyph.Data = {
        E6000000424DE6000000000000007600000028000000100000000E0000000100
        0400000000007000000000000000000000001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333330000000000003330777777777777033088888888899703308888888888
        870333000000000000333330FCCCCCCF03333330FFFFFFFF03333330FCCCCCCF
        03333330FFFFFFFF03333330FCCCCCCF03333330FFFFFFFF0333333000000000
        03333333333333333333}
    end
    object btRefresh: TBitBtn
      Left = 743
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Refrescar >>'
      TabOrder = 3
      OnClick = btRefreshClick
    end
    object btFind: TBitBtn
      Left = 662
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '&Buscar'
      TabOrder = 4
      TabStop = False
      OnClick = btFindClick
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
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 315
    Width = 1136
    Height = 205
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 2
    object DBGrid3: TDBGrid
      Left = 2
      Top = 2
      Width = 1132
      Height = 154
      Align = alClient
      Color = clInfoBk
      Ctl3D = False
      DataSource = dsFac
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      ParentFont = False
      PopupMenu = PopupMenu1
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'FAC_NUMERO'
          Title.Alignment = taCenter
          Title.Caption = 'N'#250'mero'
          Width = 70
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'FAC_FECHA'
          Title.Alignment = taCenter
          Title.Caption = 'Fecha'
          Width = 68
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'fac_concepto'
          Title.Caption = 'Concepto'
          Width = 316
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'FAC_VENCE'
          Title.Alignment = taCenter
          Title.Caption = 'Vence'
          Width = 66
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FAC_TOTAL'
          Title.Alignment = taCenter
          Title.Caption = 'Total'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'fac_grabado'
          Title.Alignment = taCenter
          Title.Caption = 'Grabado'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'fac_itbis'
          Title.Alignment = taCenter
          Title.Caption = 'Itbis'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'fac_exento'
          Title.Alignment = taCenter
          Title.Caption = 'Exento'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FAC_ABONO'
          Title.Alignment = taCenter
          Title.Caption = 'Abono'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Saldo'
          Title.Alignment = taCenter
          Width = 90
          Visible = True
        end>
    end
    object Memo1: TMemo
      Left = 56
      Top = 72
      Width = 433
      Height = 49
      Lines.Strings = (
        'Memo1')
      TabOrder = 1
      Visible = False
    end
    object Panel3: TPanel
      Left = 2
      Top = 156
      Width = 1132
      Height = 47
      Align = alBottom
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 2
      object LabelDia1: TLabel
        Left = 24
        Top = 8
        Width = 59
        Height = 14
        Alignment = taRightJustify
        Caption = 'LabelDia1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LabelDia2: TLabel
        Left = 24
        Top = 24
        Width = 59
        Height = 14
        Alignment = taRightJustify
        Caption = 'LabelDia2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LabelDia3: TLabel
        Left = 264
        Top = 8
        Width = 59
        Height = 14
        Alignment = taRightJustify
        Caption = 'LabelDia3'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LabelDia4: TLabel
        Left = 264
        Top = 24
        Width = 59
        Height = 14
        Alignment = taRightJustify
        Caption = 'LabelDia4'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 472
        Top = 8
        Width = 58
        Height = 14
        Caption = 'Total CxP'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 476
        Top = 24
        Width = 54
        Height = 14
        Caption = 'Vencidos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbCondi1: TStaticText
        Left = 88
        Top = 8
        Width = 113
        Height = 18
        Alignment = taRightJustify
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object lbCondi2: TStaticText
        Left = 88
        Top = 24
        Width = 113
        Height = 18
        Alignment = taRightJustify
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object lbCondi3: TStaticText
        Left = 328
        Top = 8
        Width = 113
        Height = 18
        Alignment = taRightJustify
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object lbCondi4: TStaticText
        Left = 328
        Top = 24
        Width = 113
        Height = 18
        Alignment = taRightJustify
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
      object lbVencido: TStaticText
        Left = 536
        Top = 24
        Width = 137
        Height = 18
        Alignment = taRightJustify
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
      object lbtotal: TStaticText
        Left = 536
        Top = 8
        Width = 137
        Height = 18
        Alignment = taRightJustify
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 1136
    Height = 57
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 3
    object Label12: TLabel
      Left = 8
      Top = 8
      Width = 39
      Height = 13
      Caption = 'Moneda'
    end
    object btMoneda: TSpeedButton
      Left = 92
      Top = 8
      Width = 23
      Height = 22
      Flat = True
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
      OnClick = btMonedaClick
    end
    object Label1: TLabel
      Left = 8
      Top = 32
      Width = 21
      Height = 13
      Caption = 'Tipo'
    end
    object bttipo: TSpeedButton
      Left = 92
      Top = 32
      Width = 23
      Height = 22
      Flat = True
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
      OnClick = bttipoClick
    end
    object tMoneda: TEdit
      Left = 117
      Top = 8
      Width = 196
      Height = 21
      BevelKind = bkFlat
      BiDiMode = bdLeftToRight
      BorderStyle = bsNone
      Color = clInfoBk
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 0
    end
    object edMoneda: TEdit
      Left = 56
      Top = 8
      Width = 33
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnChange = edMonedaChange
      OnKeyDown = edMonedaKeyDown
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 400
      Top = 8
      Width = 273
      Height = 21
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
      TabOrder = 2
      TabStop = False
      OnClick = btRefreshClick
    end
    object cksucursal: TCheckBox
      Left = 328
      Top = 8
      Width = 64
      Height = 17
      Caption = 'Sucursal'
      TabOrder = 3
      OnClick = btRefreshClick
    end
    object tTipo: TEdit
      Left = 117
      Top = 32
      Width = 196
      Height = 21
      BevelKind = bkFlat
      BiDiMode = bdLeftToRight
      BorderStyle = bsNone
      Color = clInfoBk
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 4
    end
    object edTipo: TEdit
      Left = 56
      Top = 32
      Width = 33
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnChange = edTipoChange
      OnKeyDown = edTipoKeyDown
    end
  end
  object QProv: TADOQuery
    Connection = DM.ADOSigma
    AfterOpen = QProvAfterOpen
    CommandTimeout = 120
    Parameters = <
      item
        Name = 'emp'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'suc'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'fec'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'mon'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'p.*, s.sup_telefono, s.sup_limite, s.sup_rnc'
      'from'
      'pr_cxp (:emp, :suc, :fec, :mon) p, proveedores s'
      'where'
      'p.emp_codigo = s.emp_codigo'
      'and p.sup_codigo = s.sup_codigo')
    Left = 168
    Top = 176
    object QProvEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'PR_CXP.EMP_CODIGO'
    end
    object QProvSUP_CODIGO: TIntegerField
      FieldName = 'SUP_CODIGO'
      Origin = 'PR_CXP.SUP_CODIGO'
    end
    object QProvSUP_NOMBRE: TIBStringField
      FieldName = 'SUP_NOMBRE'
      Origin = 'PR_CXP.SUP_NOMBRE'
      Size = 60
    end
    object QProvBALANCE: TFloatField
      FieldName = 'BALANCE'
      Origin = 'PR_CXP.BALANCE'
      currency = True
    end
    object QProvid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object QProvsup_telefono: TStringField
      FieldName = 'sup_telefono'
      Size = 30
    end
    object QProvsup_limite: TBCDField
      FieldName = 'sup_limite'
      currency = True
      Precision = 18
      Size = 2
    end
    object QProvsup_rnc: TStringField
      FieldName = 'sup_rnc'
      Size = 30
    end
    object QProvVENCIDO: TBCDField
      FieldName = 'VENCIDO'
      currency = True
      Precision = 15
      Size = 2
    end
  end
  object dsProv: TDataSource
    DataSet = QProv
    Left = 200
    Top = 176
  end
  object QFac: TADOQuery
    Connection = DM.ADOSigma
    BeforeOpen = QFacBeforeOpen
    OnCalcFields = QFacCalcFields
    CommandTimeout = 120
    DataSource = dsProv
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
        Name = 'suc1'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'suc2'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'sup_codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'FAC_NUMERO, FAC_FECHA, FAC_VENCE, FAC_TOTAL,'
      'FAC_ABONO, EMP_CODIGO, sup_codigo, fac_concepto,'
      'fac_itbis, fac_exento, fac_grabado'
      'from'
      'PROVFACTURAS'
      'where'
      'emp_codigo = :emp_codigo'
      'and suc_codigo between :suc1 and :suc2'
      'and sup_codigo = :sup_codigo'
      'and fac_status = '#39'PEN'#39
      'order by fac_fecha')
    Left = 168
    Top = 208
    object QFacFAC_NUMERO: TIBStringField
      FieldName = 'FAC_NUMERO'
      Origin = 'PROVFACTURAS.FAC_NUMERO'
      Required = True
      Size = 15
    end
    object QFacFAC_FECHA: TDateTimeField
      FieldName = 'FAC_FECHA'
      Origin = 'PROVFACTURAS.FAC_FECHA'
    end
    object QFacFAC_VENCE: TDateTimeField
      FieldName = 'FAC_VENCE'
      Origin = 'PROVFACTURAS.FAC_VENCE'
    end
    object QFacFAC_TOTAL: TFloatField
      FieldName = 'FAC_TOTAL'
      Origin = 'PROVFACTURAS.FAC_TOTAL'
      currency = True
    end
    object QFacFAC_ABONO: TFloatField
      FieldName = 'FAC_ABONO'
      Origin = 'PROVFACTURAS.FAC_ABONO'
      currency = True
    end
    object QFacSaldo: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Saldo'
      currency = True
      Calculated = True
    end
    object QFacEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'PROVFACTURAS.EMP_CODIGO'
      Required = True
    end
    object QFacSUP_CODIGO: TIntegerField
      FieldName = 'SUP_CODIGO'
      Origin = 'PROVFACTURAS.SUP_CODIGO'
      Required = True
    end
    object QFacfac_concepto: TStringField
      FieldName = 'fac_concepto'
      Size = 60
    end
    object QFacfac_itbis: TBCDField
      FieldName = 'fac_itbis'
      currency = True
      Precision = 15
      Size = 2
    end
    object QFacfac_exento: TBCDField
      FieldName = 'fac_exento'
      currency = True
      Precision = 15
      Size = 2
    end
    object QFacfac_grabado: TBCDField
      FieldName = 'fac_grabado'
      currency = True
      Precision = 15
      Size = 2
    end
  end
  object dsFac: TDataSource
    DataSet = QFac
    Left = 200
    Top = 208
  end
  object Search: TQrySearchDlgADO
    Title = 'Proveedores'
    ResultField = 'sup_codigo'
    AliasFields.Strings = (
      'Nombre'
      'C'#243'digo')
    AliasName = DM.ADOSigma
    Left = 168
    Top = 272
  end
  object PopupMenu1: TPopupMenu
    Left = 352
    Top = 129
    object Verpagos1: TMenuItem
      Caption = 'Ver pagos'
      OnClick = Verpagos1Click
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
    Left = 352
    Top = 96
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
    Left = 384
    Top = 96
  end
  object QAntig: TADOQuery
    Connection = DM.ADOSigma
    BeforeOpen = QAntigBeforeOpen
    CommandTimeout = 120
    DataSource = dsProv
    Parameters = <
      item
        Name = 'emp_codigo'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'fecha'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'sup_codigo'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'r.*'
      'from'
      
        'pr_antig_saldo_prov (:emp_codigo, :fecha, :sup_codigo) r, provee' +
        'dores p'
      'where'
      'r.sup_codigo = p.sup_codigo'
      '')
    Left = 168
    Top = 240
    object QAntigid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object QAntigSUP_CODIGO: TIntegerField
      FieldName = 'SUP_CODIGO'
    end
    object QAntigSUP_NOMBRE: TStringField
      FieldName = 'SUP_NOMBRE'
      Size = 60
    end
    object QAntigSUP_TELEFONO: TStringField
      FieldName = 'SUP_TELEFONO'
      Size = 30
    end
    object QAntigSUP_RNC: TStringField
      FieldName = 'SUP_RNC'
      Size = 30
    end
    object QAntigBALANCE: TBCDField
      FieldName = 'BALANCE'
      Precision = 15
      Size = 2
    end
    object QAntigDIA1: TBCDField
      FieldName = 'DIA1'
      Precision = 15
      Size = 2
    end
    object QAntigDIA2: TBCDField
      FieldName = 'DIA2'
      Precision = 15
      Size = 2
    end
    object QAntigDIA3: TBCDField
      FieldName = 'DIA3'
      Precision = 15
      Size = 2
    end
    object QAntigDIA4: TBCDField
      FieldName = 'DIA4'
      Precision = 15
      Size = 2
    end
  end
  object dsAntig: TDataSource
    DataSet = QAntig
    OnDataChange = dsAntigDataChange
    Left = 200
    Top = 242
  end
  object qRepBalanceFact: TADOQuery
    Connection = DM.ADOSigma
    CommandTimeout = 120
    Parameters = <
      item
        Name = 'EMP'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'SUP'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'DECLARE @SUC INT, @FAC INT, @tipo INT, @FORMA CHAR(1), @PAGO NUM' +
        'ERIC(18,2), @CLI INT, @EMPRESA INT, @SUP INT, @FACSUP VARCHAR(20' +
        ')'
      ''
      'SET @EMPRESA = :EMP'
      'SET @SUP     = :SUP'
      ''
      ''
      ''
      'DECLARE Cr_Actualiza_CXP CURSOR FOR '
      
        'SELECT F.EMP_CODIGO, F.suc_codigo SUC, F.FAC_numero FAC, F.sup_c' +
        'odigo SUP'
      'FROM ProvFacturas F'
      
        'WHERE F.fac_status NOT IN ('#39'ANU'#39') AND F.EMP_CODIGO = @EMPRESA AN' +
        'D F.SUP_CODIGO = @SUP'
      'ORDER BY F.sup_codigo, F.fac_numero'
      ''
      ''
      'OPEN Cr_Actualiza_CXP'
      
        'FETCH NEXT FROM Cr_Actualiza_CXP INTO @EMPRESA, @SUC, @FACSUP, @' +
        'SUP'
      'WHILE @@fetch_status = 0'
      'BEGIN'
      'SET @PAGO = 0'
      ''
      'set @pago = @pago + '
      
        'isnull((select isnull(sum(pago),0) from contpr_detalle_pago_cxp ' +
        '(@EMPRESA, @SUC, @SUP, @FACSUP, getdate())),0)'
      ''
      ''
      ''
      'UPDATE PROVFACTURAS'
      'SET fac_abono = isnull(@PAGO,0),'
      
        '    fac_status = (CASE WHEN (FAC_TOTAL-isnull(@PAGO,0))<=1 THEN ' +
        #39'PAG'#39' ELSE '#39'PEN'#39' END)'
      
        'WHERE emp_codigo = @EMPRESA AND suc_codigo = @SUC AND sup_codigo' +
        ' = @SUP'
      'AND FAC_STATUS <> '#39'ANU'#39
      'AND RTRIM(fac_numero) = @FACSUP'
      ''
      
        'FETCH NEXT FROM Cr_Actualiza_CXP INTO @EMPRESA, @SUC, @FACSUP, @' +
        'SUP'
      'END'
      'CLOSE Cr_Actualiza_CXP'
      'DEALLOCATE Cr_Actualiza_CXP'
      ''
      'exec pr_actualiza_bce @empresa'
      ''
      ''
      '')
    Left = 328
    Top = 192
  end
  object PopupMenu2: TPopupMenu
    Left = 400
    Top = 137
    object MenuItem2: TMenuItem
      Caption = 'Reparar Facturas'
      OnClick = MenuItem2Click
    end
  end
end
