unit RCONT00;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery;

type
  TRRepClientes = class(TQuickRep)
    QRBand1: TQRBand;
    lbTitulo: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel29: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel12: TQRLabel;
    lbTipo: TQRLabel;
    lbCondi: TQRLabel;
    lbFecha: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRLabel21: TQRLabel;
    QRBand3: TQRBand;
    QRDBText10: TQRDBText;
    QRBand4: TQRBand;
    QRLabel7: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel15: TQRLabel;
    lbUsuario: TQRLabel;
    lbStatus: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    lbDesc: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    lbPrecio: TQRLabel;
    QClientes: TIBQuery;
    QClientesCLI_BALANCE: TFloatField;
    QClientesCLI_CEDULA: TIBStringField;
    QClientesCLI_CODIGO: TIntegerField;
    QClientesCLI_CUENTA: TIBStringField;
    QClientesCLI_DESCUENTO: TFloatField;
    QClientesCLI_DIRECCION: TIBStringField;
    QClientesCLI_EMAIL: TIBStringField;
    QClientesCLI_FAX: TIBStringField;
    QClientesCLI_LIMITE: TFloatField;
    QClientesCLI_LOCALIDAD: TIBStringField;
    QClientesCLI_NOMBRE: TIBStringField;
    QClientesCLI_PRECIO: TIBStringField;
    QClientesCLI_REFERENCIA: TIBStringField;
    QClientesCLI_RNC: TIBStringField;
    QClientesCLI_STATUS: TIBStringField;
    QClientesCLI_TELEFONO: TIBStringField;
    QClientesCLI_WEB: TIBStringField;
    QClientesCPA_CODIGO: TIntegerField;
    QClientesEMP_CODIGO: TIntegerField;
    QClientesFPA_CODIGO: TIntegerField;
    QClientesTCL_CODIGO: TIntegerField;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRExpr1: TQRExpr;
    QRLabel19: TQRLabel;
    QRExpr2: TQRExpr;
    QRLabel20: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    lbVend: TQRLabel;
  private

  public

  end;

var
  RRepClientes: TRRepClientes;

implementation

uses CONT01;

{$R *.DFM}

end.
