object frmRepAnexos: TfrmRepAnexos
  Left = 207
  Top = 340
  ActiveControl = cbMes
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Reporte de Anexos'
  ClientHeight = 298
  ClientWidth = 467
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
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 144
    Top = 216
    Width = 19
    Height = 13
    Caption = 'A'#241'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 247
    Top = 216
    Width = 20
    Height = 13
    Caption = 'Mes'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label15: TLabel
    Left = 144
    Top = 192
    Width = 41
    Height = 13
    Caption = 'Sucursal'
  end
  object btClose: TBitBtn
    Left = 384
    Top = 264
    Width = 75
    Height = 25
    Caption = '&Salir'
    TabOrder = 0
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
  object BitBtn2: TBitBtn
    Left = 304
    Top = 264
    Width = 75
    Height = 25
    Caption = 'Imprimir'
    TabOrder = 1
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
  object spAno: TSpinEdit
    Left = 192
    Top = 216
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
    TabOrder = 3
    Value = 1900
  end
  object cbMes: TComboBox
    Left = 272
    Top = 216
    Width = 121
    Height = 21
    BevelKind = bkFlat
    Style = csDropDownList
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemHeight = 13
    ParentFont = False
    TabOrder = 4
    TabStop = False
    Items.Strings = (
      'Enero'
      'Febrero'
      'Marzo'
      'Abril'
      'Mayo'
      'Junio'
      'Julio'
      'Agosto'
      'Septiembre'
      'Octubre'
      'Noviembre'
      'Diciembre')
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 467
    Height = 185
    Align = alTop
    Color = clInfoBk
    DataSource = dsAnexos
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 5
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ANE_NOMBRE'
        Title.Caption = 'Anexo'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CAT_NOMBRE'
        Title.Caption = 'Descripcion de la Cuenta'
        Visible = True
      end>
  end
  object cbTipo: TRadioGroup
    Left = 0
    Top = 185
    Width = 137
    Height = 113
    Align = alLeft
    ItemIndex = 0
    Items.Strings = (
      'Todos los Anexos'
      'Anexo Seleccionado')
    TabOrder = 6
  end
  object ckConsol: TCheckBox
    Left = 192
    Top = 256
    Width = 97
    Height = 17
    Caption = 'Consolidado'
    TabOrder = 7
  end
  object ckmail: TCheckBox
    Left = 192
    Top = 240
    Width = 97
    Height = 17
    Caption = 'Enviar por email'
    TabOrder = 8
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 192
    Top = 192
    Width = 201
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
  end
  object QAnexos: TADOQuery
    Connection = DM.ADOSigma
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
      'A.ANE_CODIGO, A.ANE_NOMBRE, A.CAT_CUENTA, '
      'A.EMP_CODIGO, C.CAT_NOMBRE'
      'FROM'
      'CONTANEXOS A, CONTCATALOGO C'
      'WHERE '
      'A.EMP_CODIGO = C.EMP_CODIGO'
      'AND A.CAT_CUENTA = C.CAT_CUENTA'
      'AND A.EMP_CODIGO = :EMP_CODIGO'
      'ORDER BY A.ANE_CODIGO')
    Left = 112
    Top = 96
    object QAnexosANE_CODIGO: TIntegerField
      FieldName = 'ANE_CODIGO'
      Origin = 'CONTANEXOS.ANE_CODIGO'
      Required = True
    end
    object QAnexosANE_NOMBRE: TIBStringField
      FieldName = 'ANE_NOMBRE'
      Origin = 'CONTANEXOS.ANE_NOMBRE'
      Size = 60
    end
    object QAnexosCAT_CUENTA: TIBStringField
      FieldName = 'CAT_CUENTA'
      Origin = 'CONTANEXOS.CAT_CUENTA'
      Size = 15
    end
    object QAnexosEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'CONTANEXOS.EMP_CODIGO'
      Required = True
    end
    object QAnexosCAT_NOMBRE: TIBStringField
      FieldName = 'CAT_NOMBRE'
      Origin = 'CONTCATALOGO.CAT_NOMBRE'
      Size = 60
    end
  end
  object dsAnexos: TDataSource
    AutoEdit = False
    DataSet = QAnexos
    Left = 144
    Top = 96
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
    Left = 112
    Top = 48
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
    Left = 144
    Top = 48
  end
end
