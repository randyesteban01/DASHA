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
    dm.Query1.sql.add('from client