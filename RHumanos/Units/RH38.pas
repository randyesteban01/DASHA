unit RH38;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, ActnList, DB, ADODB, Grids, DBGrids,
  StdCtrls, Mask, DBCtrls, ExtCtrls;

type
  TfrmEmpleadosHabilidades = class(TForm)
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
    QHabilidades: TADOQuery;
    dsHabildiades: TDataSource;
    QCategoria: TADOQuery;
    QCategoriacat_codigo: TIntegerField;
    QCategoriacat_nombre: TStringField;
    QCategoriaemp_codigo: TIntegerField;
    dsCategoria: TDataSource;
    QHabilidad: TADOQuery;
    QHabilidadhab_codigo: TIntegerField;
    QHabilidadhab_nombre: TStringField;
    dsHabilidad: TDataSource;
    QHabilidadesemp_codigo: TIntegerField;
    QHabilidadesemp_numero: TIntegerField;
    QHabilidadescat_codigo: TIntegerField;
    QHabilidadeshab_codigo: TIntegerField;
    QHabilidadeshab_secuencia: TIntegerField;
    QHabilidadeshab_destreza: TStringField;
    QHabilidadeshab_porcentaje: TBCDField;
    QListadocat_codigo: TIntegerField;
    QListadohab_codigo: TIntegerField;
    QListadohab_secuencia: TIntegerField;
    QListadohab_porcentaje: TBCDField;
    QListadohab_nombre: TStringField;
    QListadocat_nombre: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBRadioGroup1: TDBRadioGroup;
    QListadodestreza: TStringField;
    procedure btInsertExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btEditExecute(Sender: TObject);
    procedure btDeleteExecute(Sender: TObject);
    procedure btPostExecute(Sender: TObject);
    procedure btCancelExecute(Sender: TObject);
    procedure QHabilidadesAfterPost(DataSet: TDataSet);
    procedure QHabilidadesAfterDelete(DataSet: TDataSet);
    procedure QHabilidadesBeforePost(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure btCloseExecute(Sender: TObject);
    procedure dsHabildiadesStateChange(Sender: TObject);
    procedure QHabilidadesNewRecord(DataSet: TDataSet);
    procedure DBGrid3DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    empleado : integer;
  end;

var
  frmEmpleadosHabilidades: TfrmEmpleadosHabilidades;

implementation

uses SIGMA01;

{$R *.dfm}

procedure TfrmEmpleadosHabilidades.btInsertExecute(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 1;
  QHabilidades.Insert;
end;

procedure TfrmEmpleadosHabilidades.FormKeyPress(Sender: TObject;
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

procedure TfrmEmpleadosHabilidades.btEditExecute(Sender: TObject);
begin
  QHabilidades.Close;
  QHabilidades.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  QHabilidades.Parameters.ParamByName('num').Value := empleado;
  QHabilidades.Parameters.ParamByName('sec').Value := QListadohab_secuencia.Value;
  QHabilidades.Open;
  PageControl1.ActivePageIndex := 1;
  QHabilidades.Edit;
end;

procedure TfrmEmpleadosHabilidades.btDeleteExecute(Sender: TObject);
begin
  if MessageDlg('Está seguro?',mtConfirmation,[mbyes,mbno],0) = mryes then
  begin
    QHabilidades.Close;
    QHabilidades.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    QHabilidades.Parameters.ParamByName('num').Value := empleado;
    QHabilidades.Parameters.ParamByName('sec').Value := QListadohab_secuencia.Value;
    QHabilidades.Open;
    QHabilidades.Delete;
  end;
end;

procedure TfrmEmpleadosHabilidades.btPostExecute(Sender: TObject);
begin
  QHabilidades.Post;
  PageControl1.ActivePageIndex := 0;
end;

procedure TfrmEmpleadosHabilidades.btCancelExecute(Sender: TObject);
begin
  QHabilidades.Cancel;
  PageControl1.ActivePageIndex := 0;
end;

procedure TfrmEmpleadosHabilidades.QHabilidadesAfterPost(DataSet: TDataSet);
begin
  QHabilidades.UpdateBatch;
  QListado.Close;
  QListado.Open;
end;

procedure TfrmEmpleadosHabilidades.QHabilidadesAfterDelete(DataSet: TDataSet);
begin
  QHabilidades.UpdateBatch;
  QListado.Close;
  QListado.Open;
end;

procedure TfrmEmpleadosHabilidades.QHabilidadesBeforePost(DataSet: TDataSet);
begin
  if QHabilidades.State = dsInsert then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select max(hab_secuencia) as maximo');
    dm.Query1.SQL.Add('from empleado_habilidades');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and emp_numero = :num');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('num').Value := empleado;
    dm.Query1.Open;
    QHabilidadeshab_secuencia.Value := dm.Query1.FieldByName('maximo').AsInteger + 1;
  end;
  if QHabilidadeshab_destreza.Value = 'E' then
    QHabilidadeshab_porcentaje.Value := 100
  else if QHabilidadeshab_destreza.Value = 'M' then
    QHabilidadeshab_porcentaje.Value := 75
  else if QHabilidadeshab_destreza.Value = 'B' then
    QHabilidadeshab_porcentaje.Value := 50
  else if QHabilidadeshab_destreza.Value = 'R' then
    QHabilidadeshab_porcentaje.Value := 25;
end;

procedure TfrmEmpleadosHabilidades.FormActivate(Sender: TObject);
begin
  if not QListado.Active then
  begin
    QHabilidades.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    QHabilidades.Parameters.ParamByName('num').Value := empleado;
    QHabilidades.Parameters.ParamByName('sec').Value := -1;
    QHabilidades.Open;

    QListado.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    QListado.Parameters.ParamByName('num').Value := empleado;
    QListado.Open;

    QHabilidad.Open;
    QCategoria.Open;
  end;
end;

procedure TfrmEmpleadosHabilidades.btCloseExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmEmpleadosHabilidades.dsHabildiadesStateChange(Sender: TObject);
begin
  btInsert.enabled  := dsHabildiades.State = dsbrowse;
  btEdit.enabled    := btInsert.enabled;
  btDelete.enabled  := btInsert.enabled;
  btPost.enabled    := not btInsert.enabled;
  btCancel.enabled  := not btInsert.enabled;
end;

procedure TfrmEmpleadosHabilidades.QHabilidadesNewRecord(DataSet: TDataSet);
begin
  QHabilidadesemp_codigo.Value := dm.QEmpresasEMP_CODIGO.Value;
  QHabilidadesemp_numero.Value := empleado;
  QHabilidadeshab_destreza.Value := 'B';
end;

procedure TfrmEmpleadosHabilidades.DBGrid3DblClick(Sender: TObject);
begin
  QHabilidades.Close;
  QHabilidades.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  QHabilidades.Parameters.ParamByName('num').Value := empleado;
  QHabilidades.Parameters.ParamByName('sec').Value := QListadohab_secuencia.Value;
  QHabilidades.Open;
  PageControl1.ActivePageIndex := 1;
  QHabilidades.Edit;
end;

end.
