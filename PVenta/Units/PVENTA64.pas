unit PVENTA64;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Grids, DBGrids, DB,
  IBCustomDataSet, IBQuery, ComCtrls, ADODB,
  QuerySearchDlgADO, DBCtrls,DateUtils;

type
  TfrmConsPedidosProv = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label10: TLabel;
    btCondi: TSpeedButton;
    tCondi: TEdit;
    edCondi: TEdit;
    Label4: TLabel;
    edNombre: TEdit;
    ckDesc: TCheckBox;
    ckItbis: TCheckBox;
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
    Grid: TDBGrid;
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
    btProveedor: TSpeedButton;
    edProveedor: TEdit;
    tProveedor: TEdit;
    QDetalleDET_MEDIDA: TIBStringField;
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
    QDetalleDET_DESCRIPCION: TStringField;
    Label1: TLabel;
    edSolicitud: TEdit;
    QPedidosmon_sigla: TStringField;
    QPedidosped_solicitud_compra: TStringField;
    QPedidosPED_COTIZACION: TStringField;
    procedure QDetalleCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure btRefreshClick(Sender: TObject);
    procedure edCondiKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btCondiClick(Sender: TObject);
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
    procedure btProveedorClick(Sender: TObject);
    procedure edProveedorChange(Sender: TObject);
    procedure edProveedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsPedidosProv: TfrmConsPedidosProv;

implementation

uses RVENTA04, RVENTA19, RVENTA20, SIGMA01, SIGMA00;

{$R *.dfm}

procedure TfrmConsPedidosProv.QDetalleCalcFields(DataSet: TDataSet);
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

procedure TfrmConsPedidosProv.FormCreate(Sender: TObject);
begin
  {if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'I' then
     Grid.Columns[0].FieldName := 'PRO_CODIGO'
  else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'F' then
     Grid.Columns[0].FieldName := 'PRO_RFABRIC'
  else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'O' then
     Grid.Columns[0].FieldName := 'PRO_RORIGINAL';}
  Fecha1.date := StartOfTheMonth(date);
  Fecha2.date := date;
  Memo1.lines := QPedidos.sql;
  cbOrden.itemindex := 0;
end;

procedure TfrmConsPedidosProv.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmConsPedidosProv.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then close;
end;

procedure TfrmConsPedidosProv.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrmConsPedidosProv.FormActivate(Sender: TObject);
begin
//  if not QFacturas.active then QFacturas.open;
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

procedure TfrmConsPedidosProv.btRefreshClick(Sender: TObject);
begin
  QPedidos.close;
  QPedidos.sql.clear;
  QPedidos.sql := Memo1.Lines;
  if ckItbis.Checked then
    QPedidos.sql.add('and p.ped_itbis > 0');
  if ckDesc.Checked then
    QPedidos.sql.add('and p.ped_descuento > 0');
  if trim(edProveedor.text) <> '' then
     QPedidos.sql.add('and P.sup_codigo  = '+Trim(edProveedor.Text));
  if trim(edCondi.text) <> '' then
    QPedidos.sql.add('and p.cpa_codigo = '+trim(edCondi.text));
  if trim(edNombre.text) <> '' then
    QPedidos.sql.add('and p.ped_nombre like '+#39+trim(edNombre.text)+#39);
  if trim(edUsuario.text) <> '' then
    QPedidos.sql.add('and p.usu_codigo = '+trim(edUsuario.text));

  if trim(edSolicitud.text) <> '' then
    QPedidos.sql.add('and p.ped_solicitud_compra = '+trim(edSolicitud.text));


  if cbStatus.ItemIndex = 1 then
     QPedidos.sql.add('and p.ped_status = '+#39+'ANU'+#39)
  else if cbStatus.ItemIndex = 2 then
     QPedidos.sql.add('and p.ped_status in('+QuotedStr('EMI')+','+QuotedStr('PAR')+')')
  else if cbStatus.ItemIndex = 3 then
     QPedidos.sql.add('and p.ped_status = '+#39+'REC'+#39)
  else if cbStatus.ItemIndex = 4 then
     QPedidos.sql.add('and p.ped_status = '+#39+'PAR'+#39);

  if cbOrden.ItemIndex = 0 then
     QPedidos.sql.add('order by p.ped_numero')
  else if cbOrden.ItemIndex = 1 then
     QPedidos.sql.add('order by p.ped_nombre')
  else if cbOrden.ItemIndex = 2 then
     QPedidos.sql.add('order by p.ped_fecha');

  QPedidos.Parameters.parambyname('fecha1').DataType := ftDate;
  QPedidos.Parameters.parambyname('fecha2').DataType := ftDate;
  QPedidos.Parameters.parambyname('fecha1').Value := fecha1.date;
  QPedidos.Parameters.parambyname('fecha2').Value := fecha2.date;
  QPedidos.Parameters.parambyname('emp').Value  := dm.vp_cia;
  QPedidos.Parameters.parambyname('suc').Value  := DBLookupComboBox2.KeyValue;
  QPedidos.open;
  lbCantidad.caption := inttostr(QPedidos.recordcount)+' Pedidos';

//  DBGrid1.setfocus;
end;

procedure TfrmConsPedidosProv.edCondiKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmConsPedidosProv.btCondiClick(Sender: TObject);
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

procedure TfrmConsPedidosProv.edCondiChange(Sender: TObject);
begin
  if trim(edCondi.text) = '' then tCondi.text := '';
end;

procedure TfrmConsPedidosProv.edUsuarioKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmConsPedidosProv.SpeedButton3Click(Sender: TObject);
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

procedure TfrmConsPedidosProv.QPedidosAfterOpen(DataSet: TDataSet);
begin
  if not QDetalle.active then QDetalle.open;
end;

procedure TfrmConsPedidosProv.edUsuarioChange(Sender: TObject);
begin
  if trim(edUsuario.text) = '' then tUsuario.text := '';
end;

procedure TfrmConsPedidosProv.cbStatusClick(Sender: TObject);
begin
  btRefreshClick(self);
end;

procedure TfrmConsPedidosProv.cbGrupoClick(Sender: TObject);
begin
  btRefreshClick(self);
end;

procedure TfrmConsPedidosProv.ckItbisClick(Sender: TObject);
begin
  btRefreshClick(self);
end;

procedure TfrmConsPedidosProv.ckDescClick(Sender: TObject);
begin
  btRefreshClick(self);
end;

procedure TfrmConsPedidosProv.cbOrdenClick(Sender: TObject);
begin
  btRefreshClick(self);
end;

procedure TfrmConsPedidosProv.btProveedorClick(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Código');
  Search.Query.clear;
  Search.Query.add('select sup_nombre, sup_codigo');
  Search.ResultField := 'sup_codigo';
  Search.Query.add('from proveedores');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.Query.add('and sup_Status = '+#39+'ACT'+#39);
  Search.Title := 'Listado de Proveedores';
  if Search.execute then
  begin
    edProveedor.text := search.valuefield;
    edProveedor.setfocus;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select sup_codigo, sup_nombre, sup_balance,');
    dm.Query1.sql.add('sup_direccion, sup_localidad, sup_telefono, sup_fax');
    dm.Query1.sql.add('from proveedores');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and sup_Status = '+#39+'ACT'+#39);
    dm.Query1.sql.add('and sup_codigo = :sup');
    dm.Query1.Parameters.parambyname('sup').Value := strtoint(search.valuefield);
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.open;
    tProveedor.text := dm.Query1.fieldbyname('sup_nombre').asstring;
    edProveedor.setfocus;
    btRefreshClick(Self);
  end;
end;

procedure TfrmConsPedidosProv.edProveedorChange(Sender: TObject);
begin
  if trim(edProveedor.text) = '' then tProveedor.text := '';
end;

procedure TfrmConsPedidosProv.edProveedorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edProveedor.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select sup_codigo, sup_nombre, sup_balance,');
      dm.Query1.sql.add('sup_direccion, sup_localidad, sup_telefono, sup_fax');
      dm.Query1.sql.add('from proveedores');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and sup_Status = '+#39+'ACT'+#39);
      dm.Query1.sql.add('and sup_codigo = :sup');
      dm.Query1.Parameters.parambyname('sup').Value := strtoint(edProveedor.text);
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      dm.Query1.open;
      tProveedor.text := dm.Query1.fieldbyname('sup_nombre').asstring;
    end
    else
      tProveedor.text := '';
  end;
end;

procedure TfrmConsPedidosProv.BitBtn2Click(Sender: TObject);
begin
  Application.CreateForm(tRConsPedidosProv, RConsPedidosProv);
  if ckItbis.Checked then
    RConsPedidosProv.QPedidos.sql.add('and p.ped_itbis > 0');
  if ckDesc.Checked then
    RConsPedidosProv.QPedidos.sql.add('and p.ped_descuento > 0');
  if trim(edProveedor.text) <> '' then
     RConsPedidosProv.QPedidos.sql.add('and p.sup_codigo  = '+Trim(edProveedor.Text));
  if trim(edCondi.text) <> '' then
    RConsPedidosProv.QPedidos.sql.add('and p.cpa_codigo = '+trim(edCondi.text));
  if trim(edNombre.text) <> '' then
    RConsPedidosProv.QPedidos.sql.add('and p.ped_nombre like '+#39+trim(edNombre.text)+#39);
  if trim(edUsuario.text) <> '' then
    RConsPedidosProv.QPedidos.sql.add('and p.usu_codigo = '+trim(edUsuario.text));

  if trim(edSolicitud.text) <> '' then
    RConsPedidosProv.QPedidos.sql.add('and p.ped_solicitud_compra = '+trim(edSolicitud.text));

  if cbStatus.ItemIndex = 1 then
     RConsPedidosProv.QPedidos.sql.add('and p.ped_status = '+#39+'ANU'+#39)
  else if cbStatus.ItemIndex = 2 then
     RConsPedidosProv.QPedidos.sql.add('and p.ped_status in('+QuotedStr('EMI')+','+QuotedStr('PAR')+')')
  else if cbStatus.ItemIndex = 3 then
     RConsPedidosProv.QPedidos.sql.add('and p.ped_status = '+#39+'REC'+#39)
  else if cbStatus.ItemIndex = 4 then
     RConsPedidosProv.QPedidos.sql.add('and p.ped_status = '+#39+'PAR'+#39);

  if cbOrden.ItemIndex = 0 then
     RConsPedidosProv.QPedidos.sql.add('order by p.ped_numero')
  else if cbOrden.ItemIndex = 1 then
     RConsPedidosProv.QPedidos.sql.add('order by p.ped_nombre')
  else if cbOrden.ItemIndex = 2 then
     RConsPedidosProv.QPedidos.sql.add('order by p.ped_fecha');

  RConsPedidosProv.QPedidos.Parameters.parambyname('fecha1').DataType := ftDate;
  RConsPedidosProv.QPedidos.Parameters.parambyname('fecha2').DataType := ftDate;
  RConsPedidosProv.QPedidos.Parameters.parambyname('fecha1').Value := fecha1.date;
  RConsPedidosProv.QPedidos.Parameters.parambyname('fecha2').Value := fecha2.date;
  RConsPedidosProv.QPedidos.Parameters.parambyname('suc').Value  := DBLookupComboBox2.KeyValue;
  RConsPedidosProv.QMoneda.open;
  RConsPedidosProv.QDetalle.open;
  RConsPedidosProv.QPedidos.open;
  RConsPedidosProv.lbCliente.Caption := tProveedor.Text;
  RConsPedidosProv.lbCondi.Caption := tCondi.Text;
  RConsPedidosProv.lbUsuario.Caption := tUsuario.Text;
  RConsPedidosProv.lbNombre.Caption := edNombre.Text;
  RConsPedidosProv.lbStatus.Caption := cbStatus.Items[cbStatus.ItemIndex];
  RConsPedidosProv.lbFecha.Caption := 'Del '+DateToStr(Fecha1.Date)+' Al '+DateToStr(Fecha2.Date);
  if (ckDesc.Checked and ckItbis.Checked) then
    RConsPedidosProv.lbDescItbis.Caption := 'Con Descuento e Itbis'
  else if (ckDesc.Checked and not ckItbis.Checked) then
    RConsPedidosProv.lbDescItbis.Caption := 'Con Descuento'
  else if (not ckDesc.Checked and ckItbis.Checked) then
    RConsPedidosProv.lbDescItbis.Caption := 'Con Itbis'
  else
    RConsPedidosProv.lbDescItbis.Caption := ' ';
//  if MessageDlg('IMPRIMIR DETALLADO?',mtConfirmation,[mbyes,mbno],0) = mryes then
  RConsPedidosProv.QRSubDetail2.Enabled := (MessageDlg('IMPRIMIR DETALLADO?',mtConfirmation,[mbyes,mbno],0) = mryes);


  RConsPedidosProv.PrinterSetup;
  RConsPedidosProv.Preview;
  RConsPedidosProv.Destroy;
end;

procedure TfrmConsPedidosProv.FormPaint(Sender: TObject);
begin
  with frmConsPedidosProv do
  begin
    Top  := 2;
    Left := 2;
    width := frmMain.Width - 230;
    height := frmMain.Height - 120;
  end;
end;

procedure TfrmConsPedidosProv.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
     if activecontrol.classtype <> tdbgrid then
     begin
       perform(wm_nextdlgctl, 0, 0);
       key := #0;
     end;
end;

end.
