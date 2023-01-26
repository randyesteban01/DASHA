unit RVENTA101;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, DB, ADODB;

type
  TRepListaTicketsxHora = class(TQuickRep)
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
    QRLabel16: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel21: TQRLabel;
    QRBand3: TQRBand;
    QRBand4: TQRBand;
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
    Fac1: TQRDBText;
    QTotalcaja: TIntegerField;
    QTotalusu_nombre: TStringField;
    QTotalTotal: TBCDField;
    QTotalItbis: TBCDField;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRExpr1: TQRExpr;
    QRLabel7: TQRLabel;
    QRExpr2: TQRExpr;
    QHoras: TADOQuery;
    dsHoras: TDataSource;
    QRSubDetail1: TQRSubDetail;
    Fac3: TQRDBText;
    Fac5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRBand5: TQRBand;
    QRExpr3: TQRExpr;
    QRLabel8: TQRLabel;
    QRExpr4: TQRExpr;
    QHorasfecha_hora: TStringField;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    lbprod: TQRLabel;
    QRLabel12: TQRLabel;
    QTotalCantidad: TBCDField;
    QRDBText8: TQRDBText;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
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
  RepListaTicketsxHora: TRepListaTicketsxHora;

implementation

uses SIGMA00, SIGMA01;

{$R *.DFM}

end.
