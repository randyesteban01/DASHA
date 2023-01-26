object frmAccesoEmp: TfrmAccesoEmp
  Left = 276
  Top = 122
  BorderStyle = bsSingle
  Caption = 'Accesos por Empresas'
  ClientHeight = 318
  ClientWidth = 536
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
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 112
    Height = 13
    Caption = 'Nombre del Usuario'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 224
    Top = 8
    Width = 185
    Height = 13
    Caption = 'Compa'#241#237'a a la que tiene acceso'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 24
    Width = 209
    Height = 257
    Color = clInfoBk
    Ctl3D = False
    DataSource = dsUsuarios
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'USU_NOMBRE'
        Title.Caption = 'Grupo de Usuario'
        Width = 180
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 224
    Top = 24
    Width = 305
    Height = 257
    Color = clInfoBk
    Ctl3D = False
    DataSource = dsEmp
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'EMP_CODIGO'
        Title.Caption = 'C'#243'digo'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMP_NOMBRE'
        Title.Caption = 'Compa'#241#237'a a la que tiene acceso'
        Width = 232
        Visible = True
      end>
  end
  object BitBtn2: TBitBtn
    Left = 8
    Top = 288
    Width = 137
    Height = 25
    Caption = 'Eliminar Compa'#241#237'a'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = BitBtn2Click
  end
  object BitBtn1: TBitBtn
    Left = 152
    Top = 288
    Width = 297
    Height = 25
    Caption = 'Seleccionar Compa'#241#237'a para dar acceso el grupo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = BitBtn1Click
  end
  object BitBtn3: TBitBtn
    Left = 456
    Top = 288
    Width = 75
    Height = 25
    Caption = '&Salir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = BitBtn3Click
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
  object QUsuarios: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      'USU_CODIGO, USU_NOMBRE'
      'FROM'
      'USUARIOS'
      'ORDER BY'
      'USU_NOMBRE')
    Left = 104
    Top = 80
    object QUsuariosUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
      Origin = 'USUARIOS.USU_CODIGO'
      Required = True
    end
    object QUsuariosUSU_NOMBRE: TIBStringField
      FieldName = 'USU_NOMBRE'
      Origin = 'USUARIOS.USU_NOMBRE'
      Size = 60
    end
  end
  object dsUsuarios: TDataSource
    DataSet = QUsuarios
    Left = 136
    Top = 80
  end
  object QEmpresas: TADOQuery
    Connection = DM.ADOSigma
    DataSource = dsUsuarios
    Parameters = <
      item
        Name = 'USU_CODIGO'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT'
      'E.EMP_CODIGO, E.EMP_NOMBRE'
      'FROM'
      'EMPRESAS E, EMPACCESOS A'
      'WHERE'
      'E.EMP_CODIGO = A.EMP_CODIGO'
      'AND A.USU_CODIGO = :USU_CODIGO'
      'ORDER BY'
      'E.EMP_NOMBRE')
    Left = 104
    Top = 112
    object QEmpresasEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'EMPRESAS.EMP_CODIGO'
      Required = True
    end
    object QEmpresasEMP_NOMBRE: TIBStringField
      FieldName = 'EMP_NOMBRE'
      Origin = 'EMPRESAS.EMP_NOMBRE'
      Size = 60
    end
  end
  object dsEmp: TDataSource
    DataSet = QEmpresas
    Left = 136
    Top = 112
  end
  object QEmp: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    DataSource = dsUsuarios
    Parameters = <
      item
        Name = 'USU_CODIGO'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT'
      'EMP_CODIGO, USU_CODIGO'
      'FROM'
      'EMPACCESOS'
      'WHERE'
      'USU_CODIGO = :USU_CODIGO')
    Left = 104
    Top = 144
    object QEmpEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'EMPACCESOS.EMP_CODIGO'
      Required = True
    end
    object QEmpUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
      Origin = 'EMPACCESOS.USU_CODIGO'
      Required = True
    end
  end
  object Query1: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <>
    Left = 104
    Top = 176
  end
end
