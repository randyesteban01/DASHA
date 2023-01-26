unit RVENTA102;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, DB, ADODB;

type
  TRepListaTicketsxCajera = class(TQuickRep)
    QRBand1: TQRBand;
    lbTitulo: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel6: TQRLabel;
    lbCajero: TQRLabel;
    lbFecha: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel5: TQRLabel;
    QRLabel11: TQRLabel;
    lbCaja: TQRLabel;
    QRBand2: TQRBand;
    QRLabel21: TQRLabel;
    QRBand3: TQRBand;
    QTotal: TADOQuery;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QTotalusu_nombre: TStringField;
    QTotalTotal: TBCDField;
    QTotalItbis: TBCDField;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRBand5: TQRBand;
    QRExpr3: TQRExpr;
    QRLabel8: TQRLabel;
    QRExpr4: TQRExpr;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    lbprod: TQRLabel;
    QRLabel12: TQRLabel;
    QTotalCantidad: TBCDField;
    QRExpr6: TQRExpr;
    Fac5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QEmpresas: TADOQuery;
    QEmpresasemp_codigo: TIntegerField;
    QEmpresasemp_nombre: TStringField;
    QEmpresasemp_direccion: TStringField;
    QEmpresasemp_localidad: TStringField;
    QEmpresasemp_telefono: TStringField;
    QEmpresasemp_rnc: TStringField;
  private

  public
  end;

var
  RepListaTicketsxCajera: TRepListaTicketsxCajera;

implementation

uses SIGMA00, SIGMA01;

{$R *.DFM}

end.
