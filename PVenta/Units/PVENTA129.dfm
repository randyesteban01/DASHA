object frmConsEquivalencias: TfrmConsEquivalencias
  Left = 245
  Top = 215
  ActiveControl = DBGrid9
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Equivalencias'
  ClientHeight = 445
  ClientWidth = 852
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object lbprod: TLabel
    Left = 0
    Top = 0
    Width = 852
    Height = 18
    Align = alTop
    Alignment = taCenter
    Caption = 'lbprod'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid9: TDBGrid
    Left = 0
    Top = 18
    Width = 852
    Height = 393
    Align = alTop
    Color = clInfoBk
    Ctl3D = False
    DataSource = dsEqui
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnKeyPress = DBGrid9KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'PRO_CODIGOEQUIVALENTE'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRO_RORIGINAL'
        Title.Alignment = taCenter
        Title.Caption = 'Ref. Original'
        Width = 96
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRO_RFABRIC'
        Title.Alignment = taCenter
        Title.Caption = 'Ref. Fabricante'
        Width = 97
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRO_NOMBRE'
        Title.Caption = 'Nombre del Producto'
        Width = 215
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRO_EXISTENCIA'
        Title.Alignment = taCenter
        Title.Caption = 'Exist.'
        Width = 67
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRO_PRECIO1'
        Title.Alignment = taCenter
        Title.Caption = 'Precio1'
        Width = 68
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRO_PRECIO2'
        Title.Alignment = taCenter
        Title.Caption = 'Precio2'
        Width = 67
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MAR_NOMBRE'
        Title.Caption = 'Marca'
        Width = 149
        Visible = True
      end>
  end
  object btSalir: TBitBtn
    Left = 752
    Top = 416
    Width = 88
    Height = 25
    Caption = '[ Esc ] - Salir'
    TabOrder = 1
    OnClick = btSalirClick
  end
  object BitBtn1: TBitBtn
    Left = 624
    Top = 416
    Width = 121
    Height = 25
    Caption = '[ Enter ]  - Seleccionar'
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object QEquivalencia: TADOQuery
    Connection = DM.ADOSigma
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
        Name = 'pro'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select '
      'E.EMP_CODIGO, E.PRO_CODIGO, E.PRO_CODIGOEQUIVALENTE,'
      'E.EQ_SECUENCIA, P.PRO_NOMBRE, P.PRO_PRECIO1,'
      'P.PRO_PRECIO2, P.PRO_RORIGINAL, P.PRO_RFABRIC,'
      'P.PRO_EXISTENCIA,F.FAM_NOMBRE, M.MAR_NOMBRE'
      'from'
      'PRODEQUIVALENCIAS E, PRODUCTOS P'
      'LEFT OUTER JOIN FAMILIAS F ON '
      '(F.FAM_CODIGO = P.FAM_CODIGO'
      'AND F.EMP_CODIGO = P.EMP_CODIGO)'
      'LEFT OUTER JOIN MARCAS M ON'
      '(M.MAR_CODIGO = P.MAR_CODIGO'
      'AND M.EMP_CODIGO = P.EMP_CODIGO)'
      'where'
      'E.EMP_CODIGO = P.EMP_CODIGO'
      'AND E.PRO_CODIGOEQUIVALENTE = P.PRO_CODIGO'
      'AND E.emp_codigo = :emp'
      'and E.pro_codigo = :pro'
      'order by'
      'E.EQ_SECUENCIA')
    Left = 144
    Top = 216
    object QEquivalenciaEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'PRODEQUIVALENCIAS.EMP_CODIGO'
      Required = True
    end
    object QEquivalenciaPRO_CODIGO: TIntegerField
      FieldName = 'PRO_CODIGO'
      Origin = 'PRODEQUIVALENCIAS.PRO_CODIGO'
      Required = True
    end
    object QEquivalenciaPRO_CODIGOEQUIVALENTE: TIntegerField
      FieldName = 'PRO_CODIGOEQUIVALENTE'
      Origin = 'PRODEQUIVALENCIAS.PRO_CODIGOEQUIVALENTE'
      Required = True
    end
    object QEquivalenciaEQ_SECUENCIA: TIntegerField
      FieldName = 'EQ_SECUENCIA'
      Origin = 'PRODEQUIVALENCIAS.EQ_SECUENCIA'
    end
    object QEquivalenciaPRO_NOMBRE: TIBStringField
      FieldName = 'PRO_NOMBRE'
      Origin = 'PRODUCTOS.PRO_NOMBRE'
      Size = 60
    end
    object QEquivalenciaPRO_PRECIO1: TFloatField
      FieldName = 'PRO_PRECIO1'
      Origin = 'PRODUCTOS.PRO_PRECIO1'
      currency = True
    end
    object QEquivalenciaPRO_PRECIO2: TFloatField
      FieldName = 'PRO_PRECIO2'
      Origin = 'PRODUCTOS.PRO_PRECIO2'
      currency = True
    end
    object QEquivalenciaPRO_RORIGINAL: TIBStringField
      FieldName = 'PRO_RORIGINAL'
      Origin = 'PRODUCTOS.PRO_RORIGINAL'
      Size = 50
    end
    object QEquivalenciaPRO_RFABRIC: TIBStringField
      FieldName = 'PRO_RFABRIC'
      Origin = 'PRODUCTOS.PRO_RFABRIC'
      Size = 60
    end
    object QEquivalenciaPRO_EXISTENCIA: TFloatField
      FieldName = 'PRO_EXISTENCIA'
      Origin = 'PRODUCTOS.PRO_EXISTENCIA'
    end
    object QEquivalenciaFAM_NOMBRE: TIBStringField
      FieldName = 'FAM_NOMBRE'
      Origin = 'FAMILIAS.FAM_NOMBRE'
      Size = 60
    end
    object QEquivalenciaMAR_NOMBRE: TIBStringField
      FieldName = 'MAR_NOMBRE'
      Origin = 'MARCAS.MAR_NOMBRE'
      Size = 60
    end
  end
  object dsEqui: TDataSource
    DataSet = QEquivalencia
    Left = 176
    Top = 216
  end
end
