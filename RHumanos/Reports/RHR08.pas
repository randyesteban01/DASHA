unit RHR08;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, ADODB;

type
  TRepNominaDescuento = class(TQuickRep)
    QRBand1: TQRBand;
    QRDBText1: TQRDBText;
    lbtitulo: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    s: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel1: TQRLabel;
    QEmpleados: TADOQuery;
    QEmpleadosemp_numero: TIntegerField;
    QEmpleadosNombre: TStringField;
    QEmpleadosemp_cedula: TStringField;
    QEmpleadosMonto: TBCDField;
    QRBand3: TQRBand;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText2: TQRDBText;
    QRBand2: TQRBand;
    QRExpr1: TQRExpr;
    QRLabel4: TQRLabel;
  private

  public

  end;

var
  RepNominaDescuento: TRepNominaDescuento;

implementation

uses SIGMA01;

{$R *.DFM}

end.
