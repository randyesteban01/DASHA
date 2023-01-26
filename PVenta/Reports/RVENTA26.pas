unit RVENTA26;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, DB, IBCustomDataSet,
  IBQuery, ADODB;

type
  TRValorInv = class(TQuickRep)
    QRBand1: TQRBand;
    lbTitulo: TQRLabel;
    lbFecha: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand4: TQRBand;
    QRExpr1: TQRExpr;
    QProductos: TADOQuery;
    QProductosPRO_CODIGO: TIntegerField;
    QProductosPRO_EXISTENCIA: TFloatField;
    QProductosPRO_NOMBRE: TIBStringField;
    QProductosPRO_PRECIO1: TFloatField;
    QProductosPRO_PRECIO2: TFloatField;
    QProductosPRO_PRECIO3: TFloatField;
    QProductosPRO_PRECIO4: TFloatField;
    QProductosPRO_RFABRIC: TIBStringField;
    QProductosPRO_RORIGINAL: TIBStringField;
    QRBand2: TQRBand;
    QRLabel18: TQRLabel;
    QRBand3: TQRBand;
    QRDBText12: TQRDBText;
    QRDBText8: TQRDBText;
    QProductosPRO_COSTO: TFloatField;
    QRDBText11: TQRDBText;
    QProductosValor: TFloatField;
    QProductosPRO_EXISTEMPAQUE: TFloatField;
    QProductosPRO_COSTOEMPAQUE: TFloatField;
    QRLabel30: TQRLabel;
    lbTipo: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QProductospro_itbis: TStringField;
    QProductospro_selectivo_ad: TBCDField;
    QProductospro_selectivo_con: TBCDField;
    QProductosItbis: TFloatField;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRExpr6: TQRExpr;
    QRLabel39: TQRLabel;
    lbProd: TQRDBText;
    QProductosValorUND: TFloatField;
    QProductosValorEMP: TFloatField;
    QRLabel6: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel4: TQRLabel;
    QProductosItbisEmp: TFloatField;
    lbitbis: TQRLabel;
    QProductosCostoUND: TFloatField;
    QProductosCostoEMP: TFloatField;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel12: TQRLabel;
    lbFamilia: TQRLabel;
    lbDepto: TQRLabel;
    lbProveedor: TQRLabel;
    QRLabel13: TQRLabel;
    lbGerente: TQRLabel;
    QRLabel14: TQRLabel;
    lbmarca: TQRLabel;
    QRLabel15: TQRLabel;
    lbcolor: TQRLabel;
    QRLabel16: TQRLabel;
    lbpasillo: TQRLabel;
    QRLabel17: TQRLabel;
    lbAlmacen: TQRLabel;
    QRLabel20: TQRLabel;
    QProductospro_montoitbis: TBCDField;
    QRLabel7: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel19: TQRLabel;
    QRLabel21: TQRLabel;
    PageFooterBand1: TQRBand;
    qrlUsuario: TQRLabel;
    procedure QProductosCalcFields(DataSet: TDataSet);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public
    itbisincluido : boolean;
  end;

var
  RValorInv: TRValorInv;

implementation

uses SIGMA01;


{$R *.DFM}

procedure TRValorInv.QProductosCalcFields(DataSet: TDataSet);
var
  valor1, valor2 : double;
begin
  if itbisincluido = true then
  begin
    if QProductosPRO_ITBIS.AsString = 'S' then
    begin
      QProductosItbis.Value    := (QProductosPRO_COSTO.Value * QProductospro_montoitbis.Value)/100;
      QProductosCostoUND.Value := QProductosPRO_COSTO.Value + ((QProductosPRO_COSTO.Value * QProductospro_montoitbis.Value)/100);
      QProductosItbisEmp.Value := (QProductosPRO_COSTOEMPAQUE.Value * QProductospro_montoitbis.Value)/100;
      QProductosCostoEMP.Value := QProductosPRO_COSTOEMPAQUE.Value + ((QProductosPRO_EXISTEMPAQUE.Value * QProductospro_montoitbis.Value)/100);
    end
    else
    begin
      QProductosCostoUND.Value := QProductosPRO_COSTO.Value;
      QProductosCostoEMP.Value := QProductosPRO_COSTOEMPAQUE.Value;
      QProductosItbis.Value := 0;
      QProductosItbisEmp.Value := 0;
    end;
  end
  else
  begin
    QProductosCostoUND.Value := QProductosPRO_COSTO.Value;
    QProductosCostoEMP.Value := QProductosPRO_COSTOEMPAQUE.Value;
    QProductosItbis.Value := 0;
    QProductosItbisEmp.Value := 0;
  end;

  {QProductosValor.Value := QProductosPRO_EXISTENCIA.Value * (QProductosItbis.Value + QProductosPRO_COSTO.Value+
                                                             QProductospro_selectivo_ad.Value + QProductospro_selectivo_con.Value);}

  if QProductosPRO_ITBIS.AsString = 'S' then
  begin
    QProductosValorUND.Value := QProductosPRO_EXISTENCIA.Value * QProductosCostoUND.Value;
    QProductosValorEMP.Value := QProductosPRO_EXISTEMPAQUE.Value * QProductosCostoEMP.Value;
    QProductosValor.Value    := QProductosValorUND.Value + QProductosValorEMP.Value;
  end
  else
  begin
    QProductosValorUND.Value := QProductosPRO_EXISTENCIA.Value * (QProductosCostoUND.Value + QProductosItbis.Value);
    QProductosValorEMP.Value := QProductosPRO_EXISTEMPAQUE.Value * (QProductosCostoEMP.Value + QProductosItbisEmp.Value);
    QProductosValor.Value    := QProductosValorUND.Value + QProductosValorEMP.Value;
  end;
end;

procedure TRValorInv.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'I' then
    lbprod.DataField := 'PRO_CODIGO'
  else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'F' then
    lbprod.DataField := 'pro_rfabric'
  else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'O' then
    lbprod.DataField := 'pro_roriginal';

 qrlUsuario.Caption :='Impreso por :'+ dm.getNombreUsuario(DM.Usuario) +
                       ' Fecha/Hora ' + FormatDateTime('dd/mm/yyyy hh:mm:ss AM/PM',now);
end;

end.
