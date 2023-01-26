unit RVENTA105;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, DB, IBCustomDataSet,
  IBQuery, ADODB;

type
  TRCxCGeneral = class(TQuickRep)
    QRBand1: TQRBand;
    lbTitulo: TQRLabel;
    lbFecha: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRLabel21: TQRLabel;
    QRBand3: TQRBand;
    QRDBText10: TQRDBText;
    QRBand4: TQRBand;
    QClientes: TADOQuery;
    QClientesCLI_BALANCE: TFloatField;
    QClientesCLI_CODIGO: TIntegerField;
    QClientesCLI_LIMITE: TFloatField;
    QClientesCLI_NOMBRE: TIBStringField;
    QClientesCLI_RNC: TIBStringField;
    QClientesCLI_TELEFONO: TIBStringField;
    QRLabel10: TQRLabel;
    QRLabel18: TQRLabel;
    lbCliente: TQRDBText;
    QRDBText12: TQRDBText;
    QRLabel19: TQRLabel;
    QRExpr2: TQRExpr;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel17: TQRLabel;
    QRLabel30: TQRLabel;
    QRDBText14: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel3: TQRLabel;
    QRExpr1: TQRExpr;
    QRLabel4: TQRLabel;
    QRSUCURSAL: TQRLabel;
    QRLabel5: TQRLabel;
    QRPDFFilter1: TQRPDFFilter;
    QRExcelFilter1: TQRExcelFilter;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  RCxCGeneral: TRCxCGeneral;

implementation

uses SIGMA01;


{$R *.DFM}

procedure TRCxCGeneral.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  if dm.QParametrosPAR_CODIGOCLIENTE.Value = 'I' then
    lbCliente.DataField := 'CLI_CODIGO'
  else
    lbCliente.DataField := 'CLI_REFERENCIA';
end;

end.
