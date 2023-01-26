unit RH01;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Db, ADODB, IBCustomDataSet,
  IBQuery, IBUpdateSQL, ComCtrls, QuerySearchDlgADO, ToolWin, ActnList;

type
  TfrmInstitucion = class(TForm)
    Panel2: TPanel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    QInstitucion: TADOQuery;
    dsInstitucion: TDataSource;
    Search: TQrySearchDlgADO;
    QInstitucionins_codigo: TIntegerField;
    QInstitucionins_nombre: TStringField;
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
    procedure QInstitucionAfterDelete(DataSet: TDataSet);
    procedure QInstitucionAfterPost(DataSet: TDataSet);
    procedure btFindClick(Sender: TObject);
    procedure btPostClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btInsertClick(Sender: TObject);
    procedure btpriorClick(Sender: TObject);
    procedure btnextClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dsInstitucionStateChange(Sender: TObject);
    procedure QInstitucionBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmInstitucion: TfrmInstitucion;

implementation

uses SIGMA01, SIGMA00;


{$R *.DFM}

procedure TfrmInstitucion.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmInstitucion.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmInstitucion.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then
     close;
end;

procedure TfrmInstitucion.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmInstitucion.QInstitucionAfterDelete(DataSet: TDataSet);
begin
  QInstitucion.UpdateBatch;
end;

procedure TfrmInstitucion.QInstitucionAfterPost(DataSet: TDataSet);
begin
  QInstitucion.UpdateBatch;
end;

procedure TfrmInstitucion.btFindClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select ins_nombre, ins_codigo');
  Search.Query.Add('from institucion_academica');
  if search.execute then
     QInstitucion.locate('ins_codigo',search.valuefield,[]);
end;

procedure TfrmInstitucion.btPostClick(Sender: TObject);
begin
  QInstitucion.post;
end;

procedure TfrmInstitucion.btCancelClick(Sender: TObject);
begin
  QInstitucion.cancel;
end;

procedure TfrmInstitucion.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QInstitucion.delete;
end;

procedure TfrmInstitucion.btEditClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QInstitucion.edit;
end;

procedure TfrmInstitucion.btInsertClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QInstitucion.insert;
end;

procedure TfrmInstitucion.btpriorClick(Sender: TObject);
begin
  if not QInstitucion.Bof then QInstitucion.prior;
end;

procedure TfrmInstitucion.btnextClick(Sender: TObject);
begin
  if not QInstitucion.eof then QInstitucion.next;
end;

procedure TfrmInstitucion.FormActivate(Sender: TObject);
begin
  if not QInstitucion.active then QInstitucion.open;
  frmMain.ExportXLS.Sheets[1].DataSet := QInstitucion;
  frmMain.ExportXLS.Sheets[0].Exported := False;
  frmMain.ExportXLS.Sheets[1].Exported := True;
end;

procedure TfrmInstitucion.dsInstitucionStateChange(Sender: TObject);
begin
  btInsert.enabled  := dsInstitucion.State = dsbrowse;
  btEdit.enabled    := btInsert.enabled;
  btDelete.enabled  := btInsert.enabled;
  btNext.enabled    := btInsert.enabled;
  btPrior.enabled   := btInsert.enabled;
  btPost.enabled    := not btInsert.enabled;
  btCancel.enabled  := not btInsert.enabled;
  btFind.enabled    := btInsert.enabled;
end;

procedure TfrmInstitucion.QInstitucionBeforePost(DataSet: TDataSet);
begin
  if trim(QInstitucionins_NOMBRE.value) = '' then
  begin
    showmessage('EL NOMBRE NO PUEDE ESTAR EN BLANCO');
    DBEdit2.setfocus;
    abort;
  end;
  if QInstitucion.State = dsInsert then
  begin
    dm.query1.close;
    dm.query1.sql.clear;
    dm.query1.sql.add('select isnull(max(ins_codigo),0) as maximo');
    dm.query1.sql.add('from institucion_academica');
    dm.query1.open;
    QInstitucionins_CODIGO.value := dm.query1.fieldbyname('maximo').asinteger +1;
  end;
end;

procedure TfrmInstitucion.FormCreate(Sender: TObject);
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
