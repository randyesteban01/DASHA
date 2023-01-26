unit RHR06;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, ADODB;

type
  TRepNominaFormaPago = class(TQuickRep)
    QRBand1: TQRBand;
    QRDBText1: TQRDBText;
    lbtitulo: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    s: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRBand3: TQRBand;
    QEmpleados: TADOQuery;
    QEmpleadosemp_numero: TIntegerField;
    QEmpleadosNombre: TStringField;
    QEmpleadosemp_cedula: TStringField;
    QEmpleadosemp_cuenta_bancaria: TStringField;
    QEmpleadosMonto: TBCDField;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRBand2: TQRBand;
    QRExpr1: TQRExpr;
    QRLabel4: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel1: TQRLabel;
  private

  public

  end;

var
  RepNominaFormaPago: TRepNominaFormaPago;

implementation

uses SIGMA01;

{$R *.DFM}

end.
