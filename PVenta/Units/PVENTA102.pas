unit PVENTA102;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Db, IBCustomDataSet,
  IBUpdateSQL, IBQuery, ADODB, QuerySearchDlgADO, ComCtrls, ToolWin,
  ActnList;

type
  TfrmMarcas = class(TForm)
    Panel2: TPanel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    QMarcas: TADOQuery;
    Search: TQrySearchDlgADO;
    dsMarcas: TDataSource;
    QMarcasMAR_CODIGO: TIntegerField;
    QMarcasMAR_NOMBRE: TIBStringField;
    QMarcasEMP_CODIGO: TIntegerField;
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
    procedure btPostClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btInsertClick(Sender: TObject);
    procedure btFindClick(Sender: TObject);
    procedure dsMarcasStateChange(Sender: TObject);
    procedure QMarcasAfterDelete(DataSet: TDataSet);
    procedure QMarcasAfterPost(DataSet: TDataSet);
    procedure QMarcasBeforePost(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure btpriorClick(Sender: TObject);
    procedure btnextClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure QMarcasNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMarcas: TfrmMarcas;

implementation

uses SIGMA01, SIGMA00;


{$R *.DFM}

procedure TfrmMarcas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmMarcas.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmMarcas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then
     close;
end;

procedure TfrmMarcas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmMarcas.btPostClick(Sender: TObject);
begin
  QMarcas.post;
end;

procedure TfrmMarcas.btCancelClick(Sender: TObject);
begin
  QMarcas.cancel;
end;

procedure TfrmMarcas.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QMarcas.delete;
end;

procedure TfrmMarcas.btEditClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QMarcas.edit;
end;

procedure TfrmMarcas.btInsertClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QMarcas.insert;
end;

procedure TfrmMarcas.btFindClick(Sender: TObject);
begin
  Search.Title := 'Marcas';
  Search.ResultField := 'mar_codigo';
  Search.query.clear;
  Search.query.add('select mar_nombre, mar_codigo');
  Search.query.add('from marcas');
  Search.query.add('where emp_codigo = '+IntToStr(dm.QParametrosPAR_INVEMPRESA.Value));
  if search.execute then
     QMarcas.locate('mar_codigo',search.valuefield,[]);
end;

procedure TfrmMarcas.dsMarcasStateChange(Sender: TObject);
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

procedure TfrmMarcas.QMarcasAfterDelete(DataSet: TDataSet);
begin
  QMarcas.UpdateBatch;
end;

procedure TfrmMarcas.QMarcasAfterPost(DataSet: TDataSet);
begin
  QMarcas.UpdateBatch;
end;

procedure TfrmMarcas.QMarcasBeforePost(DataSet: TDataSet);
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
    dm.query1.sql.add('from marcas');
    dm.query1.sql.add('where emp_codigo = :emp');
    dm.query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
    dm.query1.open;
    QMarcasMAR_CODIGO.value := dm.query1.fieldbyname('maximo').asinteger +1;
  end;
end;

procedure TfrmMarcas.FormActivate(Sender: TObject);
begin
  if not QMarcas.active then
  begin
    QMarcas.open;
  end;
  frmMain.ExportXLS.Sheets[1].DataSet := QMarcas;
  frmMain.ExportXLS.Sheets[0].Exported := False;
  frmMain.ExportXLS.Sheets[1].Exported := true;
end;

procedure TfrmMarcas.btpriorClick(Sender: TObject);
begin
  if not QMarcas.bof then
    QMarcas.prior;
end;

procedure TfrmMarcas.btnextClick(Sender: TObject);
begin
  if not QMarcas.eof then
    QMarcas.next;
end;

procedure TfrmMarcas.FormCreate(Sender: TObject);
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

procedure TfrmMarcas.QMarcasNewRecord(DataSet: TDataSet);
begin
  QMarcasEMP_CODIGO.Value := dm.QParametrosPAR_INVEMPRESA.Value;
end;

end.
