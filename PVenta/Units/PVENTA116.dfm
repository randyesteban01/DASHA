object frmEscala: TfrmEscala
  Left = 215
  Top = 242
  ActiveControl = edProd
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Definir escalas'
  ClientHeight = 187
  ClientWidth = 434
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
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 16
    Width = 43
    Height = 13
    Caption = 'Producto'
  end
  object SpeedButton1: TSpeedButton
    Left = 134
    Top = 16
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
    OnClick = SpeedButton1Click
  end
  object edProd: TEdit
    Left = 56
    Top = 16
    Width = 73
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
    OnKeyDown = edProdKeyDown
  end
  object tProd: TEdit
    Left = 160
    Top = 16
    Width = 264
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
    TabOrder = 1
  end
  object Grid: TDBGrid
    Left = 8
    Top = 49
    Width = 185
    Height = 136
    Ctl3D = False
    DataSource = dsEscala
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnEnter = GridEnter
    OnKeyDown = GridKeyDown
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ALM_CODIGO'
        Title.Alignment = taCenter
        Title.Caption = 'Almac'#233'n'
        Width = 53
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ESC_ESCALA'
        Title.Alignment = taCenter
        Title.Caption = 'Escala'
        Width = 48
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ESC_EXISTENCIA'
        Title.Alignment = taCenter
        Title.Caption = 'Existencia'
        Width = 61
        Visible = True
      end>
  end
  object btPost: TBitBtn
    Left = 272
    Top = 152
    Width = 75
    Height = 25
    Caption = '&Grabar'
    TabOrder = 3
    OnClick = btPostClick
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000010000000000000000000
      BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
      7777770000000000007770330770000330777033077000033077703307700003
      30777033000000033077703333333333307770330000000330777030FFFFFFF0
      30777030FCCCCFF030777030FFCCCFF030777037FCCCCFF000777077CCCFCFF0
      8077777CCC777700007777CCC77777777777777C777777777777}
  end
  object btClose: TBitBtn
    Left = 351
    Top = 152
    Width = 75
    Height = 25
    Caption = '&Salir'
    TabOrder = 4
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
  object QProductos: TADOQuery
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
      end
      item
        Name = 'prod'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select '
      'EMP_CODIGO, PRO_CODIGO, PRO_RORIGINAL, PRO_RFABRIC, '
      'PRO_NOMBRE, FAM_CODIGO, COL_CODIGO, PRO_BARRA, '
      'PRO_DESCMAX, PRO_ULTCOSTO, PRO_COSTO, PRO_PRECIO1, '
      'PRO_PRECIO2, PRO_PRECIO3, PRO_PRECIO4, PRO_DISPLAY, '
      'PRO_STATUS, PRO_INVINICIAL, PRO_EXISTENCIA, '
      'PRO_UBICACION, PRO_STKMINIMO, PRO_STKMAXIMO, '
      'PRO_INVFISICO, PRO_PEDIDOPRV, PRO_PEDIDOCLI, '
      'PRO_CTAINVENT, PRO_CTACOSTO, DEP_CODIGO, PRO_ITBIS, '
      'PRO_BENEFICIO, PRO_ESCALA, PRO_SERVICIO, MAR_CODIGO, '
      'PRO_COMISION, PRO_VENCE, PRO_BENEFICIO2, PRO_BENEFICIO3, '
      'PRO_BENEFICIO4, PRO_USO, SUP_CODIGO, '
      'PRO_NUEVOUSADO, PRO_COSTOUS,'
      'PRO_TASACOMPRA, PRO_TASAVENTA,'
      'PRO_PRECIOMENOR'
      'from '
      'PRODUCTOS'
      'where '
      'emp_codigo = :emp_codigo'
      'and pro_codigo = :prod')
    Left = 128
    Top = 96
    object QProductosEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
    end
    object QProductosPRO_CODIGO: TIntegerField
      FieldName = 'PRO_CODIGO'
    end
    object QProductosPRO_RORIGINAL: TIBStringField
      FieldName = 'PRO_RORIGINAL'
      Size = 50
    end
    object QProductosPRO_RFABRIC: TIBStringField
      FieldName = 'PRO_RFABRIC'
      Size = 60
    end
    object QProductosPRO_NOMBRE: TIBStringField
      FieldName = 'PRO_NOMBRE'
      Size = 60
    end
    object QProductosFAM_CODIGO: TIntegerField
      FieldName = 'FAM_CODIGO'
    end
    object QProductosCOL_CODIGO: TIntegerField
      FieldName = 'COL_CODIGO'
    end
    object QProductosPRO_BARRA: TIBStringField
      FieldName = 'PRO_BARRA'
      Size = 30
    end
    object QProductosPRO_DESCMAX: TFloatField
      FieldName = 'PRO_DESCMAX'
      currency = True
    end
    object QProductosPRO_ULTCOSTO: TFloatField
      FieldName = 'PRO_ULTCOSTO'
      currency = True
    end
    object QProductosPRO_COSTO: TFloatField
      FieldName = 'PRO_COSTO'
      currency = True
    end
    object QProductosPRO_PRECIO1: TFloatField
      FieldName = 'PRO_PRECIO1'
      currency = True
    end
    object QProductosPRO_PRECIO2: TFloatField
      FieldName = 'PRO_PRECIO2'
      currency = True
    end
    object QProductosPRO_PRECIO3: TFloatField
      FieldName = 'PRO_PRECIO3'
      currency = True
    end
    object QProductosPRO_PRECIO4: TFloatField
      FieldName = 'PRO_PRECIO4'
      currency = True
    end
    object QProductosPRO_DISPLAY: TIBStringField
      FieldName = 'PRO_DISPLAY'
      Size = 30
    end
    object QProductosPRO_STATUS: TIBStringField
      FieldName = 'PRO_STATUS'
      Size = 3
    end
    object QProductosPRO_INVINICIAL: TFloatField
      FieldName = 'PRO_INVINICIAL'
    end
    object QProductosPRO_EXISTENCIA: TFloatField
      FieldName = 'PRO_EXISTENCIA'
    end
    object QProductosPRO_UBICACION: TIBStringField
      FieldName = 'PRO_UBICACION'
      Size = 10
    end
    object QProductosPRO_STKMINIMO: TFloatField
      FieldName = 'PRO_STKMINIMO'
    end
    object QProductosPRO_STKMAXIMO: TFloatField
      FieldName = 'PRO_STKMAXIMO'
    end
    object QProductosPRO_INVFISICO: TFloatField
      FieldName = 'PRO_INVFISICO'
    end
    object QProductosPRO_PEDIDOPRV: TFloatField
      FieldName = 'PRO_PEDIDOPRV'
    end
    object QProductosPRO_PEDIDOCLI: TFloatField
      FieldName = 'PRO_PEDIDOCLI'
    end
    object QProductosPRO_CTAINVENT: TIBStringField
      FieldName = 'PRO_CTAINVENT'
      Size = 15
    end
    object QProductosPRO_CTACOSTO: TIBStringField
      FieldName = 'PRO_CTACOSTO'
      Size = 15
    end
    object QProductosDEP_CODIGO: TIntegerField
      FieldName = 'DEP_CODIGO'
    end
    object QProductosPRO_ITBIS: TIBStringField
      FieldName = 'PRO_ITBIS'
      Size = 1
    end
    object QProductosPRO_BENEFICIO: TFloatField
      FieldName = 'PRO_BENEFICIO'
      Origin = 'PRODUCTOS.PRO_BENEFICIO'
      currency = True
    end
    object QProductosPRO_ESCALA: TIBStringField
      FieldName = 'PRO_ESCALA'
      Origin = 'PRODUCTOS.PRO_ESCALA'
      Size = 5
    end
    object QProductosPRO_SERVICIO: TIBStringField
      FieldName = 'PRO_SERVICIO'
      Origin = 'PRODUCTOS.PRO_SERVICIO'
      Size = 5
    end
    object QProductosMAR_CODIGO: TIntegerField
      FieldName = 'MAR_CODIGO'
      Origin = 'PRODUCTOS.MAR_CODIGO'
    end
    object QProductosPRO_COMISION: TFloatField
      FieldName = 'PRO_COMISION'
      Origin = 'PRODUCTOS.PRO_COMISION'
      currency = True
    end
    object QProductosPRO_VENCE: TIBStringField
      FieldName = 'PRO_VENCE'
      Origin = 'PRODUCTOS.PRO_VENCE'
      Size = 5
    end
    object QProductosPRO_BENEFICIO2: TFloatField
      FieldName = 'PRO_BENEFICIO2'
      Origin = 'PRODUCTOS.PRO_BENEFICIO2'
      currency = True
    end
    object QProductosPRO_BENEFICIO3: TFloatField
      FieldName = 'PRO_BENEFICIO3'
      Origin = 'PRODUCTOS.PRO_BENEFICIO3'
      currency = True
    end
    object QProductosPRO_BENEFICIO4: TFloatField
      FieldName = 'PRO_BENEFICIO4'
      Origin = 'PRODUCTOS.PRO_BENEFICIO4'
      currency = True
    end
    object QProductosPRO_USO: TIBStringField
      FieldName = 'PRO_USO'
      Origin = 'PRODUCTOS.PRO_USO'
      Size = 60
    end
    object QProductosSUP_CODIGO: TIntegerField
      FieldName = 'SUP_CODIGO'
      Origin = 'PRODUCTOS.SUP_CODIGO'
    end
    object QProductosPRO_NUEVOUSADO: TIBStringField
      FieldName = 'PRO_NUEVOUSADO'
      Origin = 'PRODUCTOS.PRO_NUEVOUSADO'
      Size = 1
    end
    object QProductosPRO_COSTOUS: TFloatField
      FieldName = 'PRO_COSTOUS'
      Origin = 'PRODUCTOS.PRO_COSTOUS'
      currency = True
    end
    object QProductosPRO_TASACOMPRA: TFloatField
      FieldName = 'PRO_TASACOMPRA'
      Origin = 'PRODUCTOS.PRO_TASACOMPRA'
      currency = True
    end
    object QProductosPRO_TASAVENTA: TFloatField
      FieldName = 'PRO_TASAVENTA'
      Origin = 'PRODUCTOS.PRO_TASAVENTA'
      currency = True
    end
    object QProductosPRO_PRECIOMENOR: TFloatField
      FieldName = 'PRO_PRECIOMENOR'
      Origin = 'PRODUCTOS.PRO_PRECIOMENOR'
      currency = True
    end
  end
  object dsProductos: TDataSource
    AutoEdit = False
    DataSet = QProductos
    Left = 160
    Top = 96
  end
  object QEscalas: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    DataSource = dsProductos
    Parameters = <
      item
        Name = 'EMP_CODIGO'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'PRO_CODIGO'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT'
      'ALM_CODIGO, EMP_CODIGO, ESC_ESCALA, '
      'ESC_EXISTENCIA, ESC_SECUENCIA, PRO_CODIGO'
      'FROM'
      'ESCALAS'
      'WHERE'
      'EMP_CODIGO = :EMP_CODIGO'
      'AND PRO_CODIGO = :PRO_CODIGO'
      'ORDER BY '
      'ESC_SECUENCIA'
      '')
    Left = 128
    Top = 128
    object QEscalasALM_CODIGO: TIntegerField
      FieldName = 'ALM_CODIGO'
      Origin = 'ESCALAS.ALM_CODIGO'
    end
    object QEscalasEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'ESCALAS.EMP_CODIGO'
    end
    object QEscalasESC_ESCALA: TIBStringField
      FieldName = 'ESC_ESCALA'
      Origin = 'ESCALAS.ESC_ESCALA'
      Required = True
      Size = 5
    end
    object QEscalasESC_EXISTENCIA: TFloatField
      FieldName = 'ESC_EXISTENCIA'
      Origin = 'ESCALAS.ESC_EXISTENCIA'
    end
    object QEscalasESC_SECUENCIA: TIntegerField
      FieldName = 'ESC_SECUENCIA'
      Origin = 'ESCALAS.ESC_SECUENCIA'
    end
    object QEscalasPRO_CODIGO: TIntegerField
      FieldName = 'PRO_CODIGO'
      Origin = 'ESCALAS.PRO_CODIGO'
    end
  end
  object dsEscala: TDataSource
    DataSet = QEscalas
    Left = 160
    Top = 128
  end
end
