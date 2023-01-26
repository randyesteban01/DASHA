unit RVENTA127;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, Db, IBCustomDataSet,
  IBQuery, ADODB, Math;

type
  TRConduceSarita = class(TQuickRep)
    QRBand1: TQRBand;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRBand3: TQRBand;
    QRBand4: TQRBand;
    QRLabel22: TQRLabel;
    lbProd: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
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
    QRLabel29: TQRLabel;
    QRDBText24: TQRDBText;
    QConduce: TADOQuery;
    QConduceCLI_CODIGO: TIntegerField;
    QConduceCLI_REFERENCIA: TIBStringField;
    QConduceCON_DIRECCION: TIBStringField;
    QConduceCON_FAX: TIBStringField;
    QConduceCON_FECHA: TDateTimeField;
    QConduceCON_LOCALIDAD: TIBStringField;
    QConduceCON_NUMERO: TIntegerField;
    QConduceCON_STATUS: TIBStringField;
    QConduceCON_TELEFONO: TIBStringField;
    QConduceCON_TOTAL: TFloatField;
    QConduceEMP_CODIGO: TIntegerField;
    QConduceALM_CODIGO: TIntegerField;
    QConduceCON_NOMBRE: TIBStringField;
    QConduceUSU_CODIGO: TIntegerField;
    dsConduce: TDataSource;
    QDetalle: TADOQuery;
    QDetalleCON_NUMERO: TIntegerField;
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
    QDetalleValor: TFloatField;
    QRLabel7: TQRLabel;
    QRDBText8: TQRDBText;
    QConduceALM_NOMBRE: TIBStringField;
    QDetalleDET_MEDIDA: TIBStringField;
    QRDBText9: TQRDBText;
    QRLabel12: TQRLabel;
    QConduceSUC_CODIGO: TIntegerField;
    QDetallePrecioItbis: TFloatField;
    QDetalleCalcItbis: TFloatField;
    QDetalleCalcDesc: TFloatField;
    lbReimpresion: TQRLabel;
    QConduceCON_DESCUENTO: TBCDField;
    QConduceCON_ITBIS: TBCDField;
    QDetalleDET_DESCUENTO: TBCDField;
    QDetalleDET_NOTA: TMemoField;
    dsDetalle: TDataSource;
    QSerie: TADOQuery;
    QSerieser_numero: TStringField;
    QDetallesuc_codigo: TIntegerField;
    QConduceusu_nombre: TStringField;
    QRDBText14: TQRDBText;
    QConducesup_codigo: TIntegerField;
    QConduceCamionID: TIntegerField;
    QConduceTicket: TStringField;
    QConduceMarca: TStringField;
    QConduceModelo: TStringField;
    QConducePlaca: TStringField;
    QConduceChofer: TStringField;
    QConduceMetraje: TBCDField;
    QConduceCompania: TStringField;
    QDetalleUnidadMetros: TStringField;
    QDetalledet_facturado: TBCDField;
    QDetallePendiente: TFloatField;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    lbConduce: TQRLabel;
    QConducefac_numero: TIntegerField;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel46: TQRLabel;
    QRDBText12: TQRDBText;
    QConduceGERENTE: TStringField;
    QRLabel3: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    ChildBand1: TQRChildBand;
    QRRichText1: TQRRichText;
    QRRichText2: TQRRichText;
    QRPDFFilter1: TQRPDFFilter;
    procedure QDetalleCalcFields(DataSet: TDataSet);
    procedure QConduceAfterOpen(DataSet: TDataSet);
    procedure ChildBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  RConduceSarita: TRConduceSarita;

implementation

uses SIGMA01;


{$R *.DFM}

procedure TRConduceSarita.QDetalleCalcFields(DataSet: TDataSet);
var
  Venta, NumItbis : Double;
  a : integer;
begin
  Venta:=0;
  NumItbis :=0;
  QDetalleUnidadMetros.Value := 'Mts';
  if StrToFloat(format('%10.2F',[qdetalledet_facturado.Value])) > 0 then
    QDetallependiente.Value := StrToFloat(format('%10.2F',[Qdetalledet_facturado.Value])) - StrToFloat(format('%10.2F',[qdetalledet_cantidad.Value]))
  else
    QDetallependiente.Value := 0;

  if not QConduceCLI_CODIGO.IsNull then
  begin //--[0]--
    if QDetalleDET_CONITBIS.value = 'S' then
    begin
      NumItbis := RoundTo((QDetalleDET_ITBIS.asfloat/100)+1, -2);
      if dm.QParametrospar_itbisincluido.Value = 'True' then
      begin //--[0.1]--
        Venta    := QDetalleDET_PRECIO.value/NumItbis;
        QDetallePrecioItbis.value := RoundTo(Venta, -2);
        QDetalleCalcDesc.value    := RoundTo((Venta * QDetalleDET_DESCUENTO.value)/100, -2);
        if QDetalleDET_CONITBIS.value = 'S' then
          QDetalleCalcItbis.value   := RoundTo(((Venta - QDetalleCalcDesc.value) * QDetalleDET_ITBIS.value) / 100, -2)
        else
          QDetalleCalcItbis.value   := 0;

        QDetalleValor.value       := (QDetallePrecioItbis.value - QDetalleCalcDesc.value) * QDetalleDET_CANTIDAD.value;
      end //--[0.1]--
      else
      begin //--[0.2]--
        Venta := QDetalleDET_PRECIO.value;
        QDetallePrecioItbis.value := Venta;
        QDetalleCalcDesc.value    := RoundTo((Venta * QDetalleDET_DESCUENTO.value)/100, -2);
        if QDetalleDET_CONITBIS.value = 'S' then
          QDetalleCalcItbis.value := RoundTo(((Venta - QDetalleCalcDesc.value)* QDetalleDET_ITBIS.value) / 100, -2)
        else
          QDetalleCalcItbis.value := 0;

        QDetalleValor.value       := (QDetallePrecioItbis.value - QDetalleCalcDesc.value) * QDetalleDET_CANTIDAD.value;
      end; //--[0.2]--
    end
    else
      begin //sin itbis
          //Venta := QDetalleDET_PRECIO.value;
    Venta := QDetalleDET_PRECIO.value * QDetalleDET_CANTIDAD.Value;
    QDetalleCalcDesc.value    := (Venta * QDetalleDET_DESCUENTO.value)/100;
    QDetallePrecioItbis.value := Venta;
    QDetalleCalcItbis.value   := 0;
    QDetalleValor.value       := (Venta-QDetalleCalcDesc.value);
      end; //sin itbis
  end //--[0]--
  else
  begin //--[1]--

    //Unidad
    if QDetalleDET_CONITBIS.value = 'S' then
    begin
      NumItbis := strtofloat(format('%10.2f',[(QDetalleDET_ITBIS.asfloat/100)+1]));
      Venta    := QDetalleDET_PRECIO.value;
      QDetallePrecioItbis.value := Venta;
      QDetalleCalcItbis.value   := ((Venta-QDetalleCalcDesc.value)*QDetalleDET_ITBIS.Value)/100;
      QDetalleValor.value       := ((Venta-QDetalleCalcDesc.value))*QDetalleDET_CANTIDAD.value;
    end
    else
    begin
      Venta := QDetalleDET_PRECIO.value;
      QDetallePrecioItbis.value := Venta;
      QDetalleValor.value       := (Venta-QDetalleCalcDesc.value)*QDetalleDET_CANTIDAD.value;
      QDetalleCalcItbis.value   := 0;
    end;
  end; //--[1]--
end;

procedure TRConduceSarita.QConduceAfterOpen(DataSet: TDataSet);
begin
  QSerie.Open;
end;

procedure TRConduceSarita.ChildBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  PrintBand := (trim(QDetalleDET_NOTA.Value) <> '') or (QSerie.RecordCount > 0);
  QRRichText1.Lines.Text := QDetalleDET_NOTA.Value;
  if QSerie.RecordCount > 0 then
  begin
    QSerie.First;
    while not QSerie.Eof do
    begin
      QRRichText2.Lines.Add('SN#: '+QSerieser_numero.Value);
      QSerie.next;
    end;
  end;
end;

end.
