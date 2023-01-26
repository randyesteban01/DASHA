unit RVENTA96;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, DB, ADODB;

type
  TRConsBeneficioTickets = class(TQuickRep)
    QRBand1: TQRBand;
    lbTitulo: TQRLabel;
    lbFecha: TQRLabel;
    QRSysData1: TQRSysData;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRBand2: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRBand3: TQRBand;
    QTickets: TADOQuery;
    QTicketsusu_codigo: TIntegerField;
    QTicketsfecha: TDateTimeField;
    QTicketsticket: TIntegerField;
    QTicketsusu_nombre: TStringField;
    QTicketstotal: TBCDField;
    QTicketsdescuento: TBCDField;
    QTicketsTipo: TStringField;
    QTicketsCosto: TBCDField;
    QTicketsItbis: TBCDField;
    QTicketsBeneficio: TFloatField;
    QTicketscaja: TIntegerField;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel17: TQRLabel;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRBand4: TQRBand;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    procedure QTicketsCalcFields(DataSet: TDataSet);
  private

  public

  end;

var
  RConsBeneficioTickets: TRConsBeneficioTickets;

implementation

{$R *.DFM}

procedure TRConsBeneficioTickets.QTicketsCalcFields(DataSet: TDataSet);
begin
  QTicketsBeneficio.Value := QTicketstotal.Value - (QTicketsCosto.Value + QTicketsItbis.Value);
end;

end.
