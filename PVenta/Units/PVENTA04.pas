unit PVENTA04;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Db, IBCustomDataSet, IBQuery,
  IBUpdateSQL, ADODB, QuerySearchDlgADO, ComCtrls, ToolWin, ActnList;

type
  TfrmTipoClientes = class(TForm)
    Panel2: TPanel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    QTipo: TADOQuery;
    QTipoEMP_CODIGO: TIntegerField;
    QTipoTCL_CODIGO: TIntegerField;
    QTipoTCL_NOMBRE: TIBStringField;
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
    Label14: TLabel;
    DBComboBox1: TDBComboBox;
    QTipoTCL_PRECIO: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure QTipoAfterDelete(DataSet: TDataSet);
    procedure QTipoAfterPost(DataSet: TDataSet);
    procedure QTipoNewRecord(DataSet: TDataSet);
    procedure QTipoBeforePost(DataSet: TDataSet);
    procedure btPostClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btInsertClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btPriorClick(Sender: TObject);
    procedure btNextClick(Sender: TObject);
    procedure btFindClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dsTipoStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTipoClientes: TfrmTipoClientes;

implementation

uses SIGMA01, SIGMA00;


{$R *.DFM}

procedure TfrmTipoClientes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmTipoClientes.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmTipoClientes.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then
     close;
end;

procedure TfrmTipoClientes.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmTipoClientes.QTipoAfterDelete(DataSet: TDataSet);
begin
  QTipo.UpdateBatch;
end;

procedure TfrmTipoClientes.QTipoAfterPost(DataSet: TDataSet);
begin
  QTipo.UpdateBatch;
end;

procedure TfrmTipoClientes.QTipoNewRecord(DataSet: TDataSet);
begin
  QTipoEMP_CODIGO.value := dm.vp_cia;
  QTipoTCL_PRECIO.Value := 'Precio1';
end;

procedure TfrmTipoClientes.QTipoBeforePost(DataSet: TDataSet);
begin
  if trim(QTipoTCL_NOMBRE.value) = '' then
  begin
    showmessage('EL NOMBRE NO PUEDE ESTAR EN BLANCO');
    DBEdit2.setfocus;
    abort;
  end;
  if QTipo.State = dsInsert then
  begin
    dm.query1.close;
    dm.query1.sql.clear;
    dm.query1.sql.add('select isnull(max(tcl_codigo),0) as maximo');
    dm.query1.sql.add('from tipoclientes');
    dm.query1.sql.add('where emp_codigo = :emp');
    dm.query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.query1.open;
    QTipoTCL_CODIGO.value := dm.query1.fieldbyname('maximo').asinteger +1;
  end;
end;

procedure TfrmTipoClientes.btPostClick(Sender: TObject);
begin
  QTipo.post;
end;

procedure TfrmTipoClientes.btCancelClick(Sender: TObject);
begin
  QTipo.cancel;
end;

procedure TfrmTipoClientes.btInsertClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QTipo.insert;
end;

procedure TfrmTipoClientes.btEditClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QTipo.edit;
end;

procedure TfrmTipoClientes.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QTipo.delete;
end;

procedure TfrmTipoClientes.btPriorClick(Sender: TObject);
begin
  if not QTipo.bof then
    QTipo.prior;
end;

procedure TfrmTipoClientes.btNextClick(Sender: TObject);
begin
  if not QTipo.eof then
    QTipo.next;
end;

procedure TfrmTipoClientes.btFindClick(Sender: TObject);
begin
  Search.query.clear;
  Search.query.add('select tcl_nombre, tcl_codigo');
  Search.query.add('from tipoclientes');
  Search.query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  if search.execute then
     QTipo.locate('tcl_codigo',search.valuefield,[]);
end;

procedure TfrmTipoClientes.FormActivate(Sender: TObject);
begin
  if not QTipo.active then QTipo.open;
  frmMain.ExportXLS.Sheets[1].DataSet := QTipo;
  frmMain.ExportXLS.Sheets[0].Exported := False;
  frmMain.ExportXLS.Sheets[1].Exported := True;
end;

procedure TfrmTipoClientes.dsTipoStateChange(Sender: TObject);
begin
  btInsert.enabled  := dsTipo.State = dsbrowse;
  btEdit.enabled    := btInsert.enabled;
  btDelete.enabled  := btInsert.enabled;
  btNext.enabled    := btInsert.enabled;
  btPrior.enabled   := btInsert.enabled;
  btPost.enabled    := not btInsert.enabled;
  btCancel.enabled  := not btInsert.enabled;
  btFind.enabled    := btInsert.enabled;
  DBComboBox1.Enabled := not btInsert.enabled;
end;

procedure TfrmTipoClientes.FormCreate(Sender: TObject);
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
