unit RH06;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Db, ADODB, IBCustomDataSet,
  IBQuery, IBUpdateSQL, ComCtrls, QuerySearchDlgADO, ToolWin, ActnList;

type
  TfrmGrupoDescuentos = class(TForm)
    Panel2: TPanel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    QGrupos: TADOQuery;
    dsGrupos: TDataSource;
    Search: TQrySearchDlgADO;
    QGruposemp_codigo: TIntegerField;
    QGruposgru_codigo: TIntegerField;
    QGruposgru_nombre: TStringField;
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
    procedure QGruposAfterDelete(DataSet: TDataSet);
    procedure QGruposAfterPost(DataSet: TDataSet);
    procedure QGruposNewRecord(DataSet: TDataSet);
    procedure btFindClick(Sender: TObject);
    procedure btPostClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btInsertClick(Sender: TObject);
    procedure btpriorClick(Sender: TObject);
    procedure btnextClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dsGruposStateChange(Sender: TObject);
    procedure QGruposBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGrupoDescuentos: TfrmGrupoDescuentos;

implementation

uses SIGMA01, SIGMA00;


{$R *.DFM}

procedure TfrmGrupoDescuentos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmGrupoDescuentos.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmGrupoDescuentos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then
     close;
end;

procedure TfrmGrupoDescuentos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmGrupoDescuentos.QGruposAfterDelete(DataSet: TDataSet);
begin
  QGrupos.UpdateBatch;
end;

procedure TfrmGrupoDescuentos.QGruposAfterPost(DataSet: TDataSet);
begin
  QGrupos.UpdateBatch;
end;

procedure TfrmGrupoDescuentos.QGruposNewRecord(DataSet: TDataSet);
begin
  QGruposEMP_CODIGO.value := dm.QEmpresasEMP_CODIGO.value;
end;

procedure TfrmGrupoDescuentos.btFindClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select gru_nombre, gru_codigo');
  Search.Query.Add('from grupo_descuentos');
  Search.Query.Add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.Value));
  if search.execute then
     QGrupos.locate('gru_codigo',search.valuefield,[]);
end;

procedure TfrmGrupoDescuentos.btPostClick(Sender: TObject);
begin
  QGrupos.post;
end;

procedure TfrmGrupoDescuentos.btCancelClick(Sender: TObject);
begin
  QGrupos.cancel;
end;

procedure TfrmGrupoDescuentos.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QGrupos.delete;
end;

procedure TfrmGrupoDescuentos.btEditClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QGrupos.edit;
end;

procedure TfrmGrupoDescuentos.btInsertClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QGrupos.insert;
end;

procedure TfrmGrupoDescuentos.btpriorClick(Sender: TObject);
begin
  if not QGrupos.Bof then QGrupos.prior;
end;

procedure TfrmGrupoDescuentos.btnextClick(Sender: TObject);
begin
  if not QGrupos.eof then QGrupos.next;
end;

procedure TfrmGrupoDescuentos.FormActivate(Sender: TObject);
begin
  if not QGrupos.active then QGrupos.open;
  frmMain.ExportXLS.Sheets[1].DataSet := QGrupos;
  frmMain.ExportXLS.Sheets[0].Exported := False;
  frmMain.ExportXLS.Sheets[1].Exported := True;
end;

procedure TfrmGrupoDescuentos.dsGruposStateChange(Sender: TObject);
begin
  btInsert.enabled  := dsGrupos.State = dsbrowse;
  btEdit.enabled    := btInsert.enabled;
  btDelete.enabled  := btInsert.enabled;
  btNext.enabled    := btInsert.enabled;
  btPrior.enabled   := btInsert.enabled;
  btPost.enabled    := not btInsert.enabled;
  btCancel.enabled  := not btInsert.enabled;
  btFind.enabled    := btInsert.enabled;
end;

procedure TfrmGrupoDescuentos.QGruposBeforePost(DataSet: TDataSet);
begin
  if trim(QGruposgru_NOMBRE.value) = '' then
  begin
    showmessage('EL NOMBRE NO PUEDE ESTAR EN BLANCO');
    DBEdit2.setfocus;
    abort;
  end;
  if QGrupos.State = dsInsert then
  begin
    dm.query1.close;
    dm.query1.sql.clear;
    dm.query1.sql.add('select isnull(max(gru_codigo),0) as maximo');
    dm.query1.sql.add('from grupo_descuentos');
    dm.query1.sql.add('where emp_codigo = :emp');
    dm.query1.Parameters.parambyname('emp').Value := dm.QEmpresasEMP_CODIGO.value;
    dm.query1.open;
    QGruposgru_CODIGO.value := dm.query1.fieldbyname('maximo').asinteger +1;
  end;
end;

procedure TfrmGrupoDescuentos.FormCreate(Sender: TObject);
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
