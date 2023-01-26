unit RSERV01;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls;

type
  TRConsServicios = class(TQuickRep)
    PageHeaderBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel44: TQRLabel;
    QRDBText5: TQRDBText;
    lbTitulo: TQRLabel;
    QRSysData1: TQRSysData;
    lbFecha: TQRLabel;
    DetailBand1: TQRBand;
    Fac2: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRLabel18: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRBand1: TQRBand;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBRichText2: TQRDBRichText;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText18: TQRDBText;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRDBText19: TQRDBText;
    QRSubDetail2: TQRSubDetail;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBRichText3: TQRDBRichText;
    QRDBText26: TQRDBText;
    TallerHeader: TQRBand;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    procedure QRSubDetail2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure TallerHeaderBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  RConsServicios: TRConsServicios;

implementation

uses SIGMA01, SERV05;

{$R *.DFM}

procedure TRConsServicios.QRSubDetail2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRSubDetail2.Enabled := (frmConsServicios.DReport)and(not frmConsServicios.QTaller.IsEmpty);
end;

procedure TRConsServicios.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRSubDetail1.Enabled := (frmConsServicios.DReport)and(not frmConsServicios.QServicios.IsEmpty);
end;

procedure TRConsServicios.TallerHeaderBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  TallerHeader.Enabled := (frmConsServicios.DReport)and(not frmConsServicios.QTaller.IsEmpty);
end;

procedure TRConsServicios.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRBand1.Enabled := (frmConsServicios.DReport)and(not frmConsServicios.QServicios.IsEmpty);
end;

end.
