unit PVENTA63;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Grids, DBGrids, DB,
  IBCustomDataSet, IBQuery, ComCtrls, ADODB,
  QuerySearchDlgADO, DBCtrls;

type
  TfrmConsPedidosCli = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    edCliente: TEdit;
    SpeedButton2: TSpeedButton;
    tCliente: TEdit;
    Label12: TLabel;
    btVendedor: TSpeedButton;
    tVendedor: TEdit;
    edVendedor: TEdit;
    Label10: TLabel;
    btCondi: TSpeedButton;
    tCondi: TEdit;
    edCondi: TEdit;
    Label4: TLabel;
    edNombre: TEdit;
    cbStatus: TRadioGroup;
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    btRefresh: TBitBtn;
    lbCantidad: TLabel;
    DBGrid1: TDBGrid;
    QPedidos: TADOQuery;
    Label5: TLabel;
    cbOrden: TComboBox;
    dsPedidos: TDataSource;
    Splitter1: TSplitter;
    deDetalle: TDataSource;
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
    QDetalle: TADOQuery;
    QDetalleEMP_CODIGO: TIntegerField;
    QDetallePED_TIPO: TIBStringField;
    QDetallePED_NUMERO: TIntegerField;
    QDetalleDET_SECUENCIA: TIntegerField;
    QDetallePRO_CODIGO: TIntegerField;
    QDetallePRO_RORIGINAL: TIBStringField;
    QDetallePRO_RFABRIC: TIBStringField;
    QDetalleDET_DESCRIPCION: TIBStringField;
    QDetalleDET_CANTIDAD: TFloatField;
    QDetalleDET_PRECIO: TFloatField;
    QDetalleDET_CONITBIS: TIBStringField;
    QDetalleDET_ITBIS: TFloatField;
    QDetalleDET_DESCUENTO: TFloatField;
    QDetalleDET_FACTURADO: TFloatField;
    QDetalleDET_STATUS: TIBStringField;
    QDetalleCalcItbis: TFloatField;
    QDetalleCalcDesc: TFloatField;
    QDetalleValor: TFloatField;
    QDetallePrecioItbis: TFloatField;
    QPedidosCLI_CODIGO: TIntegerField;
    QPedidosCLI_REFERENCIA: TIBStringField;
    QPedidosCPA_CODIGO: TIntegerField;
    QPedidosEMP_CODIGO: TIntegerField;
    QPedidosPED_DESCUENTO: TFloatField;
    QPedidosPED_DIRECCION: TIBStringField;
    QPedidosPED_FAX: TIBStringField;
    QPedidosPED_FECHA: TDateTimeField;
    QPedidosPED_ITBIS: TFloatField;
    QPedidosPED_LOCALIDAD: TIBStringField;
    QPedidosPED_NOMBRE: TIBStringField;
    QPedidosPED_NOTA: TMemoField;
    QPedidosPED_NUMERO: TIntegerField;
    QPedidosPED_OTROS: TFloatField;
    QPedidosPED_STATUS: TIBStringField;
    QPedidosPED_TELEFONO: TIBStringField;
    QPedidosPED_TIPO: TIBStringField;
    QPedidosPED_TOTAL: TFloatField;
    QPedidosSUP_CODIGO: TIntegerField;
    QPedidosVEN_CODIGO: TIntegerField;
    QPedidosUSU_NOMBRE: TIBStringField;
    QDetalleDET_MEDIDA: TIBStringField;
    Label1: TLabel;
    edOrden: TEdit;
    QPedidosorden_cliente: TStringField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Grid: TDBGrid;
    DBGrid5: TDBGrid;
    QRecibos: TADOQuery;
    QRecibosFPA_NOMBRE: TStringField;
    QRecibosFOR_MONTO: TBCDField;
    QRecibosFOR_DESCRIPCION: TStringField;
    dsRecibos: TDataSource;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    dsSuc: TDataSource;
    Label8: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    QPedidossuc_codigo: TIntegerField;
    QSucursalalm_codigo: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    QDetalledet_despachado: TBCDField;
    QPedidosPED_COTIZACION: TStringField;
    procedure QDetalleCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure btRefreshClick(Sender: TObject);
    procedure btVendedorClick(Sender: TObject);
    procedure edVendedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton2Click(Sender: TObject);
    procedure edCondiKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btCondiClick(Sender: TObject);
    procedure edVendedorChange(Sender: TObject);
    procedure edClienteChange(Sender: TObject);
    procedure edCondiChange(Sender: TObject);
    procedure edUsuarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton3Click(Sender: TObject);
    procedure QPedidosAfterOpen(DataSet: TDataSet);
    procedure edUsuarioChange(Sender: TObject);
    procedure cbStatusClick(Sender: TObject);
    procedure cbGrupoClick(Sender: TObject);
    procedure ckItbisClick(Sender: TObject);
    procedure ckDescClick(Sender: TObject);
    procedure cbOrdenClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsPedidosCli: TfrmConsPedidosCli;

implementation

uses RVENTA04, RVENTA19, SIGMA01, SIGMA00;

{$R *.dfm}

procedure TfrmConsPedidosCli.QDetalleCalcFields(DataSet: TDataSet);
var
  Venta, NumItbis : Double;
begin
  if QDetalleDET_CONITBIS.value = 'S' then
  begin
    NumItbis := strtofloat(format('%10.2f',[(QDetalleDET_ITBIS.asfloat/100)+1]));
    Venta    := strtofloat(format('%10.2f',[(QDetalleDET_PRECIO.value)/NumItbis]));
    QDetalleCalcDesc.value    := strtofloat(format('%10.2f',[(Venta * QDetalleDET_DESCUENTO.value)/100]));
    QDetalleCalcItbis.value   := strtofloat(format('%10.2f',[(QDetalleDET_PRECIO.value)-Venta]));
    QDetallePrecioItbis.value := strtofloat(format('%10.2f',[Venta]));
    QDetalleValor.value       := strtofloat(format('%10.2f',[((Venta-QDetalleCalcDesc.value) + QDetalleCalcItbis.value)*
                                 QDetalleDET_CANTIDAD.value]));
  end
  else
  begin
    Venta := strtofloat(format('%10.2f',[QDetalleDET_PRECIO.value]));
    QDetalleCalcDesc.value    := strtofloat(format('%10.2f',[(Venta * QDetalleDET_DESCUENTO.value)/100]));
    QDetallePrecioItbis.value := strtofloat(format('%10.2f',[Venta]));
    QDetalleValor.value       := strtofloat(format('%10.2f',[(Venta-QDetalleCalcDesc.value)*QDetalleDET_CANTIDAD.value]));
    QDetalleCalcItbis.value   := 0;
  end;
end;

procedure TfrmConsPedidosCli.FormCreate(Sender: TObject);
begin
  Fecha1.date := date;
  Fecha2.date := date;
  Memo1.lines := QPedidos.sql;
  cbOrden.itemindex := 0;
end;

procedure TfrmConsPedidosCli.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmConsPedidosCli.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then close;
end;

procedure TfrmConsPedidosCli.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrmConsPedidosCli.FormActivate(Sender: TObject);
begin
  //if not QpFacturas.active then QFacturas.open;
  if not QSucursal.Active then
  begin
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;
    DBLookupComboBox2.KeyValue := QSucursalsuc_codigo.Value;
  end;
  frmMain.ExportXLS.Sheets[0].DBGrid := DBGrid1;
  frmMain.ExportXLS.Sheets[1].Exported := False;
  frmMain.ExportXLS.Sheets[2].Exported := False;
  frmMain.ExportXLS.Sheets[0].Exported := True;
end;

procedure TfrmConsPedidosCli.btRefreshClick(Sender: TObject);
begin
  QPedidos.close;
  QPedidos.sql.clear;
  QPedidos.sql := Memo1.Lines;
  if trim(edVendedor.text) <> '' then
    QPedidos.sql.add('and p.ven_codigo = '+trim(edVendedor.text));
  if trim(edOrden.text) <> '' then
    QPedidos.sql.add('and p.orden_cliente = '+#39+trim(edOrden.text)+#39);
  if trim(edCliente.text) <> '' then
    if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
       QPedidos.sql.add('and p.cli_codigo = '+trim(edCliente.text))
    else
       QPedidos.sql.add('and p.cli_referencia = '+#39+trim(edCliente.text)+#39);
  if trim(edCondi.text) <> '' then
    QPedidos.sql.add('and p.cpa_codigo = '+trim(edCondi.text));
  if trim(edNombre.text) <> '' then
    QPedidos.sql.add('and p.ped_nombre like '+#39+trim(edNombre.text)+#39);
  if trim(edUsuario.text) <> '' then
    QPedidos.sql.add('and p.usu_codigo = '+trim(edUsuario.text));

  if cbStatus.ItemIndex = 1 then
     QPedidos.sql.add('and p.ped_status = '+#39+'ANU'+#39)
  else if cbStatus.ItemIndex = 2 then
     QPedidos.sql.add('and p.ped_status = '+#39+'EMI'+#39)
  else if cbStatus.ItemIndex = 3 then
     QPedidos.sql.add('and p.ped_status = '+#39+'REC'+#39);

  if cbOrden.ItemIndex = 0 then
     QPedidos.sql.add('order by p.ped_numero desc')
  else if cbOrden.ItemIndex = 1 then
     QPedidos.sql.add('order by p.ped_nombre desc')
  else if cbOrden.ItemIndex = 2 then
     QPedidos.sql.add('order by p.ped_fecha desc');

  QPedidos.Parameters.parambyname('fecha1').DataType := ftDate;
  QPedidos.Parameters.parambyname('fecha2').DataType := ftDate;
  QPedidos.Parameters.parambyname('fecha1').Value := fecha1.date;
  QPedidos.Parameters.parambyname('fecha2').Value := fecha2.date;
  QPedidos.Parameters.parambyname('emp').Value := dm.vp_cia;
  QPedidos.Parameters.parambyname('suc').Value := DBLookupComboBox2.KeyValue;
  QPedidos.open;
  lbCantidad.caption := inttostr(QPedidos.recordcount)+' Pedidos';

//  DBGrid1.setfocus;
end;

procedure TfrmConsPedidosCli.btVendedorClick(Sender: TObject);
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

procedure TfrmConsPedidosCli.edVendedorKeyDown(Sender: TObject;
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

procedure TfrmConsPedidosCli.edClienteKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmConsPedidosCli.SpeedButton2Click(Sender: TObject);
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

procedure TfrmConsPedidosCli.edCondiKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edCondi.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select cpa_nombre from condiciones');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and cpa_codigo = :cod');
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edCondi.text));
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        messagedlg('CONDICION NO EXISTE',mterror,[mbok],0);
        edCondi.SetFocus;
      end
      else
        tCondi.text := dm.Query1.fieldbyname('cpa_nombre').asstring;
      btRefreshClick(Self);
    end;
  end;
end;

procedure TfrmConsPedidosCli.btCondiClick(Sender: TObject);
begin
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('Código');
  Search.Query.clear;
  Search.Query.add('select cpa_nombre, cpa_codigo');
  Search.Query.add('from condiciones');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.ResultField := 'cpa_Codigo';
  Search.Title := 'Condiciones de Pago';
  if Search.execute then
  begin
    edCondi.text := Search.ValueField;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select cpa_nombre from condiciones');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and cpa_codigo = :cod');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edCondi.text));
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      messagedlg('CONDICION NO EXISTE',mterror,[mbok],0)
    else
      tCondi.text := dm.Query1.fieldbyname('cpa_nombre').asstring;
    edCondi.setfocus;
    btRefreshClick(self);
  end;
end;

procedure TfrmConsPedidosCli.edVendedorChange(Sender: TObject);
begin
  if trim(edVendedor.text) = '' then tVendedor.text := '';
end;

procedure TfrmConsPedidosCli.edClienteChange(Sender: TObject);
begin
  if trim(edCliente.text) = '' then tCliente.text := '';
end;

procedure TfrmConsPedidosCli.edCondiChange(Sender: TObject);
begin
  if trim(edCondi.text) = '' then tCondi.text := '';
end;

procedure TfrmConsPedidosCli.edUsuarioKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmConsPedidosCli.SpeedButton3Click(Sender: TObject);
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

procedure TfrmConsPedidosCli.QPedidosAfterOpen(DataSet: TDataSet);
begin
  if not QDetalle.active then QDetalle.open;
  if not QRecibos.active then QRecibos.open;
end;

procedure TfrmConsPedidosCli.edUsuarioChange(Sender: TObject);
begin
  if trim(edUsuario.text) = '' then tUsuario.text := '';
end;

procedure TfrmConsPedidosCli.cbStatusClick(Sender: TObject);
begin
  btRefreshClick(self);
end;

procedure TfrmConsPedidosCli.cbGrupoClick(Sender: TObject);
begin
  btRefreshClick(self);
end;

procedure TfrmConsPedidosCli.ckItbisClick(Sender: TObject);
begin
  btRefreshClick(self);
end;

procedure TfrmConsPedidosCli.ckDescClick(Sender: TObject);
begin
  btRefreshClick(self);
end;

procedure TfrmConsPedidosCli.cbOrdenClick(Sender: TObject);
begin
  btRefreshClick(self);
end;

procedure TfrmConsPedidosCli.BitBtn2Click(Sender: TObject);
begin
  Application.CreateForm(tRConsPedidosCli, RConsPedidosCli);
  RConsPedidosCli.QPedidos.SQL := QPedidos.SQL;
  RConsPedidosCli.QPedidos.Parameters.parambyname('fecha1').DataType := ftDate;
  RConsPedidosCli.QPedidos.Parameters.parambyname('fecha2').DataType := ftDate;
  RConsPedidosCli.QPedidos.Parameters.parambyname('fecha1').Value := fecha1.date;
  RConsPedidosCli.QPedidos.Parameters.parambyname('fecha2').Value := fecha2.date;
  RConsPedidosCli.QPedidos.Parameters.parambyname('emp').Value := dm.vp_cia;
  RConsPedidosCli.QPedidos.Parameters.parambyname('suc').Value := DBLookupComboBox2.KeyValue;
  RConsPedidosCli.QPedidos.open;
  RConsPedidosCli.lbVendedor.Caption := tVendedor.Text;
  RConsPedidosCli.lbCliente.Caption := tCliente.Text;
  RConsPedidosCli.lbCondi.Caption := tCondi.Text;
  RConsPedidosCli.lbUsuario.Caption := tUsuario.Text;
  RConsPedidosCli.lbNombre.Caption := edNombre.Text;
  RConsPedidosCli.lbStatus.Caption := cbStatus.Items[cbStatus.ItemIndex];
  RConsPedidosCli.lbFecha.Caption := 'Del '+DateToStr(Fecha1.Date)+' Al '+DateToStr(Fecha2.Date);
  RConsPedidosCli.lborden.Caption := edOrden.Text;
  RConsPedidosCli.PrinterSetup;
  RConsPedidosCli.Preview;
  RConsPedidosCli.Destroy;
end;

procedure TfrmConsPedidosCli.FormPaint(Sender: TObject);
begin
  with frmConsPedidosCli do
  begin
    Top  := 2;
    Left := 2;
    width := frmMain.Width - 230;
    height := frmMain.Height - 120;
  end;
end;

procedure TfrmConsPedidosCli.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
     if activecontrol.classtype <> tdbgrid then
     begin
       perform(wm_nextdlgctl, 0, 0);
       key := #0;
     end;
end;

end.
