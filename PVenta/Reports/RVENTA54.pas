unit RVENTA54;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, DB, IBCustomDataSet,
  IBQuery, ADODB;

type
  TRConsComision = class(TQuickRep)
    QRBand1: TQRBand;
    lbTitulo: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel8: TQRLabel;
    lbVendedor: TQRLabel;
    lbFecha: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    qrlGrupo: TQRLabel;
    qrlTipo: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel11: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QVendedor: TADOQuery;
    QVendedorVEN_CODIGO: TIntegerField;
    QVendedorVEN_NOMBRE: TIBStringField;
    dsVend: TDataSource;
    QFacturas: TADOQuery;
    QRecibos: TADOQuery;
    QDevol: TADOQuery;
    QDevolDEV_FECHA: TDateTimeField;
    QDevolDEV_NUMERO: TIntegerField;
    QDevolDEV_STATUS: TIBStringField;
    QDevolDEV_TOTAL: TFloatField;
    QRSubDetail2: TQRSubDetail;
    QRSubDetail3: TQRSubDetail;
    qrdbFac_Forma: TQRDBText;
    qrdbTFa_Codigo: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText19: TQRDBText;
    QRBand3: TQRBand;
    QRBand4: TQRBand;
    QRBand5: TQRBand;
    QRExpr1: TQRExpr;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRExpr2: TQRExpr;
    QRBand6: TQRBand;
    QRLabel15: TQRLabel;
    lbTotal: TQRLabel;
    QVendedorEMP_CODIGO: TIntegerField;
    QDevolDEV_NOMBRE: TIBStringField;
    QDevolComision: TFloatField;
    QDevolSUC_NOMBRE: TStringField;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRSubDetail4: TQRSubDetail;
    QRBand7: TQRBand;
    QRLabel14: TQRLabel;
    QRExpr3: TQRExpr;
    QRExpr6: TQRExpr;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText25: TQRDBText;
    QCargos: TADOQuery;
    QCargoscar_numero: TIntegerField;
    QCargoscar_fecha: TDateTimeField;
    QCargoscar_monto: TBCDField;
    QCargoscli_nombre: TStringField;
    QRDBText12: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText26: TQRDBText;
    QRLabel10: TQRLabel;
    QRExpr7: TQRExpr;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel16: TQRLabel;
    QRDBText27: TQRDBText;
    QRExpr8: TQRExpr;
    QCargosBAN_NOMBRE: TStringField;
    QCargosCAR_CONCEPTO1: TStringField;
    QCargosCAR_CONCEPTO2: TStringField;
    QCargosCAR_STATUS: TStringField;
    QCargosCAR_TIPO: TStringField;
    QCargosUSU_NOMBRE: TStringField;
    QCargosEMP_CODIGO: TIntegerField;
    QCargosBAN_CODIGO: TIntegerField;
    QCargosCAR_ANO: TIntegerField;
    QCargosCAR_MES: TIntegerField;
    QCargosCAR_FORMA: TStringField;
    QCargosCAR_ABONO: TBCDField;
    QCargosSUC_CODIGO: TIntegerField;
    QCargosREC_NUMERO: TIntegerField;
    QCargosVEN_NOMBRE: TStringField;
    QCargosCAR_COMISION: TBCDField;
    QRecibosREC_NUMERO: TIntegerField;
    QRecibosREC_NUMEROMANUAL: TStringField;
    QRecibosREC_NOMBRE: TStringField;
    QRecibosREC_FECHA: TDateTimeField;
    QRecibosREC_MONTO: TBCDField;
    QRecibosREC_STATUS: TStringField;
    QRecibosREC_COMISION: TBCDField;
    QRecibosSUC_NOMBRE: TStringField;
    QRecibosrec_porccomision: TBCDField;
    QDevoldev_comision: TBCDField;
    QDevoldev_porccomision: TBCDField;
    qrptComVentasPOS: TQuickRep;
    QRBand8: TQRBand;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRSysData2: TQRSysData;
    QRDBText28: TQRDBText;
    QRDBText29: TQRDBText;
    QRDBText30: TQRDBText;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel26: TQRLabel;
    QRDBText31: TQRDBText;
    QRDBText32: TQRDBText;
    QRBand9: TQRBand;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRSubDetail5: TQRSubDetail;
    QRDBText33: TQRDBText;
    QRDBText34: TQRDBText;
    QRDBText35: TQRDBText;
    QRDBText36: TQRDBText;
    QRDBText37: TQRDBText;
    QRDBText38: TQRDBText;
    QRDBText39: TQRDBText;
    QRBand10: TQRBand;
    QRExpr9: TQRExpr;
    QRLabel35: TQRLabel;
    QRExpr10: TQRExpr;
    QRSubDetail6: TQRSubDetail;
    QRDBText40: TQRDBText;
    QRDBText41: TQRDBText;
    QRDBText42: TQRDBText;
    QRDBText43: TQRDBText;
    QRDBText44: TQRDBText;
    QRBand11: TQRBand;
    QRLabel36: TQRLabel;
    QRExpr11: TQRExpr;
    QRExpr12: TQRExpr;
    QRSubDetail7: TQRSubDetail;
    QRDBText45: TQRDBText;
    QRDBText46: TQRDBText;
    QRDBText47: TQRDBText;
    QRDBText48: TQRDBText;
    QRBand12: TQRBand;
    QRLabel37: TQRLabel;
    QRExpr13: TQRExpr;
    QRSubDetail8: TQRSubDetail;
    QRDBText49: TQRDBText;
    QRDBText50: TQRDBText;
    QRDBText51: TQRDBText;
    QRDBText52: TQRDBText;
    QRDBText53: TQRDBText;
    QRDBText54: TQRDBText;
    QRBand13: TQRBand;
    QRLabel38: TQRLabel;
    QRExpr14: TQRExpr;
    QRExpr15: TQRExpr;
    QRExpr16: TQRExpr;
    QRBand14: TQRBand;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    adoComVentaPOS: TADOQuery;
    StringField1: TStringField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    DateTimeField1: TDateTimeField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    BCDField1: TBCDField;
    BCDField2: TBCDField;
    BCDField3: TBCDField;
    BCDField4: TBCDField;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand6BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail4BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public
    Total : Double;
    ComVenta, ComCobro : string;
  end;

var
  RConsComision: TRConsComision;

implementation

uses SIGMA01;


{$R *.DFM}

procedure TRConsComision.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  Total := 0;
end;

procedure TRConsComision.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if ComVenta = 'True' then
    Total := Total + QFacturas['fac_Comision'];
end;

procedure TRConsComision.QRSubDetail2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  Total := Total - QDevoldev_Comision.Value;
end;

procedure TRConsComision.QRBand6BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  lbTotal.Caption := format('%n',[Total]);
end;

procedure TRConsComision.QRSubDetail4BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if ComCobro = 'True' then
    Total := Total + QRecibosrec_Comision.Value;
end;

end.
