unit PVENTA35;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Db, IBCustomDataSet, IBQuery,
  IBUpdateSQL, ADODB, QuerySearchDlgADO, ComCtrls, ToolWin, ActnList;

type
  TfrmCargos = class(TForm)
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    QCargos: TADOQuery;
    dsCargos: TDataSource;
    Search: TQrySearchDlgADO;
    QCargosEMP_CODIGO: TIntegerField;
    QCargosCAR_CODIGO: TIntegerField;
    QCargosCAR_NOMBRE: TIBStringField;
    QCargosCAR_MONTO: TFloatField;
    QCargosCAR_FIJO: TIBStringField;
    DBCheckBox1: TDBCheckBox;
    QCargoscar_porciento: TBCDField;
    Label4: TLabel;
    DBEdit4: TDBEdit;
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
    Label1: TLabel;
    DBEdit1: TDBEdit;
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
    procedure QCargosNewRecord(DataSet: TDataSet);
    procedure QCargosAfterDelete(DataSet: TDataSet);
    procedure QCargosAfterPost(DataSet: TDataSet);
    procedure QCargosBeforePost(DataSet: TDataSet);
    procedure btPostClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btInsertClick(Sender: TObject);
    procedure btPriorClick(Sender: TObject);
    procedure btNextClick(Sender: TObject);
    procedure btFindClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dsCargosStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCargos: TfrmCargos;

implementation

uses SIGMA01, SIGMA00;


{$R *.DFM}

procedure TfrmCargos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmCargos.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmCargos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then
     close;
end;

procedure TfrmCargos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmCargos.QCargosNewRecord(DataSet: TDataSet);
begin
  QCargosEMP_CODIGO.value := dm.vp_cia;
  QCargosCAR_FIJO.value := 'False';
end;

procedure TfrmCargos.QCargosAfterDelete(DataSet: TDataSet);
begin
  QCargos.UpdateBatch;
end;

procedure TfrmCargos.QCargosAfterPost(DataSet: TDataSet);
begin
  QCargos.UpdateBatch;
end;

procedure TfrmCargos.QCargosBeforePost(DataSet: TDataSet);
begin
  if trim(QCargosCAR_NOMBRE.value) = '' then
  begin
    showmessage('EL NOMBRE NO PUEDE ESTAR EN BLANCO');
    DBEdit2.setfocus;
    abort;
  end;
  if QCargos.State = dsInsert then
  begin
    dm.query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select isnull(max(car_codigo),0) as maximo ');
    dm.Query1.sql.add('from cargos ');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.query1.open;
    QCargosCAR_CODIGO.value := dm.query1.fieldbyname('maximo').asinteger +1;
  end;
end;

procedure TfrmCargos.btPostClick(Sender: TObject);
begin
  QCargos.post;
end;

procedure TfrmCargos.btCancelClick(Sender: TObject);
begin
  QCargos.cancel;
end;

procedure TfrmCargos.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QCargos.delete;
end;

procedure TfrmCargos.btEditClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QCargos.edit;
end;

procedure TfrmCargos.btInsertClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QCargos.insert;
end;

procedure TfrmCargos.btPriorClick(Sender: TObject);
begin
  if not QCargos.bof then
    QCargos.prior;
end;

procedure TfrmCargos.btNextClick(Sender: TObject);
begin
  if not QCargos.eof then
    QCargos.next;
end;

procedure TfrmCargos.btFindClick(Sender: TObject);
begin
  Search.query.clear;
  Search.query.add('select car_nombre, car_codigo');
  Search.query.add('from cargos');
  Search.query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  if search.execute then
     QCargos.locate('car_codigo',search.valuefield,[]);
end;

procedure TfrmCargos.FormActivate(Sender: TObject);
begin
  if not QCargos.active then QCargos.open;
  frmMain.ExportXLS.Sheets[1].DataSet := QCargos;
  frmMain.ExportXLS.Sheets[0].Exported := False;
  frmMain.ExportXLS.Sheets[1].Exported := True;
end;

procedure TfrmCargos.dsCargosStateChange(Sender: TObject);
begin
  btInsert.enabled  := dsCargos.State = dsbrowse;
  btEdit.enabled    := btInsert.enabled;
  btDelete.enabled  := btInsert.enabled;
  btNext.enabled    := btInsert.enabled;
  btPrior.enabled   := btInsert.enabled;
  btPost.enabled    := not btInsert.enabled;
  btCancel.enabled  := not btInsert.enabled;
  btFind.enabled    := btInsert.enabled;
end;

procedure TfrmCargos.FormCreate(Sender: TObject);
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
