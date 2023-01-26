unit PVENTA188;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Db, IBCustomDataSet,
  IBUpdateSQL, IBQuery, ADODB, QuerySearchDlgADO, ComCtrls, ToolWin,
  ActnList, Grids, DBGrids;

type
  TfrmMotivoDevolucion = class(TForm)
    QMotivos: TADOQuery;
    Search: TQrySearchDlgADO;
    dsMotivos: TDataSource;
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
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label2: TLabel;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    DBEdit1: TDBEdit;
    DBGrid1: TDBGrid;
    QListado: TADOQuery;
    dsListado: TDataSource;
    QMotivosemp_codigo: TIntegerField;
    QMotivosmot_codigo: TIntegerField;
    QMotivosmot_nombre: TStringField;
    QListadoemp_codigo: TIntegerField;
    QListadomot_codigo: TIntegerField;
    QListadomot_nombre: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure QMotivosNewRecord(DataSet: TDataSet);
    procedure QMotivosAfterPost(DataSet: TDataSet);
    procedure QMotivosAfterDelete(DataSet: TDataSet);
    procedure QMotivosBeforePost(DataSet: TDataSet);
    procedure btPostClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btInsertClick(Sender: TObject);
    procedure btFindClick(Sender: TObject);
    procedure btpriorClick(Sender: TObject);
    procedure btnextClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dsMotivosStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    accion : integer;
  end;

var
  frmMotivoDevolucion: TfrmMotivoDevolucion;

implementation

uses SIGMA01, SIGMA00;


{$R *.DFM}

procedure TfrmMotivoDevolucion.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmMotivoDevolucion.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmMotivoDevolucion.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then
     close;
end;

procedure TfrmMotivoDevolucion.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmMotivoDevolucion.QMotivosNewRecord(DataSet: TDataSet);
begin
  QMotivosemp_codigo.value := dm.vp_cia;
end;

procedure TfrmMotivoDevolucion.QMotivosAfterPost(DataSet: TDataSet);
begin
  QMotivos.UpdateBatch;
  QListado.Close;
  QListado.Open;
end;

procedure TfrmMotivoDevolucion.QMotivosAfterDelete(DataSet: TDataSet);
begin
  QMotivos.UpdateBatch;
  QListado.Close;
  QListado.Open;
end;

procedure TfrmMotivoDevolucion.QMotivosBeforePost(DataSet: TDataSet);
begin
  if trim(QMotivosmot_nombre.value) = '' then
  begin
    showmessage('EL NOMBRE NO PUEDE ESTAR EN BLANCO');
    DBEdit2.setfocus;
    abort;
  end;
  if QMotivos.State = dsInsert then
  begin
    accion := 1;
    dm.query1.close;
    dm.query1.sql.clear;
    dm.query1.sql.add('select isnull(max(mot_codigo),0) as maximo');
    dm.query1.sql.add('from Motivo_Devolucion');
    dm.query1.sql.add('where emp_codigo = :emp');
    dm.query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.query1.open;
    QMotivosmot_codigo.value := dm.query1.fieldbyname('maximo').asinteger +1;
  end
  else
    accion := 2;
end;

procedure TfrmMotivoDevolucion.btPostClick(Sender: TObject);
begin
  QMotivos.post;
end;

procedure TfrmMotivoDevolucion.btCancelClick(Sender: TObject);
begin
  QMotivos.cancel;
end;

procedure TfrmMotivoDevolucion.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QMotivos.delete;
end;

procedure TfrmMotivoDevolucion.btEditClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  DBEdit2.setfocus;
  QMotivos.edit;
end;

procedure TfrmMotivoDevolucion.btInsertClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  DBEdit2.setfocus;
  QMotivos.insert;
end;

procedure TfrmMotivoDevolucion.btFindClick(Sender: TObject);
begin
  Search.query.clear;
  Search.query.add('select mot_nombre, mot_codigo');
  Search.query.add('from Motivo_Devolucion');
  Search.query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  if search.execute then
     QMotivos.locate('mot_codigo',search.valuefield,[]);
end;

procedure TfrmMotivoDevolucion.btpriorClick(Sender: TObject);
begin
  if not QMotivos.bof then
    QMotivos.prior;
end;

procedure TfrmMotivoDevolucion.btnextClick(Sender: TObject);
begin
  if not QMotivos.eof then
    QMotivos.next;
end;

procedure TfrmMotivoDevolucion.FormActivate(Sender: TObject);
begin
  if not QMotivos.active then
  begin
    QMotivos.open;
    QListado.Open;
  end;
  frmMain.ExportXLS.FileName := 'Motivos.xls';
  frmMain.ExportXLS.Sheets[1].DataSet := QMotivos;
  frmMain.ExportXLS.Sheets[0].Exported := False;
  frmMain.ExportXLS.Sheets[2].Exported := False;
  frmMain.ExportXLS.Sheets[1].Exported := True;
end;

procedure TfrmMotivoDevolucion.dsMotivosStateChange(Sender: TObject);
begin
  btInsert.enabled  := dsMotivos.State = dsbrowse;
  btEdit.enabled    := btInsert.enabled;
  btDelete.enabled  := btInsert.enabled;
  btNext.enabled    := btInsert.enabled;
  btPrior.enabled   := btInsert.enabled;
  btPost.enabled    := not btInsert.enabled;
  btCancel.enabled  := not btInsert.enabled;
  btFind.enabled    := btInsert.enabled;
end;

procedure TfrmMotivoDevolucion.FormCreate(Sender: TObject);
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

procedure TfrmMotivoDevolucion.DBGrid1DblClick(Sender: TObject);
begin
  QMotivos.locate('mot_codigo',QListadomot_codigo.Value,[]);
  PageControl1.ActivePageIndex := 0;
end;

end.
