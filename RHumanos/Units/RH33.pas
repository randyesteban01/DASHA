unit RH33;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, ActnList, DB, ADODB, Grids, DBGrids,
  StdCtrls, Mask, DBCtrls;

type
  TfrmEmpleadosExperiencia = class(TForm)
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
    QExperiencia: TADOQuery;
    dsExperiencia: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    QExperienciaemp_codigo: TIntegerField;
    QExperienciaemp_numero: TIntegerField;
    QExperienciaexp_secuencia: TIntegerField;
    QExperienciaexp_empleador: TStringField;
    QExperienciaexp_telefono: TStringField;
    QExperienciaexp_funcion: TStringField;
    QExperienciaexp_desde: TDateTimeField;
    QExperienciaexp_hasta: TDateTimeField;
    QExperienciaexp_motivo_salida: TStringField;
    QExperienciaexp_posicion: TStringField;
    QListadoexp_empleador: TStringField;
    QListadoexp_telefono: TStringField;
    QListadoexp_funcion: TStringField;
    QListadoexp_desde: TDateTimeField;
    QListadoexp_hasta: TDateTimeField;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    QListadoexp_secuencia: TIntegerField;
    procedure btInsertExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btEditExecute(Sender: TObject);
    procedure btDeleteExecute(Sender: TObject);
    procedure btPostExecute(Sender: TObject);
    procedure btCancelExecute(Sender: TObject);
    procedure QExperienciaAfterPost(DataSet: TDataSet);
    procedure QExperienciaAfterDelete(DataSet: TDataSet);
    procedure QExperienciaBeforePost(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure btCloseExecute(Sender: TObject);
    procedure dsExperienciaStateChange(Sender: TObject);
    procedure QExperienciaNewRecord(DataSet: TDataSet);
    procedure DBGrid3DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    empleado : integer;
  end;

var
  frmEmpleadosExperiencia: TfrmEmpleadosExperiencia;

implementation

uses SIGMA01;

{$R *.dfm}

procedure TfrmEmpleadosExperiencia.btInsertExecute(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 1;
  QExperiencia.Insert;
  DBEdit6.SetFocus;
end;

procedure TfrmEmpleadosExperiencia.FormKeyPress(Sender: TObject;
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

procedure TfrmEmpleadosExperiencia.btEditExecute(Sender: TObject);
begin
  QExperiencia.Close;
  QExperiencia.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  QExperiencia.Parameters.ParamByName('num').Value := empleado;
  QExperiencia.Parameters.ParamByName('sec').Value := QListadoexp_secuencia.Value;
  QExperiencia.Open;
  PageControl1.ActivePageIndex := 1;
  QExperiencia.Edit;
  DBEdit6.SetFocus;
end;

procedure TfrmEmpleadosExperiencia.btDeleteExecute(Sender: TObject);
begin
  if MessageDlg('Está seguro?',mtConfirmation,[mbyes,mbno],0) = mryes then
  begin
    QExperiencia.Close;
    QExperiencia.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    QExperiencia.Parameters.ParamByName('num').Value := empleado;
    QExperiencia.Parameters.ParamByName('sec').Value := QListadoexp_secuencia.Value;
    QExperiencia.Open;
    QExperiencia.Delete;
  end;
end;

procedure TfrmEmpleadosExperiencia.btPostExecute(Sender: TObject);
begin
  QExperiencia.Post;
  PageControl1.ActivePageIndex := 0;
end;

procedure TfrmEmpleadosExperiencia.btCancelExecute(Sender: TObject);
begin
  QExperiencia.Cancel;
  PageControl1.ActivePageIndex := 0;
end;

procedure TfrmEmpleadosExperiencia.QExperienciaAfterPost(DataSet: TDataSet);
begin
  QExperiencia.UpdateBatch;
  QListado.Close;
  QListado.Open;
end;

procedure TfrmEmpleadosExperiencia.QExperienciaAfterDelete(DataSet: TDataSet);
begin
  QExperiencia.UpdateBatch;
  QListado.Close;
  QListado.Open;
end;

procedure TfrmEmpleadosExperiencia.QExperienciaBeforePost(DataSet: TDataSet);
begin
  if QExperiencia.State = dsInsert then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select max(exp_secuencia) as maximo');
    dm.Query1.SQL.Add('from empleado_experiencia');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and emp_numero = :num');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('num').Value := empleado;
    dm.Query1.Open;
    QExperienciaexp_secuencia.Value := dm.Query1.FieldByName('maximo').AsInteger + 1;
  end;
end;

procedure TfrmEmpleadosExperiencia.FormActivate(Sender: TObject);
begin
  if not QListado.Active then
  begin
    QExperiencia.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    QExperiencia.Parameters.ParamByName('num').Value := empleado;
    QExperiencia.Parameters.ParamByName('sec').Value := -1;
    QExperiencia.Open;

    QListado.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    QListado.Parameters.ParamByName('num').Value := empleado;
    QListado.Open;
  end;
end;

procedure TfrmEmpleadosExperiencia.btCloseExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmEmpleadosExperiencia.dsExperienciaStateChange(Sender: TObject);
begin
  btInsert.enabled  := dsExperiencia.State = dsbrowse;
  btEdit.enabled    := btInsert.enabled;
  btDelete.enabled  := btInsert.enabled;
  btPost.enabled    := not btInsert.enabled;
  btCancel.enabled  := not btInsert.enabled;
end;

procedure TfrmEmpleadosExperiencia.QExperienciaNewRecord(DataSet: TDataSet);
begin
  QExperienciaemp_codigo.Value := dm.QEmpresasEMP_CODIGO.Value;
  QExperienciaemp_numero.Value := empleado;
end;

procedure TfrmEmpleadosExperiencia.DBGrid3DblClick(Sender: TObject);
begin
  QExperiencia.Close;
  QExperiencia.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  QExperiencia.Parameters.ParamByName('num').Value := empleado;
  QExperiencia.Parameters.ParamByName('sec').Value := QListadoexp_secuencia.Value;
  QExperiencia.Open;
  PageControl1.ActivePageIndex := 1;
  QExperiencia.Edit;
end;

end.
