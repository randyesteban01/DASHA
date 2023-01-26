unit RH32;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, ActnList, DB, ADODB, Grids, DBGrids,
  StdCtrls, Mask, DBCtrls;

type
  TfrmEmpleadosEstudios = class(TForm)
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
    QListadopai_nombre: TStringField;
    QListadoins_nombre: TStringField;
    QListadoest_desde: TDateTimeField;
    QListadoest_hasta: TDateTimeField;
    QListadoest_titulo: TStringField;
    dsListado: TDataSource;
    QEstudios: TADOQuery;
    QEstudiosemp_codigo: TIntegerField;
    QEstudiosemp_numero: TIntegerField;
    QEstudiosest_secuencia: TIntegerField;
    QEstudiosest_desde: TDateTimeField;
    QEstudiosest_hasta: TDateTimeField;
    QEstudiospai_codigo: TIntegerField;
    QEstudiosest_titulo: TStringField;
    QEstudiosins_codigo: TIntegerField;
    dsEstudios: TDataSource;
    QPaises: TADOQuery;
    QPaisespai_codigo: TIntegerField;
    QPaisespai_nombre: TStringField;
    dsPaises: TDataSource;
    dsInst: TDataSource;
    QInstitucion: TADOQuery;
    QInstitucionins_codigo: TIntegerField;
    QInstitucionins_nombre: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    QEstudiosest_estudio: TStringField;
    QListadoest_secuencia: TIntegerField;
    procedure btInsertExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btEditExecute(Sender: TObject);
    procedure btDeleteExecute(Sender: TObject);
    procedure btPostExecute(Sender: TObject);
    procedure btCancelExecute(Sender: TObject);
    procedure QEstudiosAfterPost(DataSet: TDataSet);
    procedure QEstudiosAfterDelete(DataSet: TDataSet);
    procedure QEstudiosBeforePost(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure btCloseExecute(Sender: TObject);
    procedure dsEstudiosStateChange(Sender: TObject);
    procedure QEstudiosNewRecord(DataSet: TDataSet);
    procedure DBGrid3DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    empleado : integer;
  end;

var
  frmEmpleadosEstudios: TfrmEmpleadosEstudios;

implementation

uses SIGMA01;

{$R *.dfm}

procedure TfrmEmpleadosEstudios.btInsertExecute(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 1;
  QEstudios.Insert;
  DBEdit1.SetFocus;
end;

procedure TfrmEmpleadosEstudios.FormKeyPress(Sender: TObject;
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

procedure TfrmEmpleadosEstudios.btEditExecute(Sender: TObject);
begin
  QEstudios.Close;
  QEstudios.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  QEstudios.Parameters.ParamByName('num').Value := empleado;
  QEstudios.Parameters.ParamByName('sec').Value := QListadoest_secuencia.Value;
  QEstudios.Open;
  PageControl1.ActivePageIndex := 1;
  QEstudios.Edit;
  DBEdit1.SetFocus;
end;

procedure TfrmEmpleadosEstudios.btDeleteExecute(Sender: TObject);
begin
  if MessageDlg('Está seguro?',mtConfirmation,[mbyes,mbno],0) = mryes then
  begin
    QEstudios.Close;
    QEstudios.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    QEstudios.Parameters.ParamByName('num').Value := empleado;
    QEstudios.Parameters.ParamByName('sec').Value := QListadoest_secuencia.Value;
    QEstudios.Open;
    QEstudios.Delete;
  end;
end;

procedure TfrmEmpleadosEstudios.btPostExecute(Sender: TObject);
begin
  QEstudios.Post;
  PageControl1.ActivePageIndex := 0;
end;

procedure TfrmEmpleadosEstudios.btCancelExecute(Sender: TObject);
begin
  QEstudios.Cancel;
  PageControl1.ActivePageIndex := 0;
end;

procedure TfrmEmpleadosEstudios.QEstudiosAfterPost(DataSet: TDataSet);
begin
  QEstudios.UpdateBatch;
  QListado.Close;
  QListado.Open;
end;

procedure TfrmEmpleadosEstudios.QEstudiosAfterDelete(DataSet: TDataSet);
begin
  QEstudios.UpdateBatch;
  QListado.Close;
  QListado.Open;
end;

procedure TfrmEmpleadosEstudios.QEstudiosBeforePost(DataSet: TDataSet);
begin
  if QEstudios.State = dsInsert then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select max(est_secuencia) as maximo');
    dm.Query1.SQL.Add('from empleado_Estudios');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and emp_numero = :num');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('num').Value := empleado;
    dm.Query1.Open;
    QEstudiosest_secuencia.Value := dm.Query1.FieldByName('maximo').AsInteger + 1;
  end;
end;

procedure TfrmEmpleadosEstudios.FormActivate(Sender: TObject);
begin
  if not QListado.Active then
  begin
    QEstudios.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    QEstudios.Parameters.ParamByName('num').Value := empleado;
    QEstudios.Parameters.ParamByName('sec').Value := -1;
    QEstudios.Open;

    QListado.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    QListado.Parameters.ParamByName('num').Value := empleado;
    QListado.Open;

    QPaises.Open;
    QInstitucion.Open;
  end;
end;

procedure TfrmEmpleadosEstudios.btCloseExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmEmpleadosEstudios.dsEstudiosStateChange(Sender: TObject);
begin
  btInsert.enabled  := dsEstudios.State = dsbrowse;
  btEdit.enabled    := btInsert.enabled;
  btDelete.enabled  := btInsert.enabled;
  btPost.enabled    := not btInsert.enabled;
  btCancel.enabled  := not btInsert.enabled;
end;

procedure TfrmEmpleadosEstudios.QEstudiosNewRecord(DataSet: TDataSet);
begin
  QEstudiosemp_codigo.Value := dm.QEmpresasEMP_CODIGO.Value;
  QEstudiosemp_numero.Value := empleado;
end;

procedure TfrmEmpleadosEstudios.DBGrid3DblClick(Sender: TObject);
begin
  QEstudios.Close;
  QEstudios.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  QEstudios.Parameters.ParamByName('num').Value := empleado;
  QEstudios.Parameters.ParamByName('sec').Value := QListadoest_secuencia.Value;
  QEstudios.Open;
  PageControl1.ActivePageIndex := 1;
  QEstudios.Edit;
end;

end.
