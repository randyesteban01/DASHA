unit PVENTA179;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Db, IBCustomDataSet,
  IBUpdateSQL, IBQuery, ADODB, QuerySearchDlgADO, ComCtrls, ToolWin,
  ActnList, Grids, DBGrids;

type
  TfrmCourriers = class(TForm)
    QCourrier: TADOQuery;
    Search: TQrySearchDlgADO;
    dsCourrier: TDataSource;
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
    QCourrieremp_codigo: TIntegerField;
    QCourriercou_codigo: TIntegerField;
    QCourriercou_nombre: TStringField;
    QCourriercou_direccion_envio: TMemoField;
    QListadoemp_codigo: TIntegerField;
    QListadocou_codigo: TIntegerField;
    QListadocou_nombre: TStringField;
    QListadocou_direccion_envio: TMemoField;
    DBMemo1: TDBMemo;
    Label3: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure QCourrierNewRecord(DataSet: TDataSet);
    procedure QCourrierAfterPost(DataSet: TDataSet);
    procedure QCourrierAfterDelete(DataSet: TDataSet);
    procedure QCourrierBeforePost(DataSet: TDataSet);
    procedure btPostClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btInsertClick(Sender: TObject);
    procedure btFindClick(Sender: TObject);
    procedure btpriorClick(Sender: TObject);
    procedure btnextClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dsCourrierStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    accion : integer;
  end;

var
  frmCourriers: TfrmCourriers;

implementation

uses SIGMA01, SIGMA00;


{$R *.DFM}

procedure TfrmCourriers.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmCourriers.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmCourriers.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then
     close;
end;

procedure TfrmCourriers.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    if (activecontrol.ClassType <> TDBMemo) then
    begin
      perform(wm_nextdlgctl, 0, 0);
      key := #0;
    end;
  end;
end;

procedure TfrmCourriers.QCourrierNewRecord(DataSet: TDataSet);
begin
  QCourrierEMP_CODIGO.value := dm.vp_cia;
end;

procedure TfrmCourriers.QCourrierAfterPost(DataSet: TDataSet);
begin
  QCourrier.UpdateBatch;
  QListado.Close;
  QListado.Open;
end;

procedure TfrmCourriers.QCourrierAfterDelete(DataSet: TDataSet);
begin
  QCourrier.UpdateBatch;
  QListado.Close;
  QListado.Open;
end;

procedure TfrmCourriers.QCourrierBeforePost(DataSet: TDataSet);
begin
  if trim(QCourriercou_NOMBRE.value) = '' then
  begin
    showmessage('EL NOMBRE NO PUEDE ESTAR EN BLANCO');
    DBEdit2.setfocus;
    abort;
  end;
  if QCourrier.State = dsInsert then
  begin
    accion := 1;
    dm.query1.close;
    dm.query1.sql.clear;
    dm.query1.sql.add('select isnull(max(cou_codigo),0) as maximo');
    dm.query1.sql.add('from Courriers');
    dm.query1.sql.add('where emp_codigo = :emp');
    dm.query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.query1.open;
    QCourriercou_CODIGO.value := dm.query1.fieldbyname('maximo').asinteger +1;
  end
  else
    accion := 2;
end;

procedure TfrmCourriers.btPostClick(Sender: TObject);
begin
  QCourrier.post;
end;

procedure TfrmCourriers.btCancelClick(Sender: TObject);
begin
  QCourrier.cancel;
end;

procedure TfrmCourriers.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QCourrier.delete;
end;

procedure TfrmCourriers.btEditClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  DBEdit2.setfocus;
  QCourrier.edit;
end;

procedure TfrmCourriers.btInsertClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  DBEdit2.setfocus;
  QCourrier.insert;
end;

procedure TfrmCourriers.btFindClick(Sender: TObject);
begin
  Search.query.clear;
  Search.query.add('select cou_nombre, cou_codigo');
  Search.query.add('from Courriers');
  Search.query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  if search.execute then
     QCourrier.locate('cou_codigo',search.valuefield,[]);
end;

procedure TfrmCourriers.btpriorClick(Sender: TObject);
begin
  if not QCourrier.bof then
    QCourrier.prior;
end;

procedure TfrmCourriers.btnextClick(Sender: TObject);
begin
  if not QCourrier.eof then
    QCourrier.next;
end;

procedure TfrmCourriers.FormActivate(Sender: TObject);
begin
  if not QCourrier.active then
  begin
    QCourrier.open;
    QListado.Open;
  end;
  frmMain.ExportXLS.FileName := 'Courriers.xls';
  frmMain.ExportXLS.Sheets[1].DataSet := QCourrier;
  frmMain.ExportXLS.Sheets[0].Exported := False;
  frmMain.ExportXLS.Sheets[2].Exported := False;
  frmMain.ExportXLS.Sheets[1].Exported := True;
end;

procedure TfrmCourriers.dsCourrierStateChange(Sender: TObject);
begin
  btInsert.enabled  := dsCourrier.State = dsbrowse;
  btEdit.enabled    := btInsert.enabled;
  btDelete.enabled  := btInsert.enabled;
  btNext.enabled    := btInsert.enabled;
  btPrior.enabled   := btInsert.enabled;
  btPost.enabled    := not btInsert.enabled;
  btCancel.enabled  := not btInsert.enabled;
  btFind.enabled    := btInsert.enabled;
end;

procedure TfrmCourriers.FormCreate(Sender: TObject);
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

procedure TfrmCourriers.DBGrid1DblClick(Sender: TObject);
begin
  QCourrier.locate('cou_codigo',QListadocou_codigo.Value,[]);
  PageControl1.ActivePageIndex := 0;
end;

end.
