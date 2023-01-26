unit PVENTA197;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Db, IBCustomDataSet,
  IBUpdateSQL, IBQuery, ADODB, QuerySearchDlgADO, ComCtrls, ToolWin,
  ActnList, Grids, DBGrids;

type
  TfrmGerentes = class(TForm)
    QGerentes: TADOQuery;
    Search: TQrySearchDlgADO;
    dsGerentes: TDataSource;
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
    QGerentesemp_codigo: TIntegerField;
    QGerentesger_codigo: TIntegerField;
    QGerentesger_nombre: TStringField;
    QGerentesger_telefono: TStringField;
    QGerentesger_celular: TStringField;
    QGerentesger_status: TStringField;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    QListadoemp_codigo: TIntegerField;
    QListadoger_codigo: TIntegerField;
    QListadoger_nombre: TStringField;
    QListadoger_telefono: TStringField;
    QListadoger_celular: TStringField;
    QListadoger_status: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure QGerentesNewRecord(DataSet: TDataSet);
    procedure QGerentesAfterPost(DataSet: TDataSet);
    procedure QGerentesAfterDelete(DataSet: TDataSet);
    procedure QGerentesBeforePost(DataSet: TDataSet);
    procedure btPostClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btInsertClick(Sender: TObject);
    procedure btFindClick(Sender: TObject);
    procedure btpriorClick(Sender: TObject);
    procedure btnextClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dsGerentesStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    accion : integer;
  end;

var
  frmGerentes: TfrmGerentes;

implementation

uses SIGMA01, SIGMA00;


{$R *.DFM}

procedure TfrmGerentes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmGerentes.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmGerentes.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then
     close;
end;

procedure TfrmGerentes.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmGerentes.QGerentesNewRecord(DataSet: TDataSet);
begin
  QGerentesEMP_CODIGO.value := dm.QParametrosPAR_INVEMPRESA.Value;
end;

procedure TfrmGerentes.QGerentesAfterPost(DataSet: TDataSet);
begin
  QGerentes.UpdateBatch;
  QListado.Close;
  QListado.Open;
end;

procedure TfrmGerentes.QGerentesAfterDelete(DataSet: TDataSet);
begin
  QGerentes.UpdateBatch;
  QListado.Close;
  QListado.Open;
end;

procedure TfrmGerentes.QGerentesBeforePost(DataSet: TDataSet);
begin
  if trim(QGerentesger_NOMBRE.value) = '' then
  begin
    showmessage('EL NOMBRE NO PUEDE ESTAR EN BLANCO');
    DBEdit2.setfocus;
    abort;
  end;
  if QGerentes.State = dsInsert then
  begin
    accion := 1;
    dm.query1.close;
    dm.query1.sql.clear;
    dm.query1.sql.add('select isnull(max(ger_codigo),0) as maximo');
    dm.query1.sql.add('from gerentes');
    dm.query1.sql.add('where emp_codigo = :emp');
    dm.query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
    dm.query1.open;
    QGerentesger_CODIGO.value := dm.query1.fieldbyname('maximo').asinteger +1;
  end
  else
    accion := 2;
end;

procedure TfrmGerentes.btPostClick(Sender: TObject);
begin
  QGerentes.post;
end;

procedure TfrmGerentes.btCancelClick(Sender: TObject);
begin
  QGerentes.cancel;
end;

procedure TfrmGerentes.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QGerentes.delete;
end;

procedure TfrmGerentes.btEditClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  DBEdit2.setfocus;
  QGerentes.edit;
end;

procedure TfrmGerentes.btInsertClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  DBEdit2.setfocus;
  QGerentes.insert;
end;

procedure TfrmGerentes.btFindClick(Sender: TObject);
begin
  Search.query.clear;
  Search.query.add('select ger_nombre, ger_codigo');
  Search.query.add('from gerentes');
  Search.query.add('where emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.value));
  if search.execute then
     QGerentes.locate('ger_codigo',search.valuefield,[]);
end;

procedure TfrmGerentes.btpriorClick(Sender: TObject);
begin
  if not QGerentes.bof then
    QGerentes.prior;
end;

procedure TfrmGerentes.btnextClick(Sender: TObject);
begin
  if not QGerentes.eof then
    QGerentes.next;
end;

procedure TfrmGerentes.FormActivate(Sender: TObject);
begin
  if not QGerentes.active then
  begin
    QGerentes.open;
    QListado.Open;
  end;
  frmMain.ExportXLS.FileName := 'Gerentes.xls';
  frmMain.ExportXLS.Sheets[2].DataSet := QGerentes;
  frmMain.ExportXLS.Sheets[0].Exported := False;
  frmMain.ExportXLS.Sheets[1].Exported := False;
  frmMain.ExportXLS.Sheets[2].Exported := True;
end;

procedure TfrmGerentes.dsGerentesStateChange(Sender: TObject);
begin
  btInsert.enabled  := dsGerentes.State = dsbrowse;
  btEdit.enabled    := btInsert.enabled;
  btDelete.enabled  := btInsert.enabled;
  btNext.enabled    := btInsert.enabled;
  btPrior.enabled   := btInsert.enabled;
  btPost.enabled    := not btInsert.enabled;
  btCancel.enabled  := not btInsert.enabled;
  btFind.enabled    := btInsert.enabled;
end;

procedure TfrmGerentes.FormCreate(Sender: TObject);
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

procedure TfrmGerentes.DBGrid1DblClick(Sender: TObject);
begin
  QGerentes.locate('ger_codigo',QListadoger_codigo.Value,[]);
  PageControl1.ActivePageIndex := 0;
end;

end.
