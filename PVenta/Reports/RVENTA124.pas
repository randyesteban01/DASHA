unit RVENTA124;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls, Dialogs,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, DB, IBCustomDataSet, ADODB;

type
  TREstadoCtaCliConsolidado = class(TQuickRep)
    QRBand1: TQRBand;
    lbTitulo: TQRLabel;
    lbFecha: TQRLabel;
    QRSysData1: TQRSysData;
    lbVendedor: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    lbTipo: TQRLabel;
    DetailBand1: TQRBand;
    dsClientes: TDataSource;
    QClientes: TADOQuery;
    QClientesCLI_CODIGO: TIntegerField;
    QClientesCLI_REFERENCIA: TIBStringField;
    QClientesCLI_NOMBRE: TIBStringField;
    QClientesCLI_TELEFONO: TIBStringField;
    QClientesCLI_BALANCE: TFloatField;
    QClientesEMP_CODIGO: TIntegerField;
    QClientesCLI_CEDULA: TIBStringField;
    QClientescli_rnc: TStringField;
    lbCodigo: TQRDBText;
    QRDBText10: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel8: TQRLabel;
    QRDBText22: TQRDBText;
    QRBand2: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    qrlBalanceen: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel9: TQRLabel;
    QDocs: TADOQuery;
    QDocsFAC_FORMA: TIBStringField;
    QDocsMOV_ABONO: TFloatField;
    QDocsMOV_FECHA: TDateTimeField;
    QDocsMOV_MONTO: TFloatField;
    QDocsMOV_NUMERO: TIntegerField;
    QDocsMOV_TIPO: TIBStringField;
    QDocsTFA_CODIGO: TIntegerField;
    QDocsSaldo: TFloatField;
    QDocsEMP_CODIGO: TIntegerField;
    QDocsMOV_CUOTA: TIBStringField;
    QDocsMOV_SECUENCIA: TIntegerField;
    QDocsCuota: TIntegerField;
    QDocsmov_interes: TBCDField;
    QDocsTotalInteres: TFloatField;
    QDocsmov_fechavence: TDateTimeField;
    QDocssuc_codigo: TIntegerField;
    QDocsmov_tasa: TBCDField;
    dsDocs: TDataSource;
    QClientesfecha: TDateField;
    QRDBText8: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    lbBalance1: TQRLabel;
    lbDescrip1: TQRLabel;
    QRDBText27: TQRDBText;
    QRDBText9: TQRDBText;
    QRecibos: TADOQuery;
    QRecibosREC_FECHA: TDateTimeField;
    QRecibosREC_MONTO: TIBBCDField;
    QRecibosREC_NUMERO: TIntegerField;
    QRecibosREC_NUMEROMANUAL: TIBStringField;
    QRecibosDET_MONTO: TFloatField;
    QRecibosTipo: TStringField;
    QRDBText6: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    lbBalance2: TQRLabel;
    lbDescrip2: TQRLabel;
    PageFooterBand1: TQRBand;
    qrlUsuario: TQRLabel;
    QNC: TADOQuery;
    QNCNCR_FECHA: TDateTimeField;
    QNCNCR_MONTO: TFloatField;
    QNCNCR_NUMERO: TIntegerField;
    QNCTipo: TStringField;
    QNCid: TAutoIncField;
    QNCncr_devolucion: TIntegerField;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText20: TQRDBText;
    lbBalance3: TQRLabel;
    lbDescrip3: TQRLabel;
    qrlNCR_MONTO: TQRLabel;
    QCredito: TADOQuery;
    QCreditoNCR_FECHA: TDateTimeField;
    QCreditoNCR_MONTO: TFloatField;
    QCreditoNCR_NUMERO: TIntegerField;
    QCreditoTipo: TStringField;
    QDepositos: TADOQuery;
    QDepositosDEP_FECHA: TDateTimeField;
    QDepositosMONTO: TFloatField;
    QDepositosDEP_NUMERO: TIntegerField;
    QDepositosTipo: TStringField;
    lbDescrip5: TQRLabel;
    QRDBText28: TQRDBText;
    QRDBText29: TQRDBText;
    QRDBText30: TQRDBText;
    lbBalance5: TQRLabel;
    qrlMontoDeposito: TQRLabel;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    lbBAlance4: TQRLabel;
    lbDescrip4: TQRLabel;
    qrlNCRMonto2: TQRLabel;
    QRBand5: TQRBand;
    lbTotal: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel16: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QAntig: TADOQuery;
    QAntigCLI_CODIGO: TIntegerField;
    QAntigCLI_REFERENCIA: TIBStringField;
    QAntigCLI_NOMBRE: TIBStringField;
    QAntigCLI_TELEFONO: TIBStringField;
    QAntigBALANCE: TFloatField;
    QAntigDIA1: TFloatField;
    QAntigDIA2: TFloatField;
    QAntigDIA3: TFloatField;
    QAntigDIA4: TFloatField;
    lbDia1: TQRLabel;
    lbDia2: TQRLabel;
    lbDia3: TQRLabel;
    lbDia4: TQRLabel;
    QRDBText32: TQRDBText;
    QRDBText33: TQRDBText;
    QRDBText34: TQRDBText;
    QRDBText35: TQRDBText;
    QClienteTitular: TADOQuery;
    QRBand3: TQRBand;
    QRDBText11: TQRDBText;
    QRDBText21: TQRDBText;
    QRLabel10: TQRLabel;
    QClienteTitularCLI_CODIGO: TIntegerField;
    QClienteTitularCLI_NOMBRE: TIBStringField;
    QDocsFECHA: TDateTimeField;
    sd_QRecibos: TQRSubDetail;
    sd_QNC: TQRSubDetail;
    sd_QDepositos: TQRSubDetail;
    sd_QCredito: TQRSubDetail;
    QRSUCURSAL: TQRLabel;
    QRLabel18: TQRLabel;
    procedure sd_QDocsBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure sd_QRecibosBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure sd_QNCBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure sd_QDepositosBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure sd_QCreditoBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail6BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand5BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    Balance,Total,TotalGral : Double;
    ImprimeSub : Boolean;
  public
    tasa : Double;
    vl_suc : Integer;
  end;

var
  REstadoCtaCliConsolidado: TREstadoCtaCliConsolidado;

implementation

uses SIGMA01, DateUtils;

{$R *.DFM}

procedure TREstadoCtaCliConsolidado.sd_QDocsBeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  Balance := Balance + QDocsMOV_MONTO.Value + QDocsTotalInteres.Value;
  TotalGral := TotalGral+QDocsMOV_MONTO.Value + QDocsTotalInteres.Value;
  lbBalance1.Caption := format('%n',[Balance]);
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select tmo_codigo, tmo_nombre from tiposmov');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.SQL.Add('and tmo_siglas = :tipo');
  dm.Query1.Parameters.ParamByName('emp').Value  := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('tipo').Value  := QDocsMOV_TIPO.Value;
  dm.Query1.Open;
  if dm.Query1.FieldByName('tmo_codigo').AsInteger = dm.QParametrosPAR_MOVCARGO.Value then
    lbDescrip1.Caption := 'CHEQUE DEVUELTO'
  else
    lbDescrip1.Caption := dm.Query1.FieldByName('tmo_nombre').AsString;

  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select * from pr_verifica_st (:emp, :fec, :tip, :for,');
  dm.Query1.SQL.Add(':tfa, :num, :sec, :suc)');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('fec').Value := QClientesfecha.AsDateTime;   //Fecha;
  dm.Query1.Parameters.ParamByName('tip').Value := QDocsMOV_TIPO.Value;
  dm.Query1.Parameters.ParamByName('for').Value := QDocsFAC_FORMA.Value;
  dm.Query1.Parameters.ParamByName('tfa').Value := QDocsTFA_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('num').Value := QDocsMOV_NUMERO.Value;
  dm.Query1.Parameters.ParamByName('sec').Value := QDocsMOV_SECUENCIA.Value;
  dm.Query1.Parameters.ParamByName('suc').Value := vl_suc;
  dm.Query1.Open;
  if dm.Query1.FieldByName('status').AsString = 'PAG' then
  begin
    PrintBand := False;
//fernando 2017 05 07    QRSubDetail3.Visible := false;
  end
  else
    PrintBand := True;
end;

procedure TREstadoCtaCliConsolidado.sd_QRecibosBeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  Balance :=(Balance - QRecibosDET_MONTO.Value);
  TotalGral := TotalGral - QRecibosDET_MONTO.Value;

  lbBalance2.Caption := format('%n',[Balance]);
  lbDescrip2.Caption := 'Recibo';
end;

procedure TREstadoCtaCliConsolidado.QuickRepBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
var cambiar : TQRLabel;
begin
  if dm.QParametrosIdioma.AsString = 'I' then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select objeto, ingles from Traduccion where modulo = :mod');
    dm.Query1.Parameters.ParamByName('mod').Value := 'REstadoCtaCli';
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

  Balance := 0;
  Total := 0;
  TotalGral := 0;
  if dm.QParametrosPAR_CODIGOCLIENTE.Value = 'I' then
    lbCodigo.DataField := 'CLI_CODIGO'
  else
    lbCodigo.DataField := 'CLI_REFERENCIA';

   if tasa > 1 then
      qrlBalanceen.Caption := 'Balance';
 qrlUsuario.Caption :='Impreso por :'+ dm.getNombreUsuario(DM.Usuario) +
                      ' Fecha/Hora ' + FormatDateTime('dd/mm/yyyy hh:mm:ss AM/PM',now);
end;

procedure TREstadoCtaCliConsolidado.sd_QNCBeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  if dm.Query1.FieldByName('status').AsString = 'PAG' then {2001 06 07}
     PrintBand := False
  else
     PrintBand := True;
 //Titin para imprimir monto en dolares.
  qrlNCR_MONTO.Caption := format('%n',[QNCNCR_MONTO.Value/Tasa]);
  Balance := (Balance - QNCNCR_MONTO.Value) / tasa;
  TotalGral := (TotalGral - QNCNCR_MONTO.Value) / tasa;

  lbBalance3.Caption := format('%n',[Balance]);
  if (QNCncr_devolucion.Value = 0) or (QNCncr_devolucion.IsNull) then
    lbDescrip3.Caption := 'Nota de Credito'
  else
    lbDescrip3.Caption := 'NCR/Devolucion';
end;

procedure TREstadoCtaCliConsolidado.sd_QDepositosBeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  if format('%n',[QDepositosMONTO.Value]) = '0.00' then
    PrintBand := False;

    //Titin para imprimir monto en dolares
  qrlMontoDeposito.Caption := format('%n',[QDepositosMONTO.Value/Tasa]);
  Balance := (Balance - QDepositosMONTO.Value) / tasa;
  TotalGral := (TotalGral - QDepositosMONTO.Value) / tasa;
  lbBalance5.Caption := format('%n',[Balance]);
  lbDescrip5.Caption := 'Deposito';
end;

procedure TREstadoCtaCliConsolidado.sd_QCreditoBeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  if format('%n',[QCreditoNCR_MONTO.Value]) = '0.00' then
    PrintBand := False
  else begin {20170809 solo el else para evitar la division en 0}
  //Titin para imprimir monto en dolares.
  qrlNCRMonto2.Caption := format('%n',[QCreditoNCR_MONTO.Value/tasa]);
  Balance := Balance - QCreditoNCR_MONTO.Value / tasa;
  TotalGral := (TotalGral - QCreditoNCR_MONTO.Value) / tasa;
  lbBalance4.Caption := format('%n',[Balance]);
  lbDescrip4.Caption := 'Nota de Credito';
  end;
end;

procedure TREstadoCtaCliConsolidado.QRSubDetail6BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  PrintBand := ImprimeSub;
  Total := Total + Balance;

  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select par_dia1label, par_dia2label,');
  dm.Query1.SQL.Add('par_dia3label, par_dia4label');
  dm.Query1.SQL.Add('from PARAMANTIGSALDO');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Open;
  lbDia1.Caption := dm.Query1.FieldByName('par_dia1label').AsString;
  lbDia2.Caption := dm.Query1.FieldByName('par_dia2label').AsString;
  lbDia3.Caption := dm.Query1.FieldByName('par_dia3label').AsString;
  lbDia4.Caption := dm.Query1.FieldByName('par_dia4label').AsString;
end;

procedure TREstadoCtaCliConsolidado.DetailBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  Balance := 0;
  if (QClientescli_rnc.IsNull) or (QClientescli_rnc.Value = '') then
    QRDBText22.DataField := 'cli_cedula'
  else
    QRDBText22.DataField := 'cli_rnc';

  ImprimeSub := True;
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select * from pr_verifica_st (:emp, :fec, :tip, :for,');
  dm.Query1.SQL.Add(':tfa, :num, :sec, :suc)');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('fec').Value := QClientesfecha.AsDateTime; //Fecha;
  dm.Query1.Parameters.ParamByName('tip').Value := QDocsMOV_TIPO.Value;
  dm.Query1.Parameters.ParamByName('for').Value := QDocsFAC_FORMA.Value;
  dm.Query1.Parameters.ParamByName('tfa').Value := QDocsTFA_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('num').Value := QDocsMOV_NUMERO.Value;
  dm.Query1.Parameters.ParamByName('sec').Value := QDocsMOV_SECUENCIA.Value;
  dm.Query1.Parameters.ParamByName('suc').Value := vl_suc;
  dm.Query1.Open;
  if dm.Query1.FieldByName('status').AsString = 'PAG' then
  begin
    ImprimeSub := False;
    PrintBand := False;
  end
  else
    PrintBand := True;
end;

procedure TREstadoCtaCliConsolidado.QRBand5BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  lbTotal.Caption := format('%n',[TotalGral]);
//fernando 2017 05 19  lbTotal.Caption := format('%n',[Total]);
end;

procedure TREstadoCtaCliConsolidado.QRBand3BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  PrintBand := not QClienteTitular.IsEmpty;
end;

end.
