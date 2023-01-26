unit RVENTA16;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, DB, IBCustomDataSet,
  IBQuery, ADODB;

type
  TRConsDesem = class(TQuickRep)
    QRBand1: TQRBand;
    lbTitulo: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    lbCajero: TQRLabel;
    lbCliente: TQRLabel;
    lbUsuario: TQRLabel;
    lbNombre: TQRLabel;
    lbStatus: TQRLabel;
    lbFecha: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel32: TQRLabel;
    QRBand3: TQRBand;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText15: TQRDBText;
    QRBand4: TQRBand;
    QRLabel20: TQRLabel;
    QRLabel38: TQRLabel;
    QRExpr1: TQRExpr;
    QDesem: TADOQuery;
    QDesemDES_BENEFICIARIO: TIBStringField;
    QDesemDES_CONCEPTO: TIBStringField;
    QDesemDES_FECHA: TDateTimeField;
    QDesemDES_MONTO: TFloatField;
    QDesemDES_NUMERO: TIntegerField;
    QDesemDES_STATUS: TIBStringField;
    QDesemDEV_NUMERO: TIntegerField;
    QDesemCAJ_NOMBRE: TIBStringField;
    QDesemUSU_NOMBRE: TIBStringField;
    dsDesem: TDataSource;
    QDetalle: TADOQuery;
    QDetalleCAT_CUENTA: TIBStringField;
    QDetalleCAT_NOMBRE: TIBStringField;
    QDetalleDES_NUMERO: TIntegerField;
    QDetalleDET_MONTO: TFloatField;
    QDetalleDET_ORIGEN: TIBStringField;
    QDetalleDET_SECUENCIA: TIntegerField;
    QDetalleEMP_CODIGO: TIntegerField;
    QRSubDetail1: TQRSubDetail;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText11: TQRDBText;
    QRLabel6: TQRLabel;
    QDesemEMP_CODIGO: TIntegerField;
    QDetalleDebito: TFloatField;
    QDetalleCredito: TFloatField;
    QDesemsuc_codigo: TIntegerField;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QDesemdes_ncf: TStringField;
    QRLabel5: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel8: TQRLabel;
    lbCaja: TQRLabel;
    procedure QDetalleCalcFields(DataSet: TDataSet);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  RConsDesem: TRConsDesem;

implementation

uses SIGMA01;


{$R *.DFM}

procedure TRConsDesem.QDetalleCalcFields(DataSet: TDataSet);
begin
  if QDetalleDET_ORIGEN.Value = 'Debito' then
    QDetalleDebito.Value := QDetalleDET_MONTO.Value
  else
    QDetalleCredito.Value := QDetalleDET_MONTO.Value;
end;

procedure TRConsDesem.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if QDetalle.Active then
  begin
    QRDBText8.Font.Style  := [fsbold];
    QRDBText9.Font.Style  := [fsbold];
    QRDBText10.Font.Style := [fsbold];
    QRDBText15.Font.Style := [fsbold];
    QRDBText6.Font.Style := [fsbold];
  end;
end;

end.
