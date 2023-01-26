unit RVENTA114;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, DB, IBCustomDataSet,
  IBQuery, ADODB;

type
  TRepVentaProducto = class(TQuickRep)
    QRBand1: TQRBand;
    lbTitulo: TQRLabel;
    lbFecha: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRLabel21: TQRLabel;
    QDetalle: TADOQuery;
    QProducto: TADOQuery;
    dsProducto: TDataSource;
    QRSubDetail1: TQRSubDetail;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText13: TQRDBText;
    QRBand3: TQRBand;
    QRDBText18: TQRDBText;
    QRBand4: TQRBand;
    QRBand5: TQRBand;
    QProductopro_codigo: TIntegerField;
    QProductopro_nombre: TStringField;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QDetallepro_codigo: TIntegerField;
    QDetallepro_roriginal: TStringField;
    QDetallepro_nombre: TStringField;
    QDetallecantidad: TBCDField;
    QDetalleprecio: TBCDField;
    QDetalledescuento: TBCDField;
    QDetalleitbis: TBCDField;
    QDetalleconitbis: TStringField;
    QDetallecliente: TStringField;
    QDetallefecha: TDateTimeField;
    QDetallefactura: TIntegerField;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QDetalleCalcDesc: TFloatField;
    QDetallePrecioItbis: TFloatField;
    QDetalleCalcItbis: TFloatField;
    QDetalleValor: TFloatField;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRExpr1: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr2: TQRExpr;
    QRLabel3: TQRLabel;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRLabel4: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLSUCURSAL: TQRLabel;
    procedure QRBand3AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QDetalleCalcFields(DataSet: TDataSet);
  private

  public

  end;

var
  RepVentaProducto: TRepVentaProducto;

implementation

uses SIGMA01;


{$R *.DFM}

procedure TRepVentaProducto.QRBand3AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
{  //QProductos.Close;
  QProductos.Parameters.ParamByName('suc_codigo').Value := QFamiliaemp_codigo.Value;
  QProductos.Parameters.ParamByName('emp_codigo').Value := QFamiliasuc_codigo.Value;
  QProductos.Parameters.ParamByName('fam_codigo').Value := QFamiliafam_codigo.Value;
  //QProductos.open;}
end;

procedure TRepVentaProducto.QDetalleCalcFields(DataSet: TDataSet);
var
  Venta, NumItbis, vPrec, vDesc, vCant : Double;
  a : integer;
begin
  if (QDetalleconitbis.value = 'S') then
  begin
    NumItbis := strtofloat(format('%10.2f',[(QDetalleitbis.Value/100)+1]));

    if dm.QParametrospar_itbisincluido.Value = 'True' then
    begin
      Venta    := strtofloat(format('%10.2f',[(QDetallePRECIO.value)/NumItbis]));
      QDetalleCalcDesc.value    := strtofloat(format('%10.2f',[(Venta *
                                   strtofloat(format('%10.2f',[QDetalleDESCUENTO.value])))/100]));

      //Venta    := strtofloat(format('%10.2f',[(QDetalleDET_PRECIO.value)/NumItbis]));
      QDetallePrecioItbis.value := strtofloat(format('%10.2f',[Venta]));
      QDetalleCalcDesc.value    := strtofloat(format('%10.2f',[(Venta *
                                 strtofloat(format('%10.2f',[QDetalleDESCUENTO.value])))/100]));

      QDetalleCalcItbis.value   := strtofloat(format('%10.2f',[(((Venta-QDetalleCalcDesc.value))*
                                   strtofloat(format('%10.2f',[QDetalleitbis.Value])))/100]));
      QDetalleValor.value       := ((strtofloat(format('%10.2f',[Venta]))-
                                   strtofloat(format('%10.2f',[QDetalleCalcDesc.value])))+
                                   strtofloat(format('%10.2f',[QDetalleCalcItbis.value])))*
                                   strtofloat(format('%10.2f',[QDetalleCANTIDAD.value]));
    end
    else
    begin
      Venta    := strtofloat(format('%10.2f',[(QDetallePRECIO.value)]));
      QDetallePrecioItbis.value := strtofloat(format('%10.2f',[QDetallePRECIO.value]));
      QDetalleCalcDesc.value    := strtofloat(format('%10.2f',[(Venta *
                                 strtofloat(format('%10.2f',[QDetalleDESCUENTO.value])))/100]));
      if (QDetalleconitbis.value = 'S') then
        QDetalleCalcItbis.value   := strtofloat(format('%10.2f',[(((Venta-QDetalleCalcDesc.value))*
                                     strtofloat(format('%10.2f',[QDetalleitbis.Value])))/100]))
      else
        QDetalleCalcItbis.value   := 0;

      vPrec := strtofloat(format('%10.2f',[QDetallePRECIO.value]));
      vDesc := strtofloat(format('%10.2f',[QDetalleCalcDesc.value]));
      vCant := strtofloat(format('%10.2f',[QDetalleCANTIDAD.value]));
      
      QDetalleValor.Value := ((vPrec - vDesc) + QDetalleCalcItbis.value) * vCant;

    end;
  end
  else
  begin
    Venta := strtofloat(format('%10.2f',[QDetallePRECIO.value]));
    QDetalleCalcDesc.value    := strtofloat(format('%10.2f',[(Venta * QDetalleDESCUENTO.value)/100]));
    QDetallePrecioItbis.value := strtofloat(format('%10.2f',[Venta]));
    QDetalleCalcItbis.value   := 0;
    QDetalleValor.value       := strtofloat(format('%10.2f',[(Venta-strtofloat(format('%10.2f',[QDetalleCalcDesc.value])))*QDetalleCANTIDAD.value]));
  end;
end;

end.
