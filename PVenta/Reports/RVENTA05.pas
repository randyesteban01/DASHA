unit RVENTA05;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, DB, IBCustomDataSet,
  IBQuery, ADODB;

type
  TRConsBeneficio = class(TQuickRep)
    QRBand1: TQRBand;
    lbTitulo: TQRLabel;
    lbFecha: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRBand3: TQRBand;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRBand4: TQRBand;
    QRLabel20: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QFacturas: TADOQuery;
    QFacturasBeneficio: TFloatField;
    QFacturasFORMA: TIBStringField;
    QFacturasTIPO: TIntegerField;
    QFacturasNUMERO: TIntegerField;
    QFacturasFECHA: TDateTimeField;
    QFacturasCLIENTE: TIBStringField;
    QFacturasCOSTO: TFloatField;
    QFacturasPRECIO: TFloatField;
    QFacturasDESCUENTO: TFloatField;
    QFacturasITBIS: TFloatField;
    QFacturasEMPRESA: TIntegerField;
    QFacturasid: TAutoIncField;
    lbCaja: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRExpr5: TQRExpr;
    QRLabel5: TQRLabel;
    QRDBText15: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    dsFacturas: TDataSource;
    QDetalleFac: TADOQuery;
    QDetalleFacpro_codigo: TIntegerField;
    QDetalleFacpro_roriginal: TStringField;
    QDetalleFacpro_nombre: TStringField;
    QDetalleFacdet_precio: TBCDField;
    QDetalleFacdet_costo: TBCDField;
    QDetalleFacdet_conitbis: TStringField;
    QDetalleFacdet_itbis: TBCDField;
    QDetalleFacdet_cantidad: TBCDField;
    QDetalleFacdet_medida: TStringField;
    QDetalleFacdet_descuento: TBCDField;
    QDetalleFacCalcItbis: TFloatField;
    QDetalleFacBeneficio: TFloatField;
    QDetalleFacCalcDesc: TFloatField;
    QDetalleFacPrecioItbis: TFloatField;
    QDetalleFacValor: TFloatField;
    QDetalleFacTotalCosto: TFloatField;
    QDetalleFaccomision: TBCDField;
    QDetalleFacdet_totalitbis: TBCDField;
    QDetalleFacTotalDesc: TFloatField;
    QDetalleFacTotalItbis: TFloatField;
    QRSubDetail1: TQRSubDetail;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText16: TQRDBText;
    QFacturasCOMISION: TBCDField;
    QFacturasSUC_CODIGO: TIntegerField;
    procedure QFacturasCalcFields(DataSet: TDataSet);
    procedure QDetalleFacCalcFields(DataSet: TDataSet);
  private

  public

  end;

var
  RConsBeneficio: TRConsBeneficio;

implementation

uses SIGMA01;


{$R *.DFM}

procedure TRConsBeneficio.QFacturasCalcFields(DataSet: TDataSet);
begin
  QFacturasBeneficio.value := QFacturasPRECIO.value-(QFacturasCOSTO.value+QFacturasITBIS.Value+QFacturasCOMISION.Value);
end;

procedure TRConsBeneficio.QDetalleFacCalcFields(DataSet: TDataSet);
var
  Venta, NumItbis : Double;
  a : integer;
begin
  QDetalleFacTotalCosto.Value := QDetalleFacdet_costo.Value * QDetalleFacdet_cantidad.Value;
  if QDetalleFacDET_CONITBIS.value = 'S' then
  begin
    NumItbis := strtofloat(format('%10.2f',[(QDetalleFacDET_ITBIS.asfloat/100)+1]));

    if dm.QParametrospar_itbisincluido.Value = 'True' then
    begin
      Venta    := strtofloat(format('%10.2f',[(QDetalleFacDET_PRECIO.value)/NumItbis]));
      QDetalleFacCalcDesc.value    := strtofloat(format('%10.2f',[(Venta *
                                   strtofloat(format('%10.2f',[QDetalleFacDET_DESCUENTO.value])))/100]));

      //Venta    := strtofloat(format('%10.2f',[(QDetalleDET_PRECIO.value)/NumItbis]));
      QDetalleFacPrecioItbis.value := strtofloat(format('%10.2f',[Venta]));
      QDetalleFacCalcDesc.value    := strtofloat(format('%10.2f',[(Venta *
                                 strtofloat(format('%10.2f',[QDetalleFacDET_DESCUENTO.value])))/100]));

      QDetalleFacCalcItbis.value   := strtofloat(format('%10.2f',[(((Venta-QDetalleFacCalcDesc.value))*
                                   strtofloat(format('%10.2f',[QDetalleFacDET_ITBIS.Value])))/100]));
      QDetalleFacValor.value       := ((strtofloat(format('%10.2f',[Venta]))-
                                   strtofloat(format('%10.2f',[QDetalleFacCalcDesc.value])))+
                                   strtofloat(format('%10.2f',[QDetalleFacCalcItbis.value])))*
                                   strtofloat(format('%10.2f',[QDetalleFacDET_CANTIDAD.value]));
    end
    else
    begin
      Venta    := strtofloat(format('%10.2f',[(QDetalleFacDET_PRECIO.value)]));
      QDetalleFacPrecioItbis.value := strtofloat(format('%10.2f',[QDetalleFacDET_PRECIO.value]));
      QDetalleFacCalcDesc.value    := strtofloat(format('%10.2f',[(Venta *
                                 strtofloat(format('%10.2f',[QDetalleFacDET_DESCUENTO.value])))/100]));
      if QDetalleFacDET_CONITBIS.value = 'S' then
        QDetalleFacCalcItbis.value   := strtofloat(format('%10.2f',[(((Venta-QDetalleFacCalcDesc.value))*
                                     strtofloat(format('%10.2f',[QDetalleFacDET_ITBIS.Value])))/100]))
      else
        QDetalleFacCalcItbis.value   := 0;

      QDetalleFacValor.value       := (((strtofloat(format('%10.2f',[QDetalleFacDET_PRECIO.value]))-
                                   strtofloat(format('%10.2f',[QDetalleFacCalcDesc.value]))))+
                                   strtofloat(format('%10.2f',[QDetalleFacCalcItbis.value])))*
                                   strtofloat(format('%10.2f',[QDetalleFacDET_CANTIDAD.value]));
    end;
  end
  else
  begin
    Venta := strtofloat(format('%10.2f',[QDetalleFacDET_PRECIO.value]));
    QDetalleFacCalcDesc.value    := strtofloat(format('%10.2f',[(Venta * QDetalleFacDET_DESCUENTO.value)/100]));
    QDetalleFacPrecioItbis.value := strtofloat(format('%10.2f',[Venta]));
    QDetalleFacCalcItbis.value   := 0;
    QDetalleFacValor.value       := strtofloat(format('%10.2f',[(Venta-QDetalleFacCalcDesc.value)*QDetalleFacDET_CANTIDAD.value]));
  end;
  QDetalleFacTotalDesc.Value  := QDetalleFacCalcDesc.value * QDetalleFacdet_cantidad.Value;
  QDetalleFacTotalItbis.Value := QDetalleFacCalcItbis.value * QDetalleFacdet_cantidad.Value;
  QDetalleFacBeneficio.Value := QDetalleFacValor.Value - (QDetalleFacTotalCosto.Value +
                                                          (QDetalleFaccomision.Value)+
                                                          (QDetalleFacCalcItbis.Value * QDetalleFacdet_cantidad.Value));
end;

end.
