unit PVENTA150;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Db, ADODB, IBCustomDataSet,
  IBQuery, IBUpdateSQL, ComCtrls, QuerySearchDlgADO, ToolWin, ActnList;

type
  TfrmMesas = class(TForm)
    Panel2: TPanel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    QMesas: TADOQuery;
    dsMesas: TDataSource;
    Search: TQrySearchDlgADO;
    QMesasemp_codigo: TIntegerField;
    QMesasmes_codigo: TStringField;
    QMesasven_codigo: TIntegerField;
    QMesasmes_status: TStringField;
    QMesasmes_codigo_bar: TStringField;
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
    procedure QMesasAfterDelete(DataSet: TDataSet);
    procedure QMesasAfterPost(DataSet: TDataSet);
    procedure QMesasNewRecord(DataSet: TDataSet);
    procedure btFindClick(Sender: TObject);
    procedure btPostClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btInsertClick(Sender: TObject);
    procedure btpriorClick(Sender: TObject);
    procedure btnextClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dsMesasStateChange(Sender: TObject);
    procedure QMesasBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMesas: TfrmMesas;

implementation

uses SIGMA01, SIGMA00;


{$R *.DFM}

procedure TfrmMesas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmMesas.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmMesas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then
     close;
end;

procedure TfrmMesas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmMesas.QMesasAfterDelete(DataSet: TDataSet);
begin
  QMesas.UpdateBatch;
end;

procedure TfrmMesas.QMesasAfterPost(DataSet: TDataSet);
begin
  QMesas.UpdateBatch;
end;

procedure TfrmMesas.QMesasNewRecord(DataSet: TDataSet);
begin
  QMesasEMP_CODIGO.value := dm.vp_cia;
end;

procedure TfrmMesas.btFindClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select mes_codigo');
  Search.Query.Add('from mesas');
  Search.Query.Add('where emp_codigo = '+inttostr(dm.vp_cia));
  if search.execute then
     QMesas.locate('mes_codigo',search.valuefield,[]);
end;

procedure TfrmMesas.btPostClick(Sender: TObject);
begin
  QMesas.post;
end;

procedure TfrmMesas.btCancelClick(Sender: TObject);
begin
  QMesas.cancel;
end;

procedure TfrmMesas.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QMesas.delete;
end;

procedure TfrmMesas.btEditClick(Sender: TObject);
begin
  DBEdit1.setfocus;
  QMesas.edit;
end;

procedure TfrmMesas.btInsertClick(Sender: TObject);
begin
  DBEdit1.setfocus;
  QMesas.insert;
end;

procedure TfrmMesas.btpriorClick(Sender: TObject);
begin
  if not QMesas.Bof then QMesas.prior;
end;

procedure TfrmMesas.btnextClick(Sender: TObject);
begin
  if not QMesas.eof then QMesas.next;
end;

procedure TfrmMesas.FormActivate(Sender: TObject);
begin
  if not QMesas.active then QMesas.open;
  frmMain.ExportXLS.Sheets[1].DataSet := QMesas;
  frmMain.ExportXLS.Sheets[0].Exported := False;
  frmMain.ExportXLS.Sheets[1].Exported := True;
end;

procedure TfrmMesas.dsMesasStateChange(Sender: TObject);
begin
  btInsert.enabled  := dsMesas.State = dsbrowse;
  btEdit.enabled    := btInsert.enabled;
  btDelete.enabled  := btInsert.enabled;
  btNext.enabled    := btInsert.enabled;
  btPrior.enabled   := btInsert.enabled;
  btPost.enabled    := not btInsert.enabled;
  btCancel.enabled  := not btInsert.enabled;
  btFind.enabled    := btInsert.enabled;
end;

procedure TfrmMesas.QMesasBeforePost(DataSet: TDataSet);
begin
  if trim(QMesasmes_codigo.value) = '' then
  begin
    showmessage('EL CODIGO NO PUEDE ESTAR EN BLANCO');
    DBEdit2.setfocus;
    abort;
  end;
end;

procedure TfrmMesas.FormCreate(Sender: TObject);
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
