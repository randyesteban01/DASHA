unit CONT08;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, ComCtrls, Db,
  ActnList, QuerySearchDlgIB, ExtDlgs,
  Provider, SqlExpr, DBClient, DBLocal, DBLocalS, IBCustomDataSet, IBQuery,
  IBUpdateSQL;

type
  TfrmEmpresas = class(TForm)
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
    btNext: TBitBtn;
    btPrior: TBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    dsEmpresas: TDataSource;
    Search: TQrySearchDlgIB;
    OpenDLG: TOpenPictureDialog;
    QEmpresas: TIBQuery;
    UPDEmpresas: TIBUpdateSQL;
    QEmpresasEMP_CODIGO: TIntegerField;
    QEmpresasEMP_DIRECCION: TIBStringField;
    QEmpresasEMP_EMAIL: TIBStringField;
    QEmpresasEMP_FAX: TIBStringField;
    QEmpresasEMP_LOCALIDAD: TIBStringField;
    QEmpresasEMP_LOGO: TIBStringField;
    QEmpresasEMP_NOMBRE: TIBStringField;
    QEmpresasEMP_RNC: TIBStringField;
    QEmpresasEMP_STATUS: TIBStringField;
    QEmpresasEMP_TELEFONO: TIBStringField;
    QEmpresasEMP_WEB: TIBStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dsEmpresasStateChange(Sender: TObject);
    procedure btPriorClick(Sender: TObject);
    procedure btInsertClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btPostClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btFindClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure QEmpresasAfterDelete(DataSet: TDataSet);
    procedure QEmpresasBeforePost(DataSet: TDataSet);
    procedure QEmpresasAfterPost(DataSet: TDataSet);
    procedure btNextClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure QEmpresasNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEmpresas: TfrmEmpresas;

implementation

uses CONT00, CONT01;

{$R *.DFM}

procedure TfrmEmpresas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmEmpresas.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmEmpresas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then
     close;
end;

procedure TfrmEmpresas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmEmpresas.dsEmpresasStateChange(Sender: TObject);
begin
  btInsert.enabled := dsEmpresas.State = dsbrowse;
  btEdit.enabled   := btInsert.enabled;
  btDelete.enabled := btInsert.enabled;
  btNext.enabled   := btInsert.enabled;
  btPrior.enabled  := btInsert.enabled;
  btPost.enabled   := not btInsert.enabled;
  btCancel.enabled := not btInsert.enabled;
  btFind.enabled   := btInsert.enabled;
end;

procedure TfrmEmpresas.btPriorClick(Sender: TObject);
begin
  if not QEmpresas.bof then
    QEmpresas.prior;
end;

procedure TfrmEmpresas.btInsertClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  DBEdit2.setfocus;
  QEmpresas.Insert;
end;

procedure TfrmEmpresas.btEditClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  DBEdit2.setfocus;
  QEmpresas.edit;
end;

procedure TfrmEmpresas.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QEmpresas.delete;
end;

procedure TfrmEmpresas.btPostClick(Sender: TObject);
begin
  QEmpresas.post;
end;

procedure TfrmEmpresas.btCancelClick(Sender: TObject);
begin
  QEmpresas.cancel;
end;

procedure TfrmEmpresas.FormActivate(Sender: TObject);
begin
  if not QEmpresas.active then
     QEmpresas.open;
  frmMain.ExportXLS.Sheets[1].DataSet := QEmpresas;
  frmMain.ExportXLS.Sheets[0].Exported := False;
  frmMain.ExportXLS.Sheets[1].Exported := True;
end;

procedure TfrmEmpresas.btFindClick(Sender: TObject);
begin
  if search.execute then
     QEmpresas.locate('emp_codigo',search.valuefield,[]);
end;

procedure TfrmEmpresas.BitBtn3Click(Sender: TObject);
begin
  if OpenDLG.Execute then
  begin
    QEmpresas.edit;
    QEmpresasEMP_LOGO.value := OpenDLG.FileName;
  end;
end;

procedure TfrmEmpresas.BitBtn4Click(Sender: TObject);
begin
  QEmpresas.edit;
  QEmpresasEMP_LOGO.clear;
end;

procedure TfrmEmpresas.QEmpresasAfterDelete(DataSet: TDataSet);
begin
  QEmpresas.ApplyUpdates;
  dm.IBTransaction1.CommitRetaining;
end;

procedure TfrmEmpresas.QEmpresasBeforePost(DataSet: TDataSet);
begin
  if trim(QEmpresasEMP_NOMBRE.value) = '' then
  begin
    showmessage('EL NOMBRE NO PUEDE ESTAR EN BLANCO');
    DBEdit2.setfocus;
    abort;
  end;
  if QEmpresas.State = dsInsert then
  begin
    dm.query1.close;
    dm.query1.sql.clear;
    dm.query1.sql.add('select max(emp_codigo) as maximo');
    dm.query1.sql.add('from empresas');
    dm.query1.open;
    QEmpresasEMP_CODIGO.value := dm.query1.fieldbyname('maximo').asinteger +1;
  end;
end;

procedure TfrmEmpresas.QEmpresasAfterPost(DataSet: TDataSet);
begin
  QEmpresas.ApplyUpdates;
  dm.IBTransaction1.CommitRetaining;
end;

procedure TfrmEmpresas.btNextClick(Sender: TObject);
begin
  if not QEmpresas.eof then
    QEmpresas.next;
end;

procedure TfrmEmpresas.FormCreate(Sender: TObject);
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

procedure TfrmEmpresas.QEmpresasNewRecord(DataSet: TDataSet);
begin
  QEmpresasEMP_STATUS.Value := 'ACT';
end;

end.
