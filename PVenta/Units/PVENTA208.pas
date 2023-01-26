unit PVENTA208;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, DB, ADODB;

type
  TfrmDetalleMargen = class(TForm)
    btClose: TBitBtn;
    DBGrid1: TDBGrid;
    QDetalle: TADOQuery;
    QDetallefecha: TDateTimeField;
    QDetalletipo: TIntegerField;
    QDetallenumero: TIntegerField;
    QDetallenombre: TStringField;
    QDetalletotal: TBCDField;
    QDetalleitbis: TBCDField;
    QDetallecosto: TBCDField;
    QDetalleprecio: TBCDField;
    dsDetalle: TDataSource;
    QDetalleBeneficio: TFloatField;
    QDetalleCalcItbis: TFloatField;
    QDetalleproducto: TStringField;
    QDetallecantidad: TBCDField;
    QDetalleCalcPrecio: TFloatField;
    QDetalleMargen: TFloatField;
    procedure btCloseClick(Sender: TObject);
    procedure QDetalleCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDetalleMargen: TfrmDetalleMargen;

implementation

uses SIGMA01;

{$R *.dfm}

procedure TfrmDetalleMargen.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmDetalleMargen.QDetalleCalcFields(DataSet: TDataSet);
var
  NumItbis, Venta : double;
begin
  NumItbis := strtofloat(format('%10.2f',[(QDetalleitbis.asfloat/100)+1]));
  if QDetalleitbis.value > 0 then
  begin
    Venta := strtofloat(format('%10.2f',[(QDetalleprecio.value)/NumItbis]));
    QDetalleCalcItbis.value := strtofloat(format('%10.2f',[(Venta*strtofloat(format('%10.2f',[QDetalleitbis.Value])))/100]));
  end
  else
  begin
    Venta := QDetalleprecio.value;
    QDetalleCalcItbis.value := 0;
  end;
  QDetalleCalcPrecio.Value := Venta;
  QDetalleBeneficio.Value := QDetalleCalcPrecio.Value - QDetallecosto.Value;
  if QDetalleCalcPrecio.Value > 0 then
    QDetalleMargen.Value := (QDetalleBeneficio.Value / QDetalleCalcPrecio.Value)*100;
end;

end.
