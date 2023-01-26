unit PVENTA75;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, QuerySearchDlgIB, Db,
  IBCustomDataSet, IBQuery, IBUpdateSQL, ComCtrls, Grids, DBGrids;

type
  TfrmBancos = class(TForm)
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
    Search: TQrySearchDlgIB;
    QBancos: TIBQuery;
    dsBancos: TDataSource;
    UPDBancos: TIBUpdateSQL;
    QBancosBAN_CODIGO: TIntegerField;
    QBancosBAN_CONTACTO: TIBStringField;
    QBancosBAN_DIRECCION: TIBStringField;
    QBancosBAN_NOMBRE: TIBStringField;
    QBancosBAN_TELEFONO: TIBStringField;
    QBancosEMP_CODIGO: TIntegerField;
    QBancosBAN_LOCALIDAD: TIBStringField;
    QBancosBAN_EMAIL: TIBStringField;
    QBancosBAN_FAX: TIBStringField;
    QBancosBAN_WEB: TIBStringField;
    Panel2: TPanel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit11: TDBEdit;
    QBancosBAN_CHEQUE: TIntegerField;
    QBancosBAN_MODSECUENCIA: TIBStringField;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btFindClick(Sender: TObject);
    procedure QBancosAfterDelete(DataSet: TDataSet);
    procedure QBancosAfterPost(DataSet: TDataSet);
    procedure QBancosNewRecord(DataSet: TDataSet);
    procedure QBancosBeforePost(DataSet: TDataSet);
    procedure dsBancosStateChange(Sender: TObject);
    procedure btPostClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btInsertClick(Sender: TObject);
    procedure btpriorClick(Sender: TObject);
    procedure btnextClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBancos: TfrmBancos;

implementation

uses SIGMA01, SIGMA00;


{$R *.DFM}

procedure TfrmBancos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmBancos.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmBancos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then
     close;
end;

procedure TfrmBancos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmBancos.btFindClick(Sender: TObject);
begin
  Search.query.clear;
  Search.query.add('select ban_nombre, ban_codigo');
  Search.query.add('from bancos');
  Search.query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  if search.execute then
     QBancos.locate('ban_codigo',search.valuefield,[]);
end;

procedure TfrmBancos.QBancosAfterDelete(DataSet: TDataSet);
begin
  QBancos.ApplyUpdates;
  dm.IBTransaction1.CommitRetaining;
end;

procedure TfrmBancos.QBancosAfterPost(DataSet: TDataSet);
begin
  QBancos.ApplyUpdates;
  dm.IBTransaction1.CommitRetaining;
end;

procedure TfrmBancos.QBancosNewRecord(DataSet: TDataSet);
begin
  QBancosEMP_CODIGO.value := dm.vp_cia;
  QBancosBAN_MODSECUENCIA.Value := 'S';
end;

procedure TfrmBancos.QBancosBeforePost(DataSet: TDataSet);
begin
  if trim(QBancosBAN_NOMBRE.value) = '' then
  begin
    showmessage('EL NOMBRE NO PUEDE ESTAR EN BLANCO');
    DBEdit2.setfocus;
    abort;
  end;
  if QBancos.State = dsInsert then
  begin
    dm.query1.close;
    dm.query1.sql.clear;
    dm.query1.sql.add('select max(ban_codigo) as maximo');
    dm.query1.sql.add('from bancos');
    dm.query1.sql.add('where emp_codigo = :emp');
    dm.query1.parambyname('emp').asinteger := dm.vp_cia;
    dm.query1.open;
    QBancosBAN_CODIGO.value := dm.query1.fieldbyname('maximo').asinteger +1;
  end;
end;

procedure TfrmBancos.dsBancosStateChange(Sender: TObject);
begin
  btInsert.enabled  := dsBancos.State = dsbrowse;
  btEdit.enabled    := btInsert.enabled;
  btDelete.enabled  := btInsert.enabled;
  btNext.enabled    := btInsert.enabled;
  btPrior.enabled   := btInsert.enabled;
  btPost.enabled    := not btInsert.enabled;
  btCancel.enabled  := not btInsert.enabled;
  btFind.enabled    := btInsert.enabled;
end;

procedure TfrmBancos.btPostClick(Sender: TObject);
begin
  QBancos.post;
end;

procedure TfrmBancos.btCancelClick(Sender: TObject);
begin
  QBancos.cancel;
end;

procedure TfrmBancos.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QBancos.delete;
end;

procedure TfrmBancos.btEditClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QBancos.edit;
end;

procedure TfrmBancos.btInsertClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QBancos.insert;
end;

procedure TfrmBancos.btpriorClick(Sender: TObject);
begin
  if not QBancos.bof then
    QBancos.prior;
end;

procedure TfrmBancos.btnextClick(Sender: TObject);
begin
  if not QBancos.eof then
    QBancos.next;
end;

procedure TfrmBancos.FormActivate(Sender: TObject);
begin
  if not QBancos.active then QBancos.open;
  frmMain.ExportXLS.Sheets[1].DataSet := QBancos;
  frmMain.ExportXLS.Sheets[0].Exported := False;
  frmMain.ExportXLS.Sheets[1].Exported := True;
end;

procedure TfrmBancos.FormCreate(Sender: TObject);
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
