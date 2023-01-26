unit RVENTA51;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, DB, IBCustomDataSet,
  IBQuery, ADODB;

type
  TRRepProdVendidos = class(TQuickRep)
    QRBand1: TQRBand;
    lbTitulo: TQRLabel;
    lbFecha: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRDBText12: TQRDBText;
    QRLabel7: TQRLabel;
    QProductos: TADOQuery;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel15: TQRLabel;
    QProductosPRO_NOMBRE: TIBStringField;
    QProductosCANTIDAD: TFloatField;
    QProductosPRECIO: TFloatField;
    QRBand4: TQRBand;
    QRLabel25: TQRLabel;
    QRLabel13: TQRLabel;
    lbProveedor: TQRLabel;
    QRExpr1: TQRExpr;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    lbProvincia: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel16: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText13: TQRDBText;
    QProductosDESCUENTO: TBCDField;
    QProductosITBIS: TBCDField;
    QProductosSELECTIVO_AD: TBCDField;
    QProductosSELECTIVO_CON: TBCDField;
    QProductosTotal: TFloatField;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    lbFamilia: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    lbDepto: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    lbMarca: TQRLabel;
    QProductospro_codigo: TIntegerField;
    QRLabel24: TQRLabel;
    QRLabel28: TQRLabel;
    lbVendedor: TQRLabel;
    QProductosImpuestos: TFloatField;
    QRLabel9: TQRLabel;
    QRLabel14: TQRLabel;
    QProductospro_roriginal: TStringField;
    QRLabel18: TQRLabel;
    QRDBText11: TQRDBText;
    QAnterior: TADOQuery;
    QAnteriorpro_codigo: TIntegerField;
    QAnteriorpro_nombre: TStringField;
    QAnteriorpro_roriginal: TStringField;
    QAnteriorcantidad: TBCDField;
    QAnteriorprecio: TBCDField;
    QAnteriordescuento: TBCDField;
    QAnterioritbis: TBCDField;
    QAnteriorselectivo_ad: TBCDField;
    QAnteriorselectivo_con: TBCDField;
    QAnteriorTotal: TFloatField;
    QProductosAnterior: TFloatField;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    lbCliente: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel17: TQRLabel;
    QProductosCantAnterior: TFloatField;
    QProductosTotalVolumen: TFloatField;
    lbProd: TQRDBText;
    QRLabel19: TQRLabel;
    QRLabel33: TQRLabel;
    lbpreventa: TQRLabel;
    lbMoneda: TQRLabel;
    QRLabel34: TQRLabel;
    QRExpr2: TQRExpr;
    QRLabel35: TQRLabel;
    QRExpr3: TQRExpr;
    QRLabel36: TQRLabel;
    QRExpr4: TQRExpr;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    lbGerente: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    lbgondolero: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    lbColor: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel46: TQRLabel;
    lbTipo: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    PageFooterBand1: TQRBand;
    qrlUsuario: TQRLabel;
    procedure QProductosCalcFields(DataSet: TDataSet);
    procedure QAnteriorCalcFields(DataSet: TDataSet);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QProductosBeforeOpen(DataSet: TDataSet);
  private

  public

  end;

var
  RRepProdVendidos: TRRepProdVendidos;

implementation

uses SIGMA01;


{$R *.DFM}

procedure TRRepProdVendidos.QProductosCalcFields(DataSet: TDataSet);
begin
  QProductosTotal.Value := (QProductosPRECIO.Value - QProductosDESCUENTO.Value) + QProductosITBIS.Value;
  QProductosImpuestos.Value := strtofloat(format('%10.2f',[QProductosITBIS.Value]));
      
  //QProductosTotalVolumen.Value := QProductosCANTIDAD.Value * QProductospro_volumen.Value;
end;

procedure TRRepProdVendidos.QAnteriorCalcFields(DataSet: TDataSet);
begin
  QAnteriorTotal.Value := QAnteriorPRECIO.Value - QAnteriorDESCUENTO.Value + (QAnteriorSELECTIVO_AD.Value +
                           QAnteriorSELECTIVO_CON.Value + QAnteriorITBIS.Value);
end;

procedure TRRepProdVendidos.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'I' then
     lbProd.DataField := 'PRO_CODIGO'
  else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'F' then
     lbProd.DataField := 'PRO_RFABRIC'
  else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'O' then
     lbProd.DataField := 'PRO_RORIGINAL';

 qrlUsuario.Caption :='Impreso por :'+ dm.getNombreUsuario(DM.Usuario) +
                       ' Fecha/Hora ' + FormatDateTime('dd/mm/yyyy hh:mm:ss AM/PM',now);
end;

procedure TRRepProdVendidos.QProductosBeforeOpen(DataSet: TDataSet);
begin
 //QProductos.SaveToFile('.\ventasrotacion.txt');
end;

end.
