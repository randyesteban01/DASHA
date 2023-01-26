unit CONT83;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Db, IBCustomDataSet, IBQuery,
  IBUpdateSQL, ADODB, QuerySearchDlgADO, ComCtrls, ToolWin, ActnList;

type
  TfrmCashflowGrupos = class(TForm)
    Panel2: TPanel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    QGrupo: TADOQuery;
    dsGrupo: TDataSource;
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
    QGrupoemp_codigo: TIntegerField;
    QGrupoGrupoID: TIntegerField;
    QGrupoNombre: TStringField;
    QGrupoOperacion: TStringField;
    DBRadioGroup1: TDBRadioGroup;
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
    procedure QGrupoAfterDelete(DataSet: TDataSet);
    procedure QGrupoAfterPost(DataSet: TDataSet);
    procedure QGrupoNewRecord(DataSet: TDataSet);
    procedure QGrupoBeforePost(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure dsGrupoStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCashflowGrupos: TfrmCashflowGrupos;

implementation

uses SIGMA01, SIGMA00;


{$R *.DFM}

procedure TfrmCashflowGrupos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmCashflowGrupos.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmCashflowGrupos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then
     close;
end;

procedure TfrmCashflowGrupos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmCashflowGrupos.btPostClick(Sender: TObject);
begin
  QGrupo.post;
end;

procedure TfrmCashflowGrupos.btCancelClick(Sender: TObject);
begin
  QGrupo.cancel;
end;

procedure TfrmCashflowGrupos.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QGrupo.delete;
end;

procedure TfrmCashflowGrupos.btEditClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QGrupo.edit;
end;

procedure TfrmCashflowGrupos.btInsertClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QGrupo.insert;
end;

procedure TfrmCashflowGrupos.btFindClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select Nombre, GrupoID');
  Search.Query.Add('from Cashflow_Grupo');
  Search.Query.Add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.Value));
  if search.execute then
     QGrupo.locate('GrupoID',search.valuefield,[]);
end;

procedure TfrmCashflowGrupos.btpriorClick(Sender: TObject);
begin
  if not QGrupo.Bof then QGrupo.prior;
end;

procedure TfrmCashflowGrupos.btnextClick(Sender: TObject);
begin
  if not QGrupo.eof then QGrupo.next;
end;

procedure TfrmCashflowGrupos.QGrupoAfterDelete(DataSet: TDataSet);
begin
  QGrupo.UpdateBatch;
end;

procedure TfrmCashflowGrupos.QGrupoAfterPost(DataSet: TDataSet);
begin
  QGrupo.UpdateBatch;
end;

procedure TfrmCashflowGrupos.QGrupoNewRecord(DataSet: TDataSet);
begin
  QGrupoemp_codigo.value := dm.QEmpresasEMP_CODIGO.value;
  QGrupoOperacion.Value  := 'S';
end;

procedure TfrmCashflowGrupos.QGrupoBeforePost(DataSet: TDataSet);
begin
  if trim(QGrupoNombre.value) = '' then
  begin
    showmessage('EL NOMBRE NO PUEDE ESTAR EN BLANCO');
    DBEdit2.setfocus;
    abort;
  end;
  if QGrupo.State = dsInsert then
  begin
    dm.query1.close;
    dm.query1.sql.clear;
    dm.query1.sql.add('select isnull(max(GrupoID),0) as maximo');
    dm.query1.sql.add('from Cashflow_Grupo');
    dm.query1.sql.add('where emp_codigo = :emp');
    dm.query1.Parameters.parambyname('emp').Value := dm.QEmpresasEMP_CODIGO.value;
    dm.query1.open;
    QGrupoGrupoID.value := dm.query1.fieldbyname('maximo').asinteger +1;
  end;
end;

procedure TfrmCashflowGrupos.FormActivate(Sender: TObject);
begin
  if not QGrupo.active then QGrupo.open;
  frmMain.ExportXLS.Sheets[1].DataSet := QGrupo;
  frmMain.ExportXLS.Sheets[0].Exported := False;
  frmMain.ExportXLS.Sheets[1].Exported := True;
end;

procedure TfrmCashflowGrupos.dsGrupoStateChange(Sender: TObject);
begin
  btInsert.enabled  := dsGrupo.State = dsbrowse;
  btEdit.enabled    := btInsert.enabled;
  btDelete.enabled  := btInsert.enabled;
  btNext.enabled    := btInsert.enabled;
  btPrior.enabled   := btInsert.enabled;
  btPost.enabled    := not btInsert.enabled;
  btCancel.enabled  := not btInsert.enabled;
  btFind.enabled    := btInsert.enabled;
end;

procedure TfrmCashflowGrupos.FormCreate(Sender: TObject);
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
