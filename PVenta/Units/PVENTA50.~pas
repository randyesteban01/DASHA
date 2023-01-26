unit PVENTA50;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Grids, DBGrids, DB,
  IBCustomDataSet, IBQuery, ComCtrls,  ADODB,
  QuerySearchDlgADO, DBCtrls;

type
  TfrmConsDev = class(TForm)
    Panel1: TPanel;
    cbGrupo: TRadioGroup;
    Label1: TLabel;
    edTipo: TEdit;
    btTipo: TSpeedButton;
    tTipo: TEdit;
    Label2: TLabel;
    edCliente: TEdit;
    SpeedButton2: TSpeedButton;
    tCliente: TEdit;
    Label12: TLabel;
    btVendedor: TSpeedButton;
    tVendedor: TEdit;
    edVendedor: TEdit;
    Label3: TLabel;
    SpeedButton1: TSpeedButton;
    tCajero: TEdit;
    edCajero: TEdit;
    cbStatus: TRadioGroup;
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    btRefresh: TBitBtn;
    lbCantidad: TLabel;
    DBGrid1: TDBGrid;
    QDev: TADOQuery;
    QProductos: TADOQuery;
    Label5: TLabel;
    cbOrden: TComboBox;
    dsDev: TDataSource;
    dsProductos: TDataSource;
    btClose: TBitBtn;
    Label6: TLabel;
    Fecha1: TDateTimePicker;
    Fecha2: TDateTimePicker;
    Memo1: TMemo;
    Search: TQrySearchDlgADO;
    Label7: TLabel;
    SpeedButton3: TSpeedButton;
    tUsuario: TEdit;
    edUsuario: TEdit;
    QDevDEV_DESCUENTO: TFloatField;
    QDevDEV_DEVDINERO: TIBStringField;
    QDevDEV_FECHA: TDateTimeField;
    QDevDEV_ITBIS: TFloatField;
    QDevDEV_NUMERO: TIntegerField;
    QDevDEV_STATUS: TIBStringField;
    QDevDEV_TOTAL: TFloatField;
    QDevFAC_FORMA: TIBStringField;
    QDevFAC_NUMERO: TIntegerField;
    QDevTFA_CODIGO: TIntegerField;
    QDevUSU_NOMBRE: TIBStringField;
    QProductosDEP_CODIGO: TIntegerField;
    QProductosDET_SECUENCIA: TIntegerField;
    QProductosDEV_CANTFACTURADA: TFloatField;
    QProductosDEV_CANTIDAD: TFloatField;
    QProductosDEV_CONITBIS: TIBStringField;
    QProductosDEV_COSTO: TFloatField;
    QProductosDEV_DESCUENTO: TFloatField;
    QProductosDEV_ITBIS: TFloatField;
    QProductosDEV_NUMERO: TIntegerField;
    QProductosDEV_PRECIO: TFloatField;
    QProductosDEV_TOPECANTIDAD: TFloatField;
    QProductosEMP_CODIGO: TIntegerField;
    QProductosFAM_CODIGO: TIntegerField;
    QProductosPRO_CODIGO: TIntegerField;
    QProductosPRO_NOMBRE: TIBStringField;
    QProductosPRO_RFABRIC: TIBStringField;
    QProductosPRO_RORIGINAL: TIBStringField;
    QDevEMP_CODIGO: TIntegerField;
    QDevDEV_NOMBRE: TIBStringField;
    QProductosValor: TFloatField;
    QProductosCalcDesc: TFloatField;
    QProductosPrecioItbis: TFloatField;
    QProductosCalcItbis: TFloatField;
    QProductosDevuelta: TFloatField;
    QProductosNeto: TFloatField;
    QProductosDET_ESCALA: TIBStringField;
    QProductosDET_MEDIDA: TIBStringField;
    QDevDEV_CONITBIS: TStringField;
    Label8: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    dsSuc: TDataSource;
    QDevsuc_codigo: TIntegerField;
    QSucursalalm_codigo: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    QDevNCF: TStringField;
    QDevNCF_Modifica: TStringField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Grid: TDBGrid;
    GridCuentas: TDBGrid;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    btBuscaCta: TSpeedButton;
    btElimina: TSpeedButton;
    lbCR: TStaticText;
    lbDB: TStaticText;
    lbBAL: TStaticText;
    QDetalle: TADOQuery;
    QDetalleCAT_CUENTA: TIBStringField;
    QDetalleCAT_NOMBRE: TIBStringField;
    QDetalleDET_MONTO: TFloatField;
    QDetalleDET_ORIGEN: TIBStringField;
    QDetalleDET_SECUENCIA: TIntegerField;
    QDetalleEMP_CODIGO: TIntegerField;
    dsDetalle: TDataSource;
    QDetalleDEV_NUMERO: TIntegerField;
    QDetalleSUC_CODIGO: TIntegerField;
    Splitter1: TSplitter;
    QDevticket_cajero: TIntegerField;
    QDevticket_numero: TIntegerField;
    QDevticket_fecha: TDateTimeField;
    QDevticket_caja: TIntegerField;
    QDevdev_fecha_factura: TDateTimeField;
    fechamod1: TDateTimePicker;
    fechamod2: TDateTimePicker;
    ckfecmodifica: TCheckBox;
    qBuscarCuentasAutomaticas: TADOQuery;
    procedure FormCreate(Sender: TObject);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure btRefreshClick(Sender: TObject);
    procedure btTipoClick(Sender: TObject);
    procedure edTipoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btVendedorClick(Sender: TObject);
    procedure edVendedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure edCajeroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton2Click(Sender: TObject);
    procedure edTipoChange(Sender: TObject);
    procedure edVendedorChange(Sender: TObject);
    procedure edCajeroChange(Sender: TObject);
    procedure edClienteChange(Sender: TObject);
    procedure edUsuarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton3Click(Sender: TObject);
    procedure QDevAfterOpen(DataSet: TDataSet);
    procedure edUsuarioChange(Sender: TObject);
    procedure cbStatusClick(Sender: TObject);
    procedure cbGrupoClick(Sender: TObject);
    procedure ckItbisClick(Sender: TObject);
    procedure ckDescClick(Sender: TObject);
    procedure cbOrdenClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure QProductosCalcFields(DataSet: TDataSet);
    procedure GridCuentasColEnter(Sender: TObject);
    procedure GridCuentasEnter(Sender: TObject);
    procedure GridCuentasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btEliminaClick(Sender: TObject);
    procedure btBuscaCtaClick(Sender: TObject);
    procedure QDetalleAfterDelete(DataSet: TDataSet);
    procedure QDetalleAfterPost(DataSet: TDataSet);
    procedure QDetalleBeforePost(DataSet: TDataSet);
    procedure QDetalleNewRecord(DataSet: TDataSet);
    procedure QDetalleCAT_CUENTAChange(Sender: TField);
    procedure QDetalleAfterEdit(DataSet: TDataSet);
    procedure QDetalleAfterInsert(DataSet: TDataSet);
    procedure QDetalleBeforeDelete(DataSet: TDataSet);
    procedure QDevAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    Debitos, Creditos : Double;
    Modifica, Elimina : Boolean;
    Procedure TotalizaCuentas;
  end;

var
  frmConsDev: TfrmConsDev;

implementation

uses RVENTA08, SIGMA01, SIGMA00;

{$R *.dfm}

procedure TfrmConsDev.FormCreate(Sender: TObject);
begin
  if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'I' then
     Grid.Columns[0].FieldName := 'PRO_CODIGO'
  else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'F' then
     Grid.Columns[0].FieldName := 'PRO_RFABRIC'
  else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'O' then
     Grid.Columns[0].FieldName := 'PRO_RORIGINAL';

  if dm.QParametrosPAR_FACESCALA.Value <> 'True' then
  begin
    Grid.Columns[8].Destroy;
    Grid.Columns[1].Width := Grid.Columns[1].Width + 30;
  end;

  if dm.QParametrosPAR_FACMEDIDA.Value <> 'True' then
  begin
    Grid.Columns[7].Destroy;
    Grid.Columns[1].Width := Grid.Columns[1].Width + 30;
  end;

  qBuscarCuentasAutomaticas.ExecSQL;

  Fecha1.date := date;
  Fecha2.date := date;
  fechamod1.date := date;
  fechamod2.date := date;
  Memo1.lines := QDev.sql;
  cbOrden.itemindex := 0;
end;

procedure TfrmConsDev.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmConsDev.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then close;
end;

procedure TfrmConsDev.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrmConsDev.FormActivate(Sender: TObject);
begin
  if not QSucursal.Active then
  begin
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;
    DBLookupComboBox2.KeyValue := QSucursalsuc_codigo.Value;
  end;
  if not QDev.active then QDev.open;
  frmMain.ExportXLS.Sheets[0].DBGrid := DBGrid1;
  frmMain.ExportXLS.Sheets[1].Exported := False;
  frmMain.ExportXLS.Sheets[2].Exported := False;
  frmMain.ExportXLS.Sheets[0].Exported := True;
end;

procedure TfrmConsDev.btRefreshClick(Sender: TObject);
begin
  QDev.close;
  QDev.sql.clear;
  QDev.sql := Memo1.Lines;
  if cbGrupo.itemindex = 0 then
    QDev.sql.add('and d.fac_forma = '+#39+'A'+#39)
  else if cbGrupo.itemindex = 1 then
    QDev.sql.add('and d.fac_forma = '+#39+'B'+#39);
  if trim(edTipo.text) <> '' then
    QDev.sql.add('and d.tfa_codigo = '+trim(edTipo.text));
  if trim(edVendedor.text) <> '' then
    QDev.sql.add('and d.ven_codigo = '+trim(edVendedor.text));
  if trim(edCliente.text) <> '' then
    QDev.sql.add('and d.cli_codigo = '+trim(edCliente.text));
  if trim(edUsuario.text) <> '' then
    QDev.sql.add('and d.usu_codigo = '+trim(edUsuario.text));

  if cbStatus.ItemIndex = 1 then
     QDev.sql.add('and d.dev_status = '+#39+'ANU'+#39)
  else if cbStatus.ItemIndex = 2 then
     QDev.sql.add('and d.dev_status = '+#39+'EMI'+#39)
  else if cbStatus.ItemIndex = 3 then
     QDev.sql.add('and d.ncf_fijo is not null');

  if ckfecmodifica.Checked then
  begin
    QDev.sql.add('and d.dev_fecha_factura between :fecm1 and :fecm2');
    QDev.Parameters.parambyname('fecm1').DataType := ftDate;
    QDev.Parameters.parambyname('fecm2').DataType := ftDate;
    QDev.Parameters.parambyname('fecm1').Value := fechamod1.date;
    QDev.Parameters.parambyname('fecm2').Value := fechamod2.date;
  end;


  if cbOrden.ItemIndex = 0 then
     QDev.sql.add('order by d.dev_numero')
  else if cbOrden.ItemIndex = 1 then
     QDev.sql.add('order by d.dev_fecha');


  QDev.Parameters.parambyname('fecha1').DataType := ftDate;
  QDev.Parameters.parambyname('fecha2').DataType := ftDate;
  QDev.Parameters.parambyname('fecha1').Value := fecha1.date;
  QDev.Parameters.parambyname('fecha2').Value := fecha2.date;
  QDev.Parameters.parambyname('emp').Value := dm.vp_cia;
  QDev.open;
  lbCantidad.caption := inttostr(QDev.recordcount)+' Devoluciones';

//  DBGrid1.setfocus;
end;

procedure TfrmConsDev.btTipoClick(Sender: TObject);
begin
  search.Query.clear;
  search.Query.add('select tfa_nombre, tfa_codigo');
  search.Query.add('from tiposfactura');
  search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('Código');
  search.ResultField := 'tfa_codigo';
  search.Title := 'Tipos de factura';
  if search.execute then
  begin
    edTipo.text := search.valuefield;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select tfa_nombre, tfa_selcondi, tfa_formatoimp, tfa_puertoimp');
    dm.Query1.sql.add('from tiposfactura');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and tfa_codigo = :cod');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edTipo.text));
    dm.Query1.open;
    tTipo.text := dm.Query1.fieldbyname('tfa_nombre').asstring;
    edTipo.SetFocus;
    btRefreshClick(self);
  end;
end;

procedure TfrmConsDev.edTipoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if Trim(edTipo.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select tfa_nombre, tfa_selcondi, tfa_formatoimp, tfa_puertoimp');
      dm.Query1.sql.add('from tiposfactura');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and tfa_codigo = :cod');
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edTipo.text));
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        tTipo.text := '';
        showmessage('ESTE TIPO DE FACTURA NO EXISTE');
        edTipo.setfocus;
      end
      else
        tTipo.text := dm.Query1.fieldbyname('tfa_nombre').asstring;
      btRefreshClick(Self);
    end;
  end;
end;

procedure TfrmConsDev.btVendedorClick(Sender: TObject);
begin
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('Código');
  Search.Query.clear;
  Search.Query.add('select ven_nombre, ven_codigo');
  Search.Query.add('from vendedores');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.ResultField := 'ven_Codigo';
  Search.Title := 'Listado de Vendedores';
  if Search.execute then
  begin
    edVendedor.text := Search.ValueField;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select ven_nombre from vendedores');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and ven_codigo = :ven');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('ven').Value := strtoint(trim(edVendedor.text));
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      messagedlg('VENDEDOR NO EXISTE',mterror,[mbok],0)
    else
      tVendedor.text := dm.Query1.fieldbyname('ven_nombre').asstring;
    edVendedor.setfocus;
    btRefreshClick(self);
  end;
end;

procedure TfrmConsDev.edVendedorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edVendedor.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select ven_nombre from vendedores');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and ven_codigo = :ven');
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      dm.Query1.Parameters.parambyname('ven').Value := strtoint(trim(edVendedor.text));
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        messagedlg('VENDEDOR NO EXISTE',mterror,[mbok],0);
        edVendedor.SetFocus;
      end
      else
        tVendedor.text := dm.Query1.fieldbyname('ven_nombre').asstring;
      btRefreshClick(Self);
    end;
  end;
end;

procedure TfrmConsDev.SpeedButton1Click(Sender: TObject);
begin
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('Código');
  Search.Query.clear;
  Search.Query.add('select caj_nombre, caj_codigo');
  Search.Query.add('from cajeros');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.ResultField := 'caj_Codigo';
  Search.Title := 'Listado de Cajeros';
  if Search.execute then
  begin
    edCajero.text := Search.ValueField;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select caj_nombre from cajeros');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and caj_codigo = :cod');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edCajero.text));
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      messagedlg('CAJERO NO EXISTE',mterror,[mbok],0)
    else
      tCajero.text := dm.Query1.fieldbyname('caj_nombre').asstring;
    edCajero.setfocus;
    btRefreshClick(self);
  end;
end;

procedure TfrmConsDev.edCajeroKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edCajero.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select caj_nombre from cajeros');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and caj_codigo = :cod');
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edCajero.text));
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        messagedlg('CAJERO NO EXISTE',mterror,[mbok],0);
        edCajero.SetFocus;
      end
      else
        tCajero.text := dm.Query1.fieldbyname('caj_nombre').asstring;
      btRefreshClick(Self);
    end;
  end;
end;

procedure TfrmConsDev.edClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edCliente.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select cli_nombre from clientes');
      dm.Query1.sql.add('where emp_codigo = :emp');
      if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
         dm.Query1.sql.add('and cli_codigo = :cod')
      else
         dm.Query1.sql.add('and cli_referencia = :cod');
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
         dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edcliente.text))
      else
         dm.Query1.Parameters.parambyname('cod').Value := trim(edcliente.text);
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        messagedlg('CLIENTE NO EXISTE',mterror,[mbok],0);
        edCliente.SetFocus;
      end
      else
        tCliente.text := dm.Query1.fieldbyname('cli_nombre').asstring;
      btRefreshClick(Self);
    end;
  end;
end;

procedure TfrmConsDev.SpeedButton2Click(Sender: TObject);
begin
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('Código');
  search.AliasFields.add('Referencia');
  Search.Query.clear;
  Search.Query.add('select cli_nombre, cli_codigo, cli_referencia');
  Search.Query.add('from clientes');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
     Search.ResultField := 'cli_Codigo'
  else
     Search.ResultField := 'cli_referencia';
  Search.Title := 'Listado de Clientes';
  if Search.execute then
  begin
    edCliente.text := Search.ValueField;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select cli_nombre, cli_codigo, cli_referencia from clientes');
    dm.Query1.sql.add('where emp_codigo = :emp');
    if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
       dm.Query1.sql.add('and cli_codigo = :cod')
    else
       dm.Query1.sql.add('and cli_referencia = :cod');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
       dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edCliente.text))
    else
       dm.Query1.Parameters.parambyname('cod').Value := trim(edCliente.text);
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      messagedlg('CLIENTE NO EXISTE',mterror,[mbok],0)
    else
      tCliente.text := dm.Query1.fieldbyname('cli_nombre').asstring;
    edCliente.setfocus;
    btRefreshClick(self);
  end;
end;

procedure TfrmConsDev.edTipoChange(Sender: TObject);
begin
  if trim(edTipo.text) = '' then tTipo.text := '';
end;

procedure TfrmConsDev.edVendedorChange(Sender: TObject);
begin
  if trim(edVendedor.text) = '' then tVendedor.text := '';
end;

procedure TfrmConsDev.edCajeroChange(Sender: TObject);
begin
  if trim(edCajero.text) = '' then tCajero.text := '';
end;

procedure TfrmConsDev.edClienteChange(Sender: TObject);
begin
  if trim(edCliente.text) = '' then tCliente.text := '';
end;

procedure TfrmConsDev.edUsuarioKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edUsuario.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select usu_nombre from usuarios');
      dm.Query1.sql.add('where usu_codigo = :cod');
      dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edUsuario.text));
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        messagedlg('USUARIO NO EXISTE',mterror,[mbok],0);
        edUsuario.setFocus;
      end
      else
        tUsuario.text := dm.Query1.fieldbyname('usu_nombre').asstring;
      btRefreshClick(Self);
    end;
  end;
end;

procedure TfrmConsDev.SpeedButton3Click(Sender: TObject);
begin
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('Código');
  Search.Query.clear;
  Search.Query.add('select usu_nombre, usu_codigo');
  Search.Query.add('from usuarios');
  Search.ResultField := 'usu_Codigo';
  Search.Title := 'Usuarios';
  if Search.execute then
  begin
    edUsuario.text := Search.ValueField;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select usu_nombre from usuarios');
    dm.Query1.sql.add('where usu_codigo = :cod');
    dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edUsuario.text));
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      messagedlg('USUARIO NO EXISTE',mterror,[mbok],0)
    else
      tUsuario.text := dm.Query1.fieldbyname('usu_nombre').asstring;
    edUsuario.setfocus;
    btRefreshClick(self);
  end;
end;

procedure TfrmConsDev.QDevAfterOpen(DataSet: TDataSet);
begin
  if not QProductos.active then QProductos.open;
  if not QDetalle.Active   then QDetalle.Open;
end;

procedure TfrmConsDev.edUsuarioChange(Sender: TObject);
begin
  if trim(edUsuario.text) = '' then tUsuario.text := '';
end;

procedure TfrmConsDev.cbStatusClick(Sender: TObject);
begin
  btRefreshClick(self);
end;

procedure TfrmConsDev.cbGrupoClick(Sender: TObject);
begin
  btRefreshClick(self);
end;

procedure TfrmConsDev.ckItbisClick(Sender: TObject);
begin
  btRefreshClick(self);
end;

procedure TfrmConsDev.ckDescClick(Sender: TObject);
begin
  btRefreshClick(self);
end;

procedure TfrmConsDev.cbOrdenClick(Sender: TObject);
begin
  btRefreshClick(self);
end;

procedure TfrmConsDev.BitBtn2Click(Sender: TObject);
begin
  Application.CreateForm(tRConsDev, RConsDev);
  
  RConsDev.QDev.SQL := QDev.SQL;
  RConsDev.lbGrupo.Caption    := cbGrupo.Items[cbGrupo.ItemIndex];
  RConsDev.lbTipo.Caption     := tTipo.Text;
  RConsDev.lbVendedor.Caption := tVendedor.Text;
  RConsDev.lbCajero.Caption   := tCajero.Text;
  RConsDev.lbCliente.Caption  := tCliente.Text;
  RConsDev.lbUsuario.Caption  := tUsuario.Text;
  RConsDev.lbStatus.Caption   := cbStatus.Items[cbStatus.ItemIndex];
  RConsDev.lbFecha.Caption    := 'Del '+DateToStr(Fecha1.Date)+' Al '+DateToStr(Fecha2.Date);

  if ckfecmodifica.Checked then
  begin
    RConsDev.QDev.Parameters.parambyname('fecm1').DataType := ftDate;
    RConsDev.QDev.Parameters.parambyname('fecm2').DataType := ftDate;
    RConsDev.QDev.Parameters.parambyname('fecm1').Value := fechamod1.date;
    RConsDev.QDev.Parameters.parambyname('fecm2').Value := fechamod2.date;
  end;

  RConsDev.QDev.Parameters.parambyname('fecha1').DataType := ftDate;
  RConsDev.QDev.Parameters.parambyname('fecha2').DataType := ftDate;
  RConsDev.QDev.Parameters.parambyname('fecha1').Value    := fecha1.date;
  RConsDev.QDev.Parameters.parambyname('fecha2').Value    := fecha2.date;
  RConsDev.QDev.Parameters.parambyname('emp').Value := dm.vp_cia;
  RConsDev.QDev.Parameters.parambyname('suc_codigo').Value := DBLookupComboBox2.KeyValue;
  RConsDev.QDev.open;
  RConsDev.PrinterSetup;
  RConsDev.Preview;
  RConsDev.Destroy;
end;

procedure TfrmConsDev.FormPaint(Sender: TObject);
begin
  with frmConsDev do
  begin
    Top  := 2;
    Left := 2;
    width := frmMain.Width - 230;
    height := frmMain.Height - 120;
  end;
end;

procedure TfrmConsDev.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
     if activecontrol.classtype <> tdbgrid then
     begin
       perform(wm_nextdlgctl, 0, 0);
       key := #0;
     end;
end;

procedure TfrmConsDev.QProductosCalcFields(DataSet: TDataSet);
var
  Venta, NumItbis : Double;
begin
  if QProductosDEV_CONITBIS.value = 'S' then
  begin
    NumItbis := strtofloat(format('%10.2f',[(QProductosDEV_ITBIS.asfloat/100)+1]));
    if dm.QParametrospar_itbisincluido.Value = 'True' then
    begin
      Venta    := (QProductosDEV_PRECIO.value)/NumItbis;
      QProductosPrecioItbis.value := Venta;
      QProductosCalcDesc.value    := (Venta * QProductosDEV_DESCUENTO.value)/100;

      QProductosCalcItbis.value   := ((Venta-QProductosCalcDesc.value)*QProductosDEV_ITBIS.Value)/100;
      QProductosValor.value       := ((Venta-QProductosCalcDesc.value)+QProductosCalcItbis.value)*QProductosDEV_CANTIDAD.value;
    end
    else
    begin
      Venta    := QProductosDEV_PRECIO.value;
      QProductosPrecioItbis.value := QProductosDEV_PRECIO.value;
      QProductosCalcDesc.value    := (Venta *QProductosDEV_DESCUENTO.value)/100;
      if QDevDEV_CONITBIS.Value = 'True' then
        QProductosCalcItbis.value   := ((Venta-QProductosCalcDesc.value)*QProductosDEV_ITBIS.Value)/100
      else
        QProductosCalcItbis.value   := 0;

      QProductosValor.value       := ((QProductosDEV_PRECIO.value-QProductosCalcDesc.value)+
                                   QProductosCalcItbis.value)*QProductosDEV_CANTIDAD.value;
    end;
  end
  else
  begin
    Venta := QProductosDEV_PRECIO.value;
    QProductosCalcDesc.value    := (Venta * QProductosDEV_DESCUENTO.value)/100;
    QProductosPrecioItbis.value := Venta;
    QProductosCalcItbis.value   := 0;
    QProductosValor.value       := (Venta-QProductosCalcDesc.value)*QProductosDEV_CANTIDAD.value;
  end;
  QProductosNeto.Value := (QProductosPrecioItbis.Value - QProductosCalcDesc.Value)+QProductosCalcItbis.Value;
end;

procedure TfrmConsDev.GridCuentasColEnter(Sender: TObject);
begin
  if GridCuentas.SelectedIndex = 1 then
    GridCuentas.SelectedIndex := GridCuentas.SelectedIndex + 1;
end;

procedure TfrmConsDev.GridCuentasEnter(Sender: TObject);
begin
  GridCuentas.SelectedIndex := 0;
end;

procedure TfrmConsDev.GridCuentasKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if GridCuentas.SelectedIndex = 2 then
  begin
    if key = 68 then
    begin
      QDetalle.Edit;
      QDetalleDET_ORIGEN.Value := 'Debito';
      GridCuentas.SelectedIndex := 3;
    end
    else if key = 67 then
    begin
      QDetalle.Edit;
      QDetalleDET_ORIGEN.Value := 'Credito';
      GridCuentas.SelectedIndex := 3;
    end;
  end;
  if key = vk_f5 then btBuscaCtaClick(Self);
  if key = vk_f4 then btEliminaClick(Self);
  if key = vk_insert then abort;
  if (ssCtrl in Shift) and (key = vk_delete) then abort;
  if key = vk_return then
     if GridCuentas.SelectedIndex <> 3 then
        GridCuentas.SelectedIndex := GridCuentas.SelectedIndex + 1
     else
     begin
       GridCuentas.SelectedIndex := 0;
       QDetalle.Append;
     end;
end;

procedure TfrmConsDev.btEliminaClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR LA CUENTA?',mtconfirmation,[mbyes,mbno],0) = mryes then
  begin
    QDetalle.Delete
  end;
  GridCuentas.setfocus;
end;

procedure TfrmConsDev.btBuscaCtaClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select cat_nombre, cat_cuenta');
  Search.Query.Add('from contcatalogo');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.Query.Add('and cat_movimiento = '+#39+'S'+#39);
  Search.AliasFields.Add('Descripción');
  Search.AliasFields.Add('Cuenta');
  Search.ResultField := 'cat_cuenta';
  Search.Title := 'Catalogo de Cuentas';
  if Search.execute then
  begin
    QDetalle.Edit;
    QDetalleCAT_CUENTA.Value := Search.ValueField;
  end;
end;

procedure TfrmConsDev.TotalizaCuentas;
var
  Punt : TBookMark;
begin
  Debitos  := 0;
  Creditos := 0;
  Punt := QDetalle.GetBookmark;
  QDetalle.DisableControls;
  QDetalle.First;
  while not QDetalle.Eof do
  begin
    if QDetalleDET_ORIGEN.Value = 'Debito' then
      Debitos  := Debitos  + StrToFloat(Format('%10.2f',[QDetalleDET_MONTO.Value]))
    else
      Creditos := Creditos + StrToFloat(Format('%10.2f',[QDetalleDET_MONTO.Value]));
    QDetalle.Next;
  end;
  QDetalle.GotoBookmark(Punt);
  QDetalle.EnableControls;
  lbCR.Caption  := Format('%n',[Creditos]);
  lbDB.Caption  := Format('%n',[Debitos]);
  lbBAL.Caption := Format('%n',[Debitos-Creditos]);
  if Trim(lbBAL.Caption) <> '0.00' then
    lbBAL.Font.Color := clRed
  else
    lbBAL.Font.Color := clBlack;
end;

procedure TfrmConsDev.QDetalleAfterDelete(DataSet: TDataSet);
begin
  QDetalle.UpdateBatch;
  TotalizaCuentas;
end;

procedure TfrmConsDev.QDetalleAfterPost(DataSet: TDataSet);
begin
  QDetalle.UpdateBatch;
  TotalizaCuentas;
end;

procedure TfrmConsDev.QDetalleBeforePost(DataSet: TDataSet);
begin
  if QDetalleCAT_NOMBRE.IsNull then QDetalle.Cancel;
  if QDetalle.State = dsInsert then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select isnull(max(det_secuencia),0) as maximo');
    dm.Query1.SQL.Add('from contdet_devolucion');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and dev_numero = :num');
    dm.Query1.SQL.Add('and suc_codigo = :suc');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('num').Value := QDevDEV_NUMERO.Value;
    dm.Query1.Parameters.ParamByName('suc').Value := QDevsuc_codigo.Value;
    dm.Query1.Open;
    QDetalleDET_SECUENCIA.Value := dm.Query1.FieldByName('maximo').AsInteger + 1;
  end;
end;

procedure TfrmConsDev.QDetalleNewRecord(DataSet: TDataSet);
begin
  QDetalleEMP_CODIGO.Value := dm.vp_cia;
  QDetalleDEV_NUMERO.Value := QDevDEV_NUMERO.Value;
  QDetalleSUC_CODIGO.Value := QDevsuc_codigo.Value;
end;

procedure TfrmConsDev.QDetalleCAT_CUENTAChange(Sender: TField);
begin
  if not QDetalleCAT_CUENTA.IsNull then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cat_nombre, cat_origen, cat_movimiento from contcatalogo');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cat_cuenta = :cta');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('cta').Value  := QDetalleCAT_CUENTA.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount = 0 then
    begin
      MessageDlg('ESTA CUENTA NO EXISTE',mtError,[mbok],0);
      QDetalleCAT_CUENTA.Clear;
      Abort;
    end
    else if dm.Query1.FieldByName('cat_movimiento').AsString = 'N' then
    begin
      MessageDlg('ESTA CUENTA NO ACEPTA MOVIMIENTO',mtError,[mbok],0);
      QDetalleCAT_CUENTA.Clear;
      Abort;
    end
    else if dm.Query1.RecordCount > 0 then
    begin
      QDetalle.Edit;
      QDetalleCAT_NOMBRE.Value := dm.Query1.FieldByName('cat_nombre').AsString;
      GridCuentas.SelectedIndex := 2;
    end;
  end;
end;

procedure TfrmConsDev.QDetalleAfterEdit(DataSet: TDataSet);
begin
  if not Modifica then QDetalle.Cancel;
end;

procedure TfrmConsDev.QDetalleAfterInsert(DataSet: TDataSet);
begin
  if not Modifica then QDetalle.Cancel;
end;

procedure TfrmConsDev.QDetalleBeforeDelete(DataSet: TDataSet);
begin
  if not Elimina then Abort;
end;

procedure TfrmConsDev.QDevAfterScroll(DataSet: TDataSet);
begin
TotalizaCuentas;
end;

end.
