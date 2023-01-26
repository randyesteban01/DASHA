object frmOperaciones: TfrmOperaciones
  Left = 353
  Top = 152
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Resultado de las Operaciones diarias'
  ClientHeight = 466
  ClientWidth = 862
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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 862
    Height = 466
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Resultado Diario'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 854
        Height = 438
        Align = alClient
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label1: TLabel
          Left = 8
          Top = 8
          Width = 33
          Height = 13
          Caption = 'Fecha:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Shape1: TShape
          Left = 8
          Top = 32
          Width = 833
          Height = 3
          Brush.Color = clBlack
          Pen.Color = clSkyBlue
        end
        object SpeedButton1: TSpeedButton
          Left = 144
          Top = 8
          Width = 33
          Height = 22
          Caption = 'Ok'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
          OnClick = SpeedButton1Click
        end
        object Shape2: TShape
          Left = 168
          Top = 48
          Width = 321
          Height = 24
          Brush.Color = clSkyBlue
        end
        object Label2: TLabel
          Left = 288
          Top = 51
          Width = 80
          Height = 18
          Caption = 'V E N T A S'
          Color = clSkyBlue
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Shape3: TShape
          Left = 488
          Top = 48
          Width = 313
          Height = 24
          Brush.Color = clSkyBlue
        end
        object Label3: TLabel
          Left = 600
          Top = 51
          Width = 100
          Height = 18
          Caption = 'C O M P R A S'
          Color = clSkyBlue
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object cxFecha: TcxDateEdit
          Left = 48
          Top = 8
          Style.Color = clSkyBlue
          TabOrder = 0
          Width = 89
        end
        object DBGrid1: TDBGrid
          Left = 8
          Top = 72
          Width = 793
          Height = 169
          BorderStyle = bsNone
          Color = clSkyBlue
          Ctl3D = True
          DataSource = dsVentaFamilia
          FixedColor = clInactiveCaption
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [dgTitles, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWhite
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDrawColumnCell = DBGrid1DrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'nombre'
              Title.Caption = 'Familia'
              Width = 160
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Hoy'
              Title.Alignment = taCenter
              Width = 95
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Promedio'
              Title.Alignment = taCenter
              Title.Caption = '%'
              Width = 40
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Ayer'
              Title.Alignment = taCenter
              Width = 95
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Mes'
              Title.Alignment = taCenter
              Width = 95
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ComprasMes'
              Title.Alignment = taCenter
              Title.Caption = 'Mes'
              Width = 95
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ComprasHoy'
              Title.Alignment = taCenter
              Title.Caption = 'Hoy'
              Width = 95
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ComprasAyer'
              Title.Alignment = taCenter
              Title.Caption = 'Ayer'
              Width = 95
              Visible = True
            end>
        end
        object DBGrid2: TDBGrid
          Left = 8
          Top = 248
          Width = 473
          Height = 169
          BorderStyle = bsNone
          Color = clSkyBlue
          Ctl3D = True
          DataSource = dsVentaDepto
          FixedColor = clInactiveCaption
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [dgTitles, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWhite
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDrawColumnCell = DBGrid2DrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'nombre'
              Title.Caption = 'Departamento'
              Width = 160
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Hoy'
              Title.Alignment = taCenter
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Promedio'
              Title.Alignment = taCenter
              Title.Caption = '%'
              Width = 40
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Ayer'
              Title.Alignment = taCenter
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Mes'
              Title.Alignment = taCenter
              Width = 95
              Visible = True
            end>
        end
        object fecha1: TDateTimePicker
          Left = 360
          Top = 8
          Width = 81
          Height = 21
          Date = 39517.000000000000000000
          Time = 39517.000000000000000000
          TabOrder = 3
          Visible = False
        end
        object fecha2: TDateTimePicker
          Left = 448
          Top = 8
          Width = 81
          Height = 21
          Date = 39517.000000000000000000
          Time = 39517.000000000000000000
          TabOrder = 4
          Visible = False
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Resultado Mensual'
      ImageIndex = 1
    end
    object TabSheet3: TTabSheet
      Caption = 'Resultado Trimestral'
      ImageIndex = 2
    end
    object TabSheet4: TTabSheet
      Caption = 'Resultado Semestral'
      ImageIndex = 3
    end
    object TabSheet5: TTabSheet
      Caption = 'Resultado Anual'
      ImageIndex = 4
    end
  end
  object QVentaFamilia: TADOQuery
    Connection = DM.ADOSigma
    OnCalcFields = QVentaFamiliaCalcFields
    Parameters = <
      item
        Name = 'emp'
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
        Name = 'fec1'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'fec2'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'codigo, nombre, sum(hoy) as Hoy,'
      'sum(ayer) as Ayer, sum(mes) as Mes,'
      'sum(comprashoy) as ComprasHoy,'
      'sum(comprasayer) as ComprasAyer,'
      'sum(comprasmes) as ComprasMes'
      'from'
      'pr_movimiento_dia_venta_familia (:emp, :fec,:fec1, :fec2)'
      'group by'
      'codigo, nombre'
      'order by'
      '1')
    Left = 276
    Top = 112
    object QVentaFamiliacodigo: TIntegerField
      FieldName = 'codigo'
    end
    object QVentaFamilianombre: TStringField
      FieldName = 'nombre'
      Size = 80
    end
    object QVentaFamiliaHoy: TBCDField
      FieldName = 'Hoy'
      ReadOnly = True
      currency = True
      Precision = 32
      Size = 2
    end
    object QVentaFamiliaAyer: TBCDField
      FieldName = 'Ayer'
      ReadOnly = True
      currency = True
      Precision = 32
      Size = 2
    end
    object QVentaFamiliaMes: TBCDField
      FieldName = 'Mes'
      ReadOnly = True
      currency = True
      Precision = 32
      Size = 2
    end
    object QVentaFamiliaPromedio: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Promedio'
      currency = True
      Calculated = True
    end
    object QVentaFamiliaComprasHoy: TBCDField
      FieldName = 'ComprasHoy'
      ReadOnly = True
      currency = True
      Precision = 32
      Size = 2
    end
    object QVentaFamiliaComprasAyer: TBCDField
      FieldName = 'ComprasAyer'
      ReadOnly = True
      currency = True
      Precision = 32
      Size = 2
    end
    object QVentaFamiliaComprasMes: TBCDField
      FieldName = 'ComprasMes'
      ReadOnly = True
      currency = True
      Precision = 32
      Size = 2
    end
  end
  object dsVentaFamilia: TDataSource
    DataSet = QVentaFamilia
    Left = 308
    Top = 112
  end
  object QVentaDepto: TADOQuery
    Connection = DM.ADOSigma
    OnCalcFields = QVentaDeptoCalcFields
    Parameters = <
      item
        Name = 'emp'
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
        Name = 'fec1'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'fec2'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'codigo, nombre, sum(hoy) as Hoy,'
      'sum(ayer) as Ayer, sum(mes) as Mes'
      'from'
      'pr_movimiento_dia_venta_depto (:emp, :fec, :fec1, :fec2)'
      'group by'
      'codigo, nombre'
      'order by'
      '1')
    Left = 212
    Top = 288
    object QVentaDeptocodigo: TIntegerField
      FieldName = 'codigo'
    end
    object QVentaDeptonombre: TStringField
      FieldName = 'nombre'
      Size = 80
    end
    object QVentaDeptoHoy: TBCDField
      FieldName = 'Hoy'
      ReadOnly = True
      currency = True
      Precision = 32
      Size = 2
    end
    object QVentaDeptoAyer: TBCDField
      FieldName = 'Ayer'
      ReadOnly = True
      currency = True
      Precision = 32
      Size = 2
    end
    object QVentaDeptoMes: TBCDField
      FieldName = 'Mes'
      ReadOnly = True
      currency = True
      Precision = 32
      Size = 2
    end
    object QVentaDeptoPromedio: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Promedio'
      currency = True
      Calculated = True
    end
  end
  object dsVentaDepto: TDataSource
    DataSet = QVentaDepto
    Left = 244
    Top = 288
  end
end
