unit RVENTA57;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, DB, IBCustomDataSet,
  IBQuery, ADODB;

type
  TRepVentaTipoFac = class(TQuickRep)
    QRBand1: TQRBand;
    lbTitulo: TQRLabel;
    lbFecha: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel31: TQRLabel;
    QRBand3: TQRBand;
    QRBand4: TQRBand;
    QCredito: TADOQuery;
    QTipo: TADOQuery;
    dsTipo: TDataSource;
    QRSubDetail1: TQRSubDetail;
    QRDBText18: TQRDBText;
    lbGrupo: TQRLabel;
    QTipoEMP_CODIGO: TIntegerField;
    QTipoTFA_CODIGO: TIntegerField;
    QTipoTFA_NOMBRE: TIBStringField;
    QCreditoFAC_FORMA: TIBStringField;
    QCreditoTFA_CODIGO: TIntegerField;
    QCreditoFAC_NUMERO: TIntegerField;
    QCreditoFAC_NOMBRE: TIBStringField;
    QCreditoFAC_DESCUENTO: TFloatField;
    QCreditoFAC_ITBIS: TFloatField;
    QCreditoFAC_OTROS: TFloatField;
    QCreditoFAC_TOTAL: TFloatField;
    QCreditoFAC_STATUS: TIBStringField;
    QCreditoFAC_FECHA: TDateTimeField;
    QForma: TADOQuery;
    QFormaEMP_CODIGO: TIntegerField;
    QFormaFPA_CODIGO: TIntegerField;
    QFormaFPA_NOMBRE: TIBStringField;
    QContado: TADOQuery;
    dsForma: TDataSource;
    QRSubDetail2: TQRSubDetail;
    QRBand6: TQRBand;
    QRExpr3: TQRExpr;
    QRSubDetail3: TQRSubDetail;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText19: TQRDBText;
    QRBand5: TQRBand;
    QRExpr1: TQRExpr;
    QRLabel3: TQRLabel;
    QFormaTFA_CODIGO: TIntegerField;
    QContadoFAC_FORMA: TIBStringField;
    QContadoTFA_CODIGO: TIntegerField;
    QContadoFAC_NUMERO: TIntegerField;
    QContadoFAC_NOMBRE: TIBStringField;
    QContadoFAC_DESCUENTO: TFloatField;
    QContadoFAC_ITBIS: TFloatField;
    QContadoFAC_OTROS: TFloatField;
    QContadoFAC_STATUS: TIBStringField;
    QContadoFAC_FECHA: TDateTimeField;
    QContadoFOR_MONTO: TFloatField;
    QRBand7: TQRBand;
    QRExpr2: TQRExpr;
    lbTotal1: TQRLabel;
    lbTotal2: TQRLabel;
    lbTotal: TQRLabel;
    QTipoSUC_CODIGO: TIntegerField;
    QFormaSUC_CODIGO: TIntegerField;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel4: TQRLabel;
    QRLSUCURSAL: TQRLabel;
    procedure QRBand7BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand5BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRSubDetail2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand4BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public
    Total : Double;
  end;

var
  RepVentaTipoFac: TRepVentaTipoFac;

implementation

uses SIGMA01;


{$R *.DFM}

procedure TRepVentaTipoFac.QRBand7BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  lbTotal1.Caption := 'Total '+QTipoTFA_NOMBRE.Value;
end;

procedure TRepVentaTipoFac.QRBand5BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  lbTotal2.Caption := 'Total '+QTipoTFA_NOMBRE.Value;
end;

procedure TRepVentaTipoFac.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  Total := 0;
end;

procedure TRepVentaTipoFac.QRSubDetail2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  Total := Total + QContadoFOR_MONTO.Value;
end;

procedure TRepVentaTipoFac.QRSubDetail3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  Total := Total + QCreditoFAC_TOTAL.Value;
end;

procedure TRepVentaTipoFac.QRBand4BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  lbTotal.Caption := Format('%n',[Total]);
end;

end.
