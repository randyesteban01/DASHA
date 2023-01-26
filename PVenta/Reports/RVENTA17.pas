unit RVENTA17;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, DB, IBCustomDataSet,
  IBQuery, ADODB;

type
  TRConsEntrada = class(TQuickRep)
    QRBand1: TQRBand;
    lbTitulo: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel13: TQRLabel;
    lbAlmacen: TQRLabel;
    lbUsuario: TQRLabel;
    lbFecha: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel32: TQRLabel;
    QRBand3: TQRBand;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText15: TQRDBText;
    QRBand4: TQRBand;
    QRLabel20: TQRLabel;
    QRLabel38: TQRLabel;
    QRExpr1: TQRExpr;
    QEntradas: TADOQuery;
    QEntradasEMP_CODIGO: TIntegerField;
    QEntradasENT_CONCEPTO: TIBStringField;
    QEntradasENT_FECHA: TDateTimeField;
    QEntradasENT_NUMERO: TIntegerField;
    QEntradasENT_STATUS: TIBStringField;
    QEntradasENT_TOTAL: TFloatField;
    QEntradasUSU_NOMBRE: TIBStringField;
    QEntradasALM_NOMBRE: TIBStringField;
    QRLabel3: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    lbProv: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText7: TQRDBText;
    QEntradasENT_ITBIS: TBCDField;
    QEntradasSubTotal: TFloatField;
    QRDBText11: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRExpr2: TQRExpr;
    procedure QEntradasCalcFields(DataSet: TDataSet);
  private

  public

  end;

var
  RConsEntrada: TRConsEntrada;

implementation

uses SIGMA01;


{$R *.DFM}

procedure TRConsEntrada.QEntradasCalcFields(DataSet: TDataSet);
begin
  QEntradasSubTotal.Value := QEntradasENT_TOTAL.Value - QEntradasENT_ITBIS.Value;
end;

end.
