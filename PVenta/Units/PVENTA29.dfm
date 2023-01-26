object frmInvFisico: TfrmInvFisico
  Left = 363
  Top = 134
  ActiveControl = Grid
  BorderIcons = [biSystemMenu, biMinimize, biHelp]
  BorderStyle = bsSingle
  Caption = 'Inventario f'#237'sico'
  ClientHeight = 408
  ClientWidth = 585
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
  object btClose: TBitBtn
    Left = 502
    Top = 376
    Width = 75
    Height = 25
    Caption = '&Salir'
    TabOrder = 2
    TabStop = False
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 585
    Height = 129
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object btFamilia: TSpeedButton
      Left = 118
      Top = 31
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
      OnClick = btFamiliaClick
    end
    object Label4: TLabel
      Left = 8
      Top = 32
      Width = 32
      Height = 13
      Caption = 'Familia'
    end
    object btDepto: TSpeedButton
      Left = 118
      Top = 55
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
      OnClick = btDeptoClick
    end
    object Label27: TLabel
      Left = 8
      Top = 56
      Width = 67
      Height = 13
      Caption = 'Departamento'
    end
    object Label2: TLabel
      Left = 8
      Top = 104
      Width = 49
      Height = 13
      Caption = 'Proveedor'
    end
    object btProveedor: TSpeedButton
      Left = 118
      Top = 104
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
      OnClick = btProveedorClick
    end
    object btMarca: TSpeedButton
      Left = 118
      Top = 79
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
      OnClick = btMarcaClick
    end
    object Label3: TLabel
      Left = 8
      Top = 80
      Width = 30
      Height = 13
      Caption = 'Marca'
    end
    object btAlma: TSpeedButton
      Left = 118
      Top = 7
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
      OnClick = btAlmaClick
    end
    object Label6: TLabel
      Left = 8
      Top = 8
      Width = 41
      Height = 13
      Caption = 'Almacen'
    end
    object Label1: TLabel
      Left = 408
      Top = 88
      Width = 70
      Height = 13
      Caption = 'Leer Producto:'
    end
    object ckunidad: TCheckBox
      Left = 408
      Top = 9
      Width = 129
      Height = 17
      Caption = 'Existencia unidad = 0'
      TabOrder = 5
      OnClick = ckunidadClick
    end
    object tFamilia: TEdit
      Left = 144
      Top = 32
      Width = 257
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
    end
    object tDepto: TEdit
      Left = 144
      Top = 56
      Width = 257
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
    end
    object edProveedor: TEdit
      Left = 80
      Top = 104
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
      TabOrder = 4
      OnChange = edProveedorChange
      OnKeyDown = edProveedorKeyDown
    end
    object tProveedor: TEdit
      Left = 144
      Top = 104
      Width = 257
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
    end
    object edDepto: TEdit
      Left = 80
      Top = 56
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
      TabOrder = 2
      OnChange = edDeptoChange
      OnKeyDown = edDeptoKeyDown
    end
    object edFamilia: TEdit
      Left = 80
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
      TabOrder = 1
      OnChange = edFamiliaChange
      OnKeyDown = edFamiliaKeyDown
    end
    object tMArca: TEdit
      Left = 144
      Top = 80
      Width = 257
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
    end
    object edMarca: TEdit
      Left = 80
      Top = 80
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
      TabOrder = 3
      OnChange = edMarcaChange
      OnKeyDown = edMarcaKeyDown
    end
    object tAlma: TEdit
      Left = 144
      Top = 8
      Width = 257
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
    end
    object edAlma: TEdit
      Left = 80
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
      TabOrder = 0
      OnChange = edAlmaChange
      OnKeyDown = edAlmaKeyDown
    end
    object ckempaque: TCheckBox
      Left = 408
      Top = 25
      Width = 137
      Height = 17
      Caption = 'Existencia empaque = 0'
      TabOrder = 11
      OnClick = ckunidadClick
    end
    object ckunidad2: TCheckBox
      Left = 408
      Top = 41
      Width = 161
      Height = 17
      Caption = 'Existencia unidad negativo'
      TabOrder = 12
      OnClick = ckunidadClick
    end
    object ckempaque2: TCheckBox
      Left = 408
      Top = 57
      Width = 169
      Height = 17
      Caption = 'Existencia empaque negativo'
      TabOrder = 13
      OnClick = ckunidadClick
    end
    object Edit1: TEdit
      Left = 406
      Top = 103
      Width = 171
      Height = 21
      TabOrder = 14
      OnEnter = Edit1Enter
      OnKeyDown = Edit1KeyDown
    end
  end
  object Grid: TDBGrid
    Left = 0
    Top = 129
    Width = 585
    Height = 241
    Align = alTop
    DataSource = dsExistencias
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgColLines, dgRowLines, dgTabs, dgCancelOnExit]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnColEnter = GridColEnter
    OnEnter = GridEnter
    OnKeyDown = GridKeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'EXI_FISICO'
        Title.Alignment = taCenter
        Title.Caption = 'Conteo Und'
        Visible = True
      end
      item
        Color = clInfoBk
        Expanded = False
        FieldName = 'PRO_NOMBRE'
        ReadOnly = True
        Title.Caption = 'Descripci'#243'n del Producto'
        Width = 343
        Visible = True
      end
      item
        Color = clInfoBk
        Expanded = False
        FieldName = 'EXI_CANTIDAD'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Existencia Und'
        Visible = True
      end
      item
        Color = clInfoBk
        Expanded = False
        FieldName = 'EXI_EMPAQUE'
        ReadOnly = True
        Title.Caption = 'Existencia Emp'
        Visible = True
      end>
  end
  object Memo1: TMemo
    Left = 16
    Top = 232
    Width = 425
    Height = 49
    Lines.Strings = (
      'Memo1')
    TabOrder = 3
    Visible = False
  end
  object btFind: TBitBtn
    Left = 376
    Top = 376
    Width = 122
    Height = 25
    Caption = '&Buscar Producto'
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
  object btrefresca: TBitBtn
    Left = 296
    Top = 376
    Width = 75
    Height = 25
    Caption = 'Refrescar >>'
    TabOrder = 5
    OnClick = btrefrescaClick
  end
  object QExistencias: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterInsert = QExistenciasAfterInsert
    AfterEdit = QExistenciasAfterEdit
    AfterPost = QExistenciasAfterPost
    BeforeDelete = QExistenciasBeforeDelete
    Parameters = <
      item
        Name = 'emp'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'alm'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT'
      'E.ALM_CODIGO, E.EMP_CODIGO, E.EXI_CANTIDAD, '
      'E.PRO_CODIGO, E.EXI_FISICO, P.PRO_NOMBRE,'
      'E.EXI_EMPAQUE, E.EXI_FISICOEMP, P.PRO_RORIGINAL'
      'FROM'
      'EXISTENCIAS E, PRODUCTOS P'
      'WHERE '
      'E.EMP_CODIGO = P.EMP_CODIGO'
      'AND E.PRO_CODIGO = P.PRO_CODIGO'
      'AND E.EMP_CODIGO = :emp'
      'AND E.ALM_CODIGO = :alm'
      'AND P.PRO_STATUS = '#39'ACT'#39
      'AND P.PRO_SERVICIO <> '#39'True'#39)
    Left = 320
    Top = 216
    object QExistenciasALM_CODIGO: TIntegerField
      FieldName = 'ALM_CODIGO'
      Origin = 'EXISTENCIAS.ALM_CODIGO'
      Required = True
    end
    object QExistenciasEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'EXISTENCIAS.EMP_CODIGO'
      Required = True
    end
    object QExistenciasEXI_CANTIDAD: TFloatField
      FieldName = 'EXI_CANTIDAD'
      Origin = 'EXISTENCIAS.EXI_CANTIDAD'
    end
    object QExistenciasPRO_CODIGO: TIntegerField
      FieldName = 'PRO_CODIGO'
      Origin = 'EXISTENCIAS.PRO_CODIGO'
      Required = True
    end
    object QExistenciasEXI_FISICO: TFloatField
      FieldName = 'EXI_FISICO'
      Origin = 'EXISTENCIAS.EXI_FISICO'
    end
    object QExistenciasPRO_NOMBRE: TIBStringField
      FieldName = 'PRO_NOMBRE'
      Origin = 'PRODUCTOS.PRO_NOMBRE'
      Size = 256
    end
    object QExistenciasEXI_EMPAQUE: TFloatField
      FieldName = 'EXI_EMPAQUE'
      Origin = 'EXISTENCIAS.EXI_EMPAQUE'
    end
    object QExistenciasEXI_FISICOEMP: TFloatField
      FieldName = 'EXI_FISICOEMP'
      Origin = 'EXISTENCIAS.EXI_FISICOEMP'
    end
    object QExistenciasPRO_RORIGINAL: TStringField
      FieldName = 'PRO_RORIGINAL'
      Size = 50
    end
  end
  object dsExistencias: TDataSource
    DataSet = QExistencias
    Left = 352
    Top = 216
  end
  object QProd: TADOQuery
    Connection = DM.ADOSigma
    BeforeOpen = QProdBeforeOpen
    Parameters = <
      item
        Name = 'par_invempresa'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select '
      'pro_codigo, pro_nombre'
      'from '
      'productos'
      'where '
      'emp_codigo = :par_invempresa')
    Left = 320
    Top = 248
    object QProdPRO_CODIGO: TIntegerField
      FieldName = 'PRO_CODIGO'
      Origin = 'PRODUCTOS.PRO_CODIGO'
      Required = True
    end
    object QProdPRO_NOMBRE: TIBStringField
      FieldName = 'PRO_NOMBRE'
      Origin = 'PRODUCTOS.PRO_NOMBRE'
      Size = 256
    end
  end
  object Search: TQrySearchDlgADO
    AliasName = DM.ADOSigma
    Left = 192
    Top = 184
  end
  object ADOQuery1: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <
      item
        Name = 'EMP'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'ALM'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'PROD'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'EXI_ANT_UND'
        DataType = ftFloat
        Size = -1
        Value = Null
      end
      item
        Name = 'EXI_UND'
        DataType = ftFloat
        Size = -1
        Value = Null
      end
      item
        Name = 'EXI_ANT_EMP'
        DataType = ftFloat
        Size = -1
        Value = Null
      end
      item
        Name = 'EXI_EMP'
        DataType = ftFloat
        Size = -1
        Value = Null
      end
      item
        Name = 'USU'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'INSERT INTO AJUSTE_INVENTARIO '
      
        '(emp_codigo, alm_codigo, pro_codigo, exist_ant_und, exist_ajuste' +
        '_und, exist_ant_emp, exist_ajuste_emp,'
      ' usu_codigo, fecha_ajuste, tipo)'
      
        'SELECT :EMP, :ALM, :PROD, :EXI_ANT_UND, :EXI_UND, :EXI_ANT_EMP, ' +
        ':EXI_EMP, '
      ':USU, GETDATE(), '#39'AJU'#39' ')
    Left = 88
    Top = 152
  end
end
