unit PVENTA19;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, Mask, DBCtrls, Grids, DBGrids, Db,
  IBCustomDataSet, IBQuery, IBUpdateSQL, Variants, ADODB,
  QuerySearchDlgADO, Menus, frxClass, frxDBSet;

type
  TfrmPedidosCli = class(TForm)
    Panel2: TPanel;
    Label2: TLabel;
    edCliente: TEdit;
    btCliente: TSpeedButton;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    tLimite: TEdit;
    Label8: TLabel;
    tBalance: TEdit;
    Panel3: TPanel;
    Label9: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    tDesc: TEdit;
    Label15: TLabel;
    tPrecio: TEdit;
    DBEdit5: TDBEdit;
    btVendedor: TSpeedButton;
    tVendedor: TEdit;
    Label10: TLabel;
    btCondi: TSpeedButton;
    tCondicion: TEdit;
    Panel5: TPanel;
    Grid: TDBGrid;
    btBuscaPedido: TBitBtn;
    btGrabar: TBitBtn;
    btLimpiar: TBitBtn;
    btSalir: TBitBtn;
    btBuscaProd: TSpeedButton;
    btElimina: TSpeedButton;
    btPrecio: TSpeedButton;
    QPedidos: TADOQuery;
    dsPedidos: TDataSource;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    QPedidosEMP_CODIGO: TIntegerField;
    QPedidosPED_TIPO: TIBStringField;
    QPedidosPED_NUMERO: TIntegerField;
    QPedidosPED_FECHA: TDateTimeField;
    QPedidosVEN_CODIGO: TIntegerField;
    QPedidosCPA_CODIGO: TIntegerField;
    QPedidosPED_DIRECCION: TIBStringField;
    QPedidosPED_LOCALIDAD: TIBStringField;
    QPedidosPED_TELEFONO: TIBStringField;
    QPedidosPED_FAX: TIBStringField;
    QPedidosPED_DESCUENTO: TFloatField;
    QPedidosPED_ITBIS: TFloatField;
    QPedidosPED_OTROS: TFloatField;
    QPedidosPED_TOTAL: TFloatField;
    QPedidosPED_STATUS: TIBStringField;
    QPedidosSUP_CODIGO: TIntegerField;
    QPedidosSubTotal: TFloatField;
    Search: TQrySearchDlgADO;
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
    dsDetalle: TDataSource;
    QDetalleCalcItbis: TFloatField;
    QDetalleCalcDesc: TFloatField;
    QDetalleValor: TFloatField;
    QDetallePrecioItbis: TFloatField;
    QPedidosCLI_CODIGO: TIntegerField;
    QPedidosPED_NOMBRE: TIBStringField;
    DBEdit6: TDBEdit;
    QPedidosCLI_REFERENCIA: TIBStringField;
    btNota: TSpeedButton;
    Query1: TADOQuery;
    QPedidosPED_NOTA: TMemoField;
    QPedidosUSU_CODIGO: TIntegerField;
    QDetalleDET_ESCALA: TIBStringField;
    QDetalleDET_MANEJAESCALA: TIBStringField;
    btEscalas: TSpeedButton;
    QDetalleDET_MEDIDA: TIBStringField;
    QDetalleDET_NOTA: TMemoField;
    QPedidosPED_FECHAENTREGA: TDateTimeField;
    Label1: TLabel;
    DBEdit9: TDBEdit;
    QPedidosORDEN_CLIENTE: TStringField;
    Label11: TLabel;
    DBEdit13: TDBEdit;
    QPedidosSUC_CODIGO: TIntegerField;
    QDetalleSUC_CODIGO: TIntegerField;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    dsSuc: TDataSource;
    Label13: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    QDetalleDET_PRECIO1: TBCDField;
    QDetalleDET_PRECIO2: TBCDField;
    QDetalleDET_PRECIO3: TBCDField;
    QDetalleDET_PRECIO4: TBCDField;
    QSucursalalm_codigo: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    Label18: TLabel;
    cbPrecio: TComboBox;
    QPedidosCOT_NUMERO: TIntegerField;
    QDetalledet_despachado: TBCDField;
    Label16: TLabel;
    Label17: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit14: TDBEdit;
    SpeedButton1: TSpeedButton;
    Label21: TLabel;
    btmoneda: TSpeedButton;
    Label22: TLabel;
    tmoneda: TEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    QPedidosped_tasa: TBCDField;
    QPedidosmon_codigo: TIntegerField;
    PopupMenu1: TPopupMenu;
    Crearnotaalproducto1: TMenuItem;
    Vercombodelproducto1: TMenuItem;
    Escalas1: TMenuItem;
    DatosdelMedidor1: TMenuItem;
    N1: TMenuItem;
    Consultarmovimiento1: TMenuItem;
    N2: TMenuItem;
    Pantalladeproductos1: TMenuItem;
    Ajustedeinventario1: TMenuItem;
    SpeedButton2: TSpeedButton;
    DBGrid_1: TDBGrid;
    edt1: TEdit;
    QSelectIncrem1: TADOQuery;
    DS_1: TDataSource;
    QMsnExistencia: TADOQuery;
    QMsnExistenciaDISPONIBLE2: TStringField;
    QMsnExistenciaUBICACION: TStringField;
    dsMsnExistencia: TDataSource;
    Panel7: TPanel;
    dblExistencia: TDBText;
    dbtxtUBICACION: TDBText;
    QPedidosPED_FICHA: TStringField;
    QPedidosPED_COTIZACION: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormPaint(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure QPedidosNewRecord(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure QPedidosBeforePost(DataSet: TDataSet);
    procedure QPedidosVEN_CODIGOGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure QPedidosCPA_CODIGOGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure btVendedorClick(Sender: TObject);
    procedure btCondiClick(Sender: TObject);
    procedure btClienteClick(Sender: TObject);
    procedure QPedidosCalcFields(DataSet: TDataSet);
    procedure GridEnter(Sender: TObject);
    procedure GridColEnter(Sender: TObject);
    procedure GridKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure GridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btBuscaProdClick(Sender: TObject);
    procedure QDetallePRO_CODIGOChange(Sender: TField);
    procedure QDetallePRO_RORIGINALChange(Sender: TField);
    procedure QDetallePRO_RFABRICChange(Sender: TField);
    procedure QDetalleCalcFields(DataSet: TDataSet);
    procedure QDetalleAfterPost(DataSet: TDataSet);
    procedure btLimpiarClick(Sender: TObject);
    procedure btGrabarClick(Sender: TObject);
    procedure QDetalleNewRecord(DataSet: TDataSet);
    procedure btBuscaPedidoClick(Sender: TObject);
    procedure btEliminaClick(Sender: TObject);
    procedure btPrecioClick(Sender: TObject);
    procedure btNotaClick(Sender: TObject);
    procedure btSalirClick(Sender: TObject);
    procedure btEscalasClick(Sender: TObject);
    procedure QDetalleDET_MEDIDAChange(Sender: TField);
    procedure cbPrecioChange(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure QDetalleAfterDelete(DataSet: TDataSet);
    procedure btmonedaClick(Sender: TObject);
    procedure QPedidosmon_codigoGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure QPedidosmon_codigoChange(Sender: TField);
    procedure QDetalleBeforePost(DataSet: TDataSet);
    procedure edClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Crearnotaalproducto1Click(Sender: TObject);
    procedure Vercombodelproducto1Click(Sender: TObject);
    procedure Escalas1Click(Sender: TObject);
    procedure Consultarmovimiento1Click(Sender: TObject);
    procedure Pantalladeproductos1Click(Sender: TObject);
    procedure Ajustedeinventario1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBGrid_1DblClick(Sender: TObject);
    procedure DBGrid_1KeyPress(Sender: TObject; var Key: Char);
    procedure dsDetalleDataChange(Sender: TObject; Field: TField);
  private
    DesactivarCargaProductos :Boolean;
    vl_ped, vl_suc, vl_emp : Integer;
    { Private declarations }
  public
    { Public declarations }
    SubTotal, Total, descuento : double;
    Totaliza : boolean;
    procedure totalizar;
    procedure Imp40Columnas;
  end;

var
  frmPedidosCli: TfrmPedidosCli;

implementation

uses PVENTA33, PVENTA34, RVENTA00, PVENTA36, SIGMA01, SIGMA00, PVENTA117,
  PVENTA121, PVENTA186, PVENTA15, PVENTA138, StrUtils;

{$R *.DFM}

procedure TfrmPedidosCli.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmPedidosCli.FormPaint(Sender: TObject);
begin
  frmPedidosCli.top := 5;
  frmPedidosCli.left := 0;
end;

procedure TfrmPedidosCli.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then btSalirClick(self);
  if key = vk_f2  then btGrabarClick(self);
  if key = vk_f3  then btLimpiarClick(self);
  if key = vk_f7  then btNotaClick(self);
  
end;

procedure TfrmPedidosCli.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    if ActiveControl.classtype <> tdbgrid then
    begin
      perform(wm_nextdlgctl, 0, 0);
      key := #0;
    end;
  end;
end;

procedure TfrmPedidosCli.QPedidosNewRecord(DataSet: TDataSet);
var
  a : integer;
begin
  SubTotal := 0;
  Totaliza := true;

  QPedidosmon_codigo.Value := dm.QParametrosMON_CODIGO.Value;
  QPedidosSUC_CODIGO.Value := QSucursalsuc_codigo.Value;
  QPedidosUSU_CODIGO.value := dm.Usuario;
  QPedidosEMP_CODIGO.value := dm.vp_cia;
  QPedidosPED_TIPO.value   := 'C';
  QPedidosPED_STATUS.value := 'EMI';
  QPedidosPED_TOTAL.value  := 0;
  QPedidosPED_DESCUENTO.value := 0;
  QPedidosPED_ITBIS.value  := 0;
  QPedidosPED_OTROS.value  := 0;
  QPedidosPED_FECHA.value  := date;
  QDetalle.close;
  QDetalle.Parameters.parambyname('emp_codigo').Value := dm.vp_cia;
  QDetalle.Parameters.parambyname('ped_tipo').Value    := 'C';
  QDetalle.Parameters.parambyname('ped_numero').Value := QPedidosPED_NUMERO.value;
  QDetalle.open;

  {QDetalle.disablecontrols;
  for a := 1 to 30 do
  begin
    QDetalle.append;
    QDetalleEMP_CODIGO.value := dm.vp_cia;
    QDetallePED_TIPO.value   := 'C';
    QDetalleDET_SECUENCIA.value := a;
    QDetallePED_NUMERO.value := QPedidosPED_NUMERO.value;
    QDetalle.post;
  end;
  QDetalle.first;
  QDetalle.enablecontrols;}

  edCLiente.Text := '';
end;

procedure TfrmPedidosCli.FormActivate(Sender: TObject);
begin
  if not QPedidos.active then
  begin
    totaliza := true;
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;
    QPedidos.Parameters.parambyname('numero').Value := -1;
    QPedidos.Parameters.parambyname('suc').Value := -1;
    QPedidos.open;
    QDetalle.open;
    QPedidos.insert;
  end;
end;

procedure TfrmPedidosCli.QPedidosBeforePost(DataSet: TDataSet);
begin
  if QPedidos.state = dsInsert then
  begin
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select isnull(max(ped_numero),0) as maximo');
    dm.Query1.sql.add('from pedidos where emp_codigo = :emp');
    dm.Query1.sql.add('and ped_tipo = '+#39+'C'+#39);
    dm.Query1.sql.add('and suc_codigo = :suc');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('suc').Value := QPedidosSUC_CODIGO.Value;
    dm.Query1.open;
    QPedidosPED_NUMERO.value := dm.Query1.fieldbyname('maximo').asinteger + 1;
  end;


end;

procedure TfrmPedidosCli.QPedidosVEN_CODIGOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QPedidosVEN_CODIGO.isnull then
  begin
    Text := inttostr(QPedidosVEN_CODIGO.value);
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select ven_nombre from vendedores');
    dm.Query1.sql.add('where emp_Codigo = :emp');
    dm.Query1.sql.add('and ven_Codigo = :ven');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('ven').Value := QPedidosVEN_CODIGO.value;
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      tVendedor.text := ''
    else
      tVendedor.text := dm.Query1.fieldbyname('ven_nombre').asstring;
  end
  else
    tVendedor.text := '';
end;

procedure TfrmPedidosCli.QPedidosCPA_CODIGOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QPedidosCPA_CODIGO.isnull then
  begin
    Text := inttostr(QPedidosCPA_CODIGO.value);
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select cpa_nombre from condiciones');
    dm.Query1.sql.add('where emp_Codigo = :emp');
    dm.Query1.sql.add('and cpa_Codigo = :con');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('con').Value := QPedidosCPA_CODIGO.value;
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      tCondicion.text := ''
    else
      tCondicion.text := dm.Query1.fieldbyname('cpa_nombre').asstring;
  end
  else
    tCondicion.text := '';
end;

procedure TfrmPedidosCli.btVendedorClick(Sender: TObject);
begin
  Search.Query.clear;
  Search.Query.add('select substring(ven_nombre,1,50) as ven_nombre, ven_codigo');
  Search.Query.add('from vendedores');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.ResultField := 'ven_Codigo';
  Search.Title := 'Listado de Vendedores';
  if Search.execute then
  begin
    QPedidosVEN_CODIGO.value := strtoint(Search.ValueField);
    dbEdit11.setfocus;
  end;
end;

procedure TfrmPedidosCli.btCondiClick(Sender: TObject);
begin
  Search.Query.clear;
  Search.Query.add('select cpa_nombre, cpa_codigo');
  Search.Query.add('from condiciones');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.ResultField := 'cpa_Codigo';
  Search.Title := 'Condiciones de pago';
  if Search.execute then
  begin
    QPedidosCPA_CODIGO.value := strtoint(Search.ValueField);
    dbEdit12.setfocus;
  end;
end;

procedure TfrmPedidosCli.btClienteClick(Sender: TObject);
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
    dm.Query1.sql.add('select cli_codigo, cli_nombre, cli_balance, cli_referencia,');
    dm.Query1.sql.add('cli_limite, cli_precio, cli_descuento, ven_codigo, ');
    dm.Query1.sql.add('cli_direccion, cli_localidad, cli_telefono, cli_fax');
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
    QPedidosPED_NOMBRE.value := dm.Query1.fieldbyname('cli_nombre').asstring;
    QPedidosCLI_REFERENCIA.value := dm.Query1.fieldbyname('cli_referencia').asstring;
    tBalance.text := format('%n',[dm.Query1.fieldbyname('cli_balance').asfloat]);
    tLimite.text  := format('%n',[dm.Query1.fieldbyname('cli_limite').asfloat]);
    
    if dm.Query1.fieldbyname('cli_precio').asstring <> 'Ninguno' then
    begin
      cbPrecio.Items.IndexOf(dm.Query1.fieldbyname('cli_precio').asstring);
      //tPrecio.text  := dm.Query1.fieldbyname('cli_precio').asstring;
    end;

    tDesc.text    := format('%n',[dm.Query1.fieldbyname('cli_descuento').asfloat]);
    QPedidosPED_DIRECCION.value := dm.Query1.fieldbyname('cli_direccion').asstring;
    QPedidosPED_LOCALIDAD.value := dm.Query1.fieldbyname('cli_localidad').asstring;
    QPedidosPED_TELEFONO.value  := dm.Query1.fieldbyname('cli_telefono').asstring;
    QPedidosPED_FAX.value       := dm.Query1.fieldbyname('cli_fax').asstring;
    descuento := dm.Query1.fieldbyname('cli_descuento').asfloat;
    QPedidosCLI_CODIGO.value := dm.Query1.fieldbyname('cli_Codigo').asinteger;
    QPedidosVEN_CODIGO.Value := dm.Query1.fieldbyname('ven_codigo').AsInteger;
    dbedit1.setfocus;
  end;
end;

procedure TfrmPedidosCli.QPedidosCalcFields(DataSet: TDataSet);
begin
  QPedidosSubTotal.value := Total;
end;

procedure TfrmPedidosCli.GridEnter(Sender: TObject);
begin
  Grid.selectedindex := 0;
end;

procedure TfrmPedidosCli.GridColEnter(Sender: TObject);
begin
  if uppercase(Grid.Columns[Grid.selectedindex].FieldName) = 'DET_ESCALA' then
     Grid.selectedindex := Grid.selectedindex + 1
  else if uppercase(Grid.Columns[Grid.selectedindex].FieldName) = 'DET_DESCRIPCION' then
     Grid.selectedindex := Grid.selectedindex + 1
  else if uppercase(Grid.Columns[Grid.selectedindex].FieldName) = 'VALOR' then
  begin
    Grid.selectedindex := 0;
    QDetalle.Append;
  end;
end;

procedure TfrmPedidosCli.GridKeyPress(Sender: TObject; var Key: Char);
begin
if dm.QParametrospar_busq_incrementada.Value = True then begin
if Grid.selectedindex = 0 then begin
edt1.Text := Trim(edt1.Text)+Key;

IF KEY = #46 THEN KEY := #0;
if Key = #8 then
edt1.Text := LeftStr(Trim(TEdit(TDBGrid(Sender).Controls[0]).Text + Key),Length(Trim(TEdit(TDBGrid(Sender).Controls[0]).Text + Key))-1);
if edt1.Text <> '' then begin
DesactivarCargaProductos := True;
with QSelectIncrem1 do begin
Close;
if dm.QParametrosPAR_CODIGOPRODUCTO.Text = 'I' then
Parameters.ParamByName('TIPO').Value   := 0;
if dm.QParametrosPAR_CODIGOPRODUCTO.Text = 'O' then
Parameters.ParamByName('TIPO').Value   := 1;
if dm.QParametrosPAR_CODIGOPRODUCTO.Text = 'F' then
Parameters.ParamByName('TIPO').Value   := 2;
Parameters.ParamByName('CODIGO').Value := edt1.Text;
Parameters.ParamByName('SUC').Value    := DBLookupComboBox2.KeyValue;
Open;
IF NOT IsEmpty THEN  DBGrid_1.Visible := True;
IF IsEmpty THEN  DBGrid_1.Visible := False;
end;
end;
end;
end;

  if NOT dm.QParametrospar_busq_incrementada.Value = True then begin
  if key = #13 then Grid.selectedindex := Grid.selectedindex + 1;
  if uppercase(Grid.Columns[Grid.selectedindex].FieldName) = 'DET_MEDIDA' then
  begin
    QDetalle.Edit;
    if uppercase(key) = 'E' then
      QDetalleDET_MEDIDA.Value := 'Emp'
    else if uppercase(key) = 'U' then
      QDetalleDET_MEDIDA.Value := 'Und';
  end;
end;
END;

procedure TfrmPedidosCli.FormCreate(Sender: TObject);
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
  if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'I' then
     Grid.Columns[0].FieldName := 'PRO_CODIGO'
  else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'F' then
     Grid.Columns[0].FieldName := 'PRO_RFABRIC'
  else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'O' then
     Grid.Columns[0].FieldName := 'PRO_RORIGINAL';

  Grid.Columns[0].Width := 69;

  if dm.QParametrospar_visualizadesc.Value <> 'True' then
  begin
    Grid.Columns[6].Destroy;
    Grid.Columns[1].Width := Grid.Columns[1].Width + 13;
  end;

  if dm.QParametrosPAR_FACMEDIDA.Value <> 'True' then
  begin
    Grid.Columns[4].Destroy;
    Grid.Columns[1].Width := Grid.Columns[1].Width + 20;
  end;

  if dm.QParametrosPAR_FACESCALA.Value <> 'True' then
  begin
    Grid.Columns[3].Destroy;
    Grid.Columns[1].Width := Grid.Columns[1].Width + 20;
  end;   
  tPrecio.Text := cbPrecio.Text;
end;

procedure TfrmPedidosCli.GridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f4 then btBuscaProdClick(self);
  if key = vk_f5 then btEliminaClick(self);
  if key = vk_f6 then btPrecioClick(Self);
  if (key = vk_f12) and
  (QDetalleDET_MANEJAESCALA.Value = 'True') then btEscalasClick(Self);

if dm.QParametrospar_busq_incrementada.Value = True then begin
if DBGrid_1.Visible = True then begin
  if key = vk_down then begin
  QDetalle.Delete;
  DBGrid_1.SetFocus;
  DS_1.DataSet.Next;
  end;
  if key = vk_up then begin
  QDetalle.Delete;
  DBGrid_1.SetFocus;
  DS_1.DataSet.Prior;
  end;
  if key = vk_return then begin
  DS_1.DataSet.First;
  DBGrid_1DblClick(Sender);
  end;

  end;
  end;

end;

procedure TfrmPedidosCli.btBuscaProdClick(Sender: TObject);
begin
  application.createform(tfrmBuscaProducto, frmBuscaProducto);
  frmBuscaProducto.showmodal;
  if frmBuscaProducto.seleccion = 1 then
  begin
    QDetalle.Edit;
    if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'I' then
       QDetallePRO_CODIGO.value := frmBuscaProducto.QProductosPRO_CODIGO.value
    else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'F' then
       QDetallePRO_RFABRIC.value := frmBuscaProducto.QProductosPRO_RFABRIC.value
    else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'O' then
       QDetallePRO_RORIGINAL.value := frmBuscaProducto.QProductosPRO_RORIGINAL.value;
  end;
  frmBuscaProducto.release;
  Grid.setfocus;
end;

procedure TfrmPedidosCli.QDetallePRO_CODIGOChange(Sender: TField);
begin
  if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'I' then
  begin
    if not QDetallePRO_CODIGO.isnull then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select pro_codigo, pro_nombre, pro_costo, pro_precio1,');
      dm.Query1.sql.add('pro_precio2, pro_precio3, pro_precio4, pro_servicio,');
      dm.Query1.sql.add('pro_roriginal, pro_rfabric, pro_itbis, pro_escala, pro_montoitbis');
      dm.Query1.sql.add('from productos');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and pro_codigo = :cod');
      dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.Parameters.parambyname('cod').Value := QDetallePRO_CODIGO.value;
      dm.Query1.open;
      if dm.Query1.RecordCount > 0 then
      begin
        QDetallePRO_RORIGINAL.value := dm.Query1.fieldbyname('pro_roriginal').asstring;
        QDetallePRO_RFABRIC.value   := dm.Query1.fieldbyname('pro_rfabric').asstring;
        QDetalleDET_DESCRIPCION.value := dm.Query1.fieldbyname('pro_nombre').asstring;

        if (tPrecio.Text <> '') and (tPrecio.Text <> 'Ninguno') then
          QDetalleDET_PRECIO.value := dm.Query1.fieldbyname('pro_'+tPrecio.Text).asfloat;

        QDetalleDET_CONITBIS.value := dm.Query1.fieldbyname('pro_itbis').asstring;
        QDetalleDET_MANEJAESCALA.Value := dm.Query1.fieldbyname('pro_escala').asstring;
        QDetalleDET_DESCUENTO.value := descuento;

        QDetalleDET_ITBIS.Value := dm.Query1.fieldbyname('pro_montoitbis').AsFloat;
        if QDetalleDET_ITBIS.AsFloat > 0 then
           QDetalleDET_CONITBIS.value := 'S'
        else
           QDetalleDET_CONITBIS.value := 'N';

        if not FileExists('.\Transporte.Txt') then begin
        QDetalleDET_PRECIO1.Value      := dm.Query1.fieldbyname('pro_precio1').AsFloat;
        QDetalleDET_PRECIO2.Value      := dm.Query1.fieldbyname('pro_precio2').AsFloat;
        QDetalleDET_PRECIO3.Value      := dm.Query1.fieldbyname('pro_precio3').AsFloat;
        QDetalleDET_PRECIO4.Value      := dm.Query1.fieldbyname('pro_precio4').AsFloat;

        if (not QDetalleDET_MEDIDA.IsNull) and (dm.QParametrosPAR_FACMEDIDA.Value = 'True') then
        begin
          //Unidad
          if QDetalleDET_MEDIDA.Value = 'Und' then
            QDetalleDET_PRECIO.Value := QDetalle.FieldByName('det_'+dm.QParametrosPAR_PRECIOUND.Value).AsFloat;

          //Empaque
          if QDetalleDET_MEDIDA.Value = 'Emp' then
            QDetalleDET_PRECIO.Value := QDetalle.FieldByName('det_'+dm.QParametrosPAR_PRECIOEMP.Value).AsFloat;
        end
        else if dm.QParametrosPAR_FACMEDIDA.Value = 'False' then
          QDetalleDET_PRECIO.value := QDetalle.FieldByName('det_Precio1').AsFloat;

        //Buscando escalas
        if (QDetalleDET_MANEJAESCALA.Value = 'True') and (QDetalleDET_ESCALA.IsNull) then
        begin
          dm.Query1.Close;
          dm.Query1.SQL.Clear;
          dm.Query1.SQL.Add('select esc_escala from escalas');
          dm.Query1.SQL.Add('where emp_codigo = :emp');
          dm.Query1.SQL.Add('and pro_codigo = :pro');
          dm.Query1.SQL.Add('order by esc_secuencia');
          dm.Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
          dm.Query1.Parameters.ParamByName('pro').Value := QDetallePRO_CODIGO.Value;
          dm.Query1.Open;
          dm.Query1.DisableControls;
          QDetalleDET_ESCALA.Value := dm.Query1.FieldByName('esc_escala').AsString;
          Grid.Columns[3].PickList.Clear;
          while not dm.Query1.Eof do
          begin
            Grid.Columns[3].PickList.Add(dm.Query1.FieldByName('esc_escala').AsString);
            dm.Query1.Next;
          end;
          dm.Query1.EnableControls;
        end;

        //Grid.SelectedIndex := 2;
      end;
    end;
  end;

  end;
end;

procedure TfrmPedidosCli.QDetallePRO_RORIGINALChange(Sender: TField);
begin
  if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'O' then
  begin
    if not QDetallePRO_RORIGINAL.isnull then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select pro_codigo, pro_nombre, pro_costo, pro_precio1,');
      dm.Query1.sql.add('pro_precio2, pro_precio3, pro_precio4, pro_Servicio,');
      dm.Query1.sql.add('pro_roriginal, pro_rfabric, pro_itbis, pro_escala, pro_montoitbis');
      dm.Query1.sql.add('from productos ');
      dm.Query1.sql.add('where emp_codigo = :emp ');
      dm.Query1.sql.add('and pro_roriginal = :cod');
      dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.Parameters.parambyname('cod').Value := QDetallePRO_RORIGINAL.value;
      dm.Query1.open;
      if dm.Query1.RecordCount > 0 then
      begin
        QDetallePRO_CODIGO.value := dm.Query1.fieldbyname('pro_codigo').asinteger;
        QDetallePRO_RFABRIC.value   := dm.Query1.fieldbyname('pro_rfabric').asstring;
        QDetalleDET_DESCRIPCION.value := dm.Query1.fieldbyname('pro_nombre').asstring;
        QDetalleDET_PRECIO.value := dm.Query1.fieldbyname('pro_'+dm.QParametrosPAR_TIPOPRECIO.value).asfloat;
        QDetalleDET_CONITBIS.value := dm.Query1.fieldbyname('pro_itbis').asstring;
        QDetalleDET_MANEJAESCALA.Value := dm.Query1.fieldbyname('pro_escala').asstring;
        QDetalleDET_DESCUENTO.value := descuento;
        QDetalleDET_ITBIS.Value := dm.Query1.fieldbyname('pro_montoitbis').AsFloat;
        if QDetalleDET_ITBIS.AsFloat > 0 then
           QDetalleDET_CONITBIS.value := 'S'
        else
           QDetalleDET_CONITBIS.value := 'N';

        QDetalleDET_PRECIO1.Value      := dm.Query1.fieldbyname('pro_precio1').AsFloat;
        QDetalleDET_PRECIO2.Value      := dm.Query1.fieldbyname('pro_precio2').AsFloat;
        QDetalleDET_PRECIO3.Value      := dm.Query1.fieldbyname('pro_precio3').AsFloat;
        QDetalleDET_PRECIO4.Value      := dm.Query1.fieldbyname('pro_precio4').AsFloat;

        if (not QDetalleDET_MEDIDA.IsNull) and (dm.QParametrosPAR_FACMEDIDA.Value = 'True') then
        begin
          //Unidad
          if QDetalleDET_MEDIDA.Value = 'Und' then
            QDetalleDET_PRECIO.Value := QDetalle.FieldByName('det_'+dm.QParametrosPAR_PRECIOUND.Value).AsFloat;

          //Empaque
          if QDetalleDET_MEDIDA.Value = 'Emp' then
            QDetalleDET_PRECIO.Value := QDetalle.FieldByName('det_'+dm.QParametrosPAR_PRECIOEMP.Value).AsFloat;
        end
        else if dm.QParametrosPAR_FACMEDIDA.Value = 'False' then
          QDetalleDET_PRECIO.value := QDetalle.FieldByName('det_Precio1').AsFloat;


        //Buscando escalas
        if (QDetalleDET_MANEJAESCALA.Value = 'True') and (QDetalleDET_ESCALA.IsNull) then
        begin
          dm.Query1.Close;
          dm.Query1.SQL.Clear;
          dm.Query1.SQL.Add('select esc_escala from escalas');
          dm.Query1.SQL.Add('where emp_codigo = :emp');
          dm.Query1.SQL.Add('and pro_codigo = :pro');
          dm.Query1.SQL.Add('order by esc_secuencia');
          dm.Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
          dm.Query1.Parameters.ParamByName('pro').Value := QDetallePRO_CODIGO.Value;
          dm.Query1.Open;
          dm.Query1.DisableControls;
          QDetalleDET_ESCALA.Value := dm.Query1.FieldByName('esc_escala').AsString;
          Grid.Columns[3].PickList.Clear;
          while not dm.Query1.Eof do
          begin
            Grid.Columns[3].PickList.Add(dm.Query1.FieldByName('esc_escala').AsString);
            dm.Query1.Next;
          end;
          dm.Query1.EnableControls;
        end;

        //Grid.SelectedIndex := 2;
      end;
    end;
  end;
end;

procedure TfrmPedidosCli.QDetallePRO_RFABRICChange(Sender: TField);
begin
  if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'F' then
  begin
    if not QDetallePRO_RFABRIC.isnull then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select pro_codigo, pro_nombre, pro_costo, pro_precio1,');
      dm.Query1.sql.add('pro_precio2, pro_precio3, pro_precio4, pro_servicio,');
      dm.Query1.sql.add('pro_roriginal, pro_rfabric, pro_itbis, pro_escala, pro_montoitbis');
      dm.Query1.sql.add('from productos ');
      dm.Query1.sql.add('where emp_codigo = :emp ');
      dm.Query1.sql.add('and pro_rfabric = :cod');
      dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.Parameters.parambyname('cod').Value := QDetallePRO_RFABRIC.value;
      dm.Query1.open;
      if dm.Query1.RecordCount > 0 then
      begin
        QDetallePRO_CODIGO.value := dm.Query1.fieldbyname('pro_codigo').asinteger;
        QDetallePRO_RORIGINAL.value   := dm.Query1.fieldbyname('pro_roriginal').asstring;
        QDetalleDET_DESCRIPCION.value := dm.Query1.fieldbyname('pro_nombre').asstring;
        QDetalleDET_PRECIO.value := dm.Query1.fieldbyname('pro_'+dm.QParametrosPAR_TIPOPRECIO.value).asfloat;
        QDetalleDET_CONITBIS.value := dm.Query1.fieldbyname('pro_itbis').asstring;
        QDetalleDET_MANEJAESCALA.Value := dm.Query1.fieldbyname('pro_escala').asstring;
        QDetalleDET_DESCUENTO.value := descuento;
        QDetalleDET_ITBIS.Value := dm.Query1.fieldbyname('pro_montoitbis').AsFloat;
        if QDetalleDET_ITBIS.AsFloat > 0 then
           QDetalleDET_CONITBIS.value := 'S'
        else
           QDetalleDET_CONITBIS.value := 'N';

        QDetalleDET_PRECIO1.Value      := dm.Query1.fieldbyname('pro_precio1').AsFloat;
        QDetalleDET_PRECIO2.Value      := dm.Query1.fieldbyname('pro_precio2').AsFloat;
        QDetalleDET_PRECIO3.Value      := dm.Query1.fieldbyname('pro_precio3').AsFloat;
        QDetalleDET_PRECIO4.Value      := dm.Query1.fieldbyname('pro_precio4').AsFloat;

        if (not QDetalleDET_MEDIDA.IsNull) and (dm.QParametrosPAR_FACMEDIDA.Value = 'True') then
        begin
          //Unidad
          if QDetalleDET_MEDIDA.Value = 'Und' then
            QDetalleDET_PRECIO.Value := QDetalle.FieldByName('det_'+dm.QParametrosPAR_PRECIOUND.Value).AsFloat;

          //Empaque
          if QDetalleDET_MEDIDA.Value = 'Emp' then
            QDetalleDET_PRECIO.Value := QDetalle.FieldByName('det_'+dm.QParametrosPAR_PRECIOEMP.Value).AsFloat;
        end
        else if dm.QParametrosPAR_FACMEDIDA.Value = 'False' then
          QDetalleDET_PRECIO.value := QDetalle.FieldByName('det_Precio1').AsFloat;

        //Buscando escalas
        if (QDetalleDET_MANEJAESCALA.Value = 'True') and (QDetalleDET_ESCALA.IsNull) then
        begin
          dm.Query1.Close;
          dm.Query1.SQL.Clear;
          dm.Query1.SQL.Add('select esc_escala from escalas');
          dm.Query1.SQL.Add('where emp_codigo = :emp');
          dm.Query1.SQL.Add('and pro_codigo = :pro');
          dm.Query1.SQL.Add('order by esc_secuencia');
          dm.Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
          dm.Query1.Parameters.ParamByName('pro').Value := QDetallePRO_CODIGO.Value;
          dm.Query1.Open;
          dm.Query1.DisableControls;
          QDetalleDET_ESCALA.Value := dm.Query1.FieldByName('esc_escala').AsString;
          Grid.Columns[3].PickList.Clear;
          while not dm.Query1.Eof do
          begin
            Grid.Columns[3].PickList.Add(dm.Query1.FieldByName('esc_escala').AsString);
            dm.Query1.Next;
          end;
          dm.Query1.EnableControls;
        end;

        //Grid.SelectedIndex := 2;
      end;
    end;
  end;
end;

procedure TfrmPedidosCli.QDetalleCalcFields(DataSet: TDataSet);
var
  Venta, NumItbis : Double;
begin
  if QDetalleDET_CONITBIS.value = 'S' then
  begin
    NumItbis := (QDetalleDET_ITBIS.asfloat/100)+1;
    QDetalleCalcDesc.value    := 0;
    if dm.QParametrospar_itbisincluido.Value = 'True' then
    begin
      Venta    := (QDetalleDET_PRECIO.value)/NumItbis;

      QDetallePrecioItbis.value := Venta;
      QDetalleCalcDesc.value    := Venta * (QDetalleDET_DESCUENTO.value/100);
      QDetalleCalcItbis.value   := (Venta-QDetalleCalcDesc.value)*
                                   (QDetalleDET_ITBIS.Value/100);
      QDetalleValor.value       := (Venta-
                                   QDetalleCalcDesc.value+
                                   QDetalleCalcItbis.value)*
                                   QDetalleDET_CANTIDAD.value;
    end
    else
    begin
      Venta    := QDetalleDET_PRECIO.value;
      QDetallePrecioItbis.value := QDetalleDET_PRECIO.value;
      QDetalleCalcDesc.value    := Venta *
                                 (QDetalleDET_DESCUENTO.value/100);
      QDetalleCalcItbis.value   := (QDetalleDET_PRECIO.value-QDetalleCalcDesc.value)*
                                   (QDetalleDET_ITBIS.Value/100);
      {QDetalleValor.value       := ((strtofloat(format('%10.2f',[QDetalleDET_PRECIO.value]))-
                                   strtofloat(format('%10.2f',[QDetalleCalcDesc.value])))+
                                   strtofloat(format('%10.2f',[QDetalleCalcItbis.value])))*
                                   strtofloat(format('%10.2f',[QDetalleDET_CANTIDAD.value]));}
      QDetalleValor.value := (QDetalleDET_PRECIO.value - QDetalleCalcDesc.Value)*
                             QDetalleDET_CANTIDAD.value;
    end;
  end
  else
  begin
    Venta := QDetalleDET_PRECIO.value;
    QDetalleCalcDesc.value    := Venta *
                               (QDetalleDET_DESCUENTO.value/100);
    QDetallePrecioItbis.value := Venta;
    QDetalleCalcItbis.value   := 0;
    QDetalleValor.value       := (Venta-QDetalleCalcDesc.value)*QDetalleDET_CANTIDAD.value;
  end;
end;

procedure TfrmPedidosCli.totalizar;
var
  Puntero : TBookmark;
  TItbis, TDesc : Double;
begin
  if Totaliza = true then
  begin
    Puntero := QDetalle.GetBookmark;
    QDetalle.disablecontrols;
    QDetalle.first;
    Total  := 0;
    TItbis := 0;
    TDesc  := 0;
    while not QDetalle.eof do
    begin
      Total  := Total  + strtofloat(format('%10.2f',[QDetalleDET_CANTIDAD.value]))*strtofloat(format('%10.2f',[QDetallePrecioItbis.value]));
      TDesc  := TDesc  + strtofloat(format('%10.2f',[QDetalleCalcDesc.value*QDetalleDET_CANTIDAD.value]));
      TItbis := strtofloat(format('%10.2f',[TItbis])) + strtofloat(format('%10.2f',[QDetalleCalcItbis.value*QDetalleDET_CANTIDAD.value]));
      QDetalle.next;
    end;
    QPedidos.edit;
    QPedidosPED_ITBIS.value     := strtofloat(format('%10.2f',[TItbis]));
    QPedidosPED_DESCUENTO.value := strtofloat(format('%10.2f',[TDesc]));
    QPedidosPED_TOTAL.value     := strtofloat(format('%10.2f',[(Total-TDesc)+QPedidosPED_ITBIS.value]));
    QDetalle.GotoBookmark(Puntero);
    QDetalle.enablecontrols;
  end;
end;

procedure TfrmPedidosCli.QDetalleAfterPost(DataSet: TDataSet);
begin
  totalizar;
end;

procedure TfrmPedidosCli.btLimpiarClick(Sender: TObject);
begin
  QPedidos.close;
  QPedidos.Parameters.parambyname('numero').Value := -1;
  QPedidos.open;
  QPedidos.insert;
  DBEdit5.setfocus;
end;

procedure TfrmPedidosCli.btGrabarClick(Sender: TObject);
var
  a : integer;
begin
  if QPedidosPED_NOMBRE.isnull then
  begin
    showmessage('DEBE ESPECIFICAR EL CLIENTE');
    edCliente.setfocus;
  end
  else
  begin
    if messagedlg('ESTA SEGURO QUE DESEA GRABAR?',mtconfirmation,[mbyes,mbno],0) = mryes then
    begin
      totaliza := false;
      if QPedidos.State = dsinsert then
      begin
        dm.Query1.close;
        dm.Query1.sql.clear;
        dm.Query1.sql.add('select isnull(max(ped_numero),0) as maximo ');
        dm.Query1.sql.add('from pedidos where emp_codigo = :emp ');
        dm.Query1.sql.add('and ped_tipo = '+#39+'C'+#39);
        dm.Query1.sql.add('and suc_codigo = :suc');
        dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
        dm.Query1.Parameters.parambyname('suc').Value := QPedidosSUC_CODIGO.Value;
        dm.Query1.open;
        QPedidosPED_NUMERO.value := dm.Query1.fieldbyname('maximo').asinteger + 1;
      end;
      QPedidos.post;
      QPedidos.UpdateBatch;

      a := 0;
      QDetalle.disablecontrols;
      QDetalle.first;
      while not QDetalle.eof do
      begin
        a := a + 1;
        QDetalle.edit;
        QDetalleEMP_CODIGO.value := dm.vp_cia;
        QDetallePED_TIPO.value   := 'C';
        QDetallePED_NUMERO.value := QPedidosPED_NUMERO.value;
        QDetalleDET_SECUENCIA.value := a;
        QDetalleSUC_CODIGO.Value := QPedidosSUC_CODIGO.Value;
        QDetalle.post;
        QDetalle.next;
      end;
      QDetalle.first;
      QDetalle.enablecontrols;
      QDetalle.UpdateBatch;

      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('execute pr_graba_ped :emp, :suc, :tip, :num');
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      dm.Query1.Parameters.parambyname('num').Value := QPedidosPED_NUMERO.value;
      dm.Query1.Parameters.parambyname('tip').Value  := 'C';
      dm.Query1.Parameters.parambyname('suc').Value  := QPedidosSUC_CODIGO.Value;
      dm.Query1.ExecSQL;

      vl_ped := QPedidosPED_NUMERO.Value;
      vl_suc := DBLookupComboBox2.KeyValue;
      vl_emp := QPedidosEMP_CODIGO.Value;

      if messagedlg('SE HA GENERADO EL PEDIDO NO. '+inttostr(QPedidosPED_NUMERO.value)+#13+
      'DESEA IMPRIMIRLO?',mtconfirmation,[mbyes,mbno],0) = mryes then
      begin
        application.createform(tRPedido, RPedido);
        RPedido.QPedido.close;
        RPedido.QPedido.Parameters.parambyname('numero').Value := QPedidosPED_NUMERO.value;
        RPedido.QPedido.Parameters.parambyname('suc').Value := QPedidosSUC_CODIGO.value;
        RPedido.QPedido.open;
        RPedido.QDetalle.open;
        RPedido.printersetup;
        RPedido.Print;
        RPedido.Destroy;
      end;

      btLimpiarClick(self);
    end
    else
      Grid.setfocus;
  end;
end;

procedure TfrmPedidosCli.QDetalleNewRecord(DataSet: TDataSet);
begin
  QDetalleDET_FACTURADO.value := 0;
  QDetalleDET_STATUS.value := 'PED';
  QDetalleDET_MEDIDA.Value := 'Und';
  QDetalleSUC_CODIGO.Value := QPedidosSUC_CODIGO.Value;
  QDetalledet_despachado.Value := 0;
  QDetalledet_medida.Value := 'Und';
end;

procedure TfrmPedidosCli.btBuscaPedidoClick(Sender: TObject);
var
  a, Suc : integer;
begin
  Suc := QPedidosSUC_CODIGO.Value;

  Search.AliasFields.Clear;
  Search.AliasFields.Add('Numero');
  Search.AliasFields.Add('Nombre Cliente');

  Search.Query.clear;
  Search.Query.add('select ped_numero, substring(ped_nombre,1,50) as ped_nombre');
  Search.Query.add('from pedidos');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.Query.add('and ped_tipo = '+#39+'C'+#39);
  Search.Query.add('and ped_status = '+#39+'EMI'+#39);
  Search.Query.add('and suc_codigo = '+IntToStr(Suc));
  Search.ResultField := 'ped_numero';
  Search.Title := 'Pedidos de clientes';
  if Search.execute then
  begin
    Totaliza := false;
    QDetalle.disablecontrols;
    QPedidos.close;
    QPedidos.Parameters.parambyname('numero').Value := strtoint(Search.ValueField);
    QPedidos.Parameters.parambyname('suc').Value := Suc;
    QPedidos.open;

    QDetalle.close;
    QDetalle.Parameters.parambyname('emp_codigo').Value := dm.vp_cia;
    QDetalle.Parameters.parambyname('ped_tipo').Value    := 'C';
    QDetalle.Parameters.parambyname('ped_numero').Value := strtoint(Search.ValueField);
    QDetalle.Parameters.parambyname('suc').Value := Suc;
    QDetalle.open;

    {QDetalle.last;
    for a := QDetalleDET_SECUENCIA.value to 30 do
    begin
      QDetalle.append;
      QDetalleEMP_CODIGO.value    := dm.vp_cia;
      QDetallePED_TIPO.value      := 'C';
      QDetalleDET_SECUENCIA.value := a;
      QDetallePED_NUMERO.value    := QPedidosPED_NUMERO.value;
      QDetalle.post;
    end;
    QDetalle.first;}
    QDetalle.enablecontrols;

    if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
       edCliente.text := inttostr(QPedidosCLI_CODIGO.value)
    else
       edCliente.text := QPedidosCLI_REFERENCIA.value;

    Query1.close;
    Query1.sql.clear;
    Query1.sql.add('select cli_referencia, cli_codigo, cli_nombre, cli_balance,');
    Query1.sql.add('cli_limite, cli_precio, cli_descuento,');
    Query1.sql.add('cli_direccion, cli_localidad, cli_telefono, cli_fax');
    Query1.sql.add('from clientes');
    Query1.sql.add('where emp_codigo = :emp');
    Query1.sql.add('and cli_Status = '+#39+'ACT'+#39);
    if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
    begin
      Query1.sql.add('and cli_codigo = :cli');
      Query1.Parameters.parambyname('cli').Value := strtoint(edCliente.text);
    end
    else
    begin
      Query1.sql.add('and cli_referencia = :cli');
      Query1.Parameters.parambyname('cli').Value := edCliente.text;
    end;

    Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    Query1.open;
    QPedidos.edit;
    tBalance.text := format('%n',[Query1.fieldbyname('cli_balance').asfloat]);
    tLimite.text  := format('%n',[Query1.fieldbyname('cli_limite').asfloat]);
    tPrecio.text  := Query1.fieldbyname('cli_precio').asstring;
    tDesc.text    := format('%n',[Query1.fieldbyname('cli_descuento').asfloat]);
    descuento := Query1.fieldbyname('cli_descuento').asfloat;

    Totaliza := true;
    Grid.setfocus;
  end
  else
    DBEdit5.SetFocus;
end;

procedure TfrmPedidosCli.btEliminaClick(Sender: TObject);
begin
  QDetalle.delete;
  Grid.setfocus;
end;

procedure TfrmPedidosCli.btPrecioClick(Sender: TObject);
begin
  application.createform(tfrmPrecios, frmPrecios);
  dm.query1.close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select pro_precio1, pro_precio2,');
  dm.Query1.sql.add('pro_precio3, pro_precio4 ');
  dm.Query1.sql.add('from productos ');
  dm.Query1.sql.add('where emp_codigo = :emp ');
  dm.Query1.sql.add('and pro_Codigo = :prod');
  dm.query1.Parameters.parambyname('emp').Value  := dm.QParametrosPAR_INVEMPRESA.Value;
  dm.query1.Parameters.parambyname('prod').Value := QDetallePRO_CODIGO.value;
  dm.query1.open;
  frmPrecios.edProducto.text := QDetalleDET_DESCRIPCION.value;
  frmPrecios.edPrecio1.text  := format('%n',[dm.Query1.fieldbyname('pro_precio1').asfloat]);
  frmPrecios.edPrecio2.text  := format('%n',[dm.Query1.fieldbyname('pro_precio2').asfloat]);
  frmPrecios.edPrecio3.text  := format('%n',[dm.Query1.fieldbyname('pro_precio3').asfloat]);
  frmPrecios.edPrecio4.text  := format('%n',[dm.Query1.fieldbyname('pro_precio4').asfloat]);
  frmPrecios.showmodal;
  if frmPrecios.Precio <> 'null' then
  begin
    QDetalle.edit;
    QDetalleDET_PRECIO.value := dm.Query1.fieldbyname(frmPrecios.Precio).asfloat;
    QDetalle.post;
  end;
  frmPrecios.release;
  Grid.setfocus;
end;

procedure TfrmPedidosCli.btNotaClick(Sender: TObject);
begin
  application.createform(tfrmNota, frmNota);
  frmNota.DBMemo1.DataSource := frmPedidosCli.dsPedidos;
  frmNota.DBMemo1.DataField := 'PED_NOTA';
  frmNota.showmodal;
  frmNota.release;
end;

procedure TfrmPedidosCli.btSalirClick(Sender: TObject);
begin
  close;
end;

procedure TfrmPedidosCli.btEscalasClick(Sender: TObject);
begin
  if QDetalleDET_MANEJAESCALA.Value = 'True' then
  begin
    Application.CreateForm(tfrmSelEscala, frmSelEscala);
    frmSelEscala.QEscalas.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
    frmSelEscala.QEscalas.Parameters.ParamByName('pro').Value := QDetallePRO_CODIGO.Value;
    frmSelEscala.ShowModal;
    if frmSelEscala.Seleccion = True then
    begin
      QDetalle.Edit;
      QDetalleDET_ESCALA.Value := frmSelEscala.QEscalasESC_ESCALA.Value;
      QDetalle.Post;
    end;
    frmSelEscala.Release;
  end;
  Grid.SetFocus;
end;

procedure TfrmPedidosCli.QDetalleDET_MEDIDAChange(Sender: TField);
begin
  if (not QDetalleDET_MEDIDA.IsNull) and (dm.QParametrosPAR_FACMEDIDA.Value = 'True') then
  begin
    //Unidad
    if QDetalleDET_MEDIDA.Value = 'Und' then
      QDetalleDET_PRECIO.Value := QDetalle.FieldByName('det_'+dm.QParametrosPAR_PRECIOUND.Value).AsFloat;

    //Empaque
    if QDetalleDET_MEDIDA.Value = 'Emp' then
      QDetalleDET_PRECIO.Value := QDetalle.FieldByName('det_'+dm.QParametrosPAR_PRECIOEMP.Value).AsFloat;
  end
  else if dm.QParametrosPAR_FACMEDIDA.Value = 'False' then
    QDetalleDET_PRECIO.value := QDetalle.FieldByName('det_Precio1').AsFloat;
end;

procedure TfrmPedidosCli.Imp40Columnas;
var
  s, s1, s2 : array [0..20] of char;
  arch, puertopeq : textfile;
  puerto : string;
begin
  if FileExists('puerto.txt') then
  begin
    assignfile(puertopeq, 'puerto.txt');
    reset(puertopeq);
    readln(puertopeq, puerto);
  end
  else
    puerto := 'PRN';

  closefile(puertopeq);

  AssignFile(arch, 'c:\imp.bat');
  rewrite(arch);
  writeln(arch, 'type c:\t.txt > '+puerto);
  closefile(arch);

  application.CreateForm(TRPedido, RPedido);
  RPedido.QPedido.Parameters.ParamByName('numero').Value := QPedidosPED_NUMERO.value;
  RPedido.QPedido.open;
  RPedido.QDetalle.open;
  AssignFile(arch, 'c:\t.txt');
  rewrite(arch);
  writeln(arch, dm.Centro(trim(dm.QEmpresasEMP_NOMBRE.value)));
  writeln(arch, dm.Centro(trim(DM.QEmpresasEMP_DIRECCION.value)));
  writeln(arch, dm.Centro(trim(DM.QEmpresasEMP_LOCALIDAD.value)));
  writeln(arch, dm.Centro('Telefono : '+trim(dm.QEmpresasEMP_TELEFONO.value)));
  writeln(arch, dm.Centro('RNC: '+dm.QEmpresasEMP_RNC.value));
  writeln(arch, ' ');
  writeln(arch, dm.Centro('PEDIDO DE CLIENTES'));
  writeln(arch, ' ');
  writeln(arch, 'Numero     : '+inttostr(RPedido.QPedidoPED_NUMERO.value));
  writeln(arch, 'Fecha      : '+DateToStr(RPedido.QPedidoPED_FECHA.value));
  writeln(arch, 'Pedido por : '+RPedido.QPedidoPED_NOMBRE.value);
  writeln(arch, 'Direccion  : '+RPedido.QPedidoPED_DIRECCION.value);
  writeln(arch, 'Telefono   : '+RPedido.QPedidoPED_TELEFONO.value);
  writeln(arch, '----------------------------------------');
  writeln(arch, 'Can. Descripcion                        ');
  writeln(arch, '----------------------------------------');
  while not RPedido.QDetalle.eof do
  begin
    s := '';
    fillchar(S, 5-length(floattostr(RPedido.QDetalleDET_CANTIDAD.value)),' ');
    s1 := '';
    fillchar(S1, 26-length(copy(trim(RPedido.QDetalleDET_DESCRIPCION.value),1,32)),' ');
    s2 := '';
    fillchar(S2, 9-length(format('%n',[RPedido.QDetalleVAlor.value])),' ');
    writeln(arch, floattostr(RPedido.QDetalleDET_CANTIDAD.value)+s+
            copy(trim(RPedido.QDetalleDET_DESCRIPCION.value),1,32));

    RPedido.QDetalle.next;
  end;
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, dm.Centro('_____________________'));
  writeln(arch, dm.Centro('Recibido por'));
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  CloseFile(arch);
  winexec('c:\imp.bat',0);
  RPedido.Destroy;
end;

procedure TfrmPedidosCli.cbPrecioChange(Sender: TObject);
begin
  tPrecio.Text := cbprecio.Text;
end;

procedure TfrmPedidosCli.SpeedButton1Click(Sender: TObject);
var
  a : integer;
begin
  Search.AliasFields.clear;
  Search.AliasFields.add('Numero');
  Search.AliasFields.add('Nombre del Cliente');
  Search.Query.clear;
  Search.Query.add('select cot_numero, substring(cot_nombre,1,50) as cot_nombre');
  Search.Query.add('from cotizacion');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.ResultField := 'cot_numero';
  Search.Title := 'Cotizaciones';
  if Search.execute then
  begin
    Totaliza := false;
    //Buscando := True;
    QDetalle.close;
    QDetalle.open;
    QDetalle.disablecontrols;

    Query1.close;
    Query1.sql.clear;
    Query1.sql.add('select cli_codigo, cot_nombre, cli_referencia,');
    Query1.sql.add('ven_codigo, cot_direccion, cot_localidad, cpa_codigo,');
    Query1.sql.add('cot_telefono, cot_fax, ven_codigo, cot_numero, mon_codigo, cot_tasa');
    Query1.sql.add('from cotizacion');
    Query1.sql.add('where emp_codigo = :emp');
    Query1.sql.add('and cot_numero = :numero');
    Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    Query1.Parameters.parambyname('numero').Value := strtoint(search.valuefield);
    Query1.open;

    if not Query1.FieldByName('cli_codigo').IsNull then
    begin
      QPedidosCLI_CODIGO.value := Query1.fieldbyname('cli_codigo').asinteger;
      QPedidosCLI_REFERENCIA.value := Query1.fieldbyname('cli_referencia').asstring;
      if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
         edCliente.text := Query1.fieldbyname('cli_codigo').asstring
      else
         edCliente.text := Query1.fieldbyname('cli_referencia').asstring;
    end;
    QPedidosped_tasa.Value      := Query1.fieldbyname('cot_tasa').AsFloat;
    QPedidoscpa_codigo.Value    := Query1.fieldbyname('cpa_codigo').asinteger;
    QPedidosPED_NOMBRE.Value    := Query1.fieldbyname('cot_nombre').asstring;
    QPedidosPED_DIRECCION.value := Query1.fieldbyname('cot_direccion').asstring;
    QPedidosPED_TELEFONO.value  := Query1.fieldbyname('cot_telefono').asstring;
    QPedidosPED_FAX.value       := Query1.fieldbyname('cot_fax').asstring;
    QPedidosVEN_CODIGO.Value    := Query1.fieldbyname('ven_codigo').asinteger;
    QPedidosCOT_NUMERO.Value    := Query1.fieldbyname('cot_numero').asinteger;
    QPedidosmon_codigo.Value    := Query1.fieldbyname('mon_codigo').asinteger;

    Query1.close;
    Query1.sql.clear;
    Query1.sql.add('select d.pro_codigo, d.pro_roriginal, d.pro_rfabric, d.det_descuento,');
    Query1.sql.add('d.det_cantidad, d.det_precio, d.det_conitbis, d.det_itbis,');
    Query1.sql.add('d.det_manejaescala, d.det_escala, d.pro_nombre, d.det_medida, d.det_nota, p.pro_costo');
    Query1.sql.add('from det_cotizacion d left outer join productos p on');
    Query1.sql.add('(d.pro_codigo = p.pro_codigo)');
    Query1.sql.add('where d.emp_codigo = :emp');
    Query1.sql.add('and d.cot_numero = :numero');
    Query1.sql.add('and p.emp_codigo = '+dm.QParametrosPAR_INVEMPRESA.AsString);
    Query1.sql.add('order by d.det_secuencia');
    Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    Query1.Parameters.parambyname('numero').Value := strtoint(search.valuefield);
    Query1.open;

    Totaliza := false;

    a := 0;
    while not Query1.eof do
    begin
      a := a + 1;

      QDetalle.append;
      QDetalleEMP_CODIGO.value    := dm.vp_cia;
      QDetalleDET_SECUENCIA.value := a;
      QDetalleDET_CANTIDAD.value  := Query1.fieldbyname('det_cantidad').asFloat;
      if not Query1.fieldbyname('pro_codigo').IsNull then
        QDetallePRO_CODIGO.value    := Query1.fieldbyname('pro_codigo').AsInteger;
      QDetalleDET_ITBIS.value     := Query1.fieldbyname('det_itbis').asfloat;
      QDetalleDET_DESCRIPCION.value := Query1.fieldbyname('pro_nombre').AsString;
      QDetallePRO_RORIGINAL.value := Query1.fieldbyname('pro_roriginal').asstring;
      QDetallePRO_RFABRIC.value   := Query1.fieldbyname('pro_rfabric').asstring;
      QDetalleDET_CONITBIS.value  := Query1.fieldbyname('det_conitbis').asstring;
      QDetalleDET_MANEJAESCALA.Value := Query1.fieldbyname('det_manejaescala').asstring;
      QDetalleDET_ESCALA.Value    := Query1.fieldbyname('det_escala').asstring;
      if trim(Query1.fieldbyname('det_medida').asstring) <> '' then
        QDetalleDET_MEDIDA.Value    := Query1.fieldbyname('det_medida').asstring
      else
        QDetalleDET_MEDIDA.Value := 'Und';
      QDetalleDET_PRECIO.value    := Query1.fieldbyname('det_precio').asFloat;
      QDetalleDET_DESCUENTO.Value := Query1.fieldbyname('det_descuento').asFloat;
      QDetalleDET_NOTA.Value      := Query1.fieldbyname('det_nota').Value;
      QDetalle.post;

      Query1.next;
    end;

    {for a := QDetalleDET_SECUENCIA.value to 30 do
    begin
      QDetalle.append;
      QDetalleEMP_CODIGO.value := dm.vp_cia;
      QDetalleFAC_FORMA.value  := QFacturaFAC_FORMA.value;
      QDetalleDET_SECUENCIA.value := a;
      QDetalle.post;
    end;
    QDetalle.first;}
    QDetalle.enablecontrols;
    QDetalle.first;

    Totaliza := true;
    totalizar;

    if not QPedidosCLI_CODIGO.IsNull then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select cli_referencia, cli_codigo, cli_nombre, cli_balance,');
      dm.Query1.sql.add('cli_limite, cli_precio, cli_descuento, cli_cuenta, cli_rnc,');
      dm.Query1.sql.add('cli_direccion, cli_localidad, cli_telefono, cli_fax, cli_cedula');
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
      QPedidosPED_NOMBRE.value := dm.Query1.fieldbyname('cli_nombre').asstring;
      QPedidosCLI_CODIGO.value := dm.Query1.fieldbyname('cli_Codigo').asinteger;
      QPedidosCLI_REFERENCIA.value := dm.Query1.fieldbyname('cli_referencia').asstring;
      tBalance.Text := format('%n',[dm.Query1.fieldbyname('cli_balance').asfloat]);
      tLimite.text  := format('%n',[dm.Query1.fieldbyname('cli_limite').asfloat-
                                    dm.Query1.fieldbyname('cli_balance').asfloat]);
      //tDesc.text    := format('%n',[dm.Query1.fieldbyname('cli_descuento').asfloat]);
      QPedidosPED_DIRECCION.value := dm.Query1.fieldbyname('cli_direccion').asstring;
      QPedidosPED_LOCALIDAD.value := dm.Query1.fieldbyname('cli_localidad').asstring;
      QPedidosPED_TELEFONO.value  := dm.Query1.fieldbyname('cli_telefono').asstring;
      QPedidosPED_FAX.value       := dm.Query1.fieldbyname('cli_fax').asstring;

      descuento := dm.Query1.fieldbyname('cli_descuento').asfloat;
    end;
    //Buscando := False;

    Grid.setfocus;
  end;
end;

procedure TfrmPedidosCli.QDetalleAfterDelete(DataSet: TDataSet);
begin
  totalizar;
end;

procedure TfrmPedidosCli.btmonedaClick(Sender: TObject);
begin
  Search.AliasFields.clear;
  Search.AliasFields.add('Nombre');
  Search.AliasFields.add('C�digo');
  Search.Query.clear;
  Search.Query.add('select mon_nombre, mon_codigo');
  Search.Query.add('from moneda');
  Search.Query.add('where emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.value));
  Search.ResultField := 'mon_Codigo';
  Search.Title := 'Tipo de moneda';
  if Search.execute then
  begin
    QPedidosMON_CODIGO.value := strtoint(Search.ValueField);
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select mon_sigla, MON_RELACIONPESOCOMPRA from moneda');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and mon_codigo = :mon');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('mon').Value := QPedidosMON_CODIGO.Value;
    dm.Query1.open;
    tmoneda.Text := dm.Query1.FieldByName('mon_sigla').AsString;
    QPedidosPED_TASA.Value := dm.Query1.FieldByName('MON_RELACIONPESOCOMPRA').AsFloat;
  end;
end;

procedure TfrmPedidosCli.QPedidosmon_codigoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QPedidosmon_codigo.IsNull then
  begin
    Text := IntToStr(QPedidosmon_codigo.Value);
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select mon_sigla, MON_RELACIONPESOCOMPRA from moneda');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and mon_codigo = :mon');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('mon').Value := QPedidosmon_codigo.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
    begin
      tmoneda.Text := dm.Query1.FieldByName('mon_sigla').AsString;
      //QPedidosPED_TASA.Value := dm.Query1.FieldByName('MON_RELACIONPESOCOMPRA').AsFloat;
    end
    else
    begin
      tmoneda.Text := '';
      //QPedidosPED_TASA.Value := 1;
    end;
  end;
end;

procedure TfrmPedidosCli.QPedidosmon_codigoChange(Sender: TField);
begin
  if not QPedidosmon_codigo.IsNull then
  begin
    //Text := IntToStr(QFacturaMON_CODIGO.Value);
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select mon_sigla, MON_RELACIONPESOCOMPRA from moneda');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and mon_codigo = :mon');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('mon').Value := QPedidosmon_codigo.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
    begin
      tmoneda.Text := dm.Query1.FieldByName('mon_sigla').AsString;
      QPedidosPED_TASA.Value := dm.Query1.FieldByName('MON_RELACIONPESOCOMPRA').AsFloat;
    end
    else
    begin
      tmoneda.Text := '';
      QPedidosPED_TASA.Value := 1;
    end;
  end;
end;

procedure TfrmPedidosCli.QDetalleBeforePost(DataSet: TDataSet);
begin
  QDetalleDET_CONITBIS.Value := UpperCase(QDetalleDET_CONITBIS.Value);
end;

procedure TfrmPedidosCli.edClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
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
    QPedidosPED_NOMBRE.value := dm.Query1.fieldbyname('cli_nombre').asstring;
    tBalance.text := format('%n',[dm.Query1.fieldbyname('cli_balance').asfloat]);
    tLimite.text  := format('%n',[dm.Query1.fieldbyname('cli_limite').asfloat]);

    if dm.Query1.fieldbyname('cli_precio').asstring <> 'Ninguno' then
      tPrecio.text  := dm.Query1.fieldbyname('cli_precio').asstring;

    tDesc.text    := format('%n',[dm.Query1.fieldbyname('cli_descuento').asfloat]);
    QPedidosPED_DIRECCION.value := dm.Query1.fieldbyname('cli_direccion').asstring;
    QPedidosPED_LOCALIDAD.value := dm.Query1.fieldbyname('cli_localidad').asstring;
    QPedidosPED_TELEFONO.value  := dm.Query1.fieldbyname('cli_telefono').asstring;
    QPedidosPED_FAX.value       := dm.Query1.fieldbyname('cli_fax').asstring;
    descuento := dm.Query1.fieldbyname('cli_descuento').asfloat;
    QPedidosCLI_CODIGO.value := dm.Query1.fieldbyname('cli_Codigo').asinteger;
    QPedidosCLI_REFERENCIA.value := dm.Query1.fieldbyname('cli_referencia').asstring;
    QPedidosVEN_CODIGO.Value := dm.Query1.fieldbyname('ven_codigo').AsInteger;

    if  FileExists('.\Transporte.Txt') then begin
    //Limpiar Tabla Detalle
    QDetalle.close;
    QDetalle.Parameters.parambyname('emp_codigo').Value := dm.vp_cia;
    QDetalle.Parameters.parambyname('ped_tipo').Value   := 'C';
    QDetalle.Parameters.parambyname('ped_numero').Value := -1;
    QDetalle.Parameters.parambyname('suc').Value        := QPedidosSUC_CODIGO.Value;
    QDetalle.open;

    with Query1 do begin
    Close;
    SQL.Clear;
    SQL.Add('select PRO_CODIGO, CLP_PRECIO from CLIPRODUCTOS');
    SQL.Add('where emp_codigo = :emp');
    SQL.Add('and cli_codigo = :cli');
    Parameters.ParamByName('emp').Value := QPedidosEMP_CODIGO.Value;
    Parameters.ParamByName('cli').Value := QPedidosCLI_CODIGO.Value;
    Open;
    if not Query1.IsEmpty then begin
    Query1.First;
    while not Query1.Eof do begin
    QDetalle.Append;
    QDetallePRO_CODIGO.Value := Query1.fieldbyname('PRO_CODIGO').AsInteger;
    QDetalleDET_PRECIO.Value := Query1.FIELDBYNAME('CLP_PRECIO').Value;
    IF QDetalleDET_PRECIO.Value > 0 THEN BEGIN
      QDetalleDET_PRECIO1.Value := QDetalleDET_PRECIO.Value;
      QDetalleDET_PRECIO2.Value := QDetalleDET_PRECIO.Value;
      QDetalleDET_PRECIO3.Value := QDetalleDET_PRECIO.Value;
      QDetalleDET_PRECIO4.Value := QDetalleDET_PRECIO.Value;
    end;
    QDetalleDET_CANTIDAD.Value := 1;
    QDetalle.Post;
    Next;
    end;

    end;
  end;
  end;
  end;
  end;

procedure TfrmPedidosCli.Crearnotaalproducto1Click(Sender: TObject);
begin
  application.createform(tfrmNota, frmNota);
  frmNota.DBMemo1.DataSource := frmPedidosCli.dsDetalle;
  frmNota.DBMemo1.DataField := 'DET_NOTA';
  frmNota.showmodal;
  frmNota.release;
end;

procedure TfrmPedidosCli.Vercombodelproducto1Click(Sender: TObject);
begin
  Application.CreateForm(tfrmConsCombo, frmConsCombo);
  frmConsCombo.QCombo.Parameters.ParamByName('emp').Value := dm.vp_cia;
  frmConsCombo.QCombo.Parameters.ParamByName('pro').Value := QDetallePRO_CODIGO.Value;
  frmConsCombo.QCombo.Open;
  frmConsCombo.ShowModal;
  frmConsCombo.Release;
end;

procedure TfrmPedidosCli.Escalas1Click(Sender: TObject);
begin
  if QDetalleDET_MANEJAESCALA.Value = 'True' then
  begin
    Application.CreateForm(tfrmSelEscala, frmSelEscala);
    frmSelEscala.QEscalas.Parameters.ParamByName('emp').Value := dm.vp_cia;
    frmSelEscala.QEscalas.Parameters.ParamByName('pro').Value := QDetallePRO_CODIGO.Value;
    frmSelEscala.ShowModal;
    if frmSelEscala.Seleccion = True then
    begin
      QDetalle.Edit;
      QDetalleDET_ESCALA.Value := frmSelEscala.QEscalasESC_ESCALA.Value;
      QDetalle.Post;
    end;
    frmSelEscala.Release;
  end;
  Grid.SetFocus;
end;

procedure TfrmPedidosCli.Consultarmovimiento1Click(Sender: TObject);
begin
  application.createform(tfrmConsProdClienteFac, frmConsProdClienteFac);
  if not QPedidosCLI_CODIGO.IsNull then
  begin
    frmConsProdClienteFac.cli := QPedidosCLI_CODIGO.value;
    frmConsProdClienteFac.CheckBox1.Checked := false;
  end
  else
  begin
    frmConsProdClienteFac.cli := 0;
    frmConsProdClienteFac.CheckBox1.Checked := true;
  end;
  frmConsProdClienteFac.pro := QDetallePRO_CODIGO.Value;
  frmConsProdClienteFac.QFacturas.Parameters.ParamByName('emp').Value := dm.vp_cia;
  frmConsProdClienteFac.QFacturas.Parameters.ParamByName('pro').Value := QDetallePRO_CODIGO.Value;
  frmConsProdClienteFac.pr_consultar;
  frmConsProdClienteFac.ShowModal;
  frmConsProdClienteFac.Release;
end;

procedure TfrmPedidosCli.Pantalladeproductos1Click(Sender: TObject);
var
  vIns, vMod, vDel : boolean;
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('inv_productos');
  dm.Query1.open;
  if dm.Query1.RecordCount > 0 then
  begin
    vIns := dm.Query1.fieldbyname('Inserta').asboolean;
    vMod := dm.Query1.fieldbyname('Modifica').asboolean;
    vDel := dm.Query1.fieldbyname('Elimina').asboolean;
    frmMain.activaforma(tfrmProductos, tform(frmProductos));
    frmProductos.btEdit.visible   := vMod;
    frmProductos.btInsert.visible := vIns;
    frmProductos.btDelete.visible := vDel;
    frmProductos.QProductos.Close;
    frmProductos.QProductos.Parameters.ParamByName('prod').Value := QDetallePRO_CODIGO.Value;
    frmProductos.QProductos.Open;
  end;
end;

procedure TfrmPedidosCli.Ajustedeinventario1Click(Sender: TObject);
var
  vIns, vMod, vDel : boolean;
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('inv_ajuste');
  dm.Query1.open;
  if dm.Query1.RecordCount > 0 then
  begin
    frmMain.activaforma(tfrmAjusteInventario, tform(frmAjusteInventario));
    frmAjusteInventario.QProductos.Locate('pro_codigo',QDetallePRO_CODIGO.Value,[]);
  end;
end;

procedure TfrmPedidosCli.SpeedButton2Click(Sender: TObject);
var
  a, Suc : integer;
begin
  Suc := QPedidosSUC_CODIGO.Value;

  Search.AliasFields.Clear;
  Search.AliasFields.Add('Numero');
  Search.AliasFields.Add('Nombre Cliente');

  Search.Query.clear;
  Search.Query.add('select ped_numero, substring(ped_nombre,1,50) as ped_nombre');
  Search.Query.add('from pedidos');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.Query.add('and ped_tipo = '+#39+'C'+#39);
  Search.Query.add('and suc_codigo = '+IntToStr(Suc));
  Search.ResultField := 'ped_numero';
  Search.Title := 'Pedidos de clientes';
  if Search.execute then
  begin
    Totaliza := false;
    QDetalle.disablecontrols;

    QPedidos.close;
    QPedidos.Parameters.parambyname('numero').Value := -1;
    QPedidos.Parameters.parambyname('suc').Value    := Suc;
    QPedidos.open;
    QPedidos.Insert;

    QDetalle.close;
    QDetalle.Parameters.parambyname('emp_codigo').Value := dm.vp_cia;
    QDetalle.Parameters.parambyname('ped_tipo').Value   := 'C';
    QDetalle.Parameters.parambyname('ped_numero').Value := -1;
    QDetalle.Parameters.parambyname('suc').Value        := Suc;
    QDetalle.open;

    QDetalle.enablecontrols;

    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Add('select ped_numero, ped_fecha, ped_direccion, ped_localidad, ped_telefono, ped_fax, cli_codigo,');
    Query1.SQL.Add('ped_nombre, cli_referencia, ven_codigo, cpa_codigo, ped_fechaentrega, orden_cliente,');
    Query1.SQL.Add('mon_codigo from pedidos where emp_codigo = :emp and suc_codigo = :suc and ped_tipo = :tip and ped_numero = :num');
    Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    Query1.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
    Query1.Parameters.ParamByName('tip').Value := 'C';
    Query1.Parameters.ParamByName('num').Value := StrToInt(search.ValueField);
    Query1.Open;

    QPedidosPED_NOMBRE.Value       := Query1.FieldByName('ped_nombre').AsString;
    QPedidosVEN_CODIGO.Value       := Query1.FieldByName('ven_codigo').AsInteger;
    QPedidosPED_DIRECCION.Value    := Query1.FieldByName('PED_DIRECCION').AsString;
    QPedidosPED_LOCALIDAD.Value    := Query1.FieldByName('PED_LOCALIDAD').AsString;
    QPedidosPED_TELEFONO.Value     := Query1.FieldByName('PED_TELEFONO').AsString;
    QPedidosPED_FAX.Value          := Query1.FieldByName('PED_FAX').AsString;
    QPedidosCLI_CODIGO.Value       := Query1.FieldByName('CLI_CODIGO').AsInteger;
    QPedidosCLI_REFERENCIA.Value   := Query1.FieldByName('CLI_REFERENCIA').AsString;
    if not Query1.FieldByName('PED_FECHAENTREGA').IsNull then
      QPedidosPED_FECHAENTREGA.Value := Query1.FieldByName('PED_FECHAENTREGA').Value;
    QPedidosORDEN_CLIENTE.Value    := Query1.FieldByName('ORDEN_CLIENTE').AsString;
    QPedidosCPA_CODIGO.Value       := Query1.FieldByName('CPA_CODIGO').AsInteger;

    if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
       edCliente.text := inttostr(QPedidosCLI_CODIGO.value)
    else
       edCliente.text := QPedidosCLI_REFERENCIA.value;

    Query1.close;
    Query1.sql.clear;
    Query1.sql.add('select d.pro_codigo, d.pro_roriginal, d.pro_rfabric, d.det_medida,');
    Query1.sql.add('d.det_cantidad, d.det_precio, d.det_conitbis, d.det_itbis,');
    Query1.sql.add('d.det_descuento, d.det_descripcion, d.det_manejaescala, d.det_Escala,');
    Query1.sql.add('p.pro_Servicio, d.det_nota');
    Query1.sql.add('from det_pedido d, productos p');
    Query1.sql.add('where d.pro_codigo = p.pro_codigo');
    Query1.sql.add('and d.emp_codigo = :emp');
    Query1.sql.add('and p.emp_codigo = :empinv');
    Query1.sql.add('and d.ped_tipo = '+#39+'C'+#39);
    Query1.sql.add('and d.ped_numero = :numero');
    Query1.sql.add('and d.suc_codigo = :suc');
    Query1.Parameters.parambyname('emp').Value    := dm.vp_cia;
    Query1.Parameters.parambyname('empinv').Value := dm.QParametrosPAR_INVEMPRESA.Value;
    Query1.Parameters.parambyname('numero').Value := strtoint(search.valuefield);
    Query1.Parameters.parambyname('suc').Value    := DBLookupComboBox2.KeyValue;
    Query1.open;

    Totaliza := false;

    a := 0;
    while not Query1.eof do
    begin
      a := a + 1;
      QDetalle.append;
      QDetalleEMP_CODIGO.value    := dm.vp_cia;
      QDetalleDET_SECUENCIA.value := a;
      QDetalleDET_CANTIDAD.value  := Query1.fieldbyname('det_cantidad').asfloat;
      QDetalleDET_ITBIS.value     := Query1.fieldbyname('det_itbis').asfloat;
      QDetalleDET_CONITBIS.value  := Query1.fieldbyname('det_conitbis').asstring;
      QDetallePRO_CODIGO.value    := Query1.fieldbyname('pro_codigo').asinteger;

      if not Query1.fieldbyname('pro_roriginal').IsNull then
        QDetallePRO_RORIGINAL.value := Query1.fieldbyname('pro_roriginal').asstring;

      if not Query1.fieldbyname('pro_rfabric').IsNull then
        QDetallePRO_RFABRIC.value   := Query1.fieldbyname('pro_rfabric').asstring;

      QDetalleDET_DESCRIPCION.Value    := Query1.FieldByName('det_descripcion').AsString;
      QDetalleDET_MANEJAESCALA.Value := Query1.fieldbyname('det_manejaescala').asstring;
      if trim(QDetalleDET_MANEJAESCALA.Value) = 'True' then
        QDetalleDET_ESCALA.Value    := Query1.fieldbyname('det_escala').asstring;
      QDetalleDET_MEDIDA.Value    := Query1.fieldbyname('det_medida').asstring;
      QDetalleDET_PRECIO.value    := Query1.fieldbyname('det_precio').asfloat;
      QDetalleDET_NOTA.Value := Query1.fieldbyname('det_nota').asstring;
      QDetalle.post;
      Query1.next;

      Application.ProcessMessages;
    end;

    QDetalle.first;
    QDetalle.enablecontrols;

    Totaliza := true;
    totalizar;
    Grid.setfocus;
  end
  else
    DBEdit5.SetFocus;
end;

procedure TfrmPedidosCli.DBGrid_1DblClick(Sender: TObject);
begin
DesactivarCargaProductos := False;
if not QSelectIncrem1.IsEmpty then begin
if DM.QParametrosPAR_CODIGOPRODUCTO.Value = 'I' THEN
QDetallePRO_CODIGO.Value := QSelectIncrem1.fieldbyname('codigo').AsInteger;
if DM.QParametrosPAR_CODIGOPRODUCTO.Value = 'O' THEN
QDetallePRO_RORIGINAL.Value := QSelectIncrem1.fieldbyname('codigo').AsString;
if DM.QParametrosPAR_CODIGOPRODUCTO.Value = 'F' THEN
QDetallePRO_RFABRIC.Value := QSelectIncrem1.fieldbyname('codigo').AsString;
end;
Grid.SetFocus;
DBGrid_1.Visible := False;
Grid.SelectedIndex := Grid.SelectedIndex +1;
edt1.Clear;

end;

procedure TfrmPedidosCli.DBGrid_1KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then DBGrid_1DblClick(Sender);
end;

procedure TfrmPedidosCli.dsDetalleDataChange(Sender: TObject;
  Field: TField);
begin
     if QDetallePRO_CODIGO.Text <> '' then begin
      Panel7.Visible := True;
      QMsnExistencia.Close;
      QMsnExistencia.Parameters.ParamByName('emp').Value          := dm.vp_cia;
      //QMsnExistencia.Parameters.ParamByName('emp').Value          := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
      QMsnExistencia.Parameters.ParamByName('alm_codigo').Value   := 1;
      QMsnExistencia.Parameters.ParamByName('pro_codigo').Value   := QDetallePRO_CODIGO.Value;
      QMsnExistencia.Parameters.ParamByName('det_cantidad').Value := QDetalleDET_CANTIDAD.Value;
      QMsnExistencia.Parameters.ParamByName('det_medida').Value   := QDetalleDET_MEDIDA.Value;
      QMsnExistencia.Parameters.ParamByName('usu').Value          := dm.Usuario;
      QMsnExistencia.Parameters.ParamByName('SUC_CODIGO').Value   := QPedidosSUC_CODIGO.Value;
      QMsnExistencia.Parameters.ParamByName('TFA_CODIGO').Value   := 1;
      QMsnExistencia.Parameters.ParamByName('FAC_NUMERO').Value   := 1;
      //QMsnExistencia.Parameters.ParamByName('EMP_CODIGO').Value   := QPedidosEMP_CODIGO.Value;
      QMsnExistencia.Open;
end
else
Panel7.Visible := False;
end;

end.
