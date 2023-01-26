unit RVENTA89;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, DB, ADODB;

type
  TRepProductosDespachados = class(TQuickRep)
    QRBand1: TQRBand;
    lbTitulo: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel11: TQRLabel;
    lbCliente: TQRLabel;
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
    QRLabel9: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QProductos: TADOQuery;
    QProductosid: TAutoIncField;
    QProductosCodigo: TIntegerField;
    QProductosNombre: TStringField;
    QProductosPedida: TBCDField;
    QProductosDespachada: TBCDField;
    QProductosNum_Pedido: TIntegerField;
    QProductosFecha: TDateTimeField;
    QRBand3: TQRBand;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QProductosPendiente: TFloatField;
    QRDBText12: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QProductosFacturada: TBCDField;
    QRDBText10: TQRDBText;
    QProductosPendienteFac: TFloatField;
    QRDBText11: TQRDBText;
    procedure QProductosCalcFields(DataSet: TDataSet);
  private

  public

  end;

var
  RepProductosDespachados: TRepProductosDespachados;

implementation

uses SIGMA01;

{$R *.DFM}

procedure TRepProductosDespachados.QProductosCalcFields(DataSet: TDataSet);
begin
  QProductosPendiente.Value := QProductosPedida.Value - QProductosDespachada.Value;
  QProductosPendienteFac.Value := QProductosPedida.Value - QProductosFacturada.Value;
end;

end.
