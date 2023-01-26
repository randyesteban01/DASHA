unit RVENTA61;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, DB, IBCustomDataSet,
  IBQuery, ADODB;

type
  TRProdMarca = class(TQuickRep)
    QRBand1: TQRBand;
    lbTitulo: TQRLabel;
    lbFecha: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRLabel19: TQRLabel;
    QRLabel21: TQRLabel;
    QRBand3: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QProductos: TADOQuery;
    QProductosPRO_CODIGO: TIntegerField;
    QProductosPRO_EXISTENCIA: TFloatField;
    QProductosPRO_NOMBRE: TIBStringField;
    QProductosPRO_PRECIO1: TFloatField;
    QProductosPRO_PRECIO2: TFloatField;
    QProductosPRO_PRECIO3: TFloatField;
    QProductosPRO_PRECIO4: TFloatField;
    QProductosPRO_RFABRIC: TIBStringField;
    QProductosPRO_RORIGINAL: TIBStringField;
    QMarcas: TADOQuery;
    dsDeptos: TDataSource;
    QRSubDetail1: TQRSubDetail;
    QRDBText10: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText16: TQRDBText;
    QMarcasMAR_CODIGO: TIntegerField;
    QMarcasMAR_NOMBRE: TIBStringField;
    QMarcasEMP_CODIGO: TIntegerField;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel15: TQRLabel;
    QRDBText7: TQRDBText;
    QProductosPRO_EXISTEMPAQUE: TFloatField;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
  private

  public

  end;

var
  RProdMarca: TRProdMarca;

implementation

uses SIGMA01;


{$R *.DFM}

end.
