unit RH52;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Db, ADODB, IBCustomDataSet,
  IBQuery, IBUpdateSQL, ComCtrls, QuerySearchDlgADO, ToolWin, ActnList,
  Grids, DBGrids;

type
  TfrmTablaISR = class(TForm)
    QISR: TADOQuery;
    dsISR: TDataSource;
    Search: TQrySearchDlgADO;
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
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    DBGrid1: TDBGrid;
    QListado: TADOQuery;
    dsListado: TDataSource;
    QISRemp_codigo: TIntegerField;
    QISRisr_secuencia: TIntegerField;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    QListadoemp_codigo: TIntegerField;
    QListadoisr_secuencia: TIntegerField;
    QISRDesde: TBCDField;
    QISRHasta: TBCDField;
    QISRExceso_Monto: TBCDField;
    QISRExceso_Porciento: TBCDField;
    QISRExceso_Aumento: TBCDField;
    QListadoDesde: TBCDField;
    QListadoHasta: TBCDField;
    QListadoExceso_Monto: TBCDField;
    QListadoExceso_Porciento: TBCDField;
    QListadoExceso_Aumento: TBCDField;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure QISRAfterDelete(DataSet: TDataSet);
    procedure QISRAfterPost(DataSet: TDataSet);
    procedure QISRNewRecord(DataSet: TDataSet);
    procedure btFindClick(Sender: TObject);
    procedure btPostClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btInsertClick(Sender: TObject);
    procedure btpriorClick(Sender: TObject);
    procedure btnextClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dsISRStateChange(Sender: TObject);
    procedure QISRBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTablaISR: TfrmTablaISR;

implementation

uses SIGMA01, SIGMA00;


{$R *.DFM}

procedure TfrmTablaISR.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmTablaISR.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmTablaISR.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then
     close;
end;

procedure TfrmTablaISR.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmTablaISR.QISRAfterDelete(DataSet: TDataSet);
begin
  QISR.UpdateBatch;
  QListado.Close;
  QListado.Open;
end;

procedure TfrmTablaISR.QISRAfterPost(DataSet: TDataSet);
begin
  QISR.UpdateBatch;
  QListado.Close;
  QListado.Open;
end;

procedure TfrmTablaISR.QISRNewRecord(DataSet: TDataSet);
begin
  QISRemp_codigo.value := dm.QEmpresasEMP_CODIGO.value;
end;

procedure TfrmTablaISR.btFindClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select isr_limite_inferior, isr_limite_superior, isr_secuencia');
  Search.Query.Add('from ISR');
  Search.Query.Add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.Value));
  if search.execute then
  begin
    QISR.Close;
    QISR.Parameters.ParamByName('sec').Value := StrToInt(Search.ValueField);
    QISR.Open;
  end;
end;

procedure TfrmTablaISR.btPostClick(Sender: TObject);
begin
  QISR.post;
end;

procedure TfrmTablaISR.btCancelClick(Sender: TObject);
begin
  QISR.cancel;
end;

procedure TfrmTablaISR.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QISR.delete;
end;

procedure TfrmTablaISR.btEditClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  DBEdit2.setfocus;
  QISR.edit;
end;

procedure TfrmTablaISR.btInsertClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  DBEdit2.setfocus;
  QISR.insert;
end;

procedure TfrmTablaISR.btpriorClick(Sender: TObject);
begin
  if not QISR.Bof then QISR.prior;
end;

procedure TfrmTablaISR.btnextClick(Sender: TObject);
begin
  if not QISR.eof then QISR.next;
end;

procedure TfrmTablaISR.FormActivate(Sender: TObject);
begin
  if not QISR.active then
  begin
    QISR.open;
    QListado.Open;
  end;
  frmMain.ExportXLS.Sheets[1].DataSet := QISR;
  frmMain.ExportXLS.Sheets[0].Exported := False;
  frmMain.ExportXLS.Sheets[1].Exported := True;
end;

procedure TfrmTablaISR.dsISRStateChange(Sender: TObject);
begin
  btInsert.enabled  := dsISR.State = dsbrowse;
  btEdit.enabled    := btInsert.enabled;
  btDelete.enabled  := btInsert.enabled;
  btNext.enabled    := btInsert.enabled;
  btPrior.enabled   := btInsert.enabled;
  btPost.enabled    := not btInsert.enabled;
  btCancel.enabled  := not btInsert.enabled;
  btFind.enabled    := btInsert.enabled;
end;

procedure TfrmTablaISR.QISRBeforePost(DataSet: TDataSet);
begin
  if QISRDesde.value <= 0 then
  begin
    showmessage('EL VALOR NO PUEDE ESTAR EN BLANCO');
    DBEdit2.setfocus;
    abort;
  end;
  if QISR.State = dsInsert then
  begin
    dm.query1.close;
    dm.query1.sql.clear;
    dm.query1.sql.add('select isnull(max(isr_secuencia),0) as maximo');
    dm.query1.sql.add('from ISR');
    dm.query1.sql.add('where emp_codigo = :emp');
    dm.query1.Parameters.parambyname('emp').Value := dm.QEmpresasEMP_CODIGO.value;
    dm.query1.open;
    QISRisr_secuencia .value := dm.query1.fieldbyname('maximo').asinteger +1;
  end;
end;

procedure TfrmTablaISR.FormCreate(Sender: TObject);
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

procedure TfrmTablaISR.DBGrid1DblClick(Sender: TObject);
begin
  QISR.Close;
  QISR.Parameters.ParamByName('sec').Value := QListadoisr_secuencia.Value;
  QISR.Open;
  PageControl1.ActivePageIndex := 0;
end;

end.
