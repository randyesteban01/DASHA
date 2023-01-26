unit PVENTA149;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Db, ADODB, IBCustomDataSet,
  IBQuery, IBUpdateSQL, ComCtrls, QuerySearchDlgADO, ToolWin, ActnList;

type
  TfrmProvincias = class(TForm)
    Panel2: TPanel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    QProvincias: TADOQuery;
    dsProvincias: TDataSource;
    Search: TQrySearchDlgADO;
    QProvinciasEMP_CODIGO: TIntegerField;
    QProvinciasPRO_CODIGO: TIntegerField;
    QProvinciasPRO_NOMBRE: TStringField;
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
    procedure QProvinciasAfterDelete(DataSet: TDataSet);
    procedure QProvinciasAfterPost(DataSet: TDataSet);
    procedure QProvinciasNewRecord(DataSet: TDataSet);
    procedure btFindClick(Sender: TObject);
    procedure btPostClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btInsertClick(Sender: TObject);
    procedure btpriorClick(Sender: TObject);
    procedure btnextClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dsProvinciasStateChange(Sender: TObject);
    procedure QProvinciasBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProvincias: TfrmProvincias;

implementation

uses SIGMA01, SIGMA00;


{$R *.DFM}

procedure TfrmProvincias.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmProvincias.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmProvincias.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then
     close;
end;

procedure TfrmProvincias.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmProvincias.QProvinciasAfterDelete(DataSet: TDataSet);
begin
  QProvincias.UpdateBatch;
end;

procedure TfrmProvincias.QProvinciasAfterPost(DataSet: TDataSet);
begin
  QProvincias.UpdateBatch;
end;

procedure TfrmProvincias.QProvinciasNewRecord(DataSet: TDataSet);
begin
  QProvinciasEMP_CODIGO.value := dm.vp_cia;
end;

procedure TfrmProvincias.btFindClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select pro_nombre, pro_codigo');
  Search.Query.Add('from provincias');
  Search.Query.Add('where emp_codigo = '+inttostr(dm.vp_cia));
  if search.execute then
     QProvincias.locate('pro_codigo',search.valuefield,[]);
end;

procedure TfrmProvincias.btPostClick(Sender: TObject);
begin
  QProvincias.post;
end;

procedure TfrmProvincias.btCancelClick(Sender: TObject);
begin
  QProvincias.cancel;
end;

procedure TfrmProvincias.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QProvincias.delete;
end;

procedure TfrmProvincias.btEditClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QProvincias.edit;
end;

procedure TfrmProvincias.btInsertClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QProvincias.insert;
end;

procedure TfrmProvincias.btpriorClick(Sender: TObject);
begin
  if not QProvincias.Bof then QProvincias.prior;
end;

procedure TfrmProvincias.btnextClick(Sender: TObject);
begin
  if not QProvincias.eof then QProvincias.next;
end;

procedure TfrmProvincias.FormActivate(Sender: TObject);
begin
  if not QProvincias.active then QProvincias.open;
  frmMain.ExportXLS.Sheets[1].DataSet := QProvincias;
  frmMain.ExportXLS.Sheets[0].Exported := False;
  frmMain.ExportXLS.Sheets[1].Exported := True;
end;

procedure TfrmProvincias.dsProvinciasStateChange(Sender: TObject);
begin
  btInsert.enabled  := dsProvincias.State = dsbrowse;
  btEdit.enabled    := btInsert.enabled;
  btDelete.enabled  := btInsert.enabled;
  btNext.enabled    := btInsert.enabled;
  btPrior.enabled   := btInsert.enabled;
  btPost.enabled    := not btInsert.enabled;
  btCancel.enabled  := not btInsert.enabled;
  btFind.enabled    := btInsert.enabled;
end;

procedure TfrmProvincias.QProvinciasBeforePost(DataSet: TDataSet);
begin
  if trim(QProvinciasPRO_NOMBRE.value) = '' then
  begin
    showmessage('EL NOMBRE NO PUEDE ESTAR EN BLANCO');
    DBEdit2.setfocus;
    abort;
  end;
  if QProvincias.State = dsInsert then
  begin
    dm.query1.close;
    dm.query1.sql.clear;
    dm.query1.sql.add('select isnull(max(pro_codigo),0) as maximo');
    dm.query1.sql.add('from provincias');
    dm.query1.sql.add('where emp_codigo = :emp');
    dm.query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.query1.open;
    QProvinciasPRO_CODIGO.value := dm.query1.fieldbyname('maximo').asinteger +1;
  end;
end;

procedure TfrmProvincias.FormCreate(Sender: TObject);
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
