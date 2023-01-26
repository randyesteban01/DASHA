unit RVENTA91;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, DB, ADODB;

type
  TRepResumenTicket = class(TQuickRep)
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
    QRLabel19: TQRLabel;
    QRLabel7: TQRLabel;
    QRBand3: TQRBand;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QResumen: TADOQuery;
    QRBand4: TQRBand;
    QEmpresas: TADOQuery;
    QEmpresasemp_codigo: TIntegerField;
    QEmpresasemp_nombre: TStringField;
    QEmpresasemp_direccion: TStringField;
    QEmpresasemp_localidad: TStringField;
    QEmpresasemp_telefono: TStringField;
    QEmpresasemp_rnc: TStringField;
    QResumenusu_codigo: TIntegerField;
    QResumenusu_nombre: TStringField;
    QResumencaja: TIntegerField;
    QResumentotal: TBCDField;
    QResumenefectivo: TBCDField;
    QResumencheque: TBCDField;
    QResumentarjeta: TBCDField;
    QResumencredito: TBCDField;
    QResumenbonos: TBCDField;
    QRLabel9: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRLabel3: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    QResumenNombreCaja: TStringField;
    QResumennc: TBCDField;
    QResumendescuento: TBCDField;
  private

  public

  end;

var
  RepResumenTicket: TRepResumenTicket;

implementation

uses SIGMA01;

{$R *.DFM}

end.
