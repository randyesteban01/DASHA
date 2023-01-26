object frmDetalleTecnico: TfrmDetalleTecnico
  Left = 731
  Top = 269
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Detalle del Servicio Tecnico'
  ClientHeight = 296
  ClientWidth = 566
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 81
    Width = 566
    Height = 170
    Align = alTop
    BorderWidth = 6
    TabOrder = 0
    object Label4: TLabel
      Left = 8
      Top = 10
      Width = 85
      Height = 13
      Caption = 'Fecha de entrega'
    end
    object Label7: TLabel
      Left = 8
      Top = 34
      Width = 82
      Height = 13
      Caption = 'T'#233'cnico asignado'
    end
    object Label8: TLabel
      Left = 8
      Top = 138
      Width = 110
      Height = 13
      Caption = 'Monto de la reparaci'#243'n'
    end
    object Label9: TLabel
      Left = 8
      Top = 58
      Width = 199
      Height = 13
      Caption = 'Comentario / Descripci'#243'n de la reparaci'#243'n'
    end
    object DBEdit6: TDBEdit
      Left = 128
      Top = 10
      Width = 113
      Height = 21
      TabStop = False
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      DataField = 'ta_fecha'
      DataSource = dsCrioTalle
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object DBEdit7: TDBEdit
      Left = 128
      Top = 34
      Width = 67
      Height = 21
      TabStop = False
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'tec_codigo'
      DataSource = dsCrioTalle
      ReadOnly = True
      TabOrder = 3
    end
    object DBEdit8: TDBEdit
      Left = 128
      Top = 138
      Width = 113
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'ta_monto'
      DataSource = dsCrioTalle
      TabOrder = 1
    end
    object DBRichEdit2: TDBRichEdit
      Left = 8
      Top = 74
      Width = 407
      Height = 57
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'ta_comentario'
      DataSource = dsCrioTalle
      TabOrder = 0
    end
    object tTecnico: TEdit
      Left = 197
      Top = 34
      Width = 218
      Height = 21
      TabStop = False
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
      ReadOnly = True
      TabOrder = 4
    end
    object TarStatus: TDBRadioGroup
      Left = 429
      Top = 7
      Width = 130
      Height = 156
      Align = alRight
      Caption = 'Status en taller'
      DataField = 'ta_status'
      DataSource = dsCrioTalle
      Items.Strings = (
        'Recibido'
        'Diagnostico'
        'Espera Autorizacion'
        'Espera Pieza'
        'Reparado'
        'Entregado')
      TabOrder = 5
      Values.Strings = (
        'TRE'
        'TDI'
        'TEA'
        'TEP'
        'TRP'
        'TEN')
    end
  end
  object BitBtn1: TBitBtn
    Left = 382
    Top = 262
    Width = 75
    Height = 25
    Caption = 'Grabar'
    TabOrder = 1
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
  object BitBtn2: TBitBtn
    Left = 478
    Top = 262
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 2
    OnClick = BitBtn2Click
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00F8F8F800D1D1D100A1A1A100898989008C8C8C00ADAD
      AD00DCDCDC00FCFCFC00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FEFEFE00D8D8D8006169AE000A1EB7000E24CC000E24CC00091DB2000719
      A2005D6184008F8F8F00EAEAEA00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00C4C5CE001129E000142EF500142EF500142EF500142EF500142EF500142E
      F5000E25D1001627A7006D6D6D00E7E7E700FF00FF00FF00FF00FF00FF00E9E9
      E900142EF500142EF500142EF500142EF500142EF500142EF500142EF500142E
      F500142EF500132DF0001627A70084848400F9F9F900FF00FF00FCFCFC00223B
      F500142EF500142EF5004E62F700FF00FF00FF00FF00FF00FF00F0F0F000142E
      F500142EF500142EF500122AE500545DA200D0D0D000FF00FF00C4CAFC00142E
      F500142EF5008894F400FF00FF00FF00FF00FF00FF00FF00FF003D51E700142E
      F500142EF500142EF500142EF5000719A20097979700FF00FF00223BF500142E
      F500142EF500FF00FF00FF00FF00FF00FF00FF00FF001E34DB00142EF500142E
      F500223BF500142EF500142EF5000F26D60074747400FF00FF00142EF500142E
      F5000E24CC00FF00FF00FF00FF00FF00FF001E34DB00142EF500142EF500223B
      F500ECECEC003E53F500142EF500142EF50070707000FF00FF00142EF500142E
      F5000B20BC00FF00FF00FF00FF001E34DB00142EF500142EF500223BF500FF00
      FF00FF00FF004C60F400142EF500142EF50086868600FF00FF00142EF500142E
      F5001027DB00DFE2F3002038EB00142EF500142EF500223BF500FF00FF00FF00
      FF00FEFEFE00142EF500142EF500132DF000BCBCBC00FF00FF005D6FF800142E
      F500142EF500122AE500142EF500142EF500223BF500FF00FF00FF00FF00FF00
      FF00BBBCC900142EF500142EF5003546CC00EFEFEF00FF00FF00FF00FF00142E
      F500142EF500142EF500142EF500223BF500FF00FF00FF00FF00FF00FF00A1A8
      DB00142EF500142EF500142EF500C8C8C800FF00FF00FF00FF00FF00FF008996
      F900142EF500142EF500142EF5000E25D100091CAC00091DB2000F26D600142E
      F500142EF500142EF500949ACC00FCFCFC00FF00FF00FF00FF00FF00FF00FF00
      FF007B89F900142EF500142EF500142EF500142EF500142EF500142EF500142E
      F500142EF5008E97E200FBFBFB00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00F0F1FE003148F600142EF500142EF500142EF500142EF5004E62
      F700F1F1F100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 566
    Height = 81
    Align = alTop
    BevelWidth = 2
    Caption = 'Panel2'
    TabOrder = 3
    object Label1: TLabel
      Left = 2
      Top = 2
      Width = 562
      Height = 19
      Align = alTop
      Caption = 'Descripci'#243'n del problema'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBRichEdit1: TDBRichEdit
      Left = 2
      Top = 21
      Width = 562
      Height = 58
      Align = alClient
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'det_problema'
      DataSource = frmOrdenServicio.dsDetalle
      ReadOnly = True
      TabOrder = 0
    end
  end
  object Search: TQrySearchDlgADO
    AliasName = DM.ADOSigma
    Left = 280
    Top = 187
  end
  object QCrioTaller: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    AfterPost = QCrioTallerAfterPost
    OnNewRecord = QCrioTallerNewRecord
    Parameters = <
      item
        Name = 'suc_codigo'
        DataType = ftString
        Size = 2
        Value = '-1'
      end
      item
        Name = 'ord_numero'
        DataType = ftString
        Size = 2
        Value = '-1'
      end
      item
        Name = 'tec_codigo'
        DataType = ftString
        Size = 2
        Value = '-1'
      end
      item
        Name = 'det_secuencia'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT'
      'suc_codigo,'
      'ord_numero,'
      'det_secuencia,'
      'tec_codigo,'
      'ta_monto,'
      'ta_comentario,'
      'ta_status,'
      'ta_fecha'
      'FROM Det_Orden_Servicio_taller'
      'where suc_codigo = :suc_codigo'
      '  and ord_numero = :ord_numero'
      '  and tec_codigo = :tec_codigo'
      '  and det_secuencia = :det_secuencia')
    Left = 160
    Top = 211
    object QCrioTallersuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object QCrioTallerord_numero: TIntegerField
      FieldName = 'ord_numero'
    end
    object QCrioTallerdet_secuencia: TIntegerField
      FieldName = 'det_secuencia'
    end
    object QCrioTallertec_codigo: TIntegerField
      FieldName = 'tec_codigo'
      OnGetText = QCrioTallertec_codigoGetText
    end
    object QCrioTallerta_monto: TCurrencyField
      FieldName = 'ta_monto'
    end
    object QCrioTallerta_comentario: TMemoField
      FieldName = 'ta_comentario'
      BlobType = ftMemo
    end
    object QCrioTallerta_status: TStringField
      FieldName = 'ta_status'
    end
    object QCrioTallerta_fecha: TDateTimeField
      FieldName = 'ta_fecha'
    end
  end
  object dsCrioTalle: TDataSource
    AutoEdit = False
    DataSet = QCrioTaller
    Left = 256
    Top = 235
  end
  object Query1: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <
      item
        Name = 'suc_codigo'
        Size = -1
        Value = Null
      end
      item
        Name = 'ord_numero'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT t1.* from Det_Orden_Servicio t1'
      'WHERE NOT EXISTS'
      '(SELECT * FROM Det_Orden_Servicio_taller t2  '
      
        'WHERE t2.suc_codigo=t1.suc_codigo and t2.ord_numero=t1.ord_numer' +
        'o and t2.ta_status = '#39'TEN'#39')'
      ''
      'AND t1.suc_codigo = :suc_codigo and t1.ord_numero = :ord_numero')
    Left = 232
    Top = 251
  end
end
