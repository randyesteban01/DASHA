unit RH02;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Db, ADODB, IBCustomDataSet,
  IBQuery, IBUpdateSQL, ComCtrls, QuerySearchDlgADO, ToolWin, ActnList;

type
  TfrmTipoSeguros = class(TForm)
    Panel2: TPanel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    QTipo: TADOQuery;
    dsTipo: TDataSource;
    Search: TQrySearchDlgADO;
    QTipoemp_codigo: TIntegerField;
    QTipotse_codigo: TIntegerField;
    QTipotse_nombre: TStringField;
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
    Label3: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    QTipotde_codigo: TIntegerField;
    QTipoDesc: TADOQuery;
    QTipoDesctde_codigo: TIntegerField;
    QTipoDesctde_nombre: TStringField;
    dsTipoDesc: TDataSource;
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
  frmTipoSeguros: TfrmTipoSeguros;

implementation

uses SIGMA01, SIGMA00;


{$R *.DFM}

procedure TfrmTipoSeguros.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmTipoSeguros.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmTipoSeguros.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then
     close;
end;

procedure TfrmTipoSeguros.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmTipoSeguros.QTipoAfterDelete(DataSet: TDataSet);
begin
  QTipo.UpdateBatch;
end;

procedure TfrmTipoSeguros.QTipoAfterPost(DataSet: TDataSet);
begin
  QTipo.UpdateBatch;
end;

procedure TfrmTipoSeguros.QTipoNewRecord(DataSet: TDataSet);
begin
  QTipoEMP_CODIGO.value := dm.QEmpresasEMP_CODIGO.value;
end;

procedure TfrmTipoSeguros.btFindClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select tse_nombre, tse_codigo');
  Search.Query.Add('from tipo_seguros');
  Search.Query.Add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.Value));
  if search.execute then
     QTipo.locate('tse_codigo',search.valuefield,[]);
end;

procedure TfrmTipoSeguros.btPostClick(Sender: TObject);
begin
  QTipo.post;
end;

procedure TfrmTipoSeguros.btCancelClick(Sender: TObject);
begin
  QTipo.cancel;
end;

procedure TfrmTipoSeguros.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QTipo.delete;
end;

procedure TfrmTipoSeguros.btEditClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QTipo.edit;
end;

procedure TfrmTipoSeguros.btInsertClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QTipo.insert;
end;

procedure TfrmTipoSeguros.btpriorClick(Sender: TObject);
begin
  if not QTipo.Bof then QTipo.prior;
end;

procedure TfrmTipoSeguros.btnextClick(Sender: TObject);
begin
  if not QTipo.eof then QTipo.next;
end;

procedure TfrmTipoSeguros.FormActivate(Sender: TObject);
begin
  if not QTipo.active then
  begin
    QTipo.open;
    QTipoDesc.Open;
  end;
  frmMain.ExportXLS.Sheets[1].DataSet := QTipo;
  frmMain.ExportXLS.Sheets[0].Exported := False;
  frmMain.ExportXLS.Sheets[1].Exported := True;
end;

procedure TfrmTipoSeguros.dsTipoStateChange(Sender: TObject);
begin
  btInsert.enabled  := dstipo.State = dsbrowse;
  btEdit.enabled    := btInsert.enabled;
  btDelete.enabled  := btInsert.enabled;
  btNext.enabled    := btInsert.enabled;
  btPrior.enabled   := btInsert.enabled;
  btPost.enabled    := not btInsert.enabled;
  btCancel.enabled  := not btInsert.enabled;
  btFind.enabled    := btInsert.enabled;
end;

procedure TfrmTipoSeguros.QTipoBeforePost(DataSet: TDataSet);
begin
  if trim(QTipotse_NOMBRE.value) = '' then
  begin
    showmessage('EL NOMBRE NO PUEDE ESTAR EN BLANCO');
    DBEdit2.setfocus;
    abort;
  end;
  if QTipo.State = dsInsert then
  begin
    dm.query1.close;
    dm.query1.sql.clear;
    dm.query1.sql.add('select isnull(max(tse_codigo),0) as maximo');
    dm.query1.sql.add('from tipo_seguros');
    dm.query1.sql.add('where emp_codigo = :emp');
    dm.query1.Parameters.parambyname('emp').Value := dm.QEmpresasEMP_CODIGO.value;
    dm.query1.open;
    QTipotse_CODIGO.value := dm.query1.fieldbyname('maximo').asinteger +1;
  end;
end;

procedure TfrmTipoSeguros.FormCreate(Sender: TObject);
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
