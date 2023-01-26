unit CONT56;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Db, ADODB, IBCustomDataSet,
  IBQuery, IBUpdateSQL, ComCtrls, QuerySearchDlgADO, ToolWin, ActnList;

type
  TfrmRetenciones = class(TForm)
    Panel2: TPanel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    QRetenciones: TADOQuery;
    dsRetenciones: TDataSource;
    Search: TQrySearchDlgADO;
    QRetencionesCAT_CUENTA: TIBStringField;
    btCuenta: TSpeedButton;
    Label3: TLabel;
    tCuenta: TEdit;
    DBEdit3: TDBEdit;
    QRetencionesEMP_CODIGO: TIntegerField;
    QRetencionesRET_CODIGO: TIntegerField;
    QRetencionesRET_NOMBRE: TStringField;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    QRetencionesRET_PORCIENTO: TBCDField;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure QRetencionesAfterDelete(DataSet: TDataSet);
    procedure QRetencionesAfterPost(DataSet: TDataSet);
    procedure QRetencionesNewRecord(DataSet: TDataSet);
    procedure btFindClick(Sender: TObject);
    procedure btPostClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btInsertClick(Sender: TObject);
    procedure btpriorClick(Sender: TObject);
    procedure btnextClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dsRetencionesStateChange(Sender: TObject);
    procedure QRetencionesBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure btCuentaClick(Sender: TObject);
    procedure QRetencionesCAT_CUENTAGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRetenciones: TfrmRetenciones;

implementation

uses SIGMA01, SIGMA00;


{$R *.DFM}

procedure TfrmRetenciones.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmRetenciones.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmRetenciones.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then
     close;
end;

procedure TfrmRetenciones.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmRetenciones.QRetencionesAfterDelete(DataSet: TDataSet);
begin
  QRetenciones.UpdateBatch;
end;

procedure TfrmRetenciones.QRetencionesAfterPost(DataSet: TDataSet);
begin
  QRetenciones.UpdateBatch;
end;

procedure TfrmRetenciones.QRetencionesNewRecord(DataSet: TDataSet);
begin
  QRetencionesEMP_CODIGO.value := dm.QEmpresasEMP_CODIGO.value;
end;

procedure TfrmRetenciones.btFindClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select ret_nombre, ret_codigo');
  Search.Query.Add('from retenciones');
  Search.Query.Add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.Value));
  if search.execute then
     QRetenciones.locate('ret_codigo',search.valuefield,[]);
end;

procedure TfrmRetenciones.btPostClick(Sender: TObject);
begin
  QRetenciones.post;
end;

procedure TfrmRetenciones.btCancelClick(Sender: TObject);
begin
  QRetenciones.cancel;
end;

procedure TfrmRetenciones.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QRetenciones.delete;
end;

procedure TfrmRetenciones.btEditClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QRetenciones.edit;
end;

procedure TfrmRetenciones.btInsertClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QRetenciones.insert;
end;

procedure TfrmRetenciones.btpriorClick(Sender: TObject);
begin
  if not QRetenciones.Bof then QRetenciones.prior;
end;

procedure TfrmRetenciones.btnextClick(Sender: TObject);
begin
  if not QRetenciones.eof then QRetenciones.next;
end;

procedure TfrmRetenciones.FormActivate(Sender: TObject);
begin
  if not QRetenciones.active then QRetenciones.open;
  frmMain.ExportXLS.Sheets[1].DataSet := QRetenciones;
  frmMain.ExportXLS.Sheets[0].Exported := False;
  frmMain.ExportXLS.Sheets[1].Exported := True;
end;

procedure TfrmRetenciones.dsRetencionesStateChange(Sender: TObject);
begin
  btInsert.enabled  := dsRetenciones.State = dsbrowse;
  btEdit.enabled    := btInsert.enabled;
  btDelete.enabled  := btInsert.enabled;
  btNext.enabled    := btInsert.enabled;
  btPrior.enabled   := btInsert.enabled;
  btPost.enabled    := not btInsert.enabled;
  btCancel.enabled  := not btInsert.enabled;
  btFind.enabled    := btInsert.enabled;
  btCuenta.enabled    := not btInsert.enabled;
end;

procedure TfrmRetenciones.QRetencionesBeforePost(DataSet: TDataSet);
begin
  if trim(QRetencionesRET_NOMBRE.value) = '' then
  begin
    showmessage('EL NOMBRE NO PUEDE ESTAR EN BLANCO');
    DBEdit2.setfocus;
    abort;
  end;
  if QRetenciones.State = dsInsert then
  begin
    dm.query1.close;
    dm.query1.sql.clear;
    dm.query1.sql.add('select isnull(max(ret_codigo),0) as maximo');
    dm.query1.sql.add('from retenciones');
    dm.query1.sql.add('where emp_codigo = :emp');
    dm.query1.Parameters.parambyname('emp').Value := dm.QEmpresasEMP_CODIGO.value;
    dm.query1.open;
    QRetencionesRET_CODIGO.value := dm.query1.fieldbyname('maximo').asinteger +1;
  end;
end;

procedure TfrmRetenciones.FormCreate(Sender: TObject);
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

procedure TfrmRetenciones.btCuentaClick(Sender: TObject);
begin
  Search.query.clear;
  Search.query.add('select cat_nombre, cat_cuenta');
  Search.query.add('from contcatalogo');
  Search.query.add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.value));
  Search.ResultField := 'cat_cuenta';
  Search.Title := 'Catálogo de Cuentas';
  if search.execute then
  begin
     QRetencionesCAT_CUENTA.Value := Search.ValueField;
     DBEdit3.SetFocus;
  end;
end;

procedure TfrmRetenciones.QRetencionesCAT_CUENTAGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QRetencionesCAT_CUENTA.IsNull then
  begin
    Text := QRetencionesCAT_CUENTA.Value;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cat_nombre from contcatalogo');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and CAT_CUENTA = :cta');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('cta').Value := QRetencionesCAT_CUENTA.Value;
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
