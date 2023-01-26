unit PVenta236;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DBCtrls, ComCtrls, ExtCtrls, DB, ADODB,
  frxClass, frxDBSet, Grids, DBGrids, Mask, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit,
  cxCurrencyEdit, QuerySearchDlgADO, dxmdaset;

type
  TFrmLiquidacionTickets = class(TForm)
    Panel1: TPanel;
    Label6: TLabel;
    btnFichas: TSpeedButton;
    Label7: TLabel;
    btnClientes: TSpeedButton;
    Label12: TLabel;
    btVendedor: TSpeedButton;
    lblFicha: TLabel;
    tFicha: TEdit;
    edCliente: TEdit;
    tCliente: TEdit;
    tVendedor: TEdit;
    Label13: TLabel;
    Label1: TLabel;
    Panel2: TPanel;
    btBuscarTicket: TBitBtn;
    btClose: TBitBtn;
    btnGrabar: TBitBtn;
    btnEliminarLinea: TBitBtn;
    btnLimpiar: TBitBtn;
    DBGrid_1: TDBGrid;
    Rpt_Liq_Ticket: TfrxReport;
    DB_Liq_Ticket: TfrxDBDataset;
    qLiqTicket: TADOQuery;
    qLiqTicketVENDEDOR: TStringField;
    qLiqTicketTOTAL: TCurrencyField;
    qLiqTicketTOTAL_LET: TStringField;
    qLiqTicketCODIGO: TStringField;
    qLiqTicketPRODUCTO: TStringField;
    qLiqTicketCANTIDAD: TCurrencyField;
    qLiqTicketPRECIO: TCurrencyField;
    qLiqTicketIMPORTE: TCurrencyField;
    qLiqTicketFECHA: TDateField;
    qLiqTicketNUM: TIntegerField;
    qLiqTicketFICHA: TStringField;
    qTicketsTransp: TADOQuery;
    dsqTicketsTransp: TDataSource;
    qTicketsTranspemp_codigo: TIntegerField;
    qTicketsTranspsuc_codigo: TIntegerField;
    qTicketsTranspven_codigo: TIntegerField;
    qTicketsTranspnumero_ticket: TIntegerField;
    qTicketsTranspfecha_ticket: TDateField;
    qTicketsTranspficha_id: TIntegerField;
    qTicketsTranspTotalImporte: TCurrencyField;
    qTicketsTranspTotalItbis: TCurrencyField;
    qTicketsTranspstatus_ticket: TStringField;
    qTicketsTranspusu_codigo: TStringField;
    qTicketsTranspfecha_crea: TDateTimeField;
    qTicketsTranspusu_cod_mod: TStringField;
    qTicketsTranspfecha_mod: TDateTimeField;
    DBEdt_NumLiq: TDBEdit;
    EdtDate_Fecha: TcxDBDateEdit;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    QSucursalalm_codigo: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    QSucursalsuc_direccion: TStringField;
    QSucursalsuc_localidad: TStringField;
    QSucursalsuc_telefono: TStringField;
    QSucursalsuc_rnc: TStringField;
    dsSuc: TDataSource;
    qDetTicketTransp: TADOQuery;
    ds_DetTicketTransp: TDataSource;
    pnl1: TPanel;
    lblSubTotal: TLabel;
    CEdt_SubTotal: TcxCurrencyEdit;
    CEdt_Itbis: TcxCurrencyEdit;
    lblItbis: TLabel;
    lblTotal: TLabel;
    CEdt_Total: TcxCurrencyEdit;
    qTicketsTranspSubTotal: TCurrencyField;
    edtVendedor: TEdit;
    edtFicha: TEdit;
    Search: TQrySearchDlgADO;
    qBuscarProd: TADOQuery;
    MD_Detalle: TdxMemData;
    MD_Detalleprod_codigo: TIntegerField;
    MD_Detallecliente_id: TIntegerField;
    MD_Detalleprod_roriginal: TStringField;
    MD_Detalleprod_rfabric: TStringField;
    MD_Detallepro_costo: TCurrencyField;
    MD_Detalleprod_precio: TCurrencyField;
    MD_Detalledet_cantidad: TCurrencyField;
    MD_Detalledet_itbis: TCurrencyField;
    MD_Detalledet_importe: TCurrencyField;
    MD_DetalleDET_CONITBIS: TStringField;
    MD_Detallefecha: TDateField;
    MD_Detalleusu_codigo: TStringField;
    MD_Detalleusu_cod_mod: TStringField;
    MD_Detallefecha_mod: TDateTimeField;
    MD_Detallepro_nombre: TStringField;
    MD_DetalleClienteN: TStringField;
    DBLookupComboBox2: TDBLookupComboBox;
    MD_DetalleESTATUS: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure Totalizar;
    procedure Limpiar;
    procedure qTicketsTranspNewRecord(DataSet: TDataSet);
    procedure btBuscarTicketClick(Sender: TObject);
    procedure btnClientesClick(Sender: TObject);
    procedure btnFichasClick(Sender: TObject);
    procedure btVendedorClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtVendedorChange(Sender: TObject);
    procedure edClienteChange(Sender: TObject);
    procedure edtFichaChange(Sender: TObject);
    procedure BuscarProductos;
    procedure tClienteChange(Sender: TObject);
    procedure DBGrid_1CellClick(Column: TColumn);
    procedure MD_DetalleBeforePost(DataSet: TDataSet);
    procedure MD_DetalleAfterPost(DataSet: TDataSet);
    procedure DBGrid_1KeyPress(Sender: TObject; var Key: Char);
    procedure btnLimpiarClick(Sender: TObject);
    procedure btnEliminarLineaClick(Sender: TObject);
    procedure btnGrabarClick(Sender: TObject);
    procedure qTicketsTranspAfterEdit(DataSet: TDataSet);
  private
    vl_sel, vl_num:  Integer;
    vl_status :String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLiquidacionTickets: TFrmLiquidacionTickets;

implementation

uses SIGMA01, DateUtils, Math;

{$R *.dfm}

procedure TFrmLiquidacionTickets.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
end;

procedure TFrmLiquidacionTickets.btCloseClick(Sender: TObject);
begin
FrmLiquidacionTickets.Close;
end;

procedure TFrmLiquidacionTickets.Totalizar;
begin
CEdt_SubTotal.Value := 0;
CEdt_Itbis.Value    := 0;
CEdt_Total.Value    := 0;
with MD_Detalle do begin
DisableControls;
First;
while not Eof do begin
CEdt_SubTotal.Value := CEdt_SubTotal.Value + (MD_Detalledet_cantidad.Value* MD_Detalleprod_precio.Value);
CEdt_Itbis.Value    := CEdt_Itbis.Value + MD_Detalledet_itbis.Value;
CEdt_Total.Value    := CEdt_Total.Value + MD_Detalledet_importe.Value;
Next;
end;
EnableControls;
MD_Detalle.RecNo := vl_sel;
qTicketsTranspSubTotal.Value     := CEdt_SubTotal.Value;
qTicketsTranspTotalItbis.Value   := CEdt_Itbis.Value;
qTicketsTranspTotalImporte.Value := CEdt_Total.Value;
end;
end;

procedure TFrmLiquidacionTickets.Limpiar;
begin
qTicketsTransp.Close;
MD_Detalle.Close;
tVendedor.Clear;
edtVendedor.Clear;
tCliente.Clear;
edCliente.Clear;
tFicha.Clear;
edtFicha.Clear;
CEdt_SubTotal.Clear;
CEdt_Itbis.Clear;
CEdt_Total.Clear;
vl_status := 'I';
end;

procedure TFrmLiquidacionTickets.qTicketsTranspNewRecord(
  DataSet: TDataSet);
begin
qTicketsTranspemp_codigo.Value    := DM.vp_cia;
qTicketsTranspfecha_ticket.Value  := DM.getFechaBDA;
qTicketsTranspusu_codigo.Value    := DM.vp_usuario;
qTicketsTranspstatus_ticket.Value := 'EMI';


MD_Detalle.Open;


end;

procedure TFrmLiquidacionTickets.btBuscarTicketClick(Sender: TObject);
var
  Suc : integer;
begin
  Suc := DBLookupComboBox2.KeyValue;

  Search.AliasFields.Clear;
  Search.AliasFields.Add('Numero');
  Search.AliasFields.Add('Fecha');

  Search.Query.clear;
  Search.Query.add('select numero_ticket Numero, cast(cast(fecha_ticket as char(11)) as datetime) Fecha');
  Search.Query.add('from Ticket_Transp');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.Query.add('and suc_codigo = '+IntToStr(Suc));
  Search.Query.add('and numero_ticket in (select numero_ticket from det_ticket_transp where status_ticket = '+#39+'EMI'+#39);
  Search.Query.add(')');
  Search.ResultField := 'Numero';
  Search.Title := 'Liquidacion de Tickets';
  if Search.execute then
  begin
    qTicketsTransp.Close;
    qTicketsTransp.Parameters.parambyname('NUM').Value := strtoint(Search.ValueField);
    qTicketsTransp.Parameters.parambyname('SUC').Value := Suc;
    qTicketsTransp.Parameters.parambyname('EMP').Value := DM.vp_cia;
    qTicketsTransp.Open;
    qTicketsTransp.Edit;
    vl_status := 'E';
    qTicketsTransp.FieldByName('SubTotal').Value      := 0;
    qTicketsTransp.FieldByName('TotalItbis').Value    := 0;
    qTicketsTransp.FieldByName('TotalImporte').Value  := 0;
    vl_num := strtoint(Search.ValueField);
    edtVendedor.Text := qTicketsTranspven_codigo.Text;
    edtFicha.Text    := qTicketsTranspficha_id.Text;


      //Detalle
    MD_Detalle.Close;
    MD_Detalle.Open;
    with qDetTicketTransp do begin
    Close;
    SQL.Clear;
    SQL.Add('select DT.prod_codigo, DT.cliente_id, DT.prod_roriginal, DT.prod_rfabric, DT.pro_costo,');
    SQL.Add('DT.prod_precio, DT.det_cantidad, DT.det_itbis, DT.det_importe, DT.DET_CONITBIS, DT.fecha,');
    SQL.Add('DT.usu_codigo, DT.usu_cod_mod, DT.fecha_mod, P.pro_nombre, C.cli_nombre CLIENTEN, DT.STATUS_TICKET ESTATUS');
    SQL.Add('from Det_Ticket_Transp DT');
    SQL.Add('INNER JOIN Productos P ON DT.emp_codigo = P.emp_codigo AND DT.prod_codigo = P.pro_codigo');
    SQL.Add('INNER JOIN Clientes C ON DT.emp_codigo = C.emp_codigo AND DT.cliente_id = C.cli_codigo');
    SQL.Add('where DT.emp_codigo = :EMP AND DT.suc_codigo = :SUC AND DT.NUMERO_TICKET = :NUM');
    SQL.Add('AND DT.STATUS_TICKET <> '+QuotedStr('FAC'));
    SQL.Add('ORDER BY DT.CLIENTE_ID, P.PRO_NOMBRE');
    Parameters.parambyname('NUM').Value := strtoint(Search.ValueField);
    Parameters.parambyname('SUC').Value := Suc;
    Parameters.parambyname('EMP').Value := DM.vp_cia;
    Open;
    IF NOT IsEmpty THEN BEGIN
    qDetTicketTransp.First;
    while not qDetTicketTransp.Eof do begin
    MD_Detalle.Insert;
    MD_Detalleprod_codigo.Value := qDetTicketTransp.FieldByName('prod_codigo').Value;
    MD_Detallecliente_id.Value := qDetTicketTransp.FieldByName('cliente_id').Value;
    MD_Detalleprod_roriginal.Value := qDetTicketTransp.FieldByName('prod_roriginal').Value;
    MD_Detalleprod_rfabric.Value := qDetTicketTransp.FieldByName('prod_rfabric').Value;
    MD_Detallepro_costo.Value := qDetTicketTransp.FieldByName('pro_costo').Value;
    MD_Detalleprod_precio.Value := qDetTicketTransp.FieldByName('prod_precio').Value;
    MD_Detalledet_cantidad.Value := qDetTicketTransp.FieldByName('det_cantidad').Value;
    MD_Detalledet_itbis.Value   := qDetTicketTransp.FieldByName('det_itbis').Value;
    MD_Detalledet_importe.Value := qDetTicketTransp.FieldByName('det_importe').Value;
    MD_DetalleDET_CONITBIS.Value := qDetTicketTransp.FieldByName('DET_CONITBIS').Value;
    MD_Detallefecha.Value := qDetTicketTransp.FieldByName('fecha').Value;
    MD_Detalleusu_codigo.Value  := qDetTicketTransp.FieldByName('usu_codigo').Value;
    if not qDetTicketTransp.FieldByName('usu_cod_mod').IsNull then
    MD_Detalleusu_cod_mod.Value := qDetTicketTransp.FieldByName('usu_cod_mod').Value;
    if not qDetTicketTransp.FieldByName('fecha_mod').IsNull then
    MD_Detallefecha_mod.Value   := qDetTicketTransp.FieldByName('fecha_mod').Value;
    MD_Detallepro_nombre.Value  := qDetTicketTransp.FieldByName('pro_nombre').Value;
    MD_DetalleClienteN.Value    := qDetTicketTransp.FieldByName('CLIENTEN').Value;
    MD_DetalleESTATUS.Value    := qDetTicketTransp.FieldByName('ESTATUS').Value;
    MD_Detalle.Post;
    qDetTicketTransp.Next;
    end;
    Totalizar;
    end;
    end;
    end;

end;

procedure TFrmLiquidacionTickets.btnClientesClick(Sender: TObject);
begin
  Search.Query.clear;
  Search.Query.add('select substring(cli_nombre,1,50) as cli_nombre, cli_codigo');
  Search.Query.add('from clientes');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.ResultField := 'cli_codigo';
  Search.Title := 'Listado de Clientes';
  if Search.execute then
  begin
    edCliente.Text := Search.ValueField;
  end;
  end;


procedure TFrmLiquidacionTickets.btnFichasClick(Sender: TObject);
begin
 Search.Query.clear;
  Search.Query.add('select substring(ficha_nombre,1,50) as ficha_nombre, ficha_id');
  Search.Query.add('from FICHAS_TRANSP');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.ResultField := 'ficha_id';
  Search.Title := 'Listado de Fichas Transporte';
  if Search.execute then
  begin
    edtFicha.Text := Search.ValueField;
  end;
end;

procedure TFrmLiquidacionTickets.btVendedorClick(Sender: TObject);
begin
  Search.Query.clear;
  Search.Query.add('select substring(ven_nombre,1,50) as ven_nombre, ven_codigo');
  Search.Query.add('from vendedores');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.ResultField := 'ven_Codigo';
  Search.Title := 'Listado de Vendedores';
  if Search.execute then
  begin
    edtVendedor.Text := Search.ValueField;
  end;
end;

procedure TFrmLiquidacionTickets.FormShow(Sender: TObject);
begin
with QSucursal do begin
  Close;
  Parameters.ParamByName('emp').Value := dm.vp_cia;
  Parameters.ParamByName('usu').Value := dm.Usuario;
  Open;
  First;
  DBLookupComboBox2.KeyValue := QSucursalsuc_codigo.Value;
  end;

  
Limpiar;
    qTicketsTransp.Close;
    qTicketsTransp.Parameters.parambyname('num').Value := -1;
    qTicketsTransp.Parameters.parambyname('suc').Value    := -1;
    qTicketsTransp.Parameters.parambyname('emp').Value    := DM.vp_cia;
    qTicketsTransp.Open;
    qTicketsTransp.Insert;
end;

procedure TFrmLiquidacionTickets.edtVendedorChange(Sender: TObject);
begin
IF Trim(edtVendedor.Text)<>'' THEN BEGIN
qTicketsTranspven_codigo.Value := StrToInt(edtVendedor.Text);
dm.Query1.Close;
dm.Query1.SQL.Clear;
dm.Query1.SQL.Add('select UPPER(RTRIM(ven_nombre)) VENDEDOR FROM VENDEDORES WHERE emp_codigo = '+
QuotedStr(IntToStr(DM.vp_cia))+' AND ven_codigo = '+QuotedStr(edtVendedor.Text));
dm.Query1.Open;
IF NOT DM.Query1.IsEmpty THEN
tVendedor.Text := DM.Query1.FieldbyName('VENDEDOR').AsString;
end
ELSE
tVendedor.Clear;
end;

procedure TFrmLiquidacionTickets.edClienteChange(Sender: TObject);
begin
IF Trim(edCliente.Text)<>'' THEN BEGIN
dm.Query1.Close;
dm.Query1.SQL.Clear;
dm.Query1.SQL.Add('select UPPER(RTRIM(cli_nombre)) CLIENTEN FROM CLIENTES WHERE CLI_CODIGO = '+QuotedStr(edCliente.Text));
dm.Query1.Open;
IF NOT DM.Query1.IsEmpty THEN
tCliente.Text := DM.Query1.FieldbyName('CLIENTEN').AsString;
end
ELSE
tCliente.Clear;
end;

procedure TFrmLiquidacionTickets.edtFichaChange(Sender: TObject);
begin
IF Trim(edtFicha.Text)<>'' THEN BEGIN
qTicketsTranspficha_id.Value := StrToInt(edtFicha.Text);
dm.Query1.Close;
dm.Query1.SQL.Clear;
dm.Query1.SQL.Add('select UPPER(RTRIM(ficha_nombre)) Nombre FROM fichas_transp WHERE ficha_id = '+QuotedStr(edtFicha.Text));
dm.Query1.Open;
IF NOT DM.Query1.IsEmpty THEN
tFicha.Text := DM.Query1.FieldbyName('Nombre').AsString;
end
ELSE
tFicha.Clear;
end;

procedure TFrmLiquidacionTickets.BuscarProductos;
begin
with qBuscarProd do begin
  Close;
  Parameters.ParamByName('emp').Value := DM.vp_cia;
  Parameters.ParamByName('cli').Value := StrToInt(edCliente.Text);
  Open;
  if not IsEmpty then begin
  qBuscarProd.First;
  while not qBuscarProd.Eof do begin
  if not MD_Detalle.Locate('cliente_id;prod_codigo', VarArrayOf([qBuscarProd.fieldbyname('cli_codigo').Text,qBuscarProd.fieldbyname('pro_codigo').Text ]), [loPartialKey])
          then begin
  MD_Detalle.Append;
  MD_Detalleprod_codigo.Value      := qBuscarProd.fieldbyname('pro_codigo').Value;
  MD_Detalleprod_roriginal.Value   := qBuscarProd.fieldbyname('pro_roriginal').Value;
  MD_Detalleprod_rfabric.Value     := qBuscarProd.fieldbyname('pro_rfabric').Value;
  MD_Detallepro_costo.Value        := qBuscarProd.fieldbyname('pro_costo').Value;
  MD_Detalleprod_precio.Value      := qBuscarProd.fieldbyname('precio').Value;
  MD_Detalledet_cantidad.Value     := qBuscarProd.fieldbyname('cantidad').Value;
  MD_Detalledet_itbis.Value        := qBuscarProd.fieldbyname('det_itbis').Value;
  MD_Detalledet_importe.Value      := qBuscarProd.fieldbyname('det_importe').Value;
  MD_Detalledet_conitbis.Value     := qBuscarProd.fieldbyname('pro_itbis').Value;
  MD_Detalleusu_codigo.Value       := DM.vp_usuario;
  MD_Detallefecha.Value            := EdtDate_Fecha.Date;
  MD_Detallepro_nombre.Value       := qBuscarProd.fieldbyname('pro_nombre').Value;
  MD_DetalleClienteN.Value         := qBuscarProd.fieldbyname('cli_nombre').Value;
  MD_Detallecliente_id.Value       := qBuscarProd.FieldByName('cli_codigo').Value;
  MD_DetalleESTATUS.Value          := 'EMI';
  MD_Detalle.Post;
  end
  else
  qBuscarProd.Next;
  end;
  end;
  DBGrid_1.SelectedIndex := 2;
  end;
end;

procedure TFrmLiquidacionTickets.tClienteChange(Sender: TObject);
begin
if tCliente.Text <> '' then
BuscarProductos;
end;

procedure TFrmLiquidacionTickets.DBGrid_1CellClick(Column: TColumn);
begin
DBGrid_1.SelectedIndex := 2;
MD_Detalle.Edit;
end;

procedure TFrmLiquidacionTickets.MD_DetalleBeforePost(DataSet: TDataSet);
begin
if MD_Detalle.RecordCount > 0 then begin
vl_sel := MD_Detalle.RecNo;
MD_Detalledet_importe.Value := MD_Detalleprod_precio.Value * MD_DetalleDet_cantidad.Value;
end;
end;

procedure TFrmLiquidacionTickets.MD_DetalleAfterPost(DataSet: TDataSet);
begin
Totalizar;
end;

procedure TFrmLiquidacionTickets.DBGrid_1KeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then begin
If MD_Detalle.State in [dsedit, dsinsert] then
MD_Detalle.Post;
end;
end;

procedure TFrmLiquidacionTickets.btnLimpiarClick(Sender: TObject);
begin
    Limpiar;
    qTicketsTransp.Close;
    qTicketsTransp.Parameters.parambyname('num').Value := -1;
    qTicketsTransp.Parameters.parambyname('suc').Value    := -1;
    qTicketsTransp.Parameters.parambyname('emp').Value    := DM.vp_cia;
    qTicketsTransp.Open;
    qTicketsTransp.Insert;
end;

procedure TFrmLiquidacionTickets.btnEliminarLineaClick(Sender: TObject);
begin
if MD_Detalle.RecordCount > 0 then begin
if MessageDlg('Desea Eliminar el registro'+Char(13)+MD_Detallepro_nombre.Text+char(13)+
             MD_DetalleClienteN.Text,mtWarning,[mbYes,mbno],0)=mryes then begin
             MD_Detalle.Delete;
             Totalizar;
             end;
end;
end;

procedure TFrmLiquidacionTickets.btnGrabarClick(Sender: TObject);
begin
if qTicketsTranspven_codigo.Value = 0 then begin
  ShowMessage('Debes indicar el Vendedor');
  edtVendedor.SetFocus;
  Abort;
end;

if qTicketsTranspficha_id.Value = 0 then begin
  ShowMessage('Debes indicar la Ficha');
  edtVendedor.SetFocus;
  Abort;
end;

if MD_Detalle.RecordCount = 0 then begin
  ShowMessage('Debes los tickets de los clientes');
  Abort;
end;

if qTicketsTransp.State in [dsinsert] then begin
with dm.Query1 do begin
Close;
SQL.Clear;
SQL.Add('SELECT ISNULL(MAX(NUMERO_TICKET),0)+1 NUM FROM TICKET_TRANSP');
SQL.Add('WHERE EMP_CODIGO = :EMP AND SUC_CODIGO = :SUC');
Parameters[0].Value := DM.vp_cia;
Parameters[1].Value := DBLookupComboBox2.KeyValue;
Open;
vl_num := FieldByName('NUM').Value;
Close;
end;
end;

IF qTicketsTranspnumero_ticket.Value = 0 THEN
qTicketsTranspnumero_ticket.Value := vl_num;
qTicketsTranspsuc_codigo.Value := DBLookupComboBox2.KeyValue;
qTicketsTransp.Post;
qTicketsTransp.UpdateBatch();

//Grabar Detalles
with MD_Detalle do begin
DisableControls;
First;
qDetTicketTransp.Close;
qDetTicketTransp.SQL.Clear;
qDetTicketTransp.SQL.Add('delete Det_Ticket_Transp');
qDetTicketTransp.SQL.Add('where emp_codigo = :emp and suc_codigo = :suc and numero_ticket = :num and status_ticket = '+QuotedStr('EMI'));
qDetTicketTransp.Parameters[0].Value := qTicketsTranspemp_codigo.Value;
qDetTicketTransp.Parameters[1].Value := qTicketsTranspsuc_codigo.Value;
qDetTicketTransp.Parameters[2].Value := qTicketsTranspnumero_ticket.Value;
qDetTicketTransp.ExecSQL;

while not Eof DO begin
qDetTicketTransp.Close;
qDetTicketTransp.SQL.Clear;
qDetTicketTransp.SQL.Add('insert into Det_Ticket_Transp');
qDetTicketTransp.SQL.Add('(emp_codigo, suc_codigo, numero_ticket, prod_codigo, cliente_id, prod_roriginal,');
qDetTicketTransp.SQL.Add('prod_rfabric, pro_costo, prod_precio, det_cantidad, det_itbis, det_importe, DET_CONITBIS,');
qDetTicketTransp.SQL.Add('fecha, status_ticket, usu_codigo, usu_cod_mod, fecha_mod, fac_forma, tfa_codigo, fac_numero)');
qDetTicketTransp.SQL.Add('SELECT :emp, :suc, :num, :pro, :cli, :proro, :prorf, :costo, :precio, :cant, :itbis, :importe,');
qDetTicketTransp.SQL.Add(':conitbis, :fecha, :estatus, :usu, :usu_mod, :fecha_mod, '+QuotedStr('A')+', 0, 0');
qDetTicketTransp.Parameters[0].Value := qTicketsTranspemp_codigo.Value;
qDetTicketTransp.Parameters[1].Value := qTicketsTranspsuc_codigo.Value;
qDetTicketTransp.Parameters[2].Value := qTicketsTranspnumero_ticket.Value;
qDetTicketTransp.Parameters[3].Value := MD_Detalleprod_codigo.Value;
qDetTicketTransp.Parameters[4].Value := MD_Detallecliente_id.Value;
qDetTicketTransp.Parameters[5].Value := MD_Detalleprod_roriginal.Value;
qDetTicketTransp.Parameters[6].Value := MD_Detalleprod_rfabric.Value;
qDetTicketTransp.Parameters[7].Value := MD_Detallepro_costo.Value;
qDetTicketTransp.Parameters[8].Value := MD_Detalleprod_precio.Value;
qDetTicketTransp.Parameters[9].Value := MD_Detalledet_cantidad.Value;
qDetTicketTransp.Parameters[10].Value := MD_Detalledet_itbis.Value;
qDetTicketTransp.Parameters[11].Value := MD_Detalledet_importe.Value;
qDetTicketTransp.Parameters[12].Value := MD_DetalleDET_CONITBIS.Value;
qDetTicketTransp.Parameters[13].Value :=  MD_Detallefecha.Value;
qDetTicketTransp.Parameters[14].Value := 'EMI';
qDetTicketTransp.Parameters[15].Value := MD_Detalleusu_codigo.Value;
qDetTicketTransp.Parameters[16].Value := MD_Detalleusu_cod_mod.Value;
qDetTicketTransp.Parameters[17].Value := MD_Detallefecha_mod.Value;
qDetTicketTransp.ExecSQL;
MD_Detalle.Next;
end;
MD_Detalle.EnableControls;
end;

if MessageDlg('Registro Grabado Correctamente.....'+char(13)+
              'Desea Imprimir la Liquidacion?',mtWarning,[mbYes,mbno],0)=mryes then begin
with qLiqTicket do begin
Close;
Parameters.ParamByName('EMP').Value := dm.vp_cia;
Parameters.ParamByName('SUC').Value := DBLookupComboBox2.KeyValue;
Parameters.ParamByName('NUM').Value := vl_num;
Open;
IF not qLiqTicket.IsEmpty then
Rpt_Liq_Ticket.ShowReport(True);
end;
end;
btnLimpiarClick(Sender);
end;




procedure TFrmLiquidacionTickets.qTicketsTranspAfterEdit(
  DataSet: TDataSet);
begin
qTicketsTranspusu_cod_mod.Value := dm.vp_usuario;
qTicketsTranspfecha_mod.Value   := dm.getFechaBDA;
end;

end.
