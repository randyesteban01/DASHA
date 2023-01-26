object frmDetalleOrdenServicio: TfrmDetalleOrdenServicio
  Left = 535
  Top = 217
  ActiveControl = DBEdit1
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Equipo'
  ClientHeight = 384
  ClientWidth = 532
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
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 8
    Width = 529
    Height = 337
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 70
      Height = 13
      Caption = 'Tipo de equipo'
    end
    object Label2: TLabel
      Left = 8
      Top = 32
      Width = 50
      Height = 13
      Caption = '# de Serie'
    end
    object Label3: TLabel
      Left = 8
      Top = 80
      Width = 85
      Height = 13
      Caption = 'Fecha de entrada'
    end
    object Label4: TLabel
      Left = 8
      Top = 184
      Width = 85
      Height = 13
      Caption = 'Fecha de entrega'
    end
    object Label5: TLabel
      Left = 8
      Top = 56
      Width = 106
      Height = 13
      Caption = 'Descripci'#243'n del equipo'
    end
    object Label6: TLabel
      Left = 8
      Top = 104
      Width = 118
      Height = 13
      Caption = 'Descripci'#243'n del problema'
    end
    object Label7: TLabel
      Left = 8
      Top = 208
      Width = 82
      Height = 13
      Caption = 'T'#233'cnico asignado'
    end
    object Label8: TLabel
      Left = 8
      Top = 312
      Width = 110
      Height = 13
      Caption = 'Monto de la reparaci'#243'n'
    end
    object Label9: TLabel
      Left = 8
      Top = 232
      Width = 199
      Height = 13
      Caption = 'Comentario / Descripci'#243'n de la reparaci'#243'n'
    end
    object Label10: TLabel
      Left = 400
      Top = 80
      Width = 69
      Height = 13
      Caption = 'Tiene garant'#237'a'
    end
    object btcaja: TSpeedButton
      Left = 172
      Top = 8
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
      OnClick = btcajaClick
    end
    object SpeedButton1: TSpeedButton
      Left = 172
      Top = 208
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
    object lbGarantia: TLabel
      Left = 248
      Top = 101
      Width = 225
      Height = 16
      Alignment = taCenter
      AutoSize = False
      Caption = 'lbGarantia'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object DBEdit1: TDBEdit
      Left = 128
      Top = 8
      Width = 41
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'tip_codigo'
      DataSource = frmOrdenServicio.dsDetalle
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 128
      Top = 32
      Width = 113
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'det_numero_serie'
      DataSource = frmOrdenServicio.dsDetalle
      TabOrder = 1
      OnExit = DBEdit2Exit
    end
    object DBEdit3: TDBEdit
      Left = 128
      Top = 56
      Width = 393
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'det_descripcion'
      DataSource = frmOrdenServicio.dsDetalle
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 128
      Top = 80
      Width = 113
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'det_fecha_entrada'
      DataSource = frmOrdenServicio.dsDetalle
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 480
      Top = 80
      Width = 41
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'det_tiene_garantia'
      DataSource = frmOrdenServicio.dsDetalle
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 128
      Top = 184
      Width = 113
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      DataField = 'det_fecha_entrega'
      DataSource = frmOrdenServicio.dsDetalle
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
    end
    object DBEdit7: TDBEdit
      Left = 128
      Top = 208
      Width = 41
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'tec_codigo'
      DataSource = frmOrdenServicio.dsDetalle
      TabOrder = 7
    end
    object DBEdit8: TDBEdit
      Left = 128
      Top = 312
      Width = 113
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'det_monto'
      DataSource = frmOrdenServicio.dsDetalle
      TabOrder = 9
    end
    object DBRichEdit1: TDBRichEdit
      Left = 8
      Top = 120
      Width = 513
      Height = 57
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'det_problema'
      DataSource = frmOrdenServicio.dsDetalle
      TabOrder = 5
    end
    object DBRichEdit2: TDBRichEdit
      Left = 8
      Top = 251
      Width = 513
      Height = 57
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'det_comentario'
      DataSource = frmOrdenServicio.dsDetalle
      TabOrder = 8
    end
    object tTipo: TEdit
      Left = 197
      Top = 8
      Width = 324
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
    object tTecnico: TEdit
      Left = 197
      Top = 208
      Width = 324
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
      TabOrder = 11
    end
  end
  object BitBtn1: TBitBtn
    Left = 368
    Top = 352
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
    Left = 448
    Top = 352
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
  object BitBtn3: TBitBtn
    Left = 222
    Top = 352
    Width = 123
    Height = 25
    Caption = 'Generar Comentarios'
    TabOrder = 3
    OnClick = BitBtn3Click
  end
  object Search: TQrySearchDlgADO
    AliasName = DM.ADOSigma
    Left = 280
    Top = 136
  end
  object QCrioTalle: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    DataSource = frmOrdenServicio.dsOrden
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
      end>
    SQL.Strings = (
      'SELECT'
      'ta_monto,'
      'ta_comentario,'
      'ta_status,'
      'ta_fecha,'
      'a.tec_codigo,'
      'b.tec_nombre'
      'FROM Det_Orden_Servicio_taller a '
      'LEFT OUTER JOIN Tecnicos b ON a.tec_codigo = b.tec_codigo'
      'where suc_codigo = :suc_codigo'
      '  and ord_numero = :ord_numero'
      'order by ta_fecha desc')
    Left = 184
    Top = 344
  end
end
