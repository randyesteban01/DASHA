unit RCONT01;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery;

type
  TRRepProveedores = class(TQuickRep)
    QRBand1: TQRBand;
    lbTitulo: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText5: TQRDBText;
    lbFecha: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel30: TQRLabel;
    QRBand3: TQRBand;
    QRBand4: TQRBand;
    QRLabel20: TQRLabel;
    QRExpr1: TQRExpr;
    QRLabel7: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel15: TQRLabel;
    lbUsuario: TQRLabel;
    lbStatus: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText6: TQRDBText;
    QProv: TIBQuery;
    QProvEMP_CODIGO: TIntegerField;
    QProvSUP_BALANCE: TFloatField;
    QProvSUP_CODIGO: TIntegerField;
    QProvSUP_CUENTA: TIBStringField;
    QProvSUP_DIRECCION: TIBStringField;
    QProvSUP_EMAIL: TIBStringField;
    QProvSUP_FAX: TIBStringField;
    QProvSUP_LOCALIDAD: TIBStringField;
    QProvSUP_NOMBRE: TIBStringField;
    QProvSUP_RNC: TIBStringField;
    QProvSUP_STATUS: TIBStringField;
    QProvSUP_TELEFONO: TIBStringField;
    QProvSUP_VENDEDOR: TIBStringField;
    QProvSUP_WEB: TIBStringField;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
  private

  public

  end;

var
  RRepProveedores: TRRepProveedores;

implementation

uses CONT01;

{$R *.DFM}

end.
