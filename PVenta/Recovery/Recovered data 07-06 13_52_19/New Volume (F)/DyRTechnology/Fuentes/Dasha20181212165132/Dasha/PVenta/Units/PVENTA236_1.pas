unit PVENTA236;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, DBCtrls, Mask, ExtCtrls, DB,
  IBCustomDataSet, ADODB, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit, dxmdaset,
  QuerySearchDlgADO, frxClass, frxDBSet;

type
  TFrmLiquidacionTickets = class(TForm)
    Panel3: TPanel;
    Label9: TLabel;
    Label12: TLabel;
    btVendedor: TSpeedButton;
    Label11: TLabel;
    Label13: TLabel;
    tVendedor: TEdit;
    dbedtVEN_CODIGO: TDBEdit;
    dbedtNUMERO_TICKET: TDBEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    Grid: TDBGrid;
    Panel5: TPanel;
    btElimina: TSpeedButton;
    Label17: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    btGrabar: TBitBtn;
    btLimpiar: TBitBtn;
    btSalir: TBitBtn;
    QTicketTransp: TADOQuery;
    dsTicketTransp: TDataSource;
    QDetalle: TADOQuery;
    QTicketTranspEMP_CODIGO: TIntegerField;
    QTicketTranspSUC_CODIGO: TIntegerField;
    QTicketTranspVEN_CODIGO: TIntegerField;
    cxDBDateEdit1: TcxDBDateEdit;
    QTicketTranspNUMERO_TICKET: TIntegerField;
    QTicketTranspFECHA_TICKET: TDateField;
    QTicketTranspFICHA_ID: TIntegerField;
    QTicketTranspUSU_CODIGO: TStringField;
    dsDetalle: TDataSource;
    Label2: TLabel;
    edCliente: TEdit;
    btCliente: TSpeedButton;
    LBFicha: TLabel;
    dbedtPED_FICHA: TDBEdit;
    btFicha: TSpeedButton;
    edtFichaN: TEdit;
    edtClienteN: TEdit;
    QTicketTranspFECHA_CREA: TDateTimeField;
    QTicketTranspSTATUS_TICKET: TStringField;
    QTicketTranspUSU_COD_MOD: TStringField;
    QTicketTranspFECHA_MOD: TDateTimeField;
    MDDetalle: TdxMemData;
    MDDetallePROD_RORIGINAL: TStringField;
    MDDetalleDESCRIPCION: TStringField;
    MDDetalleDET_CANTIDAD: TCurrencyField;
    MDDetalleDET_PRECIO: TCurrencyField;
    MDDetallePRO_COSTO: TCurrencyField;
    MDDetallePROD_CODIGO: TIntegerField;
    MDDetallePROD_RFABRIB: TStringField;
    Search: TQrySearchDlgADO;
    MDDetalleDET_CONITBIS: TStringField;
    MDDetalleCLIENTE_ID: TIntegerField;
    Query1: TADOQuery;
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
    MDDetalleDET_IMPORTE: TCurrencyField;
    MDDetalleDET_ITBIS: TCurrencyField;
    MDDetallePRO_ITBIS: TCurrencyField;
    QTicketTranspSubTotal: TCurrencyField;
    QTicketTranspTotalItbis: TCurrencyField;
    QTicketTranspTotalImporte: TCurrencyField;
    MDDetalleCLIENTEN: TStringField;
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
    btnBuscaLiqTickets: TBitBtn;
    edtSubTotal: TEdit;
    edtItbis: TEdit;
    edtTotal: TEdit;
    MDDetalleFECHA: TDateField;
    procedure btVendedorClick(Sender: TObject);
    procedure btClienteClick(Sender: TObject);
    procedure btFichaClick(Sender: TObject);
    procedure edClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BuscarProductosAsignados;
    procedure QTicketTranspFICHA_IDGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure QTicketTranspVEN_CODIGOGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure QTicketTranspNewRecord(DataSet: TDataSet);
    procedure MDDetalleCalcFields(DataSet: TDataSet);
    procedure btLimpiarClick(Sender: TObject);
    procedure btEliminaClick(Sender: TObject);
    procedure btSalirClick(Sender: TObject);
    procedure btGrabarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnBuscaLiqTicketsClick(Sender: TObject);
    procedure Totaliza;
    procedure MDDetalleAfterPost(DataSet: TDataSet);
    procedure GridKeyPress(Sender: TObject; var Key: Char);
    procedure MDDetalleBeforePost(DataSet: TDataSet);
  private
  vl_importe, vl_itbis, vl_subtotal : Currency;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLiquidacionTickets: TFrmLiquidacionTickets;

implementation

uses SIGMA01, Math, DateUtils;

{$R *.dfm}

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
    QTicketTranspVEN_CODIGO.value := strtoint(Search.ValueField);
    dbedtVEN_CODIGO.setfocus;
  end;
end;

procedure TFrmLiquidacionTickets.btClienteClick(Sender: TObject);
begin
  Search.Query.clear;
  if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
  begin
    Search.Query.add('select substring(cli_nombre,1,50) as cli_nombre, cli_codigo');
    Search.ResultField := 'cli_codigo';
  end
  else
  begin
    Search.Query.add('select substring(cli_nombre,1,50) as cli_nombre, cli_referencia');
    Search.ResultField := 'cli_referencia';
  end;
  Search.Query.add('from clientes');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.Query.add('and cli_Status = '+#39+'ACT'+#39);
  Search.Title := 'Listado de clientes';
  if Search.execute then
  begin
    edCliente.text := search.valuefield;
    edCliente.setfocus;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select cli_codigo, cli_nombre');
    dm.Query1.sql.add('from clientes');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and cli_Status = '+#39+'ACT'+#39);
    if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
    begin
      dm.Query1.sql.add('and cli_codigo = :cli');
      dm.Query1.Parameters.parambyname('cli').Value := strtoint(search.valuefield);
    end
    else
    begin
      dm.Query1.sql.add('and cli_referencia = :cli');
      dm.Query1.Parameters.parambyname('cli').Value := search.valuefield;
    end;
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.open;
    edtClienteN.Text := dm.Query1.fieldbyname('cli_nombre').asstring;
    BuscarProductosAsignados;


  end;
end;

procedure TFrmLiquidacionTickets.btFichaClick(Sender: TObject);
begin
  Search.Query.clear;
  Search.Query.add('select substring(FICHA_nombre,1,50) as FICHA_nombre, ficha_id');
  Search.Query.add('from Fichas_Transp');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.ResultField := 'ficha_id';
  Search.Title := 'Listado de Ficha';
  if Search.execute then
  begin
    QTicketTranspficha_id.value := strtoint(Search.ValueField);
    dbedtVEN_CODIGO.setfocus;
  end;
end;

procedure TFrmLiquidacionTickets.edClienteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then
  begin
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select cli_referencia, cli_codigo, cli_nombre, cli_balance,');
    dm.Query1.sql.add('cli_limite, cli_precio, cli_descuento, ven_codigo, ');
    dm.Query1.sql.add('cli_direccion, cli_localidad, cli_telefono, cli_fax');
    dm.Query1.sql.add('from clientes');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and cli_Status = '+#39+'ACT'+#39);
    if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
    begin
      dm.Query1.sql.add('and cli_codigo = :cli');
      dm.Query1.Parameters.parambyname('cli').Value := strtoint(edCliente.text);
    end
    else
    begin
      dm.Query1.sql.add('and cli_referencia = :cli');
      dm.Query1.Parameters.parambyname('cli').Value := edCliente.text;
    end;
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.open;
    edtClienteN.Text := dm.Query1.fieldbyname('cli_nombre').asstring;
    if not MDDetalle.Locate('CLIENTE_ID',Trim(edCliente.Text),[]) then
    BuscarProductosAsignados ELSE
    BEGIN
    MDDetalle.EnableControls;
    Grid.SelectedIndex := 2;
    end;




  end;
  end;
procedure TFrmLiquidacionTickets.BuscarProductosAsignados;
begin

    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Add('SELECT CP.PRO_CODIGO, CP.CLP_PRECIO, P.pro_nombre, P.PRO_RORIGINAL,');
    Query1.SQL.Add('P.PRO_RFABRIC, P.pro_costo, P.pro_itbis, P.PRO_MONTOITBIS');
    Query1.SQL.Add('from CLIPRODUCTOS CP');
    Query1.SQL.Add('INNER JOIN PRODUCTOS P ON CP.emp_codigo = P.emp_codigo AND CP.pro_codigo = P.pro_codigo');
    Query1.SQL.Add('where CP.emp_codigo = :emp');
    Query1.SQL.Add('and CP.cli_codigo = :cli');
    Query1.Parameters.ParamByName('emp').Value := QTicketTranspEMP_CODIGO.Value;
    Query1.Parameters.ParamByName('cli').Value := StrToInt(edCliente.Text);
    Query1.Open;
    if not Query1.IsEmpty then begin
    Query1.First;
    while not Query1.Eof do begin
    MDDetalle.Append;
    MDDetallePROD_CODIGO.Value    := Query1.fieldbyname('PRO_CODIGO').AsInteger;
    MDDetalleDET_PRECIO.Value     := Query1.FIELDBYNAME('CLP_PRECIO').Value;
    MDDetalleDET_CANTIDAD.Value   := 1;
    MDDetalleCLIENTE_ID.Value     := StrToInt(edCliente.Text);
    MDDetalleCLIENTEN.Value       := Trim(edtClienteN.Text);
    MDDetalleDESCRIPCION.Value    := Query1.FIELDBYNAME('PRO_NOMBRE').Value;
    MDDetallePROD_RORIGINAL.Value := Query1.FIELDBYNAME('PRO_RORIGINAL').Value;
    IF NOT Query1.FIELDBYNAME('PRO_RFABRIC').IsNull THEN
    MDDetallePROD_RFABRIB.Value   := Query1.FIELDBYNAME('PRO_RFABRIC').Value;
    MDDetalleDET_CONITBIS.Value   := Query1.FIELDBYNAME('pro_itbis').Value;
    MDDetallePRO_COSTO.Value      := Query1.FIELDBYNAME('PRO_COSTO').Value;
    MDDetallePRO_ITBIS.Value      := Query1.FIELDBYNAME('PRO_MONTOITBIS').Value;
    MDDetalleDET_ITBIS.Value      := 0;
    MDDetalle.Post;
    Query1.Next;
    end;
    end;
end;

procedure TFrmLiquidacionTickets.QTicketTranspFICHA_IDGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  if not QTicketTranspFICHA_ID.isnull then
  begin
    Text := inttostr(QTicketTranspFICHA_ID.value);
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select ficha_nombre from Fichas_Transp');
    dm.Query1.sql.add('where emp_Codigo = :emp');
    dm.Query1.sql.add('and ficha_id = :fic');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('fic').Value := QTicketTranspFICHA_ID.value;
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      edtFichaN.text := ''
    else
      edtFichaN.text := dm.Query1.fieldbyname('ficha_nombre').asstring;
  end
  else
    edtFichaN.text := '';
end;

procedure TFrmLiquidacionTickets.QTicketTranspVEN_CODIGOGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  if not QTicketTranspVEN_CODIGO.isnull then
  begin
    Text := inttostr(QTicketTranspVEN_CODIGO.value);
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select ven_nombre from vendedores');
    dm.Query1.sql.add('where emp_Codigo = :emp');
    dm.Query1.sql.add('and ven_Codigo = :ven');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('ven').Value secs
[2019-07-06 17:32:32.882][00002E38][00002E3C][Always] StaleProcessPollTime=60000 msecs
[2019-07-06 17:32:32.882][00002E38][00002E3C][Always] TelemetryFlushInterval=300000
[2019-07-06 17:32:32.882][00002E38][00002E3C][Always] ProcessPoolSqlSatelliteGrowth=5
[2019-07-06 17:32:32.882][00002E38][00002E3C][Always] ProcessPoolRxJobGrowth=3
[2019-07-06 17:32:32.883][00002E38][00002E3C][Always] LaunchpadSecurityEnabled=1
[2019-07-06 17:32:32.883][00002E38][00002E3C][Always] KMP_AFFINITY=disabled
[2019-07-06 17:32:32.883][00002E38][00002E3C][Always] PackageManagementMode=0
[2019-07-06 17:32:32.884][00002E38][00002E3C][Always] PkgAdminsConfigFile=C:\Program Files\Microsoft SQL Server\MSSQL14.SQL2017\MSSQL\Binn\sqlrpkgconfig
[2019-07-06 17:32:32.884][00002E38][00002E3C][Always] PkgAdminsConfigDataFile=C:\Program Files\Microsoft SQL Server\MSSQL14.SQL2017\MSSQL\Binn\sqlrpkgconfigdata
[2019-07-06 17:32:32.884][00002E38][00002E3C][Always] InDatabaseHostPlatform=0
[2019-07-06 17:32:32.884][00002E38][00002E3C][Always] ---
[2019-07-06 17:32:32.900][00002E38][00002E3C][Always] SqlLicenseFlag=0
[2019-07-06 17:32:32.900][00002E38][00002E3C][Always] ScaleRJobCleaner.Start() successfully started thread 12280 [00002FF8].
[2019-07-06 17:32:32.901][00002E38][00002E3C][Always] ProcessPoolTrimmer.Start() successfully started thread 12284 [00002FFC].
[2019-07-06 17:32:32.902][00002E38][00002E3C][Always] StaleDirectoryCleaner.Start() successfully started thread 10300 [0000283C].
[2019-07-06 17:32:32.935][00002E38][00002FF8][Always] ScaleRStaleJobCleaner::Worker(0000022C90DDCA20) started successfully.
[2019-07-06 17:32:32.935][00002E38][00002FFC][Always] ProcessPoolTrimmer::Worker(0000022C90DDE1F0) started successfully.
[2019-07-06 17:32:32.948][00002E38][00002E3C][Always] ComputerName=JGSLPT001
[2019-07-06 17:32:32.948][00002E38][00002E3C][Always] SystemRoot=C:\WINDOWS
[2019-07-06 17:32:32.949][00002E38][00002E3C][Always] User=NT Service\MSSQLLaunchpad$SQL2017
[2019-07-06 17:32:32.949][00002E38][00002E3C][Always] UserProfile=C:\Users\MSSQLLaunchpad$SQL2017.NT Service
[2019-07-06 17:32:32.949][00002E38][00002E3C][Always] Users=0
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           otal.Value      := vl_subtotal;
QTicketTranspTotalItbis.Value    := vl_itbis;
QTicketTranspTotalImporte.Value  := vl_importe;
QTicketTransp.Post;
QTicketTransp.UpdateBatch();

//Grabar detalle
with QDetalle do begin
Close;
SQL.Clear;
SQL.Add('delete from det_ticket_transp where emp_codigo = :emp and suc_codigo = :suc');
SQL.Add('and numero_ticket = :num');
Parameters.ParamByName('emp').Value := DM.vp_cia;
Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
Parameters.ParamByName('num').Value := QTicketTranspNUMERO_TICKET.Value;
ExecSQL;

MDDetalle.DisableControls;
MDDetalle.First;
while NOT MDDetalle.Eof DO BEGIN
if MDDetallePROD_CODIGO.Text <> '' then begin
Close;
SQL.Clear;
SQL.Add('INSERT INTO dbo.Det_Ticket_Transp');
SQL.Add('(emp_codigo ,suc_codigo ,numero_ticket ,prod_codigo ,cliente_id ,prod_roriginal ,prod_rfabric ,pro_costo');
SQL.Add(',prod_precio ,det_cantidad ,det_itbis ,det_importe,DET_CONITBIS ,fecha ,status_ticket ,usu_codigo ,usu_cod_mod');
SQL.Add(',fecha_mod)');
SQL.Add('VALUES(:emp, :suc, :num, :prod, :cli, :prodro, :prodrf, :costo, :precio, :cant, :itbis, :importe, :itbisN');
SQL.ADD(',:fecha, :sta, :usu, NULL, NULL)');
Parameters.ParamByName('emp').Value     := DM.vp_cia;
Parameters.ParamByName('suc').Value     := DBLookupComboBox2.KeyValue;
Parameters.ParamByName('num').Value     := QTicketTranspNUMERO_TICKET.Value;
Parameters.ParamByName('prod').Value    := MDDetallePROD_CODIGO.Value;
Parameters.ParamByName('cli').Value     := MDDetalleCLIENTE_ID.Value;
Parameters.ParamByName('prodro').Value  := MDDetallePROD_RORIGINAL.Value;
Parameters.ParamByName('prodrf').Value  := MDDetallePROD_RFABRIB.Value;
Parameters.ParamByName('costo').Value   := MDDetallePRO_COSTO.Value;
Parameters.ParamByName('precio').Value  := MDDetalleDET_PRECIO.Value;
Parameters.ParamByName('cant').Value    := MDDetalleDET_CANTIDAD.Value;
Parameters.ParamByName('itbis').Value   := MDDetalleDET_ITBIS.Value;
Parameters.ParamByName('importe').Value := MDDetalleDET_IMPORTE.Value;
Parameters.ParamByName('itbisN').Value  := MDDetalleDET_CONITBIS.Value;
Parameters.ParamByName('fecha').Value   := cxDBDateEdit1.Date;
Parameters.ParamByName('sta').Value     := 'EMI';
Parameters.ParamByName('usu').Value     := dm.vp_usuario;
ExecSQL;
end;
MDDetalle.Next;
MDDetalle.EnableControls;
end;
end;

IF MessageDlg('Registro Salvado correctamente....'+Char(13)+
              'Desea imprimir el registro?',mtConfirmation,[mbYes,mbNo],0)=mrYes then begin
with qLiqTicket do begin
Close;
Parameters.ParamByName('EMP').Value := QTicketTranspEMP_CODIGO.Value;
Parameters.ParamByName('SUC').Value := QTicketTranspSUC_CODIGO.Value;
Parameters.ParamByName('NUM').Value := QTicketTranspNUMERO_TICKET.Value;
Open;
IF not qLiqTicket.IsEmpty then
Rpt_Liq_Ticket.ShowReport(True);
end;
end;
QTicketTransp.Append;

end;

procedure TFrmLiquidacionTickets.FormCreate(Sender: TObject);
begin
FrmLiquidacionTickets.Height := 677;
FrmLiquidacionTickets.Width  := 1026;
end;

procedure TFrmLiquidacionTickets.btnBuscaLiqTicketsClick(Sender: TObject);
var
  Suc : integer;
begin
  Suc := DBLookupComboBox2.KeyValue;

  Search.AliasFields.Clear;
  Search.AliasFields.Add('Numero');
  Search.AliasFields.Add('Fecha');

  Search.Query.clear;
  Search.Query.add('select numero_ticket Numero, fecha_ticket Fecha');
  Search.Query.add('from Ticket_Transp');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.Query.add('and status_ticket = '+#39+'EMI'+#39);
  Search.Query.add('and suc_codigo = '+IntToStr(Suc));
  Search.ResultField := 'Numero';
  Search.Title := 'Liquidacion de Tickets';
  if Search.execute then
  begin
    QTicketTransp.Close;
    QTicketTransp.Parameters.parambyname('NUM').Value := strtoint(Search.ValueField);
    QTicketTransp.Parameters.parambyname('SUC').Value := Suc;
    QTicketTransp.Parameters.parambyname('EMP').Value := DM.vp_cia;
    QTicketTransp.Open;
    QTicketTransp.Edit;
    QTicketTranspSubTotal.Value      := 0;
    QTicketTranspTotalItbis.Value    := 0;
    QTicketTranspTotalImporte.Value  := 0;

    //Detalle
    MDDetalle.Close;
    MDDetalle.Open;

    QDetalle.Close;
    QDetalle.SQL.Clear;
    QDetalle.SQL.Add('SELECT DT.PROD_CODIGO, P.PRO_RORIGINAL, P.PRO_RFABRIC, RTRIM(P.PRO_NOMBRE) DESCRIPCION, ');
    QDetalle.SQL.Add('DT.DET_CANTIDAD, DT.PRO_COSTO, DT.prod_precio DET_PRECIO,');
    QDetalle.SQL.Add('DT.DET_CONITBIS, DT.CLIENTE_ID, C.CLI_NOMBRE CLIENTEN, DT.DET_IMPORTE, DT.DET_ITBIS, P.PRO_MONTOITBIS PRO_ITBIS');
    QDetalle.SQL.Add('FROM DET_TICKET_TRANSP DT');
    QDetalle.SQL.Add('INNER JOIN Productos P ON DT.emp_codigo = P.emp_codigo AND DT.prod_codigo = P.pro_codigo');
    QDetalle.SQL.Add('INNER JOIN CLIENTES C ON DT.cliente_id = C.cli_codigo AND DT.emp_codigo = C.emp_codigo');
    QDetalle.SQL.Add('WHERE DT.EMP_CODIGO = :EMP AND DT.SUC_CODIGO = :SUC AND DT.NUMERO_TICKET = :NUM');
    QDetalle.SQL.Add('ORDER BY DT.CLIENTE_ID, DESCRIPCION');
    QDetalle.Parameters.parambyname('NUM').Value := strtoint(Search.ValueField);
    QDetalle.Parameters.parambyname('SUC').Value := Suc;
    QDetalle.Parameters.parambyname('EMP').Value := DM.vp_cia;
    QDetalle.Open;
    IF NOT QDetalle.IsEmpty THEN BEGIN
      QDetalle.First;
      WHILE NOT QDetalle.EOF DO BEGIN
      MDDetalle.Append;
      MDDetallePROD_CODIGO.Value    := QDetalle.FIELDBYNAME('PROD_CODIGO').Value;
      MDDetallePROD_RORIGINAL.Value := QDetalle.FIELDBYNAME('PRO_RORIGINAL').Value;
      if not QDetalle.FIELDBYNAME('PRO_RFABRIC').IsNull then
      MDDetallePROD_RFABRIB.Value   := QDetalle.FIELDBYNAME('PRO_RFABRIC').Value;
      MDDetalleDESCRIPCION.Value    := QDetalle.FIELDBYNAME('DESCRIPCION').Value;
      MDDetalleDET_CANTIDAD.Value   := QDetalle.FIELDBYNAME('DET_CANTIDAD').Value;
      MDDetallePRO_COSTO.Value      := QDetalle.FIELDBYNAME('PRO_COSTO').Value;
      MDDetalleDET_PRECIO.Value     := QDetalle.FIELDBYNAME('DET_PRECIO').Value;
      MDDetalleDET_CONITBIS.Value   := QDetalle.FIELDBYNAME('DET_CONITBIS').Value;
      MDDetalleCLIENTE_ID.Value     := QDetalle.FIELDBYNAME('CLIENTE_ID').Value;
      MDDetalleDET_IMPORTE.Value    := QDetalle.FIELDBYNAME('DET_IMPORTE').Value;
      MDDetalleDET_ITBIS.Value      := QDetalle.FIELDBYNAME('DET_ITBIS').Value;
      MDDetallePRO_ITBIS.Value      := QDetalle.FIELDBYNAME('PRO_ITBIS').Value;
      MDDetalleCLIENTEN.Value       := QDetalle.FIELDBYNAME('CLIENTEN').Value;
      MDDetalle.Post;
      QDetalle.Next;
      end;
      end;

    end;


end;


procedure TFrmLiquidacionTickets.Totaliza;
begin
vl_subtotal := 0;
vl_itbis    := 0;
vl_importe  := 0;
with MDDetalle do begin
DisableControls;
First;
while not Eof do begin
vl_subtotal := vl_subtotal + (MDDetalleDET_CANTIDAD.Value* MDDetalleDET_PRECIO.Value);
vl_itbis    := vl_itbis + MDDetalleDET_ITBIS.Value;
vl_importe  := vl_importe + MDDetalleDET_IMPORTE.Value;
Next;
end;
EnableControls;
end;
edtSubTotal.Text := FormatCurr('#,0.00',vl_subtotal);
edtItbis.Text    := FormatCurr('#,0.00',vl_itbis);
edtTotal.Text    := FormatCurr('#,0.00',vl_importe);
end;

procedure TFrmLiquidacionTickets.MDDetalleAfterPost(DataSet: TDataSet);
begin
Totaliza;
end;

procedure TFrmLiquidacionTickets.GridKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key = #40 then
Key := #0;
end;

procedure TFrmLiquidacionTickets.MDDetalleBeforePost(DataSet: TDataSet);
begin
MDDetalleFECHA.Value := cxDBDateEdit1.Date;
end;

end.



