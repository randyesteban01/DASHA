unit RVENTA74;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, DB, ADODB;

type
  TRepTicketsCR = class(TQuickRep)
    QRBand1: TQRBand;
    lbTitulo: TQRLabel;
    lbFecha: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRLabel16: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRBand3: TQRBand;
    Fac1: TQRDBText;
    Fac4: TQRDBText;
    Fac5: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRBand4: TQRBand;
    QRExpr1: TQRExpr;
    QRLabel3: TQRLabel;
    QMovimientos: TADOQuery;
    QMovimientosemp_codigo: TIntegerField;
    QMovimientossuc_codigo: TIntegerField;
    QMovimientosmov_tipo: TStringField;
    QMovimientosmov_numero: TIntegerField;
    QMovimientosmov_fecha: TDateTimeField;
    QMovimientosmov_monto: TBCDField;
    QMovimientosmov_abono: TBCDField;
    QMovimientosmov_status: TStringField;
    QMovimientosmov_fechavence: TDateTimeField;
    QMovimientosmov_ticket: TStringField;
    QMovimientoscli_nombre: TStringField;
    QRDBText6: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QEmpresas: TADOQuery;
    QEmpresasemp_codigo: TIntegerField;
    QEmpresasemp_nombre: TStringField;
    QEmpresasemp_direccion: TStringField;
    QEmpresasemp_localidad: TStringField;
    QEmpresasemp_telefono: TStringField;
    QEmpresasemp_rnc: TStringField;
    dsEmpresas: TDataSource;
    QRLabel24: TQRLabel;
    QRLabel6: TQRLabel;
    lbCajero: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel11: TQRLabel;
    lbCaja: TQRLabel;
  private

  public

  end;

var
  RepTicketsCR: TRepTicketsCR;

implementation

uses SIGMA01;

{$R *.DFM}

end.
