unit RVENTA131;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, DB, IBCustomDataSet,
  IBQuery, ADODB, Math, QExport, QExportRTF, jpeg, qrpctrls, qrFramelines;

type
  TRCotizacionCaceresEquipos = class(TQuickRep)
    QRBand1: TQRBand;
    lbFactura: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;                   
    QRSysData1: TQRSysData;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRLabel28: TQRLabel;
    lbCliente: TQRDBText;
    QRBand2: TQRBand;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRBand3: TQRBand;
    lbProd: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    dsCotizacion: TDataSource;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    lbmoneda: TQRLabel;
    dsDetalle: TDataSource;
    QRLabel12: TQRLabel;
    QRLabel52: TQRLabel;
    QRDBText29: TQRDBText;
    QRLabel53: TQRLabel;
    QRDBText24: TQRDBText;
    QRDBText30: TQRDBText;
    QRLabel36: TQRLabel;
    lboferta: TQRLabel;
    dboferta: TQRDBText;
    QRLabel38: TQRLabel;
    QRDBText31: TQRDBText;
    QRLabel55: TQRLabel;
    QRLabel56: TQRLabel;
    QRPDFFilter1: TQRPDFFilter;
    QExportRTF1: TQExportRTF;
    QRPBand1: TQRPBand;
    QRImage2: TQRImage;
    QRLabel46: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel22: TQRLabel;
    QRShape9: TQRShape;
    lbcajero: TQRLabel;
    QRShape1: TQRShape;
    QRShape10: TQRShape;
    lbReimpresion: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel40: TQRLabel;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRLabel41: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    lbmoneda2: TQRLabel;
    QRLabel42: TQRLabel;
    QRDBText18: TQRDBText;
    qrMemoMsg: TQRMemo;
    QRDBRichText1: TQRDBRichText;
    lbSucursal: TQRLabel;
    QRBand4: TQRBand;
    QRLabel1: TQRLabel;
    ChildBand1: TQRChildBand;
    QRLabel7: TQRLabel;
    lbVendedor: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel15: TQRLabel;
    lbCondicion: TQRLabel;
    QRLabel3: TQRLabel;
    lbProds: TQRLabel;
    ChildBand3: TQRChildBand;
    QRLabel51: TQRLabel;
    lbenvio_telefono: TQRLabel;
    lbenvio_nombre: TQRLabel;
    lbenvio_ciudad: TQRLabel;
    lbrecibe_telefono: TQRLabel;
    lbrecibe_nombre: TQRLabel;
    lbrecibe_ciudad: TQRLabel;
    QRLabel60: TQRLabel;
    QRLabel54: TQRLabel;
    lbenvio_descripcion: TQRLabel;
    QCotizacion: TADOQuery;
    QCotizacionCLI_CODIGO: TIntegerField;
    QCotizacionCLI_REFERENCIA: TIBStringField;
    QCotizacionCOT_DIRECCION: TIBStringField;
    QCotizacionCOT_FAX: TIBStringField;
    QCotizacionCOT_FECHA: TDateTimeField;
    QCotizacionCOT_ITBIS: TFloatField;
    QCotizacionCOT_LOCALIDAD: TIBStringField;
    QCotizacionCOT_NOMBRE: TIBStringField;
    QCotizacionCOT_NUMERO: TIntegerField;
    QCotizacionCOT_STATUS: TIBStringField;
    QCotizacionCOT_TELEFONO: TIBStringField;
    QCotizacionEMP_CODIGO: TIntegerField;
    QCotizacionUSU_CODIGO: TIntegerField;
    QCotizacionVEN_CODIGO: TIntegerField;
    QCotizacionCOT_DESCUENTO: TBCDField;
    QCotizacioncot_tasa: TBCDField;
    QCotizacionmon_codigo: TIntegerField;
    QCotizacioncpa_codigo: TIntegerField;
    QCotizacioncot_validez: TIntegerField;
    QCotizacioncot_tiempo_entrega: TStringField;
    QCotizacioncot_proyecto: TStringField;
    QCotizacioncot_contacto: TStringField;
    QCotizacioncot_rnc: TStringField;
    QCotizacioncot_solicitud: TIntegerField;
    QCotizacioncot_nota: TMemoField;
    QCotizacionTDescuento: TFloatField;
    QCotizacionTITBIS: TFloatField;
    QCotizacionCOT_TOTALGRAL: TBCDField;
    QCotizacionSUBTOTAL: TCurrencyField;
    QDetalle: TADOQuery;
    QDetalleCOT_NUMERO: TIntegerField;
    QDetalleDET_CANTIDAD: TFloatField;
    QDetalleDET_CONITBIS: TIBStringField;
    QDetalleDET_ITBIS: TFloatField;
    QDetalleDET_PRECIO: TFloatField;
    QDetalleDET_SECUENCIA: TIntegerField;
    QDetalleEMP_CODIGO: TIntegerField;
    QDetallePRO_BARRA: TIBStringField;
    QDetallePRO_CODIGO: TIntegerField;
    QDetallePRO_NOMBRE: TIBStringField;
    QDetallePRO_RFABRIC: TIBStringField;
    QDetallePRO_RORIGINAL: TIBStringField;
    QDetalleCalcItbis: TFloatField;
    QDetalleCalcDesc: TFloatField;
    QDetallePrecioItbis: TFloatField;
    QDetalleValor: TFloatField;
    QDetalleDET_NOTA: TMemoField;
    QDetalleDET_DESCUENTO: TBCDField;
    QDetallePrecioTasa: TFloatField;
    QDetallepro_unidad_medida: TStringField;
    QDetallepro_comentario: TMemoField;
    QCotizacionsuc_nombre: TStringField;
    QCotizacionsuc_codigo: TIntegerField;
    QRDBText1: TQRDBText;
    QRMemo1: TQRMemo;
    QRMemo4: TQRMemo;
    QRMemo5: TQRMemo;
    QRMemo9: TQRMemo;
    QRMemo8: TQRMemo;
    QRMemo7: TQRMemo;
    QRMemo2: TQRMemo;
    QRMemo3: TQRMemo;
    QRMemo6: TQRMemo;
    ChildBand2: TQRChildBand;
    QRRichText1: TQRRichText;
    QRLabel2: TQRLabel;
    QRLabel31: TQRLabel;
    QRDBText2: TQRDBText;
    QCotizacionRNC: TStringField;
    QRLabel29: TQRLabel;
    QRLabel33: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel35: TQRLabel;
    QRLabel43: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText5: TQRDBText;
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QDetalleCalcFields(DataSet: TDataSet);
    procedure ChildBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand3AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand4BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public
    ActBalance, ImprimeEncaqbezado : String;
    Linea : Integer;
    procedure CorregirError;
  end;

var
  RCotizacionCaceresEquipos: TRCotizacionCaceresEquipos;

implementation

uses SIGMA01;


{$R *.DFM}

procedure TRCotizacionCaceresEquipos.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
  a : integer;
begin
  {if (not QDetalleMedidorID.IsNull) or (QDetalleMedidorID.AsInteger > 0) then
  begin
    for a := 0 to QRBand3.ControlCount-1 do
    begin
      if QRBand3.Controls[a].ClassType = TQRDBText then
        (QRBand3.Controls[a] as TQRDBText).Font.Style := (QRBand3.Controls[a] as TQRDBText).Font.Style + [fsbold];
    end;
  end;}
  {if QDetalleDET_CONITBIS.value = 'N' then
     lbItbis.caption := 'E'
  else
     lbItbis.caption := ' ';}

if dboferta.Enabled = False then begin
QRDBText30.Left := 445;
QRDBText11.Left := 393;
QRLabel10.Left:= QRDBText11.Left;
QRDBText10.Width := 289;
end;

if not dboferta.Enabled = False then begin
QRDBText30.Left := 393;
QRDBText11.Left := 320;
QRLabel10.Left:= QRDBText11.Left;
QRDBText10.Width := 217;
end;

end;

procedure TRCotizacionCaceresEquipos.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
var
  a : integer;
  cambiar : TQRLabel;
begin
  if QCotizacionsuc_nombre.Text <> '' then
  lbSucursal.Caption := UpperCase(QCotizacionsuc_nombre.Text) else
  lbSucursal.Caption := UpperCase(DM.QEmpresasEMP_NOMBRE.Text);




  if dm.QParametrospar_inv_unidad_medida.Value = 'True' then
    QRDBText30.DataField := 'pro_unidad_medida';

  if dm.QParametrosIdioma.AsString = 'I' then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select objeto, ingles from Traduccion where modulo = :mod');
    dm.Query1.Parameters.ParamByName('mod').Value := 'RFactura';
    dm.Query1.Open;
    dm.Query1.DisableControls;
    while not dm.Query1.Eof do
    begin
      cambiar := (FindComponent(dm.Query1.FieldByName('objeto').AsString) as TQRLabel);
      cambiar.Caption := dm.Query1.FieldByName('ingles').AsString;
      dm.Query1.Next;
    end;
    dm.Query1.EnableControls;
  end;

  if (dm.QParametrospar_fac_preimpresa.Value = 'True') and
  (dm.QParametrospar_formato_preimpreso.Value = 'QRAgregados') then
  begin
    QRLabel26.Caption := 'PLACA';
    QRLabel27.Caption := 'CHOFER';
    QRDBText21.DataField := 'Placa';
    QRDBText22.DataField := 'Chofer';
    QRDBText30.DataField := 'UnidadMetros';
  end;

  dm.Query1.close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select sum(isnull(det_cantidad,0)) as cant from det_cotizacion');
  dm.Query1.sql.add('where emp_codigo = :emp');
  dm.Query1.sql.add('and cot_numero = :num');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('num').Value := QCotizacionCOT_NUMERO.Value;
  dm.Query1.Open;
  lbProds.Caption := floattostr(dm.Query1.FieldByName('cant').AsFloat);

  dm.Query1.close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select caj_nombre from cajeros');
  dm.Query1.sql.add('where emp_codigo = :emp');
  dm.Query1.sql.add('and caj_codigo = :caj');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('caj').Value := QCotizacionUSU_CODIGO.Value;
  dm.Query1.Open;
  if dm.Query1.RecordCount > 0 then
    lbcajero.Caption := dm.Query1.FieldByName('caj_nombre').AsString
  else
    lbcajero.Caption := '';


  if dm.QParametrospar_inv_unidad_medida.AsString <> 'True' then
  begin
    if (dm.QParametrospar_fac_oferta.Value <> 'True') and (dm.QParametrosPAR_FACMEDIDA.Value <> 'True') then
    begin
      lboferta.Enabled   := False;
      dboferta.Enabled   := False;
      //QRLabel43.Enabled  := False;
      //QRDBText8.Enabled  := False;
      QRDBText30.Enabled := False;
      QRLabel10.Left   := 410;
      QRDBText11.Left  := 420;
      QRDBText10.Width := 305;
    end
    else if (dm.QParametrospar_fac_oferta.Value <> 'True') and (dm.QParametrosPAR_FACMEDIDA.Value = 'True') then
    begin
      lboferta.Enabled   := False;
      dboferta.Enabled   := False;

      {if dm.QParametrospar_visualizar_cant_empaque.Value <> 'True' then
      begin
        //QRLabel43.Enabled  := False;
        //QRDBText8.Enabled  := False;

        QRDBText30.Left := 463;
        QRLabel10.Left  := 410;
        QRDBText11.Left := 410;
        QRDBText10.Width := 305;
      end
      else
      {if dm.QParametrospar_visualizar_cant_empaque.Value = 'True' then
      begin
        //QRDBText8.Left  := 445;
        //QRLabel43.Left  := 448;

        QRDBText30.Left := 410;
        QRDBText11.Left := 355;
        QRLabel10.Left  := 368;
        QRDBText10.Width := 305;
      end;
    end
    else }
    end;
    if (dm.QParametrospar_fac_oferta.Value = 'True') and (dm.QParametrosPAR_FACMEDIDA.Value <> 'True') then
    begin
      //QRDBText8.Enabled  := false;
      //QRLabel43.Enabled  := false;
      QRDBText30.Enabled := false;

      QRLabel10.Left   := 360;
      QRDBText11.Left  := 360;
      QRDBText10.Width := 265;
    end
    else if (dm.QParametrospar_fac_oferta.Value = 'True') and (dm.QParametrosPAR_FACMEDIDA.Value = 'True') then
    begin
      if dm.QParametrospar_visualizar_cant_empaque.Value <> 'True' then
      begin
        //QRLabel43.Enabled  := False;
        //QRDBText8.Enabled  := False;

        QRDBText30.Left := 399;
        QRDBText11.Left := 348;
        QRLabel10.Left  := 350;
        QRDBText10.Width := 280;
      end;
    end;
  end
  else
  begin
    //QRDBText8.Enabled  := false;
    //QRLabel43.Enabled  := false;
    lboferta.Enabled   := False;
    dboferta.Enabled   := False;
    QRDBText30.Left := 465;
    QRDBText11.Left := 410;
    QRLabel10.Left  := 423;
    QRDBText10.Width := 305;
  end;


  if dm.QParametrosPAR_CODIGOCLIENTE.Value = 'I' then
    lbCliente.DataField := 'CLI_CODIGO'
  else
    lbCliente.DataField := 'CLI_REFERENCIA';

  if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'I' then
     lbProd.DataField := 'PRO_CODIGO'
  else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'F' then
     lbProd.DataField := 'PRO_RFABRIC'
  else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'O' then
     lbProd.DataField := 'PRO_RORIGINAL';

  dm.Query1.close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select mon_sigla from moneda');
  dm.Query1.sql.add('where emp_codigo = :emp');
  dm.Query1.sql.add('and mon_codigo = :mon');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('mon').Value := QCotizacionMON_CODIGO.Value;
  dm.Query1.Open;
  lbmoneda.Caption  := dm.Query1.FieldByName('mon_sigla').AsString;
  lbmoneda2.Caption := dm.Query1.FieldByName('mon_sigla').AsString;

  dm.Query1.close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select cpa_nombre from condiciones');
  dm.Query1.sql.add('where emp_codigo = :emp');
  dm.Query1.sql.add('and cpa_codigo = :codigo');
  dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.parambyname('codigo').Value := QCotizacionCPA_CODIGO.value;
  dm.Query1.open;
  lbCondicion.caption := dm.Query1.fieldbyname('cpa_nombre').asstring;

  dm.Query1.close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select ven_nombre, ven_telefono from vendedores');
  dm.Query1.sql.add('where emp_codigo = :emp');
  dm.Query1.sql.add('and ven_codigo = :vend');
  dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.parambyname('vend').Value := QCotizacionVEN_CODIGO.value;
  dm.Query1.open;
  if dm.Query1.fieldbyname('ven_telefono').asstring <> '' then
  lbVendedor.caption := Trim(dm.Query1.fieldbyname('ven_nombre').asstring)+' / '+
                        Trim(dm.Query1.fieldbyname('ven_telefono').asstring) else
  lbVendedor.caption := Trim(dm.Query1.fieldbyname('ven_nombre').asstring);

end;

procedure TRCotizacionCaceresEquipos.QDetalleCalcFields(DataSet: TDataSet);
var
  Venta, NumItbis : Double;
  a : integer;
begin
  if (QDetalleDET_CONITBIS.value = 'S') then
  begin
    NumItbis := RoundTo((QDetalleDET_ITBIS.asfloat/100)+1, -2);
    if dm.QParametrospar_itbisincluido.Value = 'True' then
    begin
      Venta := (QDetalleDET_PRECIO.value * QDetalleDET_CANTIDAD.Value)/NumItbis;
      QDetallePrecioItbis.value := RoundTo((QDetalleDET_PRECIO.value * QDetalleDET_CANTIDAD.Value)/NumItbis, -2);
      QDetalleCalcDesc.value    := RoundTo(((QDetalleDET_PRECIO.value * QDetalleDET_CANTIDAD.Value)/NumItbis * QDetalleDET_DESCUENTO.value)/100, -2);
      QDetalleCalcItbis.value   := RoundTo(((((QDetalleDET_PRECIO.value * QDetalleDET_CANTIDAD.Value)/NumItbis) - QDetalleCalcDesc.value) * QDetalleDET_ITBIS.value) / 100, -2);
      QDetalleValor.value     := (QDetallePrecioItbis.value - QDetalleCalcDesc.value + QDetalleCalcItbis.value);
      QDetalleCalcItbis.value := RoundTo(QDetalleCalcItbis.value, -2);
    end
    else
    begin
      Venta := QDetalleDET_PRECIO.value * QDetalleDET_CANTIDAD.Value;
      QDetallePrecioItbis.value := Venta;
      QDetalleCalcDesc.value    := RoundTo(((QDetalleDET_PRECIO.value * QDetalleDET_CANTIDAD.Value) * QDetalleDET_DESCUENTO.value)/100, -4);
      QDetalleCalcItbis.value := RoundTo((((QDetalleDET_PRECIO.value * QDetalleDET_CANTIDAD.Value) - QDetalleCalcDesc.value)* QDetalleDET_ITBIS.value) / 100, -2);

      QDetalleCalcItbis.value := RoundTo(QDetalleCalcItbis.value, -2);
      QDetalleValor.value     := (QDetallePrecioItbis.value - QDetalleCalcDesc.value + QDetalleCalcItbis.value);
    end;
  end
  else
  begin
    Venta := QDetalleDET_PRECIO.value * QDetalleDET_CANTIDAD.value;
    QDetalleCalcDesc.value    := (Venta * QDetalleDET_DESCUENTO.value)/100;
    QDetallePrecioItbis.value := Venta;
    QDetalleCalcItbis.value   := 0;
    QDetalleValor.value       := (Venta-QDetalleCalcDesc.value);
  end;
end;

procedure TRCotizacionCaceresEquipos.ChildBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
  t : string;
begin
   QRRichText1.Lines.Text := QDetalleDET_NOTA.Value;
  if dm.QParametrospar_inv_imprime_comentario.AsString <> 'True' then
    PrintBand := (trim(QDetalleDET_NOTA.Value) <> '')
  else
    PrintBand := (trim(QDetalleDET_NOTA.Value) <> '') or (trim(QDetallepro_comentario.Value) <> '') ;

  if dm.QParametrospar_inv_imprime_comentario.AsString = 'True' then
  begin
    if trim(QDetallepro_comentario.Value) <> '' then
    begin
      QRRichText1.Lines.Text := QDetallepro_comentario.Value;
    end;
  end;

  if QRRichText1.Lines.Count = 0 then
    ChildBand1.Height := 20;
end;

procedure TRCotizacionCaceresEquipos.CorregirError;
var
  mov : string;
begin
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('insert into movimientos (emp_codigo,suc_codigo,mov_tipo,mov_numero,mov_secuencia,fac_forma,');
  dm.Query1.SQL.Add('tfa_codigo,mov_fecha,mov_monto,mov_abono,mov_status,mov_fechavence,mov_cuota,');
  dm.Query1.SQL.Add('cli_codigo,mon_codigo,mov_tasa)');
  dm.Query1.SQL.Add('select f.emp_codigo, f.suc_codigo, tm.tmo_siglas, f.fac_numero,(select max(mov_secuencia)+1');
  dm.Query1.SQL.Add('from movimientos where emp_codigo = :emp1), f.fac_forma,');
  dm.Query1.SQL.Add('f.tfa_codigo, f.fac_fecha, f.fac_total, f.fac_abono, f.fac_status, f.fac_vence, '+QuotedStr('False')+',');
  dm.Query1.SQL.Add('f.cli_codigo,1,1');
  dm.Query1.SQL.Add('from facturas f, tiposmov tm, tiposfactura tf');
  dm.Query1.SQL.Add('where f.emp_codigo = tf.emp_codigo');
  dm.Query1.SQL.Add('and f.tfa_codigo = tf.tfa_codigo');
  dm.Query1.SQL.Add('and tm.emp_codigo = tf.emp_codigo');
  dm.Query1.SQL.Add('and tm.tmo_codigo = tf.tmo_codigo');
  dm.Query1.SQL.Add('and f.fac_numero not in (select mov_numero');
  dm.Query1.SQL.Add('from movimientos');
  dm.Query1.SQL.Add('where emp_codigo = f.emp_codigo');
  dm.Query1.SQL.Add('and suc_codigo = f.suc_codigo');
  dm.Query1.SQL.Add('and tfa_codigo = f.tfa_codigo');
  dm.Query1.SQL.Add('and fac_forma = f.fac_forma');
  dm.Query1.SQL.Add('and mov_numero = f.fac_numero)');
  dm.Query1.SQL.Add('and tf.tfa_actbalance = '+QuotedStr('True'));
  dm.Query1.SQL.Add('and f.emp_codigo = :emp2');
  dm.Query1.SQL.Add('and f.cli_codigo = :cli');
  dm.Query1.SQL.Add('and suc_codigo = :suc');
  dm.Query1.Parameters.ParamByName('emp1').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('emp2').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('cli').Value  := QCotizacionCLI_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('suc').Value  := QCotizacionSUC_CODIGO.Value;
  dm.Query1.ExecSQL;

  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('update clientes');
  dm.Query1.SQL.Add('set	cli_balance = (select isnull(sum(mov_monto-mov_abono),0)');
  dm.Query1.SQL.Add('from movimientos');
  dm.Query1.SQL.Add('where emp_codigo = clientes.emp_codigo');
  dm.Query1.SQL.Add('and cli_codigo = clientes.cli_codigo');
  dm.Query1.SQL.Add('and mov_status = '+QuotedStr('PEN')+')');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.SQL.Add('and cli_codigo = :cli');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('cli').Value := QCotizacionCLI_CODIGO.Value;
  dm.Query1.ExecSQL;
end;

procedure TRCotizacionCaceresEquipos.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  Linea := 1;
end;

procedure TRCotizacionCaceresEquipos.QRBand3AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Linea := Linea + 1;
  //if Linea = 50 then RFactura.NewPage;
end;

procedure TRCotizacionCaceresEquipos.QRBand4BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  {QRDBText16.Enabled := Rfactura.QRPrinter.PageNumber = RFactura.QRPrinter.PageCount;
  QRDBText17.Enabled := Rfactura.QRPrinter.PageNumber = RFactura.QRPrinter.PageCount;
  QRDBText18.Enabled := Rfactura.QRPrinter.PageNumber = RFactura.QRPrinter.PageCount;
  QRLabel21.Enabled := Rfactura.QRPrinter.PageNumber = RFactura.QRPrinter.PageCount;
  QRLabel20.Enabled := Rfactura.QRPrinter.PageNumber = RFactura.QRPrinter.PageCount;
  QRLabel19.Enabled := Rfactura.QRPrinter.PageNumber = RFactura.QRPrinter.PageCount;
  QRLabel40.Enabled := Rfactura.QRPrinter.PageNumber = RFactura.QRPrinter.PageCount;
  QRLabel41.Enabled := Rfactura.QRPrinter.PageNumber = RFactura.QRPrinter.PageCount;
  QRLabel42.Enabled := Rfactura.QRPrinter.PageNumber = RFactura.QRPrinter.PageCount;
  lbAbono2.Enabled := Rfactura.QRPrinter.PageNumber = RFactura.QRPrinter.PageCount;}
end;

procedure TRCotizacionCaceresEquipos.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
if lboferta.Enabled = False then begin
QRLabel10.Left:= 393;
end;

if not lboferta.Enabled = False then begin
QRLabel10.Left:= 320;
end;
end;

end.
