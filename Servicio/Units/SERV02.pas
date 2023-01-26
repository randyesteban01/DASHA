unit SERV02;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, ComCtrls,
  Grids, DBGrids, QuerySearchDlgADO;

type
  TfrmOrdenServicio = class(TForm)
    QOrden: TADOQuery;
    QOrdenemp_codigo: TIntegerField;
    QOrdensuc_codigo: TIntegerField;
    QOrdenord_numero: TIntegerField;
    QOrdenord_fecha: TDateTimeField;
    QOrdenusu_codigo: TIntegerField;
    QOrdencli_codigo: TIntegerField;
    QOrdenord_nombre: TStringField;
    QOrdenord_direccion: TStringField;
    QOrdenord_localidad: TStringField;
    QOrdenord_telefono: TStringField;
    QOrdenord_status: TStringField;
    QOrdenord_fecha_entrega: TDateTimeField;
    QOrdenord_fecha_expira: TDateTimeField;
    QOrdenord_nota: TMemoField;
    Panel1: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    QSucursalalm_codigo: TIntegerField;
    dsSuc: TDataSource;
    Label8: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label2: TLabel;
    btBuscaCli: TSpeedButton;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edCliente: TEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit11: TDBEdit;
    Nota: TDBRichEdit;
    Panel2: TPanel;
    dsOrden: TDataSource;
    btPost: TBitBtn;
    btLimpiar: TBitBtn;
    btInsert: TBitBtn;
    btDelete: TBitBtn;
    btBusca: TBitBtn;
    btSalir: TBitBtn;
    btDetalle: TBitBtn;
    Grid: TDBGrid;
    QDetalle: TADOQuery;
    QDetalleemp_codigo: TIntegerField;
    QDetallesuc_codigo: TIntegerField;
    QDetalleord_numero: TIntegerField;
    QDetalledet_secuencia: TIntegerField;
    QDetalletip_codigo: TIntegerField;
    QDetalledet_numero_serie: TStringField;
    QDetalledet_descripcion: TStringField;
    QDetalledet_problema: TMemoField;
    QDetalledet_fecha_entrada: TDateTimeField;
    QDetalledet_fecha_entrega: TDateTimeField;
    QDetalletec_codigo: TIntegerField;
    QDetalledet_monto: TBCDField;
    QDetalledet_comentario: TMemoField;
    QDetalledet_tiene_garantia: TStringField;
    dsDetalle: TDataSource;
    Search: TQrySearchDlgADO;
    QDetalledet_status: TStringField;
    QTipo: TADOQuery;
    QTipotip_codigo: TIntegerField;
    QTipotip_nombre: TStringField;
    Query1: TADOQuery;
    btTaller: TBitBtn;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    QDetalletip_nombre: TStringField;
    cbStatus: TDBRadioGroup;
    QDetalleEstatus: TStringField;
    tTipo: TEdit;
    tTecnico: TEdit;
    procedure btInsertClick(Sender: TObject);
    procedure btDetalleClick(Sender: TObject);
    procedure QDetalletip_codigoGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure QDetalletec_codigoGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure FormActivate(Sender: TObject);
    procedure QOrdenNewRecord(DataSet: TDataSet);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure QDetalledet_fecha_entradaChange(Sender: TField);
    procedure QDetalletip_codigoChange(Sender: TField);
    procedure btPostClick(Sender: TObject);
    procedure QOrdenBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btBuscaClick(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure btLimpiarClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure dsOrdenDataChange(Sender: TObject; Field: TField);
    procedure dsDetalleDataChange(Sender: TObject; Field: TField);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btSalirClick(Sender: TObject);
    procedure GridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btBuscaCliClick(Sender: TObject);
    procedure edClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btTallerClick(Sender: TObject);
    procedure DBEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure QDetalleNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOrdenServicio: TfrmOrdenServicio;

implementation

uses SIGMA00, SIGMA01, SERV03, RSERV00, SERV08, SERV06, DateUtils;

{$R *.dfm}

procedure TfrmOrdenServicio.btInsertClick(Sender: TObject);
begin
  Application.CreateForm(tfrmDetalleOrdenServicio, frmDetalleOrdenServicio);
  QDetalle.Append;
  frmDetalleOrdenServicio.ShowModal;
  frmDetalleOrdenServicio.Release;
end;

procedure TfrmOrdenServicio.btDetalleClick(Sender: TObject);
begin
  Application.CreateForm(tfrmDetalleOrdenServicio, frmDetalleOrdenServicio);
  case cbStatus.ItemIndex of     {  if QDetalledet_status.Value = 'PEN' then }
    0,1,3  : QDetalle.Edit;      {     QDetalle.Edit;      }
  end; 

  frmDetalleOrdenServicio.ShowModal;
  frmDetalleOrdenServicio.Release;
end;

procedure TfrmOrdenServicio.QDetalletip_codigoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QDetalletip_codigo.isnull then
  begin
    Text := inttostr(QDetalletip_codigo.value);
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select tip_nombre from tipo_equipos');
    dm.Query1.sql.add('where emp_Codigo = :emp');
    dm.Query1.sql.add('and tip_Codigo = :tip');
    dm.Query1.Parameters.parambyname('emp').Value := dm.QEmpresasEMP_CODIGO.value;
    dm.Query1.Parameters.parambyname('tip').Value := QDetalletip_codigo.value;
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
       tTipo.text := ''
    else
       tTipo.text := dm.Query1.fieldbyname('tip_nombre').asstring;
  end
  else
  tTipo.text := '';
end;

procedure TfrmOrdenServicio.QDetalletec_codigoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QDetalletec_codigo.isnull then
  begin
    Text := inttostr(QDetalletec_codigo.value);
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select tec_nombre from tecnicos');
    dm.Query1.sql.add('where emp_Codigo = :emp');
    dm.Query1.sql.add('and tec_Codigo = :tec');
    dm.Query1.Parameters.parambyname('emp').Value := dm.QEmpresasEMP_CODIGO.value;
    dm.Query1.Parameters.parambyname('tec').Value := QDetalletec_codigo.value;
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
       tTecnico.text := ''
    else
      tTecnico.text := dm.Query1.fieldbyname('tec_nombre').asstring;
  end
  else
  tTecnico.text := '';
end;

procedure TfrmOrdenServicio.FormActivate(Sender: TObject);
begin
  QTipo.Open;
  if not QSucursal.Active then
  begin
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;

    QOrden.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    QOrden.Parameters.ParamByName('suc').Value :=  -1;
    QOrden.Parameters.ParamByName('ord').Value := -1;
    QOrden.Open;
    QOrden.Insert;
  end;
end;

procedure TfrmOrdenServicio.QOrdenNewRecord(DataSet: TDataSet);
begin
  QOrdenord_nota.Value := dm.QParametrospar_nota_orden_servicio.Value;
  QOrdenemp_codigo.Value := dm.QEmpresasEMP_CODIGO.Value;
  QOrdenord_fecha.Value := Date;
  QOrdenusu_codigo.Value := dm.Usuario;
  QOrdenord_status.Value := 'PEN';
//  QOrdenord_fecha_expira.Value := date + 90;
  if dm.QParametrospar_periodo_caducidad.asstring = 'DIA' then
     QOrdenord_fecha_expira.Value := IncDay(Date,dm.QParametrospar_cantidad_caducidad.asinteger)
  else
  if dm.QParametrospar_periodo_caducidad.asstring = 'MES' then
     QOrdenord_fecha_expira.Value := IncMonth(Date,dm.QParametrospar_cantidad_caducidad.asinteger)
  else
  if dm.QParametrospar_periodo_caducidad.asstring = 'AÑO' then
     QOrdenord_fecha_expira.Value := IncYear(Date,dm.QParametrospar_cantidad_caducidad.asinteger);

  QOrdensuc_codigo.Value := QSucursalsuc_codigo.Value;

  QDetalle.Close;
  QDetalle.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  QDetalle.Parameters.ParamByName('suc').Value := -1;
  QDetalle.Parameters.ParamByName('ord').Value := -1;
  QDetalle.Open;
end;

procedure TfrmOrdenServicio.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    if (ActiveControl.classtype <> TDBRichEdit) and
    (ActiveControl.classtype <> TDBGrid) then
    begin
      perform(wm_nextdlgctl, 0, 0);
      key := #0;
    end;
  end;
end;

procedure TfrmOrdenServicio.QDetalledet_fecha_entradaChange(
  Sender: TField);
begin
  if not (QDetalledet_fecha_entrada.IsNull and QDetalletip_codigo.IsNull) then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select tip_dias_entrega from tipo_equipos');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and tip_codigo = :tip');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('tip').Value := QDetalletip_codigo.Value;
    dm.Query1.Open;
    QDetalledet_fecha_entrega.Value := QDetalledet_fecha_entrada.Value + dm.Query1.FieldByName('tip_dias_entrega').AsInteger;
  end;
end;

procedure TfrmOrdenServicio.QDetalletip_codigoChange(Sender: TField);
begin
  if not (QDetalledet_fecha_entrada.IsNull and QDetalletip_codigo.IsNull) then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select tip_dias_entrega from tipo_equipos');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and tip_codigo = :tip');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('tip').Value := QDetalletip_codigo.Value;
    dm.Query1.Open;
    QDetalledet_fecha_entrega.Value := QDetalledet_fecha_entrada.Value + dm.Query1.FieldByName('tip_dias_entrega').AsInteger;
  end;
end;

procedure TfrmOrdenServicio.btPostClick(Sender: TObject);
var
  a : integer;
begin
  if MessageDlg('Todos los datos están correctos?', mtConfirmation, [mbyes,mbno],0) = mryes then
  begin
    QOrden.Post;
    QOrden.UpdateBatch;

    QDetalle.DisableControls;
    QDetalle.First;
    a := 0;
    while not QDetalle.Eof do
    begin
      QDetalle.Edit;
      a := a + 1;
      QDetalledet_secuencia.Value := a;
      QDetalleemp_codigo.Value := dm.QEmpresasEMP_CODIGO.Value;
      QDetallesuc_codigo.Value := DBLookupComboBox2.KeyValue;
      QDetalleord_numero.Value := QOrdenord_numero.Value;
      QDetalle.Post;
      QDetalle.Next;
    end;
    QDetalle.EnableControls;
    QDetalle.UpdateBatch;

    if MessageDlg('Se ha generado la orden #'+IntToStr(QOrdenord_numero.Value)+#13+
                  'Desea imprimirla?',mtConfirmation,[mbyes,mbno],0) = mryes then
    begin
      Application.CreateForm(tROrdenServicio, ROrdenServicio);
      ROrdenServicio.QOrden.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
      ROrdenServicio.QOrden.Parameters.ParamByName('suc').Value := QOrdensuc_codigo.Value;
      ROrdenServicio.QOrden.Parameters.ParamByName('ord').Value := QOrdenord_numero.Value;
      ROrdenServicio.QOrden.Open;
      ROrdenServicio.QDetalle.Open;
      ROrdenServicio.PrinterSetup;
      ROrdenServicio.Print;
      ROrdenServicio.Destroy;
    end;

    QOrden.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    QOrden.Parameters.ParamByName('suc').Value := -1;
    QOrden.Parameters.ParamByName('ord').Value := -1;
    QOrden.Open;
    QOrden.Insert;

    DBEdit1.SetFocus;
  end;
end;

procedure TfrmOrdenServicio.QOrdenBeforePost(DataSet: TDataSet);
begin
  if (QOrdenord_nombre.IsNull) or (Trim(QOrdenord_nombre.Value) = '') then
  begin
    MessageDlg('Debe especificar el nombre del cliente',mtError,[mbok],0);
    DBEdit11.SetFocus;
    abort;
  end;
  if (QOrdenord_telefono.IsNull) or (Trim(QOrdenord_telefono.Value) = '') then
  begin
    MessageDlg('Debe especificar el teléfono del cliente',mtError,[mbok],0);
    DBEdit4.SetFocus;
    abort;
  end;
  if QOrden.State = dsInsert then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select isnull(max(ord_numero),0) as maximo from orden_servicio');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and suc_codigo = :suc');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
    dm.Query1.Open;
    QOrdenord_numero.Value := dm.Query1.FieldByName('maximo').Value + 1;
  end;
end;

procedure TfrmOrdenServicio.FormCreate(Sender: TObject);
var
  a : integer;
begin
  for a := 0 to (Sender as TForm).ComponentCount -1 DO
  begin
    if Components[a].ClassType = tdbedit then
    begin
      (Components[a] as tdbedit).OnEnter := frmMain.Entra;
      (Components[a] as tdbedit).OnExit  := frmMain.sale;
    end;
  end;
  QTipo.Open;
end;

procedure TfrmOrdenServicio.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmOrdenServicio.btBuscaClick(Sender: TObject);
var
  a, Suc : integer;
begin
  Suc := DBLookupComboBox2.KeyValue;
  Search.Query.clear;
  Search.AliasFields.clear;
  Search.Query.add('select ord_numero, ord_nombre, ord_fecha');
  Search.Query.add('from orden_servicio');
  Search.Query.add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.value));
//  Search.Query.add('and ord_status = '+#39+'PEN'+#39);
  Search.Query.add('and suc_codigo = '+IntToStr(Suc));
  Search.AliasFields.add('Número');
  Search.AliasFields.add('Cliente');
  Search.AliasFields.add('Fecha');
  Search.AliasFields.add('Concepto');
  Search.Title := 'Ordenes de servicio';
  Search.ResultField := 'ord_numero';
  if Search.execute then
  begin
    QOrden.Close;
    QOrden.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    QOrden.Parameters.ParamByName('suc').Value := Suc;
    QOrden.Parameters.ParamByName('ord').Value := StrToInt(Search.ValueField);
    QOrden.Open;

    QDetalle.Close;
    QDetalle.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    QDetalle.Parameters.ParamByName('suc').Value := Suc;
    QDetalle.Parameters.ParamByName('ord').Value := StrToInt(Search.ValueField);
    QDetalle.Open;

    QOrden.Edit;
  end;
  Grid.SetFocus;
end;

procedure TfrmOrdenServicio.FormPaint(Sender: TObject);
begin
  top  := 5;
  Left := 0;
end;

procedure TfrmOrdenServicio.btLimpiarClick(Sender: TObject);
begin
  if MessageDlg('Desea cancelar y crear una orden nueva?', mtConfirmation, [mbyes,mbno],0) = mryes then
  begin
    QOrden.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    QOrden.Parameters.ParamByName('suc').Value := -1;
    QOrden.Parameters.ParamByName('ord').Value := -1;
    QOrden.Open;
    QOrden.Insert;

    DBEdit1.SetFocus;
  end
  else
    Grid.SetFocus;
end;

procedure TfrmOrdenServicio.btDeleteClick(Sender: TObject);
begin
  if MessageDlg('Eliminar el registro?', mtConfirmation, [mbyes,mbno],0) = mryes then
    QDetalle.Delete;

  Grid.SetFocus;
end;

procedure TfrmOrdenServicio.dsOrdenDataChange(Sender: TObject;
  Field: TField);
begin
{  btInsert.Enabled := cbStatus.ItemIndex in [0,1]; //QOrdenord_status.Value   = 'PEN';
  btPost.Enabled   := cbStatus.ItemIndex in [0,3]; //(QOrdenord_status.Value  = 'PEN')or(QOrdenord_status.Value = 'ETT');
  cbStatus.Enabled := cbStatus.ItemIndex in [0,1,3];
  btTaller.Enabled := (cbStatus.ItemIndex in [0,1,2])and(not QDetalle.IsEmpty);
//  btDelete.Enabled := cbStatus.ItemIndex in [0];
  btDetalle.Enabled:= not (cbStatus.ItemIndex in [2]);
//}
end;

procedure TfrmOrdenServicio.dsDetalleDataChange(Sender: TObject;
  Field: TField);
begin
//  btDelete.Enabled := qdetalledet_status.Value = 'PEN';
  //BitBtn6.Enabled  := not QDetalle.IsEmpty;
end;

procedure TfrmOrdenServicio.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = vk_f2) and (btPost.Enabled) then btPostClick(Self);
  if key = vk_f3 then btLimpiarClick(Self);
  if key = vk_f10 then btSalirClick(Self);
end;

procedure TfrmOrdenServicio.btSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmOrdenServicio.GridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = vk_f4) and (btInsert.Enabled) then btInsertClick(Self);
  if (key = vk_f5) and (btDelete.Enabled) then btDeleteClick(Self);
end;

procedure TfrmOrdenServicio.btBuscaCliClick(Sender: TObject);
begin
  Search.Query.clear;
  Search.AliasFields.clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Telefono');
  Search.AliasFields.Add('Cédula/RNC');
  Search.AliasFields.Add('Código');
  Search.Query.add('select substring(cli_nombre,1,50) as cli_nombre, cli_telefono, cli_cedula, cli_codigo, cli_referencia');
  if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
    Search.ResultField := 'cli_codigo'
  else
    Search.ResultField := 'cli_referencia';
  Search.Query.add('from clientes');
  Search.Query.add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.value));
  Search.Query.add('and cli_Status = '+#39+'ACT'+#39);
  Search.Title := 'Listado de clientes';
  if Search.execute then
  begin
    edCliente.text := search.valuefield;
    Query1.close;
    Query1.sql.clear;
    Query1.sql.add('select cli_codigo, cli_nombre, cli_balance, cli_referencia,');
    Query1.sql.add('cli_limite, cli_precio, cli_descuento, ven_codigo, cpa_codigo,');
    Query1.sql.add('cli_direccion, cli_localidad, cli_telefono, cli_fax, cli_facturarbce,');
    Query1.sql.add('cli_facturarvencida, cli_precio, cli_cuenta, pro_codigo,');
    Query1.sql.add('cli_factura_debajo_costo, cli_factura_debajo_minimo, tcl_codigo,');
    Query1.sql.add('cli_cedula, cli_rnc, tfa_codigo');
    Query1.sql.add('from clientes');
    Query1.sql.add('where emp_codigo = :emp');
    Query1.sql.add('and cli_Status = '+#39+'ACT'+#39);
    if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
    begin
      Query1.sql.add('and cli_codigo = :cli');
      Query1.Parameters.parambyname('cli').Value := strtoint(search.valuefield);
    end
    else
    begin
      Query1.sql.add('and cli_referencia = :cli');
      Query1.Parameters.parambyname('cli').Value := search.valuefield;
    end;
    Query1.Parameters.parambyname('emp').Value := dm.QEmpresasEMP_CODIGO.value;
    Query1.open;

    QOrdencli_codigo.AsString := Query1.FieldByName('cli_codigo').AsString;
    QOrdenord_nombre.Value := Query1.FieldByName('cli_nombre').AsString;
    QOrdenord_direccion.Value := Query1.FieldByName('cli_direccion').AsString;
    QOrdenord_localidad.Value := Query1.FieldByName('cli_localidad').AsString;
    QOrden['ord_telefono'] := Query1.FieldByName('cli_telefono').AsString;
  end;
  DBEdit5.setfocus;
end;

procedure TfrmOrdenServicio.edClienteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edCliente.Text) <> '' then
    begin
      Query1.close;
      Query1.sql.clear;
      Query1.sql.add('select cli_codigo, cli_nombre, cli_balance, cli_referencia,');
      Query1.sql.add('cli_limite, cli_precio, cli_descuento, ven_codigo, cpa_codigo,');
      Query1.sql.add('cli_direccion, cli_localidad, cli_telefono, cli_fax, cli_facturarbce,');
      Query1.sql.add('cli_facturarvencida, cli_precio, cli_cuenta, pro_codigo,');
      Query1.sql.add('cli_factura_debajo_costo, cli_factura_debajo_minimo, tcl_codigo,');
      Query1.sql.add('cli_cedula, cli_rnc, tfa_codigo');
      Query1.sql.add('from clientes');
      Query1.sql.add('where emp_codigo = :emp');
      Query1.sql.add('and cli_Status = '+#39+'ACT'+#39);
      if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
      begin
        Query1.sql.add('and cli_codigo = :cli');
        Query1.Parameters.parambyname('cli').Value := strtoint(trim(edCliente.Text));
      end
      else
      begin
        Query1.sql.add('and cli_referencia = :cli');
        Query1.Parameters.parambyname('cli').Value := trim(edCliente.Text);
      end;
      Query1.Parameters.parambyname('emp').Value := dm.QEmpresasEMP_CODIGO.value;
      Query1.open;

      QOrdenord_nombre.Value := Query1.FieldByName('cli_nombre').AsString;
      QOrdenord_direccion.Value := Query1.FieldByName('cli_direccion').AsString;
      QOrdenord_localidad.Value := Query1.FieldByName('cli_localidad').AsString;
      QOrdenord_telefono.Value := Query1.FieldByName('cli_telefono').AsString;
    end;
  end;
end;

procedure TfrmOrdenServicio.btTallerClick(Sender: TObject);
var vQry : tadoQuery;
  vdsInsert : boolean;
  vtec_codigo,vtec_nombre :string;
begin
  if QDetalle.RecordCount > 0 then
  begin
    Application.CreateForm(tfrmAccesoTec2, frmAccesoTec2);
    vQry := TADOQuery.Create(self);
    vQry.Connection := QSucursal.Connection;
    if frmAccesoTec2.ShowModal = mrOk then
    begin
      vQry.SQL.clear;
      vQry.SQL.add('select tec_nombre, tec_codigo');
      vQry.SQL.add('from tecnicos');
      vQry.SQL.add('where tec_codigo_sevicio = '+QuotedStr(frmAccesoTec2.edtPass.Text));
      vQry.Open;
      if vQry.IsEmpty then
         Begin
            vtec_codigo := EmptyStr;
            ShowMessage('TECNICO NO ENCONTRADO');
         end
      else
         vtec_codigo := vQry.fieldbyname('tec_codigo').value;
      vQry.close;
      if vtec_codigo <> EmptyStr then
         begin
      vQry.SQL.clear;
      vQry.SQL.add('select * ');
      vQry.SQL.add('from Det_Orden_Servicio_taller');
      vQry.SQL.add('where suc_codigo = '+QOrdensuc_codigo.AsString);
      vQry.SQL.add('  and ord_numero = '+QOrdenord_numero.AsString);
      vQry.SQL.add('  and tec_codigo = '+vtec_codigo);
      vQry.SQL.add('  and det_secuencia = '+QDetalledet_secuencia.AsString);
      vQry.Open;
      vdsInsert := vQry.IsEmpty;
      vQry.Close;
         end;
    end;
    frmAccesoTec2.Release;
    if vtec_codigo <> EmptyStr then
       begin
        Application.CreateForm(tfrmDetalleTecnico, frmDetalleTecnico);
        with frmDetalleTecnico.Query1 do
          begin
            close;
            Parameters.ParamByName('suc_codigo').Value := QOrdensuc_codigo.Value;
            Parameters.ParamByName('ord_numero').Value := QOrdenord_numero.Value;
            Open;
          end;
        with frmDetalleTecnico.QCrioTaller do
          begin
            close;
            Parameters.ParamByName('suc_codigo').Value := QOrdensuc_codigo.Value;
            Parameters.ParamByName('ord_numero').Value := QOrdenord_numero.Value;
            Parameters.ParamByName('tec_codigo').Value := vtec_codigo;
            Parameters.ParamByName('det_secuencia').Value := QDetalledet_secuencia.Value;
            Open;
            if IsEmpty then begin
               Insert;
               FieldByName('tec_codigo').Value := vtec_codigo;
               FieldByName('suc_codigo').Value := QOrdensuc_codigo.Value;
               FieldByName('ord_numero').Value := QOrdenord_numero.Value;
               FieldByName('det_secuencia').Value := QDetalledet_secuencia.Value;
               end
            else
               Edit;
//            frmDetalleTecnico.tTecnico.Text := vtec_nombre;
          end;
        frmDetalleTecnico.ShowModal;
        frmDetalleTecnico.Release;
       end;
    vQry.Free;
  end; //}
end;

procedure TfrmOrdenServicio.DBEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = vk_return) and (QOrden.State in [dsEdit, dsInsert]) then
  begin
    if trim(DBEdit5.Text) <> '' then
    begin
      Query1.close;
      Query1.sql.clear;
      Query1.sql.add('select cli_codigo, cli_nombre, cli_balance, cli_referencia,');
      Query1.sql.add('cli_limite, cli_precio, cli_descuento, ven_codigo, cpa_codigo,');
      Query1.sql.add('cli_direccion, cli_localidad, cli_telefono, cli_fax, cli_facturarbce,');
      Query1.sql.add('cli_facturarvencida, cli_precio, cli_cuenta, pro_codigo,');
      Query1.sql.add('cli_factura_debajo_costo, cli_factura_debajo_minimo, tcl_codigo,');
      Query1.sql.add('cli_cedula, cli_rnc, tfa_codigo');
      Query1.sql.add('from clientes');
      Query1.sql.add('where emp_codigo = :emp');
      Query1.sql.add('and cli_Status = '+#39+'ACT'+#39);
      if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
      begin
        Query1.sql.add('and cli_codigo = :cli');
        Query1.Parameters.parambyname('cli').Value := strtoint(trim(DBEdit5.Text));
      end
      else
      begin
        Query1.sql.add('and cli_referencia = :cli');
        Query1.Parameters.parambyname('cli').Value := trim(DBEdit5.Text);
      end;
      Query1.Parameters.parambyname('emp').Value := dm.QEmpresasEMP_CODIGO.value;
      Query1.open;

      QOrdenord_nombre.Value := Query1.FieldByName('cli_nombre').AsString;
      QOrdenord_direccion.Value := Query1.FieldByName('cli_direccion').AsString;
      QOrdenord_localidad.Value := Query1.FieldByName('cli_localidad').AsString;
      QOrdenord_telefono.Value := Query1.FieldByName('cli_telefono').AsString;
    end;
  end;

end;

procedure TfrmOrdenServicio.QDetalleNewRecord(DataSet: TDataSet);
begin
  QDetalledet_fecha_entrada.Value  := Date;
  QDetalledet_tiene_garantia.Value := 'N';
  QDetalledet_status.Value         := 'PEN';
end;

end.
