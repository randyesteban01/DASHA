unit RH03;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Db, ADODB, IBCustomDataSet,
  IBQuery, IBUpdateSQL, ComCtrls, QuerySearchDlgADO, ToolWin, ActnList,
  Grids, DBGrids;

type
  TfrmCategoriasLic = class(TForm)
    QCategorias: TADOQuery;
    dsCategorias: TDataSource;
    Search: TQrySearchDlgADO;
    QCategoriasemp_codigo: TIntegerField;
    QCategoriascat_codigo: TIntegerField;
    QCategoriascat_nombre: TStringField;
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
    QListadocat_codigo: TIntegerField;
    QListadocat_nombre: TStringField;
    dsListado: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure QCategoriasAfterDelete(DataSet: TDataSet);
    procedure QCategoriasAfterPost(DataSet: TDataSet);
    procedure QCategoriasNewRecord(DataSet: TDataSet);
    procedure btFindClick(Sender: TObject);
    procedure btPostClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btInsertClick(Sender: TObject);
    procedure btpriorClick(Sender: TObject);
    procedure btnextClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dsCategoriasStateChange(Sender: TObject);
    procedure QCategoriasBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCategoriasLic: TfrmCategoriasLic;

implementation

uses SIGMA01, SIGMA00;


{$R *.DFM}

procedure TfrmCategoriasLic.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmCategoriasLic.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmCategoriasLic.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then
     close;
end;

procedure TfrmCategoriasLic.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmCategoriasLic.QCategoriasAfterDelete(DataSet: TDataSet);
begin
  QCategorias.UpdateBatch;
  QListado.Close;
  QListado.Open;
end;

procedure TfrmCategoriasLic.QCategoriasAfterPost(DataSet: TDataSet);
begin
  QCategorias.UpdateBatch;
  QListado.Close;
  QListado.Open;
end;

procedure TfrmCategoriasLic.QCategoriasNewRecord(DataSet: TDataSet);
begin
  QCategoriasEMP_CODIGO.value := dm.QEmpresasEMP_CODIGO.value;
end;

procedure TfrmCategoriasLic.btFindClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select cat_nombre, cat_codigo');
  Search.Query.Add('from categorias_licencia');
  Search.Query.Add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.Value));
  if search.execute then
     QCategorias.locate('cat_codigo',search.valuefield,[]);
end;

procedure TfrmCategoriasLic.btPostClick(Sender: TObject);
begin
  QCategorias.post;
end;

procedure TfrmCategoriasLic.btCancelClick(Sender: TObject);
begin
  QCategorias.cancel;
end;

procedure TfrmCategoriasLic.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QCategorias.delete;
end;

procedure TfrmCategoriasLic.btEditClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  DBEdit2.setfocus;
  QCategorias.edit;
end;

procedure TfrmCategoriasLic.btInsertClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  DBEdit2.setfocus;
  QCategorias.insert;
end;

procedure TfrmCategoriasLic.btpriorClick(Sender: TObject);
begin
  if not QCategorias.Bof then QCategorias.prior;
end;

procedure TfrmCategoriasLic.btnextClick(Sender: TObject);
begin
  if not QCategorias.eof then QCategorias.next;
end;

procedure TfrmCategoriasLic.FormActivate(Sender: TObject);
begin
  if not QCategorias.active then
  begin
    QCategorias.open;
    QListado.Open;
  end;
  frmMain.ExportXLS.Sheets[1].DataSet := QCategorias;
  frmMain.ExportXLS.Sheets[0].Exported := False;
  frmMain.ExportXLS.Sheets[1].Exported := True;
end;

procedure TfrmCategoriasLic.dsCategoriasStateChange(Sender: TObject);
begin
  btInsert.enabled  := dsCategorias.State = dsbrowse;
  btEdit.enabled    := btInsert.enabled;
  btDelete.enabled  := btInsert.enabled;
  btNext.enabled    := btInsert.enabled;
  btPrior.enabled   := btInsert.enabled;
  btPost.enabled    := not btInsert.enabled;
  btCancel.enabled  := not btInsert.enabled;
  btFind.enabled    := btInsert.enabled;
end;

procedure TfrmCategoriasLic.QCategoriasBeforePost(DataSet: TDataSet);
begin
  if trim(QCategoriascat_NOMBRE.value) = '' then
  begin
    showmessage('EL NOMBRE NO PUEDE ESTAR EN BLANCO');
    DBEdit2.setfocus;
    abort;
  end;
  if QCategorias.State = dsInsert then
  begin
    dm.query1.close;
    dm.query1.sql.clear;
    dm.query1.sql.add('select isnull(max(cat_codigo),0) as maximo');
    dm.query1.sql.add('from categorias_licencia');
    dm.query1.sql.add('where emp_codigo = :emp');
    dm.query1.Parameters.parambyname('emp').Value := dm.QEmpresasEMP_CODIGO.value;
    dm.query1.open;
    QCategoriascat_CODIGO.value := dm.query1.fieldbyname('maximo').asinteger +1;
  end;
end;

procedure TfrmCategoriasLic.FormCreate(Sender: TObject);
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

procedure TfrmCategoriasLic.DBGrid1DblClick(Sender: TObject);
begin
  QCategorias.locate('cat_codigo',QListadocat_codigo.Value,[]);
  PageControl1.ActivePageIndex := 0;
end;

end.
