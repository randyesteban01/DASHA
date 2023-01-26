unit RCONT02;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery;

type
  TRLimites = class(TQuickRep)
    QRBand1: TQRBand;
    lbTitulo: TQRLabel;
    QRLabel28: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel11: TQRLabel;
    lbCliente: TQRLabel;
    lbFecha: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRLabel19: TQRLabel;
    QRBand3: TQRBand;
    QRDBText12: TQRDBText;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText8: TQRDBText;
    QLimite: TIBQuery;
    QLimiteCLI_CODIGO: TIntegerField;
    QLimiteEMP_CODIGO: TIntegerField;
    QLimiteLIM_CONCEPTO: TIBStringField;
    QLimiteLIM_FECHA: TDateTimeField;
    QLimiteLIM_MONTO: TFloatField;
    QLimiteLIM_SECUENCIA: TIntegerField;
  private

  public

  end;

var
  RLimites: TRLimites;

implementation

uses CONT01;

{$R *.DFM}

end.
