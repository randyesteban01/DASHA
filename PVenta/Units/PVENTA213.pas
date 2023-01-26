unit PVENTA213;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Db, IBCustomDataSet, IBQuery,
  IBUpdateSQL, ADODB, QuerySearchDlgADO, ComCtrls, ToolWin, ActnList;

type
  TfrmUnidades = class(TForm)
    Panel2: TPanel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    QUnidades: TADOQuery;
    dsUnidades: TDataSource;
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
    QUnidadesemp_codigo: TIntegerField;
    QUnidadesUnidadID: TStringField;
    QUnidadesNombre: TStringField;
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
    procedure btFindClick(Sender: TObject);
    procedure btpriorClick(Sender: TObject);
    procedure btnextClick(Sender: TObject);
    procedure QUnidadesAfterDelete(DataSet: TDataSet);
    procedure QUnidadesAfterPost(DataSet: TDataSet);
    procedure QUnidadesNewRecord(DataSet: TDataSet);
    procedure QUnidadesBeforePost(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure dsUnidadesStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUnidades: TfrmUnidades;

implementation

uses SIGMA01, SIGMA00;


{$R *.DFM}

procedure TfrmUnidades.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmUnidades.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmUnidades.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then
     close;
end;

procedure TfrmUnidades.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmUnidades.btPostClick(Sender: TObject);
begin
  QUnidades.post;
end;

procedure TfrmUnidades.btCancelClick(Sender: TObject);
begin
  QUnidades.cancel;
end;

procedure TfrmUnidades.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QUnidades.delete;
end;

procedure TfrmUnidades.btEditClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QUnidades.edit;
end;

procedure TfrmUnidades.btInsertClick(Sender: TObject);
begin
  QUnidades.insert;
  DBEdit1.setfocus;
end;

procedure TfrmUnidades.btFindClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select Nombre, UnidadID');
  Search.Query.Add('from UnidadMedida');
  Search.Query.Add('where emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.Value));
  if search.execute then
     QUnidades.locate('UnidadID',search.valuefield,[]);
end;

procedure TfrmUnidades.btpriorClick(Sender: TObject);
begin
  if not QUnidades.Bof then QUnidades.prior;
end;

procedure TfrmUnidades.btnextClick(Sender: TObject);
begin
  if not QUnidades.eof then QUnidades.next;
end;

procedure TfrmUnidades.QUnidadesAfterDelete(DataSet: TDataSet);
begin
  QUnidades.UpdateBatch;
end;

procedure TfrmUnidades.QUnidadesAfterPost(DataSet: TDataSet);
begin
  QUnidades.UpdateBatch;
end;

procedure TfrmUnidades.QUnidadesNewRecord(DataSet: TDataSet);
begin
  QUnidadesemp_codigo.value := dm.QParametrosPAR_INVEMPRESA.Value;
end;

procedure TfrmUnidades.QUnidadesBeforePost(DataSet: TDataSet);
begin
  if trim(QUnidadesNombre.value) = '' then
  begin
    showmessage('EL NOMBRE NO PUEDE ESTAR EN BLANCO');
    DBEdit2.setfocus;
    abort;
  end;
end;

procedure TfrmUnidades.FormActivate(Sender: TObject);
begin
  if not QUnidades.active then QUnidades.open;
  frmMain.ExportXLS.Sheets[1].DataSet := QUnidades;
  frmMain.ExportXLS.Sheets[0].Exported := False;
  frmMain.ExportXLS.Sheets[1].Exported := True;
end;

procedure TfrmUnidades.dsUnidadesStateChange(Sender: TObject);
begin
  btInsert.enabled  := dsUnidades.State = dsbrowse;
  DBEdit1.Enabled   := dsUnidades.State = dsInsert;
  btEdit.enabled    := btInsert.enabled;
  btDelete.enabled  := btInsert.enabled;
  btNext.enabled    := btInsert.enabled;
  btPrior.enabled   := btInsert.enabled;
  btPost.enabled    := not btInsert.enabled;
  btCancel.enabled  := not btInsert.enabled;
  btFind.enabled    := btInsert.enabled;
end;

procedure TfrmUnidades.FormCreate(Sender: TObject);
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
