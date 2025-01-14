unit RVENTA19;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, DB, IBCustomDataSet,
  IBQuery, ADODB;

type
  TRConsPedidosCli = class(TQuickRep)
    QRBand1: TQRBand;
    lbTitulo: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    lbVendedor: TQRLabel;
    lbCliente: TQRLabel;
    lbCondi: TQRLabel;
    lbUsuario: TQRLabel;
    lbNombre: TQRLabel;
    lbStatus: TQRLabel;
    lbFecha: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel33: TQRLabel;
    QRBand3: TQRBand;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText16: TQRDBText;
    QRBand4: TQRBand;
    QRLabel20: TQRLabel;
    QRLabel38: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr4: TQRExpr;
    QPedidos: TADOQuery;
    QPedidosCLI_CODIGO: TIntegerField;
    QPedidosCLI_REFERENCIA: TIBStringField;
    QPedidosCPA_CODIGO: TIntegerField;
    QPedidosEMP_CODIGO: TIntegerField;
    QPedidosPED_COTIZACION: TIntegerField;
    QPedidosPED_DESCUENTO: TFloatField;
    QPedidosPED_DIRECCION: TIBStringField;
    QPedidosPED_FAX: TIBStringField;
    QPedidosPED_FECHA: TDateTimeField;
    QPedidosPED_ITBIS: TFloatField;
    QPedidosPED_LOCALIDAD: TIBStringField;
    QPedidosPED_NOMBRE: TIBStringField;
    QPedidosPED_NOTA: TMemoField;
    QPedidosPED_NUMERO: TIntegerField;
    QPedidosPED_OTROS: TFloatField;
    QPedidosPED_STATUS: TIBStringField;
    QPedidosPED_TELEFONO: TIBStringField;
    QPedidosPED_TIPO: TIBStringField;
    QPedidosPED_TOTAL: TFloatField;
    QPedidosSUP_CODIGO: TIntegerField;
    QPedidosVEN_CODIGO: TIntegerField;
    QPedidosUSU_NOMBRE: TIBStringField;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    lbOrden: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
  private

  public

  end;

var
  RConsPedidosCli: TRConsPedidosCli;

implementation

uses SIGMA01;


{$R *.DFM}

end.
