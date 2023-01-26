unit CONT54;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Db, ADODB, IBCustomDataSet,
  IBQuery, IBUpdateSQL, ComCtrls, QuerySearchDlgADO, ToolWin, ActnList;

type
  TfrmCajas = class(TForm)
    QCajas: TADOQuery;
    dsCajas: TDataSource;
    Search: TQrySearchDlgADO;
    QCajasEMP_CODIGO: TIntegerField;
    QCajasCAJ_CODIGO: TIntegerField;
    QCajasCAJ_NOMBRE: TIBStringField;
    QCajasCAT_CUENTA: TIBStringField;
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
    QCajasalm_codigo: TIntegerField;
    Panel2: TPanel;
    Label2: TLabel;
    btCuenta: TSpeedButton;
    Label3: TLabel;
    Label1: TLabel;
    lbDepto: TLabel;
    btAlmacen: TSpeedButton;
    DBEdit2: TDBEdit;
    tCuenta: TEdit;
    DBEdit3: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit12: TDBEdit;
    tAlmacen: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure QCajasAfterDelete(DataSet: TDataSet);
    procedure QCajasAfterPost(DataSet: TDataSet);
    procedure QCajasNewRecord(DataSet: TDataSet);
    procedure btFindClick(Sender: TObject);
    procedure btPostClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btInsertClick(Sender: TObject);
    procedure btpriorClick(Sender: TObject);
    procedure btnextClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dsCajasStateChange(Sender: TObject);
    procedure QCajasBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure btCuentaClick(Sender: TObject);
    procedure QCajasCAT_CUENTAGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure btAlmacenClick(Sender: TObject);
    procedure QCajasalm_codigoGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCajas: TfrmCajas;

implementation

uses SIGMA01, SIGMA00;


{$R *.DFM}

procedure TfrmCajas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmCajas.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmCajas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then
     close;
end;

procedure TfrmCajas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmCajas.QCajasAfterDelete(DataSet: TDataSet);
begin
  QCajas.UpdateBatch;
end;

procedure TfrmCajas.QCajasAfterPost(DataSet: TDataSet);
begin
  QCajas.UpdateBatch;
end;

procedure TfrmCajas.QCajasNewRecord(DataSet: TDataSet);
begin
  QCajasEMP_CODIGO.value := dm.QEmpresasEMP_CODIGO.value;
end;

procedure TfrmCajas.btFindClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select caj_nombre, caj_codigo');
  Search.Query.Add('from cajas');
  Search.Query.Add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.Value));
  if search.execute then
     QCajas.locate('caj_codigo',search.valuefield,[]);
end;

procedure TfrmCajas.btPostClick(Sender: TObject);
begin
  QCajas.post;
end;

procedure TfrmCajas.btCancelClick(Sender: TObject);
begin
  QCajas.cancel;
end;

procedure TfrmCajas.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QCajas.delete;
end;

procedure TfrmCajas.btEditClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QCajas.edit;
end;

procedure TfrmCajas.btInsertClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QCajas.insert;
end;

procedure TfrmCajas.btpriorClick(Sender: TObject);
begin
  if not QCajas.Bof then QCajas.prior;
end;

procedure TfrmCajas.btnextClick(Sender: TObject);
begin
  if not QCajas.eof then QCajas.next;
end;

procedure TfrmCajas.FormActivate(Sender: TObject);
begin
  if not QCajas.active then QCajas.open;
  frmMain.ExportXLS.Sheets[1].DataSet := QCajas;
  frmMain.ExportXLS.Sheets[0].Exported := False;
  frmMain.ExportXLS.Sheets[1].Exported := True;
end;

procedure TfrmCajas.dsCajasStateChange(Sender: TObject);
begin
  btInsert.enabled    := dsCajas.State = dsbrowse;
  btEdit.enabled      := btInsert.enabled;
  btDelete.enabled    := btInsert.enabled;
  btNext.enabled      := btInsert.enabled;
  btPrior.enabled     := btInsert.enabled;
  btPost.enabled      := not btInsert.enabled;
  btCancel.enabled    := not btInsert.enabled;
  btFind.enabled      := btInsert.enabled;
  btCuenta.enabled    := not btInsert.enabled;
  btAlmacen.enabled   := not btInsert.enabled;
end;

procedure TfrmCajas.QCajasBeforePost(DataSet: TDataSet);
begin
  if trim(QCajasCAJ_NOMBRE.value) = '' then
  begin
    showmessage('EL NOMBRE NO PUEDE ESTAR EN BLANCO');
    DBEdit2.setfocus;
    abort;
  end;
  if QCajas.State = dsInsert then
  begin
    dm.query1.close;
    dm.query1.sql.clear;
    dm.query1.sql.add('select isnull(max(caj_codigo),0) as maximo');
    dm.query1.sql.add('from cajas');
    dm.query1.sql.add('where emp_codigo = :emp');
    dm.query1.Parameters.parambyname('emp').Value := dm.QEmpresasEMP_CODIGO.value;
    dm.query1.open;
    QCajasCAJ_CODIGO.value := dm.query1.fieldbyname('maximo').asinteger +1;
  end;
end;

procedure TfrmCajas.FormCreate(Sender: TObject);
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

procedure TfrmCajas.btCuentaClick(Sender: TObject);
begin
  Search.query.clear;
  Search.query.add('select cat_nombre, cat_cuenta');
  Search.query.add('from contcatalogo');
  Search.query.add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.value));
  Search.ResultField := 'cat_cuenta';
  Search.Title := 'Catálogo de Cuentas';
  if search.execute then
  begin
     QCajasCAT_CUENTA.Value := Search.ValueField;
     DBEdit3.SetFocus;
  end;
end;

procedure TfrmCajas.QCajasCAT_CUENTAGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QCajasCAT_CUENTA.IsNull then
  begin
    Text := QCajasCAT_CUENTA.Value;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cat_nombre from contcatalogo');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and CAT_CUENTA = :cta');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('cta').Value := QCajasCAT_CUENTA.Value;
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

procedure TfrmCajas.btAlmacenClick(Sender: TObject);
begin
  Search.Title := 'Almacenes';
  Search.ResultField := 'alm_codigo';
  Search.query.clear;
  Search.query.add('select alm_nombre, alm_codigo');
  Search.query.add('from almacen');
  Search.query.add('where emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.value));
  if search.execute then
     QCajasALM_CODIGO.value := strtoint(search.valuefield);
end;

procedure TfrmCajas.QCajasalm_codigoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QCajasalm_codigo.isnull then
  begin
    Text := inttostr(QCajasalm_codigo.value);
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select alm_nombre from almacen');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and alm_Codigo = :alm');
    dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.value;
    dm.Query1.Parameters.parambyname('alm').Value := QCajasalm_codigo.value;
    dm.Query1.open;
    if dm.Query1.RecordCount > 0 then
    begin
      tAlmacen.text := dm.Query1.fieldbyname('alm_nombre').asstring;
    end
    else
      tAlmacen.text := '';
  end
  else
    tAlmacen.text := '';
end;

end.
