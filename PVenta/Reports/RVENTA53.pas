unit RVENTA53;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, DB, IBCustomDataSet,
  IBQuery, ADODB;

type
  TRRepEtiqClientes = class(TQuickRep)
    QRBand3: TQRBand;
    QClientes: TADOQuery;
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
    QRDBText6: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
  private

  public

  end;

var
  RRepEtiqClientes: TRRepEtiqClientes;

implementation

uses SIGMA01;


{$R *.DFM}

end.
