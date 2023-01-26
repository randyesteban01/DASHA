object frmAutorizacionCredito: TfrmAutorizacionCredito
  Left = 421
  Top = 116
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Autorizaci'#243'n de Cr'#233'dito'
  ClientHeight = 405
  ClientWidth = 690
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
  OnKeyPress = FormKeyPress
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 142
    Height = 13
    Caption = 'Par'#225'metros para la carta'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 344
    Top = 8
    Width = 61
    Height = 13
    Caption = 'Empleados'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btClose: TBitBtn
    Left = 608
    Top = 376
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
  object BitBtn1: TBitBtn
    Left = 488
    Top = 376
    Width = 115
    Height = 25
    Caption = 'Buscar empleado'
    TabOrder = 1
    OnClick = BitBtn1Click
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
      0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF000000000000000000000000000000000000000000FF00FF0000000000FFFF
      FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF0000000000FFFFFF00000000000000000000000000FF00FF0000000000FFFF
      FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF0000000000FFFFFF00000000000000000000000000FF00FF00000000000000
      00000000000000000000000000000000000000000000FF00FF00000000000000
      00000000000000000000000000000000000000000000FF00FF00000000000000
      0000FFFFFF00000000000000000000000000000000000000000000000000FFFF
      FF000000000000000000000000000000000000000000FF00FF00000000000000
      0000FFFFFF00000000000000000000000000FF00FF000000000000000000FFFF
      FF000000000000000000000000000000000000000000FF00FF00000000000000
      0000FFFFFF00000000000000000000000000FF00FF000000000000000000FFFF
      FF000000000000000000000000000000000000000000FF00FF00FF00FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
      FF0000000000FFFFFF00000000000000000000000000FF00FF0000000000FFFF
      FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF000000000000000000000000000000000000000000FF00FF00000000000000
      0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00FF000000
      00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00FF000000
      0000FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00FF000000
      00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
  end
  object btPrint: TBitBtn
    Left = 408
    Top = 376
    Width = 75
    Height = 25
    Caption = '&Imprimir'
    TabOrder = 2
    OnClick = btPrintClick
    Glyph.Data = {
      66010000424D6601000000000000760000002800000014000000140000000100
      040000000000F000000000000000000000001000000010000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
      DDDDDDDD0000DDDDDDDDDDDDDDDDDDDD0000DD000DDDDDDDDDD000DD0000D000
      000000000000000D0000D0F8888888888888880D0000D0F8888888888888880D
      0000D0F8888888822899880D0000D0FFFFFFFFFFFFFFFF0D0000D70077777777
      7777007D0000DDD00000000000000DDD0000DDD00FFFFFFFFFF00DDD0000DDDD
      0F00000000F0DDDD0000DDDD0FFFFFFFFFF0DDDD0000DDDD0F00000000F0DDDD
      0000DDDD0FFFFFFFFFF0DDDD0000DDDD0F00FFFFFFF0DDDD0000DDDD0FFFFFFF
      FFF0DDDD0000DDDD000000000000DDDD0000DDDDDDDDDDDDDDDDDDDD0000DDDD
      DDDDDDDDDDDDDDDD0000}
  end
  object StringGrid1: TStringGrid
    Left = 8
    Top = 24
    Width = 329
    Height = 345
    ColCount = 2
    DefaultColWidth = 120
    DefaultRowHeight = 18
    RowCount = 2
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    TabOrder = 3
    ColWidths = (
      120
      199)
    RowHeights = (
      18
      18)
  end
  object DBGrid1: TDBGrid
    Left = 344
    Top = 24
    Width = 337
    Height = 345
    DataSource = dsEmpleados
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'emp_nombre'
        Title.Caption = 'Nombre del Empleado'
        Width = 317
        Visible = True
      end>
  end
  object WordApplication1: TWordApplication
    AutoConnect = True
    ConnectKind = ckRunningOrNew
    AutoQuit = False
    Left = 112
    Top = 240
  end
  object WordDocument1: TWordDocument
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 144
    Top = 240
  end
  object OpenDialog1: TOpenDialog
    Left = 176
    Top = 240
  end
  object Search: TQrySearchDlgADO
    Title = 'Listado de Empleados'
    ResultField = 'emp_numero'
    Query.Strings = (
      ''
      '')
    AliasFields.Strings = (
      'Nombre'
      'Apelllido'
      'Cedula'
      'Numero')
    AliasName = DM.ADOSigma
    Left = 176
    Top = 272
  end
  object dsEmpleados: TDataSource
    DataSet = QEmpleados
    Left = 144
    Top = 272
  end
  object QEmpleados: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
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
      
        '(e.emp_nombres+'#39' '#39'+e.emp_apellido_paterno+'#39' '#39'+e.emp_apellido_mat' +
        'erno) as emp_nombre,'
      'e.emp_fecha_entrada, p.pos_nombre, e.emp_salario, e.emp_numero,'
      'g.gru_nombre, e.emp_cedula, e.emp_telefono1, e.emp_direccion,'
      'e.emp_edad, e.emp_sexo'
      'from'
      'empleados e, posiciones p, grupos_trabajo g'
      'where'
      'e.pos_codigo = p.pos_codigo'
      'and e.gru_codigo = g.gru_codigo'
      'and e.emp_codigo = g.emp_codigo'
      'and e.emp_codigo = :emp_codigo'
      'order by 1')
    Left = 112
    Top = 272
    object QEmpleadosemp_nombre: TStringField
      DisplayWidth = 219
      FieldName = 'emp_nombre'
      ReadOnly = True
      Size = 182
    end
    object QEmpleadosemp_fecha_entrada: TDateTimeField
      DisplayWidth = 20
      FieldName = 'emp_fecha_entrada'
    end
    object QEmpleadospos_nombre: TStringField
      DisplayWidth = 72
      FieldName = 'pos_nombre'
      Size = 60
    end
    object QEmpleadosemp_salario: TBCDField
      DisplayWidth = 19
      FieldName = 'emp_salario'
      currency = True
      Precision = 15
      Size = 2
    end
    object QEmpleadosemp_numero: TIntegerField
      FieldName = 'emp_numero'
    end
    object QEmpleadosgru_nombre: TStringField
      FieldName = 'gru_nombre'
      Size = 60
    end
    object QEmpleadosemp_cedula: TStringField
      FieldName = 'emp_cedula'
      Size = 13
    end
    object QEmpleadosemp_telefono1: TStringField
      FieldName = 'emp_telefono1'
      Size = 13
    end
    object QEmpleadosemp_direccion: TMemoField
      FieldName = 'emp_direccion'
      BlobType = ftMemo
    end
    object QEmpleadosemp_edad: TIntegerField
      FieldName = 'emp_edad'
    end
    object QEmpleadosemp_sexo: TStringField
      FieldName = 'emp_sexo'
      Size = 10
    end
  end
  object QCarta: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    AfterOpen = QCartaAfterOpen
    Parameters = <>
    SQL.Strings = (
      'select'
      'Campo, Valor, Formato, Valor_Fijo'
      'from'
      'RH_Autorizacion_Credito'
      'order by'
      'secuencia')
    Left = 112
    Top = 304
    object QCartaCampo: TStringField
      FieldName = 'Campo'
      Size = 50
    end
    object QCartaValor: TStringField
      FieldName = 'Valor'
      Size = 50
    end
    object QCartaFormato: TStringField
      FieldName = 'Formato'
      Size = 50
    end
    object QCartaValor_Fijo: TStringField
      FieldName = 'Valor_Fijo'
      Size = 50
    end
  end
end
