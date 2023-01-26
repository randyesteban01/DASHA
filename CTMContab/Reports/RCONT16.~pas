unit RCONT16;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery, ADODB;

type
  TRepSolicitud = class(TQuickRep)
    QRBand1: TQRBand;
    lbTitulo: TQRLabel;
    QRSysData1: TQRSysData;
    QSolicitud: TADOQuery;
    QSolicitudBAN_NOMBRE: TIBStringField;
    QSolicitudSOL_NUMERO: TIntegerField;
    QSolicitudSOL_FECHA: TDateTimeField;
    QSolicitudSOL_CONCEPTO1: TIBStringField;
    QSolicitudSOL_CONCEPTO2: TIBStringField;
    QSolicitudSOL_BENEF: TIBStringField;
    QSolicitudSOL_MONTO: TFloatField;
    QSolicitudSOL_STATUS: TIBStringField;
    QSolicitudSOL_TIPO: TIBStringField;
    QSolicitudUSU_NOMBRE: TIBStringField;
    QSolicitudEMP_CODIGO: TIntegerField;
    QSolicitudBAN_CODIGO: TIntegerField;
    QSolicitudSOL_CHEQUE: TIntegerField;
    dsSolicitud: TDataSource;
    QDetalle: TADOQuery;
    QDetalleCAT_CUENTA: TIBStringField;
    QDetalleCAT_NOMBRE: TIBStringField;
    QDetalleSOL_NUMERO: TIntegerField;
    QDetalleDET_MONTO: TFloatField;
    QDetalleDET_ORIGEN: TIBStringField;
    QDetalleDET_SECUENCIA: TIntegerField;
    QDetalleEMP_CODIGO: TIntegerField;
    QFacturas: TADOQuery;
    QFacturasFAC_NUMERO: TIBStringField;
    QFacturasFAC_FECHA: TDateTimeField;
    QFacturasFAC_PAGO: TFloatField;
    QFacturasFAC_VENCE: TDateTimeField;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    ChildBand1: TQRChildBand;
    QRLabel10: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QFacturasFAC_TOTAL: TFloatField;
    QFacturasFAC_ABONO: TFloatField;
    QRLabel11: TQRLabel;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRSubDetail2: TQRSubDetail;
    QRBand2: TQRBand;
    ChildBand2: TQRChildBand;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QDetalleDebito: TFloatField;
    QDetalleCredito: TFloatField;
    QRDBText20: TQRDBText;
    QRBand3: TQRBand;
    QRLabel18: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRDBText21: TQRDBText;
    QRShape9: TQRShape;
    lbMonto: TQRLabel;
    QRBand4: TQRBand;
    QSolicitudSOL_CONCEPTO3: TStringField;
    QSolicitudSUC_CODIGO: TIntegerField;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText22: TQRDBText;
    QRLabel24: TQRLabel;
    QRShape3: TQRShape;
    QSolicitudSOL_MONTO_BANCO: TBCDField;
    QRDBText23: TQRDBText;
    QRShape10: TQRShape;
    QRLabel25: TQRLabel;
    QRShape11: TQRShape;
    QRLabel26: TQRLabel;
    QRShape12: TQRShape;
    QRBand5: TQRBand;
    ChildBand3: TQRChildBand;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel30: TQRLabel;
    QRSubDetail3: TQRSubDetail;
    QCentro: TADOQuery;
    QCentrocen_codigo: TIntegerField;
    QCentrodet_secuencia: TIntegerField;
    QCentrocen_nombre: TStringField;
    QCentrodet_monto: TBCDField;
    QCentroemp_codigo: TIntegerField;
    QCentrosol_numero: TIntegerField;
    QCentrosuc_codigo: TIntegerField;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    procedure QDetalleCalcFields(DataSet: TDataSet);
    procedure ChildBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure ChildBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure ChildBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QSolicitudAfterOpen(DataSet: TDataSet);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  RepSolicitud: TRepSolicitud;

implementation

uses SIGMA01;


{$R *.DFM}

procedure TRepSolicitud.QDetalleCalcFields(DataSet: TDataSet);
begin
  if QDetalleDET_ORIGEN.Value = 'Debito' then
    QDetalleDebito.Value := QDetalleDET_MONTO.Value
  else
    QDetalleCredito.Value := QDetalleDET_MONTO.Value;
end;

procedure TRepSolicitud.ChildBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  PrintBand := QFacturas.RecordCount > 0;
end;

procedure TRepSolicitud.ChildBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  PrintBand := QDetalle.RecordCount > 0;
end;

procedure TRepSolicitud.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
  idioma : string;
begin
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select ban_nombre, BAN_CUENTA, ban_idioma_numeracion from bancos');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.SQL.Add('and ban_codigo = :ban');
  dm.Query1.SQL.Add('and suc_codigo = :suc');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('ban').Value := QSolicitudBAN_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('suc').Value := QSolicitudSUC_CODIGO.Value;
  dm.Query1.Open;
  idioma := dm.Query1.FieldByName('ban_idioma_numeracion').AsString;
  lbMonto.Caption := dm.numero2Letras(QSolicitudSOL_MONTO_BANCO.Value )
end;

procedure TRepSolicitud.ChildBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  PrintBand := QCentro.RecordCount > 0;
end;

procedure TRepSolicitud.QSolicitudAfterOpen(DataSet: TDataSet);
begin
  QCentro.Open;
end;

procedure TRepSolicitud.QuickRepBeforePrint(Sender: TCustomQuickRep;
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
    dm.Query1.Parameters.ParamByName('mod').Value := 'RepSolicitud';
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
