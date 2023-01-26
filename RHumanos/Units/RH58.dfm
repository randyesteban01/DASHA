object frmSFS: TfrmSFS
  Left = 361
  Top = 596
  ActiveControl = DBEdit1
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Seguro Familiar de Salud'
  ClientHeight = 227
  ClientWidth = 280
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
    Width = 265
    Height = 209
    ActivePage = TabSheet1
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Par'#225'metros'
      object Label1: TLabel
        Left = 16
        Top = 24
        Width = 117
        Height = 13
        Caption = 'Aporte de la empresa %'
      end
      object Label2: TLabel
        Left = 16
        Top = 48
        Width = 101
        Height = 13
        Caption = 'Aporte del afiliado %'
      end
      object Label3: TLabel
        Left = 16
        Top = 72
        Width = 135
        Height = 13
        Caption = 'Sueldo tope para descuento'
      end
      object Label4: TLabel
        Left = 16
        Top = 96
        Width = 106
        Height = 13
        Caption = 'Monto por cada padre'
      end
      object DBEdit1: TDBEdit
        Left = 160
        Top = 24
        Width = 73
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'sfs_aporte_empresa'
        DataSource = dsSFS
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 160
        Top = 48
        Width = 73
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'sfs_aporte_afiliado'
        DataSource = dsSFS
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 160
        Top = 72
        Width = 73
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'sfs_tope_sueldo'
        DataSource = dsSFS
        TabOrder = 2
      end
      object BitBtn1: TBitBtn
        Left = 94
        Top = 148
        Width = 75
        Height = 25
        Caption = 'Grabar'
        TabOrder = 4
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
      object btClose: TBitBtn
        Left = 174
        Top = 148
        Width = 75
        Height = 25
        Caption = '&Salir'
        TabOrder = 5
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
      object DBEdit4: TDBEdit
        Left = 160
        Top = 96
        Width = 73
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'sfs_pago_padres'
        DataSource = dsSFS
        TabOrder = 3
      end
    end
  end
  object QSFS: TADOQuery
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
      end>
    SQL.Strings = (
      'select'
      
        'emp_codigo, sfs_secuencia, sfs_aporte_empresa, sfs_aporte_afilia' +
        'do, '
      'sfs_tope_sueldo, sfs_pago_padres'
      'from'
      'Parametros_SFS'
      'where'
      'emp_codigo = :emp_codigo')
    Left = 168
    Top = 144
    object QSFSemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QSFSsfs_secuencia: TIntegerField
      FieldName = 'sfs_secuencia'
    end
    object QSFSsfs_aporte_empresa: TBCDField
      FieldName = 'sfs_aporte_empresa'
      currency = True
      Precision = 15
      Size = 2
    end
    object QSFSsfs_aporte_afiliado: TBCDField
      FieldName = 'sfs_aporte_afiliado'
      currency = True
      Precision = 15
      Size = 2
    end
    object QSFSsfs_tope_sueldo: TBCDField
      FieldName = 'sfs_tope_sueldo'
      currency = True
      Precision = 15
      Size = 2
    end
    object QSFSsfs_pago_padres: TBCDField
      FieldName = 'sfs_pago_padres'
      currency = True
      Precision = 15
      Size = 2
    end
  end
  object dsSFS: TDataSource
    DataSet = QSFS
    Left = 204
    Top = 144
  end
end
