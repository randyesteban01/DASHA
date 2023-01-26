unit PVENTA176;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Tabs, ExtCtrls, StdCtrls, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, Grids,
  DBGrids, DB, ADODB, Buttons, DateUtils;

type
  TfrmOperaciones = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Panel1: TPanel;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    Label1: TLabel;
    cxFecha: TcxDateEdit;
    Shape1: TShape;
    DBGrid1: TDBGrid;
    QVentaFamilia: TADOQuery;
    SpeedButton1: TSpeedButton;
    QVentaFamiliacodigo: TIntegerField;
    QVentaFamilianombre: TStringField;
    QVentaFamiliaHoy: TBCDField;
    QVentaFamiliaAyer: TBCDField;
    QVentaFamiliaMes: TBCDField;
    dsVentaFamilia: TDataSource;
    QVentaDepto: TADOQuery;
    QVentaDeptocodigo: TIntegerField;
    QVentaDeptonombre: TStringField;
    QVentaDeptoHoy: TBCDField;
    QVentaDeptoAyer: TBCDField;
    QVentaDeptoMes: TBCDField;
    DBGrid2: TDBGrid;
    dsVentaDepto: TDataSource;
    QVentaFamiliaPromedio: TFloatField;
    QVentaDeptoPromedio: TFloatField;
    fecha1: TDateTimePicker;
    fecha2: TDateTimePicker;
    Shape2: TShape;
    Label2: TLabel;
    QVentaFamiliaComprasHoy: TBCDField;
    QVentaFamiliaComprasAyer: TBCDField;
    QVentaFamiliaComprasMes: TBCDField;
    Shape3: TShape;
    Label3: TLabel;
    procedure SpeedButton1Click(Sender: TObject);
    procedure QVentaFamiliaCalcFields(DataSet: TDataSet);
    procedure QVentaDeptoCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOperaciones: TfrmOperaciones;

implementation

uses SIGMA01;

{$R *.dfm}

procedure TfrmOperaciones.SpeedButton1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;

  fecha1.Date := StartOfAMonth(YearOf(cxFecha.Date),MonthOf(cxFecha.Date));
  fecha2.Date := EndOfAMonth(YearOf(cxFecha.Date),MonthOf(cxFecha.Date));

  QVentaFamilia.Close;
  QVentaDepto.Close;

  Application.ProcessMessages;

  QVentaFamilia.Parameters.ParamByName('emp').Value     := dm.vp_cia;
  QVentaFamilia.Parameters.ParamByName('fec').DataType  := ftDate;
  QVentaFamilia.Parameters.ParamByName('fec').Value     := cxFecha.Date;
  QVentaFamilia.Parameters.ParamByName('fec1').DataType := ftDate;
  QVentaFamilia.Parameters.ParamByName('fec1').Value    := fecha1.Date;
  QVentaFamilia.Parameters.ParamByName('fec2').DataType := ftDate;
  QVentaFamilia.Parameters.ParamByName('fec2').Value    := fecha2.Date;
  QVentaFamilia.Open;

  Application.ProcessMessages;

  QVentaDepto.Close;
  QVentaDepto.Parameters.ParamByName('emp').Value     := dm.vp_cia;
  QVentaDepto.Parameters.ParamByName('fec').DataType  := ftDate;
  QVentaDepto.Parameters.ParamByName('fec').Value     := cxFecha.Date;
  QVentaDepto.Parameters.ParamByName('fec1').DataType := ftDate;
  QVentaDepto.Parameters.ParamByName('fec1').Value    := fecha1.Date;
  QVentaDepto.Parameters.ParamByName('fec2').DataType := ftDate;
  QVentaDepto.Parameters.ParamByName('fec2').Value    := fecha2.Date;
  QVentaDepto.Open;

  Screen.Cursor := crDefault;
end;

procedure TfrmOperaciones.QVentaFamiliaCalcFields(DataSet: TDataSet);
begin
  if QVentaFamiliaMes.Value >0 then
    QVentaFamiliaPromedio.Value := (QVentaFamiliaHoy.Value / QVentaFamiliaMes.Value) * 100
  else
    QVentaFamiliaPromedio.Value := 0;
end;

procedure TfrmOperaciones.QVentaDeptoCalcFields(DataSet: TDataSet);
begin
  if QVentaDeptoMes.Value > 0 then
    QVentaDeptoPromedio.Value := (QVentaDeptoHoy.Value / QVentaDeptoMes.Value) * 100
  else
    QVentaDeptoPromedio.Value := 0;
end;

procedure TfrmOperaciones.FormCreate(Sender: TObject);
begin
  cxFecha.Date := Date;
end;

procedure TfrmOperaciones.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if QVentaFamilianombre.Value = 'Total x Familia' then
  begin
     DBGrid1.canvas.font.Style := DBGrid1.canvas.font.Style + [fsBold];
     DBGrid1.DefaultDrawcolumnCell(Rect, DataCol, Column, State);
  end;
end;

procedure TfrmOperaciones.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if QVentaDeptonombre.Value = 'Total x Departamento' then
  begin
     DBGrid2.canvas.font.Style := DBGrid2.canvas.font.Style + [fsBold];
     DBGrid2.DefaultDrawcolumnCell(Rect, DataCol, Column, State);
  end;
end;

procedure TfrmOperaciones.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
