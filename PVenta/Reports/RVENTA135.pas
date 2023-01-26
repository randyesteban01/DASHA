unit RVENTA135;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, Db, IBCustomDataSet,
  IBQuery, ADODB, Math, jpeg;

type
  TRCotizacionFUNDGRUBEL = class(TQuickRep)
    QRBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRBand4: TQRBand;
    QRLabel22: TQRLabel;
    QRShape9: TQRShape;
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
    dsCotizacion: TDataSource;
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
    QRBand3: TQRBand;
    lbProd: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    ChildBand1: TQRChildBand;
    QDetalleDET_NOTA: TMemoField;
    lbEmp4: TQRLabel;
    lbEmp5: TQRLabel;
    lbEmp6: TQRLabel;
    lbEmp7: TQRLabel;
    lbEmp8: TQRDBText;
    lbEmp9: TQRDBText;
    lbReimpresion: TQRLabel;
    QCotizacionCOT_DESCUENTO: TBCDField;
    QDetalleDET_DESCUENTO: TBCDField;
    QRShape2: TQRShape;
    QRLabel18: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QDetallePrecioTasa: TFloatField;
    QCotizacioncot_tasa: TBCDField;
    QRLabel2: TQRLabel;
    QRShape1: TQRShape;
    QRLabel32: TQRLabel;
    lbmoneda: TQRLabel;
    lbmoneda2: TQRLabel;
    QCotizacionmon_codigo: TIntegerField;
    QRLabel245: TQRLabel;
    QRLabel246: TQRLabel;
    QRDBText146: TQRDBText;
    QRLabel247: TQRLabel;
    QRLabel251: TQRLabel;
    QRLabel252: TQRLabel;
    QRLabel253: TQRLabel;
    QRDBText142: TQRDBText;
    QRDBText143: TQRDBText;
    lbemail2: TQRLabel;
    QRLabel263: TQRLabel;
    lbvendedor: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel19: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    lbcondicion: TQRLabel;
    QRLabel23: TQRLabel;
    lbusuario: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel36: TQRLabel;
    QRDBText1: TQRDBText;
    QCotizacioncpa_codigo: TIntegerField;
    QCotizacioncot_validez: TIntegerField;
    QCotizacioncot_tiempo_entrega: TStringField;
    QCotizacioncot_proyecto: TStringField;
    QCotizacioncot_contacto: TStringField;
    QCotizacioncot_rnc: TStringField;
    QRDBText2: TQRDBText;
    QDetallepro_unidad_medida: TStringField;
    QRDBText5: TQRDBText;
    QCotizacioncot_solicitud: TIntegerField;
    QRLabel7: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBRichText1: TQRDBRichText;
    QCotizacioncot_nota: TMemoField;
    QDetallepro_comentario: TMemoField;
    QRRichText1: TQRRichText;
    QRLabel12: TQRLabel;
    QRDBText13: TQRDBText;
    QCotizacionTDescuento: TFloatField;
    QCotizacionTITBIS: TFloatField;
    QCotizacionCOT_TOTALGRAL: TBCDField;
    QCotizacionSUBTOTAL: TCurrencyField;
    QRSUBTOTAL: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
    QRDBImage1: TQRDBImage;
    QCotizacionEMP_NOMBRE: TStringField;
    QCotizacionEMP_DIRECCION: TStringField;
    QCotizacionEMP_LOCALIDAD: TStringField;
    QCotizacionEMP_TELEFONO: TStringField;
    QCotizacionEMP_RNC: TStringField;
    QRImage1: TQRImage;
    QRImage2: TQRImage;
    QRImage3: TQRImage;
    QRImage4: TQRImage;
    QRImage5: TQRImage;
    QRImage6: TQRImage;
    QRLTotal2: TQRLabel;
    QRLabel43: TQRLabel;
    QRLDBTotal2: TQRLabel;
    procedure QDetalleCalcFields(DataSet: TDataSet);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure ChildBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand4AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
    ImprimeEncaqbezado : String;

  public
    Imprime : Boolean;
  end;

var
  RCotizacionFUNDGRUBEL: TRCotizacionFUNDGRUBEL;

implementation

uses SIGMA01;


{$R *.DFM}

procedure TRCotizacionFUNDGRUBEL.QDetalleCalcFields(DataSet: TDataSet);
var
  NumItbis, Venta : Double;
begin
{  if QDetalleDET_CONITBIS.value = 'S' then
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
      QDetalleCalcDesc.value    := RoundTo((((QDetalleDET_PRECIO.value * QDetalleDET_CANTIDAD.Value)/NumItbis) * QDetalleDET_DESCUENTO.value)/100, -4);
    //QDetalleCalcItbis.value := RoundTo(((((QDetalleDET_PRECIO.value * QDetalleDET_CANTIDAD.Value)/NumItbis) - QDetalleCalcDesc.value)) / 100, -2);
    ///  QDetalleCalcItbis.value := RoundTo(((((QDetalleDET_PRECIO.value * QDetalleDET_CANTIDAD.Value)/NumItbis) - QDetalleCalcDesc.value)* QDetalleDET_ITBIS.value) / 100, -2);
      QDetalleCalcItbis.value := RoundTo((((QDetalleDET_PRECIO.value * QDetalleDET_CANTIDAD.Value) - QDetalleCalcDesc.value)* QDetalleDET_ITBIS.value) / 100, -2);

      QDetalleCalcItbis.value := RoundTo(QDetalleCalcItbis.value, -2);
      QDetalleValor.value     := (QDetallePrecioItbis.value - QDetalleCalcDesc.value + QDetalleCalcItbis.value) ;  ////* QDetalleDET_CANTIDAD.value;
    end;
  end
  else
  begin
    //Venta := QDetalleDET_PRECIO.value;
    Venta := QDetalleDET_PRECIO.value * QDetalleDET_CANTIDAD.Value;
    QDetalleCalcDesc.value    := (Venta * QDetalleDET_DESCUENTO.value)/100;
    QDetallePrecioItbis.value := Venta;
    QDetalleCalcItbis.value   := 0;
    QDetalleValor.value       := (Venta-QDetalleCalcDesc.value);
  end;
  QDetallePrecioTasa.Value := QDetalleDET_PRECIO.Value * QCotizacioncot_Tasa.Value;}
end;

procedure TRCotizacionFUNDGRUBEL.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  if dm.QParametrospar_inv_unidad_medida.AsString = 'True' then
    QRLabel10.Left := 424;
  QRDBText5.Enabled := dm.QParametrospar_inv_unidad_medida.AsString = 'True';
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
  dm.Query1.sql.add('select cli_email, cli_rnc, cli_contacto from clientes');
  dm.Query1.sql.add('where emp_codigo = :emp');
  dm.Query1.sql.add('and cli_codigo = :cli');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('cli').Value := QCotizacionCLI_CODIGO.Value;
  dm.Query1.Open;
  if dm.Query1.RecordCount > 0 then
  begin
    lbemail2.Caption    := dm.Query1.FieldByName('cli_email').AsString;
    //lbcontacto2.Caption := dm.Query1.FieldByName('cli_contacto').AsString;
  end
  else
  begin
    lbemail2.Caption := '';
    //lbcontacto2.Caption := '';
  end;

  if not QCotizacionVEN_CODIGO.IsNull then
  begin
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select ven_nombre, ven_email from vendedores');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and ven_codigo = :ven');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('ven').Value := QCotizacionVEN_CODIGO.Value;
    dm.Query1.Open;
    lbvendedor.Caption := dm.Query1.FieldbyName('ven_nombre').AsString;
  end
  else
    lbvendedor.Caption := ' ';

  if not QCotizacioncpa_codigo.IsNull then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cpa_nombre from condiciones');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cpa_codigo = :cpa');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('cpa').Value := QCotizacioncpa_codigo.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
      lbcondicion.Caption := dm.Query1.FieldByName('cpa_nombre').Value
    else
      lbcondicion.Caption := '';
  end
  else
    lbcondicion.Caption := '';

  dm.Query1.close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select usu_nombre from usuarios');
  dm.Query1.sql.add('where usu_codigo = :usu');
  dm.Query1.Parameters.ParamByName('usu').Value := QCotizacionUSU_CODIGO.Value;
  dm.Query1.Open;
  lbusuario.Caption := dm.Query1.FieldByName('usu_nombre').AsString;

  if QCotizacioncot_tasa.Value > 1 then begin
  QRLTotal2.Enabled   := True;
  QRLDBTotal2.Enabled := True;
  QRLTotal2.Caption := 'TOTAL RD$';
  QRLDBTotal2.Caption := FormatCurr('#,0.00',QCotizacionCOT_TOTALGRAL.Value*QCotizacioncot_tasa.Value);
  end
  else
  begin
  QRLTotal2.Enabled   := False;
  QRLDBTotal2.Enabled := False;
  end;

end;

procedure TRCotizacionFUNDGRUBEL.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if (QDetalleDET_CANTIDAD.Value = 0) or (QDetalleDET_CANTIDAD.IsNull) then
  begin
    QRDBText12.Enabled := False;
    QRDBText14.Enabled := False;
    QRDBText15.Enabled := False;
  end
  else
  begin
    QRDBText12.Enabled := True;
    QRDBText14.Enabled := True;
    QRDBText15.Enabled := True;
  end;
end;

procedure TRCotizacionFUNDGRUBEL.ChildBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
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

procedure TRCotizacionFUNDGRUBEL.QRBand4AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
if QCotizacioncot_tasa.Value > 1 then begin
  QRLTotal2.Enabled   := True;
  QRLDBTotal2.Enabled := True;
  QRLTotal2.Caption := 'TOTAL RD$';
  QRLDBTotal2.Caption := FormatCurr('#,0.00',QCotizacionCOT_TOTALGRAL.Value*QCotizacioncot_tasa.Value);
  end
  else
  begin
  QRLTotal2.Enabled   := False;
  QRLDBTotal2.Enabled := False;
  end;
end;

end.
