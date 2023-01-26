unit RVENTA103;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, DB, ADODB;

type
  TRCxCVendedorProvincia = class(TQuickRep)
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRSubDetail1: TQRSubDetail;
    QRSubDetail2: TQRSubDetail;
    lbTitulo: TQRLabel;
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
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    lbvendedor: TQRLabel;
    lbprovincia: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QVendedor: TADOQuery;
    QRLabel12: TQRLabel;
    QClientes: TADOQuery;
    QVendedorven_nombre: TStringField;
    dsVendedor: TDataSource;
    QProvincia: TADOQuery;
    QVendedoremp_codigo: TIntegerField;
    QVendedorsuc_codigo: TIntegerField;
    QProvinciapro_nombre: TStringField;
    QProvinciaemp_codigo: TIntegerField;
    QProvinciasuc_codigo: TIntegerField;
    QProvinciapro_codigo: TIntegerField;
    dsProvincia: TDataSource;
    QProvinciaven_codigo: TIntegerField;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    lbCliente: TQRDBText;
    QRDBText9: TQRDBText;
    QRBand4: TQRBand;
    QRExpr1: TQRExpr;
    QRLabel13: TQRLabel;
    QRBand5: TQRBand;
    QRLabel14: TQRLabel;
    QRExpr2: TQRExpr;
    QRBand6: TQRBand;
    QRLabel15: TQRLabel;
    QRExpr3: TQRExpr;
    QVendedorven_codigo: TIntegerField;
    dsClientes: TDataSource;
    QDocs: TADOQuery;
    QDocsmov_tipo: TStringField;
    QDocsmov_numero: TIntegerField;
    QDocsmov_fecha: TDateTimeField;
    QDocsnde_concepto: TStringField;
    QDocsTotal: TBCDField;
    QClientescli_nombre: TStringField;
    QClientescli_codigo: TIntegerField;
    QClientescli_referencia: TStringField;
    QClientesemp_codigo: TIntegerField;
    QClientespro_codigo: TIntegerField;
    QClientesven_codigo: TIntegerField;
    QRSubDetail3: TQRSubDetail;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRBand7: TQRBand;
    QRLabel16: TQRLabel;
    QRExpr4: TQRExpr;
    QRDBText8: TQRDBText;
    QRBand8: TQRBand;
    lbfecha: TQRLabel;
    QDocsmov_monto: TBCDField;
    QDocsmov_abono: TBCDField;
    QRLabel17: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel18: TQRLabel;
    QRDBText15: TQRDBText;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    QRExpr8: TQRExpr;
    QRExpr9: TQRExpr;
    QRExpr10: TQRExpr;
    QRExpr11: TQRExpr;
    QRExpr12: TQRExpr;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  RCxCVendedorProvincia: TRCxCVendedorProvincia;

implementation

uses SIGMA01;

{$R *.DFM}

procedure TRCxCVendedorProvincia.QuickRepBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  if dm.QParametrosPAR_CODIGOCLIENTE.Value = 'I' then
    lbCliente.DataField := 'CLI_CODIGO'
  else
    lbCliente.DataField := 'CLI_REFERENCIA';
end;

end.
