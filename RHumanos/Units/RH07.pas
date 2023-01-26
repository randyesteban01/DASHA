unit RH07;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Db, ADODB, IBCustomDataSet,
  IBQuery, IBUpdateSQL, ComCtrls, QuerySearchDlgADO, ActnList, ToolWin,
  Grids, DBGrids;

type
  TfrmDiasFeriados = class(TForm)
    QDias: TADOQuery;
    dsDias: TDataSource;
    Search: TQrySearchDlgADO;
    QDiasdia_secuencia: TIntegerField;
    QDiasdia_fecha: TDateTimeField;
    QDiasdia_descripcion: TStringField;
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
    Label3: TLabel;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit1: TDBEdit;
    DBGrid1: TDBGrid;
    QListado: TADOQuery;
    dsListado: TDataSource;
    QListadodia_secuencia: TIntegerField;
    QListadodia_fecha: TDateTimeField;
    QListadodia_descripcion: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure QDiasAfterDelete(DataSet: TDataSet);
    procedure QDiasAfterPost(DataSet: TDataSet);
    procedure btFindClick(Sender: TObject);
    procedure btPostClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btInsertClick(Sender: TObject);
    procedure btpriorClick(Sender: TObject);
    procedure btnextClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dsDiasStateChange(Sender: TObject);
    procedure QDiasBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDiasFeriados: TfrmDiasFeriados;

implementation

uses SIGMA01, SIGMA00;


{$R *.DFM}

procedure TfrmDiasFeriados.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmDiasFeriados.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmDiasFeriados.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then
     close;
end;

procedure TfrmDiasFeriados.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmDiasFeriados.QDiasAfterDelete(DataSet: TDataSet);
begin
  QDias.UpdateBatch;
  QListado.Close;
  QListado.Open;
end;

procedure TfrmDiasFeriados.QDiasAfterPost(DataSet: TDataSet);
begin
  QDias.UpdateBatch;
  QListado.Close;
  QListado.Open;
end;

procedure TfrmDiasFeriados.btFindClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select dia_descripcion, dia_secuencia');
  Search.Query.Add('from dias_feriados');
  if search.execute then
     QDias.locate('dia_secuencia',search.valuefield,[]);
end;

procedure TfrmDiasFeriados.btPostClick(Sender: TObject);
begin
  QDias.post;
end;

procedure TfrmDiasFeriados.btCancelClick(Sender: TObject);
begin
  QDias.cancel;
end;

procedure TfrmDiasFeriados.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QDias.delete;
end;

procedure TfrmDiasFeriados.btEditClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  DBEdit2.setfocus;
  QDias.edit;
end;

procedure TfrmDiasFeriados.btInsertClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  DBEdit2.setfocus;
  QDias.insert;
end;

procedure TfrmDiasFeriados.btpriorClick(Sender: TObject);
begin
  if not QDias.Bof then QDias.prior;
end;

procedure TfrmDiasFeriados.btnextClick(Sender: TObject);
begin
  if not QDias.eof then QDias.next;
end;

procedure TfrmDiasFeriados.FormActivate(Sender: TObject);
begin
  if not QDias.active then
  begin
    QDias.open;
    QListado.Open;
  end;
  frmMain.ExportXLS.Sheets[1].DataSet := QDias;
  frmMain.ExportXLS.Sheets[0].Exported := False;
  frmMain.ExportXLS.Sheets[1].Exported := True;
end;

procedure TfrmDiasFeriados.dsDiasStateChange(Sender: TObject);
begin
  btInsert.enabled  := dsDias.State = dsbrowse;
  btEdit.enabled    := btInsert.enabled;
  btDelete.enabled  := btInsert.enabled;
  btNext.enabled    := btInsert.enabled;
  btPrior.enabled   := btInsert.enabled;
  btPost.enabled    := not btInsert.enabled;
  btCancel.enabled  := not btInsert.enabled;
  btFind.enabled    := btInsert.enabled;
end;

procedure TfrmDiasFeriados.QDiasBeforePost(DataSet: TDataSet);
begin
  if trim(QDiasdia_descripcion.value) = '' then
  begin
    showmessage('EL NOMBRE NO PUEDE ESTAR EN BLANCO');
    DBEdit2.setfocus;
    abort;
  end;
  if QDias.State = dsInsert then
  begin
    dm.query1.close;
    dm.query1.sql.clear;
    dm.query1.sql.add('select isnull(max(dia_secuencia),0) as maximo');
    dm.query1.sql.add('from dias_feriados');
    dm.query1.open;
    QDiasdia_secuencia.value := dm.query1.fieldbyname('maximo').asinteger +1;
  end;
end;

procedure TfrmDiasFeriados.FormCreate(Sender: TObject);
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

procedure TfrmDiasFeriados.DBGrid1DblClick(Sender: TObject);
begin
  QDias.Locate('dia_secuencia',QListadodia_secuencia.Value,[]);
  PageControl1.ActivePageIndex := 0;
end;

end.
