unit PVENTA177;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Db, IBCustomDataSet,
  IBUpdateSQL, IBQuery, ADODB, QuerySearchDlgADO, ComCtrls, ToolWin,
  ActnList, Grids, DBGrids;

type
  TfrmPreventas = class(TForm)
    QPreventa: TADOQuery;
    Search: TQrySearchDlgADO;
    dsPreventas: TDataSource;
    QPreventaemp_codigo: TIntegerField;
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
    QPreventapre_codigo: TIntegerField;
    QPreventapre_nombre: TStringField;
    QPreventapre_telefono: TStringField;
    QPreventapre_celular: TStringField;
    QPreventapre_status: TStringField;
    QListadoemp_codigo: TIntegerField;
    QListadopre_codigo: TIntegerField;
    QListadopre_nombre: TStringField;
    QListadopre_telefono: TStringField;
    QListadopre_celular: TStringField;
    QListadopre_status: TStringField;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure QPreventaNewRecord(DataSet: TDataSet);
    procedure QPreventaAfterPost(DataSet: TDataSet);
    procedure QPreventaAfterDelete(DataSet: TDataSet);
    procedure QPreventaBeforePost(DataSet: TDataSet);
    procedure btPostClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btInsertClick(Sender: TObject);
    procedure btFindClick(Sender: TObject);
    procedure btpriorClick(Sender: TObject);
    procedure btnextClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dsPreventasStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    accion : integer;
  end;

var
  frmPreventas: TfrmPreventas;

implementation

uses SIGMA01, SIGMA00;


{$R *.DFM}

procedure TfrmPreventas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmPreventas.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmPreventas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then
     close;
end;

procedure TfrmPreventas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmPreventas.QPreventaNewRecord(DataSet: TDataSet);
begin
  QPreventaEMP_CODIGO.value := dm.vp_cia;
  QPreventapre_status.Value := 'ACT';
end;

procedure TfrmPreventas.QPreventaAfterPost(DataSet: TDataSet);
begin
  QPreventa.UpdateBatch;
  QListado.Close;
  QListado.Open;
end;

procedure TfrmPreventas.QPreventaAfterDelete(DataSet: TDataSet);
begin
  QPreventa.UpdateBatch;
  QListado.Close;
  QListado.Open;
end;

procedure TfrmPreventas.QPreventaBeforePost(DataSet: TDataSet);
begin
  if trim(QPreventapre_NOMBRE.value) = '' then
  begin
    showmessage('EL NOMBRE NO PUEDE ESTAR EN BLANCO');
    DBEdit2.setfocus;
    abort;
  end;
  if QPreventa.State = dsInsert then
  begin
    accion := 1;
    dm.query1.close;
    dm.query1.sql.clear;
    dm.query1.sql.add('select isnull(max(pre_codigo),0) as maximo');
    dm.query1.sql.add('from Preventas');
    dm.query1.sql.add('where emp_codigo = :emp');
    dm.query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.query1.open;
    QPreventapre_CODIGO.value := dm.query1.fieldbyname('maximo').asinteger +1;
  end
  else
    accion := 2;
end;

procedure TfrmPreventas.btPostClick(Sender: TObject);
begin
  QPreventa.post;
end;

procedure TfrmPreventas.btCancelClick(Sender: TObject);
begin
  QPreventa.cancel;
end;

procedure TfrmPreventas.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QPreventa.delete;
end;

procedure TfrmPreventas.btEditClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  DBEdit2.setfocus;
  QPreventa.edit;
end;

procedure TfrmPreventas.btInsertClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  DBEdit2.setfocus;
  QPreventa.insert;
end;

procedure TfrmPreventas.btFindClick(Sender: TObject);
begin
  Search.query.clear;
  Search.query.add('select pre_nombre, pre_codigo');
  Search.query.add('from Preventas');
  Search.query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  if search.execute then
     QPreventa.locate('pre_codigo',search.valuefield,[]);
end;

procedure TfrmPreventas.btpriorClick(Sender: TObject);
begin
  if not QPreventa.bof then
    QPreventa.prior;
end;

procedure TfrmPreventas.btnextClick(Sender: TObject);
begin
  if not QPreventa.eof then
    QPreventa.next;
end;

procedure TfrmPreventas.FormActivate(Sender: TObject);
begin
  if not QPreventa.active then
  begin
    QPreventa.open;
    QListado.Open;
  end;
  frmMain.ExportXLS.FileName := 'Preventas.xls';
  frmMain.ExportXLS.Sheets[1].DataSet := QPreventa;
  frmMain.ExportXLS.Sheets[0].Exported := False;
  frmMain.ExportXLS.Sheets[2].Exported := False;
  frmMain.ExportXLS.Sheets[1].Exported := True;
end;

procedure TfrmPreventas.dsPreventasStateChange(Sender: TObject);
begin
  btInsert.enabled  := dsPreventas.State = dsbrowse;
  btEdit.enabled    := btInsert.enabled;
  btDelete.enabled  := btInsert.enabled;
  btNext.enabled    := btInsert.enabled;
  btPrior.enabled   := btInsert.enabled;
  btPost.enabled    := not btInsert.enabled;
  btCancel.enabled  := not btInsert.enabled;
  btFind.enabled    := btInsert.enabled;
end;

procedure TfrmPreventas.FormCreate(Sender: TObject);
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

procedure TfrmPreventas.DBGrid1DblClick(Sender: TObject);
begin
  QPreventa.locate('pre_codigo',QListadopre_codigo.Value,[]);
  PageControl1.ActivePageIndex := 0;
end;

end.
