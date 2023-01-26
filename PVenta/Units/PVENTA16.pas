unit PVENTA16;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Db, IBCustomDataSet, IBQuery,
  IBUpdateSQL, ADODB, QuerySearchDlgADO, ComCtrls, ToolWin, ActnList;

type
  TfrmColores = class(TForm)
    Panel2: TPanel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    QColores: TADOQuery;
    QColoresCOL_CODIGO: TIntegerField;
    QColoresCOL_NOMBRE: TIBStringField;
    dsColores: TDataSource;
    Search: TQrySearchDlgADO;
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
    procedure btPostClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btInsertClick(Sender: TObject);
    procedure btPriorClick(Sender: TObject);
    procedure btNextClick(Sender: TObject);
    procedure btFindClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dsColoresStateChange(Sender: TObject);
    procedure QColoresAfterDelete(DataSet: TDataSet);
    procedure QColoresAfterPost(DataSet: TDataSet);
    procedure QColoresBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmColores: TfrmColores;

implementation

uses SIGMA00, SIGMA01;


{$R *.DFM}

procedure TfrmColores.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmColores.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmColores.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then
     close;
end;

procedure TfrmColores.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmColores.btPostClick(Sender: TObject);
begin
  QColores.post;
end;

procedure TfrmColores.btCancelClick(Sender: TObject);
begin
  QColores.cancel;
end;

procedure TfrmColores.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QColores.delete;
end;

procedure TfrmColores.btEditClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QColores.edit;
end;

procedure TfrmColores.btInsertClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QColores.insert;
end;

procedure TfrmColores.btPriorClick(Sender: TObject);
begin
  if not QColores.bof then
    QColores.prior;
end;

procedure TfrmColores.btNextClick(Sender: TObject);
begin
  if not QColores.eof then
    QColores.next;
end;

procedure TfrmColores.btFindClick(Sender: TObject);
begin
  Search.query.clear;
  Search.query.add('select col_nombre, col_codigo');
  Search.query.add('from colores');
  if search.execute then
     QColores.locate('col_codigo',search.valuefield,[]);
end;

procedure TfrmColores.FormActivate(Sender: TObject);
begin
  if not QColores.active then QColores.open;
  frmMain.ExportXLS.Sheets[1].DataSet := QColores;
  frmMain.ExportXLS.Sheets[0].Exported := False;
  frmMain.ExportXLS.Sheets[1].Exported := True;
end;

procedure TfrmColores.dsColoresStateChange(Sender: TObject);
begin
  btInsert.enabled  := dsColores.State = dsbrowse;
  btEdit.enabled    := btInsert.enabled;
  btDelete.enabled  := btInsert.enabled;
  btNext.enabled    := btInsert.enabled;
  btPrior.enabled   := btInsert.enabled;
  btPost.enabled    := not btInsert.enabled;
  btCancel.enabled  := not btInsert.enabled;
  btFind.enabled    := btInsert.enabled;
end;

procedure TfrmColores.QColoresAfterDelete(DataSet: TDataSet);
begin
  QColores.UpdateBatch;
end;

procedure TfrmColores.QColoresAfterPost(DataSet: TDataSet);
begin
  QColores.UpdateBatch;
end;

procedure TfrmColores.QColoresBeforePost(DataSet: TDataSet);
begin
  if trim(QColoresCOL_NOMBRE.value) = '' then
  begin
    showmessage('EL NOMBRE NO PUEDE ESTAR EN BLANCO');
    DBEdit2.setfocus;
    abort;
  end;
  if QColores.State = dsInsert then
  begin
    dm.query1.close;
    dm.query1.sql.clear;
    dm.query1.sql.add('select isnull(max(col_codigo),0) as maximo');
    dm.query1.sql.add('from colores');
    dm.query1.open;
    QColoresCOL_CODIGO.value := dm.query1.fieldbyname('maximo').asinteger +1;
  end;
end;

procedure TfrmColores.FormCreate(Sender: TObject);
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
