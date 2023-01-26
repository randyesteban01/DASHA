unit SERV00;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Db, ADODB, IBCustomDataSet,
  IBQuery, IBUpdateSQL, ComCtrls, QuerySearchDlgADO, ToolWin, ActnList;

type
  TfrmTecnicos = class(TForm)
    Panel2: TPanel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    QTecnicos: TADOQuery;
    dsTecnicos: TDataSource;
    Search: TQrySearchDlgADO;
    QTecnicosEMP_CODIGO: TIntegerField;
    QTecnicosTEC_CODIGO: TIntegerField;
    QTecnicosTEC_NOMBRE: TStringField;
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
    QTecnicostec_codigo_sevicio: TStringField;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure QTecnicosAfterDelete(DataSet: TDataSet);
    procedure QTecnicosAfterPost(DataSet: TDataSet);
    procedure QTecnicosNewRecord(DataSet: TDataSet);
    procedure btFindClick(Sender: TObject);
    procedure btPostClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btInsertClick(Sender: TObject);
    procedure btpriorClick(Sender: TObject);
    procedure btnextClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dsTecnicosStateChange(Sender: TObject);
    procedure QTecnicosBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTecnicos: TfrmTecnicos;

implementation

uses SIGMA01, SIGMA00;


{$R *.DFM}

procedure TfrmTecnicos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmTecnicos.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmTecnicos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then
     close;
end;

procedure TfrmTecnicos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmTecnicos.QTecnicosAfterDelete(DataSet: TDataSet);
begin
  QTecnicos.UpdateBatch;
end;

procedure TfrmTecnicos.QTecnicosAfterPost(DataSet: TDataSet);
begin
  QTecnicos.UpdateBatch;
end;

procedure TfrmTecnicos.QTecnicosNewRecord(DataSet: TDataSet);
begin
  QTecnicosEMP_CODIGO.value := dm.QEmpresasEMP_CODIGO.value;
end;

procedure TfrmTecnicos.btFindClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select tec_nombre, tec_codigo');
  Search.Query.Add('from tecnicos');
  Search.Query.Add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.Value));
  if search.execute then
     QTecnicos.locate('tec_codigo',search.valuefield,[]);
end;

procedure TfrmTecnicos.btPostClick(Sender: TObject);
begin
  QTecnicos.post;
end;

procedure TfrmTecnicos.btCancelClick(Sender: TObject);
begin
  QTecnicos.cancel;
end;

procedure TfrmTecnicos.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QTecnicos.delete;
end;

procedure TfrmTecnicos.btEditClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QTecnicos.edit;
end;

procedure TfrmTecnicos.btInsertClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QTecnicos.insert;
end;

procedure TfrmTecnicos.btpriorClick(Sender: TObject);
begin
  if not QTecnicos.Bof then QTecnicos.prior;
end;

procedure TfrmTecnicos.btnextClick(Sender: TObject);
begin
  if not QTecnicos.eof then QTecnicos.next;
end;

procedure TfrmTecnicos.FormActivate(Sender: TObject);
begin
  if not QTecnicos.active then QTecnicos.open;
  frmMain.ExportXLS.Sheets[1].DataSet := QTecnicos;
  frmMain.ExportXLS.Sheets[0].Exported := False;
  frmMain.ExportXLS.Sheets[1].Exported := True;
end;

procedure TfrmTecnicos.dsTecnicosStateChange(Sender: TObject);
begin
  btInsert.enabled  := dsTecnicos.State = dsbrowse;
  btEdit.enabled    := btInsert.enabled;
  btDelete.enabled  := btInsert.enabled;
  btNext.enabled    := btInsert.enabled;
  btPrior.enabled   := btInsert.enabled;
  btPost.enabled    := not btInsert.enabled;
  btCancel.enabled  := not btInsert.enabled;
  btFind.enabled    := btInsert.enabled;
end;

procedure TfrmTecnicos.QTecnicosBeforePost(DataSet: TDataSet);
begin
  if trim(QTecnicosTEC_NOMBRE.value) = '' then
  begin
    showmessage('EL NOMBRE NO PUEDE ESTAR EN BLANCO');
    DBEdit2.setfocus;
    abort;
  end;
  if QTecnicos.State = dsInsert then
  begin
    dm.query1.close;
    dm.query1.sql.clear;
    dm.query1.sql.add('select isnull(max(tec_codigo),0) as maximo');
    dm.query1.sql.add('from tecnicos');
    dm.query1.sql.add('where emp_codigo = :emp');
    dm.query1.Parameters.parambyname('emp').Value := dm.QEmpresasEMP_CODIGO.value;
    dm.query1.open;
    QTecnicosTEC_CODIGO.value := dm.query1.fieldbyname('maximo').asinteger +1;
  end;
end;

procedure TfrmTecnicos.FormCreate(Sender: TObject);
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
