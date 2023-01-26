unit PVENTA211;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, TeEngine, Series, ExtCtrls, TeeProcs,
  Chart, DbChart, ComCtrls;

type
  TfrmChartResumenVentaProducto = class(TForm)
    QReporte: TADOStoredProc;
    QReporteprod: TIntegerField;
    QReportenombre: TStringField;
    QReporteene: TBCDField;
    QReportefeb: TBCDField;
    QReportemar: TBCDField;
    QReporteabr: TBCDField;
    QReportemay: TBCDField;
    QReportejun: TBCDField;
    QReportejul: TBCDField;
    QReporteago: TBCDField;
    QReportesep: TBCDField;
    QReporteoct: TBCDField;
    QReportenov: TBCDField;
    QReportedic: TBCDField;
    QReporteref: TStringField;
    QReportetot: TBCDField;
    dsReporte: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    DBChart1: TDBChart;
    DBChart2: TDBChart;
    DBChart3: TDBChart;
    Series1: TPieSeries;
    Series2: THorizBarSeries;
    Series3: TBarSeries;
    TabSheet4: TTabSheet;
    DBChart4: TDBChart;
    Series4: TLineSeries;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmChartResumenVentaProducto: TfrmChartResumenVentaProducto;

implementation

uses SIGMA01, SIGMA00;

{$R *.dfm}

end.
