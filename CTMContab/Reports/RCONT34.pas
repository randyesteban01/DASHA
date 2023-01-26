unit RCONT34;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery, ADODB;

type
  TRepCargoBancario = class(TQuickRep)
    QRBand1: TQRBand;
    lbTitulo: TQRLabel;
    QRSysData1: TQRSysData;
    QCargo: TADOQuery;
    dsCargo: TDataSource;
    QDetalle: TADOQuery;
    QDetalleCAT_CUENTA: TIBStringField;
    QDetalleCAT_NOMBRE: TIBStringField;
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
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRShape1: TQRShape;
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
    QRShape6: TQRShape;
    QRDBText21: TQRDBText;
    QRShape9: TQRShape;
    lbMonto: TQRLabel;
    QRBand4: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText22: TQRDBText;
    QRShape10: TQRShape;
    QRLImpreso: TQRLabel;
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
    QCentrosuc_codigo: TIntegerField;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QCargoBAN_NOMBRE: TStringField;
    QCargoCAR_NUMERO: TIntegerField;
    QCargoCAR_FECHA: TDateField;
    QCargoCAR_CONCEPTO1: TStringField;
    QCargoCAR_CONCEPTO2: TStringField;
    QCargoCAR_MONTO: TCurrencyField;
    QCargoCAR_STATUS: TStringField;
    QCargoCAR_TIPO: TStringField;
    QCargousu_nombre: TStringField;
    QCargoBAN_CODIGO: TIntegerField;
    QCargoSUC_CODIGO: TIntegerField;
    QCargoEMP_CODIGO: TIntegerField;
    QDetalleCAR_NUMERO: TIntegerField;
    QCentrocar_numero: TIntegerField;
    QRShape2: TQRShape;
    QRDBText8: TQRDBText;
    QCargoCAR_BENEF: TStringField;
    QRLabel7: TQRLabel;
    procedure QDetalleCalcFields(DataSet: TDataSet);
    procedure ChildBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure ChildBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure ChildBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QCargoAfterOpen(DataSet: TDataSet);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  RepCargoBancario: TRepCargoBancario;

implementation

uses SIGMA01;


{$R *.DFM}

procedure TRepCargoBancario.QDetalleCalcFields(DataSet: TDataSet);
begin
  if QDetalleDET_ORIGEN.Value = 'Debito' then
    QDetalleDebito.Value := QDetalleDET_MONTO.Value
  else
    QDetalleCredito.Value := QDetalleDET_MONTO.Value;
end;

procedure TRepCargoBancario.ChildBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  PrintBand := QFacturas.RecordCount > 0;
end;

procedure TRepCargoBancario.ChildBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  PrintBand := QDetalle.RecordCount > 0;
end;

procedure TRepCargoBancario.QRBand1BeforePrint(Sender: TQRCustomBand;
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
  dm.Query1.Parameters.ParamByName('emp').Value := QCargoEMP_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('ban').Value := QCargoBAN_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('suc').Value := QCargoSUC_CODIGO.Value;
  dm.Query1.Open;
  idioma := dm.Query1.FieldByName('ban_idioma_numeracion').AsString;
  lbMonto.Caption := dm.numero2Letras(QCargoCAR_MONTO.Value )
end;

procedure TRepCargoBancario.ChildBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  PrintBand := QCentro.RecordCount > 0;
end;

procedure TRepCargoBancario.QCargoAfterOpen(DataSet: TDataSet);
begin
  QCentro.Open;
end;

procedure TRepCargoBancario.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
var
  a : integer;
  cambiar : TQRLabel;
begin
  QRLImpreso.Caption := 'Impreso: '+FormatDateTime('dd/mm/yyyy hh:mm',Date);
  
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
