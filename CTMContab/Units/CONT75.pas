unit CONT75;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, Buttons, Grids, DBGrids, DB, ADODB,
  DBCtrls;

type
  TfrmConsComprobantes = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    fecha1: TDateTimePicker;
    fecha2: TDateTimePicker;
    BitBtn3: TBitBtn;
    btClose: TBitBtn;
    BitBtn2: TBitBtn;
    dsComprobantes: TDataSource;
    cbtipo: TComboBox;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    dsListado: TDataSource;
    DBGrid2: TDBGrid;
    QComprobantes: TADOQuery;
    QComprobantesFecha: TDateTimeField;
    QComprobantesDesde: TStringField;
    QComprobantesHasta: TStringField;
    QComprobantesTotal: TBCDField;
    QComprobantesItbis: TBCDField;
    QComprobantesGrabado: TBCDField;
    QComprobantesExento: TBCDField;
    QListado: TADOQuery;
    QListadornc: TStringField;
    QListadoFecha: TDateField;
    QListadoDesde: TStringField;
    QListadoHasta: TStringField;
    QListadoTotal: TFloatField;
    QListadoItbis: TFloatField;
    QListadoGrabado: TFloatField;
    QListadoExento: TFloatField;
    QComprobantesDescuento: TCurrencyField;
    QListadoDescuento: TCurrencyField;
    QComprobantesItbis0: TCurrencyField;
    QComprobantesItbis8: TCurrencyField;
    QComprobantesItbis11: TCurrencyField;
    QComprobantesItbis13: TCurrencyField;
    QComprobantesItbis18: TCurrencyField;
    QComprobantesefectivo: TCurrencyField;
    QComprobantesckdep: TCurrencyField;
    QComprobantescredito: TCurrencyField;
    QComprobantestarjetas: TCurrencyField;
    QListadoItbis0: TCurrencyField;
    QListadoItbis8: TCurrencyField;
    QListadoItbis11: TCurrencyField;
    QListadoItbis13: TCurrencyField;
    QListadoItbis18: TCurrencyField;
    QListadoefectivo: TCurrencyField;
    QListadockdep: TCurrencyField;
    QListadocredito: TCurrencyField;
    QListadotarjetas: TCurrencyField;
    QComprobantesItbis16: TCurrencyField;
    QComprobantesTIPO: TStringField;
    QListadoTIPO: TStringField;
    QListadoItbis16: TCurrencyField;
    QComprobantesItbisNC: TCurrencyField;
    QListadoItbisNC: TCurrencyField;
    QComprobantesCANT: TIntegerField;
    QListadoCANT: TIntegerField;
    QComprobantesotras: TCurrencyField;
    QListadootras: TCurrencyField;
    QComprobantesPropina: TCurrencyField;
    QListadoPropina: TCurrencyField;
    QUpdNC: TADOQuery;
    procedure btCloseClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormPaint(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsComprobantes: TfrmConsComprobantes;

implementation

uses SIGMA01, SIGMA00, RCONT29, RCONT30, Math;

{$R *.dfm}

procedure TfrmConsComprobantes.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmConsComprobantes.BitBtn3Click(Sender: TObject);
begin
Screen.cursor := crSQLWait;

  QUpdNC.ExecSQL;

  QComprobantes.Close;
  QComprobantes.Parameters.ParamByName('emp').Value  := dm.QEmpresasEMP_CODIGO.Value;
  QComprobantes.Parameters.ParamByName('tipo').Value := cbtipo.ItemIndex;
  QComprobantes.Parameters.ParamByName('fec1').Value := fecha1.Date;
  QComprobantes.Parameters.ParamByName('fec2').Value := fecha2.Date;
  QComprobantes.Parameters.ParamByName('tiporeporte').Value := 'G';
  QComprobantes.Open;


  QListado.Close;
  QListado.Parameters.ParamByName('emp').Value  := dm.QEmpresasEMP_CODIGO.Value;
  QListado.Parameters.ParamByName('tipo').Value  := cbtipo.ItemIndex;
  QListado.Parameters.ParamByName('fec1').Value := fecha1.Date;
  QListado.Parameters.ParamByName('fec2').Value := fecha2.Date;
  QListado.Parameters.ParamByName('tiporeporte').Value := 'D';
  QListado.Open;

  
 Screen.cursor := crDefault;

  //PageControl1.ActivePageIndex := 0;
  //DBGrid1.SetFocus;
end;

procedure TfrmConsComprobantes.FormCreate(Sender: TObject);
begin
  fecha1.Date := date;
  fecha2.Date := date;
end;

procedure TfrmConsComprobantes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmConsComprobantes.FormPaint(Sender: TObject);
begin
  with frmConsComprobantes do
  begin
    Top  := 2;
    Left := 2;
    width := frmMain.Width - 230;
    height := frmMain.Height - 120;
  end;
end;

procedure TfrmConsComprobantes.BitBtn2Click(Sender: TObject);
begin
  if PageControl1.ActivePageIndex = 0 then
  begin
    if not QComprobantes.Active then
    btCloseClick(Sender);
    Application.CreateForm(tRComprobantes, RComprobantes);
    RComprobantes.lbFecha.Caption := 'Del '+DateToStr(fecha1.Date)+' Al '+DateToStr(fecha2.Date);
    RComprobantes.lbTipo.Caption  := cbtipo.Text;
    RComprobantes.PrinterSetup;
    RComprobantes.Preview;
    RComprobantes.Destroy;
  end
  else
  begin
    if not QListado.Active then
    btCloseClick(Sender);
    Application.CreateForm(tRComprobantesDetalle, RComprobantesDetalle);
    RComprobantesDetalle.lbFecha.Caption := 'Del '+DateToStr(fecha1.Date)+' Al '+DateToStr(fecha2.Date);
    RComprobantesDetalle.lbTipo.Caption  := cbtipo.Text;
    RComprobantesDetalle.PrinterSetup;
    RComprobantesDetalle.Preview;
    RComprobantesDetalle.Destroy;
  end;
  end;


procedure TfrmConsComprobantes.PageControl1Change(Sender: TObject);
begin
  if PageControl1.ActivePageIndex = 0 then
  begin
    frmMain.ExportXLS.Sheets[0].DBGrid := DBGrid1;
    frmMain.ExportXLS.Sheets[1].Exported := False;
    frmMain.ExportXLS.Sheets[2].Exported := False;
    frmMain.ExportXLS.Sheets[0].Exported := True;
  end
  else
  begin
    frmMain.ExportXLS.Sheets[0].DBGrid := DBGrid2;
    frmMain.ExportXLS.Sheets[1].Exported := False;
    frmMain.ExportXLS.Sheets[2].Exported := False;
    frmMain.ExportXLS.Sheets[0].Exported := True;
  end;
end;

end.
