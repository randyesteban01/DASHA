unit RVENTA14;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, DB, IBCustomDataSet,
  IBQuery, ADODB;

type
  TRConsCxP = class(TQuickRep)
    QRBand1: TQRBand;
    lbTitulo: TQRLabel;
    lbFecha: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRBand3: TQRBand;
    QRDBText10: TQRDBText;
    QProv: TADOQuery;
    QProvEMP_CODIGO: TIntegerField;
    QProvSUP_CODIGO: TIntegerField;
    QProvSUP_NOMBRE: TIBStringField;
    QProvBALANCE: TFloatField;
    dsProv: TDataSource;
    QFac: TADOQuery;
    QFacFAC_NUMERO: TIBStringField;
    QFacFAC_FECHA: TDateTimeField;
    QFacFAC_VENCE: TDateTimeField;
    QFacFAC_TOTAL: TFloatField;
    QFacFAC_ABONO: TFloatField;
    QFacSaldo: TFloatField;
    QFacEMP_CODIGO: TIntegerField;
    QFacSUP_CODIGO: TIntegerField;
    QRLabel3: TQRLabel;
    QRDBText6: TQRDBText;
    QRSubDetail1: TQRSubDetail;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText11: TQRDBText;
    QRBand5: TQRBand;
    QRExpr1: TQRExpr;
    QRLabel4: TQRLabel;
    QRBand4: TQRBand;
    QRLabel5: TQRLabel;
    QRExpr2: TQRExpr;
    QProvid: TAutoIncField;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    lbmoneda: TQRLabel;
    QFacDiasFac: TIntegerField;
    QRLabel6: TQRLabel;
    QRDBText12: TQRDBText;
    procedure QFacCalcFields(DataSet: TDataSet);
    procedure QProvAfterScroll(DataSet: TDataSet);
  private

  public

  end;

var
  RConsCxP: TRConsCxP;

implementation

uses SIGMA01;


{$R *.DFM}

procedure TRConsCxP.QFacCalcFields(DataSet: TDataSet);
begin
  QFacSaldo.value := QFacFAC_TOTAL.value - QFacFAC_ABONO.value;
end;

procedure TRConsCxP.QProvAfterScroll(DataSet: TDataSet);
begin
  QFac.Close;
  QFac.Parameters.ParamByName('emp_codigo').Value := dm.vp_cia;
  QFac.Parameters.ParamByName('sup_codigo').Value := QProvSUP_CODIGO.Value;
  QFac.Open;
end;

end.
