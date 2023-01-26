unit PVENTA127;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Buttons, ExtCtrls, Grids,
  DBGrids, DB, IBCustomDataSet, IBQuery, IBUpdateSQL, ADODB,
  QuerySearchDlgADO, DBCtrls;

type
  TfrmConsDevCompra = class(TForm)
    Panel1: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    SpeedButton3: TSpeedButton;
    Label2: TLabel;
    btProveedor: TSpeedButton;
    Fecha1: TDateTimePicker;
    Fecha2: TDateTimePicker;
    tUsuario: TEdit;
    edUsuario: TEdit;
    edProveedor: TEdit;
    tProveedor: TEdit;
    Panel2: TPanel;
    lbCantidad: TLabel;
    BitBtn2: TBitBtn;
    btRefresh: TBitBtn;
    btClose: TBitBtn;
    DBGrid1: TDBGrid;
    Search: TQrySearchDlgADO;
    QDevol: TADOQuery;
    dsDevol: TDataSource;
    cbStatus: TRadioGroup;
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
    QProductos: TADOQuery;
    dsProductos: TDataSource;
    QDetalle: TADOQuery;
    QDetalleCAT_CUENTA: TIBStringField;
    QDetalleCAT_NOMBRE: TIBStringField;
    QDetalleDET_MONTO: TFloatField;
    QDetalleDET_ORIGEN: TIBStringField;
    QDetalleDET_SECUENCIA: TIntegerField;
    QDetalleEMP_CODIGO: TIntegerField;
    dsDetalle: TDataSource;
    ckDetalle: TCheckBox;
    Memo1: TMemo;
    QDevolDEV_EXCENTO: TFloatField;
    QDevolDEV_FECHA: TDateTimeField;
    QDevolDEV_GRABADO: TFloatField;
    QDevolDEV_ITBIS: TFloatField;
    QDevolDEV_NOMBRE: TIBStringField;
    QDevolDEV_NUMERO: TIntegerField;
    QDevolDEV_STATUS: TIBStringField;
    QDevolDEV_TOTAL: TFloatField;
    QDevolEMP_CODIGO: TIntegerField;
    QDevolFAC_NUMERO: TIBStringField;
    QDevolSUP_CODIGO: TIntegerField;
    QDevolUSU_CODIGO: TIntegerField;
    QProductosDEP_CODIGO: TIntegerField;
    QProductosDET_COSTOEMP: TFloatField;
    QProductosDET_COSTOITBIS: TFloatField;
    QProductosDET_COSTOUND: TFloatField;
    QProductosDET_FECHAVENCE: TDateTimeField;
    QProductosDET_MEDIDA: TIBStringField;
    QProductosDET_SECUENCIA: TIntegerField;
    QProductosDEV_CANTFACTURADA: TFloatField;
    QProductosDEV_CANTIDAD: TFloatField;
    QProductosDEV_CONITBIS: TIBStringField;
    QProductosDEV_COSTO: TFloatField;
    QProductosDEV_ITBIS: TFloatField;
    QProductosDEV_NUMERO: TIntegerField;
    QProductosDEV_TOPECANTIDAD: TFloatField;
    QProductosEMP_CODIGO: TIntegerField;
    QProductosFAM_CODIGO: TIntegerField;
    QProductosMAR_CODIGO: TIntegerField;
    QProductosPRO_CODIGO: TIntegerField;
    QProductosPRO_NOMBRE: TIBStringField;
    QProductosPRO_RFABRIC: TIBStringField;
    QProductosPRO_RORIGINAL: TIBStringField;
    QProductosPRO_SERVICIO: TIBStringField;
    Grid: TDBGrid;
    QProductosValor: TFloatField;
    QProductosPrecioItbis: TFloatField;
    QProductosCalcItbis: TFloatField;
    QProductosCalcDesc: TFloatField;
    QDetalleDEV_NUMERO: TIntegerField;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    dsSuc: TDataSource;
    Label8: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    QDevolSUC_CODIGO: TIntegerField;
    QDetalleSUC_CODIGO: TIntegerField;
    QSucursalalm_codigo: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    Splitter1: TSplitter;
    QDevoldev_ncf: TStringField;
    QDevoldev_ncf_modifica: TStringField;
    procedure FormActivate(Sender: TObject);
    procedure btCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btProveedorClick(Sender: TObject);
    procedure edProveedorChange(Sender: TObject);
    procedure edProveedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton3Click(Sender: TObject);
    procedure edUsuarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edUsuarioChange(Sender: TObject);
    procedure btRefreshClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure GridCuentasColEnter(Sender: TObject);
    procedure GridCuentasEnter(Sender: TObject);
    procedure GridCuentasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btEliminaClick(Sender: TObject);
    procedure btBuscaCtaClick(Sender: TObject);
    procedure QDetalleCAT_CUENTAChange(Sender: TField);
    procedure QDetalleAfterDelete(DataSet: TDataSet);
    procedure QDetalleAfterPost(DataSet: TDataSet);
    procedure QDetalleBeforePost(DataSet: TDataSet);
    procedure QDetalleNewRecord(DataSet: TDataSet);
    procedure QDevolAfterOpen(DataSet: TDataSet);
    procedure QDevolAfterScroll(DataSet: TDataSet);
    procedure QProductosCalcFields(DataSet: TDataSet);
    procedure QDetalleAfterEdit(DataSet: TDataSet);
    procedure QDetalleAfterInsert(DataSet: TDataSet);
    procedure QDetalleBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    Debitos, Creditos : Double;
    Modifica, Elimina : Boolean;
    Procedure Totalizar;
  end;

var
  frmConsDevCompra: TfrmConsDevCompra;

implementation

uses RVENTA13, SIGMA00, SIGMA01;

{$R *.dfm}

procedure TfrmConsDevCompra.FormActivate(Sender: TObject);
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

procedure TfrmConsDevCompra.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmConsDevCompra.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrmConsDevCompra.FormCreate(Sender: TObject);
begin
  if dm.QParametrosPAR_FACMEDIDA.Value <> 'True' then
  begin
    Grid.Columns[2].Destroy;
    Grid.Columns[0].Width := Grid.Columns[0].Width + 30;
  end;

  if dm.QParametrosPAR_INVMOSTRARVENCE.Value <> 'True' then
  begin
    Grid.Columns[Grid.Columns.Count-2].Destroy;
    Grid.Columns[0].Width := Grid.Columns[0].Width + 55;
  end;

  Memo1.Lines := QDevol.SQL;
  Fecha1.Date := Date;
  Fecha2.Date := Date;
end;

procedure TfrmConsDevCompra.btProveedorClick(Sender: TObject);
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

procedure TfrmConsDevCompra.edProveedorChange(Sender: TObject);
begin
  if trim(edProveedor.text) = '' then tProveedor.text := '';
end;

procedure TfrmConsDevCompra.edProveedorKeyDown(Sender: TObject;
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

procedure TfrmConsDevCompra.SpeedButton3Click(Sender: TObject);
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

procedure TfrmConsDevCompra.edUsuarioKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
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

procedure TfrmConsDevCompra.edUsuarioChange(Sender: TObject);
begin
  if trim(edUsuario.text) = '' then tUsuario.text := '';
end;

procedure TfrmConsDevCompra.btRefreshClick(Sender: TObject);
begin
  QDevol.Close;
  QDevol.SQL.Clear;
  QDevol.SQL := Memo1.Lines;
  if Trim(edProveedor.text) <> '' then
     QDevol.SQL.Add('and sup_codigo = '+Trim(edProveedor.text));
  if Trim(edUsuario.text) <> '' then
     QDevol.SQL.Add('and usu_codigo = '+Trim(edUsuario.text));
  case cbStatus.ItemIndex of
  1 : QDevol.SQL.Add('and fac_status = '+#39+'ANU'+#39);
  end;
  QDevol.Parameters.ParamByName('Fecha1').DataType := ftDate;
  QDevol.Parameters.ParamByName('Fecha2').DataType := ftDate;
  QDevol.Parameters.ParamByName('Fecha1').Value := Fecha1.Date;
  QDevol.Parameters.ParamByName('Fecha2').Value := Fecha2.Date;
  QDevol.Open;
  lbCantidad.Caption := inttostr(QDevol.RecordCount)+' Devoluciones';
  DBGrid1.SetFocus;

end;

procedure TfrmConsDevCompra.BitBtn2Click(Sender: TObject);
begin
{  Application.CreateForm(tRConsFacProvee, RConsFacProvee);
  RConsFacProvee.QFacturas.SQL := QFacturas.SQL;
  RConsFacProvee.QFacturas.ParamByName('Fecha1').AsDate := Fecha1.Date;
  RConsFacProvee.QFacturas.ParamByName('Fecha2').AsDate := Fecha2.Date;
  RConsFacProvee.QFacturas.Open;
  if ckDetalle.Checked then
    RConsFacProvee.QDetalle.Open;

  RConsFacProvee.QFacturas.FetchAll;
  RConsFacProvee.lbCliente.Caption := tProveedor.Text;
  RConsFacProvee.lbUsuario.Caption := tUsuario.Text;
  RConsFacProvee.lbStatus.Caption  := cbStatus.Items[cbStatus.ItemIndex];
  RConsFacProvee.lbFecha.Caption   := 'Del '+DateToStr(Fecha1.Date)+' Al '+DateToStr(Fecha2.Date);
  RConsFacProvee.PrinterSetup;
  RConsFacProvee.Preview;
  RConsFacProvee.Destroy;}
end;

procedure TfrmConsDevCompra.FormPaint(Sender: TObject);
begin
  with frmConsDevCompra do
  begin
    Top  := 2;
    Left := 2;
    width := frmMain.Width - 230;
    height := frmMain.Height - 120;
  end;
end;

procedure TfrmConsDevCompra.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
     if activecontrol.classtype <> tdbgrid then
     begin
       perform(wm_nextdlgctl, 0, 0);
       key := #0;
     end;
end;

procedure TfrmConsDevCompra.GridCuentasColEnter(Sender: TObject);
begin
  if GridCuentas.SelectedIndex = 1 then
    GridCuentas.SelectedIndex := GridCuentas.SelectedIndex + 1;
end;

procedure TfrmConsDevCompra.GridCuentasEnter(Sender: TObject);
begin
  GridCuentas.SelectedIndex := 0;
end;

procedure TfrmConsDevCompra.GridCuentasKeyDown(Sender: TObject;
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

procedure TfrmConsDevCompra.btEliminaClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR LA CUENTA?',mtconfirmation,[mbyes,mbno],0) = mryes then
  begin
    QDetalle.Delete
  end;
  GridCuentas.setfocus;
end;

procedure TfrmConsDevCompra.btBuscaCtaClick(Sender: TObject);
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

procedure TfrmConsDevCompra.QDetalleCAT_CUENTAChange(Sender: TField);
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

procedure TfrmConsDevCompra.QDetalleAfterDelete(DataSet: TDataSet);
begin
  QDetalle.UpdateBatch;
  Totalizar;
end;

procedure TfrmConsDevCompra.QDetalleAfterPost(DataSet: TDataSet);
begin
  QDetalle.UpdateBatch;
  Totalizar;
end;

procedure TfrmConsDevCompra.QDetalleBeforePost(DataSet: TDataSet);
begin
  if QDetalle.State = dsInsert then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select isnull(max(det_secuencia),0) as maximo');
    dm.Query1.SQL.Add('from CONTDET_PROVFACTURAS');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and sup_codigo = :sup');
    dm.Query1.SQL.Add('and fac_numero = :num');
    dm.Query1.SQL.Add('and suc_codigo = :suc');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('sup').Value := QDevolSUP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('num').Value  := QDevolFAC_NUMERO.Value;
    dm.Query1.Parameters.ParamByName('suc').Value  := QDevolSUC_CODIGO.Value;
    dm.Query1.Open;
    QDetalleDET_SECUENCIA.Value := dm.Query1.FieldByName('maximo').AsInteger + 1;
  end;
end;

procedure TfrmConsDevCompra.QDetalleNewRecord(DataSet: TDataSet);
begin
  QDetalleEMP_CODIGO.Value := dm.vp_cia;
  QDetalleDEV_NUMERO.Value := QDevolDEV_NUMERO.Value;
  QDetalleSUC_CODIGO.Value := QDevolSUC_CODIGO.Value;
end;

procedure TfrmConsDevCompra.Totalizar;
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

procedure TfrmConsDevCompra.QDevolAfterOpen(DataSet: TDataSet);
begin
  if not QProductos.Active then QProductos.Open;
  if not QDetalle.Active   then QDetalle.Open;
end;

procedure TfrmConsDevCompra.QDevolAfterScroll(DataSet: TDataSet);
begin
  Totalizar;
end;

procedure TfrmConsDevCompra.QProductosCalcFields(DataSet: TDataSet);
var
  Venta, NumItbis : Double;
begin
  if QProductosDEV_CONITBIS.value = 'S' then
  begin
    NumItbis := strtofloat(format('%10.2f',[(QDevolDEV_ITBIS.asfloat/100)+1]));
    Venta    := QProductosDEv_COSTO.value;
    QProductosPrecioItbis.value := Venta;
    QProductosCalcItbis.value   := ((Venta-QProductosCalcDesc.value)*QDevolDEV_ITBIS.Value)/100;
    QProductosValor.value       := ((Venta-QProductosCalcDesc.value))*
                                 QProductosDEv_CANTIDAD.value+(QProductosCalcItbis.value*QProductosDEV_CANTIDAD.value);
  end
  else
  begin
    Venta := QProductosDEv_COSTO.value;
    QProductosPrecioItbis.value := Venta;
    QProductosValor.value       := (Venta-QProductosCalcDesc.value)*QProductosDEv_CANTIDAD.value;
    QProductosCalcItbis.value   := 0;
  end;
end;

procedure TfrmConsDevCompra.QDetalleAfterEdit(DataSet: TDataSet);
begin
  if not Modifica then QDetalle.Cancel;
end;

procedure TfrmConsDevCompra.QDetalleAfterInsert(DataSet: TDataSet);
begin
  if not Modifica then QDetalle.Cancel;
end;

procedure TfrmConsDevCompra.QDetalleBeforeDelete(DataSet: TDataSet);
begin
  if not Elimina then Abort;
end;

end.
