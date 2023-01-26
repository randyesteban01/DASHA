object frmAFP: TfrmAFP
  Left = 742
  Top = 324
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Par'#225'metros de la AFP'
  ClientHeight = 373
  ClientWidth = 481
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
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 8
    Top = 8
    Width = 465
    Height = 329
    ActivePage = TabSheet1
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Par'#225'metros'
      object Label1: TLabel
        Left = 16
        Top = 16
        Width = 135
        Height = 13
        Caption = 'Tipo de descuento para AFP'
      end
      object Label2: TLabel
        Left = 16
        Top = 40
        Width = 159
        Height = 13
        Caption = 'Tipo descuento aporte extra AFP'
      end
      object Label3: TLabel
        Left = 16
        Top = 64
        Width = 117
        Height = 13
        Caption = 'Aporte de la empresa %'
      end
      object Label4: TLabel
        Left = 16
        Top = 136
        Width = 100
        Height = 13
        Caption = 'El porcentaje es fijo?'
      end
      object Label5: TLabel
        Left = 16
        Top = 160
        Width = 161
        Height = 13
        Caption = 'Costo administraci'#243'n de la AFP %'
      end
      object Label6: TLabel
        Left = 16
        Top = 184
        Width = 127
        Height = 13
        Caption = 'Monto seguro de vida RD$'
      end
      object Label7: TLabel
        Left = 16
        Top = 208
        Width = 133
        Height = 13
        Caption = 'Monto seguro invalidez RD$'
      end
      object Label12: TLabel
        Left = 16
        Top = 88
        Width = 101
        Height = 13
        Caption = 'Aporte del afiliado %'
      end
      object Label13: TLabel
        Left = 16
        Top = 112
        Width = 59
        Height = 13
        Caption = 'Salario Tope'
      end
      object DBEdit1: TDBEdit
        Left = 192
        Top = 64
        Width = 73
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'afp_aporte_empresa'
        DataSource = dsAFP
        TabOrder = 2
      end
      object DBEdit2: TDBEdit
        Left = 192
        Top = 160
        Width = 73
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'afp_costo_adm'
        DataSource = dsAFP
        TabOrder = 6
      end
      object DBEdit3: TDBEdit
        Left = 192
        Top = 184
        Width = 73
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'afp_seguro_vida'
        DataSource = dsAFP
        TabOrder = 7
      end
      object DBEdit4: TDBEdit
        Left = 192
        Top = 208
        Width = 73
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'afp_seguro_invalidez'
        DataSource = dsAFP
        TabOrder = 8
      end
      object DBComboBox1: TDBComboBox
        Left = 192
        Top = 136
        Width = 73
        Height = 21
        Style = csDropDownList
        DataField = 'afp_fijo'
        DataSource = dsAFP
        ItemHeight = 13
        Items.Strings = (
          'Si'
          'No')
        TabOrder = 5
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 192
        Top = 16
        Width = 257
        Height = 21
        DataField = 'afp_descuento'
        DataSource = dsAFP
        KeyField = 'tde_codigo'
        ListField = 'tde_nombre'
        ListSource = dsTipoDesc
        TabOrder = 0
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 192
        Top = 40
        Width = 257
        Height = 21
        DataField = 'afp_descuento_extra'
        DataSource = dsAFP
        KeyField = 'tde_codigo'
        ListField = 'tde_nombre'
        ListSource = dsTipoDesc
        TabOrder = 1
      end
      object BitBtn1: TBitBtn
        Left = 376
        Top = 264
        Width = 75
        Height = 25
        Caption = 'Grabar'
        TabOrder = 9
        OnClick = BitBtn1Click
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000FF00FF00FF00FF000000
          0000008080000080800000000000000000000000000000000000000000000000
          0000FF00FF00FF00FF00000000000080800000000000FF00FF00FF00FF000000
          0000008080000080800000000000000000000000000000000000000000000000
          0000FF00FF00FF00FF00000000000080800000000000FF00FF00FF00FF000000
          0000008080000080800000000000000000000000000000000000000000000000
          0000FF00FF00FF00FF00000000000080800000000000FF00FF00FF00FF000000
          0000008080000080800000000000000000000000000000000000000000000000
          00000000000000000000000000000080800000000000FF00FF00FF00FF000000
          0000008080000080800000808000008080000080800000808000008080000080
          80000080800000808000008080000080800000000000FF00FF00FF00FF000000
          0000008080000080800000000000000000000000000000000000000000000000
          00000000000000000000008080000080800000000000FF00FF00FF00FF000000
          00000080800000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00000000000080800000000000FF00FF00FF00FF000000
          00000080800000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00000000000080800000000000FF00FF00FF00FF000000
          00000080800000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00000000000080800000000000FF00FF00FF00FF000000
          00000080800000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00000000000080800000000000FF00FF00FF00FF000000
          00000080800000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00FF000000
          00000080800000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FF00FF0000000000FF00FF00FF00FF000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      end
      object DBEdit7: TDBEdit
        Left = 192
        Top = 88
        Width = 73
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'afp_aporte_afiliado'
        DataSource = dsAFP
        TabOrder = 3
      end
      object DBEdit8: TDBEdit
        Left = 192
        Top = 112
        Width = 73
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'afp_salario_tope'
        DataSource = dsAFP
        TabOrder = 4
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Aporte extra Empleados'
      ImageIndex = 1
      object Label8: TLabel
        Left = 16
        Top = 16
        Width = 46
        Height = 13
        Caption = 'Empleado'
      end
      object Label9: TLabel
        Left = 16
        Top = 40
        Width = 56
        Height = 13
        Caption = 'Inhabilitado'
      end
      object Label10: TLabel
        Left = 16
        Top = 64
        Width = 106
        Height = 13
        Caption = 'Aporte extra Empresa'
      end
      object Label11: TLabel
        Left = 16
        Top = 88
        Width = 119
        Height = 13
        Caption = 'Fecha efectuar el aporte'
      end
      object btincluir: TSpeedButton
        Left = 312
        Top = 88
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
        OnClick = btincluirClick
      end
      object bteliminar: TSpeedButton
        Left = 384
        Top = 88
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
        OnClick = bteliminarClick
      end
      object DBLookupComboBox3: TDBLookupComboBox
        Left = 144
        Top = 16
        Width = 305
        Height = 21
        DataField = 'emp_numero'
        DataSource = dsEmpleadosAFP
        KeyField = 'emp_numero'
        ListField = 'Nombres'
        ListSource = dsEmpleado
        TabOrder = 0
      end
      object DBComboBox2: TDBComboBox
        Left = 144
        Top = 40
        Width = 73
        Height = 21
        Style = csDropDownList
        DataField = 'afp_inhabilitado'
        DataSource = dsEmpleadosAFP
        ItemHeight = 13
        Items.Strings = (
          'Si'
          'No')
        TabOrder = 1
      end
      object DBEdit5: TDBEdit
        Left = 144
        Top = 64
        Width = 73
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'afp_aporte_extra'
        DataSource = dsEmpleadosAFP
        TabOrder = 2
      end
      object DBEdit6: TDBEdit
        Left = 144
        Top = 88
        Width = 73
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'afp_fecha_aporte'
        DataSource = dsEmpleadosAFP
        TabOrder = 3
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 112
        Width = 457
        Height = 189
        Align = alBottom
        DataSource = dsListado
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 4
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Nombre'
            Width = 231
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'afp_aporte_extra'
            Title.Alignment = taCenter
            Title.Caption = 'Aporte'
            Width = 68
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'afp_fecha_aporte'
            Title.Alignment = taCenter
            Title.Caption = 'Fecha'
            Width = 68
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'afp_inhabilitado'
            Title.Alignment = taCenter
            Title.Caption = 'Inhabilitado'
            Visible = True
          end>
      end
    end
  end
  object btClose: TBitBtn
    Left = 390
    Top = 344
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
  object QAFP: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    OnNewRecord = QAFPNewRecord
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
      
        'emp_codigo, afp_descuento, afp_descuento_extra, afp_aporte_empre' +
        'sa,'
      'afp_fijo, afp_costo_adm, afp_seguro_vida, afp_seguro_invalidez,'
      'afp_aporte_afiliado, afp_salario_tope'
      'from'
      'parametro_afp'
      'where'
      'emp_codigo = :emp_codigo'
      '')
    Left = 328
    Top = 224
    object QAFPemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QAFPafp_descuento: TIntegerField
      FieldName = 'afp_descuento'
    end
    object QAFPafp_descuento_extra: TIntegerField
      FieldName = 'afp_descuento_extra'
    end
    object QAFPafp_fijo: TStringField
      FieldName = 'afp_fijo'
      Size = 2
    end
    object QAFPafp_costo_adm: TBCDField
      FieldName = 'afp_costo_adm'
      currency = True
      Precision = 15
      Size = 2
    end
    object QAFPafp_seguro_vida: TBCDField
      FieldName = 'afp_seguro_vida'
      currency = True
      Precision = 15
      Size = 2
    end
    object QAFPafp_seguro_invalidez: TBCDField
      FieldName = 'afp_seguro_invalidez'
      currency = True
      Precision = 15
      Size = 2
    end
    object QAFPafp_aporte_empresa: TBCDField
      FieldName = 'afp_aporte_empresa'
      currency = True
      Precision = 15
      Size = 2
    end
    object QAFPafp_aporte_afiliado: TBCDField
      FieldName = 'afp_aporte_afiliado'
      currency = True
      Precision = 15
      Size = 2
    end
    object QAFPafp_salario_tope: TBCDField
      FieldName = 'afp_salario_tope'
      currency = True
      Precision = 15
      Size = 2
    end
  end
  object QTipoDesc: TADOQuery
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
      'tde_codigo, tde_nombre'
      'from'
      'tipo_descuentos'
      'where'
      'emp_codigo = :emp_codigo'
      'order by'
      'tde_nombre')
    Left = 328
    Top = 256
    object QTipoDesctde_codigo: TIntegerField
      FieldName = 'tde_codigo'
    end
    object QTipoDesctde_nombre: TStringField
      FieldName = 'tde_nombre'
      Size = 60
    end
  end
  object dsTipoDesc: TDataSource
    DataSet = QTipoDesc
    Left = 360
    Top = 256
  end
  object dsAFP: TDataSource
    DataSet = QAFP
    Left = 360
    Top = 224
  end
  object QEmpleadosAFP: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
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
        Name = 'sec'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'emp_codigo, emp_numero, afp_secuencia, afp_inhabilitado,'
      'afp_aporte_extra, afp_fecha_aporte'
      'from'
      'afp_aporte_extra'
      'where'
      'emp_codigo = :emp_codigo'
      'and afp_secuencia = :sec'
      'order by'
      'afp_secuencia')
    Left = 328
    Top = 192
    object QEmpleadosAFPemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QEmpleadosAFPemp_numero: TIntegerField
      FieldName = 'emp_numero'
    end
    object QEmpleadosAFPafp_secuencia: TIntegerField
      FieldName = 'afp_secuencia'
    end
    object QEmpleadosAFPafp_inhabilitado: TStringField
      FieldName = 'afp_inhabilitado'
      Size = 2
    end
    object QEmpleadosAFPafp_aporte_extra: TBCDField
      FieldName = 'afp_aporte_extra'
      currency = True
      Precision = 15
      Size = 2
    end
    object QEmpleadosAFPafp_fecha_aporte: TDateTimeField
      FieldName = 'afp_fecha_aporte'
      EditMask = 'cc-cc-cccc'
    end
  end
  object dsEmpleadosAFP: TDataSource
    DataSet = QEmpleadosAFP
    Left = 360
    Top = 192
  end
  object QListado: TADOQuery
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
      
        '(e.emp_nombres+'#39' '#39'+e.emp_apellido_paterno+'#39' '#39'+e.emp_apellido_mat' +
        'erno) as Nombre,'
      'a.afp_aporte_extra, a.afp_fecha_aporte, a.afp_inhabilitado,'
      'a.afp_secuencia'
      'from'
      'empleados e, afp_aporte_extra a'
      'where'
      'e.emp_codigo = a.emp_codigo'
      'and e.emp_numero = a.emp_numero'
      'and e.emp_codigo = :emp_codigo'
      'order by'
      'a.afp_secuencia')
    Left = 328
    Top = 288
    object QListadoNombre: TStringField
      FieldName = 'Nombre'
      ReadOnly = True
      Size = 182
    end
    object QListadoafp_aporte_extra: TBCDField
      FieldName = 'afp_aporte_extra'
      currency = True
      Precision = 15
      Size = 2
    end
    object QListadoafp_fecha_aporte: TDateTimeField
      FieldName = 'afp_fecha_aporte'
    end
    object QListadoafp_inhabilitado: TStringField
      FieldName = 'afp_inhabilitado'
      Size = 2
    end
    object QListadoafp_secuencia: TIntegerField
      FieldName = 'afp_secuencia'
    end
  end
  object dsListado: TDataSource
    DataSet = QListado
    Left = 360
    Top = 288
  end
  object QEmpleados: TADOQuery
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
      'emp_numero,'
      
        'emp_nombres+'#39' '#39'+emp_apellido_paterno+'#39' '#39'+emp_apellido_materno as' +
        ' Nombres'
      'from'
      'empleados'
      'where'
      'emp_codigo = :emp_codigo'
      'order by'
      '2 ')
    Left = 328
    Top = 160
    object QEmpleadosemp_numero: TIntegerField
      FieldName = 'emp_numero'
    end
    object QEmpleadosNombres: TStringField
      FieldName = 'Nombres'
      ReadOnly = True
      Size = 182
    end
  end
  object dsEmpleado: TDataSource
    DataSet = QEmpleados
    Left = 360
    Top = 160
  end
end
