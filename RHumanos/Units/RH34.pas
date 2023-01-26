unit RH34;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, ActnList, DB, ADODB, Grids, DBGrids,
  StdCtrls, Mask, DBCtrls;

type
  TfrmEmpleadosDependientes = class(TForm)
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
    QDepend: TADOQuery;
    dsDepend: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    QDependemp_codigo: TIntegerField;
    QDependemp_numero: TIntegerField;
    QDependdep_numero: TIntegerField;
    QDependdep_nombre: TStringField;
    QDependdep_fecha_nacimiento: TDateTimeField;
    QDependdep_parentesco: TStringField;
    QListadodep_numero: TIntegerField;
    QListadodep_nombre: TStringField;
    QListadodep_fecha_nacimiento: TDateTimeField;
    QListadodep_parentesco: TStringField;
    procedure btInsertExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btEditExecute(Sender: TObject);
    procedure btDeleteExecute(Sender: TObject);
    procedure btPostExecute(Sender: TObject);
    procedure btCancelExecute(Sender: TObject);
    procedure QDependAfterPost(DataSet: TDataSet);
    procedure QDependAfterDelete(DataSet: TDataSet);
    procedure QDependBeforePost(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure btCloseExecute(Sender: TObject);
    procedure dsDependStateChange(Sender: TObject);
    procedure QDependNewRecord(DataSet: TDataSet);
    procedure DBGrid3DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    empleado : integer;
  end;

var
  frmEmpleadosDependientes: TfrmEmpleadosDependientes;

implementation

uses SIGMA01;

{$R *.dfm}

procedure TfrmEmpleadosDependientes.btInsertExecute(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 1;
  QDepend.Insert;
  DBEdit1.SetFocus;
end;

procedure TfrmEmpleadosDependientes.FormKeyPress(Sender: TObject;
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

procedure TfrmEmpleadosDependientes.btEditExecute(Sender: TObject);
begin
  QDepend.Close;
  QDepend.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  QDepend.Parameters.ParamByName('num').Value := empleado;
  QDepend.Parameters.ParamByName('sec').Value := QListadodep_numero.Value;
  QDepend.Open;
  PageControl1.ActivePageIndex := 1;
  QDepend.Edit;
  DBEdit1.SetFocus;
end;

procedure TfrmEmpleadosDependientes.btDeleteExecute(Sender: TObject);
begin
  if MessageDlg('Está seguro?',mtConfirmation,[mbyes,mbno],0) = mryes then
  begin
    QDepend.Close;
    QDepend.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    QDepend.Parameters.ParamByName('num').Value := empleado;
    QDepend.Parameters.ParamByName('sec').Value := QListadodep_numero.Value;
    QDepend.Open;
    QDepend.Delete;
  end;
end;

procedure TfrmEmpleadosDependientes.btPostExecute(Sender: TObject);
begin
  QDepend.Post;
  PageControl1.ActivePageIndex := 0;
end;

procedure TfrmEmpleadosDependientes.btCancelExecute(Sender: TObject);
begin
  QDepend.Cancel;
  PageControl1.ActivePageIndex := 0;
end;

procedure TfrmEmpleadosDependientes.QDependAfterPost(DataSet: TDataSet);
begin
  QDepend.UpdateBatch;
  QListado.Close;
  QListado.Open;
end;

procedure TfrmEmpleadosDependientes.QDependAfterDelete(DataSet: TDataSet);
begin
  QDepend.UpdateBatch;
  QListado.Close;
  QListado.Open;
end;

procedure TfrmEmpleadosDependientes.QDependBeforePost(DataSet: TDataSet);
begin
  if QDepend.State = dsInsert then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select max(dep_numero) as maximo');
    dm.Query1.SQL.Add('from empleado_dependientes');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and emp_numero = :num');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('num').Value := empleado;
    dm.Query1.Open;
    QDependdep_numero.Value := dm.Query1.FieldByName('maximo').AsInteger + 1;
  end;
end;

procedure TfrmEmpleadosDependientes.FormActivate(Sender: TObject);
begin
  if not QListado.Active then
  begin
    QDepend.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    QDepend.Parameters.ParamByName('num').Value := empleado;
    QDepend.Parameters.ParamByName('sec').Value := -1;
    QDepend.Open;

    QListado.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    QListado.Parameters.ParamByName('num').Value := empleado;
    QListado.Open;
  end;
end;

procedure TfrmEmpleadosDependientes.btCloseExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmEmpleadosDependientes.dsDependStateChange(Sender: TObject);
begin
  btInsert.enabled  := dsDepend.State = dsbrowse;
  btEdit.enabled    := btInsert.enabled;
  btDelete.enabled  := btInsert.enabled;
  btPost.enabled    := not btInsert.enabled;
  btCancel.enabled  := not btInsert.enabled;
end;

procedure TfrmEmpleadosDependientes.QDependNewRecord(DataSet: TDataSet);
begin
  QDependemp_codigo.Value := dm.QEmpresasEMP_CODIGO.Value;
  QDependemp_numero.Value := empleado;
end;

procedure TfrmEmpleadosDependientes.DBGrid3DblClick(Sender: TObject);
begin
  QDepend.Close;
  QDepend.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  QDepend.Parameters.ParamByName('num').Value := empleado;
  QDepend.Parameters.ParamByName('sec').Value := QListadodep_numero.Value;
  QDepend.Open;
  PageControl1.ActivePageIndex := 1;
  QDepend.Edit;
end;

end.
