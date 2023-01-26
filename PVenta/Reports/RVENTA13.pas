unit RVENTA13;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, DB, IBCustomDataSet,
  IBQuery, ADODB;

type
  TRConsFacProvee = class(TQuickRep)
    QRBand1: TQRBand;
    lbTitulo: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel15: TQRLabel;
    lbCliente: TQRLabel;
    lbUsuario: TQRLabel;
    lbStatus: TQRLabel;
    lbFecha: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRBand3: TQRBand;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRBand4: TQRBand;
    QRLabel20: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QFacturas: TADOQuery;
    QFacturasALM_CODIGO: TIntegerField;
    QFacturasEMP_CODIGO: TIntegerField;
    QFacturasFAC_ABONO: TFloatField;
    QFacturasFAC_DESCUENTO: TFloatField;
    QFacturasFAC_DIAS: TIntegerField;
    QFacturasFAC_EXENTO: TFloatField;
    QFacturasFAC_FECHA: TDateTimeField;
    QFacturasFAC_GRABADO: TFloatField;
    QFacturasFAC_NUMERO: TIBStringField;
    QFacturasFAC_STATUS: TIBStringField;
    QFacturasFAC_TOTAL: TFloatField;
    QFacturasFAC_VENCE: TDateTimeField;
    QFacturasSUP_CODIGO: TIntegerField;
    QFacturasSUP_NOMBRE: TIBStringField;
    QFacturasUSU_NOMBRE: TIBStringField;
    QFacturasUSU_CODIGO: TIntegerField;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QFacturasFAC_ITBIS: TFloatField;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRExpr5: TQRExpr;
    QRSubDetail1: TQRSubDetail;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    dsFacturas: TDataSource;
    QDetalle: TADOQuery;
    QDetalleCAT_CUENTA: TIBStringField;
    QDetalleCAT_NOMBRE: TIBStringField;
    QDetalleDET_MONTO: TFloatField;
    QDetalleDET_ORIGEN: TIBStringField;
    QDetalleDET_SECUENCIA: TIntegerField;
    QDetalleEMP_CODIGO: TIntegerField;
    QDetalleFAC_NUMERO: TIBStringField;
    QDetalleSUP_CODIGO: TIntegerField;
    QDetalleDebito: TFloatField;
    QDetalleCredito: TFloatField;
    QFacturassup_rnc: TStringField;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    lbCentro: TQRLabel;
    QFacturasfac_selectivo: TBCDField;
    QFacturasfac_flete: TBCDField;
    QRLabel14: TQRLabel;
    QRLabel16: TQRLabel;
    QRExpr6: TQRExpr;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
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
    QRDBText16: TQRDBText;
    QFacturasncf: TStringField;
    QFacturasncf_fijo: TStringField;
    QFacturasncf_secuencia: TBCDField;
    QFacturasNumeroCF: TStringField;
    QRLabel19: TQRLabel;
    QFacturasfac_retencion: TBCDField;
    procedure QDetalleCalcFields(DataSet: TDataSet);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QFacturasCalcFields(DataSet: TDataSet);
  private

  public

  end;

var
  RConsFacProvee: TRConsFacProvee;

implementation

uses SIGMA01;


{$R *.DFM}

procedure TRConsFacProvee.QDetalleCalcFields(DataSet: TDataSet);
begin
  if QDetalleDET_ORIGEN.Value = 'Debito' then
    QDetalleDebito.Value := QDetalleDET_MONTO.Value
  else
    QDetalleCredito.Value := QDetalleDET_MONTO.Value;
end;

procedure TRConsFacProvee.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if QDetalle.Active then
  begin
    QRDBText6.Font.Style  := [fsbold];
    QRDBText7.Font.Style  := [fsbold];
    QRDBText10.Font.Style := [fsbold];
    QRDBText11.Font.Style := [fsbold];
    QRDBText12.Font.Style := [fsbold];
    QRDBText13.Font.Style := [fsbold];
    QRDBText14.Font.Style := [fsbold];
    QRDBText15.Font.Style := [fsbold];
    //QRDBText16.Font.Style := [fsbold];
  end;
end;

procedure TRConsFacProvee.QFacturasCalcFields(DataSet: TDataSet);
begin
  if QFacturasNCF_Fijo.IsNull then
    QFacturasNumeroCF.Value := QFacturasNCF.Value
  else if not QFacturasNCF_Fijo.IsNull then
    QFacturasNumeroCF.Value := QFacturasNCF_Fijo.Value + formatfloat('00000000',Qfacturasncf_secuencia.value)
  else
    QFacturasNumeroCF.Value := ' ';
end;

end.
