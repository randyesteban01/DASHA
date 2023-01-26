unit PVENTA48;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, Buttons, Grids, DBGrids,
  DB, IBCustomDataSet, IBQuery, IBUpdateSQL, ADODB,
  QuerySearchDlgADO, DBCtrls;

type
  TfrmConsRecibos = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    SpeedButton2: TSpeedButton;
    Label12: TLabel;
    btVendedor: TSpeedButton;
    Label3: TLabel;
    SpeedButton1: TSpeedButton;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    SpeedButton3: TSpeedButton;
    edCliente: TEdit;
    tCliente: TEdit;
    tVendedor: TEdit;
    edVendedor: TEdit;
    tCajero: TEdit;
    edCajero: TEdit;
    edNombre: TEdit;
    cbStatus: TRadioGroup;
    cbOrden: TComboBox;
    Fecha1: TDateTimePicker;
    Fecha2: TDateTimePicker;
    tUsuario: TEdit;
    edUsuario: TEdit;
    Memo1: TMemo;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    lbCantidad: TLabel;
    BitBtn2: TBitBtn;
    btRefresh: TBitBtn;
    btClose: TBitBtn;
    Search: TQrySearchDlgADO;
    QRecibos: TADOQuery;
    QRecibosCAJ_NOMBRE: TIBStringField;
    QRecibosREC_FECHA: TDateTimeField;
    QRecibosREC_NUMERO: TIntegerField;
    QRecibosREC_NUMEROMANUAL: TIBStringField;
    QRecibosREC_MONTO: TIBBCDField;
    QRecibosREC_STATUS: TIBStringField;
    QRecibosREC_NOMBRE: TIBStringField;
    QRecibosREC_CONCEPTO: TIBStringField;
    QRecibosREC_DESCUENTO: TFloatField;
    QRecibosUSU_NOMBRE: TIBStringField;
    dsRecibos: TDataSource;
    QDoc: TADOQuery;
    QDocDET_MONTO: TFloatField;
    QDocDET_NUMERO: TIntegerField;
    QDocDET_PENDIENTE: TFloatField;
    QDocDET_SECUENCIA: TIntegerField;
    QDocDET_TIPO: TIBStringField;
    QDocEMP_CODIGO: TIntegerField;
    QDocREC_NUMERO: TIntegerField;
    QDocFAC_FORMA: TIBStringField;
    QDocTFA_CODIGO: TIntegerField;
    QDocDET_FECHA: TDateTimeField;
    dsDoc: TDataSource;
    QRecibosEMP_CODIGO: TIntegerField;
    QDocMOV_CUOTA: TIntegerField;
    QDocDET_CUOTA: TIBStringField;
    QDocCuota: TIntegerField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    GridCuentas: TDBGrid;
    btBuscaCta: TSpeedButton;
    btElimina: TSpeedButton;
    lbCR: TStaticText;
    lbDB: TStaticText;
    lbBAL: TStaticText;
    TabSheet2: TTabSheet;
    GridMov: TDBGrid;
    QDetalle: TADOQuery;
    QDetalleCAT_CUENTA: TIBStringField;
    QDetalleCAT_NOMBRE: TIBStringField;
    QDetalleREC_NUMERO: TIntegerField;
    QDetalleDET_MONTO: TFloatField;
    QDetalleDET_ORIGEN: TIBStringField;
    QDetalleDET_SECUENCIA: TIntegerField;
    QDetalleEMP_CODIGO: TIntegerField;
    dsDetalle: TDataSource;
    Label1: TLabel;
    edPedido: TEdit;
    QRecibosped_numero: TIntegerField;
    Label8: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    dsSuc: TDataSource;
    QRecibossuc_codigo: TIntegerField;
    QSucursalalm_codigo: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    Label13: TLabel;
    SpeedButton4: TSpeedButton;
    tCaja: TEdit;
    edCaja: TEdit;
    QRecibosCaja: TStringField;
    Label14: TLabel;
    btprovincia: TSpeedButton;
    tprovincia: TEdit;
    edProvincia: TEdit;
    QRecibosrec_retencion: TBCDField;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    QRetenciones: TADOQuery;
    QRetencionesemp_codigo: TIntegerField;
    QRetencionessuc_codigo: TIntegerField;
    QRetencionesrec_numero: TIntegerField;
    QRetencionesret_codigo: TIntegerField;
    QRetencionesdet_nombre: TStringField;
    QRetencionesdet_porciento: TBCDField;
    QRetencionesdet_monto: TBCDField;
    QRetencionesdet_secuencia: TIntegerField;
    QRetencionesdet_cuenta: TStringField;
    dsRet: TDataSource;
    QCentro: TADOQuery;
    QCentroemp_codigo: TIntegerField;
    QCentrosuc_codigo: TIntegerField;
    QCentrorec_numero: TIntegerField;
    QCentrocen_codigo: TIntegerField;
    QCentrodet_secuencia: TIntegerField;
    QCentrocen_nombre: TStringField;
    QCentrodet_monto: TBCDField;
    dsCentro: TDataSource;
    GridRet: TDBGrid;
    GridCentro: TDBGrid;
    Panel5: TPanel;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    Panel6: TPanel;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    Label15: TLabel;
    edtipo: TEdit;
    bttipo: TSpeedButton;
    ttipo: TEdit;
    QRecibosrec_tipo: TStringField;
    QRecibosrec_tasa: TBCDField;
    Splitter1: TSplitter;
    QDetallesuc_codigo: TIntegerField;
    QRecibosrec_interes: TBCDField;
    QRecibosREC_USUARIO_ANULO: TStringField;
    QRecibosREC_MORA: TCurrencyField;
    procedure btVendedorClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure edVendedorChange(Sender: TObject);
    procedure edVendedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edCajeroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edCajeroChange(Sender: TObject);
    procedure edClienteChange(Sender: TObject);
    procedure edUsuarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edUsuarioChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure btRefreshClick(Sender: TObject);
    procedure btCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure QRecibosAfterOpen(DataSet: TDataSet);
    procedure FormPaint(Sender: TObject);
    procedure QDocCalcFields(DataSet: TDataSet);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure GridCuentasColEnter(Sender: TObject);
    procedure GridCuentasEnter(Sender: TObject);
    procedure GridCuentasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure QDetalleAfterDelete(DataSet: TDataSet);
    procedure QDetalleAfterPost(DataSet: TDataSet);
    procedure QDetalleBeforePost(DataSet: TDataSet);
    procedure QDetalleNewRecord(DataSet: TDataSet);
    procedure btEliminaClick(Sender: TObject);
    procedure btBuscaCtaClick(Sender: TObject);
    procedure QDetalleCAT_CUENTAChange(Sender: TField);
    procedure dsRecibosDataChange(Sender: TObject; Field: TField);
    procedure SpeedButton4Click(Sender: TObject);
    procedure edCajaChange(Sender: TObject);
    procedure edCajaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edProvinciaChange(Sender: TObject);
    procedure edProvinciaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btprovinciaClick(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure GridRetColEnter(Sender: TObject);
    procedure GridRetEnter(Sender: TObject);
    procedure GridRetKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure QRetencionesNewRecord(DataSet: TDataSet);
    procedure QRetencionesBeforePost(DataSet: TDataSet);
    procedure QRetencionesAfterDelete(DataSet: TDataSet);
    procedure QRetencionesAfterPost(DataSet: TDataSet);
    procedure QCentroAfterDelete(DataSet: TDataSet);
    procedure QCentroAfterPost(DataSet: TDataSet);
    procedure QCentroBeforePost(DataSet: TDataSet);
    procedure QCentroNewRecord(DataSet: TDataSet);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure QRetencionesret_codigoChange(Sender: TField);
    procedure QCentrocen_codigoChange(Sender: TField);
    procedure bttipoClick(Sender: TObject);
    procedure edtipoChange(Sender: TObject);
    procedure edtipoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure QDetalleAfterEdit(DataSet: TDataSet);
    procedure QDetalleAfterInsert(DataSet: TDataSet);
    procedure QDetalleBeforeDelete(DataSet: TDataSet);
    procedure QRecibosBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    Cliente : Integer;
    Debitos, Creditos : Double;
    Modifica, Elimina : Boolean;
    Procedure TotalizaCuentas;
  end;

var
  frmConsRecibos: TfrmConsRecibos;

implementation

uses RVENTA12, SIGMA01, SIGMA00;

{$R *.dfm}

procedure TfrmConsRecibos.btVendedorClick(Sender: TObject);
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

procedure TfrmConsRecibos.SpeedButton1Click(Sender: TObject);
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

procedure TfrmConsRecibos.SpeedButton2Click(Sender: TObject);
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
    Cliente := dm.Query1.fieldbyname('cli_codigo').AsInteger;
    btRefreshClick(self);
  end;
end;

procedure TfrmConsRecibos.SpeedButton3Click(Sender: TObject);
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

procedure TfrmConsRecibos.edVendedorChange(Sender: TObject);
begin
  if trim(edVendedor.text) = '' then tVendedor.text := '';
end;

procedure TfrmConsRecibos.edVendedorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
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

procedure TfrmConsRecibos.edCajeroKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmConsRecibos.edCajeroChange(Sender: TObject);
begin
  if trim(edCajero.text) = '' then tCajero.text := '';
end;

procedure TfrmConsRecibos.edClienteChange(Sender: TObject);
begin
  if trim(edCliente.text) = '' then tCliente.text := '';
end;

procedure TfrmConsRecibos.edUsuarioKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmConsRecibos.edUsuarioChange(Sender: TObject);
begin
  if trim(edUsuario.text) = '' then tUsuario.text := '';
end;

procedure TfrmConsRecibos.FormActivate(Sender: TObject);
begin
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

procedure TfrmConsRecibos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then close;
end;

procedure TfrmConsRecibos.edClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edCliente.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select cli_codigo, cli_nombre from clientes');
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
      Cliente := dm.Query1.fieldbyname('cli_codigo').AsInteger;
      btRefreshClick(Self);
    end;
  end;
end;

procedure TfrmConsRecibos.FormCreate(Sender: TObject);
begin
  Memo1.Lines := QRecibos.SQL;
  Fecha1.date := date;
  Fecha2.date := date;
  cbOrden.itemindex := 0;
end;

procedure TfrmConsRecibos.btRefreshClick(Sender: TObject);
begin
  QRecibos.close;
  QRecibos.sql.clear;
  QRecibos.sql := Memo1.Lines;
  if trim(edVendedor.text) <> '' then
    QRecibos.sql.add('and r.ven_codigo = '+trim(edVendedor.text));
  if trim(edCajero.text) <> '' then
    QRecibos.sql.add('and r.caj_codigo = '+trim(edCajero.text));
  if trim(edCaja.text) <> '' then
    QRecibos.sql.add('and r.rec_caja = '+trim(edCaja.text));
  if trim(edCliente.text) <> '' then
     QRecibos.sql.add('and r.cli_codigo = '+IntToStr(Cliente));
  if trim(edNombre.text) <> '' then
    QRecibos.sql.add('and r.rec_nombre like '+#39+trim(edNombre.text)+#39);
  if trim(edUsuario.text) <> '' then
    QRecibos.sql.add('and r.usu_codigo = '+trim(edUsuario.text));
  if trim(edPedido.text) <> '' then
    QRecibos.sql.add('and r.ped_numero = '+trim(edPedido.text));
  if trim(edProvincia.text) <> '' then
    QRecibos.sql.add('and r.pro_codigo = '+trim(edProvincia.text));
  if trim(edtipo.Text) <> '' then
    QRecibos.sql.add('and t.tcl_codigo = '+trim(edtipo.text));
  

  if cbStatus.ItemIndex = 1 then
     QRecibos.sql.add('and r.rec_status = '+#39+'ANU'+#39)
  else if cbStatus.ItemIndex = 2 then
     QRecibos.sql.add('and r.rec_status = '+#39+'EMI'+#39);

  if cbOrden.ItemIndex = 0 then
     QRecibos.sql.add('order by r.rec_numero')
  else if cbOrden.ItemIndex = 1 then
     QRecibos.sql.add('order by r.rec_nombre')
  else if cbOrden.ItemIndex = 2 then
     QRecibos.sql.add('order by r.rec_fecha')
  else if cbOrden.ItemIndex = 3 then
     QRecibos.sql.add('order by r.rec_numeromanual');

  QRecibos.Parameters.parambyname('fecha1').DataType := ftDate;
  QRecibos.Parameters.parambyname('fecha2').DataType := ftDate;
  QRecibos.Parameters.parambyname('fecha1').Value := fecha1.date;
  QRecibos.Parameters.parambyname('fecha2').Value := fecha2.date;
  QRecibos.Parameters.parambyname('emp').Value := dm.vp_cia;
  QRecibos.Parameters.parambyname('suc').Value := DBLookupComboBox2.KeyValue;
  QRecibos.open;
  lbCantidad.caption := inttostr(QRecibos.recordcount)+' Recibos';
end;

procedure TfrmConsRecibos.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmConsRecibos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrmConsRecibos.BitBtn2Click(Sender: TObject);
begin
  Application.CreateForm(tRConsRecibos, RConsRecibos);
  RConsRecibos.QRecibos.SQL := QRecibos.SQL;
  RConsRecibos.QRecibos.Parameters.parambyname('fecha1').DataType := ftDate;
  RConsRecibos.QRecibos.Parameters.parambyname('fecha2').DataType := ftDate;
  RConsRecibos.QRecibos.Parameters.parambyname('fecha1').Value := fecha1.date;
  RConsRecibos.QRecibos.Parameters.parambyname('fecha2').Value := fecha2.date;
  RConsRecibos.QRecibos.Parameters.parambyname('emp').Value := dm.vp_cia;
  RConsRecibos.QRecibos.Parameters.parambyname('suc').Value := DBLookupComboBox2.KeyValue;
  RConsRecibos.QRecibos.open;
  RConsRecibos.lbFecha.Caption := 'Del '+DateToStr(Fecha1.Date)+' Al '+DateToStr(Fecha2.Date);
  RConsRecibos.lbVendedor.Caption := tVendedor.Text;
  RConsRecibos.lbCajero.Caption   := tCajero.Text;
  RConsRecibos.lbCaja.Caption     := tCaja.Text;
  RConsRecibos.lbCliente.Caption  := tCliente.Text;
  RConsRecibos.lbUsuario.Caption  := tUsuario.Text;
  RConsRecibos.lbNombre.Caption   := edNombre.Text;
  RConsRecibos.lbTipo.Caption     := ttipo.Text;
  RConsRecibos.lbStatus.Caption   := cbStatus.Items[cbStatus.ItemIndex];
  RConsRecibos.PrinterSetup;
  RConsRecibos.Preview;
  RConsRecibos.Destroy;
end;

procedure TfrmConsRecibos.QRecibosAfterOpen(DataSet: TDataSet);
begin
  if not QDoc.Active         then QDoc.Open;
  if not QDetalle.Active     then QDetalle.Open;
  if not QCentro.Active      then QCentro.Open;
  if not QRetenciones.Active then QRetenciones.Open;
end;

procedure TfrmConsRecibos.FormPaint(Sender: TObject);
begin
  with frmConsRecibos do
  begin
    Top  := 2;
    Left := 2;
    width := frmMain.Width - 230;
    height := frmMain.Height - 120;
  end;
end;

procedure TfrmConsRecibos.QDocCalcFields(DataSet: TDataSet);
begin
   if QDocDET_CUOTA.Value = 'True' then
     QDocCuota.Value := QDocMOV_CUOTA.Value;
end;

procedure TfrmConsRecibos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
     if activecontrol.classtype <> tdbgrid then
     begin
       perform(wm_nextdlgctl, 0, 0);
       key := #0;
     end;
end;

procedure TfrmConsRecibos.GridCuentasColEnter(Sender: TObject);
begin
  if GridCuentas.SelectedIndex = 1 then
    GridCuentas.SelectedIndex := GridCuentas.SelectedIndex + 1;
end;

procedure TfrmConsRecibos.GridCuentasEnter(Sender: TObject);
begin
  GridCuentas.SelectedIndex := 0;
end;

procedure TfrmConsRecibos.GridCuentasKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
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

procedure TfrmConsRecibos.QDetalleAfterDelete(DataSet: TDataSet);
begin
  QDetalle.UpdateBatch;
  TotalizaCuentas;
end;

procedure TfrmConsRecibos.QDetalleAfterPost(DataSet: TDataSet);
begin
  QDetalle.UpdateBatch;
  TotalizaCuentas;
end;

procedure TfrmConsRecibos.QDetalleBeforePost(DataSet: TDataSet);
begin
  if QDetalleCAT_NOMBRE.IsNull then QDetalle.Cancel;
  if QDetalle.State = dsInsert then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select isnull(max(det_secuencia),0) as maximo');
    dm.Query1.SQL.Add('from contdet_recibos');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and suc_codigo = :suc');
    dm.Query1.SQL.Add('and rec_numero = :num');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('num').Value := QRecibosREC_NUMERO.Value;
    dm.Query1.Parameters.ParamByName('suc').Value := QRecibossuc_codigo.Value;
    dm.Query1.Open;
    QDetalleDET_SECUENCIA.Value := dm.Query1.FieldByName('maximo').AsInteger + 1;
  end;
end;

procedure TfrmConsRecibos.QDetalleNewRecord(DataSet: TDataSet);
begin
  QDetalleEMP_CODIGO.Value := dm.vp_cia;
  QDetalleREC_NUMERO.Value := QRecibosREC_NUMERO.Value;
  QDetallesuc_codigo.Value := QRecibossuc_codigo.Value;
end;

procedure TfrmConsRecibos.TotalizaCuentas;
var
  Punt : TBookMark;
begin
  if not QDetalle.Active then QDetalle.Open;
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

procedure TfrmConsRecibos.btEliminaClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR LA CUENTA?',mtconfirmation,[mbyes,mbno],0) = mryes then
  begin
    QDetalle.Delete
  end;
  GridCuentas.setfocus;
end;

procedure TfrmConsRecibos.btBuscaCtaClick(Sender: TObject);
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

procedure TfrmConsRecibos.QDetalleCAT_CUENTAChange(Sender: TField);
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

procedure TfrmConsRecibos.dsRecibosDataChange(Sender: TObject;
  Field: TField);
begin
  TotalizaCuentas;
end;

procedure TfrmConsRecibos.SpeedButton4Click(Sender: TObject);
begin
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('Código');
  Search.Query.clear;
  Search.Query.add('select caj_nombre, caj_codigo');
  Search.Query.add('from cajas');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.ResultField := 'caj_Codigo';
  Search.Title := 'Listado de Cajas';
  if Search.execute then
  begin
    edCaja.text := Search.ValueField;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select caj_nombre from cajas');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and caj_codigo = :cod');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edCaja.text));
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      messagedlg('CAJS NO EXISTE',mterror,[mbok],0)
    else
      tCaja.text := dm.Query1.fieldbyname('caj_nombre').asstring;
    edCaja.setfocus;
    btRefreshClick(self);
  end;
end;

procedure TfrmConsRecibos.edCajaChange(Sender: TObject);
begin
  if trim(edCaja.text) = '' then tCaja.text := '';
end;

procedure TfrmConsRecibos.edCajaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edCaja.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select caj_nombre from cajas');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and caj_codigo = :cod');
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edCaja.text));
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        messagedlg('CAJA NO EXISTE',mterror,[mbok],0);
        edCaja.SetFocus;
      end
      else
        tCaja.text := dm.Query1.fieldbyname('caj_nombre').asstring;
      btRefreshClick(Self);
    end;
  end;
end;

procedure TfrmConsRecibos.edProvinciaChange(Sender: TObject);
begin
  if trim(edProvincia.text) = '' then tprovincia.text := '';
end;

procedure TfrmConsRecibos.edProvinciaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edProvincia.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select pro_nombre from provincias');
      dm.Query1.sql.add('where pro_codigo = :cod');
      dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edProvincia.text));
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        messagedlg('PROVINCIA NO EXISTE',mterror,[mbok],0);
        edProvincia.setFocus;
      end
      else
        tprovincia.text := dm.Query1.fieldbyname('pro_nombre').asstring;
      btRefreshClick(Self);
    end;
  end;
end;

procedure TfrmConsRecibos.btprovinciaClick(Sender: TObject);
begin
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('Código');
  Search.Query.clear;
  Search.Query.add('select pro_nombre, pro_codigo');
  Search.Query.add('from provincias');
  Search.ResultField := 'pro_Codigo';
  Search.Title := 'Provincias';
  if Search.execute then
  begin
    edProvincia.text := Search.ValueField;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select pro_nombre from provincias');
    dm.Query1.sql.add('where pro_codigo = :cod');
    dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edProvincia.text));
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      messagedlg('PROVINCIA NO EXISTE',mterror,[mbok],0)
    else
      tprovincia.text := dm.Query1.fieldbyname('pro_nombre').asstring;
    edProvincia.setfocus;
    btRefreshClick(self);
  end;
end;

procedure TfrmConsRecibos.SpeedButton6Click(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select ret_nombre, ret_codigo');
  Search.Query.Add('from retenciones');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.AliasFields.Add('Descripción');
  Search.AliasFields.Add('Cuenta');
  Search.ResultField := 'ret_codigo';
  Search.Title := 'Retenciones';
  if Search.execute then
  begin
    QRetenciones.Edit;
    QRetencionesret_codigo.Value := StrToInt(Search.ValueField);
  end;
end;

procedure TfrmConsRecibos.SpeedButton5Click(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR ESTA RETENCION?',mtconfirmation,[mbyes,mbno],0) = mryes then
  begin
    QRetenciones.Delete
  end;
  GridRet.setfocus;
end;

procedure TfrmConsRecibos.GridRetColEnter(Sender: TObject);
begin
  if GridRet.SelectedIndex = 1 then
    GridRet.SelectedIndex := GridRet.SelectedIndex + 1;
end;

procedure TfrmConsRecibos.GridRetEnter(Sender: TObject);
begin
  GridRet.SelectedIndex := 0;
end;

procedure TfrmConsRecibos.GridRetKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_insert then abort;
  if (ssCtrl in Shift) and (key = vk_delete) then abort;
  if key = vk_return then
     if GridRet.SelectedIndex <> 2 then
        GridRet.SelectedIndex := GridRet.SelectedIndex + 1
     else
     begin
       GridRet.SelectedIndex := 0;
       QRetenciones.Append;
     end;
end;

procedure TfrmConsRecibos.QRetencionesNewRecord(DataSet: TDataSet);
begin
  QRetencionesemp_codigo.Value := dm.vp_cia;
  QRetencionessuc_codigo.Value := QRecibossuc_codigo.Value;
  QRetencionesrec_numero.Value := QRecibosREC_NUMERO.Value;
end;

procedure TfrmConsRecibos.QRetencionesBeforePost(DataSet: TDataSet);
begin
  if QRetencionesdet_nombre.IsNull then QRetenciones.Cancel;
  if QRetenciones.State = dsInsert then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select isnull(max(det_secuencia),0) as maximo');
    dm.Query1.SQL.Add('from RecibosRetencion');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and suc_codigo = :suc');
    dm.Query1.SQL.Add('and rec_numero = :num');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('suc').Value := QRecibossuc_codigo.Value;
    dm.Query1.Parameters.ParamByName('num').Value := QRecibosREC_NUMERO.Value;
    dm.Query1.Open;
    QRetencionesdet_secuencia.Value := dm.Query1.FieldByName('maximo').AsInteger + 1;
  end;
end;

procedure TfrmConsRecibos.QRetencionesAfterDelete(DataSet: TDataSet);
begin
  QRetenciones.UpdateBatch;
end;

procedure TfrmConsRecibos.QRetencionesAfterPost(DataSet: TDataSet);
begin
  QRetenciones.UpdateBatch;
end;

procedure TfrmConsRecibos.QCentroAfterDelete(DataSet: TDataSet);
begin
  QCentro.UpdateBatch;
end;

procedure TfrmConsRecibos.QCentroAfterPost(DataSet: TDataSet);
begin
  QCentro.UpdateBatch;
end;

procedure TfrmConsRecibos.QCentroBeforePost(DataSet: TDataSet);
begin
  if QCentrocen_nombre.IsNull then QCentro.Cancel;
  if QCentro.State = dsInsert then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select isnull(max(det_secuencia),0) as maximo');
    dm.Query1.SQL.Add('from RecibosCentroCostos');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and suc_codigo = :suc');
    dm.Query1.SQL.Add('and rec_numero = :num');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('suc').Value := QRecibossuc_codigo.Value;
    dm.Query1.Parameters.ParamByName('num').Value := QRecibosREC_NUMERO.Value;
    dm.Query1.Open;
    QCentrodet_secuencia.Value := dm.Query1.FieldByName('maximo').AsInteger + 1;
  end;
end;

procedure TfrmConsRecibos.QCentroNewRecord(DataSet: TDataSet);
begin
  QCentroemp_codigo.Value := dm.vp_cia;
  QCentrosuc_codigo.Value := QRecibossuc_codigo.Value;
  QCentrorec_numero.Value := QRecibosREC_NUMERO.Value;
end;

procedure TfrmConsRecibos.SpeedButton7Click(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR ESTE CENTRO?',mtconfirmation,[mbyes,mbno],0) = mryes then
  begin
    QCentro.Delete
  end;
  GridCentro.setfocus;
end;

procedure TfrmConsRecibos.SpeedButton8Click(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select cen_nombre, cen_codigo');
  Search.Query.Add('from centrocostos');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.AliasFields.Add('Descripción');
  Search.AliasFields.Add('Cuenta');
  Search.ResultField := 'cen_codigo';
  Search.Title := 'Centros de Costo';
  if Search.execute then
  begin
    QCentro.Edit;
    QCentrocen_codigo.Value := StrToInt(Search.ValueField);
  end;
end;

procedure TfrmConsRecibos.QRetencionesret_codigoChange(Sender: TField);
begin
  if not QRetencionesret_codigo.IsNull then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select ret_nombre, ret_porciento, cat_cuenta from retenciones');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and ret_codigo = :ret');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('ret').Value  := QRetencionesret_codigo.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount = 0 then
    begin
      MessageDlg('ESTA RETENCION NO EXISTE',mtError,[mbok],0);
      QRetencionesret_codigo.Clear;
      Abort;
    end
    else if dm.Query1.RecordCount > 0 then
    begin
      QRetenciones.Edit;
      QRetencionesdet_nombre.Value := dm.Query1.FieldByName('ret_nombre').AsString;
      QRetencionesdet_cuenta.Value := dm.Query1.FieldByName('cat_cuenta').AsString;
      if dm.Query1.FieldByName('ret_porciento').AsFloat > 0 then
        QRetencionesdet_monto.Value := (QRecibosREC_MONTO.Value * dm.Query1.FieldByName('ret_porciento').AsFloat)/100;

      GridRet.SelectedIndex := 2;
    end;
  end;
end;

procedure TfrmConsRecibos.QCentrocen_codigoChange(Sender: TField);
begin
  if not QCentrocen_codigo.IsNull then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cen_nombre from centrocostos');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cen_codigo = :cen');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('cen').Value  := QCentrocen_codigo.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount = 0 then
    begin
      MessageDlg('ESTE CENTRO DE COSTO NO EXISTE',mtError,[mbok],0);
      QCentrocen_codigo.Clear;
      Abort;
    end
    else if dm.Query1.RecordCount > 0 then
    begin
      QCentro.Edit;
      QCentrocen_nombre.Value := dm.Query1.FieldByName('cen_nombre').AsString;
      GridCentro.SelectedIndex := 2;
    end;
  end;
end;

procedure TfrmConsRecibos.bttipoClick(Sender: TObject);
begin
  Search.query.clear;
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('Código');
  Search.Title := 'Tipos de Clientes';
  Search.ResultField := 'tcl_codigo';
  Search.query.add('select tcl_nombre, tcl_codigo');
  Search.query.add('from tipoclientes');
  Search.query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  if search.execute then
  begin
    edTipo.text := search.valuefield;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select tcl_nombre from tipoclientes');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and tcl_codigo = '+edTipo.Text);
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Open;
    tTipo.Text := dm.Query1.FieldByname('tcl_nombre').AsString;
    edTipo.SetFocus;
  end;
end;

procedure TfrmConsRecibos.edtipoChange(Sender: TObject);
begin
  if trim(edTipo.text) = '' then tTipo.text := '';
end;

procedure TfrmConsRecibos.edtipoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if Trim(edTipo.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.SQL.Add('select tcl_nombre from tipoclientes');
      dm.Query1.SQL.Add('where emp_codigo = :emp');
      dm.Query1.SQL.Add('and tcl_codigo = '+edTipo.Text);
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        tTipo.text := '';
        showmessage('ESTE TIPO DE FACTURA NO EXISTE');
        edTipo.setfocus;
      end
      else
        tTipo.text := dm.Query1.fieldbyname('tcl_nombre').asstring;
    end;
  end;
end;

procedure TfrmConsRecibos.QDetalleAfterEdit(DataSet: TDataSet);
begin
  if not Modifica then QDetalle.Cancel;
end;

procedure TfrmConsRecibos.QDetalleAfterInsert(DataSet: TDataSet);
begin
  if not Modifica then QDetalle.Cancel;
end;

procedure TfrmConsRecibos.QDetalleBeforeDelete(DataSet: TDataSet);
begin
  if not Elimina then Abort;
end;

procedure TfrmConsRecibos.QRecibosBeforeOpen(DataSet: TDataSet);
begin
DM.ADOSigma.Execute('update recibos set rec_mora = 0 where rec_status = '+QuotedStr('ANU')+' AND REC_MORA > 0 ');
end;

end.
