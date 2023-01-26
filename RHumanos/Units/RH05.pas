unit RH05;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Db, ADODB, IBCustomDataSet,
  IBQuery, IBUpdateSQL, ComCtrls, QuerySearchDlgADO, ToolWin, ActnList;

type
  TfrmGrupoTrabajo = class(TForm)
    Panel2: TPanel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    QGrupos: TADOQuery;
    dsGrupos: TDataSource;
    Search: TQrySearchDlgADO;
    QGruposemp_codigo: TIntegerField;
    QGruposgru_codigo: TIntegerField;
    QGruposgru_nombre: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
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
    QGruposcat_cuenta: TStringField;
    btCuenta: TSpeedButton;
    Label6: TLabel;
    tCuenta: TEdit;
    DBEdit4: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure QGruposAfterDelete(DataSet: TDataSet);
    procedure QGruposAfterPost(DataSet: TDataSet);
    procedure QGruposNewRecord(DataSet: TDataSet);
    procedure btFindClick(Sender: TObject);
    procedure btPostClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btInsertClick(Sender: TObject);
    procedure btpriorClick(Sender: TObject);
    procedure btnextClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dsGruposStateChange(Sender: TObject);
    procedure QGruposBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure btCuentaClick(Sender: TObject);
    procedure QGruposcat_cuentaGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGrupoTrabajo: TfrmGrupoTrabajo;

implementation

uses SIGMA01, SIGMA00;


{$R *.DFM}

procedure TfrmGrupoTrabajo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmGrupoTrabajo.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmGrupoTrabajo.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then
     close;
end;

procedure TfrmGrupoTrabajo.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmGrupoTrabajo.QGruposAfterDelete(DataSet: TDataSet);
begin
  QGrupos.UpdateBatch;
end;

procedure TfrmGrupoTrabajo.QGruposAfterPost(DataSet: TDataSet);
begin
  QGrupos.UpdateBatch;
end;

procedure TfrmGrupoTrabajo.QGruposNewRecord(DataSet: TDataSet);
begin
  QGruposEMP_CODIGO.value := dm.QEmpresasEMP_CODIGO.value;
end;

procedure TfrmGrupoTrabajo.btFindClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select gru_nombre, gru_codigo');
  Search.Query.Add('from grupos_trabajo');
  Search.Query.Add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.Value));
  if search.execute then
     QGrupos.locate('gru_codigo',search.valuefield,[]);
end;

procedure TfrmGrupoTrabajo.btPostClick(Sender: TObject);
begin
  QGrupos.post;
end;

procedure TfrmGrupoTrabajo.btCancelClick(Sender: TObject);
begin
  QGrupos.cancel;
end;

procedure TfrmGrupoTrabajo.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QGrupos.delete;
end;

procedure TfrmGrupoTrabajo.btEditClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QGrupos.edit;
end;

procedure TfrmGrupoTrabajo.btInsertClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QGrupos.insert;
end;

procedure TfrmGrupoTrabajo.btpriorClick(Sender: TObject);
begin
  if not QGrupos.Bof then QGrupos.prior;
end;

procedure TfrmGrupoTrabajo.btnextClick(Sender: TObject);
begin
  if not QGrupos.eof then QGrupos.next;
end;

procedure TfrmGrupoTrabajo.FormActivate(Sender: TObject);
begin
  if not QGrupos.active then QGrupos.open;
  frmMain.ExportXLS.Sheets[1].DataSet := QGrupos;
  frmMain.ExportXLS.Sheets[0].Exported := False;
  frmMain.ExportXLS.Sheets[1].Exported := True;
end;

procedure TfrmGrupoTrabajo.dsGruposStateChange(Sender: TObject);
begin
  btInsert.enabled  := dsGrupos.State = dsbrowse;
  btEdit.enabled    := btInsert.enabled;
  btDelete.enabled  := btInsert.enabled;
  btNext.enabled    := btInsert.enabled;
  btPrior.enabled   := btInsert.enabled;
  btPost.enabled    := not btInsert.enabled;
  btCancel.enabled  := not btInsert.enabled;
  btFind.enabled    := btInsert.enabled;
end;

procedure TfrmGrupoTrabajo.QGruposBeforePost(DataSet: TDataSet);
begin
  if trim(QGruposgru_NOMBRE.value) = '' then
  begin
    showmessage('EL NOMBRE NO PUEDE ESTAR EN BLANCO');
    DBEdit2.setfocus;
    abort;
  end;
  if QGrupos.State = dsInsert then
  begin
    dm.query1.close;
    dm.query1.sql.clear;
    dm.query1.sql.add('select isnull(max(gru_codigo),0) as maximo');
    dm.query1.sql.add('from grupos_trabajo');
    dm.query1.sql.add('where emp_codigo = :emp');
    dm.query1.Parameters.parambyname('emp').Value := dm.QEmpresasEMP_CODIGO.value;
    dm.query1.open;
    QGruposgru_CODIGO.value := dm.query1.fieldbyname('maximo').asinteger +1;
  end;
end;

procedure TfrmGrupoTrabajo.FormCreate(Sender: TObject);
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

procedure TfrmGrupoTrabajo.btCuentaClick(Sender: TObject);
begin
  Search.query.clear;
  Search.query.add('select cat_nombre, cat_cuenta');
  Search.query.add('from contcatalogo');
  Search.query.add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.value));
  Search.ResultField := 'cat_cuenta';
  Search.Title := 'Catálogo de Cuentas';
  if search.execute then
  begin
     QGruposcat_cuenta.Value := Search.ValueField;
     DBEdit4.SetFocus;
  end;
end;

procedure TfrmGrupoTrabajo.QGruposcat_cuentaGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QGruposcat_cuenta.IsNull then
  begin
    Text := QGruposcat_cuenta.Value;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cat_nombre from contcatalogo');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and CAT_CUENTA = :cta');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('cta').Value := QGruposcat_cuenta.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
    begin
      tCuenta.Text := dm.Query1.FieldByName('cat_nombre').AsString;
    end
    else
      tCuenta.Text := '';
  end
  else
    tCuenta.Text := '';
end;

end.
