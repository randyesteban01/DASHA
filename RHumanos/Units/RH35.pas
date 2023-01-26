unit RH35;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, ActnList, DB, ADODB, Grids, DBGrids,
  StdCtrls, Mask, DBCtrls, ExtCtrls, DateUtils;

type
  TfrmEmpleadosPermisos = class(TForm)
    ActionList2: TActionList;
    btPrior: TAction;
    btNext: TAction;
    btInsert: TAction;
    btEdit: TAction;
    btDelete: TAction;
    btPost: TAction;
    btCancel: TAction;
    btFind: TAction;
    btPrint: TAction;
    btClose: TAction;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton11: TToolButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid3: TDBGrid;
    QListado: TADOQuery;
    dsListado: TDataSource;
    QPermisos: TADOQuery;
    dsPermisos: TDataSource;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit1: TDBEdit;
    QPermisosemp_codigo: TIntegerField;
    QPermisosemp_numero: TIntegerField;
    QPermisosper_secuencia: TIntegerField;
    QPermisosmot_codigo: TIntegerField;
    QPermisosper_fecha: TDateTimeField;
    QPermisosper_hora_salida: TDateTimeField;
    QPermisosper_hora_llegada: TDateTimeField;
    QPermisosper_observacion: TMemoField;
    QPermisosper_disfrute_sueldo: TStringField;
    QListadoper_secuencia: TIntegerField;
    QListadoper_fecha: TDateTimeField;
    QListadoper_observacion: TMemoField;
    QListadoper_disfrute_sueldo: TStringField;
    QListadomot_nombre: TStringField;
    QMotivos: TADOQuery;
    QMotivosmot_codigo: TIntegerField;
    QMotivosmot_nombre: TStringField;
    dsMotivos: TDataSource;
    Label2: TLabel;
    DBMemo1: TDBMemo;
    DBRadioGroup1: TDBRadioGroup;
    hora1: TDateTimePicker;
    hora2: TDateTimePicker;
    QListadoper_hora_salida: TDateTimeField;
    QListadoper_hora_llegada: TDateTimeField;
    procedure btInsertExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btEditExecute(Sender: TObject);
    procedure btDeleteExecute(Sender: TObject);
    procedure btPostExecute(Sender: TObject);
    procedure btCancelExecute(Sender: TObject);
    procedure QPermisosAfterPost(DataSet: TDataSet);
    procedure QPermisosAfterDelete(DataSet: TDataSet);
    procedure QPermisosBeforePost(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure btCloseExecute(Sender: TObject);
    procedure dsPermisosStateChange(Sender: TObject);
    procedure QPermisosNewRecord(DataSet: TDataSet);
    procedure DBGrid3DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    empleado : integer;
  end;

var
  frmEmpleadosPermisos: TfrmEmpleadosPermisos;

implementation

uses SIGMA01;

{$R *.dfm}

procedure TfrmEmpleadosPermisos.btInsertExecute(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 1;
  QPermisos.Insert;
  DBEdit1.SetFocus;
end;

procedure TfrmEmpleadosPermisos.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    if ActiveControl.ClassType <> TDBGrid then
    begin
      perform(wm_nextdlgctl, 0, 0);
      key := #0;
    end;
  end;
end;

procedure TfrmEmpleadosPermisos.btEditExecute(Sender: TObject);
begin
  QPermisos.Close;
  QPermisos.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  QPermisos.Parameters.ParamByName('num').Value := empleado;
  QPermisos.Parameters.ParamByName('sec').Value := QListadoper_secuencia.Value;
  QPermisos.Open;
  PageControl1.ActivePageIndex := 1;
  QPermisos.Edit;
  DBEdit1.SetFocus;
end;

procedure TfrmEmpleadosPermisos.btDeleteExecute(Sender: TObject);
begin
  if MessageDlg('Está seguro?',mtConfirmation,[mbyes,mbno],0) = mryes then
  begin
    QPermisos.Close;
    QPermisos.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    QPermisos.Parameters.ParamByName('num').Value := empleado;
    QPermisos.Parameters.ParamByName('sec').Value := QListadoper_secuencia.Value;
    QPermisos.Open;
    QPermisos.Delete;
  end;
end;

procedure TfrmEmpleadosPermisos.btPostExecute(Sender: TObject);
begin
  QPermisos.Post;
  PageControl1.ActivePageIndex := 0;
end;

procedure TfrmEmpleadosPermisos.btCancelExecute(Sender: TObject);
begin
  QPermisos.Cancel;
  PageControl1.ActivePageIndex := 0;
end;

procedure TfrmEmpleadosPermisos.QPermisosAfterPost(DataSet: TDataSet);
begin
  QPermisos.UpdateBatch;
  QListado.Close;
  QListado.Open;
end;

procedure TfrmEmpleadosPermisos.QPermisosAfterDelete(DataSet: TDataSet);
begin
  QPermisos.UpdateBatch;
  QListado.Close;
  QListado.Open;
end;

procedure TfrmEmpleadosPermisos.QPermisosBeforePost(DataSet: TDataSet);
begin
  if QPermisos.State = dsInsert then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select max(per_secuencia) as maximo');
    dm.Query1.SQL.Add('from empleado_permisos');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and emp_numero = :num');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('num').Value := empleado;
    dm.Query1.Open;
    QPermisosper_secuencia.Value := dm.Query1.FieldByName('maximo').AsInteger + 1;
  end;

  QPermisosper_hora_salida.Value  := hora1.Time;
  QPermisosper_hora_llegada.Value := hora2.Time;
end;

procedure TfrmEmpleadosPermisos.FormActivate(Sender: TObject);
begin
  if not QListado.Active then
  begin
    QPermisos.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    QPermisos.Parameters.ParamByName('num').Value := empleado;
    QPermisos.Parameters.ParamByName('sec').Value := -1;
    QPermisos.Open;

    QListado.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    QListado.Parameters.ParamByName('num').Value := empleado;
    QListado.Open;

    QMotivos.Open;
  end;
end;

procedure TfrmEmpleadosPermisos.btCloseExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmEmpleadosPermisos.dsPermisosStateChange(Sender: TObject);
begin
  btInsert.enabled  := dsPermisos.State = dsbrowse;
  btEdit.enabled    := btInsert.enabled;
  btDelete.enabled  := btInsert.enabled;
  btPost.enabled    := not btInsert.enabled;
  btCancel.enabled  := not btInsert.enabled;
end;

procedure TfrmEmpleadosPermisos.QPermisosNewRecord(DataSet: TDataSet);
begin
  QPermisosemp_codigo.Value := dm.QEmpresasEMP_CODIGO.Value;
  QPermisosemp_numero.Value := empleado;
  QPermisosper_fecha.Value  := Date;
  QPermisosper_hora_salida.Value := TimeOf(Now);
  QPermisosper_hora_llegada.Value := TimeOf(Now);
  QPermisosper_disfrute_sueldo.Value := 'Si';
  hora1.Time := TimeOf(Now);
  hora2.Time := TimeOf(Now);
end;

procedure TfrmEmpleadosPermisos.DBGrid3DblClick(Sender: TObject);
begin
  QPermisos.Close;
  QPermisos.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  QPermisos.Parameters.ParamByName('num').Value := empleado;
  QPermisos.Parameters.ParamByName('sec').Value := QListadoper_secuencia.Value;
  QPermisos.Open;
  hora1.Time := QPermisosper_hora_salida.AsDateTime;
  hora2.Time := QPermisosper_hora_llegada.AsDateTime;
  PageControl1.ActivePageIndex := 1;
  QPermisos.Edit;
end;

end.
