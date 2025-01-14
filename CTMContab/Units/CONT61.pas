unit CONT61;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Db, ADODB, IBCustomDataSet,
  IBQuery, IBUpdateSQL, ComCtrls, QuerySearchDlgADO, ToolWin, ActnList;

type
  TfrmTipoMovActivos = class(TForm)
    Panel2: TPanel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    QTipos: TADOQuery;
    dsTipos: TDataSource;
    Search: TQrySearchDlgADO;
    QTiposEMP_CODIGO: TIntegerField;
    QTiposTIP_CODIGO: TIntegerField;
    QTiposTIP_NOMBRE: TStringField;
    QTiposUSU_CODIGO: TIntegerField;
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
    procedure QTiposAfterDelete(DataSet: TDataSet);
    procedure QTiposAfterPost(DataSet: TDataSet);
    procedure QTiposNewRecord(DataSet: TDataSet);
    procedure btFindClick(Sender: TObject);
    procedure btPostClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btInsertClick(Sender: TObject);
    procedure btpriorClick(Sender: TObject);
    procedure btnextClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dsTiposStateChange(Sender: TObject);
    procedure QTiposBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTipoMovActivos: TfrmTipoMovActivos;

implementation

uses SIGMA01, SIGMA00;


{$R *.DFM}

procedure TfrmTipoMovActivos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmTipoMovActivos.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmTipoMovActivos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then
     close;
end;

procedure TfrmTipoMovActivos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmTipoMovActivos.QTiposAfterDelete(DataSet: TDataSet);
begin
  QTipos.UpdateBatch;
end;

procedure TfrmTipoMovActivos.QTiposAfterPost(DataSet: TDataSet);
begin
  QTipos.UpdateBatch;
end;

procedure TfrmTipoMovActivos.QTiposNewRecord(DataSet: TDataSet);
begin
  QTiposEMP_CODIGO.value := dm.QEmpresasEMP_CODIGO.value;
  QTiposUSU_CODIGO.Value := dm.Usuario;
end;

procedure TfrmTipoMovActivos.btFindClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select tip_nombre, tip_codigo');
  Search.Query.Add('from tipo_movimientos_activos');
  Search.Query.Add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.Value));
  if search.execute then
     QTipos.locate('tip_codigo',search.valuefield,[]);
end;

procedure TfrmTipoMovActivos.btPostClick(Sender: TObject);
begin
  QTipos.post;
end;

procedure TfrmTipoMovActivos.btCancelClick(Sender: TObject);
begin
  QTipos.cancel;
end;

procedure TfrmTipoMovActivos.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QTipos.delete;
end;

procedure TfrmTipoMovActivos.btEditClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QTipos.edit;
end;

procedure TfrmTipoMovActivos.btInsertClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QTipos.insert;
end;

procedure TfrmTipoMovActivos.btpriorClick(Sender: TObject);
begin
  if not QTipos.Bof then QTipos.prior;
end;

procedure TfrmTipoMovActivos.btnextClick(Sender: TObject);
begin
  if not QTipos.eof then QTipos.next;
end;

procedure TfrmTipoMovActivos.FormActivate(Sender: TObject);
begin
  if not QTipos.active then QTipos.open;
  frmMain.ExportXLS.Sheets[1].DataSet := QTipos;
  frmMain.ExportXLS.Sheets[0].Exported := False;
  frmMain.ExportXLS.Sheets[1].Exported := True;
end;

procedure TfrmTipoMovActivos.dsTiposStateChange(Sender: TObject);
begin
  btInsert.enabled  := dsTipos.State = dsbrowse;
  btEdit.enabled    := btInsert.enabled;
  btDelete.enabled  := btInsert.enabled;
  btNext.enabled    := btInsert.enabled;
  btPrior.enabled   := btInsert.enabled;
  btPost.enabled    := not btInsert.enabled;
  btCancel.enabled  := not btInsert.enabled;
  btFind.enabled    := btInsert.enabled;
end;

procedure TfrmTipoMovActivos.QTiposBeforePost(DataSet: TDataSet);
begin
  if trim(QTiposTIP_NOMBRE.value) = '' then
  begin
    showmessage('EL NOMBRE NO PUEDE ESTAR EN BLANCO');
    DBEdit2.setfocus;
    abort;
  end;
  if QTipos.State = dsInsert then
  begin
    dm.query1.close;
    dm.query1.sql.clear;
    dm.query1.sql.add('select isnull(max(tip_codigo),0) as maximo');
    dm.query1.sql.add('from tipo_movimientos_Activos');
    dm.query1.sql.add('where emp_codigo = :emp');
    dm.query1.Parameters.parambyname('emp').Value := dm.QEmpresasEMP_CODIGO.value;
    dm.query1.open;
    QTiposTIP_CODIGO.value := dm.query1.fieldbyname('maximo').asinteger +1;
  end;
end;

procedure TfrmTipoMovActivos.FormCreate(Sender: TObject);
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
