unit PVENTA169;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Db, IBCustomDataSet,
  IBUpdateSQL, IBQuery, ADODB, QuerySearchDlgADO, ComCtrls, ToolWin,
  ActnList, Grids, DBGrids;

type
  TfrmGastosAduanales = class(TForm)
    QGastos: TADOQuery;
    Search: TQrySearchDlgADO;
    dsGastos: TDataSource;
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
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label2: TLabel;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    DBEdit1: TDBEdit;
    DBGrid1: TDBGrid;
    QListado: TADOQuery;
    dsListado: TDataSource;
    QGastosemp_codigo: TIntegerField;
    QGastosgas_codigo: TIntegerField;
    QGastosgas_nombre: TStringField;
    QListadoemp_codigo: TIntegerField;
    QListadogas_codigo: TIntegerField;
    QListadogas_nombre: TStringField;
    btCuenta: TSpeedButton;
    Label3: TLabel;
    tCuenta: TEdit;
    DBEdit3: TDBEdit;
    QGastoscat_cuenta: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure QGastosNewRecord(DataSet: TDataSet);
    procedure QGastosAfterPost(DataSet: TDataSet);
    procedure QGastosAfterDelete(DataSet: TDataSet);
    procedure QGastosBeforePost(DataSet: TDataSet);
    procedure btPostClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btInsertClick(Sender: TObject);
    procedure btFindClick(Sender: TObject);
    procedure btpriorClick(Sender: TObject);
    procedure btnextClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dsGastosStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure btCuentaClick(Sender: TObject);
    procedure QGastoscat_cuentaGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    accion : integer;
  end;

var
  frmGastosAduanales: TfrmGastosAduanales;

implementation

uses SIGMA01, SIGMA00;


{$R *.DFM}

procedure TfrmGastosAduanales.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmGastosAduanales.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmGastosAduanales.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then
     close;
end;

procedure TfrmGastosAduanales.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmGastosAduanales.QGastosNewRecord(DataSet: TDataSet);
begin
  QGastosemp_codigo.value := dm.vp_cia;
end;

procedure TfrmGastosAduanales.QGastosAfterPost(DataSet: TDataSet);
begin
  QGastos.UpdateBatch;
  QListado.Close;
  QListado.Open;
end;

procedure TfrmGastosAduanales.QGastosAfterDelete(DataSet: TDataSet);
begin
  QGastos.UpdateBatch;
  QListado.Close;
  QListado.Open;
end;

procedure TfrmGastosAduanales.QGastosBeforePost(DataSet: TDataSet);
begin
  if trim(QGastosgas_nombre.value) = '' then
  begin
    showmessage('EL NOMBRE NO PUEDE ESTAR EN BLANCO');
    DBEdit2.setfocus;
    abort;
  end;
  if QGastos.State = dsInsert then
  begin
    accion := 1;
    dm.query1.close;
    dm.query1.sql.clear;
    dm.query1.sql.add('select isnull(max(gas_codigo),0) as maximo');
    dm.query1.sql.add('from gastos_aduanales');
    dm.query1.sql.add('where emp_codigo = :emp');
    dm.query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.query1.open;
    QGastosgas_codigo.value := dm.query1.fieldbyname('maximo').asinteger +1;
  end
  else
    accion := 2;
end;

procedure TfrmGastosAduanales.btPostClick(Sender: TObject);
begin
  QGastos.post;
end;

procedure TfrmGastosAduanales.btCancelClick(Sender: TObject);
begin
  QGastos.cancel;
end;

procedure TfrmGastosAduanales.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QGastos.delete;
end;

procedure TfrmGastosAduanales.btEditClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  DBEdit2.setfocus;
  QGastos.edit;
end;

procedure TfrmGastosAduanales.btInsertClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  DBEdit2.setfocus;
  QGastos.insert;
end;

procedure TfrmGastosAduanales.btFindClick(Sender: TObject);
begin
  Search.query.clear;
  Search.query.add('select gas_nombre, gas_codigo');
  Search.query.add('from gastos_aduanales');
  Search.query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.ResultField := 'gas_codigo';
  Search.Title := 'Gastos Aduanales';
  if search.execute then
     QGastos.locate('gas_codigo',search.valuefield,[]);
end;

procedure TfrmGastosAduanales.btpriorClick(Sender: TObject);
begin
  if not QGastos.bof then
    QGastos.prior;
end;

procedure TfrmGastosAduanales.btnextClick(Sender: TObject);
begin
  if not QGastos.eof then
    QGastos.next;
end;

procedure TfrmGastosAduanales.FormActivate(Sender: TObject);
begin
  if not QGastos.active then
  begin
    QGastos.open;
    QListado.Open;
  end;
  frmMain.ExportXLS.FileName := 'Gastos.xls';
  frmMain.ExportXLS.Sheets[1].DataSet := QGastos;
  frmMain.ExportXLS.Sheets[0].Exported := False;
  frmMain.ExportXLS.Sheets[2].Exported := False;
  frmMain.ExportXLS.Sheets[1].Exported := True;
end;

procedure TfrmGastosAduanales.dsGastosStateChange(Sender: TObject);
begin
  btInsert.enabled  := dsGastos.State = dsbrowse;
  btEdit.enabled    := btInsert.enabled;
  btDelete.enabled  := btInsert.enabled;
  btNext.enabled    := btInsert.enabled;
  btPrior.enabled   := btInsert.enabled;
  btPost.enabled    := not btInsert.enabled;
  btCancel.enabled  := not btInsert.enabled;
  btFind.enabled    := btInsert.enabled;
  btCuenta.Enabled  := not btInsert.enabled;
end;

procedure TfrmGastosAduanales.FormCreate(Sender: TObject);
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

procedure TfrmGastosAduanales.DBGrid1DblClick(Sender: TObject);
begin
  QGastos.locate('gas_codigo',QListadogas_codigo.Value,[]);
  PageControl1.ActivePageIndex := 0;
end;

procedure TfrmGastosAduanales.btCuentaClick(Sender: TObject);
begin
  Search.query.clear;
  Search.query.add('select cat_nombre, cat_cuenta');
  Search.query.add('from contcatalogo');
  Search.query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.ResultField := 'cat_cuenta';
  Search.Title := 'Catálogo de Cuentas';
  if search.execute then
  begin
     QGastoscat_cuenta.Value := Search.ValueField;
     DBEdit3.SetFocus;
  end;
end;

procedure TfrmGastosAduanales.QGastoscat_cuentaGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QGastoscat_cuenta.IsNull then
  begin
    Text := QGastoscat_cuenta.Value;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cat_nombre from contcatalogo');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and CAT_CUENTA = :cta');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('cta').Value := QGastoscat_cuenta.Value;
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
