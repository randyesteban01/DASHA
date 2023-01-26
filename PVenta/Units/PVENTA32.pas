unit PVENTA32;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Db, IBCustomDataSet, IBQuery,
  IBUpdateSQL, ADODB, QuerySearchDlgADO, ComCtrls, ToolWin, ActnList,
  Grids, DBGrids;

type
  TfrmVendedor = class(TForm)
    QVendedor: TADOQuery;
    dsVendedor: TDataSource;
    Search: TQrySearchDlgADO;
    QVendedorEMP_CODIGO: TIntegerField;
    QVendedorVEN_CODIGO: TIntegerField;
    QVendedorVEN_NOMBRE: TIBStringField;
    QVendedorVEN_TELEFONO: TIBStringField;
    QVendedorVEN_CELULAR: TIBStringField;
    QVendedorVEN_BEEPER: TIBStringField;
    QVendedorVEN_STATUS: TIBStringField;
    QVendedorVEN_COMCOBRO: TFloatField;
    QVendedorVEN_COMVENTA: TFloatField;
    QVendedorven_fecha_entrada: TDateTimeField;
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
    QVendedorven_email: TStringField;
    QVendedorven_comision_cobro: TStringField;
    QVendedorven_comision_venta: TStringField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBEdit3: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    QObjetivo: TADOQuery;
    DataSource1: TDataSource;
    QObjetivoemp_codigo: TIntegerField;
    QObjetivoven_codigo: TIntegerField;
    QObjetivoano: TIntegerField;
    QObjetivomes: TIntegerField;
    QObjetivomonto: TBCDField;
    QObjetivoDMes: TStringField;
    DBGrid1: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure QVendedorNewRecord(DataSet: TDataSet);
    procedure QVendedorAfterDelete(DataSet: TDataSet);
    procedure QVendedorAfterPost(DataSet: TDataSet);
    procedure QVendedorBeforePost(DataSet: TDataSet);
    procedure btPostClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btInsertClick(Sender: TObject);
    procedure btPriorClick(Sender: TObject);
    procedure btNextClick(Sender: TObject);
    procedure btFindClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dsVendedorStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVendedor: TfrmVendedor;

implementation

uses SIGMA01, SIGMA00;


{$R *.DFM}

procedure TfrmVendedor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmVendedor.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmVendedor.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then
     close;
end;

procedure TfrmVendedor.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmVendedor.QVendedorNewRecord(DataSet: TDataSet);
begin
  QVendedorven_comision_cobro.Value := 'False';
  QVendedorven_comision_venta.Value := 'False';
  QVendedorEMP_CODIGO.value := dm.vp_cia;
  QVendedorven_fecha_entrada.Value := Date;
end;

procedure TfrmVendedor.QVendedorAfterDelete(DataSet: TDataSet);
begin
  QVendedor.UpdateBatch;
end;

procedure TfrmVendedor.QVendedorAfterPost(DataSet: TDataSet);
begin
  QVendedor.UpdateBatch;
end;

procedure TfrmVendedor.QVendedorBeforePost(DataSet: TDataSet);
begin
  if trim(QVendedorVEN_NOMBRE.value) = '' then
  begin
    showmessage('EL NOMBRE NO PUEDE ESTAR EN BLANCO');
    DBEdit2.setfocus;
    abort;
  end;
  if QVendedor.State = dsInsert then
  begin
    dm.query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select isnull(max(ven_codigo),0) as maximo ');
    dm.Query1.sql.add('from vendedores ');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.query1.open;
    QVendedorVEN_CODIGO.value := dm.query1.fieldbyname('maximo').asinteger +1;  end;
end;

procedure TfrmVendedor.btPostClick(Sender: TObject);
begin
  QVendedor.post;
end;

procedure TfrmVendedor.btCancelClick(Sender: TObject);
begin
  QVendedor.cancel;
end;

procedure TfrmVendedor.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QVendedor.delete;
end;

procedure TfrmVendedor.btEditClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QVendedor.edit;
end;

procedure TfrmVendedor.btInsertClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QVendedor.insert;
end;

procedure TfrmVendedor.btPriorClick(Sender: TObject);
begin
  if not QVendedor.bof then
    QVendedor.prior;
end;

procedure TfrmVendedor.btNextClick(Sender: TObject);
begin
  if not QVendedor.eof then
    QVendedor.next;
end;

procedure TfrmVendedor.btFindClick(Sender: TObject);
begin
  Search.query.clear;
  Search.query.add('select ven_nombre, ven_codigo');
  Search.query.add('from vendedores');
  Search.query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  if search.execute then
     QVendedor.locate('ven_codigo',search.valuefield,[]);
end;

procedure TfrmVendedor.FormActivate(Sender: TObject);
begin
  if not QVendedor.active then QVendedor.open;
  frmMain.ExportXLS.Sheets[1].DataSet := QVendedor;
  frmMain.ExportXLS.Sheets[0].Exported := False;
  frmMain.ExportXLS.Sheets[1].Exported := True;
end;

procedure TfrmVendedor.dsVendedorStateChange(Sender: TObject);
begin
  btInsert.enabled  := dsVendedor.State = dsbrowse;
  btEdit.enabled    := btInsert.enabled;
  btDelete.enabled  := btInsert.enabled;
  btNext.enabled    := btInsert.enabled;
  btPrior.enabled   := btInsert.enabled;
  btPost.enabled    := not btInsert.enabled;
  btCancel.enabled  := not btInsert.enabled;
  btFind.enabled    := btInsert.enabled;
end;

procedure TfrmVendedor.FormCreate(Sender: TObject);
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
