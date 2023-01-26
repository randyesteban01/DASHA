unit RVENTA50;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, DB, IBCustomDataSet,
  IBQuery, ADODB, frxClass;

type
  TRFacVencidasProv = class(TQuickRep)
    QRBand1: TQRBand;
    lbTitulo: TQRLabel;
    lbFecha: TQRLabel;
    QRSysData1: TQRSysData;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRBand2: TQRBand;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel6: TQRLabel;
    QRBand3: TQRBand;
    QRDBText10: TQRDBText;
    QRDBText6: TQRDBText;
    QRSubDetail1: TQRSubDetail;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRBand5: TQRBand;
    QRExpr1: TQRExpr;
    QRLabel4: TQRLabel;
    QRBand4: TQRBand;
    QRLabel5: TQRLabel;
    QRExpr2: TQRExpr;
    Rpt_1: TfrxReport;
    QFacturas: TADOQuery;
    QFacturasVencido: TFloatField;
    QFacturasEMP_CODIGO: TIntegerField;
    QFacturasSUP_CODIGO: TIntegerField;
    QFacturasFAC_NUMERO: TIBStringField;
    QFacturasFAC_FECHA: TDateTimeField;
    QFacturasFAC_DIAS: TIntegerField;
    QFacturasFAC_VENCE: TDateTimeField;
    QFacturasFAC_EXENTO: TFloatField;
    QFacturasFAC_GRABADO: TFloatField;
    QFacturasFAC_DESCUENTO: TFloatField;
    QFacturasFAC_TOTAL: TFloatField;
    QFacturasFAC_ABONO: TFloatField;
    QFacturasFAC_STATUS: TIBStringField;
    QFacturasALM_CODIGO: TIntegerField;
    QFacturasUSU_CODIGO: TIntegerField;
    QFacturasFAC_ITBIS: TFloatField;
    QFacturasSUP_NOMBRE: TIBStringField;
    QFacturasfac_tasa: TBCDField;
    QFacturascen_codigo: TIntegerField;
    QFacturasped_tipo: TStringField;
    QFacturasped_numero: TIntegerField;
    procedure QFacturasCalcFields(DataSet: TDataSet);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  RFacVencidasProv: TRFacVencidasProv;

implementation

uses SIGMA01;


{$R *.DFM}

procedure TRFacVencidasProv.QFacturasCalcFields(DataSet: TDataSet);
begin
  QFacturasVencido.value := QFacturasFAC_TOTAL.value - QFacturasFAC_ABONO.value;
end;

procedure TRFacVencidasProv.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
// qrlUsuario.Caption :='Impreso por :'+ dm.getNombreUsuario(DM.Usuario) +
//                       ' Fecha/Hora ' + FormatDateTime('dd/mm/yyyy hh:mm:ss AM/PM',now);
end;

end.
