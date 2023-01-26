unit RVENTA08;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, DB, IBCustomDataSet,
  IBQuery, ADODB;

type
  TRConsDev = class(TQuickRep)
    QRBand1: TQRBand;
    lbTitulo: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel15: TQRLabel;
    lbGrupo: TQRLabel;
    lbTipo: TQRLabel;
    lbVendedor: TQRLabel;
    lbCajero: TQRLabel;
    lbCliente: TQRLabel;
    lbUsuario: TQRLabel;
    lbStatus: TQRLabel;
    lbFecha: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel30: TQRLabel;
    QRBand3: TQRBand;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRBand4: TQRBand;
    QRLabel20: TQRLabel;
    QRExpr4: TQRExpr;
    QDev: TADOQuery;
    QDevDEV_DESCUENTO: TFloatField;
    QDevDEV_DEVDINERO: TIBStringField;
    QDevDEV_FECHA: TDateTimeField;
    QDevDEV_ITBIS: TFloatField;
    QDevDEV_NUMERO: TIntegerField;
    QDevDEV_STATUS: TIBStringField;
    QDevDEV_TOTAL: TFloatField;
    QDevFAC_FORMA: TIBStringField;
    QDevFAC_NUMERO: TIntegerField;
    QDevTFA_CODIGO: TIntegerField;
    QDevUSU_NOMBRE: TIBStringField;
    QDevEMP_CODIGO: TIntegerField;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QDevticket_cajero: TIntegerField;
    QDevticket_numero: TIntegerField;
    QDevticket_fecha: TDateTimeField;
    QDevticket_caja: TIntegerField;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel12: TQRLabel;
    QDevncf_modifica: TStringField;
    QDevdev_fecha_factura: TDateTimeField;
    QDevNCF: TStringField;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText10: TQRDBText;
    QRExpr1: TQRExpr;
  private

  public

  end;

var
  RConsDev: TRConsDev;

implementation

uses SIGMA01;


{$R *.DFM}

end.
