unit RVENTA100;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, DB, IBCustomDataSet,
  IBQuery, ADODB;

type
  TRDevolucionCompra = class(TQuickRep)
    QRBand1: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRSysData1: TQRSysData;
    QRLabel24: TQRLabel;
    QRDBText19: TQRDBText;
    QRLabel28: TQRLabel;
    QRDBText23: TQRDBText;
    QRLabel29: TQRLabel;
    QRDBText24: TQRDBText;
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
    QRBand4: TQRBand;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRLabel22: TQRLabel;
    QRShape9: TQRShape;
    QRLabel23: TQRLabel;
    QRShape10: TQRShape;
    QDevolucion: TADOQuery;
    dsDevol: TDataSource;
    QDetalle: TADOQuery;
    QDetalleValor: TFloatField;
    QDetalleCalcDesc: TFloatField;
    QDetallePrecioItbis: TFloatField;
    QDetalleCalcItbis: TFloatField;
    QDetalleDevuelta: TFloatField;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText8: TQRDBText;
    lbFactura: TQRLabel;
    lbReimpresion: TQRLabel;
    QDevolucionemp_codigo: TIntegerField;
    QDevolucionsuc_codigo: TIntegerField;
    QDevoluciondev_numero: TIntegerField;
    QDevoluciondev_fecha: TDateTimeField;
    QDevoluciondev_itbis: TBCDField;
    QDevoluciondev_total: TBCDField;
    QDevoluciondev_status: TStringField;
    QDevoluciondev_nombre: TStringField;
    QDevoluciondev_grabado: TBCDField;
    QDevoluciondev_excento: TBCDField;
    QDevolucionsup_codigo: TIntegerField;
    QDevolucionfac_numero: TStringField;
    QDevolucionusu_codigo: TIntegerField;
    QDevolucionmon_codigo: TIntegerField;
    QDevoluciondev_tasa: TBCDField;
    QDevoluciondev_usuario_anulo: TStringField;
    QDevoluciondev_motivo_anulo: TStringField;
    QDevolucionmot_codigo: TIntegerField;
    QDetallepro_codigo: TIntegerField;
    QDetallepro_roriginal: TStringField;
    QDetallepro_rfabric: TStringField;
    QDetallepro_nombre: TStringField;
    QDetalledev_cantidad: TBCDField;
    QDetalledev_costo: TBCDField;
    QDetalledev_conitbis: TStringField;
    QDetalledev_itbis: TBCDField;
    QDetalledet_medida: TStringField;
    QRLabel3: TQRLabel;
    QRDBText9: TQRDBText;
    QDetallepro_cantempaque: TBCDField;
    QRLabel7: TQRLabel;
    QDevoluciondev_ncf: TStringField;
    QRDBText13: TQRDBText;
    QDevoluciondev_ncf_modifica: TStringField;
    QRLabel12: TQRLabel;
    QRDBText16: TQRDBText;
    procedure QDetalleCalcFields(DataSet: TDataSet);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  RDevolucionCompra: TRDevolucionCompra;

implementation

uses SIGMA01;


{$R *.DFM}

procedure TRDevolucionCompra.QDetalleCalcFields(DataSet: TDataSet);
var
  Venta, NumItbis : Double;
begin
  if QDetalleDEv_CONITBIS.value = 'S' then
  begin
    NumItbis := strtofloat(format('%10.2f',[(QDetalledev_itbis.asfloat/100)+1]));
    Venta    := QDetalleDEv_COSTO.value;
    QDetallePrecioItbis.value := Venta;
    QDetalleCalcItbis.value   := ((Venta-QDetalleCalcDesc.value)*
                                 QDetalledev_itbis.Value)/100;
    QDetalleValor.value       := ((Venta-QDetalleCalcDesc.value))*
                                 QDetalleDEv_CANTIDAD.value+(QDetalleCalcItbis.value*QDetalleDEV_CANTIDAD.value);
  end
  else
  begin
    Venta := QDetalleDEv_COSTO.value;
    QDetallePrecioItbis.value := Venta;
    QDetalleValor.value       := (Venta-QDetalleCalcDesc.value)*QDetalleDEv_CANTIDAD.value;
    QDetalleCalcItbis.value   := 0;
  end;
end;

procedure TRDevolucionCompra.QuickRepBeforePrint(Sender: TCustomQuickRep;
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
    dm.Query1.Parameters.ParamByName('mod').Value := 'RDevolucionCompra';
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

  if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'I' then
     lbProd.DataField := 'PRO_CODIGO'
  else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'F' then
     lbProd.DataField := 'PRO_RFABRIC'
  else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'O' then
     lbProd.DataField := 'PRO_RORIGINAL';

end;

end.
