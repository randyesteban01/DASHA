unit RH10;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Db, ADODB, IBCustomDataSet,
  IBQuery, IBUpdateSQL, ComCtrls, QuerySearchDlgADO, ToolWin, ActnList;

type
  TfrmPaises = class(TForm)
    Panel2: TPanel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    QPaises: TADOQuery;
    dsPaises: TDataSource;
    Search: TQrySearchDlgADO;
    QPaisespai_codigo: TIntegerField;
    QPaisespai_nombre: TStringField;
    QPaisespai_nacionalidad: TStringField;
    Label3: TLabel;
    DBEdit3: TDBEdit;
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
    procedure QPaisesAfterDelete(DataSet: TDataSet);
    procedure QPaisesAfterPost(DataSet: TDataSet);
    procedure btFindClick(Sender: TObject);
    procedure btPostClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btInsertClick(Sender: TObject);
    procedure btpriorClick(Sender: TObject);
    procedure btnextClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dsPaisesStateChange(Sender: TObject);
    procedure QPaisesBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPaises: TfrmPaises;

implementation

uses SIGMA01, SIGMA00;


{$R *.DFM}

procedure TfrmPaises.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmPaises.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmPaises.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then
     close;
end;

procedure TfrmPaises.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmPaises.QPaisesAfterDelete(DataSet: TDataSet);
begin
  QPaises.UpdateBatch;
end;

procedure TfrmPaises.QPaisesAfterPost(DataSet: TDataSet);
begin
  QPaises.UpdateBatch;
end;

procedure TfrmPaises.btFindClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select pai_nombre, pai_codigo');
  Search.Query.Add('from paises');
  if search.execute then
     QPaises.locate('pai_codigo',search.valuefield,[]);
end;

procedure TfrmPaises.btPostClick(Sender: TObject);
begin
  QPaises.post;
end;

procedure TfrmPaises.btCancelClick(Sender: TObject);
begin
  QPaises.cancel;
end;

procedure TfrmPaises.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QPaises.delete;
end;

procedure TfrmPaises.btEditClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QPaises.edit;
end;

procedure TfrmPaises.btInsertClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QPaises.insert;
end;

procedure TfrmPaises.btpriorClick(Sender: TObject);
begin
  if not QPaises.Bof then QPaises.prior;
end;

procedure TfrmPaises.btnextClick(Sender: TObject);
begin
  if not QPaises.eof then QPaises.next;
end;

procedure TfrmPaises.FormActivate(Sender: TObject);
begin
  if not QPaises.active then QPaises.open;
  frmMain.ExportXLS.Sheets[1].DataSet := QPaises;
  frmMain.ExportXLS.Sheets[0].Exported := False;
  frmMain.ExportXLS.Sheets[1].Exported := True;
end;

procedure TfrmPaises.dsPaisesStateChange(Sender: TObject);
begin
  btInsert.enabled  := dsPaises.State = dsbrowse;
  btEdit.enabled    := btInsert.enabled;
  btDelete.enabled  := btInsert.enabled;
  btNext.enabled    := btInsert.enabled;
  btPrior.enabled   := btInsert.enabled;
  btPost.enabled    := not btInsert.enabled;
  btCancel.enabled  := not btInsert.enabled;
  btFind.enabled    := btInsert.enabled;
end;

procedure TfrmPaises.QPaisesBeforePost(DataSet: TDataSet);
begin
  if trim(QPaisespai_NOMBRE.value) = '' then
  begin
    showmessage('EL NOMBRE NO PUEDE ESTAR EN BLANCO');
    DBEdit2.setfocus;
    abort;
  end;
  if QPaises.State = dsInsert then
  begin
    dm.query1.close;
    dm.query1.sql.clear;
    dm.query1.sql.add('select isnull(max(pai_codigo),0) as maximo');
    dm.query1.sql.add('from paises');
    dm.query1.open;
    QPaisespai_CODIGO.value := dm.query1.fieldbyname('maximo').asinteger +1;
  end;
end;

procedure TfrmPaises.FormCreate(Sender: TObject);
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
