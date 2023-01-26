unit RH13;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Db, ADODB, IBCustomDataSet,
  IBQuery, IBUpdateSQL, ComCtrls, QuerySearchDlgADO, ToolWin, ActnList;

type
  TfrmMotivos = class(TForm)
    Panel2: TPanel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    QMotivos: TADOQuery;
    dsMotivos: TDataSource;
    Search: TQrySearchDlgADO;
    QMotivosmot_codigo: TIntegerField;
    QMotivosmot_nombre: TStringField;
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
    procedure QMotivosAfterDelete(DataSet: TDataSet);
    procedure QMotivosAfterPost(DataSet: TDataSet);
    procedure btFindClick(Sender: TObject);
    procedure btPostClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btInsertClick(Sender: TObject);
    procedure btpriorClick(Sender: TObject);
    procedure btnextClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dsMotivosStateChange(Sender: TObject);
    procedure QMotivosBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMotivos: TfrmMotivos;

implementation

uses SIGMA01, SIGMA00;


{$R *.DFM}

procedure TfrmMotivos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmMotivos.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmMotivos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then
     close;
end;

procedure TfrmMotivos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmMotivos.QMotivosAfterDelete(DataSet: TDataSet);
begin
  QMotivos.UpdateBatch;
end;

procedure TfrmMotivos.QMotivosAfterPost(DataSet: TDataSet);
begin
  QMotivos.UpdateBatch;
end;

procedure TfrmMotivos.btFindClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select mot_nombre, mot_codigo');
  Search.Query.Add('from motivos');
  if search.execute then
     QMotivos.locate('mot_codigo',search.valuefield,[]);
end;

procedure TfrmMotivos.btPostClick(Sender: TObject);
begin
  QMotivos.post;
end;

procedure TfrmMotivos.btCancelClick(Sender: TObject);
begin
  QMotivos.cancel;
end;

procedure TfrmMotivos.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QMotivos.delete;
end;

procedure TfrmMotivos.btEditClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QMotivos.edit;
end;

procedure TfrmMotivos.btInsertClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QMotivos.insert;
end;

procedure TfrmMotivos.btpriorClick(Sender: TObject);
begin
  if not QMotivos.Bof then QMotivos.prior;
end;

procedure TfrmMotivos.btnextClick(Sender: TObject);
begin
  if not QMotivos.eof then QMotivos.next;
end;

procedure TfrmMotivos.FormActivate(Sender: TObject);
begin
  if not QMotivos.active then QMotivos.open;
  frmMain.ExportXLS.Sheets[1].DataSet := QMotivos;
  frmMain.ExportXLS.Sheets[0].Exported := False;
  frmMain.ExportXLS.Sheets[1].Exported := True;
end;

procedure TfrmMotivos.dsMotivosStateChange(Sender: TObject);
begin
  btInsert.enabled  := dsMotivos.State = dsbrowse;
  btEdit.enabled    := btInsert.enabled;
  btDelete.enabled  := btInsert.enabled;
  btNext.enabled    := btInsert.enabled;
  btPrior.enabled   := btInsert.enabled;
  btPost.enabled    := not btInsert.enabled;
  btCancel.enabled  := not btInsert.enabled;
  btFind.enabled    := btInsert.enabled;
end;

procedure TfrmMotivos.QMotivosBeforePost(DataSet: TDataSet);
begin
  if trim(QMotivosmot_NOMBRE.value) = '' then
  begin
    showmessage('EL NOMBRE NO PUEDE ESTAR EN BLANCO');
    DBEdit2.setfocus;
    abort;
  end;
  if QMotivos.State = dsInsert then
  begin
    dm.query1.close;
    dm.query1.sql.clear;
    dm.query1.sql.add('select isnull(max(mot_codigo),0) as maximo');
    dm.query1.sql.add('from motivos');
    dm.query1.open;
    QMotivosmot_CODIGO.value := dm.query1.fieldbyname('maximo').asinteger +1;
  end;
end;

procedure TfrmMotivos.FormCreate(Sender: TObject);
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
