object frmNominaBanco: TfrmNominaBanco
  Left = 564
  Top = 400
  BorderStyle = bsSingle
  Caption = 'Nomina Banco'
  ClientHeight = 141
  ClientWidth = 448
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 448
    Height = 141
    ActivePage = banco_popular
    Align = alClient
    TabOrder = 0
    object banco_popular: TTabSheet
      Caption = 'Banco Popular'
      object Label1: TLabel
        Left = 26
        Top = 16
        Width = 77
        Height = 13
        Caption = 'Tipo de Servicio'
      end
      object Label2: TLabel
        Left = 26
        Top = 40
        Width = 81
        Height = 13
        Caption = 'Envio de Archivo'
      end
      object Label3: TLabel
        Left = 26
        Top = 64
        Width = 60
        Height = 13
        Caption = 'Aplicar Pago'
      end
      object cbTS: TComboBox
        Left = 110
        Top = 16
        Width = 145
        Height = 21
        ItemHeight = 13
        TabOrder = 0
        Text = '-- NO SELECT --'
        OnChange = cbTSChange
        Items.Strings = (
          'Nomina Automatica')
      end
      object btnasiento: TBitBtn
        Left = 272
        Top = 16
        Width = 130
        Height = 68
        Caption = 'Generar archivo'
        Enabled = False
        TabOrder = 3
        OnClick = btnasientoClick
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00808080008080800080808000808080008080800080808000808080008080
          8000808080008080800080808000808080008080800080808000FF00FF000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000080808000FF00FF000000
          0000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
          FF000000000000000000FFFFFF0000FFFF000000000080808000FF00FF000000
          000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
          FF0000000000FF00FF0000000000FFFFFF000000000080808000FF00FF000000
          0000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF0000FF
          FF000000000000FFFF00FF00FF00000000000000000080808000FF00FF000000
          000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000000000000000FFFF
          FF00000000000000000000000000000000000000000080808000FF00FF000000
          0000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF000000000000FFFF000000
          0000FFFFFF0000FFFF00FFFFFF0000FFFF000000000080808000FF00FF000000
          000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000000000FFFF000000
          000000FFFF00FFFFFF0000FFFF00FFFFFF000000000080808000FF00FF000000
          0000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF000000000000FFFF0000FF
          FF000000000000FFFF00FFFFFF0000FFFF000000000080808000FF00FF000000
          000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000000000FFFF0000FF
          FF0000000000FFFFFF0000FFFF00FFFFFF000000000080808000FF00FF000000
          00000000000000000000000000000000000000000000000000000000000000FF
          FF0000FFFF0000000000000000000000000000000000FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000FF
          FF0000FFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          0000000080000000800000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00}
      end
      object EnvioArchivo: TDateTimePicker
        Left = 110
        Top = 40
        Width = 145
        Height = 21
        Date = 42971.433372037030000000
        Time = 42971.433372037030000000
        TabOrder = 1
      end
      object AplicaPago: TDateTimePicker
        Left = 110
        Top = 64
        Width = 145
        Height = 21
        Date = 42971.433372037030000000
        Time = 42971.433372037030000000
        TabOrder = 2
      end
    end
  end
  object qryTemp: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <>
    Left = 308
  end
  object QParam_RHumanos: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    AfterOpen = QParam_RHumanosAfterOpen
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
      'select p.par_rrhh_codigo_banco_popular,'
      
        'case upper(b.ban_tipo_cuenta)when '#39'CORRIENTE'#39' THEN 22 WHEN '#39'AHOR' +
        'RO'#39' THEN 32 END tipo_cuenta '
      'from Param_RHumanos p, bancos b'
      
        'where p.emp_codigo = b.emp_codigo and p.par_rrhh_suc_codigo_banc' +
        'o_popular = b.suc_codigo'
      '  and p.par_rrhh_codigo_banco_popular = b.ban_codigo'
      '  and p.emp_codigo = :emp_codigo')
    Left = 260
    object QParam_RHumanospar_rrhh_codigo_banco_popular: TIntegerField
      FieldName = 'par_rrhh_codigo_banco_popular'
    end
    object QParam_RHumanostipo_cuenta: TIntegerField
      FieldName = 'tipo_cuenta'
      ReadOnly = True
    end
  end
end
