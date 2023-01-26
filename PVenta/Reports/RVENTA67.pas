unit RVENTA67;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, Db, IBCustomDataSet,
  IBQuery, ADODB;

type
  TRCotMultiple = class(TQuickRep)
    QRBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel14: TQRLabel;
    QRBand3: TQRBand;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRLabel28: TQRLabel;
    lbCliente: TQRDBText;
    QCotizacion: TADOQuery;
    dsCot: TDataSource;
    QDetalle: TADOQuery;
    QCotizacionCOT_CONCEPTO: TIBStringField;
    QCotizacionCOT_FECHA: TDateTimeField;
    QCotizacionCOT_NUMERO: TIntegerField;
    QCotizacionEMP_CODIGO: TIntegerField;
    QCotizacionSUP_CODIGO1: TIntegerField;
    QCotizacionSUP_CODIGO2: TIntegerField;
    QCotizacionSUP_CODIGO3: TIntegerField;
    QCotizacionSUP_CODIGO4: TIntegerField;
    QCotizacionSUP_CODIGO5: TIntegerField;
    QCotizacionUSU_CODIGO: TIntegerField;
    QDetalleCOT_NUMERO: TIntegerField;
    QDetalleDET_CANTIDAD: TFloatField;
    QDetalleDET_MEDIDA: TIBStringField;
    QDetalleDET_MEJORPRECIO: TFloatField;
    QDetalleDET_PRECIOSUP1: TFloatField;
    QDetalleDET_PRECIOSUP2: TFloatField;
    QDetalleDET_PRECIOSUP3: TFloatField;
    QDetalleDET_PRECIOSUP4: TFloatField;
    QDetalleDET_PRECIOSUP5: TFloatField;
    QDetalleDET_SECUENCIA: TIntegerField;
    QDetalleEMP_CODIGO: TIntegerField;
    QDetallePRO_CODIGO: TIntegerField;
    QDetallePRO_NOMBRE: TIBStringField;
    QDetallePRO_RFABRIC: TIBStringField;
    QDetallePRO_RORIGINAL: TIBStringField;
    QRLabel7: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel13: TQRLabel;
    QRDBText13: TQRDBText;
    QCotizacionSUP1: TIBStringField;
    QCotizacionSUP2: TIBStringField;
    QCotizacionSUP3: TIBStringField;
    QCotizacionSUP4: TIBStringField;
    QCotizacionSUP5: TIBStringField;
    QRLabel15: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel16: TQRLabel;
    QRDBText16: TQRDBText;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRDBText15: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
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
  RCotMultiple: TRCotMultiple;

implementation

uses SIGMA01;


{$R *.DFM}

end.
