unit RVENTA60;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, DB, IBCustomDataSet,
  IBQuery, ADODB;

type
  TRepVentaMarca = class(TQuickRep)
    QRBand1: TQRBand;
    lbTitulo: TQRLabel;
    lbFecha: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRLabel31: TQRLabel;
    QRBand3: TQRBand;
    QRBand4: TQRBand;
    QRExpr4: TQRExpr;
    QFacturas: TADOQuery;
    QMarcas: TADOQuery;
    dsForma: TDataSource;
    QRSubDetail1: TQRSubDetail;
    QRDBText14: TQRDBText;
    QRDBText18: TQRDBText;
    QRBand5: TQRBand;
    QRExpr1: TQRExpr;
    QRLabel3: TQRLabel;
    QFacturasTOTAL: TFloatField;
    lbGrupo: TQRLabel;
    QMarcasMAR_CODIGO: TIntegerField;
    QMarcasMAR_NOMBRE: TIBStringField;
    QMarcasSUC_CODIGO: TIntegerField;
    QMarcasEMP_CODIGO: TIntegerField;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QFacturasCANTIDAD: TBCDField;
    QRDBText11: TQRDBText;
    QRLabel4: TQRLabel;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel21: TQRLabel;
    QFacturasPRO_CODIGO: TIntegerField;
    QFacturasPRO_RORIGINAL: TStringField;
    QFacturasPRO_NOMBRE: TStringField;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText10: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLSUCURSAL: TQRLabel;
  private

  public

  end;

var
  RepVentaMarca: TRepVentaMarca;

implementation

uses SIGMA01;


{$R *.DFM}

end.
