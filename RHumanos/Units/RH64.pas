unit RH64;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, ExtCtrls, DB, ADODB, Grids, DBGrids, Buttons,
  ComCtrls;

type
  TfrmConsNovedades = class(TForm)
    QTipoNomina: TADOQuery;
    QTipoNominatno_codigo: TIntegerField;
    QTipoNominatno_nombre: TStringField;
    QTipoNominaemp_codigo: TIntegerField;
    dsTipoNomina: TDataSource;
    Panel1: TPanel;
    Label2: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    btClose: TBitBtn;
    DBGrid1: TDBGrid;
    Label6: TLabel;
    Fecha1: TDateTimePicker;
    Fecha2: TDateTimePicker;
    QNovedades: TADOQuery;
    QNovedadestin_nombre: TStringField;
    QNovedadestde_nombre: TStringField;
    QNovedadesdet_monto: TBCDField;
    QNovedadestin_codigo: TIntegerField;
    QNovedadestde_codigo: TIntegerField;
    QNovedadesDescripcion: TStringField;
    QNovedadesIngreso: TFloatField;
    QNovedadesDescuento: TFloatField;
    dsNovedades: TDataSource;
    ckempleado: TCheckBox;
    DBLookupComboBox4: TDBLookupComboBox;
    QEmpleados: TADOQuery;
    QEmpleadosemp_numero: TIntegerField;
    QEmpleadosemp_codigo: TIntegerField;
    QEmpleadosNombres: TStringField;
    dsEmpleados: TDataSource;
    BitBtn2: TBitBtn;
    Memo1: TMemo;
    BitBtn3: TBitBtn;
    procedure FormPaint(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure QNovedadesCalcFields(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure btCloseClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsNovedades: TfrmConsNovedades;

implementation

uses SIGMA01, SIGMA00, RHR07, RHR09;

{$R *.dfm}

procedure TfrmConsNovedades.FormPaint(Sender: TObject);
begin
  with frmConsNovedades do
  begin
    Top  := 2;
    Left := 2;
    width := frmMain.Width - 230;
    height := frmMain.Height - 120;
  end;
end;

procedure TfrmConsNovedades.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmConsNovedades.FormActivate(Sender: TObject);
begin
  frmMain.ExportXLS.Sheets[0].DBGrid := DBGrid1;
  frmMain.ExportXLS.Sheets[1].Exported := False;
  frmMain.ExportXLS.Sheets[2].Exported := False;
  frmMain.ExportXLS.Sheets[0].Exported := True;
  if not QTipoNomina.Active then
  begin
    QTipoNomina.Open;
    QEmpleados.Open;
  end;
end;

procedure TfrmConsNovedades.FormCreate(Sender: TObject);
begin
  Fecha1.Date := date;
  Fecha2.Date := date;
  memo1.lines := QNovedades.SQL;
end;

procedure TfrmConsNovedades.BitBtn2Click(Sender: TObject);
begin
  QNovedades.Close;
  QNovedades.SQL := Memo1.Lines;

  if ckempleado.Checked then
    QNovedades.SQL.Add('and n.emp_numero = '+inttostr(DBLookupComboBox4.KeyValue));

  QNovedades.SQL.Add('group by i.tin_nombre, d.tde_nombre, n.tin_codigo, n.tde_codigo');
  QNovedades.SQL.Add('order by 3');

  QNovedades.Parameters.ParamByName('tno').Value := DBLookupComboBox1.KeyValue;
  QNovedades.Parameters.ParamByName('emp_codigo').Value := dm.QEmpresasEMP_CODIGO.Value;
  QNovedades.Parameters.ParamByName('fec1').DataType := ftdate;
  QNovedades.Parameters.ParamByName('fec2').DataType := ftdate;
  QNovedades.Parameters.ParamByName('fec1').Value    := fecha1.Date;
  QNovedades.Parameters.ParamByName('fec2').Value    := fecha2.Date;
  QNovedades.Open;
  DBGrid1.SetFocus;
end;

procedure TfrmConsNovedades.QNovedadesCalcFields(DataSet: TDataSet);
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

procedure TfrmConsNovedades.BitBtn1Click(Sender: TObject);
begin
  Application.CreateForm(tRConsNovedades, RConsNovedades);
  RConsNovedades.lbtipo.Caption := DBLookupComboBox1.Text;
  if ckempleado.Checked then
    RConsNovedades.lbempleado.Caption := DBLookupComboBox4.Text
  else
    RConsNovedades.lbempleado.Caption := '';

  RConsNovedades.lbperiodo.Caption := 'Del '+DateToStr(fecha1.Date)+' Al '+DateToStr(fecha2.date);
  
  RConsNovedades.QNovedades.SQL := QNovedades.SQL;
  RConsNovedades.QNovedades.Parameters.ParamByName('tno').Value := DBLookupComboBox1.KeyValue;
  RConsNovedades.QNovedades.Parameters.ParamByName('emp_codigo').Value := dm.QEmpresasEMP_CODIGO.Value;
  RConsNovedades.QNovedades.Parameters.ParamByName('fec1').DataType := ftdate;
  RConsNovedades.QNovedades.Parameters.ParamByName('fec2').DataType := ftdate;
  RConsNovedades.QNovedades.Parameters.ParamByName('fec1').Value    := fecha1.Date;
  RConsNovedades.QNovedades.Parameters.ParamByName('fec2').Value    := fecha2.Date;
  RConsNovedades.QNovedades.Open;
  RConsNovedades.PrinterSetup;
  RConsNovedades.Preview;
  RConsNovedades.Destroy;
end;

procedure TfrmConsNovedades.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmConsNovedades.BitBtn3Click(Sender: TObject);
begin
  Application.CreateForm(tRConsNovedadesDetalle, RConsNovedadesDetalle);

  RConsNovedadesDetalle.QNovedades.SQL := Memo1.Lines;
  if ckempleado.Checked then
  begin
    RConsNovedadesDetalle.QNovedades.SQL.Add('and n.emp_numero = '+inttostr(DBLookupComboBox4.KeyValue));
    RConsNovedadesDetalle.QDetalle.SQL.Add('and n.emp_numero = '+inttostr(DBLookupComboBox4.KeyValue));
  end;

  if QNovedadesIngreso.AsFloat > 0 then
  begin
     RConsNovedadesDetalle.QDetalle.SQL.Add('and n.tin_codigo = '+inttostr(QNovedadestin_codigo.AsInteger));
     RConsNovedadesDetalle.QNovedades.SQL.Add('and n.tin_codigo = '+inttostr(QNovedadestin_codigo.AsInteger));
  end
  else
  begin
     RConsNovedadesDetalle.QDetalle.SQL.Add('and n.tde_codigo = '+inttostr(QNovedadestde_codigo.AsInteger));
     RConsNovedadesDetalle.QNovedades.SQL.Add('and n.tde_codigo = '+inttostr(QNovedadestde_codigo.AsInteger));
  end;

  RConsNovedadesDetalle.lbtipo.Caption := DBLookupComboBox1.Text;
  if ckempleado.Checked then
    RConsNovedadesDetalle.lbempleado.Caption := DBLookupComboBox4.Text
  else
    RConsNovedadesDetalle.lbempleado.Caption := '';

  RConsNovedadesDetalle.lbperiodo.Caption := 'Del '+DateToStr(fecha1.Date)+' Al '+DateToStr(fecha2.date);

  RConsNovedadesDetalle.QDetalle.SQL.Add('order by m.nom_fecha_acreditar desc');
  
  RConsNovedadesDetalle.QNovedades.SQL.Add('group by i.tin_nombre, d.tde_nombre, n.tin_codigo, n.tde_codigo');
  RConsNovedadesDetalle.QNovedades.SQL.Add('order by 3');

  RConsNovedadesDetalle.QNovedades.Parameters.ParamByName('tno').Value := DBLookupComboBox1.KeyValue;
  RConsNovedadesDetalle.QNovedades.Parameters.ParamByName('emp_codigo').Value := dm.QEmpresasEMP_CODIGO.Value;
  RConsNovedadesDetalle.QNovedades.Parameters.ParamByName('fec1').DataType := ftdate;
  RConsNovedadesDetalle.QNovedades.Parameters.ParamByName('fec2').DataType := ftdate;
  RConsNovedadesDetalle.QNovedades.Parameters.ParamByName('fec1').Value    := fecha1.Date;
  RConsNovedadesDetalle.QNovedades.Parameters.ParamByName('fec2').Value    := fecha2.Date;
  RConsNovedadesDetalle.QNovedades.Open;

  RConsNovedadesDetalle.QDetalle.Parameters.ParamByName('tno').Value := DBLookupComboBox1.KeyValue;
  RConsNovedadesDetalle.QDetalle.Parameters.ParamByName('emp_codigo').Value := dm.QEmpresasEMP_CODIGO.Value;
  RConsNovedadesDetalle.QDetalle.Parameters.ParamByName('fec1').DataType := ftdate;
  RConsNovedadesDetalle.QDetalle.Parameters.ParamByName('fec2').DataType := ftdate;
  RConsNovedadesDetalle.QDetalle.Parameters.ParamByName('fec1').Value    := fecha1.Date;
  RConsNovedadesDetalle.QDetalle.Parameters.ParamByName('fec2').Value    := fecha2.Date;
  RConsNovedadesDetalle.QDetalle.Open;
  RConsNovedadesDetalle.PrinterSetup;
  RConsNovedadesDetalle.Preview;
  RConsNovedadesDetalle.Destroy;
end;

end.
