unit RH45;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Db, ADODB, IBCustomDataSet,
  IBQuery, IBUpdateSQL, ComCtrls, QuerySearchDlgADO, ToolWin, ActnList;

type
  TfrmTipoAccionPersonal = class(TForm)
    Panel2: TPanel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    QTipo: TADOQuery;
    dsTipo: TDataSource;
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
    QTipoemp_codigo: TIntegerField;
    QTipotip_codigo: TIntegerField;
    QTipotip_nombre: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure QTipoAfterDelete(DataSet: TDataSet);
    procedure QTipoAfterPost(DataSet: TDataSet);
    procedure QTipoNewRecord(DataSet: TDataSet);
    procedure btFindClick(Sender: TObject);
    procedure btPostClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btInsertClick(Sender: TObject);
    procedure btpriorClick(Sender: TObject);
    procedure btnextClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dsTipoStateChange(Sender: TObject);
    procedure QTipoBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTipoAccionPersonal: TfrmTipoAccionPersonal;

implementation

uses SIGMA01, SIGMA00;


{$R *.DFM}

procedure TfrmTipoAccionPersonal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmTipoAccionPersonal.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmTipoAccionPersonal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then
     close;
end;

procedure TfrmTipoAccionPersonal.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmTipoAccionPersonal.QTipoAfterDelete(DataSet: TDataSet);
begin
  QTipo.UpdateBatch;
end;

procedure TfrmTipoAccionPersonal.QTipoAfterPost(DataSet: TDataSet);
begin
  QTipo.UpdateBatch;
end;

procedure TfrmTipoAccionPersonal.QTipoNewRecord(DataSet: TDataSet);
begin
  QTipoemp_codigo.value := dm.QEmpresasEMP_CODIGO.value;
end;

procedure TfrmTipoAccionPersonal.btFindClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select tip_nombre, tip_codigo');
  Search.Query.Add('from tipos_accion_personal');
  Search.Query.Add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.Value));
  if search.execute then
     QTipo.locate('tip_codigo',search.valuefield,[]);
end;

procedure TfrmTipoAccionPersonal.btPostClick(Sender: TObject);
begin
  QTipo.post;
end;

procedure TfrmTipoAccionPersonal.btCancelClick(Sender: TObject);
begin
  QTipo.cancel;
end;

procedure TfrmTipoAccionPersonal.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QTipo.delete;
end;

procedure TfrmTipoAccionPersonal.btEditClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QTipo.edit;
end;

procedure TfrmTipoAccionPersonal.btInsertClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QTipo.insert;
end;

procedure TfrmTipoAccionPersonal.btpriorClick(Sender: TObject);
begin
  if not QTipo.Bof then QTipo.prior;
end;

procedure TfrmTipoAccionPersonal.btnextClick(Sender: TObject);
begin
  if not QTipo.eof then QTipo.next;
end;

procedure TfrmTipoAccionPersonal.FormActivate(Sender: TObject);
begin
  if not QTipo.active then QTipo.open;
  frmMain.ExportXLS.Sheets[1].DataSet := QTipo;
  frmMain.ExportXLS.Sheets[0].Exported := False;
  frmMain.ExportXLS.Sheets[1].Exported := True;
end;

procedure TfrmTipoAccionPersonal.dsTipoStateChange(Sender: TObject);
begin
  btInsert.enabled  := dsTipo.State = dsbrowse;
  btEdit.enabled    := btInsert.enabled;
  btDelete.enabled  := btInsert.enabled;
  btNext.enabled    := btInsert.enabled;
  btPrior.enabled   := btInsert.enabled;
  btPost.enabled    := not btInsert.enabled;
  btCancel.enabled  := not btInsert.enabled;
  btFind.enabled    := btInsert.enabled;
end;

procedure TfrmTipoAccionPersonal.QTipoBeforePost(DataSet: TDataSet);
begin
  if trim(QTipotip_nombre.value) = '' then
  begin
    showmessage('EL NOMBRE NO PUEDE ESTAR EN BLANCO');
    DBEdit2.setfocus;
    abort;
  end;
  if QTipo.State = dsInsert then
  begin
    dm.query1.close;
    dm.query1.sql.clear;
    dm.query1.sql.add('select isnull(max(tip_codigo),0) as maximo');
    dm.query1.sql.add('from tipos_accion_personal');
    dm.query1.sql.add('where emp_codigo = :emp');
    dm.query1.Parameters.parambyname('emp').Value := dm.QEmpresasEMP_CODIGO.value;
    dm.query1.open;
    QTipotip_codigo.value := dm.query1.fieldbyname('maximo').asinteger +1;
  end;
end;

procedure TfrmTipoAccionPersonal.FormCreate(Sender: TObject);
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
