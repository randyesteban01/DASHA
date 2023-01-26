unit RVENTA112;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, DB, IBCustomDataSet,
  IBQuery, ADODB;

type
  TRepVentaGerenteProveedor = class(TQuickRep)
    QRBand1: TQRBand;
    lbTitulo: TQRLabel;
    lbAno: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel5: TQRLabel;
    lbmes1: TQRLabel;
    QRDBText7: TQRDBText;
    lbtipo: TQRLabel;
    lbMes: TQRLabel;
    QReporte: TADOQuery;
    QReportecodigo: TIntegerField;
    QReporteproveedor: TStringField;
    QReportemonto1: TBCDField;
    QReportemonto2: TBCDField;
    QReportemonto3: TBCDField;
    QReporteTotal: TFloatField;
    QReporteVariacion1: TFloatField;
    QReporteVariacion2: TFloatField;
    QReporteVariacion3: TFloatField;
    QRDBText6: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    lbmes2: TQRLabel;
    QRLabel7: TQRLabel;
    lbmes3: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRBand4: TQRBand;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr6: TQRExpr;
    QRLabel3: TQRLabel;
    lbtotal1: TQRLabel;
    lbtotal2: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLSUCURSAL: TQRLabel;
    procedure QReporteCalcFields(DataSet: TDataSet);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand4BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public
     total1, total2, total3 : double;
  end;

var
  RepVentaGerenteProveedor: TRepVentaGerenteProveedor;

implementation

uses SIGMA01;


{$R *.DFM}

procedure TRepVentaGerenteProveedor.QReporteCalcFields(DataSet: TDataSet);
begin
  QReporteTotal.Value := QReportemonto1.Value + QReportemonto2.Value + QReportemonto3.Value;
  QReporteVariacion1.Value := 0;
  QReporteVariacion2.Value := 0;
  if (QReportemonto1.Value > 0) then
    QReporteVariacion1.Value := ((QReportemonto2.Value - QReportemonto1.Value)/QReportemonto1.Value)*100;

  if (QReportemonto2.Value > 0) then
    QReporteVariacion2.Value := ((QReportemonto3.Value - QReportemonto2.Value)/QReportemonto2.Value)*100;
end;

procedure TRepVentaGerenteProveedor.QuickRepBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  total1 := 0; total2 := 0; total3 := 0;
end;

procedure TRepVentaGerenteProveedor.QRBand3BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  total1 := total1 + QReportemonto1.Value;
  total2 := total2 + QReportemonto2.Value;
  total3 := total3 + QReportemonto3.Value;
end;

procedure TRepVentaGerenteProveedor.QRBand4BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  lbtotal1.Caption := format('%n',[(((total2-total1)/total1)*100)])+'%';
  lbtotal2.Caption := format('%n',[(((total3-total2)/total2)*100)])+'%';
end;

end.
