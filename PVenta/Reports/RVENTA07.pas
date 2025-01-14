unit RVENTA07;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, DB, IBCustomDataSet,
  IBQuery, ADODB;

type
  TRConsFacturasProd = class(TQuickRep)
    QRBand1: TQRBand;
    lbTitulo: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel11: TQRLabel;
    lbProd: TQRLabel;
    lbFecha: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRBand3: TQRBand;
    QRBand4: TQRBand;
    QFacturas: TADOQuery;
    QFacturasALM_CODIGO: TIntegerField;
    QFacturasCAJ_CODIGO: TIntegerField;
    QFacturasCLI_CODIGO: TIntegerField;
    QFacturasCLI_REFERENCIA: TIBStringField;
    QFacturasCOT_NUMERO: TIntegerField;
    QFacturasCPA_CODIGO: TIntegerField;
    QFacturasEMP_CODIGO: TIntegerField;
    QFacturasFAC_ABONO: TFloatField;
    QFacturasFAC_DESCUENTO: TFloatField;
    QFacturasFAC_DIRECCION: TIBStringField;
    QFacturasFAC_FAX: TIBStringField;
    QFacturasFAC_FECHA: TDateTimeField;
    QFacturasFAC_FORMA: TIBStringField;
    QFacturasFAC_ITBIS: TFloatField;
    QFacturasFAC_LOCALIDAD: TIBStringField;
    QFacturasFAC_NOMBRE: TIBStringField;
    QFacturasFAC_NUMERO: TIntegerField;
    QFacturasFAC_OTROS: TFloatField;
    QFacturasFAC_STATUS: TIBStringField;
    QFacturasFAC_TELEFONO: TIBStringField;
    QFacturasFAC_TOTAL: TFloatField;
    QFacturasPED_NUMERO: TIntegerField;
    QFacturasTFA_CODIGO: TIntegerField;
    QFacturasUSU_CODIGO: TIntegerField;
    QFacturasVEN_CODIGO: TIntegerField;
    QFacturasUSU_NOMBRE: TIBStringField;
    QFacturasCAJ_NOMBRE: TIBStringField;
    QFacturasFAC_VENCE: TDateTimeField;
    QFacturasDET_CANTIDAD: TFloatField;
    QFacturasDET_MEDIDA: TIBStringField;
    QFacturasDET_PRECIO: TFloatField;
    QFacturasDET_DESCUENTO: TFloatField;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QFacturasValor: TFloatField;
    QFacturasCalcDesc: TFloatField;
    QFacturasDET_ITBIS: TFloatField;
    QFacturasDET_CONITBIS: TIBStringField;
    QRExpr1: TQRExpr;
    QRLabel7: TQRLabel;
    QFacturassuc_nombre: TStringField;
    QSucursal: TADOQuery;
    QSucursalsuc_nombre: TStringField;
    dsSuc: TDataSource;
    QSucursalemp_codigo: TIntegerField;
    QRSubDetail1: TQRSubDetail;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QSucursalsuc_codigo: TIntegerField;
    QRBand5: TQRBand;
    QRExpr2: TQRExpr;
    QRLabel8: TQRLabel;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRLabel9: TQRLabel;
    QRDBText17: TQRDBText;
    QFacturasdet_cant_oferta: TBCDField;
    QRLabel10: TQRLabel;
    QRLabel12: TQRLabel;
    lbProv: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    lbVendedor: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QFacturasFAC_NOTA: TMemoField;
    qSucursal2: TADOQuery;
    StringField1: TStringField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    procedure QFacturasCalcFields(DataSet: TDataSet);
  private

  public

  end;

var
  RConsFacturasProd: TRConsFacturasProd;

implementation

uses SIGMA01;


{$R *.DFM}

procedure TRConsFacturasProd.QFacturasCalcFields(DataSet: TDataSet);
var
  Venta, NumItbis : Double;
begin
  if QFacturasDET_CONITBIS.value = 'S' then
  begin
    Venta    := strtofloat(format('%10.2f',[(QFacturasDET_PRECIO.value)]));
    QFacturasCalcDesc.value    := strtofloat(format('%10.2f',[(Venta *
                                 strtofloat(format('%10.2f',[QFacturasDET_DESCUENTO.value])))/100]));
    QFacturasValor.value       := ((strtofloat(format('%10.2f',[Venta]))-
                                 strtofloat(format('%10.2f',[QFacturasCalcDesc.value])))*
                                 strtofloat(format('%10.2f',[QFacturasDET_CANTIDAD.value])));
  end
  else
  begin
    Venta := strtofloat(format('%10.2f',[QFacturasDET_PRECIO.value]));
    QFacturasCalcDesc.value    := strtofloat(format('%10.2f',[(Venta * QFacturasDET_DESCUENTO.value)/100]));
    QFacturasValor.value       := strtofloat(format('%10.2f',[(Venta-QFacturasCalcDesc.value)*QFacturasDET_CANTIDAD.value]));
  end;
end;

end.
