unit PVENTA146;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, Mask, DBCtrls, ComCtrls,
  ExtCtrls, DB, ADODB, QuerySearchDlgADO, ToolWin, ActnList;

type
  TfrmClientesClub = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label15: TLabel;
    btDepen: TSpeedButton;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit8: TDBEdit;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DBEdit5: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    btBono: TBitBtn;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    SpeedButton14: TSpeedButton;
    SpeedButton15: TSpeedButton;
    SpeedButton16: TSpeedButton;
    SpeedButton17: TSpeedButton;
    SpeedButton19: TSpeedButton;
    SpeedButton20: TSpeedButton;
    SpeedButton21: TSpeedButton;
    SpeedButton22: TSpeedButton;
    SpeedButton23: TSpeedButton;
    SpeedButton24: TSpeedButton;
    SpeedButton25: TSpeedButton;
    SpeedButton26: TSpeedButton;
    SpeedButton27: TSpeedButton;
    SpeedButton28: TSpeedButton;
    btodos: TSpeedButton;
    DBGrid6: TDBGrid;
    QClientes: TADOQuery;
    QClientesemp_codigo: TIntegerField;
    QClientescli_nombre: TStringField;
    QClientescli_apellido: TStringField;
    QClientescli_cedula: TStringField;
    QClientescli_telefono: TStringField;
    QClientescli_celular: TStringField;
    QClientescli_status: TStringField;
    QClientescli_fecha_nacimiento: TDateTimeField;
    QClientescli_fecha_entrada: TDateTimeField;
    QClientescli_monto_acumulado: TBCDField;
    QClientescli_puntos_acumulado: TBCDField;
    QClientescli_ultima_compra: TDateTimeField;
    QClientesusu_codigo: TIntegerField;
    QClientessuc_codigo: TIntegerField;
    dsClientes: TDataSource;
    QClientescli_codigo: TIntegerField;
    QClientescli_direccion1: TStringField;
    QClientescli_direccion2: TStringField;
    QClientescli_localidad: TStringField;
    Label16: TLabel;
    DBEdit17: TDBEdit;
    QClientescli_balance_ptos: TBCDField;
    QClientescli_balance_mto: TBCDField;
    QClientescli_puntos_principal: TBCDField;
    QClientescli_monto_principal: TBCDField;
    QClientescli_puntos_depen: TBCDField;
    QClientescli_monto_depen: TBCDField;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    QSucursalalm_codigo: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    dsSuc: TDataSource;
    Label36: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    QBonos: TADOQuery;
    QBonosbon_numero: TStringField;
    QBonosbon_fecha: TDateTimeField;
    QBonosbon_monto: TBCDField;
    QBonosbon_status: TStringField;
    QBonossuc_codigo: TIntegerField;
    QBonosemp_codigo: TIntegerField;
    dsBonos: TDataSource;
    QListado: TADOQuery;
    QListadoemp_codigo: TIntegerField;
    QListadocli_nombre: TStringField;
    QListadocli_apellido: TStringField;
    QListadocli_cedula: TStringField;
    QListadocli_telefono: TStringField;
    QListadocli_celular: TStringField;
    QListadocli_status: TStringField;
    QListadocli_fecha_nacimiento: TDateTimeField;
    QListadocli_fecha_entrada: TDateTimeField;
    QListadocli_monto_acumulado: TBCDField;
    QListadocli_puntos_acumulado: TBCDField;
    QListadocli_ultima_compra: TDateTimeField;
    QListadousu_codigo: TIntegerField;
    QListadosuc_codigo: TIntegerField;
    QListadocli_codigo: TIntegerField;
    QListadocli_direccion1: TStringField;
    QListadocli_direccion2: TStringField;
    QListadocli_localidad: TStringField;
    QListadocli_balance_ptos: TBCDField;
    QListadocli_balance_mto: TBCDField;
    QListadocli_puntos_principal: TBCDField;
    QListadocli_monto_principal: TBCDField;
    QListadocli_puntos_depen: TBCDField;
    QListadocli_monto_depen: TBCDField;
    dsListado: TDataSource;
    Memo1: TMemo;
    Search: TQrySearchDlgADO;
    QClientescli_depende: TIntegerField;
    QListadocli_depende: TIntegerField;
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
    QListadocli_carnet_club: TStringField;
    QClientescli_carnet_club: TStringField;
    procedure FormPaint(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure QClientesBeforePost(DataSet: TDataSet);
    procedure QClientesAfterPost(DataSet: TDataSet);
    procedure btInsertClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btCloseClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btFindClick(Sender: TObject);
    procedure btPostClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure dsClientesStateChange(Sender: TObject);
    procedure QClientesNewRecord(DataSet: TDataSet);
    procedure btBonoClick(Sender: TObject);
    procedure btDepenClick(Sender: TObject);
    procedure DBGrid6DblClick(Sender: TObject);
    procedure QClientescli_cedulaChange(Sender: TField);
    procedure QClientescli_carnet_clubChange(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure selecletra(l : string);
  end;

var
  frmClientesClub: TfrmClientesClub;

implementation

uses SIGMA00, SIGMA01, PVENTA147;

{$R *.dfm}

procedure TfrmClientesClub.FormPaint(Sender: TObject);
begin
  Top := 10;
end;

procedure TfrmClientesClub.FormActivate(Sender: TObject);
begin
  if not QClientes.Active then
  begin
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;

    QClientes.Parameters.ParamByName('cli').Value := -1;
    QClientes.Open;

    QBonos.Open;

    QListado.SQL.Add('and cli_nombre like '+#39+'%'+#39);
    QListado.SQL.Add('order by cli_nombre');
    QListado.Open;
  end;
end;

procedure TfrmClientesClub.selecletra(l: string);
begin
  if not btodos.Down then
  begin
    QListado.Close;
    QListado.SQL.Clear;
    QListado.SQL := memo1.Lines;
    QListado.SQL.Add('and cli_nombre like '+#39+l+'%'+#39);
    QListado.SQL.Add('order by cli_nombre');
    QListado.open;
  end
  else
  begin
    QListado.Close;
    QListado.SQL.Clear;
    QListado.SQL := memo1.Lines;
    QListado.SQL.Add('and cli_nombre like '+#39+'%'+#39);
    QListado.SQL.Add('order by cli_nombre');
    QListado.open;
  end;
end;

procedure TfrmClientesClub.FormCreate(Sender: TObject);
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
  memo1.Lines := QListado.SQL;
end;

procedure TfrmClientesClub.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmClientesClub.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    if ActiveControl.ClassType <> TDBGrid then
    begin
      perform(wm_nextdlgctl, 0, 0);
      key := #0;
    end;
  end;
end;

procedure TfrmClientesClub.SpeedButton1Click(Sender: TObject);
begin
  selecletra((sender as TSpeedButton).Caption);
end;

procedure TfrmClientesClub.QClientesBeforePost(DataSet: TDataSet);
begin
  if QClientescli_nombre.isnull then
  begin
    showmessage('DEBE ESPECIFICAR EL NOMBRE');
    Abort;
  end;
  if QClientescli_cedula.isnull then
  begin
    showmessage('DEBE ESPECIFICAR LA CEDULA');
    Abort;
  end;
  if QClientescli_carnet_club.isnull then
  begin
    showmessage('DEBE ESPECIFICAR EL NUMERO DE CARNET');
    Abort;
  end;
  if QClientes.State = dsInsert then
  begin
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select isnull(max(cli_codigo),0) as maximo');
    dm.Query1.sql.add('from cliente_club');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.open;
    QClientescli_codigo.value := dm.Query1.fieldbyname('maximo').asinteger + 1;
  end;
end;

procedure TfrmClientesClub.QClientesAfterPost(DataSet: TDataSet);
begin
  QClientes.UpdateBatch;
end;

procedure TfrmClientesClub.btInsertClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  DBEdit3.setfocus;
  QClientes.insert;
end;

procedure TfrmClientesClub.btEditClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  DBEdit3.setfocus;
  QClientes.Edit;
end;

procedure TfrmClientesClub.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmClientesClub.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QClientes.delete;
end;

procedure TfrmClientesClub.btFindClick(Sender: TObject);
begin
  Search.Title := 'Listado de Clientes';
  Search.ResultField := 'cli_codigo';
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Carnet');
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Apellido');
  Search.AliasFields.Add('Código');
  Search.query.clear;
  Search.query.add('select cli_carnet_club, cli_nombre,');
  Search.query.add('cli_apellido, cli_codigo');
  Search.query.add('from cliente_club');
  Search.query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  if search.execute then
  begin
    QClientes.Close;
    QClientes.Parameters.ParamByName('cli').Value := StrToInt(Trim(Search.ValueField));
    QClientes.Open;
  end;
end;

procedure TfrmClientesClub.btPostClick(Sender: TObject);
begin
  QClientes.Post;
end;

procedure TfrmClientesClub.btCancelClick(Sender: TObject);
begin
  QClientes.Cancel;
end;

procedure TfrmClientesClub.dsClientesStateChange(Sender: TObject);
begin
  btInsert.enabled   := dsClientes.State = dsbrowse;
  btEdit.enabled     := btInsert.enabled;
  btDelete.enabled   := btInsert.enabled;
  btPost.enabled     := not btInsert.enabled;
  btCancel.enabled   := not btInsert.enabled;
  btFind.enabled     := btInsert.enabled;
  btDepen.Enabled    := not btInsert.enabled;
  DBEdit4.Enabled    := dsClientes.State = dsInsert;
  DBEdit2.Enabled    := dsClientes.State = dsInsert;
end;

procedure TfrmClientesClub.QClientesNewRecord(DataSet: TDataSet);
begin
  QClientesemp_codigo.Value := dm.vp_cia;
  QClientescli_status.Value := 'ACT';
  QClientessuc_codigo.Value := QSucursalsuc_codigo.Value;
  QClientescli_fecha_entrada.Value := date;
  QClientescli_balance_ptos.Value := 0;
  QClientescli_balance_mto.Value := 0;
  QClientescli_puntos_principal.Value := 0;
  QClientescli_monto_principal.Value := 0;
  QClientescli_puntos_depen.Value := 0;
  QClientescli_monto_depen.Value := 0;
end;

procedure TfrmClientesClub.btBonoClick(Sender: TObject);
var
  tj : string;
begin
  if strtofloat(format('%10.2F',[QClientescli_balance_mto.value])) > 0 then
  begin
    tj := QClientescli_carnet_club.value;
    application.createform(tfrmBono, frmBono);
    frmBono.lbNombre.Caption := QClientescli_nombre.Value + ' ' + QClientescli_apellido.Value;
    frmBono.lbMonto.Caption  := dm.numero2Letras(StrToFloat(Format('%10.2F',[QClientescli_balance_mto.value])));
    frmBono.QBono.open;
    frmBono.QBono.insert;
    frmBono.ShowModal;
    frmBono.Release;
    QBonos.close;
    QBonos.open;
    QClientes.close;
    QClientes.open;
    QClientes.locate('cli_carnet_club',tj,[]);
  end
  else
    showmessage('NO PUEDE GENERAR BONO');
end;

procedure TfrmClientesClub.btDepenClick(Sender: TObject);
begin
  Search.Query.clear;
  Search.AliasFields.clear;
  Search.Title := 'Club super Yoma';
  Search.ResultField := 'cli_carnet_club';
  Search.Query.add('select cli_Nombre, cli_Apellido, cli_carnet_club');
  Search.Query.add('from Cliente_Club');
  Search.AliasFields.Add('Nombres');
  Search.AliasFields.Add('Apellidos');
  Search.AliasFields.Add('Tarjeta');
  if Search.execute then
     QClientescli_depende.value := StrToInt(Search.valuefield);
end;

procedure TfrmClientesClub.DBGrid6DblClick(Sender: TObject);
begin
  QClientes.Close;
  QClientes.Parameters.ParamByName('cli').Value := QListadocli_codigo.Value;
  QClientes.Open;
  PageControl1.ActivePageIndex := 0;
end;

procedure TfrmClientesClub.QClientescli_cedulaChange(Sender: TField);
begin
  if not QClientescli_cedula.IsNull then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select count(*) as cant from cliente_club');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cli_cedula = :ced');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('ced').Value := QClientescli_cedula.AsString;
    dm.Query1.Open;
    if dm.Query1.FieldByName('cant').AsInteger > 0 then
    begin
      MessageDlg('ESTA CEDULA YA EXISTE',mtError,[mbok],0);
      QClientescli_cedula.Clear;
      Abort;
    end;
  end;
end;

procedure TfrmClientesClub.QClientescli_carnet_clubChange(Sender: TField);
begin
  if not QClientescli_carnet_club.IsNull then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select count(*) as cant from cliente_club');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cli_carnet_club = :club');
    dm.Query1.Parameters.ParamByName('emp').Value  := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('club').Value := QClientescli_carnet_club.AsString;
    dm.Query1.Open;
    if dm.Query1.FieldByName('cant').AsInteger > 0 then
    begin
      MessageDlg('ESTE NUMERO DE CARNET YA EXISTE',mtError,[mbok],0);
      QClientescli_carnet_club.clear;
      Abort;
    end;
  end;
end;

end.
