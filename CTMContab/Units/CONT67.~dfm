object frmGeneraComprasDGII: TfrmGeneraComprasDGII
  Left = 482
  Top = 245
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Formato de envio de compras de bienes y servicios'
  ClientHeight = 321
  ClientWidth = 488
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
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 40
    Width = 19
    Height = 13
    Caption = 'Mes'
  end
  object Label2: TLabel
    Left = 8
    Top = 16
    Width = 19
    Height = 13
    Caption = 'A'#241'o'
  end
  object Label3: TLabel
    Left = 8
    Top = 96
    Width = 118
    Height = 13
    Caption = 'Instrucciones de Uso'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 240
    Top = 16
    Width = 82
    Height = 13
    Caption = 'Filtro de facturas'
  end
  object BitBtn1: TBitBtn
    Left = 171
    Top = 80
    Width = 113
    Height = 25
    Caption = 'Abrir Hoja de Excel'
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object cbmes: TComboBox
    Left = 40
    Top = 40
    Width = 121
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 1
    Items.Strings = (
      'Enero'
      'Febrero'
      'Marzo'
      'Abril'
      'Mayo'
      'Junio'
      'Julio'
      'Agosto'
      'Septiembre'
      'Octubre'
      'Noviembre'
      'Diciembre')
  end
  object BitBtn2: TBitBtn
    Left = 288
    Top = 80
    Width = 113
    Height = 25
    Caption = 'Llenar Hoja de Excel'
    TabOrder = 2
    OnClick = BitBtn2Click
  end
  object btClose: TBitBtn
    Left = 406
    Top = 80
    Width = 75
    Height = 25
    Caption = '&Salir'
    TabOrder = 3
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
  object ProgressBar1: TProgressBar
    Left = 0
    Top = 304
    Width = 488
    Height = 17
    Align = alBottom
    TabOrder = 4
  end
  object Memo1: TMemo
    Left = 8
    Top = 112
    Width = 473
    Height = 185
    Color = clGray
    Ctl3D = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = []
    Lines.Strings = (
      'Primero: Debe seleccionar el A'#241'o'
      'Segundo: Deber seleccionar el Mes'
      'Tercero: Presionar el bot'#243'n "Abrir Hoja de Excel"'
      
        'Cuarto : Buscar y seleccionar el archivo modelo bajado de la DGI' +
        'I'
      'Quinto : Dentro de la hoja de Excel, presionar el boton Inicio'
      'Sexto  : En la pantalla de DASHA, presionar el boton'
      '         "Llenar Hoja de Excel"'
      'Septimo: Verificar su Hoja de Excel'
      ''
      'Nota:'
      
        'En caso de haber algun error, corrijalo en DASHA y siga nuevamen' +
        'te'
      'los pasos de arriba.')
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 5
  end
  object cbfiltro: TComboBox
    Left = 328
    Top = 16
    Width = 153
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 6
    Text = 'Todas'
    Items.Strings = (
      'Todas'
      'Sin pasar al 606'
      'Pasadas al 606')
  end
  object rgOrden: TRadioGroup
    Left = 243
    Top = 43
    Width = 238
    Height = 31
    Caption = '[ Ordenado por ]'
    Columns = 3
    Ctl3D = False
    ItemIndex = 1
    Items.Strings = (
      'NCF'
      'TIPO'
      'FECHA')
    ParentCtl3D = False
    TabOrder = 7
  end
  object cbAno: TSpinEdit
    Left = 40
    Top = 14
    Width = 117
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 8
    Value = 0
  end
  object Query1: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <>
    Left = 200
    Top = 216
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*.xls'
    Filter = 'Excel Files|*.xls'
    Left = 416
    Top = 216
  end
  object Query2: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <>
    Left = 240
    Top = 216
  end
  object QDatos: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <
      item
        Name = 'emp'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'mes'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'ano'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'ORDER'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'PASADAS'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'DECLARE @EMP INT, @MES INT, @ANO INT, @ORDER INT, @PASADAS INT'
      'SET @EMP          = :EMP '
      'SET @MES          = :MES'
      'SET @ANO         = :ANO'
      'SET @ORDER     = :ORDER'
      'SET @PASADAS = :PASADAS'
      ''
      '--TODAS'
      'IF ((@ORDER = 1) AND (@PASADAS = 0)) BEGIN '
      'select p.sup_rnc RNC_Cedula,'
      'case when len(rtrim(p.sup_rnc)) = 9 then 1 else 2 end tipo_id,'
      't.tip_nombre Tipo_Bienes_Servicios, f.ncf NCF,'
      
        '(SELECT top 1 ncr_ncf_modifica FROM NotasCreditoCompra WHERE emp' +
        '_codigo = F.emp_codigo AND fac_numero = F.fac_numero) NCF_MODIF,'
      
        'CASE WHEN MONTH(F.fac_fecha)<10 THEN RTRIM(YEAR(F.fac_fecha))+'#39'0' +
        #39'+RTRIM(MONTH(F.FAC_FECHA)) ELSE'
      
        'RTRIM(YEAR(F.fac_fecha))+RTRIM(MONTH(F.FAC_FECHA)) END Fecha_Com' +
        'prob,'
      'day(f.fac_fecha) as Dia_Comprob,'
      
        '(SELECT top 1 CASE WHEN MONTH(B.che_fecha)<10 THEN RTRIM(YEAR(B.' +
        'che_fecha))+'#39'0'#39'+RTRIM(MONTH(B.che_fecha)) ELSE'
      'RTRIM(YEAR(B.che_fecha))+RTRIM(MONTH(B.che_fecha)) END'
      'FROM Det_ChequeFacturas A'
      
        'INNER JOIN Cheques B ON A.che_numero=B.che_numero AND A.emp_codi' +
        'go=B.emp_codigo'
      
        'WHERE A.emp_codigo = F.emp_codigo AND A.fac_numero = F.fac_numer' +
        'o) FechaPag,'
      '(SELECT top 1 day(b.che_fecha) FROM Det_ChequeFacturas A'
      
        'INNER JOIN Cheques B ON A.che_numero=B.che_numero AND A.emp_codi' +
        'go=B.emp_codigo'
      
        'WHERE A.emp_codigo = F.emp_codigo AND A.fac_numero = F.fac_numer' +
        'o) diaPago,'
      
        'f.fac_servicios Monto_Servicios, f.fac_total-f.fac_servicios Mon' +
        'to_Bienes,'
      
        'f.fac_total Total_Facturado, f.fac_itbis Itbis_Facturado, isnull' +
        '(f.fac_retencion,0) as Itbis_Retenido,'
      
        '0 itbis_proporc, 0 Itbis_Costo, f.fac_itbis Itbis_Adelantar, 0 I' +
        'tbis_Percibido_Compras,'
      
        'isnull(R.ret_nombre,'#39#39') Tipo_Retencion, isnull(f.fac_retencion_i' +
        'sr,0) as monto_ret_renta,'
      
        '0 ISR_Percib_Compras, f.fac_selectivo Imp_Sel_Consumo, 0 Otros_I' +
        'mpuesto_Tasa, f.fac_proplegal propina_legal,'
      #39'04 - COMPRA A CREDITO'#39' FormaPago'
      'from provfacturas f'
      
        'left join Tipo_Bienes_Servicios t on (f.tip_codigo = t.tip_codig' +
        'o)'
      
        'inner join proveedores p on f.emp_codigo=p.emp_codigo and f.sup_' +
        'codigo = p.sup_codigo and f.emp_codigo=p.emp_codigo'
      'left join Retenciones R on f.Tipo_Ret_Codigo = R.ret_codigo'
      
        'where p.emp_codigo = @emp and f.fac_total > 0 and p.sup_rnc is n' +
        'ot null'
      
        'and (f.ncf is not null or f.ncf_fijo is not null) and isnull(f.t' +
        'ip_codigo,0) > 0 AND'
      
        'f.emp_codigo = @emp and year(f.fac_fecha) = @ANO and month(f.fac' +
        '_fecha) = @MES'
      
        'order by substring(f.ncf,1,3), cast(substring(f.ncf,4,8) as int)' +
        ', t.tip_nombre, f.fac_fecha, f.sup_codigo'
      'END'
      ''
      'IF ((@ORDER = 2) AND (@PASADAS = 0)) BEGIN '
      'select p.sup_rnc RNC_Cedula,'
      'case when len(rtrim(p.sup_rnc)) = 9 then 1 else 2 end tipo_id,'
      't.tip_nombre Tipo_Bienes_Servicios, f.ncf NCF,'
      
        '(SELECT top 1 ncr_ncf_modifica FROM NotasCreditoCompra WHERE emp' +
        '_codigo = F.emp_codigo AND fac_numero = F.fac_numero) NCF_MODIF,'
      
        'CASE WHEN MONTH(F.fac_fecha)<10 THEN RTRIM(YEAR(F.fac_fecha))+'#39'0' +
        #39'+RTRIM(MONTH(F.FAC_FECHA)) ELSE'
      
        'RTRIM(YEAR(F.fac_fecha))+RTRIM(MONTH(F.FAC_FECHA)) END Fecha_Com' +
        'prob,'
      'day(f.fac_fecha) as Dia_Comprob,'
      
        '(SELECT top 1 CASE WHEN MONTH(B.che_fecha)<10 THEN RTRIM(YEAR(B.' +
        'che_fecha))+'#39'0'#39'+RTRIM(MONTH(B.che_fecha)) ELSE'
      'RTRIM(YEAR(B.che_fecha))+RTRIM(MONTH(B.che_fecha)) END'
      'FROM Det_ChequeFacturas A'
      
        'INNER JOIN Cheques B ON A.che_numero=B.che_numero AND A.emp_codi' +
        'go=B.emp_codigo'
      
        'WHERE A.emp_codigo = F.emp_codigo AND A.fac_numero = F.fac_numer' +
        'o) FechaPag,'
      '(SELECT top 1 day(b.che_fecha) FROM Det_ChequeFacturas A'
      
        'INNER JOIN Cheques B ON A.che_numero=B.che_numero AND A.emp_codi' +
        'go=B.emp_codigo'
      
        'WHERE A.emp_codigo = F.emp_codigo AND A.fac_numero = F.fac_numer' +
        'o) diaPago,'
      
        'f.fac_servicios Monto_Servicios, f.fac_total-f.fac_servicios Mon' +
        'to_Bienes,'
      
        'f.fac_total Total_Facturado, f.fac_itbis Itbis_Facturado, isnull' +
        '(f.fac_retencion,0) as Itbis_Retenido,'
      
        '0 itbis_proporc, 0 Itbis_Costo, f.fac_itbis Itbis_Adelantar, 0 I' +
        'tbis_Percibido_Compras,'
      
        'isnull(R.ret_nombre,'#39#39') Tipo_Retencion, isnull(f.fac_retencion_i' +
        'sr,0) as monto_ret_renta,'
      
        '0 ISR_Percib_Compras, f.fac_selectivo Imp_Sel_Consumo, 0 Otros_I' +
        'mpuesto_Tasa, f.fac_proplegal propina_legal,'
      #39'04 - COMPRA A CREDITO'#39' FormaPago'
      'from provfacturas f'
      
        'left join Tipo_Bienes_Servicios t on (f.tip_codigo = t.tip_codig' +
        'o)'
      
        'inner join proveedores p on f.emp_codigo=p.emp_codigo and f.sup_' +
        'codigo = p.sup_codigo and f.emp_codigo=p.emp_codigo'
      'left join Retenciones R on f.Tipo_Ret_Codigo = R.ret_codigo'
      
        'where p.emp_codigo = @emp and f.fac_total > 0 and p.sup_rnc is n' +
        'ot null'
      
        'and (f.ncf is not null or f.ncf_fijo is not null) and isnull(f.t' +
        'ip_codigo,0) > 0 AND'
      
        'f.emp_codigo = @emp and year(f.fac_fecha) = @ANO and month(f.fac' +
        '_fecha) = @MES'
      'order by t.tip_nombre, f.fac_fecha, f.sup_codigo'
      'END'
      ''
      'IF ((@ORDER = 3) AND (@PASADAS = 0)) BEGIN '
      'select p.sup_rnc RNC_Cedula,'
      'case when len(rtrim(p.sup_rnc)) = 9 then 1 else 2 end tipo_id,'
      't.tip_nombre Tipo_Bienes_Servicios, f.ncf NCF,'
      
        '(SELECT top 1 ncr_ncf_modifica FROM NotasCreditoCompra WHERE emp' +
        '_codigo = F.emp_codigo AND fac_numero = F.fac_numero) NCF_MODIF,'
      
        'CASE WHEN MONTH(F.fac_fecha)<10 THEN RTRIM(YEAR(F.fac_fecha))+'#39'0' +
        #39'+RTRIM(MONTH(F.FAC_FECHA)) ELSE'
      
        'RTRIM(YEAR(F.fac_fecha))+RTRIM(MONTH(F.FAC_FECHA)) END Fecha_Com' +
        'prob,'
      'day(f.fac_fecha) as Dia_Comprob,'
      
        '(SELECT top 1 CASE WHEN MONTH(B.che_fecha)<10 THEN RTRIM(YEAR(B.' +
        'che_fecha))+'#39'0'#39'+RTRIM(MONTH(B.che_fecha)) ELSE'
      'RTRIM(YEAR(B.che_fecha))+RTRIM(MONTH(B.che_fecha)) END'
      'FROM Det_ChequeFacturas A'
      
        'INNER JOIN Cheques B ON A.che_numero=B.che_numero AND A.emp_codi' +
        'go=B.emp_codigo'
      
        'WHERE A.emp_codigo = F.emp_codigo AND A.fac_numero = F.fac_numer' +
        'o) FechaPag,'
      '(SELECT top 1 day(b.che_fecha) FROM Det_ChequeFacturas A'
      
        'INNER JOIN Cheques B ON A.che_numero=B.che_numero AND A.emp_codi' +
        'go=B.emp_codigo'
      
        'WHERE A.emp_codigo = F.emp_codigo AND A.fac_numero = F.fac_numer' +
        'o) diaPago,'
      
        'f.fac_servicios Monto_Servicios, f.fac_total-f.fac_servicios Mon' +
        'to_Bienes,'
      
        'f.fac_total Total_Facturado, f.fac_itbis Itbis_Facturado, isnull' +
        '(f.fac_retencion,0) as Itbis_Retenido,'
      
        '0 itbis_proporc, 0 Itbis_Costo, f.fac_itbis Itbis_Adelantar, 0 I' +
        'tbis_Percibido_Compras,'
      
        'isnull(R.ret_nombre,'#39#39') Tipo_Retencion, isnull(f.fac_retencion_i' +
        'sr,0) as monto_ret_renta,'
      
        '0 ISR_Percib_Compras, f.fac_selectivo Imp_Sel_Consumo, 0 Otros_I' +
        'mpuesto_Tasa, f.fac_proplegal propina_legal,'
      #39'04 - COMPRA A CREDITO'#39' FormaPago'
      'from provfacturas f'
      
        'left join Tipo_Bienes_Servicios t on (f.tip_codigo = t.tip_codig' +
        'o)'
      
        'inner join proveedores p on f.emp_codigo=p.emp_codigo and f.sup_' +
        'codigo = p.sup_codigo and f.emp_codigo=p.emp_codigo'
      'left join Retenciones R on f.Tipo_Ret_Codigo = R.ret_codigo'
      
        'where p.emp_codigo = @emp and f.fac_total > 0 and p.sup_rnc is n' +
        'ot null'
      
        'and (f.ncf is not null or f.ncf_fijo is not null) and isnull(f.t' +
        'ip_codigo,0) > 0 AND'
      
        'f.emp_codigo = @emp and year(f.fac_fecha) = @ANO and month(f.fac' +
        '_fecha) = @MES'
      'order by f.fac_fecha, t.tip_nombre, f.sup_codigo'
      'END'
      ''
      '--SIN PASAR AL 606'
      'IF ((@ORDER = 1) AND (@PASADAS = 1)) BEGIN '
      'select p.sup_rnc RNC_Cedula,'
      'case when len(rtrim(p.sup_rnc)) = 9 then 1 else 2 end tipo_id,'
      't.tip_nombre Tipo_Bienes_Servicios, f.ncf NCF,'
      
        '(SELECT top 1 ncr_ncf_modifica FROM NotasCreditoCompra WHERE emp' +
        '_codigo = F.emp_codigo AND fac_numero = F.fac_numero) NCF_MODIF,'
      
        'CASE WHEN MONTH(F.fac_fecha)<10 THEN RTRIM(YEAR(F.fac_fecha))+'#39'0' +
        #39'+RTRIM(MONTH(F.FAC_FECHA)) ELSE'
      
        'RTRIM(YEAR(F.fac_fecha))+RTRIM(MONTH(F.FAC_FECHA)) END Fecha_Com' +
        'prob,'
      'day(f.fac_fecha) as Dia_Comprob,'
      
        '(SELECT top 1 CASE WHEN MONTH(B.che_fecha)<10 THEN RTRIM(YEAR(B.' +
        'che_fecha))+'#39'0'#39'+RTRIM(MONTH(B.che_fecha)) ELSE'
      'RTRIM(YEAR(B.che_fecha))+RTRIM(MONTH(B.che_fecha)) END'
      'FROM Det_ChequeFacturas A'
      
        'INNER JOIN Cheques B ON A.che_numero=B.che_numero AND A.emp_codi' +
        'go=B.emp_codigo'
      
        'WHERE A.emp_codigo = F.emp_codigo AND A.fac_numero = F.fac_numer' +
        'o) FechaPag,'
      '(SELECT top 1 day(b.che_fecha) FROM Det_ChequeFacturas A'
      
        'INNER JOIN Cheques B ON A.che_numero=B.che_numero AND A.emp_codi' +
        'go=B.emp_codigo'
      
        'WHERE A.emp_codigo = F.emp_codigo AND A.fac_numero = F.fac_numer' +
        'o) diaPago,'
      
        'f.fac_servicios Monto_Servicios, f.fac_total-f.fac_servicios Mon' +
        'to_Bienes,'
      
        'f.fac_total Total_Facturado, f.fac_itbis Itbis_Facturado, isnull' +
        '(f.fac_retencion,0) as Itbis_Retenido,'
      
        '0 itbis_proporc, 0 Itbis_Costo, f.fac_itbis Itbis_Adelantar, 0 I' +
        'tbis_Percibido_Compras,'
      
        'isnull(R.ret_nombre,'#39#39') Tipo_Retencion, isnull(f.fac_retencion_i' +
        'sr,0) as monto_ret_renta,'
      
        '0 ISR_Percib_Compras, f.fac_selectivo Imp_Sel_Consumo, 0 Otros_I' +
        'mpuesto_Tasa, f.fac_proplegal propina_legal,'
      #39'04 - COMPRA A CREDITO'#39' FormaPago'
      'from provfacturas f'
      
        'left join Tipo_Bienes_Servicios t on (f.tip_codigo = t.tip_codig' +
        'o)'
      
        'inner join proveedores p on f.emp_codigo=p.emp_codigo and f.sup_' +
        'codigo = p.sup_codigo and f.emp_codigo=p.emp_codigo'
      'left join Retenciones R on f.Tipo_Ret_Codigo = R.ret_codigo'
      
        'where p.emp_codigo = @emp and f.fac_total > 0 and p.sup_rnc is n' +
        'ot null'
      
        'and (f.ncf is not null or f.ncf_fijo is not null) and isnull(f.t' +
        'ip_codigo,0) > 0 AND'
      
        'f.emp_codigo = @emp and year(f.fac_fecha) = @ANO and month(f.fac' +
        '_fecha) = @MES'
      'AND F.Pasadas_606 IS NULL'
      
        'order by substring(f.ncf,1,3), cast(substring(f.ncf,4,8) as int)' +
        ', t.tip_nombre, f.fac_fecha, f.sup_codigo'
      'END'
      ''
      'IF ((@ORDER = 2) AND (@PASADAS = 1)) BEGIN '
      'select p.sup_rnc RNC_Cedula,'
      'case when len(rtrim(p.sup_rnc)) = 9 then 1 else 2 end tipo_id,'
      't.tip_nombre Tipo_Bienes_Servicios, f.ncf NCF,'
      
        '(SELECT top 1 ncr_ncf_modifica FROM NotasCreditoCompra WHERE emp' +
        '_codigo = F.emp_codigo AND fac_numero = F.fac_numero) NCF_MODIF,'
      
        'CASE WHEN MONTH(F.fac_fecha)<10 THEN RTRIM(YEAR(F.fac_fecha))+'#39'0' +
        #39'+RTRIM(MONTH(F.FAC_FECHA)) ELSE'
      
        'RTRIM(YEAR(F.fac_fecha))+RTRIM(MONTH(F.FAC_FECHA)) END Fecha_Com' +
        'prob,'
      'day(f.fac_fecha) as Dia_Comprob,'
      
        '(SELECT top 1 CASE WHEN MONTH(B.che_fecha)<10 THEN RTRIM(YEAR(B.' +
        'che_fecha))+'#39'0'#39'+RTRIM(MONTH(B.che_fecha)) ELSE'
      'RTRIM(YEAR(B.che_fecha))+RTRIM(MONTH(B.che_fecha)) END'
      'FROM Det_ChequeFacturas A'
      
        'INNER JOIN Cheques B ON A.che_numero=B.che_numero AND A.emp_codi' +
        'go=B.emp_codigo'
      
        'WHERE A.emp_codigo = F.emp_codigo AND A.fac_numero = F.fac_numer' +
        'o) FechaPag,'
      '(SELECT top 1 day(b.che_fecha) FROM Det_ChequeFacturas A'
      
        'INNER JOIN Cheques B ON A.che_numero=B.che_numero AND A.emp_codi' +
        'go=B.emp_codigo'
      
        'WHERE A.emp_codigo = F.emp_codigo AND A.fac_numero = F.fac_numer' +
        'o) diaPago,'
      
        'f.fac_servicios Monto_Servicios, f.fac_total-f.fac_servicios Mon' +
        'to_Bienes,'
      
        'f.fac_total Total_Facturado, f.fac_itbis Itbis_Facturado, isnull' +
        '(f.fac_retencion,0) as Itbis_Retenido,'
      
        '0 itbis_proporc, 0 Itbis_Costo, f.fac_itbis Itbis_Adelantar, 0 I' +
        'tbis_Percibido_Compras,'
      
        'isnull(R.ret_nombre,'#39#39') Tipo_Retencion, isnull(f.fac_retencion_i' +
        'sr,0) as monto_ret_renta,'
      
        '0 ISR_Percib_Compras, f.fac_selectivo Imp_Sel_Consumo, 0 Otros_I' +
        'mpuesto_Tasa, f.fac_proplegal propina_legal,'
      #39'04 - COMPRA A CREDITO'#39' FormaPago'
      'from provfacturas f'
      
        'left join Tipo_Bienes_Servicios t on (f.tip_codigo = t.tip_codig' +
        'o)'
      
        'inner join proveedores p on f.emp_codigo=p.emp_codigo and f.sup_' +
        'codigo = p.sup_codigo and f.emp_codigo=p.emp_codigo'
      'left join Retenciones R on f.Tipo_Ret_Codigo = R.ret_codigo'
      
        'where p.emp_codigo = @emp and f.fac_total > 0 and p.sup_rnc is n' +
        'ot null'
      
        'and (f.ncf is not null or f.ncf_fijo is not null) and isnull(f.t' +
        'ip_codigo,0) > 0 AND'
      
        'f.emp_codigo = @emp and year(f.fac_fecha) = @ANO and month(f.fac' +
        '_fecha) = @MES'
      'AND F.Pasadas_606 IS NULL'
      'order by t.tip_nombre, f.fac_fecha, f.sup_codigo'
      'END'
      ''
      'IF ((@ORDER = 3) AND (@PASADAS = 1)) BEGIN '
      'select p.sup_rnc RNC_Cedula,'
      'case when len(rtrim(p.sup_rnc)) = 9 then 1 else 2 end tipo_id,'
      't.tip_nombre Tipo_Bienes_Servicios, f.ncf NCF,'
      
        '(SELECT top 1 ncr_ncf_modifica FROM NotasCreditoCompra WHERE emp' +
        '_codigo = F.emp_codigo AND fac_numero = F.fac_numero) NCF_MODIF,'
      
        'CASE WHEN MONTH(F.fac_fecha)<10 THEN RTRIM(YEAR(F.fac_fecha))+'#39'0' +
        #39'+RTRIM(MONTH(F.FAC_FECHA)) ELSE'
      
        'RTRIM(YEAR(F.fac_fecha))+RTRIM(MONTH(F.FAC_FECHA)) END Fecha_Com' +
        'prob,'
      'day(f.fac_fecha) as Dia_Comprob,'
      
        '(SELECT top 1 CASE WHEN MONTH(B.che_fecha)<10 THEN RTRIM(YEAR(B.' +
        'che_fecha))+'#39'0'#39'+RTRIM(MONTH(B.che_fecha)) ELSE'
      'RTRIM(YEAR(B.che_fecha))+RTRIM(MONTH(B.che_fecha)) END'
      'FROM Det_ChequeFacturas A'
      
        'INNER JOIN Cheques B ON A.che_numero=B.che_numero AND A.emp_codi' +
        'go=B.emp_codigo'
      
        'WHERE A.emp_codigo = F.emp_codigo AND A.fac_numero = F.fac_numer' +
        'o) FechaPag,'
      '(SELECT top 1 day(b.che_fecha) FROM Det_ChequeFacturas A'
      
        'INNER JOIN Cheques B ON A.che_numero=B.che_numero AND A.emp_codi' +
        'go=B.emp_codigo'
      
        'WHERE A.emp_codigo = F.emp_codigo AND A.fac_numero = F.fac_numer' +
        'o) diaPago,'
      
        'f.fac_servicios Monto_Servicios, f.fac_total-f.fac_servicios Mon' +
        'to_Bienes,'
      
        'f.fac_total Total_Facturado, f.fac_itbis Itbis_Facturado, isnull' +
        '(f.fac_retencion,0) as Itbis_Retenido,'
      
        '0 itbis_proporc, 0 Itbis_Costo, f.fac_itbis Itbis_Adelantar, 0 I' +
        'tbis_Percibido_Compras,'
      
        'isnull(R.ret_nombre,'#39#39') Tipo_Retencion, isnull(f.fac_retencion_i' +
        'sr,0) as monto_ret_renta,'
      
        '0 ISR_Percib_Compras, f.fac_selectivo Imp_Sel_Consumo, 0 Otros_I' +
        'mpuesto_Tasa, f.fac_proplegal propina_legal,'
      #39'04 - COMPRA A CREDITO'#39' FormaPago'
      'from provfacturas f'
      
        'left join Tipo_Bienes_Servicios t on (f.tip_codigo = t.tip_codig' +
        'o)'
      
        'inner join proveedores p on f.emp_codigo=p.emp_codigo and f.sup_' +
        'codigo = p.sup_codigo and f.emp_codigo=p.emp_codigo'
      'left join Retenciones R on f.Tipo_Ret_Codigo = R.ret_codigo'
      
        'where p.emp_codigo = @emp and f.fac_total > 0 and p.sup_rnc is n' +
        'ot null'
      
        'and (f.ncf is not null or f.ncf_fijo is not null) and isnull(f.t' +
        'ip_codigo,0) > 0 AND'
      
        'f.emp_codigo = @emp and year(f.fac_fecha) = @ANO and month(f.fac' +
        '_fecha) = @MES'
      'AND F.Pasadas_606 IS NULL'
      'order by f.fac_fecha, t.tip_nombre, f.sup_codigo'
      'END'
      ''
      ''
      '--PASADAS AL 606'
      'IF ((@ORDER = 1) AND (@PASADAS = 2)) BEGIN '
      'select p.sup_rnc RNC_Cedula,'
      'case when len(rtrim(p.sup_rnc)) = 9 then 1 else 2 end tipo_id,'
      't.tip_nombre Tipo_Bienes_Servicios, f.ncf NCF,'
      
        '(SELECT top 1 ncr_ncf_modifica FROM NotasCreditoCompra WHERE emp' +
        '_codigo = F.emp_codigo AND fac_numero = F.fac_numero) NCF_MODIF,'
      
        'CASE WHEN MONTH(F.fac_fecha)<10 THEN RTRIM(YEAR(F.fac_fecha))+'#39'0' +
        #39'+RTRIM(MONTH(F.FAC_FECHA)) ELSE'
      
        'RTRIM(YEAR(F.fac_fecha))+RTRIM(MONTH(F.FAC_FECHA)) END Fecha_Com' +
        'prob,'
      'day(f.fac_fecha) as Dia_Comprob,'
      
        '(SELECT top 1 CASE WHEN MONTH(B.che_fecha)<10 THEN RTRIM(YEAR(B.' +
        'che_fecha))+'#39'0'#39'+RTRIM(MONTH(B.che_fecha)) ELSE'
      'RTRIM(YEAR(B.che_fecha))+RTRIM(MONTH(B.che_fecha)) END'
      'FROM Det_ChequeFacturas A'
      
        'INNER JOIN Cheques B ON A.che_numero=B.che_numero AND A.emp_codi' +
        'go=B.emp_codigo'
      
        'WHERE A.emp_codigo = F.emp_codigo AND A.fac_numero = F.fac_numer' +
        'o) FechaPag,'
      '(SELECT top 1 day(b.che_fecha) FROM Det_ChequeFacturas A'
      
        'INNER JOIN Cheques B ON A.che_numero=B.che_numero AND A.emp_codi' +
        'go=B.emp_codigo'
      
        'WHERE A.emp_codigo = F.emp_codigo AND A.fac_numero = F.fac_numer' +
        'o) diaPago,'
      
        'f.fac_servicios Monto_Servicios, f.fac_total-f.fac_servicios Mon' +
        'to_Bienes,'
      
        'f.fac_total Total_Facturado, f.fac_itbis Itbis_Facturado, isnull' +
        '(f.fac_retencion,0) as Itbis_Retenido,'
      
        '0 itbis_proporc, 0 Itbis_Costo, f.fac_itbis Itbis_Adelantar, 0 I' +
        'tbis_Percibido_Compras,'
      
        'isnull(R.ret_nombre,'#39#39') Tipo_Retencion, isnull(f.fac_retencion_i' +
        'sr,0) as monto_ret_renta,'
      
        '0 ISR_Percib_Compras, f.fac_selectivo Imp_Sel_Consumo, 0 Otros_I' +
        'mpuesto_Tasa, f.fac_proplegal propina_legal,'
      #39'04 - COMPRA A CREDITO'#39' FormaPago'
      'from provfacturas f'
      
        'left join Tipo_Bienes_Servicios t on (f.tip_codigo = t.tip_codig' +
        'o)'
      
        'inner join proveedores p on f.emp_codigo=p.emp_codigo and f.sup_' +
        'codigo = p.sup_codigo and f.emp_codigo=p.emp_codigo'
      'left join Retenciones R on f.Tipo_Ret_Codigo = R.ret_codigo'
      
        'where p.emp_codigo = @emp and f.fac_total > 0 and p.sup_rnc is n' +
        'ot null'
      
        'and (f.ncf is not null or f.ncf_fijo is not null) and isnull(f.t' +
        'ip_codigo,0) > 0 AND'
      
        'f.emp_codigo = @emp and year(f.fac_fecha) = @ANO and month(f.fac' +
        '_fecha) = @MES'
      'AND F.Pasadas_606 IS NOT NULL'
      
        'order by substring(f.ncf,1,3), cast(substring(f.ncf,4,8) as int)' +
        ', t.tip_nombre, f.fac_fecha, f.sup_codigo'
      'END'
      ''
      'IF ((@ORDER = 2) AND (@PASADAS = 2)) BEGIN '
      'select p.sup_rnc RNC_Cedula,'
      'case when len(rtrim(p.sup_rnc)) = 9 then 1 else 2 end tipo_id,'
      't.tip_nombre Tipo_Bienes_Servicios, f.ncf NCF,'
      
        '(SELECT top 1 ncr_ncf_modifica FROM NotasCreditoCompra WHERE emp' +
        '_codigo = F.emp_codigo AND fac_numero = F.fac_numero) NCF_MODIF,'
      
        'CASE WHEN MONTH(F.fac_fecha)<10 THEN RTRIM(YEAR(F.fac_fecha))+'#39'0' +
        #39'+RTRIM(MONTH(F.FAC_FECHA)) ELSE'
      
        'RTRIM(YEAR(F.fac_fecha))+RTRIM(MONTH(F.FAC_FECHA)) END Fecha_Com' +
        'prob,'
      'day(f.fac_fecha) as Dia_Comprob,'
      
        '(SELECT top 1 CASE WHEN MONTH(B.che_fecha)<10 THEN RTRIM(YEAR(B.' +
        'che_fecha))+'#39'0'#39'+RTRIM(MONTH(B.che_fecha)) ELSE'
      'RTRIM(YEAR(B.che_fecha))+RTRIM(MONTH(B.che_fecha)) END'
      'FROM Det_ChequeFacturas A'
      
        'INNER JOIN Cheques B ON A.che_numero=B.che_numero AND A.emp_codi' +
        'go=B.emp_codigo'
      
        'WHERE A.emp_codigo = F.emp_codigo AND A.fac_numero = F.fac_numer' +
        'o) FechaPag,'
      '(SELECT top 1 day(b.che_fecha) FROM Det_ChequeFacturas A'
      
        'INNER JOIN Cheques B ON A.che_numero=B.che_numero AND A.emp_codi' +
        'go=B.emp_codigo'
      
        'WHERE A.emp_codigo = F.emp_codigo AND A.fac_numero = F.fac_numer' +
        'o) diaPago,'
      
        'f.fac_servicios Monto_Servicios, f.fac_total-f.fac_servicios Mon' +
        'to_Bienes,'
      
        'f.fac_total Total_Facturado, f.fac_itbis Itbis_Facturado, isnull' +
        '(f.fac_retencion,0) as Itbis_Retenido,'
      
        '0 itbis_proporc, 0 Itbis_Costo, f.fac_itbis Itbis_Adelantar, 0 I' +
        'tbis_Percibido_Compras,'
      
        'isnull(R.ret_nombre,'#39#39') Tipo_Retencion, isnull(f.fac_retencion_i' +
        'sr,0) as monto_ret_renta,'
      
        '0 ISR_Percib_Compras, f.fac_selectivo Imp_Sel_Consumo, 0 Otros_I' +
        'mpuesto_Tasa, f.fac_proplegal propina_legal,'
      #39'04 - COMPRA A CREDITO'#39' FormaPago'
      'from provfacturas f'
      
        'left join Tipo_Bienes_Servicios t on (f.tip_codigo = t.tip_codig' +
        'o)'
      
        'inner join proveedores p on f.emp_codigo=p.emp_codigo and f.sup_' +
        'codigo = p.sup_codigo and f.emp_codigo=p.emp_codigo'
      'left join Retenciones R on f.Tipo_Ret_Codigo = R.ret_codigo'
      
        'where p.emp_codigo = @emp and f.fac_total > 0 and p.sup_rnc is n' +
        'ot null'
      
        'and (f.ncf is not null or f.ncf_fijo is not null) and isnull(f.t' +
        'ip_codigo,0) > 0 AND'
      
        'f.emp_codigo = @emp and year(f.fac_fecha) = @ANO and month(f.fac' +
        '_fecha) = @MES'
      'AND F.Pasadas_606 IS NOT NULL'
      'order by t.tip_nombre, f.fac_fecha, f.sup_codigo'
      'END'
      ''
      'IF ((@ORDER = 3) AND (@PASADAS = 2)) BEGIN '
      'select p.sup_rnc RNC_Cedula,'
      'case when len(rtrim(p.sup_rnc)) = 9 then 1 else 2 end tipo_id,'
      't.tip_nombre Tipo_Bienes_Servicios, f.ncf NCF,'
      
        '(SELECT top 1 ncr_ncf_modifica FROM NotasCreditoCompra WHERE emp' +
        '_codigo = F.emp_codigo AND fac_numero = F.fac_numero) NCF_MODIF,'
      
        'CASE WHEN MONTH(F.fac_fecha)<10 THEN RTRIM(YEAR(F.fac_fecha))+'#39'0' +
        #39'+RTRIM(MONTH(F.FAC_FECHA)) ELSE'
      
        'RTRIM(YEAR(F.fac_fecha))+RTRIM(MONTH(F.FAC_FECHA)) END Fecha_Com' +
        'prob,'
      'day(f.fac_fecha) as Dia_Comprob,'
      
        '(SELECT top 1 CASE WHEN MONTH(B.che_fecha)<10 THEN RTRIM(YEAR(B.' +
        'che_fecha))+'#39'0'#39'+RTRIM(MONTH(B.che_fecha)) ELSE'
      'RTRIM(YEAR(B.che_fecha))+RTRIM(MONTH(B.che_fecha)) END'
      'FROM Det_ChequeFacturas A'
      
        'INNER JOIN Cheques B ON A.che_numero=B.che_numero AND A.emp_codi' +
        'go=B.emp_codigo'
      
        'WHERE A.emp_codigo = F.emp_codigo AND A.fac_numero = F.fac_numer' +
        'o) FechaPag,'
      '(SELECT top 1 day(b.che_fecha) FROM Det_ChequeFacturas A'
      
        'INNER JOIN Cheques B ON A.che_numero=B.che_numero AND A.emp_codi' +
        'go=B.emp_codigo'
      
        'WHERE A.emp_codigo = F.emp_codigo AND A.fac_numero = F.fac_numer' +
        'o) diaPago,'
      
        'f.fac_servicios Monto_Servicios, f.fac_total-f.fac_servicios Mon' +
        'to_Bienes,'
      
        'f.fac_total Total_Facturado, f.fac_itbis Itbis_Facturado, isnull' +
        '(f.fac_retencion,0) as Itbis_Retenido,'
      
        '0 itbis_proporc, 0 Itbis_Costo, f.fac_itbis Itbis_Adelantar, 0 I' +
        'tbis_Percibido_Compras,'
      
        'isnull(R.ret_nombre,'#39#39') Tipo_Retencion, isnull(f.fac_retencion_i' +
        'sr,0) as monto_ret_renta,'
      
        '0 ISR_Percib_Compras, f.fac_selectivo Imp_Sel_Consumo, 0 Otros_I' +
        'mpuesto_Tasa, f.fac_proplegal propina_legal,'
      #39'04 - COMPRA A CREDITO'#39' FormaPago'
      'from provfacturas f'
      
        'left join Tipo_Bienes_Servicios t on (f.tip_codigo = t.tip_codig' +
        'o)'
      
        'inner join proveedores p on f.emp_codigo=p.emp_codigo and f.sup_' +
        'codigo = p.sup_codigo and f.emp_codigo=p.emp_codigo'
      'left join Retenciones R on f.Tipo_Ret_Codigo = R.ret_codigo'
      
        'where p.emp_codigo = @emp and f.fac_total > 0 and p.sup_rnc is n' +
        'ot null'
      
        'and (f.ncf is not null or f.ncf_fijo is not null) and isnull(f.t' +
        'ip_codigo,0) > 0 AND'
      
        'f.emp_codigo = @emp and year(f.fac_fecha) = @ANO and month(f.fac' +
        '_fecha) = @MES'
      'AND F.Pasadas_606 IS NOT NULL'
      'order by f.fac_fecha, t.tip_nombre, f.sup_codigo'
      'END')
    Left = 152
    Top = 208
  end
  object ExcelApplication1: TExcelApplication
    AutoConnect = True
    ConnectKind = ckRunningOrNew
    AutoQuit = False
    Left = 376
    Top = 216
  end
end
