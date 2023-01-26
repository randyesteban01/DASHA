unit CONT85;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Db, IBCustomDataSet, IBQuery,
  IBUpdateSQL, ADODB, QuerySearchDlgADO, ComCtrls, ToolWin, ActnList;

type
  TfrmCashflowConceptos = class(TForm)
    Panel2: TPanel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    QConceptos: TADOQuery;
    dsConceptos: TDataSource;
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
    QConceptosemp_codigo: TIntegerField;
    QConceptosGrupoID: TIntegerField;
    QConceptosSubgrupoID: TIntegerField;
    QConceptosConceptoID: TIntegerField;
    QConceptosNombre: TStringField;
    QGrupo: TADOQuery;
    QGrupoemp_codigo: TIntegerField;
    QGrupoGrupoID: TIntegerField;
    QGrupoNombre: TStringField;
    QGrupoOperacion: TStringField;
    dsGrupo: TDataSource;
    Label3: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    QSubgrupo: TADOQuery;
    QSubgrupoemp_codigo: TIntegerField;
    QSubgrupoGrupoID: TIntegerField;
    QSubgrupoSubgrupoID: TIntegerField;
    QSubgrupoNombre: TStringField;
    dsSubgrupo: TDataSource;
    Label4: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
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
    procedure QConceptosAfterDelete(DataSet: TDataSet);
    procedure QConceptosAfterPost(DataSet: TDataSet);
    procedure QConceptosNewRecord(DataSet: TDataSet);
    procedure QConceptosBeforePost(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure dsConceptosStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCashflowConceptos: TfrmCashflowConceptos;

implementation

uses SIGMA01, SIGMA00;


{$R *.DFM}

procedure TfrmCashflowConceptos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmCashflowConceptos.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmCashflowConceptos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then
     close;
end;

procedure TfrmCashflowConceptos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmCashflowConceptos.btPostClick(Sender: TObject);
begin
  QConceptos.post;
end;

procedure TfrmCashflowConceptos.btCancelClick(Sender: TObject);
begin
  QConceptos.cancel;
end;

procedure TfrmCashflowConceptos.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QConceptos.delete;
end;

procedure TfrmCashflowConceptos.btEditClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QConceptos.edit;
end;

procedure TfrmCashflowConceptos.btInsertClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QConceptos.insert;
end;

procedure TfrmCashflowConceptos.btFindClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select Nombre, ConceptoID');
  Search.Query.Add('from Cashflow_Conceptos');
  Search.Query.Add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.Value));
  if search.execute then
     QConceptos.locate('ConceptoID',search.valuefield,[]);
end;

procedure TfrmCashflowConceptos.btpriorClick(Sender: TObject);
begin
  if not QConceptos.Bof then QConceptos.prior;
end;

procedure TfrmCashflowConceptos.btnextClick(Sender: TObject);
begin
  if not QConceptos.eof then QConceptos.next;
end;

procedure TfrmCashflowConceptos.QConceptosAfterDelete(DataSet: TDataSet);
begin
  QConceptos.UpdateBatch;
end;

procedure TfrmCashflowConceptos.QConceptosAfterPost(DataSet: TDataSet);
begin
  QConceptos.UpdateBatch;
end;

procedure TfrmCashflowConceptos.QConceptosNewRecord(DataSet: TDataSet);
begin
  QConceptosemp_codigo.value := dm.QEmpresasEMP_CODIGO.value;
end;

procedure TfrmCashflowConceptos.QConceptosBeforePost(DataSet: TDataSet);
begin
  if trim(QConceptosNombre.value) = '' then
  begin
    showmessage('EL NOMBRE NO PUEDE ESTAR EN BLANCO');
    DBEdit2.setfocus;
    abort;
  end;
  if QConceptos.State = dsInsert then
  begin
    dm.query1.close;
    dm.query1.sql.clear;
    dm.query1.sql.add('select isnull(max(ConceptoID),0) as maximo');
    dm.query1.sql.add('from Cashflow_Conceptos');
    dm.query1.sql.add('where emp_codigo = :emp');
    dm.query1.Parameters.parambyname('emp').Value := dm.QEmpresasEMP_CODIGO.value;
    dm.query1.open;
    QConceptosConceptoID.value := dm.query1.fieldbyname('maximo').asinteger +1;
  end;
end;

procedure TfrmCashflowConceptos.FormActivate(Sender: TObject);
begin
  if not QConceptos.active then QConceptos.open;
  if not QGrupo.Active then QGrupo.Open;
  if not QSubgrupo.Active then QSubgrupo.Open;
  frmMain.ExportXLS.Sheets[1].DataSet := QConceptos;
  frmMain.ExportXLS.Sheets[0].Exported := False;
  frmMain.ExportXLS.Sheets[1].Exported := True;
end;

procedure TfrmCashflowConceptos.dsConceptosStateChange(Sender: TObject);
begin
  btInsert.enabled  := dsConceptos.State = dsbrowse;
  btEdit.enabled    := btInsert.enabled;
  btDelete.enabled  := btInsert.enabled;
  btNext.enabled    := btInsert.enabled;
  btPrior.enabled   := btInsert.enabled;
  btPost.enabled    := not btInsert.enabled;
  btCancel.enabled  := not btInsert.enabled;
  btFind.enabled    := btInsert.enabled;
end;

procedure TfrmCashflowConceptos.FormCreate(Sender: TObject);
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

procedure TfrmCashflowConceptos.DBLookupComboBox1Click(Sender: TObject);
begin
  QSubgrupo.Close;
  QSubgrupo.Open;
end;

end.
