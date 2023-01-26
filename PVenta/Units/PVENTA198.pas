unit PVENTA198;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Db, IBCustomDataSet,
  IBUpdateSQL, IBQuery, ADODB, QuerySearchDlgADO, ComCtrls, ToolWin,
  ActnList, Grids, DBGrids;

type
  TfrmGondoleros = class(TForm)
    QGondoleros: TADOQuery;
    Search: TQrySearchDlgADO;
    dsGondoleros: TDataSource;
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
    QGondolerosemp_codigo: TIntegerField;
    QGondolerosgon_codigo: TIntegerField;
    QGondolerosgon_nombre: TStringField;
    QListadoemp_codigo: TIntegerField;
    QListadogon_codigo: TIntegerField;
    QListadogon_nombre: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure QGondolerosNewRecord(DataSet: TDataSet);
    procedure QGondolerosAfterPost(DataSet: TDataSet);
    procedure QGondolerosAfterDelete(DataSet: TDataSet);
    procedure QGondolerosBeforePost(DataSet: TDataSet);
    procedure btPostClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btInsertClick(Sender: TObject);
    procedure btFindClick(Sender: TObject);
    procedure btpriorClick(Sender: TObject);
    procedure btnextClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dsGondolerosStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    accion : integer;
  end;

var
  frmGondoleros: TfrmGondoleros;

implementation

uses SIGMA01, SIGMA00;


{$R *.DFM}

procedure TfrmGondoleros.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmGondoleros.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmGondoleros.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then
     close;
end;

procedure TfrmGondoleros.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmGondoleros.QGondolerosNewRecord(DataSet: TDataSet);
begin
  QGondolerosEMP_CODIGO.value := dm.QParametrosPAR_INVEMPRESA.Value;
end;

procedure TfrmGondoleros.QGondolerosAfterPost(DataSet: TDataSet);
begin
  QGondoleros.UpdateBatch;
  QListado.Close;
  QListado.Open;
end;

procedure TfrmGondoleros.QGondolerosAfterDelete(DataSet: TDataSet);
begin
  QGondoleros.UpdateBatch;
  QListado.Close;
  QListado.Open;
end;

procedure TfrmGondoleros.QGondolerosBeforePost(DataSet: TDataSet);
begin
  if trim(QGondolerosgon_NOMBRE.value) = '' then
  begin
    showmessage('EL NOMBRE NO PUEDE ESTAR EN BLANCO');
    DBEdit2.setfocus;
    abort;
  end;
  if QGondoleros.State = dsInsert then
  begin
    accion := 1;
    dm.query1.close;
    dm.query1.sql.clear;
    dm.query1.sql.add('select isnull(max(gon_codigo),0) as maximo');
    dm.query1.sql.add('from gondoleros');
    dm.query1.sql.add('where emp_codigo = :emp');
    dm.query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
    dm.query1.open;
    QGondolerosgon_CODIGO.value := dm.query1.fieldbyname('maximo').asinteger +1;
  end
  else
    accion := 2;
end;

procedure TfrmGondoleros.btPostClick(Sender: TObject);
begin
  QGondoleros.post;
end;

procedure TfrmGondoleros.btCancelClick(Sender: TObject);
begin
  QGondoleros.cancel;
end;

procedure TfrmGondoleros.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QGondoleros.delete;
end;

procedure TfrmGondoleros.btEditClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  DBEdit2.setfocus;
  QGondoleros.edit;
end;

procedure TfrmGondoleros.btInsertClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  DBEdit2.setfocus;
  QGondoleros.insert;
end;

procedure TfrmGondoleros.btFindClick(Sender: TObject);
begin
  Search.query.clear;
  Search.query.add('select gon_nombre, gon_codigo');
  Search.query.add('from gondoleros');
  Search.query.add('where emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.value));
  if search.execute then
     QGondoleros.locate('gon_codigo',search.valuefield,[]);
end;

procedure TfrmGondoleros.btpriorClick(Sender: TObject);
begin
  if not QGondoleros.bof then
    QGondoleros.prior;
end;

procedure TfrmGondoleros.btnextClick(Sender: TObject);
begin
  if not QGondoleros.eof then
    QGondoleros.next;
end;

procedure TfrmGondoleros.FormActivate(Sender: TObject);
begin
  if not QGondoleros.active then
  begin
    QGondoleros.open;
    QListado.Open;
  end;
  frmMain.ExportXLS.FileName := 'gondoleros.xls';
  frmMain.ExportXLS.Sheets[1].DataSet := QGondoleros;
  frmMain.ExportXLS.Sheets[0].Exported := False;
  frmMain.ExportXLS.Sheets[2].Exported := False;
  frmMain.ExportXLS.Sheets[1].Exported := True;
end;

procedure TfrmGondoleros.dsGondolerosStateChange(Sender: TObject);
begin
  btInsert.enabled  := dsGondoleros.State = dsbrowse;
  btEdit.enabled    := btInsert.enabled;
  btDelete.enabled  := btInsert.enabled;
  btNext.enabled    := btInsert.enabled;
  btPrior.enabled   := btInsert.enabled;
  btPost.enabled    := not btInsert.enabled;
  btCancel.enabled  := not btInsert.enabled;
  btFind.enabled    := btInsert.enabled;
end;

procedure TfrmGondoleros.FormCreate(Sender: TObject);
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

procedure TfrmGondoleros.DBGrid1DblClick(Sender: TObject);
begin
  QGondoleros.locate('gon_codigo',QListadogon_codigo.Value,[]);
  PageControl1.ActivePageIndex := 0;
end;

end.
