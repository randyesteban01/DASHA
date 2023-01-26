unit PVENTA07;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Db, IBCustomDataSet, IBQuery,
  IBUpdateSQL, ADODB, QuerySearchDlgADO, ComCtrls, ToolWin, ActnList;

type
  TfrmCondiciones = class(TForm)
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    QCondicion: TADOQuery;
    QCondicionEMP_CODIGO: TIntegerField;
    QCondicionCPA_CODIGO: TIntegerField;
    QCondicionCPA_NOMBRE: TIBStringField;
    QCondicionCPA_DIAS: TIntegerField;
    dsCondicion: TDataSource;
    Search: TQrySearchDlgADO;
    QCondicionCPA_CUOTASMAXIMO: TIntegerField;
    QCondicionCPA_CUOTASMINIMO: TIntegerField;
    QCondicionCPA_CUOTAS: TIBStringField;
    ckCuotas: TDBCheckBox;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    QCondicionCPA_INTERVALO: TIntegerField;
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
    QCondicioncpa_intereses: TStringField;
    DBCheckBox1: TDBCheckBox;
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
    procedure btpriorClick(Sender: TObject);
    procedure btnextClick(Sender: TObject);
    procedure QCondicionAfterDelete(DataSet: TDataSet);
    procedure QCondicionAfterPost(DataSet: TDataSet);
    procedure QCondicionNewRecord(DataSet: TDataSet);
    procedure QCondicionBeforePost(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure dsCondicionStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCondiciones: TfrmCondiciones;

implementation

uses SIGMA01, SIGMA00;


{$R *.DFM}

procedure TfrmCondiciones.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmCondiciones.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmCondiciones.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then
     close;
end;

procedure TfrmCondiciones.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmCondiciones.btPostClick(Sender: TObject);
begin
  QCondicion.post;
end;

procedure TfrmCondiciones.btCancelClick(Sender: TObject);
begin
  QCondicion.cancel;
end;

procedure TfrmCondiciones.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QCondicion.delete;
end;

procedure TfrmCondiciones.btEditClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QCondicion.edit;
end;

procedure TfrmCondiciones.btInsertClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QCondicion.insert;
end;

procedure TfrmCondiciones.btFindClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select cpa_nombre, cpa_codigo');
  Search.Query.Add('from condiciones');
  Search.Query.Add('where emp_codigo = '+inttostr(dm.vp_cia));
  if search.execute then
     QCondicion.locate('cpa_codigo',search.valuefield,[]);
end;

procedure TfrmCondiciones.btpriorClick(Sender: TObject);
begin
  if not QCondicion.Bof then QCondicion.prior;
end;

procedure TfrmCondiciones.btnextClick(Sender: TObject);
begin
  if not QCondicion.eof then QCondicion.next;
end;

procedure TfrmCondiciones.QCondicionAfterDelete(DataSet: TDataSet);
begin
  QCondicion.UpdateBatch;
end;

procedure TfrmCondiciones.QCondicionAfterPost(DataSet: TDataSet);
begin
  QCondicion.UpdateBatch;
end;

procedure TfrmCondiciones.QCondicionNewRecord(DataSet: TDataSet);
begin
  QCondicionEMP_CODIGO.value := dm.vp_cia;
  QCondicionCPA_CUOTAS.Value := 'False';
end;

procedure TfrmCondiciones.QCondicionBeforePost(DataSet: TDataSet);
begin
  if trim(QCondicionCPA_NOMBRE.value) = '' then
  begin
    showmessage('EL NOMBRE NO PUEDE ESTAR EN BLANCO');
    DBEdit2.setfocus;
    abort;
  end;
  if QCondicion.State = dsInsert then
  begin
    dm.query1.close;
    dm.query1.sql.clear;
    dm.query1.sql.add('select isnull(max(cpa_codigo),0) as maximo');
    dm.query1.sql.add('from condiciones');
    dm.query1.sql.add('where emp_codigo = :emp');
    dm.query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.query1.open;
    QCondicionCPA_CODIGO.value := dm.query1.fieldbyname('maximo').asinteger +1;
  end;
  if QCondicionCPA_CUOTAS.Value <> 'True' then
    QCondicionCPA_INTERVALO.Value := 0;
end;

procedure TfrmCondiciones.FormActivate(Sender: TObject);
begin
  if not QCondicion.active then QCondicion.open;
  frmMain.ExportXLS.Sheets[1].DataSet := QCondicion;
  frmMain.ExportXLS.Sheets[0].Exported := False;
  frmMain.ExportXLS.Sheets[1].Exported := True;
end;

procedure TfrmCondiciones.dsCondicionStateChange(Sender: TObject);
begin
  btInsert.enabled  := dsCondicion.State = dsbrowse;
  btEdit.enabled    := btInsert.enabled;
  btDelete.enabled  := btInsert.enabled;
  btNext.enabled    := btInsert.enabled;
  btPrior.enabled   := btInsert.enabled;
  btPost.enabled    := not btInsert.enabled;
  btCancel.enabled  := not btInsert.enabled;
  btFind.enabled    := btInsert.enabled;
end;

procedure TfrmCondiciones.FormCreate(Sender: TObject);
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
