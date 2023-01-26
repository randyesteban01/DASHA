unit RCONT30;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery, ADODB;

type
  TRComprobantesDetalle = class(TQuickRep)
    QRBand1: TQRBand;
    lbTitulo: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel6: TQRLabel;
    lbTipo: TQRLabel;
    lbFecha: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel31: TQRLabel;
    QRBand3: TQRBand;
    QRDBText9: TQRDBText;
    QRDBText14: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel19: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText7: TQRDBText;
    QRBand4: TQRBand;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRLabel56: TQRLabel;
    QRLabel57: TQRLabel;
    QRLabel58: TQRLabel;
    QRLExento: TQRLabel;
    QRLGrabadas: TQRLabel;
    QRLDescuento: TQRLabel;
    QRLItbis: TQRLabel;
    QRLTotal: TQRLabel;
    QRLItbis0: TQRLabel;
    QRLItbis8: TQRLabel;
    QRLItbis11: TQRLabel;
    QRLItbis13: TQRLabel;
    QRLItbis16: TQRLabel;
    QRLItbis18: TQRLabel;
    QRLItbisNC: TQRLabel;
    QRLEfectivo: TQRLabel;
    QRLCKDEP: TQRLabel;
    QRLTCTD: TQRLabel;
    QRLCREDITO: TQRLabel;
    QRLTOTALPAG: TQRLabel;
    QRLCANTB01: TQRLabel;
    QRLCANTB2: TQRLabel;
    QRLCANTB4: TQRLabel;
    QRLCANTB14: TQRLabel;
    QRLCANTB15: TQRLabel;
    QRLMONTOB1: TQRLabel;
    QRLMONTOB2: TQRLabel;
    QRLMONTOB4: TQRLabel;
    QRLMONTOB14: TQRLabel;
    QRLMONTOB15: TQRLabel;
    QRLabel7: TQRLabel;
    QRLOTRAS: TQRLabel;
    QRLabel8: TQRLabel;
    QRLPropina: TQRLabel;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand3AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);

    private
     vl_exento, vl_grabado, vl_descuento, vl_itbis, vl_total, vl_propina, vl_itbis0,
    vl_itbis8, vl_itbis11, vl_itbis16, vl_itbis18, vl_itbis13, vl_itbisnc,
    vl_efectivo, vl_otras, vl_ckdep, vl_tctd, vl_credito, vl_totalpag, vl_montob1,
    vl_montob2, vl_montob4, vl_montob14, vl_montob15 : Currency;
    vl_cantb1, vl_cantb2, vl_cantb4, vl_cantb14, vl_cantb15 : Integer;

  public

  end;

var
  RComprobantesDetalle: TRComprobantesDetalle;

implementation

uses SIGMA01, CONT75;


{$R *.DFM}


procedure TRComprobantesDetalle.QuickRepBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
vl_exento    := 0;
vl_grabado   := 0;
vl_descuento := 0;
vl_propina   := 0;
vl_itbis     := 0;
vl_total     := 0;
vl_itbis0    := 0;
vl_itbis8    := 0;
vl_itbis11   := 0;
vl_itbis16   := 0;
vl_itbis18   := 0;
vl_itbis13   := 0;
vl_itbisnc   := 0;
vl_efectivo  := 0;
vl_otras     := 0;
vl_ckdep     := 0;
vl_tctd      := 0;
vl_credito   := 0;
vl_totalpag  := 0;
vl_montob1   := 0;
vl_montob2   := 0;
vl_montob4   := 0;
vl_montob14  := 0;
vl_montob15  := 0;
vl_cantb1    := 0;
vl_cantb2    := 0;
vl_cantb4    := 0;
vl_cantb14   := 0;
vl_cantb15   := 0;
end;

procedure TRComprobantesDetalle.QRBand3AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
if frmConsComprobantes.QListadoTIPO.Value <> 'B04' THEN begin
vl_exento    := vl_exento + frmConsComprobantes.QListadoExento.Value;
vl_grabado   := vl_grabado + frmConsComprobantes.QListadoGrabado.Value;
vl_descuento := vl_descuento + frmConsComprobantes.QListadoDescuento.Value;
vl_propina   := vl_propina + frmConsComprobantes.QListadoPropina.Value;
vl_itbis     := vl_itbis + frmConsComprobantes.QListadoItbis.Value;
vl_itbis0    := vl_itbis0 + frmConsComprobantes.QListadoItbis0.Value;
vl_itbis8    := vl_itbis8 + frmConsComprobantes.QListadoItbis8.Value;
vl_itbis11   := vl_itbis11 + frmConsComprobantes.QListadoItbis11.Value;
vl_itbis13   := vl_itbis13 + frmConsComprobantes.QListadoItbis13.Value;
vl_itbis16   := vl_itbis16 + frmConsComprobantes.QListadoItbis16.Value;
vl_itbis18   := vl_itbis18 + frmConsComprobantes.QListadoItbis18.Value;
end;
vl_itbisnc   := vl_itbisnc + frmConsComprobantes.QListadoItbisNC.Value;
vl_efectivo  := vl_efectivo + frmConsComprobantes.QListadoefectivo.Value;
vl_otras     := vl_otras + frmConsComprobantes.QListadootras.Value;
vl_ckdep     := vl_ckdep + frmConsComprobantes.QListadockdep.Value;
vl_tctd      := vl_tctd + frmConsComprobantes.QListadotarjetas.Value;
vl_credito   := vl_credito + frmConsComprobantes.QListadocredito.Value;
vl_totalpag  := vl_efectivo + vl_ckdep + vl_tctd + vl_credito + vl_otras;

if frmConsComprobantes.QListadoTIPO.Value <> 'B04' THEN
vl_total     := vl_total + frmConsComprobantes.QListadoTotal.Value;


if frmConsComprobantes.QListadoTIPO.Value = 'B01' THEN
vl_cantb1    := vl_cantb1 + frmConsComprobantes.QListadoCANT.Value;
if frmConsComprobantes.QListadoTIPO.Value = 'B02' THEN
vl_cantb2    := vl_cantb2 + frmConsComprobantes.QListadoCANT.Value;
if frmConsComprobantes.QListadoTIPO.Value = 'B04' THEN
vl_cantb4    := vl_cantb4 + frmConsComprobantes.QListadoCANT.Value;
if frmConsComprobantes.QListadoTIPO.Value = 'B14' THEN
vl_cantb14    := vl_cantb14 + frmConsComprobantes.QListadoCANT.Value;
if frmConsComprobantes.QListadoTIPO.Value = 'B15' THEN
vl_cantb15    := vl_cantb15 + frmConsComprobantes.QListadoCANT.Value;

if frmConsComprobantes.QListadoTIPO.Value = 'B01' THEN
vl_montob1    := vl_montob1 + frmConsComprobantes.QListadoTotal.Value -
                            frmConsComprobantes.QListadoItbis.Value;
if frmConsComprobantes.QListadoTIPO.Value = 'B02' THEN
vl_montob2    := vl_montob2 + frmConsComprobantes.QListadoTotal.Value -
                            frmConsComprobantes.QListadoItbis.Value;
if frmConsComprobantes.QListadoTIPO.Value = 'B04' THEN
vl_montob4    := vl_montob4 + frmConsComprobantes.QListadoTotal.Value -
                            frmConsComprobantes.QListadoItbis.Value;
if frmConsComprobantes.QListadoTIPO.Value = 'B14' THEN
vl_montob14    := vl_montob14 + frmConsComprobantes.QListadoTotal.Value -
                            frmConsComprobantes.QListadoItbis.Value;
if frmConsComprobantes.QListadoTIPO.Value = 'B15' THEN
vl_montob15    := vl_montob15 + frmConsComprobantes.QListadoTotal.Value -
                            frmConsComprobantes.QListadoItbis.Value;

QRLGrabadas.Caption  := FormatCurr('#,0.00',vl_grabado);
QRLExento.Caption    := FormatCurr('#,0.00',vl_exento);
QRLDescuento.Caption := FormatCurr('#,0.00',vl_descuento);
QRLPropina.Caption   := FormatCurr('#,0.00',vl_propina);
QRLItbis.Caption     := FormatCurr('#,0.00',vl_itbis);
QRLTotal.Caption     := FormatCurr('#,0.00',vl_total);
QRLItbis0.Caption    := FormatCurr('#,0.00',vl_itbis0);
QRLItbis8.Caption    := FormatCurr('#,0.00',vl_itbis8);
QRLItbis11.Caption   := FormatCurr('#,0.00',vl_itbis11);
QRLItbis13.Caption   := FormatCurr('#,0.00',vl_itbis13);
QRLItbis16.Caption   := FormatCurr('#,0.00',vl_itbis16);
QRLItbis18.Caption   := FormatCurr('#,0.00',vl_itbis18);
QRLItbisNC.Caption   := FormatCurr('#,0.00',vl_itbisnc);
QRLEfectivo.Caption  := FormatCurr('#,0.00',vl_efectivo);
QRLOTRAS.Caption     := FormatCurr('#,0.00',vl_otras);
QRLCKDEP.Caption     := FormatCurr('#,0.00',vl_ckdep);
QRLTCTD.Caption      := FormatCurr('#,0.00',vl_tctd);
QRLCREDITO.Caption   := FormatCurr('#,0.00',vl_credito);
QRLTOTALPAG.Caption  := FormatCurr('#,0.00',vl_totalpag);
QRLCANTB01.Caption   := FormatCurr('#,0.00',vl_cantb1);
QRLMONTOB1.Caption   := FormatCurr('#,0.00',vl_montob1);
QRLCANTB2.Caption   := FormatCurr('#,0.00',vl_cantb2);
QRLMONTOb2.Caption   := FormatCurr('#,0.00',vl_montob2);
QRLCANTB4.Caption   := FormatCurr('#,0.00',vl_cantb4);
QRLMONTOB4.Caption   := FormatCurr('#,0.00',vl_montob4);
QRLCANTB14.Caption   := FormatCurr('#,0.00',vl_cantb14);
QRLMONTOB14.Caption   := FormatCurr('#,0.00',vl_montob14);
QRLCANTB15.Caption   := FormatCurr('#,0.00',vl_cantb15);
QRLMONTOB15.Caption   := FormatCurr('#,0.00',vl_montob15);
end;

end.
