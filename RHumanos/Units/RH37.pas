unit RH37;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, ActnList, DB, ADODB, Grids, DBGrids,
  StdCtrls, Mask, DBCtrls, ExtCtrls;

type
  TfrmEmpleadosAusencias = class(TForm)
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
    QListado: TADOQuery;
    dsListado: TDataSource;
    QAusencias: TADOQuery;
    dsAusencias: TDataSource;
    QAusenciasemp_codigo: TIntegerField;
    QAusenciasemp_numero: TIntegerField;
    QAusenciasaus_secuencia: TIntegerField;
    QAusenciasaus_desde: TDateTimeField;
    QAusenciasaus_hasta: TDateTimeField;
    QAusenciasaus_observacion: TMemoField;
    QAusenciasaus_disfrute_sueldo: TStringField;
    QAusenciasmot_codigo: TIntegerField;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit1: TDBEdit;
    DBMemo1: TDBMemo;
    DBRadioGroup1: TDBRadioGroup;
    DBEdit2: TDBEdit;
    DBGrid3: TDBGrid;
    QListadoemp_codigo: TIntegerField;
    QListadoemp_numero: TIntegerField;
    QListadoaus_secuencia: TIntegerField;
    QListadoaus_desde: TDateTimeField;
    QListadoaus_hasta: TDateTimeField;
    QListadoaus_observacion: TMemoField;
    QListadoaus_disfrute_sueldo: TStringField;
    QListadomot_codigo: TIntegerField;
    QListadomot_nombre: TStringField;
    QMotivos: TADOQuery;
    QMotivosmot_codigo: TIntegerField;
    QMotivosmot_nombre: TStringField;
    dsMotivos: TDataSource;
    procedure btInsertExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btEditExecute(Sender: TObject);
    procedure btDeleteExecute(Sender: TObject);
    procedure btPostExecute(Sender: TObject);
    procedure btCancelExecute(Sender: TObject);
    procedure QAusenciasAfterPost(DataSet: TDataSet);
    procedure QAusenciasAfterDelete(DataSet: TDataSet);
    procedure QAusenciasBeforePost(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure btCloseExecute(Sender: TObject);
    procedure dsAusenciasStateChange(Sender: TObject);
    procedure QAusenciasNewRecord(DataSet: TDataSet);
    procedure DBGrid3DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    empleado : integer;
  end;

var
  frmEmpleadosAusencias: TfrmEmpleadosAusencias;

implementation

uses SIGMA01;

{$R *.dfm}

procedure TfrmEmpleadosAusencias.btInsertExecute(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 1;
  QAusencias.Insert;
  DBEdit1.SetFocus;
end;

procedure TfrmEmpleadosAusencias.FormKeyPress(Sender: TObject;
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

procedure TfrmEmpleadosAusencias.btEditExecute(Sender: TObject);
begin
  QAusencias.Close;
  QAusencias.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  QAusencias.Parameters.ParamByName('num').Value := empleado;
  QAusencias.Parameters.ParamByName('sec').Value := QListadoaus_secuencia.Value;
  QAusencias.Open;
  PageControl1.ActivePageIndex := 1;
  QAusencias.Edit;
  DBEdit1.SetFocus;
end;

procedure TfrmEmpleadosAusencias.btDeleteExecute(Sender: TObject);
begin
  if MessageDlg('Está seguro?',mtConfirmation,[mbyes,mbno],0) = mryes then
  begin
    QAusencias.Close;
    QAusencias.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    QAusencias.Parameters.ParamByName('num').Value := empleado;
    QAusencias.Parameters.ParamByName('sec').Value := QListadoaus_secuencia.Value;
    QAusencias.Open;
    QAusencias.Delete;
  end;
end;

procedure TfrmEmpleadosAusencias.btPostExecute(Sender: TObject);
begin
  QAusencias.Post;
  PageControl1.ActivePageIndex := 0;
end;

procedure TfrmEmpleadosAusencias.btCancelExecute(Sender: TObject);
begin
  QAusencias.Cancel;
  PageControl1.ActivePageIndex := 0;
end;

procedure TfrmEmpleadosAusencias.QAusenciasAfterPost(DataSet: TDataSet);
begin
  QAusencias.UpdateBatch;
  QListado.Close;
  QListado.Open;
end;

procedure TfrmEmpleadosAusencias.QAusenciasAfterDelete(DataSet: TDataSet);
begin
  QAusencias.UpdateBatch;
  QListado.Close;
  QListado.Open;
end;

procedure TfrmEmpleadosAusencias.QAusenciasBeforePost(DataSet: TDataSet);
begin
  if QAusencias.State = dsInsert then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select max(aus_secuencia) as maximo');
    dm.Query1.SQL.Add('from empleado_ausencias');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and emp_numero = :num');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('num').Value := empleado;
    dm.Query1.Open;
    QAusenciasaus_secuencia.Value := dm.Query1.FieldByName('maximo').AsInteger + 1;
  end;
end;

procedure TfrmEmpleadosAusencias.FormActivate(Sender: TObject);
begin
  if not QListado.Active then
  begin
    QAusencias.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    QAusencias.Parameters.ParamByName('num').Value := empleado;
    QAusencias.Parameters.ParamByName('sec').Value := -1;
    QAusencias.Open;

    QListado.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    QListado.Parameters.ParamByName('num').Value := empleado;
    QListado.Open;

    QMotivos.Open;
  end;
end;

procedure TfrmEmpleadosAusencias.btCloseExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmEmpleadosAusencias.dsAusenciasStateChange(Sender: TObject);
begin
  btInsert.enabled  := dsAusencias.State = dsbrowse;
  btEdit.enabled    := btInsert.enabled;
  btDelete.enabled  := btInsert.enabled;
  btPost.enabled    := not btInsert.enabled;
  btCancel.enabled  := not btInsert.enabled;
end;

procedure TfrmEmpleadosAusencias.QAusenciasNewRecord(DataSet: TDataSet);
begin
  QAusenciasemp_codigo.Value := dm.QEmpresasEMP_CODIGO.Value;
  QAusenciasemp_numero.Value := empleado;
  QAusenciasaus_disfrute_sueldo.Value := 'Si';
end;

procedure TfrmEmpleadosAusencias.DBGrid3DblClick(Sender: TObject);
begin
  QAusencias.Close;
  QAusencias.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  QAusencias.Parameters.ParamByName('num').Value := empleado;
  QAusencias.Parameters.ParamByName('sec').Value := QListadoaus_secuencia.Value;
  QAusencias.Open;
  PageControl1.ActivePageIndex := 1;
  QAusencias.Edit;
end;

end.
