unit PVENTA221;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Db, IBCustomDataSet,
  IBUpdateSQL, IBQuery, ADODB, QuerySearchDlgADO, ComCtrls, ToolWin,
  ActnList, Grids, DBGrids;

type
  TfrmMedidores = class(TForm)
    QMedidor: TADOQuery;
    Search: TQrySearchDlgADO;
    dsMedidor: TDataSource;
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
    Label1: TLabel;
    DBEdit2: TDBEdit;
    DBEdit1: TDBEdit;
    DBGrid1: TDBGrid;
    QListado: TADOQuery;
    dsListado: TDataSource;
    QMedidorMedidorID: TIntegerField;
    QMedidorNombre: TStringField;
    QMedidorpro_codigo: TIntegerField;
    QMedidorSecuencia: TBCDField;
    QListadoMedidorID: TIntegerField;
    QListadoNombre: TStringField;
    QListadopro_codigo: TIntegerField;
    QListadoSecuencia: TBCDField;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    btProducto: TSpeedButton;
    tProducto: TEdit;
    DBEdit4: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure QMedidorAfterPost(DataSet: TDataSet);
    procedure QMedidorAfterDelete(DataSet: TDataSet);
    procedure QMedidorBeforePost(DataSet: TDataSet);
    procedure btPostClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btInsertClick(Sender: TObject);
    procedure btFindClick(Sender: TObject);
    procedure btpriorClick(Sender: TObject);
    procedure btnextClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dsMedidorStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure btProductoClick(Sender: TObject);
    procedure QMedidorpro_codigoGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    accion : integer;
  end;

var
  frmMedidores: TfrmMedidores;

implementation

uses SIGMA01, SIGMA00, PVENTA33;


{$R *.DFM}

procedure TfrmMedidores.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmMedidores.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmMedidores.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then
     close;
end;

procedure TfrmMedidores.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmMedidores.QMedidorAfterPost(DataSet: TDataSet);
begin
  QMedidor.UpdateBatch;
  QListado.Close;
  QListado.Open;
end;

procedure TfrmMedidores.QMedidorAfterDelete(DataSet: TDataSet);
begin
  QMedidor.UpdateBatch;
  QListado.Close;
  QListado.Open;
end;

procedure TfrmMedidores.QMedidorBeforePost(DataSet: TDataSet);
begin
  if trim(QMedidorNombre.value) = '' then
  begin
    showmessage('EL NOMBRE NO PUEDE ESTAR EN BLANCO');
    DBEdit2.setfocus;
    abort;
  end;
  if QMedidor.State = dsInsert then
  begin
    accion := 1;
    dm.query1.close;
    dm.query1.sql.clear;
    dm.query1.sql.add('select isnull(max(MedidorID),0) as maximo');
    dm.query1.sql.add('from Medidores');
    dm.query1.open;
    QMedidorMedidorID.value := dm.query1.fieldbyname('maximo').asinteger +1;
  end
  else
    accion := 2;
end;

procedure TfrmMedidores.btPostClick(Sender: TObject);
begin
  QMedidor.post;
end;

procedure TfrmMedidores.btCancelClick(Sender: TObject);
begin
  QMedidor.cancel;
end;

procedure TfrmMedidores.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QMedidor.delete;
end;

procedure TfrmMedidores.btEditClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  DBEdit2.setfocus;
  QMedidor.edit;
end;

procedure TfrmMedidores.btInsertClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  DBEdit2.setfocus;
  QMedidor.insert;
end;

procedure TfrmMedidores.btFindClick(Sender: TObject);
begin
  Search.query.clear;
  Search.query.add('select Nombre, MedidorID');
  Search.query.add('from Medidores');
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Código');
  if search.execute then
     QMedidor.locate('MedidorID',search.valuefield,[]);
end;

procedure TfrmMedidores.btpriorClick(Sender: TObject);
begin
  if not QMedidor.bof then QMedidor.prior;
end;

procedure TfrmMedidores.btnextClick(Sender: TObject);
begin
  if not QMedidor.eof then QMedidor.next;
end;

procedure TfrmMedidores.FormActivate(Sender: TObject);
begin
  if not QMedidor.active then
  begin
    QMedidor.open;
    QListado.Open;
  end;
  frmMain.ExportXLS.FileName := 'Medidores.xls';
  frmMain.ExportXLS.Sheets[1].DataSet := QMedidor;
  frmMain.ExportXLS.Sheets[0].Exported := False;
  frmMain.ExportXLS.Sheets[2].Exported := False;
  frmMain.ExportXLS.Sheets[1].Exported := True;
end;

procedure TfrmMedidores.dsMedidorStateChange(Sender: TObject);
begin
  btInsert.enabled   := dsMedidor.State = dsbrowse;
  btEdit.enabled     := btInsert.enabled;
  btDelete.enabled   := btInsert.enabled;
  btNext.enabled     := btInsert.enabled;
  btPrior.enabled    := btInsert.enabled;
  btPost.enabled     := not btInsert.enabled;
  btCancel.enabled   := not btInsert.enabled;
  btFind.enabled     := btInsert.enabled;
  btProducto.enabled := not btInsert.enabled;
end;

procedure TfrmMedidores.FormCreate(Sender: TObject);
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

procedure TfrmMedidores.DBGrid1DblClick(Sender: TObject);
begin
  QMedidor.locate('MedidorID',QListadoMedidorID.Value,[]);
  PageControl1.ActivePageIndex := 0;
end;

procedure TfrmMedidores.btProductoClick(Sender: TObject);
begin
  application.createform(tfrmBuscaProducto, frmBuscaProducto);
  frmBuscaProducto.showmodal;
  if frmBuscaProducto.seleccion = 1 then
  begin
    QMedidorpro_codigo.Value :=  frmBuscaProducto.QProductosPRO_CODIGO.value;
    tProducto.Text := frmBuscaProducto.QProductosPRO_NOMBRE.Value;
    DBEdit4.SetFocus;
  end;
  frmBuscaProducto.release;
end;

procedure TfrmMedidores.QMedidorpro_codigoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QMedidorpro_codigo.IsNull then
  begin
    Text := IntToStr(QMedidorpro_codigo.Value);
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select pro_nombre from productos where emp_codigo = :emp and pro_codigo = :pro');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.Parameters.ParamByName('pro').Value := QMedidorpro_codigo.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
      tProducto.Text := dm.Query1.FieldByName('pro_nombre').AsString
    else
      tProducto.Text := '';
  end;
end;

end.
