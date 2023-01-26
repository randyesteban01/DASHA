unit PVENTA05;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Db, IBCustomDataSet, IBQuery,
  IBUpdateSQL, ADODB, QuerySearchDlgADO, ComCtrls, ToolWin, ActnList;

type
  TfrmCajeros = class(TForm)
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    QCajeros: TADOQuery;
    QCajerosEMP_CODIGO: TIntegerField;
    QCajerosCAJ_CODIGO: TIntegerField;
    QCajerosCAJ_NOMBRE: TIBStringField;
    QCajerosCAJ_CLAVE: TIBStringField;
    QCajerosCAJ_EFECTIVO: TFloatField;
    QCajerosCAJ_STATUS: TIBStringField;
    dsCajeros: TDataSource;
    QCajerosStatus: TStringField;
    Search: TQrySearchDlgADO;
    QCajerosfac_caja: TIntegerField;
    Label6: TLabel;
    btcaja: TSpeedButton;
    dbCaja: TDBEdit;
    tcaja: TEdit;
    Label5: TLabel;
    bttipo: TSpeedButton;
    dbTipo: TDBEdit;
    ttipo: TEdit;
    QCajerostfa_codigo: TIntegerField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBText1: TDBText;
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
    dbchkusu_vendedor: TDBCheckBox;
    QCajeroscaj_vendedor: TBooleanField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure QCajerosCalcFields(DataSet: TDataSet);
    procedure QCajerosNewRecord(DataSet: TDataSet);
    procedure QCajerosAfterPost(DataSet: TDataSet);
    procedure QCajerosAfterDelete(DataSet: TDataSet);
    procedure QCajerosBeforePost(DataSet: TDataSet);
    procedure btPostClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btInsertClick(Sender: TObject);
    procedure btFindClick(Sender: TObject);
    procedure btpriorClick(Sender: TObject);
    procedure btnextClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dsCajerosStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btcajaClick(Sender: TObject);
    procedure QCajerosfac_cajaGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure bttipoClick(Sender: TObject);
    procedure QCajerostfa_codigoGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCajeros: TfrmCajeros;

implementation

uses SIGMA01, SIGMA00;


{$R *.DFM}

procedure TfrmCajeros.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmCajeros.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmCajeros.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then
     close;
end;

procedure TfrmCajeros.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmCajeros.QCajerosCalcFields(DataSet: TDataSet);
begin
  if QCajerosCAJ_STATUS.value = 'ACT' then
     QCajerosStatus.value := 'Activo'
  else
     QCajerosStatus.value := 'InActivo';
end;

procedure TfrmCajeros.QCajerosNewRecord(DataSet: TDataSet);
begin
  QCajerosEMP_CODIGO.value := dm.vp_cia;
  QCajerosCAJ_STATUS.value := 'ACT';
  QCajerosfac_caja.Value   := dm.QParametroscaj_codigo.Value;
end;

procedure TfrmCajeros.QCajerosAfterPost(DataSet: TDataSet);
begin
  QCajeros.UpdateBatch;
end;

procedure TfrmCajeros.QCajerosAfterDelete(DataSet: TDataSet);
begin
  QCajeros.UpdateBatch;
end;

procedure TfrmCajeros.QCajerosBeforePost(DataSet: TDataSet);
begin
  if trim(QCajerosCAJ_NOMBRE.value) = '' then
  begin
    showmessage('EL NOMBRE NO PUEDE ESTAR EN BLANCO');
    DBEdit2.setfocus;
    abort;
  end;
  if QCajeros.State = dsInsert then
  begin
    dm.query1.close;
    dm.query1.sql.clear;
    dm.query1.sql.add('select isnull(max(caj_codigo),0) as maximo');
    dm.query1.sql.add('from cajeros');
    dm.query1.sql.add('where emp_codigo = :emp');
    dm.query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.query1.open;
    QCajerosCAJ_CODIGO.value := dm.query1.fieldbyname('maximo').asinteger +1;
  end;
end;

procedure TfrmCajeros.btPostClick(Sender: TObject);
begin
  QCajeros.post;
end;

procedure TfrmCajeros.btCancelClick(Sender: TObject);
begin
  QCajeros.cancel;
end;

procedure TfrmCajeros.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QCajeros.delete;
end;

procedure TfrmCajeros.btEditClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QCajeros.edit;
end;

procedure TfrmCajeros.btInsertClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QCajeros.insert;
end;

procedure TfrmCajeros.btFindClick(Sender: TObject);
begin
  Search.query.clear;
  Search.query.add('select caj_nombre, caj_codigo');
  Search.query.add('from cajeros');
  Search.query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.ResultField := 'caj_Codigo';
  if search.execute then
     QCajeros.locate('caj_codigo',search.valuefield,[]);
end;

procedure TfrmCajeros.btpriorClick(Sender: TObject);
begin
  if not QCajeros.bof then
    QCajeros.prior;
end;

procedure TfrmCajeros.btnextClick(Sender: TObject);
begin
  if not QCajeros.eof then
    QCajeros.next;
end;

procedure TfrmCajeros.FormActivate(Sender: TObject);
begin
  if not QCajeros.active then QCajeros.open;
  frmMain.ExportXLS.Sheets[1].DataSet := QCajeros;
  frmMain.ExportXLS.Sheets[0].Exported := False;
  frmMain.ExportXLS.Sheets[1].Exported := True;
end;

procedure TfrmCajeros.dsCajerosStateChange(Sender: TObject);
begin
  btInsert.enabled  := dsCajeros.State = dsbrowse;
  btEdit.enabled    := btInsert.enabled;
  btDelete.enabled  := btInsert.enabled;
  btNext.enabled    := btInsert.enabled;
  btPrior.enabled   := btInsert.enabled;
  btPost.enabled    := not btInsert.enabled;
  btCancel.enabled  := not btInsert.enabled;
  btFind.enabled    := btInsert.enabled;
  btcaja.enabled    := not btInsert.enabled;
  bttipo.enabled    := not btInsert.enabled;
end;

procedure TfrmCajeros.FormCreate(Sender: TObject);
var
  a : integer;
begin
  for a := 0 to frmCajeros.ComponentCount -1 DO
  begin
    if Components[a].ClassType = tdbedit then
    begin
      (Components[a] as tdbedit).OnEnter := frmMain.Entra;
      (Components[a] as tdbedit).OnExit := frmMain.sale;
    end;
  end;
end;

procedure TfrmCajeros.btcajaClick(Sender: TObject);
begin
  Search.Query.clear;
  Search.Query.add('select caj_nombre, caj_codigo');
  Search.Query.add('from cajas');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.ResultField := 'caj_Codigo';
  Search.Title := 'Listado de Cajas';
  if Search.execute then
  begin
    QCajerosfac_caja.value := strtoint(Search.ValueField);
    dbCaja.setfocus;
  end;
end;

procedure TfrmCajeros.QCajerosfac_cajaGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QCajerosfac_caja.isnull then
  begin
    Text := inttostr(QCajerosfac_caja.value);
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select caj_nombre');
    dm.Query1.sql.add('from cajas');
    dm.Query1.sql.add('where emp_Codigo = :emp');
    dm.Query1.sql.add('and caj_Codigo = :caj');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('caj').Value := QCajerosfac_caja.value;
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      tcaja.text := ''
    else
      tcaja.text := dm.Query1.fieldbyname('caj_nombre').asstring;
  end
  else
    tcaja.text := '';
end;

procedure TfrmCajeros.bttipoClick(Sender: TObject);
begin
  Search.Query.clear;
  Search.Query.add('select tfa_nombre, tfa_codigo');
  Search.Query.add('from tiposfactura');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.ResultField := 'tfa_Codigo';
  Search.Title := 'Tipos de Facturas';
  if Search.execute then
  begin
    QCajerostfa_codigo.value := strtoint(Search.ValueField);
    dbTipo.setfocus;
  end;
end;

procedure TfrmCajeros.QCajerostfa_codigoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QCajerostfa_codigo.isnull then
  begin
    Text := inttostr(QCajerostfa_codigo.value);
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select tfa_nombre');
    dm.Query1.sql.add('from tiposfactura');
    dm.Query1.sql.add('where emp_Codigo = :emp');
    dm.Query1.sql.add('and tfa_Codigo = :tfa');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('tfa').Value := QCajerostfa_codigo.value;
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      ttipo.text := ''
    else
      ttipo.text := dm.Query1.fieldbyname('tfa_nombre').asstring;
  end
  else
    ttipo.text := '';
end;

end.
