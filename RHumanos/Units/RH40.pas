unit RH40;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Db, ADODB, IBCustomDataSet,
  IBQuery, IBUpdateSQL, ComCtrls, QuerySearchDlgADO, ToolWin, ActnList;

type
  TfrmEmpleadosMensajes = class(TForm)
    Panel2: TPanel;
    Label2: TLabel;
    QMensajes: TADOQuery;
    dsMensajes: TDataSource;
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
    QMensajesemp_codigo: TIntegerField;
    QMensajesemp_numero: TIntegerField;
    QMensajesmes_secuencia: TIntegerField;
    QMensajesmes_mensaje: TMemoField;
    QEmpleados: TADOQuery;
    QEmpleadosemp_numero: TIntegerField;
    QEmpleadosNombres: TStringField;
    DBLookupComboBox1: TDBLookupComboBox;
    dsEmpleado: TDataSource;
    Label1: TLabel;
    DBMemo1: TDBMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure QMensajesAfterDelete(DataSet: TDataSet);
    procedure QMensajesAfterPost(DataSet: TDataSet);
    procedure QMensajesNewRecord(DataSet: TDataSet);
    procedure btFindClick(Sender: TObject);
    procedure btPostClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btInsertClick(Sender: TObject);
    procedure btpriorClick(Sender: TObject);
    procedure btnextClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dsMensajesStateChange(Sender: TObject);
    procedure QMensajesBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEmpleadosMensajes: TfrmEmpleadosMensajes;

implementation

uses SIGMA01, SIGMA00;


{$R *.DFM}

procedure TfrmEmpleadosMensajes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmEmpleadosMensajes.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmEmpleadosMensajes.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then
     close;
end;

procedure TfrmEmpleadosMensajes.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmEmpleadosMensajes.QMensajesAfterDelete(DataSet: TDataSet);
begin
  QMensajes.UpdateBatch;
end;

procedure TfrmEmpleadosMensajes.QMensajesAfterPost(DataSet: TDataSet);
begin
  QMensajes.UpdateBatch;
end;

procedure TfrmEmpleadosMensajes.QMensajesNewRecord(DataSet: TDataSet);
begin
  QMensajesemp_codigo.value := dm.QEmpresasEMP_CODIGO.value;
end;

procedure TfrmEmpleadosMensajes.btFindClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select');
  Search.Query.Add('e.emp_nombres+'+#39+' '+#39+'+e.emp_apellido_paterno+'+#39+' '+#39+'+e.emp_apellido_materno as Nombres,');
  Search.Query.Add('m.mes_secuencia');
  Search.Query.Add('from empleados e, empleado_mensajes m');
  Search.Query.Add('where e.emp_codigo = m.emp_codigo');
  Search.Query.Add('and e.emp_numero = m.emp_numero');
  Search.Query.Add('and m.emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.Value));
  if search.execute then
     QMensajes.locate('mes_secuencia',search.valuefield,[]);
end;

procedure TfrmEmpleadosMensajes.btPostClick(Sender: TObject);
begin
  QMensajes.post;
end;

procedure TfrmEmpleadosMensajes.btCancelClick(Sender: TObject);
begin
  QMensajes.cancel;
end;

procedure TfrmEmpleadosMensajes.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QMensajes.delete;
end;

procedure TfrmEmpleadosMensajes.btEditClick(Sender: TObject);
begin
  DBMemo1.setfocus;
  QMensajes.edit;
end;

procedure TfrmEmpleadosMensajes.btInsertClick(Sender: TObject);
begin
  DBMemo1.setfocus;
  QMensajes.insert;
end;

procedure TfrmEmpleadosMensajes.btpriorClick(Sender: TObject);
begin
  if not QMensajes.Bof then QMensajes.prior;
end;

procedure TfrmEmpleadosMensajes.btnextClick(Sender: TObject);
begin
  if not QMensajes.eof then QMensajes.next;
end;

procedure TfrmEmpleadosMensajes.FormActivate(Sender: TObject);
begin
  if not QMensajes.active then
  begin
    QEmpleados.Open;
    QMensajes.open;
  end;
  frmMain.ExportXLS.Sheets[1].DataSet := QMensajes;
  frmMain.ExportXLS.Sheets[0].Exported := False;
  frmMain.ExportXLS.Sheets[1].Exported := True;
end;

procedure TfrmEmpleadosMensajes.dsMensajesStateChange(Sender: TObject);
begin
  btInsert.enabled  := dsMensajes.State = dsbrowse;
  btEdit.enabled    := btInsert.enabled;
  btDelete.enabled  := btInsert.enabled;
  btNext.enabled    := btInsert.enabled;
  btPrior.enabled   := btInsert.enabled;
  btPost.enabled    := not btInsert.enabled;
  btCancel.enabled  := not btInsert.enabled;
  btFind.enabled    := btInsert.enabled;
end;

procedure TfrmEmpleadosMensajes.QMensajesBeforePost(DataSet: TDataSet);
begin
  if trim(QMensajesmes_mensaje.value) = '' then
  begin
    showmessage('EL MENSAJE NO PUEDE ESTAR EN BLANCO');
    DBMemo1.setfocus;
    abort;
  end;
  if QMensajes.State = dsInsert then
  begin
    dm.query1.close;
    dm.query1.sql.clear;
    dm.query1.sql.add('select isnull(max(mes_secuencia),0) as maximo');
    dm.query1.sql.add('from empleado_mensajes');
    dm.query1.sql.add('where emp_codigo = :emp');
    dm.query1.Parameters.parambyname('emp').Value := dm.QEmpresasEMP_CODIGO.value;
    dm.query1.open;
    QMensajesmes_secuencia.value := dm.query1.fieldbyname('maximo').asinteger +1;
  end;
end;

procedure TfrmEmpleadosMensajes.FormCreate(Sender: TObject);
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
