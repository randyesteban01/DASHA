unit RH12;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Db, ADODB, IBCustomDataSet,
  IBQuery, IBUpdateSQL, ComCtrls, QuerySearchDlgADO, ToolWin, ActnList;

type
  TfrmIdiomas = class(TForm)
    Panel2: TPanel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    QIdiomas: TADOQuery;
    dsIdiomas: TDataSource;
    Search: TQrySearchDlgADO;
    QIdiomasidi_codigo: TIntegerField;
    QIdiomasidi_nombre: TStringField;
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
    procedure QIdiomasAfterDelete(DataSet: TDataSet);
    procedure QIdiomasAfterPost(DataSet: TDataSet);
    procedure btFindClick(Sender: TObject);
    procedure btPostClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btInsertClick(Sender: TObject);
    procedure btpriorClick(Sender: TObject);
    procedure btnextClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dsIdiomasStateChange(Sender: TObject);
    procedure QIdiomasBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmIdiomas: TfrmIdiomas;

implementation

uses SIGMA01, SIGMA00;


{$R *.DFM}

procedure TfrmIdiomas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmIdiomas.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmIdiomas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then
     close;
end;

procedure TfrmIdiomas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmIdiomas.QIdiomasAfterDelete(DataSet: TDataSet);
begin
  QIdiomas.UpdateBatch;
end;

procedure TfrmIdiomas.QIdiomasAfterPost(DataSet: TDataSet);
begin
  QIdiomas.UpdateBatch;
end;

procedure TfrmIdiomas.btFindClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select idi_nombre, idi_codigo');
  Search.Query.Add('from idiomas');
  if search.execute then
     QIdiomas.locate('idi_codigo',search.valuefield,[]);
end;

procedure TfrmIdiomas.btPostClick(Sender: TObject);
begin
  QIdiomas.post;
end;

procedure TfrmIdiomas.btCancelClick(Sender: TObject);
begin
  QIdiomas.cancel;
end;

procedure TfrmIdiomas.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QIdiomas.delete;
end;

procedure TfrmIdiomas.btEditClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QIdiomas.edit;
end;

procedure TfrmIdiomas.btInsertClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QIdiomas.insert;
end;

procedure TfrmIdiomas.btpriorClick(Sender: TObject);
begin
  if not QIdiomas.Bof then QIdiomas.prior;
end;

procedure TfrmIdiomas.btnextClick(Sender: TObject);
begin
  if not QIdiomas.eof then QIdiomas.next;
end;

procedure TfrmIdiomas.FormActivate(Sender: TObject);
begin
  if not QIdiomas.active then QIdiomas.open;
  frmMain.ExportXLS.Sheets[1].DataSet := QIdiomas;
  frmMain.ExportXLS.Sheets[0].Exported := False;
  frmMain.ExportXLS.Sheets[1].Exported := True;
end;

procedure TfrmIdiomas.dsIdiomasStateChange(Sender: TObject);
begin
  btInsert.enabled  := dsIdiomas.State = dsbrowse;
  btEdit.enabled    := btInsert.enabled;
  btDelete.enabled  := btInsert.enabled;
  btNext.enabled    := btInsert.enabled;
  btPrior.enabled   := btInsert.enabled;
  btPost.enabled    := not btInsert.enabled;
  btCancel.enabled  := not btInsert.enabled;
  btFind.enabled    := btInsert.enabled;
end;

procedure TfrmIdiomas.QIdiomasBeforePost(DataSet: TDataSet);
begin
  if trim(QIdiomasidi_NOMBRE.value) = '' then
  begin
    showmessage('EL NOMBRE NO PUEDE ESTAR EN BLANCO');
    DBEdit2.setfocus;
    abort;
  end;
  if QIdiomas.State = dsInsert then
  begin
    dm.query1.close;
    dm.query1.sql.clear;
    dm.query1.sql.add('select isnull(max(idi_codigo),0) as maximo');
    dm.query1.sql.add('from idiomas');
    dm.query1.open;
    QIdiomasidi_CODIGO.value := dm.query1.fieldbyname('maximo').asinteger +1;
  end;
end;

procedure TfrmIdiomas.FormCreate(Sender: TObject);
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
