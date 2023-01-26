unit RH42;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Db, ADODB, IBCustomDataSet,
  IBQuery, IBUpdateSQL, ComCtrls, QuerySearchDlgADO, ToolWin, ActnList;

type
  TfrmEmpleadosEvaluacion = class(TForm)
    Panel2: TPanel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    QEvaluacion: TADOQuery;
    dsEvaluacion: TDataSource;
    Search: TQrySearchDlgADO;
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
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    ToolButton13: TToolButton;
    ToolButton12: TToolButton;
    ToolButton14: TToolButton;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    QEmpleados: TADOQuery;
    dsEmpleados: TDataSource;
    QEvaluacionemp_codigo: TIntegerField;
    QEvaluacioneva_secuencia: TIntegerField;
    QEvaluacioneva_evaluado: TIntegerField;
    QEvaluacioneva_evaluado_por: TIntegerField;
    QEvaluacioneva_fecha: TDateTimeField;
    QEvaluacioneva_codigo: TIntegerField;
    QEvaluacioneva_puntuacion: TBCDField;
    QEvaluacioneva_comentario: TMemoField;
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label3: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    Label5: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    Label6: TLabel;
    DBMemo1: TDBMemo;
    QTipoEvaluacion: TADOQuery;
    QTipoEvaluaciontip_codigo: TIntegerField;
    QTipoEvaluaciontip_nombre: TStringField;
    dsTipo: TDataSource;
    QEmpleadosemp_numero: TIntegerField;
    QEmpleadosemp_codigo: TIntegerField;
    QEmpleadosNombres: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure QEvaluacionAfterDelete(DataSet: TDataSet);
    procedure QEvaluacionAfterPost(DataSet: TDataSet);
    procedure QEvaluacionNewRecord(DataSet: TDataSet);
    procedure btFindClick(Sender: TObject);
    procedure btPostClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btInsertClick(Sender: TObject);
    procedure btpriorClick(Sender: TObject);
    procedure btnextClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dsEvaluacionStateChange(Sender: TObject);
    procedure QEvaluacionBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEmpleadosEvaluacion: TfrmEmpleadosEvaluacion;

implementation

uses SIGMA01, SIGMA00;


{$R *.DFM}

procedure TfrmEmpleadosEvaluacion.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmEmpleadosEvaluacion.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmEmpleadosEvaluacion.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then
     close;
end;

procedure TfrmEmpleadosEvaluacion.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    if ActiveControl.ClassType <> TDBMemo then
    begin
      perform(wm_nextdlgctl, 0, 0);
      key := #0;
    end;
  end;
end;

procedure TfrmEmpleadosEvaluacion.QEvaluacionAfterDelete(DataSet: TDataSet);
begin
  QEvaluacion.UpdateBatch;
end;

procedure TfrmEmpleadosEvaluacion.QEvaluacionAfterPost(DataSet: TDataSet);
begin
  QEvaluacion.UpdateBatch;
end;

procedure TfrmEmpleadosEvaluacion.QEvaluacionNewRecord(DataSet: TDataSet);
begin
  QEvaluacionemp_codigo.value := dm.QEmpresasEMP_CODIGO.value;
  QEvaluacioneva_fecha.Value  := Date;
  QEvaluacioneva_codigo.Value := QTipoEvaluaciontip_codigo.Value;
end;

procedure TfrmEmpleadosEvaluacion.btFindClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select e.emp_nombres+'+#39+' '+#39+'+e.emp_apellido_paterno+'+#39+' '+#39+'+e.emp_apellido_materno as Nombres,');
  Search.Query.Add('v.eva_secuencia from empleados e, empleado_evaluacion v');
  Search.Query.Add('where v.emp_codigo = e.emp_codigo');
  Search.Query.Add('and v.eva_evaluado = e.emp_numero');
  Search.Query.Add('and v.emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.Value));
  if search.execute then
  begin
    QEvaluacion.Close;
    QEvaluacion.Parameters.ParamByName('sec').Value := StrToInt(Search.ValueField);
    QEvaluacion.Open;
  end;
end;

procedure TfrmEmpleadosEvaluacion.btPostClick(Sender: TObject);
begin
  QEvaluacion.post;
end;

procedure TfrmEmpleadosEvaluacion.btCancelClick(Sender: TObject);
begin
  QEvaluacion.cancel;
end;

procedure TfrmEmpleadosEvaluacion.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QEvaluacion.delete;
end;

procedure TfrmEmpleadosEvaluacion.btEditClick(Sender: TObject);
begin
  DBEdit1.setfocus;
  QEvaluacion.edit;
end;

procedure TfrmEmpleadosEvaluacion.btInsertClick(Sender: TObject);
begin
  DBEdit1.setfocus;
  QEvaluacion.insert;
end;

procedure TfrmEmpleadosEvaluacion.btpriorClick(Sender: TObject);
begin
  if not QEvaluacion.Bof then QEvaluacion.prior;
end;

procedure TfrmEmpleadosEvaluacion.btnextClick(Sender: TObject);
begin
  if not QEvaluacion.eof then QEvaluacion.next;
end;

procedure TfrmEmpleadosEvaluacion.FormActivate(Sender: TObject);
begin
  if not QEvaluacion.active then
  begin
    QEmpleados.Open;
    QTipoEvaluacion.Open;
    QEvaluacion.open;
  end;
  frmMain.ExportXLS.Sheets[1].DataSet := QEvaluacion;
  frmMain.ExportXLS.Sheets[0].Exported := False;
  frmMain.ExportXLS.Sheets[1].Exported := True;
end;

procedure TfrmEmpleadosEvaluacion.dsEvaluacionStateChange(Sender: TObject);
begin
  btInsert.enabled  := dsEvaluacion.State = dsbrowse;
  btEdit.enabled    := btInsert.enabled;
  btDelete.enabled  := btInsert.enabled;
  btNext.enabled    := btInsert.enabled;
  btPrior.enabled   := btInsert.enabled;
  btPost.enabled    := not btInsert.enabled;
  btCancel.enabled  := not btInsert.enabled;
  btFind.enabled    := btInsert.enabled;
end;

procedure TfrmEmpleadosEvaluacion.QEvaluacionBeforePost(DataSet: TDataSet);
begin
  if QEvaluacion.State = dsInsert then
  begin
    dm.query1.close;
    dm.query1.sql.clear;
    dm.query1.sql.add('select isnull(max(eva_secuencia),0) as maximo');
    dm.query1.sql.add('from empleado_evaluacion');
    dm.query1.sql.add('where emp_codigo = :emp');
    dm.query1.Parameters.parambyname('emp').Value := dm.QEmpresasEMP_CODIGO.value;
    dm.query1.open;
    QEvaluacioneva_secuencia.value := dm.query1.fieldbyname('maximo').asinteger +1;
  end;
end;

procedure TfrmEmpleadosEvaluacion.FormCreate(Sender: TObject);
var
  a : integer;
begin
  for a := 0 to (Sender as TForm).ComponentCount -1 DO
  begin
    if Components[a].ClassType = tdbedit then
    begin
      (Components[a] as tdbedit).OnEnter := frmMain.Entra;
      (Components[a] as tdbedit).OnExit := frmMain.sale;
    end;
  end;
end;

end.
