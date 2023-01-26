unit RVENTA73;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, DB, ADODB, Math;

type
  TRepListaTickets = class(TQuickRep)
    QRBand1: TQRBand;
    lbTitulo: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel6: TQRLabel;
    lbCajero: TQRLabel;
    lbFecha: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel5: TQRLabel;
    QRLabel11: TQRLabel;
    lbCaja: TQRLabel;
    QRBand2: TQRBand;
    QRLabel16: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel32: TQRLabel;
    QRBand3: TQRBand;
    QRBand4: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    Fac1: TQRDBText;
    Fac3: TQRDBText;
    Fac5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText10: TQRDBText;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    lbprod: TQRLabel;
    QEmpresas: TADOQuery;
    QEmpresasemp_codigo: TIntegerField;
    QEmpresasemp_nombre: TStringField;
    QEmpresasemp_direccion: TStringField;
    QEmpresasemp_localidad: TStringField;
    QEmpresasemp_telefono: TStringField;
    QEmpresasemp_rnc: TStringField;
    QRLabel3: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRLabel4: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel37: TQRLabel;
    QRDBText12: TQRDBText;
    QRExpr4: TQRExpr;
    QTickets: TADOQuery;
    QTicketsNCF: TStringField;
    QTicketsusu_codigo: TIntegerField;
    QTicketsfecha: TDateTimeField;
    QTicketsfecha_hora: TDateTimeField;
    QTicketscaja: TIntegerField;
    QTicketsticket: TIntegerField;
    QTicketstotal: TBCDField;
    QTicketsitbis: TBCDField;
    QTicketsdescuento: TBCDField;
    QTicketsstatus: TStringField;
    QTicketsmov_numero: TIntegerField;
    QTicketsrnc: TStringField;
    QTicketsNCF_Fijo: TStringField;
    QTicketsNCF_Secuencia: TBCDField;
    QTicketssorteo: TStringField;
    QTicketsBoletos: TIntegerField;
    QTicketsnombre_domicilio: TStringField;
    QTicketstelefono_domicilio: TStringField;
    QTicketsDomicilio: TStringField;
    QTicketsncf_tipo: TIntegerField;
    QTicketsnombre: TStringField;
    QTicketsNombreCaja: TStringField;
    QTicketsusu_nombre: TStringField;
    QTicketsSupervisor: TStringField;
    QTicketsemp_codigo: TIntegerField;
    QTicketsgrabado: TFloatField;
    QTicketsexento: TFloatField;
    procedure QTicketsCalcFields(DataSet: TDataSet);
    procedure QRBand4BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public
    ckgrabado, ckexento, detallado : boolean;
    credito : double;
  end;

var
  RepListaTickets: TRepListaTickets;

implementation

uses SIGMA00, SIGMA01;

{$R *.DFM}

procedure TRepListaTickets.QTicketsCalcFields(DataSet: TDataSet);
begin
  if QTicketsNCF_Fijo.IsNull then
    QTicketsNCF.Value := ''
  else
    QTicketsNCF.Value := QTicketsNCF_Fijo.Value + formatfloat('00000000',QTicketsNCF_Secuencia.Value);

  //QTicketsgrabado.Value := RoundTo((QTicketsitbis.Value * 100) / dm.QParametrosPAR_ITBIS.Value, -2);
  //QTicketsexento.Value := QTicketstotal.Value - (QTicketsgrabado.Value + QTicketsitbis.Value);
  //if QTicketsExcento.Value < 0 then QTicketsExcento.Value := 0;
end;

procedure TRepListaTickets.QRBand4BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
  Efectivo, Contado : Double;
begin
  {Contado := 0;
  QTotales.First;
  while not QTotales.eof do
  begin
    if QTotalesForma.AsString = 'EFE' then
    begin
      lbefectivo.Caption := format('%n',[QTotalesmonto.Value]);
      Efectivo := QTotalesmonto.Value;
      Contado := Contado + QTotalesmonto.Value;
    end
    else if QTotalesForma.AsString = 'CHE' then
    begin
      lbcheque.Caption   := format('%n',[QTotalesmonto.Value]);
      Contado := Contado + QTotalesmonto.Value;
      Contado := Contado - QTotalesdevuelta.Value;
      lbefectivo.Caption := format('%n',[Contado]);
    end
    else if QTotalesForma.AsString = 'TAR' then
    begin
      lbtarjeta.Caption := format('%n',[QTotalesmonto.Value]);
      Contado := Contado + QTotalesmonto.Value;
    end
    else if QTotalesForma.AsString = 'BON' then
    begin
      lbbonos.Caption := format('%n',[QTotalesmonto.Value]);
      Contado := Contado + QTotalesmonto.Value;
    end
    else if QTotalesForma.AsString = 'CRE' then
      lbcredito.Caption := format('%n',[QTotalesmonto.Value]);

    QTotales.Next;
  end;
  lbcontado.Caption := Format('%n',[Contado]);}
end;

procedure TRepListaTickets.QuickRepBeforePrint(Sender: TCustomQuickRep;
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
    dm.Query1.Parameters.ParamByName('mod').Value := 'RepListaTickets';
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
end;

end.
