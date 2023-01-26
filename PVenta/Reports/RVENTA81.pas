unit RVENTA81;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, DB, IBCustomDataSet,
  IBQuery, ADODB;

type
  TRepVentaTipoCliente = class(TQuickRep)
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
    QRExpr4: TQRExpr;
    QFacturas: TADOQuery;
    QTipo: TADOQuery;
    dsForma: TDataSource;
    QRSubDetail1: TQRSubDetail;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText18: TQRDBText;
    QRBand5: TQRBand;
    QRExpr1: TQRExpr;
    QRLabel3: TQRLabel;
    QFacturasFAC_FORMA: TIBStringField;
    QFacturasTFA_CODIGO: TIntegerField;
    QFacturasFAC_NUMERO: TIntegerField;
    QFacturasFAC_NOMBRE: TIBStringField;
    QFacturasFAC_FECHA: TDateTimeField;
    lbGrupo: TQRLabel;
    QTipoSUC_CODIGO: TIntegerField;
    QTipoEMP_CODIGO: TIntegerField;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QTipoTCL_CODIGO: TIntegerField;
    QTipoTCL_NOMBRE: TStringField;
    QFacturasFAC_TOTAL: TBCDField;
    QRLabel5: TQRLabel;
    QRLabel4: TQRLabel;
    QRLSUCURSAL: TQRLabel;
  private

  public

  end;

var
  RepVentaTipoCliente: TRepVentaTipoCliente;

implementation

uses SIGMA01;


{$R *.DFM}

end.
