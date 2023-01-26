unit CONT58;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Db, ADODB, IBCustomDataSet,
  IBQuery, IBUpdateSQL, ComCtrls, QuerySearchDlgADO, ToolWin, ActnList;

type
  TfrmMarcaActivos = class(TForm)
    Panel2: TPanel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    QMarcas: TADOQuery;
    dsMarcas: TDataSource;
    Search: TQrySearchDlgADO;
    QMarcasEMP_CODIGO: TIntegerField;
    QMarcasMAR_CODIGO: TIntegerField;
    QMarcasMAR_NOMBRE: TStringField;
    QMarcasUSU_CODIGO: TIntegerField;
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
    procedure QMarcasAfterDelete(DataSet: TDataSet);
    procedure QMarcasAfterPost(DataSet: TDataSet);
    procedure QMarcasNewRecord(DataSet: TDataSet);
    procedure btFindClick(Sender: TObject);
    procedure btPostClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btInsertClick(Sender: TObject);
    procedure btpriorClick(Sender: TObject);
    procedure btnextClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dsMarcasStateChange(Sender: TObject);
    procedure QMarcasBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMarcaActivos: TfrmMarcaActivos;

implementation

uses SIGMA01, SIGMA00;


{$R *.DFM}

procedure TfrmMarcaActivos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmMarcaActivos.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmMarcaActivos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then
     close;
end;

procedure TfrmMarcaActivos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmMarcaActivos.QMarcasAfterDelete(DataSet: TDataSet);
begin
  QMarcas.UpdateBatch;
end;

procedure TfrmMarcaActivos.QMarcasAfterPost(DataSet: TDataSet);
begin
  QMarcas.UpdateBatch;
end;

procedure TfrmMarcaActivos.QMarcasNewRecord(DataSet: TDataSet);
begin
  QMarcasEMP_CODIGO.value := dm.QEmpresasEMP_CODIGO.value;
  QMarcasUSU_CODIGO.Value := dm.Usuario;
end;

procedure TfrmMarcaActivos.btFindClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select mar_nombre, mar_codigo');
  Search.Query.Add('from marcas_activo');
  Search.Query.Add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.Value));
  if search.execute then
     QMarcas.locate('mar_codigo',search.valuefield,[]);
end;

procedure TfrmMarcaActivos.btPostClick(Sender: TObject);
begin
  QMarcas.post;
end;

procedure TfrmMarcaActivos.btCancelClick(Sender: TObject);
begin
  QMarcas.cancel;
end;

procedure TfrmMarcaActivos.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QMarcas.delete;
end;

procedure TfrmMarcaActivos.btEditClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QMarcas.edit;
end;

procedure TfrmMarcaActivos.btInsertClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QMarcas.insert;
end;

procedure TfrmMarcaActivos.btpriorClick(Sender: TObject);
begin
  if not QMarcas.Bof then QMarcas.prior;
end;

procedure TfrmMarcaActivos.btnextClick(Sender: TObject);
begin
  if not QMarcas.eof then QMarcas.next;
end;

procedure TfrmMarcaActivos.FormActivate(Sender: TObject);
begin
  if not QMarcas.active then QMarcas.open;
  frmMain.ExportXLS.Sheets[1].DataSet := QMarcas;
  frmMain.ExportXLS.Sheets[0].Exported := False;
  frmMain.ExportXLS.Sheets[1].Exported := True;
end;

procedure TfrmMarcaActivos.dsMarcasStateChange(Sender: TObject);
begin
  btInsert.enabled  := dsMarcas.State = dsbrowse;
  btEdit.enabled    := btInsert.enabled;
  btDelete.enabled  := btInsert.enabled;
  btNext.enabled    := btInsert.enabled;
  btPrior.enabled   := btInsert.enabled;
  btPost.enabled    := not btInsert.enabled;
  btCancel.enabled  := not btInsert.enabled;
  btFind.enabled    := btInsert.enabled;
end;

procedure TfrmMarcaActivos.QMarcasBeforePost(DataSet: TDataSet);
begin
  if trim(QMarcasMAR_NOMBRE.value) = '' then
  begin
    showmessage('EL NOMBRE NO PUEDE ESTAR EN BLANCO');
    DBEdit2.setfocus;
    abort;
  end;
  if QMarcas.State = dsInsert then
  begin
    dm.query1.close;
    dm.query1.sql.clear;
    dm.query1.sql.add('select isnull(max(mar_codigo),0) as maximo');
    dm.query1.sql.add('from marcas_activo');
    dm.query1.sql.add('where emp_codigo = :emp');
    dm.query1.Parameters.parambyname('emp').Value := dm.QEmpresasEMP_CODIGO.value;
    dm.query1.open;
    QMarcasMAR_CODIGO.value := dm.query1.fieldbyname('maximo').asinteger +1;
  end;
end;

procedure TfrmMarcaActivos.FormCreate(Sender: TObject);
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
