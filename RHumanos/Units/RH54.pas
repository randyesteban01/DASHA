unit RH54;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, Grids, DBGrids, DB, ADODB;

type
  TfrmTablaSS = class(TForm)
    btClose: TBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    QMensual: TADOQuery;
    QMensualemp_codigo: TIntegerField;
    QMensualss_secuencia: TIntegerField;
    QMensualss_desde: TBCDField;
    QMensualss_hasta: TBCDField;
    QMensualss_semana4_patrono: TBCDField;
    QMensualss_semana4_empleado: TBCDField;
    QMensualss_semana5_patrono: TBCDField;
    QMensualss_semana5_empleado: TBCDField;
    dsMensual: TDataSource;
    BitBtn1: TBitBtn;
    QSemanal: TADOQuery;
    QSemanalemp_codigo: TIntegerField;
    QSemanalss_secuencia: TIntegerField;
    QSemanalss_desde: TBCDField;
    QSemanalss_hasta: TBCDField;
    QSemanalss_patrono: TBCDField;
    QSemanalss_empleado: TBCDField;
    dsSemanal: TDataSource;
    DBGrid2: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure QMensualAfterPost(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure QMensualAfterDelete(DataSet: TDataSet);
    procedure DBGrid1Enter(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid2Enter(Sender: TObject);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure QSemanalAfterDelete(DataSet: TDataSet);
    procedure QSemanalAfterPost(DataSet: TDataSet);
    procedure QMensualNewRecord(DataSet: TDataSet);
    procedure QSemanalNewRecord(DataSet: TDataSet);
    procedure QMensualBeforePost(DataSet: TDataSet);
    procedure QSemanalBeforePost(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure QMensualss_semana4_patronoChange(Sender: TField);
    procedure QMensualss_semana4_empleadoChange(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
    UltimoMonto : double;
  end;

var
  frmTablaSS: TfrmTablaSS;

implementation

uses SIGMA01;

{$R *.dfm}

procedure TfrmTablaSS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmTablaSS.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmTablaSS.QMensualAfterPost(DataSet: TDataSet);
begin
  QMensual.UpdateBatch;
end;

procedure TfrmTablaSS.BitBtn1Click(Sender: TObject);
begin
  if MessageDlg('Está seguro?', mtConfirmation, [mbyes, mbno],0) = mryes then
    QMensual.Delete;
end;

procedure TfrmTablaSS.QMensualAfterDelete(DataSet: TDataSet);
begin
  QMensual.UpdateBatch;
end;

procedure TfrmTablaSS.DBGrid1Enter(Sender: TObject);
begin
  DBGrid1.SelectedIndex := 0;
end;

procedure TfrmTablaSS.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if DBGrid1.SelectedIndex <> 5 then
      DBGrid1.SelectedIndex := DBGrid1.SelectedIndex + 1
    else
    begin
      DBGrid1.SelectedIndex := 0;
      QMensual.Append;
    end;
  end;
end;

procedure TfrmTablaSS.DBGrid2Enter(Sender: TObject);
begin
  DBGrid2.SelectedIndex := 0;
end;

procedure TfrmTablaSS.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if DBGrid2.SelectedIndex <> 3 then
      DBGrid2.SelectedIndex := DBGrid2.SelectedIndex + 1
    else
    begin
      DBGrid2.SelectedIndex := 0;
      QSemanal.Append;
    end;
  end;
end;

procedure TfrmTablaSS.QSemanalAfterDelete(DataSet: TDataSet);
begin
  QSemanal.UpdateBatch;
end;

procedure TfrmTablaSS.QSemanalAfterPost(DataSet: TDataSet);
begin
  QSemanal.UpdateBatch;
end;

procedure TfrmTablaSS.QMensualNewRecord(DataSet: TDataSet);
begin
  QMensualemp_codigo.Value := dm.QEmpresasEMP_CODIGO.Value;
  QMensualss_desde.Value   := UltimoMonto+0.01;
end;

procedure TfrmTablaSS.QSemanalNewRecord(DataSet: TDataSet);
begin
  QSemanalemp_codigo.Value := dm.QEmpresasEMP_CODIGO.Value;
  QSemanalss_desde.Value   := UltimoMonto+0.01;
end;

procedure TfrmTablaSS.QMensualBeforePost(DataSet: TDataSet);
begin
  if QMensual.State = dsInsert then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select isnull(max(ss_secuencia),0) as maximo');
    dm.Query1.SQL.Add('from ss_mensual');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Open;
    QMensualss_secuencia.Value := dm.Query1.FieldByName('maximo').Value+1;
  end;
  UltimoMonto := QMensualss_hasta.Value;
end;

procedure TfrmTablaSS.QSemanalBeforePost(DataSet: TDataSet);
begin
  if QSemanal.State = dsInsert then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select isnull(max(ss_secuencia),0) as maximo');
    dm.Query1.SQL.Add('from ss_semanal');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Open;
    QSemanalss_secuencia.Value := dm.Query1.FieldByName('maximo').Value+1;
  end;
  UltimoMonto := QSemanalss_hasta.Value;
end;

procedure TfrmTablaSS.FormActivate(Sender: TObject);
begin
  if not QMensual.Active then
  begin
    QMensual.Open;
    QSemanal.Open;
  end;
end;

procedure TfrmTablaSS.QMensualss_semana4_patronoChange(Sender: TField);
begin
  if (QMensualss_semana5_patrono.IsNull) or (QMensualss_semana5_patrono.Value = 0) then
    QMensualss_semana5_patrono.Value := QMensualss_semana4_patrono.Value;
end;

procedure TfrmTablaSS.QMensualss_semana4_empleadoChange(Sender: TField);
begin
  if (QMensualss_semana5_empleado.IsNull) or (QMensualss_semana5_empleado.Value = 0) then
    QMensualss_semana5_empleado.Value := QMensualss_semana4_empleado.Value;
end;

end.
