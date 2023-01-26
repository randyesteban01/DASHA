unit RHR09;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, ADODB;

type
  TRConsNovedadesDetalle = class(TQuickRep)
    QRBand1: TQRBand;
    lbTitulo: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel15: TQRLabel;
    lbtipo: TQRLabel;
    lbperiodo: TQRLabel;
    lbempleado: TQRLabel;
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
    QNovedades: TADOQuery;
    QNovedadestin_nombre: TStringField;
    QNovedadestde_nombre: TStringField;
    QNovedadesdet_monto: TBCDField;
    QNovedadestin_codigo: TIntegerField;
    QNovedadestde_codigo: TIntegerField;
    QNovedadesDescripcion: TStringField;
    QNovedadesIngreso: TFloatField;
    QNovedadesDescuento: TFloatField;
    QRBand2: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel6: TQRLabel;
    QRBand3: TQRBand;
    QRDBText6: TQRDBText;
    QRBand4: TQRBand;
    QRExpr2: TQRExpr;
    QRLabel8: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    dsNovedades: TDataSource;
    QDetalle: TADOQuery;
    QDetalletin_nombre: TStringField;
    QDetalletde_nombre: TStringField;
    QDetalletin_codigo: TIntegerField;
    QDetalletde_codigo: TIntegerField;
    QDetallenom_fecha_acreditar: TDateTimeField;
    QDetalledet_monto: TBCDField;
    QRDBText8: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText7: TQRDBText;
    procedure QNovedadesCalcFields(DataSet: TDataSet);
  private

  public

  end;

var
  RConsNovedadesDetalle: TRConsNovedadesDetalle;

implementation

uses SIGMA01;

{$R *.DFM}

procedure TRConsNovedadesDetalle.QNovedadesCalcFields(DataSet: TDataSet);
begin
  if QNovedadestde_codigo.AsInteger > 0 then
  begin
    QNovedadesDescuento.Value   := QNovedadesdet_monto.Value;
    QNovedadesDescripcion.Value := QNovedadestde_nombre.Value;
  end
  else
  begin
    QNovedadesIngreso.Value     := QNovedadesdet_monto.Value;
    QNovedadesDescripcion.Value := QNovedadestin_nombre.Value;
  end;
end;

end.
