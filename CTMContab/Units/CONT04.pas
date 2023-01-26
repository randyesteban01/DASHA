unit CONT04;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, QuerySearchDlgIB, Db,
  IBCustomDataSet, IBQuery, IBUpdateSQL, ComCtrls, Grids, DBGrids;

type
  TfrmProveedores = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    btInsert: TBitBtn;
    btEdit: TBitBtn;
    btDelete: TBitBtn;
    Panel3: TPanel;
    btPost: TBitBtn;
    btCancel: TBitBtn;
    Panel5: TPanel;
    btFind: TBitBtn;
    btClose: TBitBtn;
    btnext: TBitBtn;
    btprior: TBitBtn;
    DBEdit10: TDBEdit;
    Label10: TLabel;
    Search: TQrySearchDlgIB;
    QProveedores: TIBQuery;
    QProveedoresEMP_CODIGO: TIntegerField;
    QProveedoresSUP_CODIGO: TIntegerField;
    QProveedoresSUP_NOMBRE: TIBStringField;
    QProveedoresSUP_RNC: TIBStringField;
    QProveedoresSUP_DIRECCION: TIBStringField;
    QProveedoresSUP_LOCALIDAD: TIBStringField;
    QProveedoresSUP_TELEFONO: TIBStringField;
    QProveedoresSUP_FAX: TIBStringField;
    QProveedoresSUP_WEB: TIBStringField;
    QProveedoresSUP_EMAIL: TIBStringField;
    QProveedoresSUP_CUENTA: TIBStringField;
    QProveedoresSUP_STATUS: TIBStringField;
    QProveedoresSUP_BALANCE: TFloatField;
    dsProveedores: TDataSource;
    UPDProveedores: TIBUpdateSQL;
    QProveedoresSUP_VENDEDOR: TIBStringField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit11: TDBEdit;
    DBGrid3: TDBGrid;
    QCxP: TIBQuery;
    QCxPFAC_NUMERO: TIBStringField;
    QCxPFAC_FECHA: TDateTimeField;
    QCxPFAC_TOTAL: TFloatField;
    QCxPFAC_ABONO: TFloatField;
    QCxPSaldo: TFloatField;
    dsCxP: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btFindClick(Sender: TObject);
    procedure QProveedoresAfterDelete(DataSet: TDataSet);
    procedure QProveedoresAfterPost(DataSet: TDataSet);
    procedure QProveedoresNewRecord(DataSet: TDataSet);
    procedure QProveedoresBeforePost(DataSet: TDataSet);
    procedure dsProveedoresStateChange(Sender: TObject);
    procedure btPostClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btInsertClick(Sender: TObject);
    procedure btpriorClick(Sender: TObject);
    procedure btnextClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure QProveedoresAfterOpen(DataSet: TDataSet);
    procedure QCxPCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProveedores: TfrmProveedores;

implementation

uses CONT01, CONT00;

{$R *.DFM}

procedure TfrmProveedores.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmProveedores.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmProveedores.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then
     close;
end;

procedure TfrmProveedores.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmProveedores.btFindClick(Sender: TObject);
begin
  Search.query.clear;
  Search.query.add('select sup_nombre, sup_codigo');
  Search.query.add('from proveedores');
  Search.query.add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.value));
  if search.execute then
     QProveedores.locate('sup_codigo',search.valuefield,[]);
end;

procedure TfrmProveedores.QProveedoresAfterDelete(DataSet: TDataSet);
begin
  QProveedores.ApplyUpdates;
  dm.IBTransaction1.CommitRetaining;
end;

procedure TfrmProveedores.QProveedoresAfterPost(DataSet: TDataSet);
begin
  QProveedores.ApplyUpdates;
  dm.IBTransaction1.CommitRetaining;
end;

procedure TfrmProveedores.QProveedoresNewRecord(DataSet: TDataSet);
begin
  QProveedoresEMP_CODIGO.value := dm.QEmpresasEMP_CODIGO.value;
  QProveedoresSUP_BALANCE.value := 0;
  QProveedoresSUP_STATUS.value := 'ACT';
end;

procedure TfrmProveedores.QProveedoresBeforePost(DataSet: TDataSet);
begin
  if trim(QProveedoresSUP_NOMBRE.value) = '' then
  begin
    showmessage('EL NOMBRE NO PUEDE ESTAR EN BLANCO');
    DBEdit2.setfocus;
    abort;
  end;
  if QProveedores.State = dsInsert then
  begin
    dm.query1.close;
    dm.query1.sql.clear;
    dm.query1.sql.add('select max(sup_codigo) as maximo');
    dm.query1.sql.add('from proveedores');
    dm.query1.sql.add('where emp_codigo = :emp');
    dm.query1.parambyname('emp').asinteger := dm.QEmpresasEMP_CODIGO.value;
    dm.query1.open;
    QProveedoresSUP_CODIGO.value := dm.query1.fieldbyname('maximo').asinteger +1;
  end;
end;

procedure TfrmProveedores.dsProveedoresStateChange(Sender: TObject);
begin
  btInsert.enabled  := dsProveedores.State = dsbrowse;
  btEdit.enabled    := btInsert.enabled;
  btDelete.enabled  := btInsert.enabled;
  btNext.enabled    := btInsert.enabled;
  btPrior.enabled   := btInsert.enabled;
  btPost.enabled    := not btInsert.enabled;
  btCancel.enabled  := not btInsert.enabled;
  btFind.enabled    := btInsert.enabled;
end;

procedure TfrmProveedores.btPostClick(Sender: TObject);
begin
  QProveedores.post;
end;

procedure TfrmProveedores.btCancelClick(Sender: TObject);
begin
  QProveedores.cancel;
end;

procedure TfrmProveedores.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QProveedores.delete;
end;

procedure TfrmProveedores.btEditClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QProveedores.edit;
end;

procedure TfrmProveedores.btInsertClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QProveedores.insert;
end;

procedure TfrmProveedores.btpriorClick(Sender: TObject);
begin
  if not QProveedores.bof then
    QProveedores.prior;
end;

procedure TfrmProveedores.btnextClick(Sender: TObject);
begin
  if not QProveedores.eof then
    QProveedores.next;
end;

procedure TfrmProveedores.FormActivate(Sender: TObject);
begin
  if not QProveedores.active then QProveedores.open;
  frmMain.ExportXLS.Sheets[1].DataSet := QProveedores;
  frmMain.ExportXLS.Sheets[0].Exported := False;
  frmMain.ExportXLS.Sheets[1].Exported := True;
end;

procedure TfrmProveedores.QProveedoresAfterOpen(DataSet: TDataSet);
begin
  if not QCxP.active then QCxP.Open;
end;

procedure TfrmProveedores.QCxPCalcFields(DataSet: TDataSet);
begin
  QCxPSaldo.value := QCxPFAC_TOTAL.value - QCxPFAC_ABONO.value;
end;

procedure TfrmProveedores.FormCreate(Sender: TObject);
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
