unit RVENTA98;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, DB, IBCustomDataSet,
  IBQuery, ADODB;

type
  TRProdFamiliaDepto = class(TQuickRep)
    QRBand1: TQRBand;
    lbTitulo: TQRLabel;
    lbFecha: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRLabel19: TQRLabel;
    QRBand3: TQRBand;
    QRLabel7: TQRLabel;
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
    QRSubDetail1: TQRSubDetail;
    QFamilias: TADOQuery;
    QFamiliasFAM_CODIGO: TIntegerField;
    QFamiliasFAM_NOMBRE: TIBStringField;
    dsFamilias: TDataSource;
    QFamiliasEMP_CODIGO: TIntegerField;
    lbprod: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText16: TQRDBText;
    QRLabel5: TQRLabel;
    QProductosPRO_EXISTEMPAQUE: TFloatField;
    QRDBText7: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QProductospro_costo: TBCDField;
    QProductospro_costoempaque: TBCDField;
    QProductosValorUnd: TFloatField;
    QProductosValorEmp: TFloatField;
    QRLabel6: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText13: TQRDBText;
    QRBand4: TQRBand;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QProductosexi_cantidad: TBCDField;
    QProductosexi_empaque: TBCDField;
    QProductospro_itbis: TStringField;
    QProductosCostoUnd: TFloatField;
    QProductosCostoEmp: TFloatField;
    QRBand5: TQRBand;
    QRExpr7: TQRExpr;
    QRExpr8: TQRExpr;
    QRLabel3: TQRLabel;
    QProductospro_cantempaque: TBCDField;
    QRDBText6: TQRDBText;
    QRLabel18: TQRLabel;
    QDeptos: TADOQuery;
    QDeptosdep_codigo: TIntegerField;
    QDeptosdep_nombre: TStringField;
    QDeptosemp_codigo: TIntegerField;
    QDeptosfam_codigo: TIntegerField;
    dsDeptos: TDataSource;
    QRSubDetail2: TQRSubDetail;
    QRDBText10: TQRDBText;
    QRBand6: TQRBand;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel17: TQRLabel;
    QProductospro_montoitbis: TBCDField;
    procedure QProductosCalcFields(DataSet: TDataSet);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public
    Impuesto, empaque : Boolean;

  end;

var
  RProdFamiliaDepto: TRProdFamiliaDepto;

implementation

uses SIGMA01;


{$R *.DFM}

procedure TRProdFamiliaDepto.QProductosCalcFields(DataSet: TDataSet);
begin
  if Impuesto then
  begin
    if QProductosPRO_ITBIS.Value = 'S' then
    begin
      QProductosCostoUnd.Value := QProductosPRO_COSTO.Value + (QProductosPRO_COSTO.Value * QProductospro_montoitbis.Value)/100;
      QProductosCostoEmp.Value := QProductosPRO_COSTOEMPAQUE.Value + (QProductosPRO_COSTOEMPAQUE.Value * QProductospro_montoitbis.Value)/100;
    end
    else
    begin
      QProductosCostoUnd.Value := QProductospro_costo.Value;
      QProductosCostoEmp.Value := QProductospro_costoempaque.Value;
    end;
  end
  else
  begin
    QProductosCostoUnd.Value := QProductospro_costo.Value;
    QProductosCostoEmp.Value := QProductospro_costoempaque.Value;
  end;

  QProductosValorUnd.Value := QProductosCostoUnd.Value * QProductosexi_cantidad.Value;
  QProductosValorEmp.Value := QProductosCostoEmp.Value * QProductosexi_empaque.Value;
end;

procedure TRProdFamiliaDepto.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  QRDBText15.Enabled := empaque;
  QRDBText7.Enabled  := empaque;
  QRDBText13.Enabled := empaque;
  QRExpr4.Enabled := empaque;
  QRExpr2.Enabled := empaque;
  QRExpr8.Enabled := empaque;
  QRLabel4.Enabled := empaque;
  QRLabel8.Enabled := empaque;
  QRLabel11.Enabled := empaque;
  QRLabel12.Enabled := empaque;
  if not empaque then
  begin
    QRLabel15.Caption := ' ';
    QRLabel16.Caption := 'Precio1';
    QRDBText15.Enabled := True;
    QRDBText15.DataField := 'pro_precio1';

    QRDBText8.Width := QRDBText8.Width  + 50;
    QRDBText6.Left  := QRDBText6.Left   + 50;
    QRDBText14.Left := QRDBText14.Left  + 50;
    QRDBText9.Left  := QRDBText9.Left   + 50;
    QRDBText12.Left := QRDBText12.Left  + 50;
    QRLabel17.Left  := QRLabel17.Left   + 50;
    QRLabel18.Left  := QRLabel18.Left   + 50;
    QRLabel13.Left  := QRLabel13.Left   + 50;
    QRLabel14.Left  := QRLabel14.Left   + 50;
    QRLabel5.Left   := QRLabel5.Left    + 50;
    QRLabel6.Left   := QRLabel6.Left    + 50;
    QRLabel9.Left   := QRLabel9.Left    + 50;
    QRLabel10.Left  := QRLabel10.Left   + 50;
    QRExpr3.Left    := QRExpr3.Left     + 50;
    QRExpr1.Left    := QRExpr1.Left     + 50;
    QRExpr7.Left    := QRExpr7.Left     + 50;
    QRLabel15.Left  := QRLabel15.Left   + 50;
    QRLabel16.Left  := QRLabel16.Left   + 50;
    QRDBText15.Left  := QRDBText15.Left + 50;
  end;

  if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'I' then
    lbprod.DataField := 'PRO_CODIGO'
  else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'F' then
    lbprod.DataField := 'pro_rfabric'
  else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'O' then
    lbprod.DataField := 'pro_roriginal';
end;

end.
