unit PVENTA133;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Db, IBCustomDataSet, IBQuery,
  IBUpdateSQL, ADODB, QuerySearchDlgADO, ComCtrls, ToolWin, ActnList,
  Grids, DBGrids, Spin, DateUtils;

type
  TfrmMoneda = class(TForm)
    QMoneda: TADOQuery;
    dsMoneda: TDataSource;
    Search: TQrySearchDlgADO;
    QMonedaEMP_CODIGO: TIntegerField;
    QMonedaMON_CODIGO: TIntegerField;
    QMonedaMON_NOMBRE: TIBStringField;
    QMonedaMON_SIGLA: TIBStringField;
    QMonedaMON_RELACIONPESOVENTA: TFloatField;
    QMonedaMON_RELACIONPESOCOMPRA: TFloatField;
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
    Label4: TLabel;
    Label5: TLabel;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit1: TDBEdit;
    DBGrid1: TDBGrid;
    Label6: TLabel;
    spAno: TSpinEdit;
    QPromedio: TADOQuery;
    dsPromedio: TDataSource;
    QPromedioemp_codigo: TIntegerField;
    QPromediomon_codigo: TIntegerField;
    QPromedioano: TIntegerField;
    QPromediomes: TIntegerField;
    QPromediotasa: TBCDField;
    QPromediotasa_compra: TBCDField;
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
    procedure QMonedaAfterDelete(DataSet: TDataSet);
    procedure QMonedaAfterPost(DataSet: TDataSet);
    procedure QMonedaNewRecord(DataSet: TDataSet);
    procedure QMonedaBeforePost(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure dsMonedaStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure spAnoChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMoneda: TfrmMoneda;

implementation

uses SIGMA01, SIGMA00;


{$R *.DFM}

procedure TfrmMoneda.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmMoneda.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmMoneda.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then
     close;
end;

procedure TfrmMoneda.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    if activecontrol.ClassType <> TDBGrid then
    begin
      perform(wm_nextdlgctl, 0, 0);
      key := #0;
    end;
  end;
end;

procedure TfrmMoneda.btPostClick(Sender: TObject);
begin
  QMoneda.post;
end;

procedure TfrmMoneda.btCancelClick(Sender: TObject);
begin
  QMoneda.cancel;
end;

procedure TfrmMoneda.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QMoneda.delete;
end;

procedure TfrmMoneda.btEditClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  DBEdit2.setfocus;
  QMoneda.edit;
end;

procedure TfrmMoneda.btInsertClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  DBEdit2.setfocus;
  QMoneda.insert;
end;

procedure TfrmMoneda.btFindClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select mon_nombre, mon_codigo');
  Search.Query.Add('from moneda');
  Search.Query.Add('where emp_codigo = '+inttostr(dm.vp_cia));
  if search.execute then
     QMoneda.locate('mon_codigo',search.valuefield,[]);
end;

procedure TfrmMoneda.btpriorClick(Sender: TObject);
begin
  if not QMoneda.Bof then QMoneda.prior;
end;

procedure TfrmMoneda.btnextClick(Sender: TObject);
begin
  if not QMoneda.eof then QMoneda.next;
end;

procedure TfrmMoneda.QMonedaAfterDelete(DataSet: TDataSet);
begin
  QMoneda.UpdateBatch;
end;

procedure TfrmMoneda.QMonedaAfterPost(DataSet: TDataSet);
begin
  QMoneda.UpdateBatch;
end;

procedure TfrmMoneda.QMonedaNewRecord(DataSet: TDataSet);
begin
  QMonedaEMP_CODIGO.value := dm.vp_cia;
end;

procedure TfrmMoneda.QMonedaBeforePost(DataSet: TDataSet);
begin
  if trim(QMonedaMON_NOMBRE.value) = '' then
  begin
    showmessage('EL NOMBRE NO PUEDE ESTAR EN BLANCO');
    DBEdit2.setfocus;
    abort;
  end;
  if QMoneda.State = dsInsert then
  begin
    dm.query1.close;
    dm.query1.sql.clear;
    dm.query1.sql.add('select isnull(max(mon_codigo),0) as maximo');
    dm.query1.sql.add('from moneda');
    dm.query1.sql.add('where emp_codigo = :emp');
    dm.query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.query1.open;
    QMonedaMON_CODIGO.value := dm.query1.fieldbyname('maximo').asinteger +1;
  end;
end;

procedure TfrmMoneda.FormActivate(Sender: TObject);
begin
  if not QMoneda.active then
  begin
    QMoneda.open;
    QPromedio.Parameters.ParamByName('ano').Value := YearOf(Date);
    QPromedio.Open;
  end;
  frmMain.ExportXLS.Sheets[1].DataSet := QMoneda;
  frmMain.ExportXLS.Sheets[0].Exported := False;
  frmMain.ExportXLS.Sheets[1].Exported := True;
end;

procedure TfrmMoneda.dsMonedaStateChange(Sender: TObject);
begin
  btInsert.enabled  := dsMoneda.State = dsbrowse;
  btEdit.enabled    := btInsert.enabled;
  btDelete.enabled  := btInsert.enabled;
  btNext.enabled    := btInsert.enabled;
  btPrior.enabled   := btInsert.enabled;
  btPost.enabled    := not btInsert.enabled;
  btCancel.enabled  := not btInsert.enabled;
  btFind.enabled    := btInsert.enabled;
end;

procedure TfrmMoneda.FormCreate(Sender: TObject);
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
  spAno.Value  := YearOf(Date);
end;

procedure TfrmMoneda.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if DBGrid1.SelectedIndex <> 2 then
       DBGrid1.SelectedIndex := DBGrid1.SelectedIndex + 1
    else
    begin
      DBGrid1.SelectedIndex := 0;
      QPromedio.Next;
    end;
  end;
end;

procedure TfrmMoneda.spAnoChange(Sender: TObject);
begin
  QPromedio.Close;
  QPromedio.Parameters.ParamByName('ano').Value := spAno.Value;
  QPromedio.Open;
end;

end.
