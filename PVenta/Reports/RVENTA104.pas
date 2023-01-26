unit RVENTA104;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, DB, IBCustomDataSet,
  IBQuery, ADODB;

type
  TRConsNCProv = class(TQuickRep)
    QRBand1: TQRBand;
    lbTitulo: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel15: TQRLabel;
    lbProv: TQRLabel;
    lbUsuario: TQRLabel;
    lbStatus: TQRLabel;
    lbFecha: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel31: TQRLabel;
    QRBand3: TQRBand;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText14: TQRDBText;
    QRBand4: TQRBand;
    QRLabel20: TQRLabel;
    QRLabel38: TQRLabel;
    QRExpr1: TQRExpr;
    QNotas: TADOQuery;
    QRLabel3: TQRLabel;
    QRDBText12: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel19: TQRLabel;
    QNotasemp_codigo: TIntegerField;
    QNotassuc_codigo: TIntegerField;
    QNotasncr_numero: TIntegerField;
    QNotasncr_fecha: TDateTimeField;
    QNotasncr_concepto: TStringField;
    QNotasncr_monto: TBCDField;
    QNotasncr_status: TStringField;
    QNotasncr_montousado: TBCDField;
    QNotasncr_devolucion: TIntegerField;
    QNotassup_codigo: TIntegerField;
    QNotasfac_numero: TStringField;
    QNotasusu_codigo: TIntegerField;
    QNotasncr_usuario_anulo: TStringField;
    QNotasncr_motivo_anulo: TStringField;
    QNotassup_nombre: TStringField;
    QRLabel5: TQRLabel;
    QRDBText6: TQRDBText;
    QNotasncr_ncf: TStringField;
    QNotasncr_itbis: TBCDField;
    QRExpr2: TQRExpr;
  private

  public

  end;

var
  RConsNCProv: TRConsNCProv;

implementation

uses SIGMA01;


{$R *.DFM}

end.
