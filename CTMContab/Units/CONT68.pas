unit CONT68;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Db, IBCustomDataSet,
  IBUpdateSQL, IBQuery, ADODB, QuerySearchDlgADO, dxNavBar, dxNavBarCollns,
  cxClasses, dxNavBarBase, ComCtrls, ToolWin, ImgList, ActnList;

type
  TfrmConceptos = class(TForm)
    Panel2: TPanel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    QConceptos: TADOQuery;
    Search: TQrySearchDlgADO;
    dsConceptos: TDataSource;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
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
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    ToolButton14: TToolButton;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    ActionList1: TActionList;
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
    QConceptosEMP_CODIGO: TIntegerField;
    QConceptosCON_CODIGO: TIntegerField;
    QConceptosCON_NOMBRE: TStringField;
    QConceptosCAT_CUENTA: TStringField;
    btCuenta: TSpeedButton;
    Label3: TLabel;
    tCuenta: TEdit;
    DBEdit3: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure QConceptosNewRecord(DataSet: TDataSet);
    procedure QConceptosAfterPost(DataSet: TDataSet);
    procedure QConceptosAfterDelete(DataSet: TDataSet);
    procedure QConceptosBeforePost(DataSet: TDataSet);
    procedure btPostClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btInsertClick(Sender: TObject);
    procedure btFindClick(Sender: TObject);
    procedure btpriorClick(Sender: TObject);
    procedure btnextClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dsConceptosStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btCuentaClick(Sender: TObject);
    procedure QConceptosCAT_CUENTAGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    accion : integer;
  end;

var
  frmConceptos: TfrmConceptos;

implementation

uses SIGMA01, SIGMA00;


{$R *.DFM}

procedure TfrmConceptos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmConceptos.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmConceptos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then
     close;
end;

procedure TfrmConceptos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmConceptos.QConceptosNewRecord(DataSet: TDataSet);
begin
  QConceptosEMP_CODIGO.value := dm.QEmpresasEMP_CODIGO.value;
end;

procedure TfrmConceptos.QConceptosAfterPost(DataSet: TDataSet);
begin
  QConceptos.UpdateBatch;
end;

procedure TfrmConceptos.QConceptosAfterDelete(DataSet: TDataSet);
begin
  QConceptos.UpdateBatch;
end;

procedure TfrmConceptos.QConceptosBeforePost(DataSet: TDataSet);
begin
  if trim(QConceptoscon_NOMBRE.value) = '' then
  begin
    showmessage('EL NOMBRE NO PUEDE ESTAR EN BLANCO');
    DBEdit2.setfocus;
    abort;
  end;
  if QConceptos.State = dsInsert then
  begin
    dm.query1.close;
    dm.query1.sql.clear;
    dm.query1.sql.add('select isnull(max(con_codigo),0) as maximo');
    dm.query1.sql.add('from conceptos');
    dm.query1.sql.add('where emp_codigo = :emp');
    dm.query1.Parameters.parambyname('emp').Value := dm.QEmpresasEMP_CODIGO.value;
    dm.query1.open;
    QConceptoscon_CODIGO.value := dm.query1.fieldbyname('maximo').asinteger +1;
  end;
end;

procedure TfrmConceptos.btPostClick(Sender: TObject);
begin
  QConceptos.post;
end;

procedure TfrmConceptos.btCancelClick(Sender: TObject);
begin
  QConceptos.cancel;
end;

procedure TfrmConceptos.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QConceptos.delete;
end;

procedure TfrmConceptos.btEditClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QConceptos.edit;
end;

procedure TfrmConceptos.btInsertClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QConceptos.insert;
end;

procedure TfrmConceptos.btFindClick(Sender: TObject);
begin
  Search.query.clear;
  Search.query.add('select con_nombre, con_codigo');
  Search.query.add('from conceptos');
  Search.query.add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.value));
  if search.execute then
     QConceptos.locate('con_codigo',search.valuefield,[]);
end;

procedure TfrmConceptos.btpriorClick(Sender: TObject);
begin
  if not QConceptos.bof then
    QConceptos.prior;
end;

procedure TfrmConceptos.btnextClick(Sender: TObject);
begin
  if not QConceptos.eof then
    QConceptos.next;
end;

procedure TfrmConceptos.FormActivate(Sender: TObject);
begin
  if not QConceptos.active then QConceptos.open;
  frmMain.ExportXLS.FileName := 'Conceptos.xls';
  frmMain.ExportXLS.Sheets[1].DataSet := QConceptos;
  frmMain.ExportXLS.Sheets[0].Exported := False;
  frmMain.ExportXLS.Sheets[2].Exported := False;
  frmMain.ExportXLS.Sheets[1].Exported := True;
end;

procedure TfrmConceptos.dsConceptosStateChange(Sender: TObject);
begin
  btInsert.enabled  := dsConceptos.State = dsbrowse;
  btEdit.enabled    := btInsert.enabled;
  btDelete.enabled  := btInsert.enabled;
  btNext.enabled    := btInsert.enabled;
  btPrior.enabled   := btInsert.enabled;
  btPost.enabled    := not btInsert.enabled;
  btCancel.enabled  := not btInsert.enabled;
  btFind.enabled    := btInsert.enabled;
  btCuenta.Enabled  := not btInsert.Enabled;
end;

procedure TfrmConceptos.FormCreate(Sender: TObject);
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

procedure TfrmConceptos.btCuentaClick(Sender: TObject);
begin
  Search.query.clear;
  Search.query.add('select cat_nombre, cat_cuenta');
  Search.query.add('from contcatalogo');
  Search.query.add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.value));
  Search.ResultField := 'cat_cuenta';
  Search.Title := 'Catálogo de Cuentas';
  if search.execute then
  begin
     QConceptosCAT_CUENTA.Value := Search.ValueField;
     DBEdit3.SetFocus;
  end;
end;

procedure TfrmConceptos.QConceptosCAT_CUENTAGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QConceptosCAT_CUENTA.IsNull then
  begin
    Text := QConceptosCAT_CUENTA.Value;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cat_nombre from contcatalogo');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and CAT_CUENTA = :cta');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('cta').Value := QConceptosCAT_CUENTA.Value;
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
