unit PVENTA53;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Grids, DBGrids, DB,
  IBCustomDataSet, IBQuery, ComCtrls, ADODB,
  QuerySearchDlgADO, DBCtrls, Menus;

type
  TfrmConsEntrada = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    btRefresh: TBitBtn;
    lbCantidad: TLabel;
    DBGrid1: TDBGrid;
    QEntradas: TADOQuery;
    Label5: TLabel;
    cbOrden: TComboBox;
    dsEntradas: TDataSource;
    Splitter1: TSplitter;
    dsDetalle: TDataSource;
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
    QEntradasEMP_CODIGO: TIntegerField;
    QEntradasENT_CONCEPTO: TIBStringField;
    QEntradasENT_FECHA: TDateTimeField;
    QEntradasENT_NUMERO: TIntegerField;
    QEntradasENT_STATUS: TIBStringField;
    QEntradasENT_TOTAL: TFloatField;
    QEntradasUSU_NOMBRE: TIBStringField;
    Label4: TLabel;
    btAlmacen: TSpeedButton;
    edAlmacen: TEdit;
    tAlmacen: TEdit;
    QEntradasALM_NOMBRE: TIBStringField;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    QSucursalemp_codigo: TIntegerField;
    dsSuc: TDataSource;
    QEntradassuc_codigo: TIntegerField;
    Label8: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    QSucursalalm_codigo: TIntegerField;
    Label2: TLabel;
    edProveedor: TEdit;
    btProveedor: TSpeedButton;
    tProveedor: TEdit;
    QEntradassup_nombre: TStringField;
    QEntradasENT_ITBIS: TBCDField;
    QDetalle: TADOQuery;
    QDetalleDET_CANTIDAD: TFloatField;
    QDetalleDET_CONITBIS: TIBStringField;
    QDetalleDET_COSTO: TFloatField;
    QDetalleDET_ITBIS: TFloatField;
    QDetalleDET_PRECIO: TFloatField;
    QDetalleDET_SECUENCIA: TIntegerField;
    QDetalleEMP_CODIGO: TIntegerField;
    QDetalleENT_NUMERO: TIntegerField;
    QDetallePRO_BARRA: TIBStringField;
    QDetallePRO_CODIGO: TIntegerField;
    QDetallePRO_NOMBRE: TIBStringField;
    QDetallePRO_RFABRIC: TIBStringField;
    QDetallePRO_RORIGINAL: TIBStringField;
    QDetalleValor: TFloatField;
    QDetalleDET_FECHAVENCE: TDateTimeField;
    QDetalleDET_LOTE: TIntegerField;
    QDetalleDET_VENCE: TIBStringField;
    QDetalleDET_ESCALA: TIBStringField;
    QDetalleDET_MANEJAESCALA: TIBStringField;
    QDetalleDET_MEDIDA: TIBStringField;
    QDetalleCalcItbis: TFloatField;
    QDetallePrecioItbis: TFloatField;
    QDetalleCalcDesc: TFloatField;
    QDetalleDET_COSTOEMP: TFloatField;
    QDetalleDET_COSTOUND: TFloatField;
    QDetalleSUC_CODIGO: TIntegerField;
    cbtipo: TRadioGroup;
    QEntradasped_numero: TIntegerField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Grid: TDBGrid;
    DBGrid2: TDBGrid;
    QFacturasCxP: TADOQuery;
    QFacturasCxPsup_nombre: TStringField;
    QFacturasCxPfac_numero: TStringField;
    QFacturasCxPncf: TStringField;
    QFacturasCxPncf_fijo: TStringField;
    QFacturasCxPncf_secuencia: TBCDField;
    QFacturasCxPfac_fecha: TDateTimeField;
    QFacturasCxPfac_total: TBCDField;
    QFacturasCxPfac_itbis: TBCDField;
    QFacturasCxPfac_grabado: TBCDField;
    QFacturasCxPfac_exento: TBCDField;
    QFacturasCxPfac_descuento: TBCDField;
    QFacturasCxPfac_status: TStringField;
    QFacturasCxPalm_nombre: TStringField;
    QFacturasCxPusu_nombre: TStringField;
    QFacturasCxPfac_retencion: TBCDField;
    QFacturasCxPfac_concepto: TStringField;
    QFacturasCxPNumeroNCF: TStringField;
    dsFactura: TDataSource;
    QFacturasCxPemp_nombre: TStringField;
    BitBtn1: TBitBtn;
    QDetallefam_nombre: TStringField;
    QDetalledep_nombre: TStringField;
    QDetalleger_nombre: TStringField;
    QDetallepro_precio1: TBCDField;
    QDetallepro_precio2: TBCDField;
    QDetallepro_precio3: TBCDField;
    QDetallepro_beneficio: TBCDField;
    QDetallepro_beneficio2: TBCDField;
    QDetallepro_beneficio3: TBCDField;
    PopupMenu1: TPopupMenu;
    Pantalladeproductos1: TMenuItem;
    Pantalladeajuste1: TMenuItem;
    QDetalleCostoItbis: TFloatField;
    QDetalleCalcCosto: TFloatField;
    QDetalleCalcCostoEmp: TFloatField;
    QDetalleCostoNeto: TFloatField;
    QDetalleger_codigo: TIntegerField;
    QDetallePrecioItbisEmp: TFloatField;
    QDetalleCalcItbisEmp: TFloatField;
    QDetalleValorEmp: TFloatField;
    QDetalleCalcDescEmp: TFloatField;
    lbLocSuc: TLabel;
    edtSucLoc: TEdit;
    btLocalidad: TSpeedButton;
    TSucLoc: TEdit;
    qActulizaProd: TADOQuery;
    QDetallesup_nombre: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure btRefreshClick(Sender: TObject);
    procedure edUsuarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton3Click(Sender: TObject);
    procedure QEntradasAfterOpen(DataSet: TDataSet);
    procedure edUsuarioChange(Sender: TObject);
    procedure cbStatusClick(Sender: TObject);
    procedure cbGrupoClick(Sender: TObject);
    procedure ckItbisClick(Sender: TObject);
    procedure ckDescClick(Sender: TObject);
    procedure cbOrdenClick(Sender: TObject);
    procedure btAlmacenClick(Sender: TObject);
    procedure edAlmacenKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edAlmacenChange(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btProveedorClick(Sender: TObject);
    procedure edProveedorChange(Sender: TObject);
    procedure edProveedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure QDetalleCalcFields(DataSet: TDataSet);
    procedure QFacturasCxPCalcFields(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure Pantalladeproductos1Click(Sender: TObject);
    procedure Pantalladeajuste1Click(Sender: TObject);
    procedure Codigo1Click(Sender: TObject);
    procedure edtSucLocChange(Sender: TObject);
    procedure edtSucLocKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btLocalidadClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsEntrada: TfrmConsEntrada;

implementation

uses RVENTA17, SIGMA01, SIGMA00, RVENTA37, PVENTA15, PVENTA138;

{$R *.dfm}

procedure TfrmConsEntrada.FormCreate(Sender: TObject);
begin
  if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'I' then
     Grid.Columns[0].FieldName := 'PRO_CODIGO'
  else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'F' then
     Grid.Columns[0].FieldName := 'PRO_RFABRIC'
  else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'O' then
     Grid.Columns[0].FieldName := 'PRO_RORIGINAL';

  if dm.QParametrosPAR_FACESCALA.Value <> 'True' then
  begin
     Grid.Columns[4].Destroy;
     Grid.Columns[1].Width := Grid.Columns[1].Width + 20;
  end;

  if dm.QParametrosPAR_FACMEDIDA.Value <> 'True' then
  begin
    Grid.Columns[3].Destroy;
     Grid.Columns[1].Width := Grid.Columns[1].Width + 20;
  end;

  if dm.QParametrosPAR_INVMOSTRARVENCE.Value <> 'True' then
  begin
    Grid.Columns[Grid.Columns.Count-9].Destroy;
    Grid.Columns[1].Width := Grid.Columns[1].Width + 40;
  end;

  Fecha1.date := date;
  Fecha2.date := date;
  Memo1.lines := QEntradas.sql;
  cbOrden.itemindex := 0;
end;

procedure TfrmConsEntrada.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmConsEntrada.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then close;
end;

procedure TfrmConsEntrada.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrmConsEntrada.FormActivate(Sender: TObject);
begin
  //Pantalladeproductos1.Enabled := frmMain.Productos1.Visible;
  //Pantalladeajuste1.Enabled    := frmMain.Ajustarinventario1.Visible;
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

procedure TfrmConsEntrada.btRefreshClick(Sender: TObject);
begin
  QEntradas.close;
  QEntradas.sql.clear;
  QEntradas.sql := Memo1.Lines;
  if trim(edUsuario.text) <> '' then
    QEntradas.sql.add('and e.usu_codigo = '+trim(edUsuario.text));
  if trim(edAlmacen.text) <> '' then
    QEntradas.sql.add('and e.alm_codigo = '+trim(edAlmacen.text));
  if Trim(edProveedor.text) <> '' then
     QEntradas.SQL.Add('and e.sup_codigo = '+Trim(edProveedor.text));

  IF Trim(edtSucLoc.Text)<>'' THEN
  QEntradas.SQL.Add('and e.cont_numeroSucursal = '+QuotedStr(edtSucLoc.Text));

  if cbtipo.ItemIndex = 1 then
     QEntradas.SQL.Add('and e.ent_status = '+QuotedStr('EMI'))
  else if cbtipo.ItemIndex = 2 then
     QEntradas.SQL.Add('and e.ent_status = '+QuotedStr('FAC'));
     
  if cbOrden.ItemIndex = 0 then
     QEntradas.sql.add('order by e.ent_numero')
  else if cbOrden.ItemIndex = 1 then
     QEntradas.sql.add('order by e.ent_fecha');


  QEntradas.Parameters.parambyname('fecha1').DataType := ftDate;
  QEntradas.Parameters.parambyname('fecha2').DataType := ftDate;
  QEntradas.Parameters.parambyname('fecha1').Value := fecha1.date;
  QEntradas.Parameters.parambyname('fecha2').Value := fecha2.date;
  QEntradas.open;
  lbCantidad.caption := inttostr(QEntradas.recordcount)+' Entradas';

//  DBGrid1.setfocus;
end;

procedure TfrmConsEntrada.edUsuarioKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmConsEntrada.SpeedButton3Click(Sender: TObject);
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

procedure TfrmConsEntrada.QEntradasAfterOpen(DataSet: TDataSet);
begin
  if not QDetalle.active then QDetalle.open;
  if not QFacturasCxP.Active then QFacturasCxP.Open;
end;

procedure TfrmConsEntrada.edUsuarioChange(Sender: TObject);
begin
  if trim(edUsuario.text) = '' then tUsuario.text := '';
end;

procedure TfrmConsEntrada.cbStatusClick(Sender: TObject);
begin
  btRefreshClick(self);
end;

procedure TfrmConsEntrada.cbGrupoClick(Sender: TObject);
begin
  btRefreshClick(self);
end;

procedure TfrmConsEntrada.ckItbisClick(Sender: TObject);
begin
  btRefreshClick(self);
end;

procedure TfrmConsEntrada.ckDescClick(Sender: TObject);
begin
  btRefreshClick(self);
end;

procedure TfrmConsEntrada.cbOrdenClick(Sender: TObject);
begin
  btRefreshClick(self);
end;

procedure TfrmConsEntrada.btAlmacenClick(Sender: TObject);
begin
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('Código');
  Search.Query.clear;
  Search.Query.add('select alm_nombre, alm_codigo');
  Search.ResultField := 'alm_codigo';
  Search.Query.add('from almacen');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.Title := 'Listado de Almacenes';
  if Search.execute then
  begin
    edAlmacen.text := search.valuefield;
    edAlmacen.setfocus;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select alm_codigo, alm_nombre');
    dm.Query1.sql.add('from almacen');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and alm_codigo = :alm');
    dm.Query1.Parameters.parambyname('alm').Value := strtoint(search.valuefield);
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.open;
    tAlmacen.text := dm.Query1.fieldbyname('alm_nombre').asstring;
    edAlmacen.setfocus;
    btRefreshClick(self);
  end;
end;

procedure TfrmConsEntrada.edAlmacenKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edAlmacen.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select alm_nombre, alm_codigo');
      dm.Query1.sql.add('from almacen');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and alm_codigo = :alm');
      dm.Query1.Parameters.parambyname('alm').Value := strtoint(edAlmacen.text);
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        messagedlg('ALMACEN NO EXISTE',mterror,[mbok],0);
        edAlmacen.setFocus;
      end
      else
        tAlmacen.text := dm.Query1.fieldbyname('alm_nombre').asstring;
      btRefreshClick(Self);
    end;
  end;
end;

procedure TfrmConsEntrada.edAlmacenChange(Sender: TObject);
begin
  if trim(edAlmacen.text) = '' then tAlmacen.text := '';
end;

procedure TfrmConsEntrada.BitBtn2Click(Sender: TObject);
begin
  Application.CreateForm(tRConsEntrada, RConsEntrada);
  RConsEntrada.QEntradas.SQL := QEntradas.SQL;
  RConsEntrada.QEntradas.Parameters.parambyname('fecha1').DataType := ftDate;
  RConsEntrada.QEntradas.Parameters.parambyname('fecha2').DataType := ftDate;
  RConsEntrada.QEntradas.Parameters.parambyname('fecha1').Value := fecha1.date;
  RConsEntrada.QEntradas.Parameters.parambyname('fecha2').Value := fecha2.date;
  RConsEntrada.QEntradas.Parameters.parambyname('emp_codigo').Value := dm.vp_cia;
  RConsEntrada.QEntradas.Parameters.parambyname('suc_codigo').Value := DBLookupComboBox2.KeyValue;
  RConsEntrada.QEntradas.open;
  RConsEntrada.lbAlmacen.Caption := tAlmacen.Text;
  RConsEntrada.lbUsuario.Caption := tUsuario.Text;
  RConsEntrada.lbProv.Caption    := tProveedor.Text;
  RConsEntrada.lbFecha.Caption := 'Del '+DateToStr(Fecha1.Date)+' Al '+DateToStr(Fecha2.Date);
  RConsEntrada.PrinterSetup;
  RConsEntrada.Preview;
  RConsEntrada.Destroy;
end;

procedure TfrmConsEntrada.FormPaint(Sender: TObject);
begin
  with frmConsEntrada do
  begin
    Top  := 2;
    Left := 2;
    width := frmMain.Width - 230;
    height := frmMain.Height - 120;
  end;
end;

procedure TfrmConsEntrada.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
     if activecontrol.classtype <> tdbgrid then
     begin
       perform(wm_nextdlgctl, 0, 0);
       key := #0;
     end;
end;

procedure TfrmConsEntrada.btProveedorClick(Sender: TObject);
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

procedure TfrmConsEntrada.edProveedorChange(Sender: TObject);
begin
  if trim(edProveedor.text) = '' then tProveedor.text := '';
end;

procedure TfrmConsEntrada.edProveedorKeyDown(Sender: TObject;
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

procedure TfrmConsEntrada.QDetalleCalcFields(DataSet: TDataSet);
var
  Venta, NumItbis : Double;
  VentaEmp, NumItbisEmp : Double;
begin
  //Unidad
  if QDetalleDET_CONITBIS.value = 'S' then
  begin
    NumItbis := strtofloat(format('%10.2f',[(QDetalleDET_ITBIS.asfloat/100)+1]));
    Venta    := QDetalleDET_COSTOUND.value;
    QDetallePrecioItbis.value := Venta;
    QDetalleCalcItbis.value   := ((Venta-QDetalleCalcDesc.value)*QDetalleDET_ITBIS.Value)/100;
    QDetalleValor.value       := (Venta-QDetalleCalcDesc.value)*QDetalleDET_CANTIDAD.value;
  end
  else
  begin
    Venta := QDetalleDET_COSTOUND.value;
    QDetallePrecioItbis.value := Venta;
    QDetalleValor.value       := (Venta-QDetalleCalcDesc.value)*QDetalleDET_CANTIDAD.value;
    QDetalleCalcItbis.value   := 0;
  end;

  //Empaque
  if QDetalleDET_CONITBIS.value = 'S' then
  begin
    NumItbisEmp := strtofloat(format('%10.2f',[(QDetalleDET_ITBIS.asfloat/100)+1]));
    VentaEmp    := QDetalleDET_COSTOEMP.value;
    QDetallePrecioItbisEmp.value := VentaEmp;
    QDetalleCalcItbisEmp.value   := ((VentaEmp-QDetalleCalcDescEmp.value)*QDetalleDET_ITBIS.Value)/100;
    QDetalleValorEmp.value       := (VentaEmp-QDetalleCalcDescEmp.value)*QDetalleDET_CANTIDAD.value;
  end
  else
  begin
    VentaEmp := QDetalleDET_COSTOEMP.value;
    QDetallePrecioItbisEmp.value := VentaEmp;
    QDetalleValorEmp.value       := (VentaEmp-QDetalleCalcDescEmp.value)*QDetalleDET_CANTIDAD.value;
    QDetalleCalcItbisEmp.value   := 0;
  end;

  if trim(QDetalleDET_VENCE.Value) = 'False' then
     QDetalleDET_FECHAVENCE.ReadOnly := True
  else
     QDetalleDET_FECHAVENCE.ReadOnly := False;
  if trim(QDetalleDET_MANEJAESCALA.Value) = 'False' then
     QDetalleDET_ESCALA.ReadOnly := True
  else
     QDetalleDET_ESCALA.ReadOnly := False;

  if QDetalleDET_CONITBIS.Value = 'S' then
  begin
    QDetalleCalcCosto.Value    := (QDetalleDET_COSTOUND.Value * QDetalleDET_ITBIS.Value)/100;
    QDetalleCalcCostoemp.Value := (QDetalleDET_COSTOEMP.Value * QDetalleDET_ITBIS.Value)/100;
  end
  else
  begin
    QDetalleCalcCosto.Value    := 0;
    QDetalleCalcCostoemp.Value := 0;
  end;

  if QDetalledet_medida.AsString = 'Und' then
    QDetalleCostoNeto.Value := QDetalleDET_COSTOUND.Value + QDetalleCalcCosto.Value
  else
    QDetalleCostoNeto.Value := QDetalleDET_COSTOEMP.Value + QDetalleCalcCostoEmp.Value;
     
end;

procedure TfrmConsEntrada.QFacturasCxPCalcFields(DataSet: TDataSet);
begin
  if QFacturasCxPNCF_Fijo.IsNull then
    QFacturasCxPNumeroNCF.Value := QFacturasCxPNCF.Value
  else if not QFacturasCxPNCF_Fijo.IsNull then
    QFacturasCxPNumeroNCF.Value := QFacturasCxPNCF_Fijo.Value + formatfloat('00000000',QfacturasCxPncf_secuencia.value)
  else
    QFacturasCxPNumeroNCF.Value := ' ';
end;

procedure TfrmConsEntrada.BitBtn1Click(Sender: TObject);
begin
  Application.CreateForm(tREntradaAlm, REntradaAlm);
  REntradaAlm.QEntrada.Parameters.ParamByName('numero').Value := QEntradasENT_NUMERO.Value;
  REntradaAlm.QEntrada.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
  REntradaAlm.QEntrada.Open;
  REntradaAlm.QDetalle.Open;
  REntradaAlm.lbReimpresion.Enabled := True;
  REntradaAlm.PrinterSetup;
  REntradaAlm.Preview;
  REntradaAlm.Destroy;
end;

procedure TfrmConsEntrada.Pantalladeproductos1Click(Sender: TObject);
var
  vIns, vMod, vDel : boolean;
begin
    //actuliza producto
   with qActulizaProd do begin
   Close;
   Parameters.ParamByName('PROD').Value := QDetallePRO_CODIGO.Value;
   Parameters.ParamByName('EMP').Value  := DM.vp_cia;
   ExecSQL;
   end;

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
    frmProductos.QProductos.Parameters.ParamByName('par_invempresa').Value := DM.QParametrosPAR_INVEMPRESA.value;
    frmProductos.QProductos.Open;

    frmProductos.QProvee.Close;
    frmProductos.QProvee.Parameters.ParamByName('emp_codigo').Value := dm.vp_cia;
    frmProductos.QProvee.Parameters.ParamByName('pro_codigo').Value := QDetallePRO_CODIGO.Value;
    frmProductos.QProvee.Open;
    if frmProductos.QProvee.RecordCount > 0 then begin
    frmProductos.vl_sup       := frmProductos.QProveeSUP_CODIGO.Value;
    frmProductos.edtProv.Text := frmProductos.QProveeSUP_CODIGO.Text;
    frmProductos.tProv.Text   := frmProductos.QProveeSUP_NOMBRE.Text;
    end;
  end;
end;

procedure TfrmConsEntrada.Pantalladeajuste1Click(Sender: TObject);
begin
  frmMain.activaforma(tfrmAjusteInventario, tform(frmAjusteInventario));
  frmAjusteInventario.QProductos.Locate('pro_codigo',QDetallePRO_CODIGO.Value,[]);
end;

procedure TfrmConsEntrada.Codigo1Click(Sender: TObject);
begin
  (sender as TMenuItem).Checked := not (sender as TMenuItem).Checked;
end;

procedure TfrmConsEntrada.edtSucLocChange(Sender: TObject);
begin
if Trim(edtSucLoc.Text) = '' then TSucLoc.Text := '';
btRefreshClick(Sender);
end;

procedure TfrmConsEntrada.edtSucLocKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if Trim(edtSucLoc.Text) <> '' then
    begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select suc_nombre, cont_numeroSucursal from sucursales');
      dm.Query1.SQL.Add('where emp_codigo = :emp');
      dm.Query1.SQL.Add('and cont_numeroSucursal = '+QuotedStr(edtSucLoc.Text));
      dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
      dm.Query1.Open;
      TSucLoc.Text := dm.Query1.FieldByName('suc_nombre').AsString;
      btRefreshClick(Self);
    end;
  end;
end;

procedure TfrmConsEntrada.btLocalidadClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select suc_nombre, cont_numeroSucursal from sucursales');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Código');
  Search.Title := 'Localidades / Sucursales';
  Search.ResultField := 'cont_numeroSucursal';
  if Search.execute then
  begin
    edtSucLoc.Text := Search.ValueField;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select suc_nombre, cont_numeroSucursal from sucursales');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cont_numeroSucursal = '+QuotedStr(edtSucLoc.Text));
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Open;
    TSucLoc.Text := dm.Query1.FieldByName('suc_nombre').AsString;
    btRefreshClick(Self);
  end;
end;

procedure TfrmConsEntrada.FormShow(Sender: TObject);
begin
if dm.QParametrospar_banca_apuestas.Value = True then begin
lbLocSuc.Visible := True;
edtSucLoc.Visible := True;
btLocalidad.Visible := True;
TSucLoc.Visible := True;
end;
if not dm.QParametrospar_banca_apuestas.Value = True then begin
LbLocSuc.Visible := False;
edtSucLoc.Visible := False;
btLocalidad.Visible := False;
TSucLoc.Visible := False;
end;
end;

end.
