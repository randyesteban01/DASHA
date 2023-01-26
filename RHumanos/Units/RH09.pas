unit RH09;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Db, ADODB, IBCustomDataSet,
  IBQuery, IBUpdateSQL, ComCtrls, QuerySearchDlgADO, ToolWin, ActnList;

type
  TfrmNiveles = class(TForm)
    Panel2: TPanel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    QNiveles: TADOQuery;
    dsNiveles: TDataSource;
    Search: TQrySearchDlgADO;
    QNivelesemp_codigo: TIntegerField;
    QNivelesniv_codigo: TIntegerField;
    QNivelesniv_nombre: TStringField;
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
    procedure QNivelesAfterDelete(DataSet: TDataSet);
    procedure QNivelesAfterPost(DataSet: TDataSet);
    procedure QNivelesNewRecord(DataSet: TDataSet);
    procedure btFindClick(Sender: TObject);
    procedure btPostClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btInsertClick(Sender: TObject);
    procedure btpriorClick(Sender: TObject);
    procedure btnextClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dsNivelesStateChange(Sender: TObject);
    procedure QNivelesBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNiveles: TfrmNiveles;

implementation

uses SIGMA01, SIGMA00;


{$R *.DFM}

procedure TfrmNiveles.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmNiveles.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmNiveles.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then
     close;
end;

procedure TfrmNiveles.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmNiveles.QNivelesAfterDelete(DataSet: TDataSet);
begin
  QNiveles.UpdateBatch;
end;

procedure TfrmNiveles.QNivelesAfterPost(DataSet: TDataSet);
begin
  QNiveles.UpdateBatch;
end;

procedure TfrmNiveles.QNivelesNewRecord(DataSet: TDataSet);
begin
  QNivelesEMP_CODIGO.value := dm.QEmpresasEMP_CODIGO.value;
end;

procedure TfrmNiveles.btFindClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select niv_nombre, niv_codigo');
  Search.Query.Add('from niveles');
  Search.Query.Add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.Value));
  if search.execute then
     QNiveles.locate('niv_codigo',search.valuefield,[]);
end;

procedure TfrmNiveles.btPostClick(Sender: TObject);
begin
  QNiveles.post;
end;

procedure TfrmNiveles.btCancelClick(Sender: TObject);
begin
  QNiveles.cancel;
end;

procedure TfrmNiveles.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QNiveles.delete;
end;

procedure TfrmNiveles.btEditClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QNiveles.edit;
end;

procedure TfrmNiveles.btInsertClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QNiveles.insert;
end;

procedure TfrmNiveles.btpriorClick(Sender: TObject);
begin
  if not QNiveles.Bof then QNiveles.prior;
end;

procedure TfrmNiveles.btnextClick(Sender: TObject);
begin
  if not QNiveles.eof then QNiveles.next;
end;

procedure TfrmNiveles.FormActivate(Sender: TObject);
begin
  if not QNiveles.active then QNiveles.open;
  frmMain.ExportXLS.Sheets[1].DataSet := QNiveles;
  frmMain.ExportXLS.Sheets[0].Exported := False;
  frmMain.ExportXLS.Sheets[1].Exported := True;
end;

procedure TfrmNiveles.dsNivelesStateChange(Sender: TObject);
begin
  btInsert.enabled  := dsNiveles.State = dsbrowse;
  btEdit.enabled    := btInsert.enabled;
  btDelete.enabled  := btInsert.enabled;
  btNext.enabled    := btInsert.enabled;
  btPrior.enabled   := btInsert.enabled;
  btPost.enabled    := not btInsert.enabled;
  btCancel.enabled  := not btInsert.enabled;
  btFind.enabled    := btInsert.enabled;
end;

procedure TfrmNiveles.QNivelesBeforePost(DataSet: TDataSet);
begin
  if trim(QNivelesniv_NOMBRE.value) = '' then
  begin
    showmessage('EL NOMBRE NO PUEDE ESTAR EN BLANCO');
    DBEdit2.setfocus;
    abort;
  end;
  if QNiveles.State = dsInsert then
  begin
    dm.query1.close;
    dm.query1.sql.clear;
    dm.query1.sql.add('select isnull(max(niv_codigo),0) as maximo');
    dm.query1.sql.add('from niveles');
    dm.query1.sql.add('where emp_codigo = :emp');
    dm.query1.Parameters.parambyname('emp').Value := dm.QEmpresasEMP_CODIGO.value;
    dm.query1.open;
    QNivelesniv_CODIGO.value := dm.query1.fieldbyname('maximo').asinteger +1;
  end;
end;

procedure TfrmNiveles.FormCreate(Sender: TObject);
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
