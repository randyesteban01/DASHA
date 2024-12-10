object frmRepEmpleados: TfrmRepEmpleados
  Left = 328
  Top = 297
  ActiveControl = rgtipo
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Reporte de Empleados'
  ClientHeight = 268
  ClientWidth = 499
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 8
    Top = 104
    Width = 72
    Height = 13
    Caption = 'Tipo de n'#243'mina'
  end
  object Label1: TLabel
    Left = 8
    Top = 128
    Width = 64
    Height = 13
    Caption = 'Sueldo desde'
  end
  object Label3: TLabel
    Left = 8
    Top = 152
    Width = 62
    Height = 13
    Caption = 'Sueldo hasta'
  end
  object Label4: TLabel
    Left = 8
    Top = 176
    Width = 61
    Height = 13
    Caption = 'Fecha desde'
  end
  object Label5: TLabel
    Left = 8
    Top = 200
    Width = 59
    Height = 13
    Caption = 'Fecha hasta'
  end
  object Label6: TLabel
    Left = 256
    Top = 104
    Width = 82
    Height = 13
    Caption = 'Grupo de trabajo'
  end
  object Label7: TLabel
    Left = 256
    Top = 128
    Width = 38
    Height = 13
    Caption = 'Posicion'
  end
  object Label8: TLabel
    Left = 256
    Top = 152
    Width = 53
    Height = 13
    Caption = 'Estado civil'
  end
  object Label9: TLabel
    Left = 256
    Top = 176
    Width = 84
    Height = 13
    Caption = 'Tipo de empleado'
  end
  object Label10: TLabel
    Left = 256
    Top = 200
    Width = 72
    Height = 13
    Caption = 'Forma de pago'
  end
  object btClose: TBitBtn
    Left = 408
    Top = 232
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
  object btPrint: TBitBtn
    Left = 328
    Top = 232
    Width = 75
    Height = 25
    Caption = '&Imprimir'
    TabOrder = 1
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
  object rgtipo: TRadioGroup
    Left = 8
    Top = 8
    Width = 481
    Height = 89
    Caption = 'Tipo de reporte'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'Reporte General'
      'Reporte de Salarios'
      'Por fecha de Ingreso'
      'Cumplea'#241'os'
      'Direcciones y Tel'#233'fonos'
      'Por Posicion'
      'Por Estado Civil'
      'Por Tipo de Empleado'
      'Por Forma de Pago')
    TabOrder = 2
  end
  object cbtiponomina: TDBLookupComboBox
    Left = 104
    Top = 104
    Width = 145
    Height = 21
    KeyField = 'tno_codigo'
    ListField = 'tno_nombre'
    ListSource = dsTipoNomina
    TabOrder = 3
  end
  object edsueldodesde: TEdit
    Left = 104
    Top = 128
    Width = 81
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    TabOrder = 4
  end
  object edsueldohasta: TEdit
    Left = 104
    Top = 152
    Width = 81
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    TabOrder = 5
  end
  object fdesde: TDateTimePicker
    Left = 104
    Top = 176
    Width = 81
    Height = 21
    Date = 39319.000000000000000000
    Time = 39319.000000000000000000
    TabOrder = 6
  end
  object fhasta: TDateTimePicker
    Left = 104
    Top = 200
    Width = 81
    Height = 21
    Date = 39319.000000000000000000
    Time = 39319.000000000000000000
    TabOrder = 7
  end
  object cbgrupo: TDBLookupComboBox
    Left = 344
    Top = 104
    Width = 145
    Height = 21
    KeyField = 'gru_codigo'
    ListField = 'gru_nombre'
    ListSource = dsGrupos
    TabOrder = 8
  end
  object cbposicion: TDBLookupComboBox
    Left = 344
    Top = 128
    Width = 145
    Height = 21
    KeyField = 'pos_codigo'
    ListField = 'pos_nombre'
    ListSource = dsPosicion
    TabOrder = 9
  end
  object cbestado: TDBLookupComboBox
    Left = 344
    Top = 152
    Width = 145
    Height = 21
    KeyField = 'est_codigo'
    ListField = 'est_nombre'
    ListSource = dsEstado
    TabOrder = 10
  end
  object cbtipoemp: TDBLookupComboBox
    Left = 344
    Top = 176
    Width = 145
    Height = 21
    KeyField = 'tip_codigo'
    ListField = 'tip_nombre'
    ListSource = dsTipoEmp
    TabOrder = 11
  end
  object cbformapago: TComboBox
    Left = 344
    Top = 200
    Width = 145
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 12
    Text = 'Efectivo'
    Items.Strings = (
      'Efectivo'
      'Banco'
      'Cheque')
  end
  object cktipo: TCheckBox
    Left = 88
    Top = 104
    Width = 15
    Height = 17
    TabOrder = 13
  end
  object QTipoNomina: TADOQuery
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
      'tno_codigo')
    Left = 280
    Top = 128
    object QTipoNominatno_codigo: TIntegerField
      FieldName = 'tno_codigo'
    end
    object QTipoNominatno_nombre: TStringField
      FieldName = 'tno_nombre'
      Size = 60
    end
  end
  object dsTipoNomina: TDataSource
    DataSet = QTipoNomina
    Left = 312
    Top = 128
  end
  object QGrupos: TADOQuery
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
      'gru_codigo, gru_nombre'
      'from'
      'Grupos_Trabajo'
      'where'
      'emp_codigo = :emp_codigo'
      'order by'
      'gru_nombre')
    Left = 280
    Top = 160
    object QGruposgru_codigo: TIntegerField
      FieldName = 'gru_codigo'
    end
    object QGruposgru_nombre: TStringField
      FieldName = 'gru_nombre'
      Size = 60
    end
  end
  object dsGrupos: TDataSource
    DataSet = QGrupos
    Left = 312
    Top = 160
  end
  object QPosicion: TADOQuery
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
      'pos_codigo, pos_nombre'
      'from'
      'posiciones'
      'where'
      'emp_codigo = :emp_codigo'
      'order by'
      'pos_nombre')
    Left = 280
    Top = 192
    object QPosicionpos_codigo: TIntegerField
      FieldName = 'pos_codigo'
    end
    object QPosicionpos_nombre: TStringField
      FieldName = 'pos_nombre'
      Size = 60
    end
  end
  object dsPosicion: TDataSource
    DataSet = QPosicion
    Left = 312
    Top = 192
  end
  object dsTipoEmp: TDataSource
    DataSet = QTipoEmp
    Left = 312
    Top = 224
  end
  object QTipoEmp: TADOQuery
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
      'tip_codigo, tip_nombre'
      'from'
      'tipo_empleado'
      'where'
      'emp_codigo = :emp_codigo'
      'order by'
      'tip_nombre')
    Left = 280
    Top = 224
    object QTipoEmptip_codigo: TIntegerField
      FieldName = 'tip_codigo'
    end
    object QTipoEmptip_nombre: TStringField
      FieldName = 'tip_nombre'
      Size = 60
    end
  end
  object QEstado: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <>
    SQL.Strings = (
      'select'
      'est_codigo, est_nombre'
      'from'
      'estado_civil'
      'order by'
      'est_nombre')
    Left = 280
    Top = 96
    object QEstadoest_codigo: TIntegerField
      FieldName = 'est_codigo'
    end
    object QEstadoest_nombre: TStringField
      FieldName = 'est_nombre'
      Size = 60
    end
  end
  object dsEstado: TDataSource
    DataSet = QEstado
    Left = 312
    Top = 96
  end
end
