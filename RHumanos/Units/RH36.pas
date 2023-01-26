unit RH36;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, ActnList, DB, ADODB, Grids, DBGrids,
  StdCtrls, Mask, DBCtrls, ExtCtrls;

type
  TfrmEmpleadosLicencias = class(TForm)
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
    QLicencias: TADOQuery;
    dsLicencias: TDataSource;
    QMotivos: TADOQuery;
    QMotivosmot_codigo: TIntegerField;
    QMotivosmot_nombre: TStringField;
    dsMotivos: TDataSource;
    QLicenciasemp_codigo: TIntegerField;
    QLicenciasemp_numero: TIntegerField;
    QLicenciaslic_secuencia: TIntegerField;
    QLicenciaslic_desde: TDateTimeField;
    QLicenciaslic_hasta: TDateTimeField;
    QLicenciaslic_observacion: TMemoField;
    QLicenciaslic_disfrute_sueldo: TStringField;
    QListadolic_secuencia: TIntegerField;
    QListadolic_desde: TDateTimeField;
    QListadolic_hasta: TDateTimeField;
    QListadolic_observacion: TMemoField;
    QListadolic_disfrute_sueldo: TStringField;
    QListadomot_nombre: TStringField;
    QLicenciasmot_codigo: TIntegerField;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit1: TDBEdit;
    DBMemo1: TDBMemo;
    DBRadioGroup1: TDBRadioGroup;
    DBEdit2: TDBEdit;
    procedure btInsertExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btEditExecute(Sender: TObject);
    procedure btDeleteExecute(Sender: TObject);
    procedure btPostExecute(Sender: TObject);
    procedure btCancelExecute(Sender: TObject);
    procedure QLicenciasAfterPost(DataSet: TDataSet);
    procedure QLicenciasAfterDelete(DataSet: TDataSet);
    procedure QLicenciasBeforePost(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure btCloseExecute(Sender: TObject);
    procedure dsLicenciasStateChange(Sender: TObject);
    procedure QLicenciasNewRecord(DataSet: TDataSet);
    procedure DBGrid3DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    empleado : integer;
  end;

var
  frmEmpleadosLicencias: TfrmEmpleadosLicencias;

implementation

uses SIGMA01;

{$R *.dfm}

procedure TfrmEmpleadosLicencias.btInsertExecute(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 1;
  QLicencias.Insert;
  DBEdit1.SetFocus;
end;

procedure TfrmEmpleadosLicencias.FormKeyPress(Sender: TObject;
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

procedure TfrmEmpleadosLicencias.btEditExecute(Sender: TObject);
begin
  QLicencias.Close;
  QLicencias.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  QLicencias.Parameters.ParamByName('num').Value := empleado;
  QLicencias.Parameters.ParamByName('sec').Value := QListadolic_secuencia.Value;
  QLicencias.Open;
  PageControl1.ActivePageIndex := 1;
  QLicencias.Edit;
  DBEdit1.SetFocus;
end;

procedure TfrmEmpleadosLicencias.btDeleteExecute(Sender: TObject);
begin
  if MessageDlg('Está seguro?',mtConfirmation,[mbyes,mbno],0) = mryes then
  begin
    QLicencias.Close;
    QLicencias.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    QLicencias.Parameters.ParamByName('num').Value := empleado;
    QLicencias.Parameters.ParamByName('sec').Value := QListadolic_secuencia.Value;
    QLicencias.Open;
    QLicencias.Delete;
  end;
end;

procedure TfrmEmpleadosLicencias.btPostExecute(Sender: TObject);
begin
  QLicencias.Post;
  PageControl1.ActivePageIndex := 0;
end;

procedure TfrmEmpleadosLicencias.btCancelExecute(Sender: TObject);
begin
  QLicencias.Cancel;
  PageControl1.ActivePageIndex := 0;
end;

procedure TfrmEmpleadosLicencias.QLicenciasAfterPost(DataSet: TDataSet);
begin
  QLicencias.UpdateBatch;
  QListado.Close;
  QListado.Open;
end;

procedure TfrmEmpleadosLicencias.QLicenciasAfterDelete(DataSet: TDataSet);
begin
  QLicencias.UpdateBatch;
  QListado.Close;
  QListado.Open;
end;

procedure TfrmEmpleadosLicencias.QLicenciasBeforePost(DataSet: TDataSet);
begin
  if QLicencias.State = dsInsert then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select max(lic_secuencia) as maximo');
    dm.Query1.SQL.Add('from empleado_licencias');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and emp_numero = :num');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('num').Value := empleado;
    dm.Query1.Open;
    QLicenciaslic_secuencia.Value := dm.Query1.FieldByName('maximo').AsInteger + 1;
  end;
end;

procedure TfrmEmpleadosLicencias.FormActivate(Sender: TObject);
begin
  if not QListado.Active then
  begin
    QLicencias.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    QLicencias.Parameters.ParamByName('num').Value := empleado;
    QLicencias.Parameters.ParamByName('sec').Value := -1;
    QLicencias.Open;

    QListado.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    QListado.Parameters.ParamByName('num').Value := empleado;
    QListado.Open;

    QMotivos.Open;
  end;
end;

procedure TfrmEmpleadosLicencias.btCloseExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmEmpleadosLicencias.dsLicenciasStateChange(Sender: TObject);
begin
  btInsert.enabled  := dsLicencias.State = dsbrowse;
  btEdit.enabled    := btInsert.enabled;
  btDelete.enabled  := btInsert.enabled;
  btPost.enabled    := not btInsert.enabled;
  btCancel.enabled  := not btInsert.enabled;
end;

procedure TfrmEmpleadosLicencias.QLicenciasNewRecord(DataSet: TDataSet);
begin
  QLicenciasemp_codigo.Value := dm.QEmpresasEMP_CODIGO.Value;
  QLicenciasemp_numero.Value := empleado;
end;

procedure TfrmEmpleadosLicencias.DBGrid3DblClick(Sender: TObject);
begin
  QLicencias.Close;
  QLicencias.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  QLicencias.Parameters.ParamByName('num').Value := empleado;
  QLicencias.Parameters.ParamByName('sec').Value := QListadolic_secuencia.Value;
  QLicencias.Open;
  PageControl1.ActivePageIndex := 1;
  QLicencias.Edit;
end;

end.
