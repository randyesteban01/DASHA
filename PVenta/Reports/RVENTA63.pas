unit RVENTA63;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, DB, IBCustomDataSet,
  IBQuery, ADODB;

type
  TRConteoFisico = class(TQuickRep)
    QRBand1: TQRBand;
    lbTitulo: TQRLabel;
    lbFecha: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRLabel19: TQRLabel;
    QRLabel21: TQRLabel;
    QRBand3: TQRBand;
    QRDBText10: TQRDBText;
    QProd: TADOQuery;
    QProdPRO_CODIGO: TIntegerField;
    QProdPRO_RFABRIC: TIBStringField;
    QProdPRO_RORIGINAL: TIBStringField;
    QProdPRO_NOMBRE: TIBStringField;
    QProdEXI_CANTIDAD: TFloatField;
    QProdEXI_FISICO: TFloatField;
    QProdValor: TFloatField;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText9: TQRDBText;
    QProdALM_NOMBRE: TIBStringField;
    QRLabel9: TQRLabel;
    QRLabel5: TQRLabel;
    QProdEXI_EMPAQUE: TFloatField;
    QProdpro_ubicacion: TStringField;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel16: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel17: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel11: TQRLabel;
    lbFamilia: TQRLabel;
    lbDepto: TQRLabel;
    lbProveedor: TQRLabel;
    QRLabel12: TQRLabel;
    lbGerente: TQRLabel;
    QRLabel13: TQRLabel;
    lbmarca: TQRLabel;
    QRLabel14: TQRLabel;
    lbcolor: TQRLabel;
    QRLabel18: TQRLabel;
    lbpasillo: TQRLabel;
    QRLabel15: TQRLabel;
    lbAlmacen: TQRLabel;
    procedure QProdCalcFields(DataSet: TDataSet);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  RConteoFisico: TRConteoFisico;

implementation

uses SIGMA01;


{$R *.DFM}

procedure TRConteoFisico.QProdCalcFields(DataSet: TDataSet);
begin
  QProdValor.Value := QProdEXI_FISICO.Value - QProdEXI_CANTIDAD.Value;
end;

procedure TRConteoFisico.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  lbAlmacen.Caption := QProdALM_NOMBRE.Value;
end;

end.
