unit RH00;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Db, IBCustomDataSet,
  IBUpdateSQL, IBQuery, ADODB, QuerySearchDlgADO, ComCtrls, ToolWin,
  ActnList, Grids, DBGrids;

type
  TfrmCategoriaEmp = class(TForm)
    QCategoria: TADOQuery;
    Search: TQrySearchDlgADO;
    dsCategoria: TDataSource;
    QCategoriaemp_codigo: TIntegerField;
    QCategoriacat_codigo: TIntegerField;
    QCategoriacat_nombre: TStringField;
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
    QListadocat_codigo: TIntegerField;
    QListadocat_nombre: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure QCategoriaNewRecord(DataSet: TDataSet);
    procedure QCategoriaAfterPost(DataSet: TDataSet);
    procedure QCategoriaAfterDelete(DataSet: TDataSet);
    procedure QCategoriaBeforePost(DataSet: TDataSet);
    procedure btPostClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btInsertClick(Sender: TObject);
    procedure btFindClick(Sender: TObject);
    procedure btpriorClick(Sender: TObject);
    procedure btnextClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dsCategoriaStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    accion : integer;
  end;

var
  frmCategoriaEmp: TfrmCategoriaEmp;

implementation

uses SIGMA01, SIGMA00;


{$R *.DFM}

procedure TfrmCategoriaEmp.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmCategoriaEmp.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmCategoriaEmp.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then
     close;
end;

procedure TfrmCategoriaEmp.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmCategoriaEmp.QCategoriaNewRecord(DataSet: TDataSet);
begin
  QCategoriaEMP_CODIGO.value := dm.QEmpresasEMP_CODIGO.Value;
end;

procedure TfrmCategoriaEmp.QCategoriaAfterPost(DataSet: TDataSet);
begin
  QCategoria.UpdateBatch;
  QListado.Close;
  QListado.Open;
end;

procedure TfrmCategoriaEmp.QCategoriaAfterDelete(DataSet: TDataSet);
begin
  QCategoria.UpdateBatch;
  QListado.Close;
  QListado.Open;
end;

procedure TfrmCategoriaEmp.QCategoriaBeforePost(DataSet: TDataSet);
begin
  if trim(QCategoriacat_NOMBRE.value) = '' then
  begin
    showmessage('EL NOMBRE NO PUEDE ESTAR EN BLANCO');
    DBEdit2.setfocus;
    abort;
  end;
  if QCategoria.State = dsInsert then
  begin
    accion := 1;
    dm.query1.close;
    dm.query1.sql.clear;
    dm.query1.sql.add('select isnull(max(cat_codigo),0) as maximo');
    dm.query1.sql.add('from Categoria_empleados');
    dm.query1.sql.add('where emp_codigo = :emp');
    dm.query1.Parameters.parambyname('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.query1.open;
    QCategoriacat_CODIGO.value := dm.query1.fieldbyname('maximo').asinteger +1;
  end
  else
    accion := 2;
end;

procedure TfrmCategoriaEmp.btPostClick(Sender: TObject);
begin
  QCategoria.post;
end;

procedure TfrmCategoriaEmp.btCancelClick(Sender: TObject);
begin
  QCategoria.cancel;
end;

procedure TfrmCategoriaEmp.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QCategoria.delete;
end;

procedure TfrmCategoriaEmp.btEditClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  DBEdit2.setfocus;
  QCategoria.edit;
end;

procedure TfrmCategoriaEmp.btInsertClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  DBEdit2.setfocus;
  QCategoria.insert;
end;

procedure TfrmCategoriaEmp.btFindClick(Sender: TObject);
begin
  Search.query.clear;
  Search.query.add('select cat_nombre, cat_codigo');
  Search.query.add('from categoria_empleados');
  Search.query.add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.value));
  if search.execute then
     QCategoria.locate('cat_codigo',search.valuefield,[]);
end;

procedure TfrmCategoriaEmp.btpriorClick(Sender: TObject);
begin
  if not QCategoria.bof then
    QCategoria.prior;
end;

procedure TfrmCategoriaEmp.btnextClick(Sender: TObject);
begin
  if not QCategoria.eof then
    QCategoria.next;
end;

procedure TfrmCategoriaEmp.FormActivate(Sender: TObject);
begin
  if not QCategoria.active then
  begin
    QCategoria.open;
    QListado.Open;
  end;
  frmMain.ExportXLS.FileName := 'Categorias.xls';
  frmMain.ExportXLS.Sheets[1].DataSet := QCategoria;
  frmMain.ExportXLS.Sheets[0].Exported := False;
  frmMain.ExportXLS.Sheets[2].Exported := False;
  frmMain.ExportXLS.Sheets[1].Exported := True;
end;

procedure TfrmCategoriaEmp.dsCategoriaStateChange(Sender: TObject);
begin
  btInsert.enabled  := dsCategoria.State = dsbrowse;
  btEdit.enabled    := btInsert.enabled;
  btDelete.enabled  := btInsert.enabled;
  btNext.enabled    := btInsert.enabled;
  btPrior.enabled   := btInsert.enabled;
  btPost.enabled    := not btInsert.enabled;
  btCancel.enabled  := not btInsert.enabled;
  btFind.enabled    := btInsert.enabled;
end;

procedure TfrmCategoriaEmp.FormCreate(Sender: TObject);
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

procedure TfrmCategoriaEmp.DBGrid1DblClick(Sender: TObject);
begin
  QCategoria.locate('cat_codigo',QListadocat_codigo.Value,[]);
  PageControl1.ActivePageIndex := 0;
end;

end.
