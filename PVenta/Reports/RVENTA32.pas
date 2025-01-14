unit RVENTA32;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, DB, IBCustomDataSet,
  IBQuery, ADODB;

type
  TRRecibo = class(TQuickRep)
    QRecibos: TADOQuery;
    QRecibosCLI_CODIGO: TIntegerField;
    QRecibosEMP_CODIGO: TIntegerField;
    QRecibosREC_CONCEPTO: TIBStringField;
    QRecibosREC_DESCUENTO: TFloatField;
    QRecibosREC_FECHA: TDateTimeField;
    QRecibosREC_MONTO: TIBBCDField;
    QRecibosREC_NOMBRE: TIBStringField;
    QRecibosREC_NUMERO: TIntegerField;
    QRecibosREC_NUMEROMANUAL: TIBStringField;
    QRecibosREC_STATUS: TIBStringField;
    QRecibosREC_TIPO: TIBStringField;
    QRecibosUSU_CODIGO: TIntegerField;
    QRecibosVEN_CODIGO: TIntegerField;
    QRecibosCAJ_CODIGO: TIntegerField;
    dsRecibo: TDataSource;
    QFormasPago: TADOQuery;
    QFormasPagoEMP_CODIGO: TIntegerField;
    QFormasPagoFOR_DESCRIPCION: TIBStringField;
    QFormasPagoFOR_MONTO: TFloatField;
    QFormasPagoFPA_CODIGO: TIntegerField;
    QFormasPagoREC_NUMERO: TIntegerField;
    QDoc: TADOQuery;
    QDocDET_MONTO: TFloatField;
    QDocDET_NUMERO: TIntegerField;
    QDocDET_PENDIENTE: TFloatField;
    QDocDET_SECUENCIA: TIntegerField;
    QDocDET_TIPO: TIBStringField;
    QDocEMP_CODIGO: TIntegerField;
    QDocREC_NUMERO: TIntegerField;
    QDocFAC_FORMA: TIBStringField;
    QDocTFA_CODIGO: TIntegerField;
    QDocDET_FECHA: TDateTimeField;
    QRBand1: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRSysData1: TQRSysData;
    QRLabel3: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRShape1: TQRShape;
    QRShape3: TQRShape;
    QRDBText8: TQRDBText;
    lbForma: TQRLabel;
    QRBand2: TQRBand;
    QRLabel10: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRDBText9: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRBand3: TQRBand;
    QRLabel16: TQRLabel;
    QRShape5: TQRShape;
    QRBand4: TQRBand;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QForma: TADOQuery;
    QFormaFPA_CODIGO: TIntegerField;
    QFormaFPA_NOMBRE: TIBStringField;
    lbMonto: TQRLabel;
    QDocDET_CUOTA: TIBStringField;
    QDocMOV_CUOTA: TIntegerField;
    QDocCuota: TIntegerField;
    QRLabel17: TQRLabel;
    QRDBText17: TQRDBText;
    QRLabel9: TQRLabel;
    QRShape6: TQRShape;
    QRecibosCAJ_NOMBRE: TIBStringField;
    QRDBText18: TQRDBText;
    QRecibosREC_CONCEPTO2: TIBStringField;
    QRShape7: TQRShape;
    QRDBText19: TQRDBText;
    QRShape8: TQRShape;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    lbdesc2: TQRShape;
    lbdesc1: TQRDBText;
    lbdesc3: TQRLabel;
    QRecibossuc_codigo: TIntegerField;
    QRecibosNumero: TStringField;
    QRLabel22: TQRLabel;
    lbCodigo: TQRDBText;
    QReciboscli_referencia: TStringField;
    QRLabel23: TQRLabel;
    QRDBText20: TQRDBText;
    QRShape4: TQRShape;
    QRecibosven_nombre: TStringField;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    lbReimpresion: TQRLabel;
    QRecibosrec_retencion: TBCDField;
    QRShape9: TQRShape;
    QRDBText21: TQRDBText;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    lbmoneda: TQRLabel;
    QRecibosmon_codigo: TIntegerField;
    lbTitulo: TQRLabel;
    QRLabel27: TQRLabel;
    QRDBText22: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText10: TQRDBText;
    QDocmov_abono: TBCDField;
    QDocmov_monto: TBCDField;
    QDocSaldo: TBCDField;
    lbbalance: TQRLabel;
    QRecibosREC_TASA: TBCDField;
    QRDBText23: TQRDBText;
    QDocMORA: TCurrencyField;
    QRLabel18: TQRLabel;
    QRecibosREC_MORA: TCurrencyField;
    QRLabel28: TQRLabel;
    QRShape10: TQRShape;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRLabel29: TQRLabel;
    QDocSaldoAnt: TCurrencyField;
    qSucursal: TADOQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    BlobField1: TBlobField;
    dsSucursal: TDataSource;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QDocCalcFields(DataSet: TDataSet);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRecibosAfterOpen(DataSet: TDataSet);
    procedure QRecibosBeforeOpen(DataSet: TDataSet);
    procedure QDocAfterOpen(DataSet: TDataSet);
  private
     Balance : Currency;
  public

    Imprime : boolean;
  end;

var
  RRecibo: TRRecibo;
    tasa:Double;
implementation

uses SIGMA01, DateUtils;


{$R *.DFM}

procedure TRRecibo.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
var
  a : integer;
  cambiar : TQRLabel;
begin
  if dm.QParametrosIdioma.AsString = 'I' then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select objeto, ingles from Traduccion where modulo = :mod');
    dm.Query1.Parameters.ParamByName('mod').Value := 'RRecibo';
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

  lbMonto.Caption := dm.numero2Letras(QRecibosREC_MONTO.Value);

  if not QForma.Active then QForma.Open;
  Imprime := QRecibosREC_TIPO.Value = 'C';
//  if QRecibosREC_TIPO.Value = 'I' then
     lbTitulo.Caption := 'Recibo de Ingreso';
{  else
     lbTitulo.Caption := 'Recibo de Cobro';}
  lbForma.Caption := '';
  QFormasPago.First;
  while not QFormasPago.Eof do
  begin
    QForma.Locate('fpa_codigo',inttostr(QFormasPagoFPA_CODIGO.Value),[]);
    lbForma.Caption := lbForma.Caption + trim(QFormaFPA_NOMBRE.Value)+': '+
                        format('%n',[QFormasPagoFOR_MONTO.value])+' '+
                        Trim(QFormasPagoFOR_DESCRIPCION.Value)+', ';
    QFormasPago.next;
  end;
  lbForma.Caption := copy(lbForma.Caption, 1, length(lbForma.Caption)-2);
  tasa := QRecibosREC_TASA.value;
 // lbBalance.Caption := 'Balance actual: '+#13+'$'+Format('%n',[Balance]);

end;

procedure TRRecibo.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  PrintBand := (Imprime) and not (dm.QParametrospar_imprimir_sin_detalle_RI.AsBoolean);
end;

procedure TRRecibo.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  PrintBand := (Imprime) and not (dm.QParametrospar_imprimir_sin_detalle_RI.AsBoolean);
  //Balance := Balance + QDocSaldo.Value;
end;

procedure TRRecibo.QDocCalcFields(DataSet: TDataSet);
begin
   if QDocDET_CUOTA.Value = 'True' then
     QDocCuota.Value := QDocMOV_CUOTA.Value;
end;

procedure TRRecibo.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);

begin

  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select cli_balance from clientes');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.SQL.Add('and cli_codigo = :cli');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('cli').Value := QRecibosCLI_CODIGO.Value;
  dm.Query1.Open;  
  lbBalance.Caption := 'Balance actual: '+#13+'$'+Format('%n',[dm.Query1.FieldByName('cli_balance').AsFloat / tasa]);


  lbmoneda.Caption := ' ';
  if not QRecibosmon_codigo.IsNull then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select mon_sigla from moneda');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and mon_codigo = :mon');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('mon').Value := QRecibosmon_codigo.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
    begin
      lbmoneda.Caption := dm.Query1.FieldByName('mon_sigla').AsString;
      QRDBText8.Mask := dm.Query1.FieldByName('mon_sigla').AsString+'###,###,###.00';
      lbdesc1.Mask := dm.Query1.FieldByName('mon_sigla').AsString+'###,###,###.00';
      QRDBText21.Mask := dm.Query1.FieldByName('mon_sigla').AsString+'###,###,###.00';
    end;
  end;

  {lbdesc1.Enabled := QRecibosREC_DESCUENTO.Value > 0;
  lbdesc2.Enabled := QRecibosREC_DESCUENTO.Value > 0;
  lbdesc3.Enabled := QRecibosREC_DESCUENTO.Value > 0;}

  if dm.QParametrosPAR_CODIGOCLIENTE.Value = 'I' then
    lbCodigo.DataField := 'CLI_CODIGO'
  else
    lbCodigo.DataField := 'CLI_REFERENCIA';

end;

procedure TRRecibo.QRecibosAfterOpen(DataSet: TDataSet);
begin
QDoc.Parameters.ParamByName('emp_codigo').Value := QRecibosEMP_CODIGO.Value;
QDoc.Parameters.ParamByName('rec_numero').Value := QRecibosREC_NUMERO.Value;
QDoc.Parameters.ParamByName('suc_codigo').Value := QRecibossuc_codigo.Value;
QDoc.Open;
qSucursal.Open;
end;

procedure TRRecibo.QRecibosBeforeOpen(DataSet: TDataSet);
begin
QDoc.Close;
Balance := 0;
end;

procedure TRRecibo.QDocAfterOpen(DataSet: TDataSet);
begin
with QDoc do begin
   First;
   Balance := 0;
   While not QDoc.Eof do begin
      Balance := Balance +QDocSaldo.Value;
      QDoc.Next;
   end;

end;
end;

end.
