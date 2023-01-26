unit RH08;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Db, ADODB, IBCustomDataSet,
  IBQuery, IBUpdateSQL, ComCtrls, QuerySearchDlgADO, ToolWin, ActnList;

type
  TfrmPosiciones = class(TForm)
    Panel2: TPanel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    QPosiciones: TADOQuery;
    dsPosiciones: TDataSource;
    Search: TQrySearchDlgADO;
    QPosicionesemp_codigo: TIntegerField;
    QPosicionespos_codigo: TIntegerField;
    QPosicionespos_nombre: TStringField;
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
    procedure QPosicionesAfterDelete(DataSet: TDataSet);
    procedure QPosicionesAfterPost(DataSet: TDataSet);
    procedure QPosicionesNewRecord(DataSet: TDataSet);
    procedure btFindClick(Sender: TObject);
    procedure btPostClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btInsertClick(Sender: TObject);
    procedure btpriorClick(Sender: TObject);
    procedure btnextClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dsPosicionesStateChange(Sender: TObject);
    procedure QPosicionesBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPosiciones: TfrmPosiciones;

implementation

uses SIGMA01, SIGMA00;


{$R *.DFM}

procedure TfrmPosiciones.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmPosiciones.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmPosiciones.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then
     close;
end;

procedure TfrmPosiciones.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmPosiciones.QPosicionesAfterDelete(DataSet: TDataSet);
begin
  QPosiciones.UpdateBatch;
end;

procedure TfrmPosiciones.QPosicionesAfterPost(DataSet: TDataSet);
begin
  QPosiciones.UpdateBatch;
end;

procedure TfrmPosiciones.QPosicionesNewRecord(DataSet: TDataSet);
begin
  QPosicionesEMP_CODIGO.value := dm.QEmpresasEMP_CODIGO.value;
end;

procedure TfrmPosiciones.btFindClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select pos_nombre, pos_codigo');
  Search.Query.Add('from posiciones');
  Search.Query.Add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.Value));
  if search.execute then
     QPosiciones.locate('pos_codigo',search.valuefield,[]);
end;

procedure TfrmPosiciones.btPostClick(Sender: TObject);
begin
  QPosiciones.post;
end;

procedure TfrmPosiciones.btCancelClick(Sender: TObject);
begin
  QPosiciones.cancel;
end;

procedure TfrmPosiciones.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QPosiciones.delete;
end;

procedure TfrmPosiciones.btEditClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QPosiciones.edit;
end;

procedure TfrmPosiciones.btInsertClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QPosiciones.insert;
end;

procedure TfrmPosiciones.btpriorClick(Sender: TObject);
begin
  if not QPosiciones.Bof then QPosiciones.prior;
end;

procedure TfrmPosiciones.btnextClick(Sender: TObject);
begin
  if not QPosiciones.eof then QPosiciones.next;
end;

procedure TfrmPosiciones.FormActivate(Sender: TObject);
begin
  if not QPosiciones.active then QPosiciones.open;
  frmMain.ExportXLS.Sheets[1].DataSet := QPosiciones;
  frmMain.ExportXLS.Sheets[0].Exported := False;
  frmMain.ExportXLS.Sheets[1].Exported := True;
end;

procedure TfrmPosiciones.dsPosicionesStateChange(Sender: TObject);
begin
  btInsert.enabled  := dsPosiciones.State = dsbrowse;
  btEdit.enabled    := btInsert.enabled;
  btDelete.enabled  := btInsert.enabled;
  btNext.enabled    := btInsert.enabled;
  btPrior.enabled   := btInsert.enabled;
  btPost.enabled    := not btInsert.enabled;
  btCancel.enabled  := not btInsert.enabled;
  btFind.enabled    := btInsert.enabled;
end;

procedure TfrmPosiciones.QPosicionesBeforePost(DataSet: TDataSet);
begin
  if trim(QPosicionespos_NOMBRE.value) = '' then
  begin
    showmessage('EL NOMBRE NO PUEDE ESTAR EN BLANCO');
    DBEdit2.setfocus;
    abort;
  end;
  if QPosiciones.State = dsInsert then
  begin
    dm.query1.close;
    dm.query1.sql.clear;
    dm.query1.sql.add('select isnull(max(pos_codigo),0) as maximo');
    dm.query1.sql.add('from posiciones');
    dm.query1.sql.add('where emp_codigo = :emp');
    dm.query1.Parameters.parambyname('emp').Value := dm.QEmpresasEMP_CODIGO.value;
    dm.query1.open;
    QPosicionespos_CODIGO.value := dm.query1.fieldbyname('maximo').asinteger +1;
  end;
end;

procedure TfrmPosiciones.FormCreate(Sender: TObject);
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
