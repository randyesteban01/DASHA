unit CONT84;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Db, IBCustomDataSet, IBQuery,
  IBUpdateSQL, ADODB, QuerySearchDlgADO, ComCtrls, ToolWin, ActnList;

type
  TfrmCashflowSubgrupos = class(TForm)
    Panel2: TPanel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    QSubgrupo: TADOQuery;
    dsSubgrupo: TDataSource;
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
    QSubgrupoemp_codigo: TIntegerField;
    QSubgrupoGrupoID: TIntegerField;
    QSubgrupoSubgrupoID: TIntegerField;
    QSubgrupoNombre: TStringField;
    QGrupo: TADOQuery;
    QGrupoemp_codigo: TIntegerField;
    QGrupoGrupoID: TIntegerField;
    QGrupoNombre: TStringField;
    QGrupoOperacion: TStringField;
    dsGrupo: TDataSource;
    Label3: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
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
    procedure QSubgrupoAfterDelete(DataSet: TDataSet);
    procedure QSubgrupoAfterPost(DataSet: TDataSet);
    procedure QSubgrupoNewRecord(DataSet: TDataSet);
    procedure QSubgrupoBeforePost(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure dsSubgrupoStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCashflowSubgrupos: TfrmCashflowSubgrupos;

implementation

uses SIGMA01, SIGMA00;


{$R *.DFM}

procedure TfrmCashflowSubgrupos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmCashflowSubgrupos.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmCashflowSubgrupos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then
     close;
end;

procedure TfrmCashflowSubgrupos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmCashflowSubgrupos.btPostClick(Sender: TObject);
begin
  QSubgrupo.post;
end;

procedure TfrmCashflowSubgrupos.btCancelClick(Sender: TObject);
begin
  QSubgrupo.cancel;
end;

procedure TfrmCashflowSubgrupos.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QSubgrupo.delete;
end;

procedure TfrmCashflowSubgrupos.btEditClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QSubgrupo.edit;
end;

procedure TfrmCashflowSubgrupos.btInsertClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QSubgrupo.insert;
end;

procedure TfrmCashflowSubgrupos.btFindClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select Nombre, SubgrupoID');
  Search.Query.Add('from Cashflow_Subgrupo');
  Search.Query.Add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.Value));
  if search.execute then
     QSubgrupo.locate('SubgrupoID',search.valuefield,[]);
end;

procedure TfrmCashflowSubgrupos.btpriorClick(Sender: TObject);
begin
  if not QSubgrupo.Bof then QSubgrupo.prior;
end;

procedure TfrmCashflowSubgrupos.btnextClick(Sender: TObject);
begin
  if not QSubgrupo.eof then QSubgrupo.next;
end;

procedure TfrmCashflowSubgrupos.QSubgrupoAfterDelete(DataSet: TDataSet);
begin
  QSubgrupo.UpdateBatch;
end;

procedure TfrmCashflowSubgrupos.QSubgrupoAfterPost(DataSet: TDataSet);
begin
  QSubgrupo.UpdateBatch;
end;

procedure TfrmCashflowSubgrupos.QSubgrupoNewRecord(DataSet: TDataSet);
begin
  QSubgrupoemp_codigo.value := dm.QEmpresasEMP_CODIGO.value;
  QSubgrupoGrupoID.Value := QGrupoGrupoID.Value;
end;

procedure TfrmCashflowSubgrupos.QSubgrupoBeforePost(DataSet: TDataSet);
begin
  if trim(QSubgrupoNombre.value) = '' then
  begin
    showmessage('EL NOMBRE NO PUEDE ESTAR EN BLANCO');
    DBEdit2.setfocus;
    abort;
  end;
  if QSubgrupo.State = dsInsert then
  begin
    dm.query1.close;
    dm.query1.sql.clear;
    dm.query1.sql.add('select isnull(max(SubgrupoID),0) as maximo');
    dm.query1.sql.add('from Cashflow_Subgrupo');
    dm.query1.sql.add('where emp_codigo = :emp');
    dm.query1.Parameters.parambyname('emp').Value := dm.QEmpresasEMP_CODIGO.value;
    dm.query1.open;
    QSubgrupoSubgrupoID.value := dm.query1.fieldbyname('maximo').asinteger +1;
  end;
end;

procedure TfrmCashflowSubgrupos.FormActivate(Sender: TObject);
begin
  if not QSubgrupo.active then QSubgrupo.open;
  if not QGrupo.Active then QGrupo.Open;
  frmMain.ExportXLS.Sheets[1].DataSet := QSubgrupo;
  frmMain.ExportXLS.Sheets[0].Exported := False;
  frmMain.ExportXLS.Sheets[1].Exported := True;
end;

procedure TfrmCashflowSubgrupos.dsSubgrupoStateChange(Sender: TObject);
begin
  btInsert.enabled  := dsSubgrupo.State = dsbrowse;
  btEdit.enabled    := btInsert.enabled;
  btDelete.enabled  := btInsert.enabled;
  btNext.enabled    := btInsert.enabled;
  btPrior.enabled   := btInsert.enabled;
  btPost.enabled    := not btInsert.enabled;
  btCancel.enabled  := not btInsert.enabled;
  btFind.enabled    := btInsert.enabled;
end;

procedure TfrmCashflowSubgrupos.FormCreate(Sender: TObject);
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
