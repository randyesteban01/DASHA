object frmInclusionSeguro: TfrmInclusionSeguro
  Left = 410
  Top = 534
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Inclusi'#243'n y Exclusi'#243'n a Seguros'
  ClientHeight = 358
  ClientWidth = 605
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 8
    Top = 8
    Width = 593
    Height = 313
    ActivePage = TabSheet1
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Registro'
      object GroupBox1: TGroupBox
        Left = 8
        Top = 8
        Width = 249
        Height = 273
        Caption = 'Plan de seguro al Empleado'
        TabOrder = 0
        object Label1: TLabel
          Left = 16
          Top = 24
          Width = 46
          Height = 13
          Caption = 'Empleado'
        end
        object Label2: TLabel
          Left = 16
          Top = 72
          Width = 71
          Height = 13
          Caption = 'Tipo de seguro'
        end
        object Label3: TLabel
          Left = 16
          Top = 112
          Width = 20
          Height = 13
          Caption = 'Plan'
        end
        object SpeedButton1: TSpeedButton
          Left = 16
          Top = 152
          Width = 65
          Height = 22
          Caption = 'Incluir'
          Flat = True
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            04000000000080000000120B0000120B00001000000010000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
            DADAADADADADADADA0ADDADADADADADAD0DAADADADADADA00000DADADADADADA
            D0DA000000000000A0AD0FFFFFFFFFF0DADA0F00F00F00F0ADAD0FFFFFFFFFF0
            DADA0444444444444DADD4FFFFFFFFFF4ADAA4F00F00F00F4DADD4FFFFFFFFFF
            4ADAA444444444444DADD484484484484ADAA444444444444DAD}
          OnClick = SpeedButton1Click
        end
        object SpeedButton2: TSpeedButton
          Left = 88
          Top = 152
          Width = 65
          Height = 22
          Caption = 'Excluir'
          Flat = True
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            04000000000080000000120B0000120B00001000000010000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
            DADAADADADADA1ADADADDADADADA11DADAD1ADADADAD111DAD1DDADADADAD11A
            D11A00000000000115AD0888888888511ADA08008008081511AD08888888811A
            D1150444444514444D51D4FFFFF15FFF4ADAA4F00F00F00F4DADD4FFFFFFFFFF
            4ADAA444444444444DADD484484484484ADAA444444444444DAD}
          OnClick = SpeedButton2Click
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 16
          Top = 40
          Width = 225
          Height = 21
          KeyField = 'emp_numero'
          ListField = 'Nombres'
          ListSource = dsEmpleado
          TabOrder = 0
        end
        object DBLookupComboBox2: TDBLookupComboBox
          Left = 16
          Top = 88
          Width = 225
          Height = 21
          KeyField = 'tse_codigo'
          ListField = 'tse_nombre'
          ListSource = dsTipoSeguro
          TabOrder = 1
          OnClick = DBLookupComboBox2Click
        end
        object DBLookupComboBox3: TDBLookupComboBox
          Left = 16
          Top = 128
          Width = 225
          Height = 21
          KeyField = 'pla_codigo'
          ListField = 'pla_nombre'
          ListSource = dsPlanes
          TabOrder = 2
        end
        object DBGrid1: TDBGrid
          Left = 2
          Top = 176
          Width = 245
          Height = 95
          Align = alBottom
          DataSource = dsSeguroEmp
          Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 3
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'tse_nombre'
              Title.Caption = 'Tipo'
              Width = 121
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'pla_nombre'
              Title.Caption = 'Plan'
              Width = 96
              Visible = True
            end>
        end
      end
      object GroupBox2: TGroupBox
        Left = 272
        Top = 8
        Width = 305
        Height = 273
        Caption = 'Plan de seguro al Dependiente'
        TabOrder = 1
        object Label4: TLabel
          Left = 16
          Top = 24
          Width = 61
          Height = 13
          Caption = 'Dependiente'
        end
        object Label5: TLabel
          Left = 16
          Top = 72
          Width = 71
          Height = 13
          Caption = 'Tipo de seguro'
        end
        object Label6: TLabel
          Left = 16
          Top = 112
          Width = 20
          Height = 13
          Caption = 'Plan'
        end
        object SpeedButton3: TSpeedButton
          Left = 16
          Top = 152
          Width = 65
          Height = 22
          Caption = 'Incluir'
          Flat = True
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            04000000000080000000120B0000120B00001000000010000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
            DADAADADADADADADA0ADDADADADADADAD0DAADADADADADA00000DADADADADADA
            D0DA000000000000A0AD0FFFFFFFFFF0DADA0F00F00F00F0ADAD0FFFFFFFFFF0
            DADA0444444444444DADD4FFFFFFFFFF4ADAA4F00F00F00F4DADD4FFFFFFFFFF
            4ADAA444444444444DADD484484484484ADAA444444444444DAD}
          OnClick = SpeedButton3Click
        end
        object SpeedButton4: TSpeedButton
          Left = 88
          Top = 152
          Width = 65
          Height = 22
          Caption = 'Excluir'
          Flat = True
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            04000000000080000000120B0000120B00001000000010000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
            DADAADADADADA1ADADADDADADADA11DADAD1ADADADAD111DAD1DDADADADAD11A
            D11A00000000000115AD0888888888511ADA08008008081511AD08888888811A
            D1150444444514444D51D4FFFFF15FFF4ADAA4F00F00F00F4DADD4FFFFFFFFFF
            4ADAA444444444444DADD484484484484ADAA444444444444DAD}
          OnClick = SpeedButton4Click
        end
        object DBLookupComboBox4: TDBLookupComboBox
          Left = 16
          Top = 40
          Width = 281
          Height = 21
          KeyField = 'dep_numero'
          ListField = 'dep_nombre'
          ListSource = dsDepend
          TabOrder = 0
        end
        object DBLookupComboBox5: TDBLookupComboBox
          Left = 16
          Top = 88
          Width = 281
          Height = 21
          KeyField = 'tse_codigo'
          ListField = 'tse_nombre'
          ListSource = dsTipoSeguro
          TabOrder = 1
        end
        object DBLookupComboBox6: TDBLookupComboBox
          Left = 16
          Top = 128
          Width = 281
          Height = 21
          KeyField = 'pla_codigo'
          ListField = 'pla_nombre'
          ListSource = dsPlanes
          TabOrder = 2
        end
        object DBGrid2: TDBGrid
          Left = 2
          Top = 176
          Width = 301
          Height = 95
          Align = alBottom
          DataSource = dsSeguroDep
          Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 3
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'dep_nombre'
              Title.Caption = 'Dependiente'
              Width = 116
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tse_nombre'
              Title.Caption = 'Tipo'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'pla_nombre'
              Title.Caption = 'Plan'
              Width = 78
              Visible = True
            end>
        end
      end
    end
  end
  object btClose: TBitBtn
    Left = 520
    Top = 328
    Width = 75
    Height = 25
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
  object StaticText1: TStaticText
    Left = 8
    Top = 328
    Width = 112
    Height = 17
    BorderStyle = sbsSunken
    Caption = ' Total a descontar: '
    Color = clInfoBk
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 2
  end
  object lbtotal: TStaticText
    Left = 120
    Top = 328
    Width = 89
    Height = 17
    Alignment = taRightJustify
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = '0.00'
    Color = clMenuHighlight
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 3
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
      'emp_numero, emp_codigo, '
      
        'emp_nombres+'#39' '#39'+emp_apellido_paterno+'#39' '#39'+emp_apellido_materno as' +
        ' Nombres'
      'from'
      'empleados'
      'where'
      'emp_codigo = :emp_codigo'
      'order by'
      '3')
    Left = 456
    Top = 48
    object QEmpleadosemp_numero: TIntegerField
      FieldName = 'emp_numero'
    end
    object QEmpleadosNombres: TStringField
      FieldName = 'Nombres'
      ReadOnly = True
      Size = 182
    end
    object QEmpleadosemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
  end
  object dsEmpleado: TDataSource
    DataSet = QEmpleados
    OnDataChange = dsEmpleadoDataChange
    Left = 488
    Top = 48
  end
  object QDepend: TADOQuery
    Connection = DM.ADOSigma
    DataSource = dsEmpleado
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
        Name = 'emp_numero'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'emp_codigo, emp_numero, dep_numero, dep_nombre'
      'from'
      'empleado_dependientes'
      'where'
      'emp_codigo = :emp_codigo'
      'and emp_numero = :emp_numero'
      'order by'
      'dep_nombre')
    Left = 456
    Top = 144
    object QDependemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QDependemp_numero: TIntegerField
      FieldName = 'emp_numero'
    end
    object QDependdep_numero: TIntegerField
      FieldName = 'dep_numero'
    end
    object QDependdep_nombre: TStringField
      FieldName = 'dep_nombre'
      Size = 60
    end
  end
  object dsDepend: TDataSource
    DataSet = QDepend
    Left = 488
    Top = 144
  end
  object QTIpoSeguro: TADOQuery
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
      'emp_codigo, tse_codigo, tse_nombre'
      'from'
      'tipo_seguros'
      'where'
      'emp_codigo = :emp_codigo'
      'order by'
      'tse_nombre')
    Left = 456
    Top = 80
    object QTIpoSeguroemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QTIpoSegurotse_codigo: TIntegerField
      FieldName = 'tse_codigo'
    end
    object QTIpoSegurotse_nombre: TStringField
      FieldName = 'tse_nombre'
      Size = 60
    end
  end
  object dsTipoSeguro: TDataSource
    DataSet = QTIpoSeguro
    Left = 488
    Top = 80
  end
  object QPlanes: TADOQuery
    Connection = DM.ADOSigma
    DataSource = dsTipoSeguro
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
        Name = 'tse_codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'emp_codigo, tse_codigo, pla_codigo, pla_nombre'
      'from'
      'planes_seguro'
      'where'
      'emp_codigo = :emp_codigo'
      'and tse_codigo = :tse_codigo'
      'order by'
      'pla_nombre')
    Left = 456
    Top = 112
    object QPlanesemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QPlanestse_codigo: TIntegerField
      FieldName = 'tse_codigo'
    end
    object QPlanespla_codigo: TIntegerField
      FieldName = 'pla_codigo'
    end
    object QPlanespla_nombre: TStringField
      FieldName = 'pla_nombre'
      Size = 60
    end
  end
  object dsPlanes: TDataSource
    DataSet = QPlanes
    Left = 488
    Top = 112
  end
  object QSeguroEmp: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    DataSource = dsEmpleado
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
        Name = 'emp_numero'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      
        't.tse_nombre, p.pla_nombre, e.pla_tarifa_basica, e.pla_porciento' +
        '_empresa,'
      't.tse_codigo, t.emp_codigo, e.emp_numero, e.pla_codigo'
      'from'
      'empleado_planes_seguro e, tipo_seguros t, planes_seguro p'
      'where'
      'e.emp_codigo = t.emp_codigo'
      'and e.tse_codigo = t.tse_codigo'
      'and e.emp_codigo = p.emp_codigo'
      'and e.tse_codigo = p.tse_codigo'
      'and e.pla_codigo = p.pla_codigo'
      'and e.dep_numero is null'
      'and e.emp_codigo = :emp_codigo'
      'and e.emp_numero = :emp_numero'
      'order by'
      'e.seg_secuencia')
    Left = 56
    Top = 248
    object QSeguroEmptse_nombre: TStringField
      FieldName = 'tse_nombre'
      Size = 60
    end
    object QSeguroEmppla_nombre: TStringField
      FieldName = 'pla_nombre'
      Size = 60
    end
    object QSeguroEmppla_tarifa_basica: TBCDField
      FieldName = 'pla_tarifa_basica'
      Precision = 15
      Size = 2
    end
    object QSeguroEmppla_porciento_empresa: TBCDField
      FieldName = 'pla_porciento_empresa'
      Precision = 15
      Size = 2
    end
    object QSeguroEmptse_codigo: TIntegerField
      FieldName = 'tse_codigo'
    end
    object QSeguroEmpemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QSeguroEmpemp_numero: TIntegerField
      FieldName = 'emp_numero'
    end
    object QSeguroEmppla_codigo: TIntegerField
      FieldName = 'pla_codigo'
    end
  end
  object dsSeguroEmp: TDataSource
    DataSet = QSeguroEmp
    Left = 88
    Top = 248
  end
  object Query1: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <>
    Left = 176
    Top = 248
  end
  object QSeguroDep: TADOQuery
    Connection = DM.ADOSigma
    DataSource = dsEmpleado
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
        Name = 'emp_numero'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      
        't.tse_nombre, p.pla_nombre, e.pla_tarifa_basica, e.pla_porciento' +
        '_empresa,'
      'd.dep_nombre, e.emp_numero, t.tse_codigo, p.pla_codigo,'
      'e.dep_numero'
      'from'
      'empleado_planes_seguro e, tipo_seguros t, planes_seguro p,'
      'empleado_dependientes d'
      'where'
      'e.emp_codigo = t.emp_codigo'
      'and e.tse_codigo = t.tse_codigo'
      'and e.emp_codigo = p.emp_codigo'
      'and e.tse_codigo = p.tse_codigo'
      'and e.pla_codigo = p.pla_codigo'
      'and e.emp_codigo = d.emp_codigo'
      'and e.emp_numero = d.emp_numero'
      'and e.dep_numero = d.dep_numero'
      'and e.emp_codigo = :emp_codigo'
      'and e.emp_numero = :emp_numero'
      'order by'
      'e.seg_secuencia')
    Left = 312
    Top = 248
    object QSeguroDeptse_nombre: TStringField
      FieldName = 'tse_nombre'
      Size = 60
    end
    object QSeguroDeppla_nombre: TStringField
      FieldName = 'pla_nombre'
      Size = 60
    end
    object QSeguroDeppla_tarifa_basica: TBCDField
      FieldName = 'pla_tarifa_basica'
      Precision = 15
      Size = 2
    end
    object QSeguroDeppla_porciento_empresa: TBCDField
      FieldName = 'pla_porciento_empresa'
      Precision = 15
      Size = 2
    end
    object QSeguroDepdep_nombre: TStringField
      FieldName = 'dep_nombre'
      Size = 60
    end
    object QSeguroDepemp_numero: TIntegerField
      FieldName = 'emp_numero'
    end
    object QSeguroDeptse_codigo: TIntegerField
      FieldName = 'tse_codigo'
    end
    object QSeguroDeppla_codigo: TIntegerField
      FieldName = 'pla_codigo'
    end
    object QSeguroDepdep_numero: TIntegerField
      FieldName = 'dep_numero'
    end
  end
  object dsSeguroDep: TDataSource
    DataSet = QSeguroDep
    Left = 344
    Top = 248
  end
end
