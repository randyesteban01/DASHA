unit PVENTA49;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, StdCtrls,
  Buttons, ComCtrls, ExtCtrls, Grids, DBGrids, IBUpdateSQL, ADODB,
  QuerySearchDlgADO, DBCtrls;

type
  TfrmConsDesem = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Label2: TLabel;
    SpeedButton2: TSpeedButton;
    Label3: TLabel;
    SpeedButton1: TSpeedButton;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    SpeedButton3: TSpeedButton;
    edCliente: TEdit;
    tCliente: TEdit;
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
    Panel2: TPanel;
    lbCantidad: TLabel;
    BitBtn2: TBitBtn;
    btRefresh: TBitBtn;
    btClose: TBitBtn;
    Search: TQrySearchDlgADO;
    dsDesem: TDataSource;
    QDesem: TADOQuery;
    QDesemDES_BENEFICIARIO: TIBStringField;
    QDesemDES_CONCEPTO: TIBStringField;
    QDesemDES_FECHA: TDateTimeField;
    QDesemDES_MONTO: TFloatField;
    QDesemDES_NUMERO: TIntegerField;
    QDesemDES_STATUS: TIBStringField;
    QDesemDEV_NUMERO: TIntegerField;
    QDesemCAJ_NOMBRE: TIBStringField;
    QDesemUSU_NOMBRE: TIBStringField;
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
    QDetalle: TADOQuery;
    dsDetalle: TDataSource;
    QDetalleCAT_CUENTA: TIBStringField;
    QDetalleCAT_NOMBRE: TIBStringField;
    QDetalleDES_NUMERO: TIntegerField;
    QDetalleDET_MONTO: TFloatField;
    QDetalleDET_ORIGEN: TIBStringField;
    QDetalleDET_SECUENCIA: TIntegerField;
    QDetalleEMP_CODIGO: TIntegerField;
    ckDetalle: TCheckBox;
    QDesemEMP_CODIGO: TIntegerField;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    dsSuc: TDataSource;
    Label8: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    QDesemsuc_codigo: TIntegerField;
    QDetallesuc_codigo: TIntegerField;
    QSucursalalm_codigo: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    TabSheet2: TTabSheet;
    DBGrid3: TDBGrid;
    QFacturas: TADOQuery;
    QFacturasemp_codigo: TIntegerField;
    QFacturassuc_codigo: TIntegerField;
    QFacturasdes_numero: TIntegerField;
    QFacturasdet_secuencia: TIntegerField;
    QFacturassup_codigo: TIntegerField;
    QFacturasfac_numero: TStringField;
    QFacturasdet_monto: TBCDField;
    QFacturasdet_descuento: TBCDField;
    QFacturasfac_saldo: TBCDField;
    QFacturasfac_fecha: TDateTimeField;
    QFacturasfac_vence: TDateTimeField;
    dsFacturas: TDataSource;
    QDesemdes_ncf: TStringField;
    Splitter1: TSplitter;
    Label1: TLabel;
    btProv: TSpeedButton;
    edProveedor: TEdit;
    tProv: TEdit;
    Label12: TLabel;
    btEmpleado: TSpeedButton;
    edEmpleado: TEdit;
    tEmp: TEdit;
    Label13: TLabel;
    btCaja: TSpeedButton;
    edCaja: TEdit;
    tCaja: TEdit;
    QDesemCaja: TStringField;
    ckmenores: TCheckBox;
    QDesemgasto_menor: TStringField;
    TabSheet3: TTabSheet;
    QCentro: TADOQuery;
    QCentroemp_codigo: TIntegerField;
    QCentrodes_numero: TIntegerField;
    QCentrocen_codigo: TIntegerField;
    QCentrodet_secuencia: TIntegerField;
    QCentrocen_nombre: TStringField;
    QCentrodet_monto: TBCDField;
    QCentrosuc_codigo: TIntegerField;
    dsCentro: TDataSource;
    QDesemdes_concepto2: TStringField;
    QDesemFACT_PAGADAS: TStringField;
    QDesemtip_nombre: TStringField;
    Panel4: TPanel;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    btnSubCentro: TSpeedButton;
    GridCentro: TDBGrid;
    QCentrocen_referencia: TStringField;
    QCentrosub_referencia: TStringField;
    QCentrosub_secuencia: TIntegerField;
    Label14: TLabel;
    edtBien: TEdit;
    btnTipoBien: TSpeedButton;
    TTipoBien: TEdit;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure edCajeroChange(Sender: TObject);
    procedure edCajeroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edClienteChange(Sender: TObject);
    procedure edUsuarioChange(Sender: TObject);
    procedure edUsuarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btRefreshClick(Sender: TObject);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure QDetalleAfterDelete(DataSet: TDataSet);
    procedure QDetalleAfterPost(DataSet: TDataSet);
    procedure QDetalleBeforePost(DataSet: TDataSet);
    procedure QDetalleNewRecord(DataSet: TDataSet);
    procedure GridCuentasColEnter(Sender: TObject);
    procedure GridCuentasEnter(Sender: TObject);
    procedure GridCuentasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btEliminaClick(Sender: TObject);
    procedure btBuscaCtaClick(Sender: TObject);
    procedure QDetalleCAT_CUENTAChange(Sender: TField);
    procedure QDesemAfterOpen(DataSet: TDataSet);
    procedure QDesemAfterScroll(DataSet: TDataSet);
    procedure QDetalleAfterEdit(DataSet: TDataSet);
    procedure QDetalleAfterInsert(DataSet: TDataSet);
    procedure QDetalleBeforeDelete(DataSet: TDataSet);
    procedure btProvClick(Sender: TObject);
    procedure btEmpleadoClick(Sender: TObject);
    procedure edProveedorChange(Sender: TObject);
    procedure edProveedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edEmpleadoChange(Sender: TObject);
    procedure edEmpleadoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edCajaChange(Sender: TObject);
    procedure edCajaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btCajaClick(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure btnSubCentroClick(Sender: TObject);
    procedure QCentrocen_referenciaChange(Sender: TField);
    procedure QCentrosub_referenciaChange(Sender: TField);
    procedure QCentroAfterDelete(DataSet: TDataSet);
    procedure QCentroAfterPost(DataSet: TDataSet);
    procedure QCentroBeforePost(DataSet: TDataSet);
    procedure btnTipoBienClick(Sender: TObject);
    procedure edtBienChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Debitos, Creditos : Double;
    Modifica, Elimina : Boolean;
    cli : integer;
    Procedure Totalizar;
  end;

var
  frmConsDesem: TfrmConsDesem;

implementation

uses RVENTA16, SIGMA01, SIGMA00;

{$R *.dfm}

procedure TfrmConsDesem.SpeedButton1Click(Sender: TObject);
begin
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('C�digo');
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

procedure TfrmConsDesem.SpeedButton2Click(Sender: TObject);
begin
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('C�digo');
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

    cli := dm.Query1.fieldbyname('cli_codigo').AsInteger;
    edCliente.setfocus;
    btRefreshClick(self);
  end;
end;

procedure TfrmConsDesem.SpeedButton3Click(Sender: TObject);
begin
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('C�digo');
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

procedure TfrmConsDesem.edCajeroChange(Sender: TObject);
begin
  if trim(edCajero.text) = '' then tCajero.text := '';
end;

procedure TfrmConsDesem.edCajeroKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmConsDesem.edClienteKeyDown(Sender: TObject; var Key: Word;
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
      begin
        tCliente.text := dm.Query1.fieldbyname('cli_nombre').asstring;
        cli := dm.Query1.fieldbyname('cli_codigo').AsInteger;
      end;
      btRefreshClick(Self);
    end;
  end;
end;

procedure TfrmConsDesem.edClienteChange(Sender: TObject);
begin
  if trim(edCliente.text) = '' then tCliente.text := '';
end;

procedure TfrmConsDesem.edUsuarioChange(Sender: TObject);
begin
  if trim(edUsuario.text) = '' then tUsuario.text := '';
end;

procedure TfrmConsDesem.edUsuarioKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmConsDesem.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrmConsDesem.FormCreate(Sender: TObject);
begin
  Memo1.Lines := QDesem.SQL;
  Fecha1.date := date;
  Fecha2.date := date;
  cbOrden.itemindex := 0;
end;

procedure TfrmConsDesem.FormActivate(Sender: TObject);
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

procedure TfrmConsDesem.btRefreshClick(Sender: TObject);
begin
  QDesem.close;
  QDesem.sql.clear;
  QDesem.sql := Memo1.Lines;
  if trim(edCajero.text) <> '' then
    QDesem.sql.add('and d.caj_codigo = '+trim(edCajero.text));

  if ckmenores.Checked then
    QDesem.sql.add('and d.des_gasto_menor = '+QuotedStr('True'));

  if trim(edCliente.text) <> '' then
     QDesem.sql.add('and d.cli_codigo = '+inttostr(cli));

  if trim(edProveedor.Text) <> '' then
     QDesem.sql.add('and d.sup_codigo = '+trim(edProveedor.Text));

  if trim(edtBien.Text) <> '' then
     QDesem.sql.add('and d.tip_codigo = '+trim(edtBien.Text));

  if trim(edCaja.Text) <> '' then
     QDesem.sql.add('and d.des_caja = '+trim(edCaja.Text));

  if trim(edEmpleado.Text) <> '' then
     QDesem.sql.add('and d.emp_codigo = '+trim(edEmpleado.Text));

  if trim(edNombre.text) <> '' then
    QDesem.sql.add('and d.des_beneficiario like '+#39+trim(edNombre.text)+#39);

  if trim(edUsuario.text) <> '' then
    QDesem.sql.add('and d.usu_codigo = '+trim(edUsuario.text));

  if cbStatus.ItemIndex = 1 then
     QDesem.sql.add('and d.des_status = '+#39+'ANU'+#39)
  else if cbStatus.ItemIndex = 2 then
     QDesem.sql.add('and d.des_status = '+#39+'EMI'+#39);

  if cbOrden.ItemIndex = 0 then
     QDesem.sql.add('order by d.des_numero')
  else if cbOrden.ItemIndex = 1 then
     QDesem.sql.add('order by d.des_beneficiario')
  else if cbOrden.ItemIndex = 2 then
     QDesem.sql.add('order by d.des_fecha');

  QDesem.Parameters.parambyname('fecha1').DataType := ftDate;
  QDesem.Parameters.parambyname('fecha2').DataType := ftDate;
  QDesem.Parameters.parambyname('fecha1').Value := fecha1.date;
  QDesem.Parameters.parambyname('fecha2').Value := fecha2.date;
  QDesem.Parameters.parambyname('emp').Value := dm.vp_cia;
  QDesem.Parameters.parambyname('suc').Value := DBLookupComboBox2.KeyValue;
  QDesem.open;
  lbCantidad.caption := inttostr(QDesem.recordcount)+' Desembolsos';
end;

procedure TfrmConsDesem.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmConsDesem.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then close;
end;

procedure TfrmConsDesem.BitBtn2Click(Sender: TObject);
begin
  Application.CreateForm(tRConsDesem, RConsDesem);
  RConsDesem.QDesem.SQL := QDesem.SQL;
  RConsDesem.QDesem.Parameters.parambyname('fecha1').DataType := ftDate;
  RConsDesem.QDesem.Parameters.parambyname('fecha2').DataType := ftDate;
  RConsDesem.QDesem.Parameters.parambyname('fecha1').Value := fecha1.date;
  RConsDesem.QDesem.Parameters.parambyname('fecha2').Value := fecha2.date;
  RConsDesem.QDesem.Parameters.parambyname('emp').Value := dm.vp_cia;
  RConsDesem.QDesem.Parameters.parambyname('suc').Value := DBLookupComboBox2.KeyValue;
  RConsDesem.QDesem.open;
  if ckDetalle.Checked then
    RConsDesem.QDetalle.Open;

  RConsDesem.lbCaja.Caption := tCaja.Text;
  RConsDesem.lbCajero.Caption := tCajero.Text;
  RConsDesem.lbCliente.Caption := tCliente.Text;
  RConsDesem.lbUsuario.Caption := tUsuario.Text;
  RConsDesem.lbNombre.Caption := edNombre.Text;
  RConsDesem.lbStatus.Caption := cbStatus.Items[cbStatus.ItemIndex];
  RConsDesem.lbFecha.Caption := 'Del '+DateToStr(Fecha1.Date)+' Al '+DateToStr(Fecha2.Date);
  RConsDesem.PrinterSetup;
  RConsDesem.Preview;
  RConsDesem.Destroy;
end;

procedure TfrmConsDesem.FormPaint(Sender: TObject);
begin
  with frmConsDesem do
  begin
    Top  := 2;
    Left := 2;
    width := frmMain.Width - 230;
    height := frmMain.Height - 120;
  end;
end;

procedure TfrmConsDesem.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
     if activecontrol.classtype <> tdbgrid then
     begin
       perform(wm_nextdlgctl, 0, 0);
       key := #0;
     end;
end;

procedure TfrmConsDesem.QDetalleAfterDelete(DataSet: TDataSet);
begin
  QDetalle.UpdateBatch;
  Totalizar;
end;

procedure TfrmConsDesem.QDetalleAfterPost(DataSet: TDataSet);
begin
  QDetalle.UpdateBatch;
  Totalizar;
end;

procedure TfrmConsDesem.QDetalleBeforePost(DataSet: TDataSet);
begin
  if QDetalle.State = dsInsert then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select isnull(max(det_secuencia),0) as maximo');
    dm.Query1.SQL.Add('from contdet_desembolso');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and des_numero = :num');
    dm.Query1.SQL.Add('and suc_codigo = :suc');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('num').Value := QDesemDES_NUMERO.Value;
    dm.Query1.Parameters.ParamByName('suc').Value := QDesemSUC_CODIGO.Value;
    dm.Query1.Open;
    QDetalleDET_SECUENCIA.Value := dm.Query1.FieldByName('maximo').AsInteger + 1;
  end;
end;

procedure TfrmConsDesem.QDetalleNewRecord(DataSet: TDataSet);
begin
  QDetalleEMP_CODIGO.Value := dm.vp_cia;
  QDetalleDES_NUMERO.Value := QDesemDES_NUMERO.Value;
  QDetalleSUC_CODIGO.Value := QDesemsuc_codigo.Value;
end;

procedure TfrmConsDesem.GridCuentasColEnter(Sender: TObject);
begin
  if GridCuentas.SelectedIndex = 1 then
    GridCuentas.SelectedIndex := GridCuentas.SelectedIndex + 1;
end;

procedure TfrmConsDesem.GridCuentasEnter(Sender: TObject);
begin
  GridCuentas.SelectedIndex := 0;
end;

procedure TfrmConsDesem.GridCuentasKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmConsDesem.btEliminaClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR LA CUENTA?',mtconfirmation,[mbyes,mbno],0) = mryes then
  begin
    QDetalle.Delete
  end;
  GridCuentas.setfocus;
end;

procedure TfrmConsDesem.btBuscaCtaClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select cat_nombre, cat_cuenta');
  Search.Query.Add('from contcatalogo');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.Query.Add('and cat_movimiento = '+#39+'S'+#39);
  Search.AliasFields.Add('Descripci�n');
  Search.AliasFields.Add('Cuenta');
  Search.ResultField := 'cat_cuenta';
  Search.Title := 'Catalogo de Cuentas';
  if Search.execute then
  begin
    QDetalle.Edit;
    QDetalleCAT_CUENTA.Value := Search.ValueField;
  end;
end;

procedure TfrmConsDesem.QDetalleCAT_CUENTAChange(Sender: TField);
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

procedure TfrmConsDesem.QDesemAfterOpen(DataSet: TDataSet);
begin
  if not QDetalle.Active then QDetalle.Open;
  if not QFacturas.Active then QFacturas.Open;
  if not QCentro.Active then QCentro.Open;
end;

procedure TfrmConsDesem.Totalizar;
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

procedure TfrmConsDesem.QDesemAfterScroll(DataSet: TDataSet);
begin
  Totalizar;
end;

procedure TfrmConsDesem.QDetalleAfterEdit(DataSet: TDataSet);
begin
  if not Modifica then QDetalle.Cancel;
end;

procedure TfrmConsDesem.QDetalleAfterInsert(DataSet: TDataSet);
begin
  if not Modifica then QDetalle.Cancel;
end;

procedure TfrmConsDesem.QDetalleBeforeDelete(DataSet: TDataSet);
begin
  if not Elimina then Abort;
end;

procedure TfrmConsDesem.btProvClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select sup_nombre, sup_codigo');
  Search.Query.Add('from proveedores');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C�digo');
  Search.Title := 'Proveedores';
  Search.ResultField := 'sup_codigo';
  if Search.execute then
  begin
    edProveedor.Text := Search.ValueField;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select sup_nombre, sup_codigo from proveedores');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and sup_codigo = :cod');
    dm.Query1.Parameters.ParamByName('cod').Value  := StrToInt(edProveedor.Text);
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.Open;
    tProv.Text := dm.Query1.FieldByName('sup_nombre').AsString;
    btRefreshClick(Self);
  end;
end;

procedure TfrmConsDesem.btEmpleadoClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select emp_nombres, emp_apellido_paterno, emp_cedula, emp_numero');
  Search.Query.Add('from empleados');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.Query.Add('and emp_status = '+QuotedStr('ACT'));
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Apellido');
  Search.AliasFields.Add('C�dula');
  Search.AliasFields.Add('C�digo');
  Search.ResultField := 'emp_numero';
  Search.Title := 'Empleados';
  if Search.execute then
  begin
    edEmpleado.Text := Search.ValueField;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select emp_nombres, emp_apellido_paterno, cat_cuenta');
    dm.Query1.SQL.Add('from empleados');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and emp_numero = :num');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('num').Value := StrToInt(edEmpleado.Text);
    dm.Query1.Open;
    tEmp.Text := dm.Query1.FieldByName('emp_nombres').AsString + ' ' +dm.Query1.FieldByName('emp_apellido_paterno').AsString;
    btRefreshClick(Self);
  end;
end;

procedure TfrmConsDesem.edProveedorChange(Sender: TObject);
begin
  if Trim(edProveedor.Text) = '' then tProv.Text := '';
end;

procedure TfrmConsDesem.edProveedorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if Trim(edProveedor.Text) <> '' then
    begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select sup_nombre, sup_codigo from proveedores');
      dm.Query1.SQL.Add('where emp_codigo = :emp');
      dm.Query1.SQL.Add('and sup_codigo = :cod');
      dm.Query1.Parameters.ParamByName('cod').Value  := StrToInt(edProveedor.Text);
      dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.Open;
      tProv.Text := dm.Query1.FieldByName('sup_nombre').AsString;
      btRefreshClick(Self);
    end;
  end;
end;

procedure TfrmConsDesem.edEmpleadoChange(Sender: TObject);
begin
  if Trim(edEmpleado.Text) = '' then tEmp.Text := '';
end;

procedure TfrmConsDesem.edEmpleadoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if Trim(edEmpleado.Text) <> '' then
    begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select emp_nombres, emp_apellido_paterno, cat_cuenta');
      dm.Query1.SQL.Add('from empleados');
      dm.Query1.SQL.Add('where emp_codigo = :emp');
      dm.Query1.SQL.Add('and emp_numero = :num');
      dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
      dm.Query1.Parameters.ParamByName('num').Value := StrToInt(edEmpleado.Text);
      dm.Query1.Open;
      tEmp.Text := dm.Query1.FieldByName('emp_nombres').AsString + ' ' +dm.Query1.FieldByName('emp_apellido_paterno').AsString;
      btRefreshClick(Self);
    end;
  end;
end;

procedure TfrmConsDesem.edCajaChange(Sender: TObject);
begin
  if Trim(edCaja.Text) = '' then tCaja.Text := '';
end;

procedure TfrmConsDesem.edCajaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if Trim(edCaja.Text) <> '' then
    begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select caj_nombre');
      dm.Query1.SQL.Add('from Cajas');
      dm.Query1.SQL.Add('where emp_codigo = :emp');
      dm.Query1.SQL.Add('and caj_codigo = :num');
      dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
      dm.Query1.Parameters.ParamByName('num').Value := StrToInt(edCaja.Text);
      dm.Query1.Open;
      tCaja.Text := dm.Query1.FieldByName('caj_nombre').AsString;
      btRefreshClick(Self);
    end;
  end;
end;

procedure TfrmConsDesem.btCajaClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select caj_nombre, caj_codigo');
  Search.Query.Add('from cajas');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C�digo');
  Search.ResultField := 'caj_codigo';
  Search.Title := 'Cajas';
  if Search.execute then
  begin
    edCaja.Text := Search.ValueField;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select caj_nombre');
    dm.Query1.SQL.Add('from cajas');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and caj_codigo = :num');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('num').Value := StrToInt(edcaja.Text);
    dm.Query1.Open;
    tCaja.Text := dm.Query1.FieldbyName('caj_nombre').AsString;
    btRefreshClick(Self);
  end;
end;

procedure TfrmConsDesem.SpeedButton4Click(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR ESTE CENTRO?',mtconfirmation,[mbyes,mbno],0) = mryes then
  begin
    QCentro.Delete
  end;
  GridCentro.setfocus;
end;

procedure TfrmConsDesem.SpeedButton5Click(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select cen_nombre, cen_codigo');
  Search.Query.Add('from centrocostos');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.AliasFields.Add('Descripci�n');
  Search.AliasFields.Add('Cuenta');
  Search.ResultField := 'cen_codigo';
  Search.Title := 'Centros de Costo';
  if Search.execute then
  begin
    QCentro.Edit;
    QCentrocen_referencia.Value := Search.ValueField;
  end;
end;

procedure TfrmConsDesem.btnSubCentroClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select sub_nombre, sub_referencia');
  Search.Query.Add('from CentroCostos_Hijos');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.Query.Add('and cen_codigo = '+IntToStr(QCentrocen_codigo.Value));
  Search.AliasFields.Add('SubCentro');
  Search.AliasFields.Add('ID');
  Search.ResultField := 'sub_referencia';
  Search.Title := 'Sub-Centro de Costo';
  if Search.execute then
  begin
    QCentro.Edit;
    QCentrosub_referencia.Value := Search.ValueField;
  end;
end;

procedure TfrmConsDesem.QCentrocen_referenciaChange(Sender: TField);
begin
if not QCentrocen_referencia.IsNull then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cen_nombre, cen_codigo from CentroCostos');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cen_referencia = :ref');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('ref').Value := QCentrocen_referencia.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
    begin
      QCentrocen_nombre.Value := dm.Query1.FieldByName('cen_nombre').AsString;
      QCentrocen_codigo.Value := dm.Query1.FieldByName('cen_codigo').AsInteger;
    end;
  end;
end;

procedure TfrmConsDesem.QCentrosub_referenciaChange(Sender: TField);
begin
  if (not QCentrocen_referencia.IsNull) and (not QCentrosub_referencia.IsNull) then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cen_nombre, cen_codigo from CentroCostos');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cen_referencia = :ref');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('ref').Value := QCentrocen_referencia.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
    begin
      QCentrocen_nombre.Value := dm.Query1.FieldByName('cen_nombre').AsString;
      QCentrocen_codigo.Value := dm.Query1.FieldByName('cen_codigo').AsInteger;
    end;

    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select sub_nombre, sub_secuencia  from CentroCostos_Hijos');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cen_codigo in (select cen_codigo from CentroCostos');
    dm.Query1.SQL.Add('where emp_codigo = '+dm.QEmpresasEMP_CODIGO.AsString);
    dm.Query1.SQL.Add('and cen_referencia = '+QuotedStr(QCentrocen_referencia.AsString)+')');
    dm.Query1.SQL.Add('and sub_referencia = :ref');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('ref').Value := QCentrosub_referencia.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
    begin
      QCentrocen_nombre.Value := QCentrocen_nombre.Value+' - '+dm.Query1.FieldByName('sub_nombre').AsString;
      QCentrosub_secuencia.Value := dm.Query1.FieldByName('sub_secuencia').AsInteger;
    end
    else
    ShowMessage('Esta sub centro no existe favor verificar....');
  end;

end;

procedure TfrmConsDesem.QCentroAfterDelete(DataSet: TDataSet);
begin
QCentro.UpdateBatch;
end;

procedure TfrmConsDesem.QCentroAfterPost(DataSet: TDataSet);
begin
QCentro.UpdateBatch;
end;

procedure TfrmConsDesem.QCentroBeforePost(DataSet: TDataSet);
begin
if QCentrocen_nombre.IsNull then QCentro.Cancel;
  if QCentro.State = dsInsert then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select isnull(max(det_secuencia),0) as maximo');
    dm.Query1.SQL.Add('from DesemCentroCostos');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and des_numero = :num');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('num').Value := QDesemDES_NUMERO.Value;
    dm.Query1.Open;
    QCentrodet_secuencia.Value := dm.Query1.FieldByName('maximo').AsInteger + 1;
  end;
end;

procedure TfrmConsDesem.btnTipoBienClick(Sender: TObject);
begin
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('C�digo');
  Search.Query.clear;
  Search.Query.add('select tip_nombre, tip_codigo');
  Search.Query.add('from Tipo_Bienes_Servicios');
  Search.Query.add('where 1 = 1');
  Search.ResultField := 'Tip_Codigo';
  Search.Title := 'Listado de Tipo de Bienes';
  if Search.execute then
  begin
    edtBien.text := Search.ValueField;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select tip_nombre from Tipo_Bienes_Servicios');
    dm.Query1.sql.add('where tip_codigo = :cod');
    dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edtBien.text));
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      messagedlg('TIPO DE BIEN NO EXISTE',mterror,[mbok],0)
    else
    TTipoBien.text := dm.Query1.fieldbyname('tip_nombre').asstring;
    edtBien.setfocus;
    btRefreshClick(self);
  end;
end;

procedure TfrmConsDesem.edtBienChange(Sender: TObject);
begin
  if Trim(edtBien.Text) = '' then TTipoBien.Text := '';
end;

end.
