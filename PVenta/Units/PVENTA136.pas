unit PVENTA136;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, DBCtrls, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, DB,
  ADODB, QuerySearchDlgADO, ComCtrls;

type
  TfrmLiquidacion = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    btProveedor: TSpeedButton;
    Label9: TLabel;
    Label8: TLabel;
    edProveedor: TEdit;
    DBEdit5: TDBEdit;
    DBEdit9: TDBEdit;
    tProveedor: TEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    GroupBox1: TGroupBox;
    Panel5: TPanel;
    btGrabar: TBitBtn;
    btLimpiar: TBitBtn;
    BitBtn6: TBitBtn;
    btElimina: TBitBtn;
    BitBtn2: TBitBtn;
    btBuscaCta: TBitBtn;
    QLiquidacion: TADOQuery;
    QLiquidacionemp_codigo: TIntegerField;
    QLiquidacionliq_numero: TIntegerField;
    QLiquidacionsup_codigo: TIntegerField;
    QLiquidacionliq_fecha: TDateTimeField;
    QLiquidacionliq_Agencia: TStringField;
    QLiquidacionliq_container: TStringField;
    QLiquidacionliq_factura: TStringField;
    QLiquidacionliq_taza: TBCDField;
    dsLiq: TDataSource;
    QDetalle: TADOQuery;
    QDetalleemp_codigo: TIntegerField;
    QDetalleliq_numero: TIntegerField;
    QDetalledet_secuencia: TIntegerField;
    QDetallepro_codigo: TIntegerField;
    QDetallepro_roriginal: TStringField;
    QDetallepro_rfabric: TStringField;
    QDetalledet_nombre: TStringField;
    QDetalledet_cantidad: TBCDField;
    QDetalledet_medida: TStringField;
    QDetalleTotalUS: TFloatField;
    QDetalleTotalRD: TFloatField;
    QDetalleGastos: TFloatField;
    QDetalleTotalGastos: TFloatField;
    QDetalleCosto: TFloatField;
    dsDetalle: TDataSource;
    Search: TQrySearchDlgADO;
    Query1: TADOQuery;
    QLiquidacionalm_codigo: TIntegerField;
    Label14: TLabel;
    btAlmacen: TSpeedButton;
    tAlmacen: TEdit;
    DBEdit13: TDBEdit;
    QLiquidacionliq_factor: TBCDField;
    QDetalledet_costounidad: TBCDField;
    QDetalledet_costoempaque: TBCDField;
    QDetalledet_costo: TBCDField;
    Lista: TListBox;
    BitBtn1: TBitBtn;
    btBuscaProd: TSpeedButton;
    QLiquidacionusu_codigo: TIntegerField;
    QLiquidacionliq_status: TStringField;
    QLiquidacionped_tipo: TStringField;
    QLiquidacionped_numero: TIntegerField;
    Label15: TLabel;
    btmoneda: TSpeedButton;
    tmoneda: TEdit;
    DBEdit14: TDBEdit;
    QLiquidacionmon_codigo: TIntegerField;
    QDetalledet_costo_rd: TBCDField;
    GridGastos: TDBGrid;
    QGastos: TADOQuery;
    QGastosgas_codigo: TIntegerField;
    QGastosgas_nombre: TStringField;
    dsGastos: TDataSource;
    QGastosLiq: TADOQuery;
    QGastosLiqemp_codigo: TIntegerField;
    QGastosLiqgas_codigo: TIntegerField;
    QGastosLiqliq_numero: TIntegerField;
    QGastosLiqgas_secuencia: TIntegerField;
    QGastosLiqgas_monto: TBCDField;
    dsGastosLiq: TDataSource;
    QGastosLiqNombre: TStringField;
    QLiquidacionliq_gastos: TBCDField;
    QDetalledet_peso_volumen: TBCDField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Grid: TDBGrid;
    Panel4: TPanel;
    btdeletecuenta: TSpeedButton;
    btfindcuenta: TSpeedButton;
    GridCuentas: TDBGrid;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    lbBAL: TStaticText;
    lbDB: TStaticText;
    lbCR: TStaticText;
    QCuentas: TADOQuery;
    dsCuentas: TDataSource;
    QCuentasemp_codigo: TIntegerField;
    QCuentasliq_numero: TIntegerField;
    QCuentasdet_secuencia: TIntegerField;
    QCuentascat_nombre: TStringField;
    QCuentasdet_monto: TBCDField;
    QCuentasdet_origen: TStringField;
    QCuentascat_cuenta: TStringField;
    QDetallepro_ctainvent: TStringField;
    QDetallepro_ctacosto: TStringField;
    qEjecutar: TADOQuery;
    procedure btProveedorClick(Sender: TObject);
    procedure QLiquidacionNewRecord(DataSet: TDataSet);
    procedure btAlmacenClick(Sender: TObject);
    procedure edProveedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure QLiquidacionalm_codigoGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure DBEdit12Enter(Sender: TObject);
    procedure QDetalleCalcFields(DataSet: TDataSet);
    procedure QDetallepro_codigoChange(Sender: TField);
    procedure QDetallepro_roriginalChange(Sender: TField);
    procedure QDetallepro_rfabricChange(Sender: TField);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn6Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btBuscaProdClick(Sender: TObject);
    procedure GridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure QDetalleBeforePost(DataSet: TDataSet);
    procedure QDetalleAfterPost(DataSet: TDataSet);
    procedure QDetalleAfterDelete(DataSet: TDataSet);
    procedure QDetalleBeforeEdit(DataSet: TDataSet);
    procedure btEliminaClick(Sender: TObject);
    procedure GridKeyPress(Sender: TObject; var Key: Char);
    procedure GridColEnter(Sender: TObject);
    procedure GridEnter(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBEdit12Click(Sender: TObject);
    procedure QDetalledet_medidaChange(Sender: TField);
    procedure btGrabarClick(Sender: TObject);
    procedure QLiquidacionBeforePost(DataSet: TDataSet);
    procedure btLimpiarClick(Sender: TObject);
    procedure QLiquidacionAfterPost(DataSet: TDataSet);
    procedure FormPaint(Sender: TObject);
    procedure btBuscaCtaClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure QDetalleNewRecord(DataSet: TDataSet);
    procedure btmonedaClick(Sender: TObject);
    procedure QLiquidacionmon_codigoGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure GridGastosEnter(Sender: TObject);
    procedure GridGastosColEnter(Sender: TObject);
    procedure QGastosLiqAfterPost(DataSet: TDataSet);
    procedure GridGastosKeyPress(Sender: TObject; var Key: Char);
    procedure GridCuentasColEnter(Sender: TObject);
    procedure GridCuentasEnter(Sender: TObject);
    procedure btfindcuentaClick(Sender: TObject);
    procedure btdeletecuentaClick(Sender: TObject);
    procedure GridCuentasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure QCuentascat_cuentaChange(Sender: TField);
    procedure QCuentasAfterPost(DataSet: TDataSet);
    procedure QCuentasAfterDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    TotalRD, TotalGastos, Debitos, Creditos : Double;
    Totaliza, Buscando, Insertar : Boolean;
    procedure totalizar;
    Procedure TotalizarCuentas;
  end;

var
  frmLiquidacion: TfrmLiquidacion;

implementation

uses SIGMA01, SIGMA00, PVENTA33, RVENTA68;

{$R *.dfm}

procedure TfrmLiquidacion.btProveedorClick(Sender: TObject);
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
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.open;
    tProveedor.text := dm.Query1.fieldbyname('sup_nombre').asstring;
    QLiquidacionsup_codigo.value := dm.Query1.fieldbyname('sup_Codigo').asinteger;
    DBEdit5.setfocus;
  end;
end;

procedure TfrmLiquidacion.QLiquidacionNewRecord(DataSet: TDataSet);
var
  a : integer;
begin
    PageControl1.ActivePageIndex := 0;
  Insertar := true;

  edProveedor.Text := '';
  tProveedor.Text := '';
  QLiquidacionmon_codigo.Value := dm.QParametrosMON_CODIGO.Value;
  QLiquidacionemp_codigo.Value := dm.vp_cia;
  QLiquidacionliq_fecha.Value := Date;
  QLiquidacionusu_codigo.Value := dm.Usuario;
  QLiquidacionliq_status.Value := 'EMI';
  QLiquidacionalm_codigo.Value := dm.QParametrosPAR_INVALMACEN.Value;

  Totaliza := True;
  Buscando := False;

  QDetalle.Close;
  QDetalle.Parameters.ParamByName('emp').Value := dm.vp_cia;
  QDetalle.Parameters.ParamByName('num').Value := -1;
  QDetalle.Open;

  QGastosLiq.Close;
  QGastosLiq.Parameters.ParamByName('emp').Value := dm.vp_cia;
  QGastosLiq.Parameters.ParamByName('num').Value := -1;
  QGastosLiq.Open;

  QCuentas.DisableControls;
  QCuentas.close;
  QCuentas.Parameters.ParamByName('emp').Value := dm.vp_cia;
  QCuentas.Parameters.ParamByName('num').Value := -1;
  QCuentas.open;
  QCuentas.EnableControls;

  QGastosLiq.DisableControls;
  qEjecutar.Close;
  qEjecutar.SQL.Clear;
  qEjecutar.SQL.Add('select gas_codigo, gas_nombre from gastos_aduanales');
  qEjecutar.SQL.Add('where emp_codigo = :emp');
  qEjecutar.SQL.Add('order by gas_codigo');
  qEjecutar.Parameters.ParamByName('emp').Value := dm.vp_cia;
  qEjecutar.Open;
  a := 1;
  if qEjecutar.RecordCount > 0 then begin
  while not qEjecutar.Eof do
  begin
    a := a +1;
    QGastosLiq.Append;
    QGastosLiqemp_codigo.Value := dm.vp_cia;
    QGastosLiqgas_codigo.Value := qEjecutar.FieldByName('gas_codigo').AsInteger;
    QGastosLiqgas_secuencia.Value := a;
    QGastosLiq.Post;
    qEjecutar.Next;
  end;
  end;
  QGastosLiq.First;
  QGastosLiq.EnableControls;
  Insertar := false;
end;

procedure TfrmLiquidacion.btAlmacenClick(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Código');
  Search.Query.clear;
  Search.Query.add('select alm_nombre, alm_codigo');
  Search.ResultField := 'alm_codigo';
  Search.Query.add('from almacen');
  Search.Query.add('where emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.value));
  Search.Title := 'Listado de Almacenes';
  if Search.execute then
  begin
    QLiquidacionalm_codigo.value := StrToInt(Search.ValueField);
    DBEdit13.setfocus;
  end;
end;

procedure TfrmLiquidacion.edProveedorKeyDown(Sender: TObject;
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
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.open;
      tProveedor.text := dm.Query1.fieldbyname('sup_nombre').asstring;
      QLiquidacionsup_codigo.value := dm.Query1.fieldbyname('sup_Codigo').asinteger;
    end
    else
      tProveedor.text := '';
  end;
end;

procedure TfrmLiquidacion.QLiquidacionalm_codigoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QLiquidacionalm_codigo.IsNull then
  begin
    Text := IntToStr(QLiquidacionalm_codigo.Value);
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select alm_codigo, alm_nombre');
    dm.Query1.sql.add('from almacen');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and alm_codigo = :alm');
    dm.Query1.Parameters.parambyname('alm').Value := QLiquidacionalm_codigo.Value;
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.open;
    if dm.Query1.RecordCount > 0 then
      tAlmacen.text := dm.Query1.fieldbyname('alm_nombre').asstring
    else
      tAlmacen.text := '';
  end
  else
    tAlmacen.text := '';
end;

procedure TfrmLiquidacion.DBEdit12Enter(Sender: TObject);
begin
  Grid.SetFocus;
end;

procedure TfrmLiquidacion.totalizar;
var
  punt : tbookmark;
begin
  TotalRD := 0;
  TotalGastos := 0;

//20170612  QGastosLiq.DisableControls;
  punt := QGastosLiq.GetBookmark;
  QGastosLiq.First;
  while not QGastosLiq.Eof do
  begin
    if (not QGastosLiqgas_monto.IsNull) and (QGastosLiqgas_monto.Value > 0) then
      TotalGastos := TotalGastos + QGastosLiqgas_monto.Value;
    QGastosLiq.Next;
  end;
  QGastosLiq.GotoBookmark(punt);
//20170612  QGastosLiq.EnableControls;

  Punt := QDetalle.GetBookmark;
 QDetalle.DisableControls;
  QDetalle.First;
  while not QDetalle.eof do
  begin
    if Trim(QDetallepro_ctacosto.AsString) <> '' then
    begin
      if QCuentas.Locate('cat_cuenta', QDetallepro_ctacosto.AsString, []) then
      begin
        QCuentas.Edit;
        QCuentasdet_monto.Value := 0;
        QCuentas.Post;
      end;
    end;

    if Trim(QDetallepro_ctainvent.AsString) <> '' then
    begin
      if QCuentas.Locate('cat_cuenta', QDetallepro_ctainvent.AsString, []) then
      begin
        QCuentas.Edit;
        QCuentasdet_monto.Value := 0;
        QCuentas.Post;
      end;
    end;

    QDetalle.Next;
  end;
  QDetalle.EnableControls;

  QDetalle.disablecontrols;
  QDetalle.first;
  while not QDetalle.eof do
  begin
    TotalRD := TotalRD + QDetalleTotalRD.value;
    Totaliza := False;

    QCuentas.DisableControls;
    if Trim(QDetallepro_ctacosto.AsString) <> '' then
    begin
      if QCuentas.Locate('cat_cuenta', QDetallepro_ctacosto.AsString, []) then
      begin
        QCuentas.Edit;
        QCuentasdet_monto.Value := QCuentasdet_monto.Value + QDetalleTotalRD.value;
        QCuentas.Post;
      end;
    end;

    if Trim(QDetallepro_ctainvent.AsString) <> '' then
    begin
      if QCuentas.Locate('cat_cuenta', QDetallepro_ctainvent.AsString, []) then
      begin
        QCuentas.Edit;
        QCuentasdet_monto.Value := QCuentasdet_monto.Value + QDetalleTotalRD.value;
        QCuentas.Post;
      end;
    end;

    QCuentas.EnableControls;
    Totaliza := True;

    QDetalle.next;
  end;

  QLiquidacionliq_factor.Value := TotalRD;
  QLiquidacionliq_gastos.Value := TotalGastos;
  QDetalle.GotoBookmark(punt);
  QDetalle.enablecontrols;

  TotalizarCuentas;
end;

procedure TfrmLiquidacion.QDetalleCalcFields(DataSet: TDataSet);
begin
  QDetalleTotalUS.value := QDetalledet_cantidad.value * QDetalledet_costo.value;
  QDetalleTotalRD.value := QDetalleTotalUS.value * QLiquidacionliq_taza.value;
  if TotalRD > 0 then
     QDetalleGastos.value  := ((TotalGastos+QDetalledet_peso_volumen.Value)/TotalRD)*QDetalleTotalRD.value;
  QDetalleTotalGastos.VALUE := QDetalleGastos.value + QDetalleTotalRD.value;
  if QDetalledet_cantidad.value > 0 then
     QDetalleCosto.value := (QDetalleTotalGastos.VALUE) / QDetalledet_cantidad.value;
end;

procedure TfrmLiquidacion.QDetallepro_codigoChange(Sender: TField);
var
  Prod, Lote : Integer;
  CtaCosto, CtaInvent, CtaIngreso, CtaDescuento : String;
begin
  if (dm.QParametrosPAR_CODIGOPRODUCTO.value = 'I') and (Buscando = False) then
  begin
    if not QDetallePRO_CODIGO.isnull then
    begin
      if (dm.QParametrosPAR_CODIGOPRODUCTO.value = 'I') and (Buscando = False) then
      begin
        if dm.QParametrosPAR_VENVERIFICA.Value = '1' then
        begin
          Prod := StrToInt(Copy(IntToStr(QDetallePRO_CODIGO.value),
                dm.QParametrosPAR_VENDIGITOSLOTE.Value+1,
                Length(Trim(IntToStr(QDetallePRO_CODIGO.value)))));
          Lote := StrToInt(Copy(IntToStr(QDetallePRO_CODIGO.value),1,
                dm.QParametrosPAR_VENDIGITOSLOTE.Value));
        end
        else
          Prod := QDetallePRO_CODIGO.Value;

        dm.Query1.close;
        dm.Query1.sql.clear;
        dm.Query1.sql.add('select p.pro_codigo, p.pro_nombre, p.pro_costous, p.pro_precio1,');
        dm.Query1.sql.add('p.pro_precio2, p.pro_precio3, p.pro_precio4, p.dep_codigo, p.fam_codigo,');
        dm.Query1.sql.add('p.pro_roriginal, p.pro_rfabric, p.pro_itbis, p.PRO_DESCMAX,');
        dm.Query1.sql.add('p.pro_servicio, p.pro_vence, p.PRO_PRECIOMENOR, p.pro_escala,');
        dm.Query1.sql.add('p.PRO_COSTOEMPAQUE, p.pro_combo, p.pro_preciomenoremp');
        dm.Query1.sql.add('from productos p');
        dm.Query1.sql.add('where p.emp_codigo = :emp');
        dm.Query1.sql.add('and p.pro_codigo = :cod');
        dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
        dm.Query1.Parameters.parambyname('cod').Value := Prod;
        dm.Query1.open;
        if dm.Query1.RecordCount = 0 then
        begin
          MessageDlg('ESTE PRODUCTO NO ESTA REGISTRADO EN EL MAESTRO'+CHAR(13)+
        'CODIGO: '+IntToStr(Prod),
        mtError,[mbok],0);
        QDetalle.Cancel;
        end
        else if (Lista.Items.IndexOf(IntToStr(Prod)) >= 0) and
        (dm.QParametrosPAR_FACREPITEPROD.Value = 'False') then
        begin
          MessageDlg('ESTE PRODUCTO ESTA INCLUIDO EN ESTA LIQUIDACION',
          mtError,[mbok],0);
          QDetalle.Cancel;
        end
        else
        begin
          Query1.Close;
          Query1.SQL.Clear;
          Query1.SQL.Add('select fam_cta_costo, fam_cta_inventario, fam_cta_ingreso, fam_cta_descuento from familias');
          Query1.SQL.Add('where emp_codigo = :emp');
          Query1.SQL.Add('and fam_codigo = :fam');
          Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
          Query1.Parameters.ParamByName('fam').Value := dm.Query1.fieldbyname('fam_codigo').AsInteger;
          Query1.Open;

          CtaCosto     := '';
          CtaInvent    := '';
          CtaCosto := dm.QContabpar_cta_mercancia_transito.AsString;
          if Query1.RecordCount > 0 then
          begin
            CtaInvent    := Query1.fieldbyname('fam_cta_inventario').AsString;
            QDetallepro_ctacosto.Value  := CtaCosto;
            QDetallepro_ctainvent.Value := CtaInvent;
          end;

          QDetallePRO_RORIGINAL.value := dm.Query1.fieldbyname('pro_roriginal').asstring;
          QDetallePRO_RFABRIC.value   := dm.Query1.fieldbyname('pro_rfabric').asstring;
          QDetalleDET_NOMBRE.value    := dm.Query1.fieldbyname('pro_nombre').asstring;
          QDetalleDET_COSTOUNIDAD.value     := dm.Query1.fieldbyname('pro_costous').asfloat;
          QDetalleDET_COSTOEMPAQUE.Value  := dm.Query1.fieldbyname('pro_costous').asfloat;
          //QDetalleDET_CANTIDAD.Value := 1;

          //Cuentas de Costo (Mercancia en transito)
          {if Trim(CtaCosto) <> '' then
          begin
            if not QCuentas.Locate('cat_cuenta', CtaCosto, []) then
            begin
              QCuentas.Append;
              QCuentascat_cuenta.Value := CtaCosto;
              QCuentasdet_origen.Value := 'Credito';
              QCuentasdet_monto.Value  := QDetalleCosto.Value;
              QCuentas.Post;
            end
            else
            begin
              QCuentas.Edit;;
              QCuentasdet_origen.Value := 'Credito';
              QCuentasdet_monto.Value  := QDetalleCosto.Value;
              QCuentas.Post;
            end;
          end;

          //Cuenta de Inventario
          if Trim(CtaInvent) <> '' then
          begin
            if not QCuentas.Locate('cat_cuenta', CtaInvent, []) then
            begin
              QCuentas.Append;
              QCuentascat_cuenta.Value := CtaInvent;
              QCuentasdet_origen.Value := 'Debito';
              QCuentasdet_monto.Value  := QDetalleCosto.Value;
              QCuentas.Post;
            end
            else
            begin
              QCuentas.Edit;;
              QCuentasdet_origen.Value := 'Debito';
              QCuentasdet_monto.Value  := QDetalleCosto.Value;
              QCuentas.Post;
            end;
          end;}
        end;
      end;
    end;
  end;
end;

procedure TfrmLiquidacion.QDetallepro_roriginalChange(Sender: TField);
var
  Prod : String;
  Lote : Integer;
  CtaCosto, CtaInvent, CtaIngreso, CtaDescuento : String;
begin
  if (dm.QParametrosPAR_CODIGOPRODUCTO.value = 'O') and (Buscando = False) then
  begin
    if not QDetallepro_roriginal.isnull then
    begin
      if dm.QParametrosPAR_VENVERIFICA.Value = '1' then
      begin
        Prod := Copy(QDetallePRO_RORIGINAL.value,
                dm.QParametrosPAR_VENDIGITOSLOTE.Value+1,
                Length(Trim(QDetallePRO_RORIGINAL.value)));
        Lote := StrToInt(Copy(QDetallePRO_RORIGINAL.value,1,
                dm.QParametrosPAR_VENDIGITOSLOTE.Value));
        if Copy(QDetallePRO_RORIGINAL.value,1,3) = '000' then
        begin
          Lote := 1;
          Prod := Copy(QDetallePRO_RORIGINAL.value,
                dm.QParametrosPAR_VENDIGITOSLOTE.Value+2,
                Length(Trim(QDetallePRO_RORIGINAL.value)));
        end;
      end
      else
        Prod := QDetallePRO_RORIGINAL.Value;

      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select p.pro_codigo, p.pro_nombre, p.pro_costous, p.pro_precio1,');
      dm.Query1.sql.add('p.pro_precio2, p.pro_precio3, p.pro_precio4, p.dep_codigo, p.fam_codigo,');
      dm.Query1.sql.add('p.pro_roriginal, p.pro_rfabric, p.pro_itbis, p.PRO_DESCMAX,');
      dm.Query1.sql.add('p.pro_servicio, p.pro_vence, p.PRO_PRECIOMENOR, p.pro_escala,');
      dm.Query1.sql.add('p.PRO_COSTOEMPAQUE, p.pro_combo, p.pro_preciomenoremp');
      dm.Query1.sql.add('from productos p');
      dm.Query1.sql.add('where p.emp_codigo = :emp');
      dm.Query1.sql.add('and p.pro_roriginal = :cod');
      dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.Parameters.parambyname('cod').Value := UpperCase(Prod);
      dm.Query1.open;
      QDetallePRO_CODIGO.value := dm.Query1.fieldbyname('pro_codigo').asinteger;
      if dm.Query1.RecordCount = 0 then
      begin

        MessageDlg('ESTE PRODUCTO NO ESTA REGISTRADO EN EL MAESTRO'+CHAR(13)+
        'REFERENCIA ORIGINAL: '+Prod,
        mtError,[mbok],0);
        QDetalle.Cancel;
      end
      else if (Lista.Items.IndexOf(IntToStr(QDetallePRO_CODIGO.Value)) >= 0) and
      (dm.QParametrosPAR_FACREPITEPROD.Value = 'False') then
      begin
        MessageDlg('ESTE PRODUCTO ESTA INCLUIDO EN ESTA FACTURA',
        mtError,[mbok],0);
        QDetalle.Cancel;
      end
      else
      begin
        Query1.Close;
        Query1.SQL.Clear;
        Query1.SQL.Add('select fam_cta_costo, fam_cta_inventario, fam_cta_ingreso, fam_cta_descuento from familias');
        Query1.SQL.Add('where emp_codigo = :emp');
        Query1.SQL.Add('and fam_codigo = :fam');
        Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
        Query1.Parameters.ParamByName('fam').Value := dm.Query1.fieldbyname('fam_codigo').AsInteger;
        Query1.Open;

        CtaCosto     := '';
        CtaInvent    := '';
        CtaCosto := dm.QContabpar_cta_mercancia_transito.AsString;
        if Query1.RecordCount > 0 then
        begin
          CtaInvent    := Query1.fieldbyname('fam_cta_inventario').AsString;
          QDetallepro_ctacosto.Value  := CtaCosto;
          QDetallepro_ctainvent.Value := CtaInvent;
        end;

        QDetallePRO_RFABRIC.value   := dm.Query1.fieldbyname('pro_rfabric').asstring;
        QDetalleDET_NOMBRE.value    := dm.Query1.fieldbyname('pro_nombre').asstring;
        QDetalleDET_COSTOUNIDAD.value     := dm.Query1.fieldbyname('pro_costous').asfloat;
        QDetalleDET_COSTOEMPAQUE.Value  := dm.Query1.fieldbyname('pro_costous').asfloat;
        //QDetalleDET_CANTIDAD.Value := 1;

        //Cuentas de Costo (Mercancia en transito)
{        if Trim(CtaCosto) <> '' then
        begin
          if not QCuentas.Locate('cat_cuenta', CtaCosto, []) then
          begin
            QCuentas.Append;
            QCuentascat_cuenta.Value := CtaCosto;
            QCuentasdet_origen.Value := 'Credito';
            QCuentasdet_monto.Value  := QDetalleCosto.Value;
            QCuentas.Post;
          end
          else
          begin
            QCuentas.Edit;;
            QCuentasdet_origen.Value := 'Credito';
            QCuentasdet_monto.Value  := QDetalleCosto.Value;
            QCuentas.Post;
          end;
        end;

        //Cuenta de Inventario
        if Trim(CtaInvent) <> '' then
        begin
          if not QCuentas.Locate('cat_cuenta', CtaInvent, []) then
          begin
            QCuentas.Append;
            QCuentascat_cuenta.Value := CtaInvent;
            QCuentasdet_origen.Value := 'Debito';
            QCuentasdet_monto.Value  := QDetalleCosto.Value;
            QCuentas.Post;
          end
          else
          begin
            QCuentas.Edit;;
            QCuentasdet_origen.Value := 'Debito';
            QCuentasdet_monto.Value  := QDetalleCosto.Value;
            QCuentas.Post;
          end;
        end; }
      end;
    end;
  end;
end;

procedure TfrmLiquidacion.QDetallepro_rfabricChange(Sender: TField);
var
  Prod : String;
  Lote : Integer;
begin
  if (dm.QParametrosPAR_CODIGOPRODUCTO.value = 'F') and (Buscando = False) then
  begin
    if not QDetallepro_rfabric.isnull then
    begin
      if dm.QParametrosPAR_VENVERIFICA.Value = '1' then
      begin
        Prod := Copy(QDetallepro_rfabric.value,
                dm.QParametrosPAR_VENDIGITOSLOTE.Value+1,
                Length(Trim(QDetallepro_rfabric.value)));
        Lote := StrToInt(Copy(QDetallepro_rfabric.value,1,
                dm.QParametrosPAR_VENDIGITOSLOTE.Value));
        if Copy(QDetallepro_rfabric.value,1,3) = '000' then
        begin
          Lote := 1;
          Prod := Copy(QDetallepro_rfabric.value,
                dm.QParametrosPAR_VENDIGITOSLOTE.Value+2,
                Length(Trim(QDetallepro_rfabric.value)));
        end;
      end
      else
        Prod := QDetallepro_rfabric.Value;

      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select p.pro_codigo, p.pro_nombre, p.pro_costous, p.pro_precio1,');
      dm.Query1.sql.add('p.pro_precio2, p.pro_precio3, p.pro_precio4, p.dep_codigo, ');
      dm.Query1.sql.add('p.pro_roriginal, p.pro_rfabric, p.pro_itbis, p.PRO_DESCMAX,');
      dm.Query1.sql.add('p.pro_servicio, p.pro_vence, p.PRO_PRECIOMENOR, p.pro_escala,');
      dm.Query1.sql.add('p.PRO_COSTOEMPAQUE, p.pro_combo, p.pro_preciomenoremp');
      dm.Query1.sql.add('from productos p');
      dm.Query1.sql.add('where p.emp_codigo = :emp');
      dm.Query1.sql.add('and p.pro_rfabric = :cod');
      dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.Parameters.parambyname('cod').Value := UpperCase(Prod);
      dm.Query1.open;
      QDetallePRO_CODIGO.value := dm.Query1.fieldbyname('pro_codigo').asinteger;
      if dm.Query1.RecordCount = 0 then
      begin
        MessageDlg('ESTE PRODUCTO NO ESTA REGISTRADO EN EL MAESTRO'+CHAR(13)+
        'REFERENCIA FABRICANTE: '+Prod,
        mtError,[mbok],0);
        QDetalle.Cancel;
      end
      else if (Lista.Items.IndexOf(IntToStr(QDetallePRO_CODIGO.Value)) >= 0) and
      (dm.QParametrosPAR_FACREPITEPROD.Value = 'False') then
      begin
        MessageDlg('ESTE PRODUCTO ESTA INCLUIDO EN ESTA FACTURA',
        mtError,[mbok],0);
        QDetalle.Cancel;
      end
      else
      begin
        QDetallepro_rfabric.value   := dm.Query1.fieldbyname('pro_roriginal').asstring;
        QDetalleDET_NOMBRE.value    := dm.Query1.fieldbyname('pro_nombre').asstring;
        QDetalleDET_COSTOUNIDAD.value     := dm.Query1.fieldbyname('pro_costous').asfloat;
        QDetalleDET_COSTOEMPAQUE.Value  := dm.Query1.fieldbyname('pro_costous').asfloat;
        //QDetalleDET_CANTIDAD.Value := 1;
      end;
    end;
  end;
end;

procedure TfrmLiquidacion.FormCreate(Sender: TObject);
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

  {if dm.QParametrosPAR_FACMEDIDA.Value <> 'True' then
  begin
    Grid.Columns[3].Destroy;
    Grid.Columns[1].Width := Grid.Columns[1].Width + 35;
  end;}
end;

procedure TfrmLiquidacion.FormActivate(Sender: TObject);
begin
  if not QLiquidacion.Active then
  begin
    QLiquidacion.Close;
    QLiquidacion.Parameters.ParamByName('emp').Value := dm.vp_cia;
    QLiquidacion.Parameters.ParamByName('num').Value := -1;
    QLiquidacion.Open;
      QLiquidacion.Insert;
  end;
end;

procedure TfrmLiquidacion.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
     if activecontrol.classtype <> tdbgrid then
     begin
       perform(wm_nextdlgctl, 0, 0);
       key := #0;
     end;
end;

procedure TfrmLiquidacion.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then close;
  if key = vk_f3 then btLimpiarClick(Self);
  if key = vk_f2 then btGRabarClick(Self);
end;

procedure TfrmLiquidacion.BitBtn6Click(Sender: TObject);
begin
  close;
end;

procedure TfrmLiquidacion.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmLiquidacion.btBuscaProdClick(Sender: TObject);
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

procedure TfrmLiquidacion.GridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f4 then btBuscaProdClick(Self);
  if key = vk_f6 then btEliminaClick(Self);
end;

procedure TfrmLiquidacion.QDetalleBeforePost(DataSet: TDataSet);
begin
  if trim(QDetalleDET_MEDIDA.Value) = '' then QDetalleDET_MEDIDA.Value := 'Und';
  QDetalledet_costo_rd.Value := QDetalleCosto.Value;
end;

procedure TfrmLiquidacion.QDetalleAfterPost(DataSet: TDataSet);
begin
  if Totaliza then totalizar;
end;

procedure TfrmLiquidacion.QDetalleAfterDelete(DataSet: TDataSet);
begin
  if Totaliza then totalizar;
end;

procedure TfrmLiquidacion.QDetalleBeforeEdit(DataSet: TDataSet);
begin
  Lista.Items.Delete(Lista.Items.IndexOf(IntToStr(QDetallePRO_CODIGO.Value)));
end;

procedure TfrmLiquidacion.btEliminaClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR LA FILA?',mtconfirmation,[mbyes,mbno],0) = mryes then
  begin
    Lista.Items.Delete(Lista.Items.IndexOf(IntToStr(QDetallePRO_CODIGO.Value)));
    QDetalle.Delete;
    Totalizar;
  end;
  Grid.setfocus;
end;

procedure TfrmLiquidacion.GridKeyPress(Sender: TObject; var Key: Char);
begin
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

procedure TfrmLiquidacion.GridColEnter(Sender: TObject);
begin
  if Grid.selectedindex = 1 then
     Grid.selectedindex := 2
  else if uppercase(Grid.Columns[Grid.selectedindex].FieldName) = 'TOTALUS' then
    Grid.selectedindex := Grid.selectedindex + 1
  else if uppercase(Grid.Columns[Grid.selectedindex].FieldName) = 'TOTALRD' then
    Grid.selectedindex := Grid.selectedindex + 1
  else if uppercase(Grid.Columns[Grid.selectedindex].FieldName) = 'GASTOS' then
    Grid.selectedindex := Grid.selectedindex + 1
  else if uppercase(Grid.Columns[Grid.selectedindex].FieldName) = 'TOTALGASTOS' then
    Grid.selectedindex := Grid.selectedindex + 1
  else if uppercase(Grid.Columns[Grid.selectedindex].FieldName) = 'COSTO' then
  begin
    Grid.selectedindex := 0;
    QDetalle.Append;
  end;
  if (Grid.selectedindex <> 0) and (QDetallePRO_CODIGO.IsNull)  then
     Grid.selectedindex := 0;
end;

procedure TfrmLiquidacion.GridEnter(Sender: TObject);
begin
  Grid.selectedindex := 0;
end;

procedure TfrmLiquidacion.BitBtn1Click(Sender: TObject);
begin
  QDetalle.First;
  Totaliza := True;
  totalizar;
end;

procedure TfrmLiquidacion.DBEdit12Click(Sender: TObject);
begin
  Grid.SetFocus;

end;

procedure TfrmLiquidacion.QDetalledet_medidaChange(Sender: TField);
begin
  if (not QDetalleDET_MEDIDA.IsNull) and (dm.QParametrosPAR_FACMEDIDA.Value = 'True') then
  begin
    //Unidad
    if QDetalleDET_MEDIDA.Value = 'Und' then
      QDetalleDET_COSTO.Value := QDetalledet_costounidad.Value;

    //Empaque
    if QDetalleDET_MEDIDA.Value = 'Emp' then
      QDetalleDET_COSTO.Value := QDetalledet_costoempaque.Value;
  end
  else if dm.QParametrosPAR_FACMEDIDA.Value = 'False' then
    QDetalleDET_COSTO.value := QDetalledet_costounidad.Value;
end;

procedure TfrmLiquidacion.btGrabarClick(Sender: TObject);
var
  a : integer;
begin
  if StrToFloat(Format('%10.2f',[QLiquidacionliq_factor.Value])) = 0 then
  begin
    showmessage('LA LIQUIDACION NO PUEDE ESTAR EN CERO');
    PageControl1.ActivePageIndex := 0;
    Grid.setfocus;
  end
  else if QLiquidacionsup_codigo.IsNull then
  begin
    showmessage('DEBE ESPECIFICAR EL PROVEEDORE');
    PageControl1.ActivePageIndex := 0;
    Grid.setfocus;
  end
  else if (QLiquidacionalm_codigo.IsNull) or (QLiquidacionalm_codigo.value <= 0 ) then
  begin
    showmessage('DEBE ESPECIFICAR EL ALMACEN');
    PageControl1.ActivePageIndex := 0;
    Grid.setfocus;
  end
  else if QLiquidacionliq_container.IsNull then
  begin
    showmessage('DEBE ESPECIFICAR EL CONTEINER');
    PageControl1.ActivePageIndex := 0;
    Grid.setfocus;
  end
  else if QLiquidacionliq_factura.IsNull then
  begin
    showmessage('DEBE ESPECIFICAR LA FACTURA');
    PageControl1.ActivePageIndex := 0;
    Grid.setfocus;
  end
  else if QLiquidacionliq_taza.IsNull then
  begin
    showmessage('DEBE ESPECIFICAR LA TASA');
    PageControl1.ActivePageIndex := 0;
    Grid.setfocus;
  end
  else if lbBAL.Caption <> '0.00' then
  begin
    MessageDlg('LAS CUENTAS CONTABLES DE ESTA FACTURA'+#13+
               'NO ESTAN CUADRADAS',mtError,[mbok],0);
    PageControl1.ActivePageIndex := 1;
    GridCuentas.SetFocus;
  end
  else if messagedlg('TODOS LOS DATOS ESTAN CORECTOS?',mtconfirmation,[mbyes,mbno],0) = mryes then
  begin
    QDetalle.Edit;
    QDetalle.Post;
    Totaliza := False;

    QLiquidacion.Post;

    QDetalle.DisableControls;
    QDetalle.First;
    a := 0;
    while not QDetalle.Eof do
    begin
      a := a + 1;
      QDetalle.Edit;
      QDetalleemp_codigo.Value := dm.vp_cia;
      QDetalleliq_numero.Value := QLiquidacionliq_numero.Value;
      QDetalledet_secuencia.Value := a;
      QDetalledet_costo_rd.Value := QDetalleCosto.Value;
      QDetalle.Post;
      QDetalle.Next;
    end;
    QDetalle.EnableControls;
    QDetalle.UpdateBatch;

    QGastosLiq.DisableControls;
    QGastosLiq.First;
    a := 0;
    while not QGastosLiq.Eof do
    begin
      a := a + 1;
      QGastosLiq.Edit;
      QGastosLiqemp_codigo.Value := dm.vp_cia;
      QGastosLiqliq_numero.Value := QLiquidacionliq_numero.Value;
      QGastosLiqgas_secuencia.Value := a;
      QGastosLiq.Post;
      QGastosLiq.Next;
    end;
    QGastosLiq.EnableControls;
    QGastosLiq.UpdateBatch;

    QCuentas.DisableControls;
    QCuentas.First;
    a := 0;
    while not QCuentas.Eof do
    begin
      a := a + 1;
      QCuentas.Edit;
      QCuentasemp_codigo.Value := dm.vp_cia;
      QCuentasliq_numero.Value := QLiquidacionliq_numero.Value;
      QCuentasdet_secuencia.Value := a;
      QCuentas.Post;
      QCuentas.Next;
    end;
    QCuentas.EnableControls;
    QCuentas.UpdateBatch;

    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('execute pr_graba_liquidacion :emp, :num, :acc');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('num').Value := QLiquidacionliq_numero.Value;
    dm.Query1.Parameters.parambyname('acc').Value := 1;
    dm.Query1.ExecSQL;

    if MessageDlg('Se genero la Liquidacion #'+QLiquidacionliq_numero.AsString+#13+
    'Desea Imprimirla?',mtConfirmation,[mbyes,mbno],0) = mryes then
    begin
      Application.CreateForm(tRLiquidacion, RLiquidacion);
      RLiquidacion.QLiquidacion.Parameters.ParamByName('emp').Value := dm.vp_cia;
      RLiquidacion.QLiquidacion.Parameters.ParamByName('num').Value := QLiquidacionliq_numero.Value;
      RLiquidacion.QLiquidacion.Open;
      RLiquidacion.QDetalle.Open;
      RLiquidacion.QGastos.Open;
      RLiquidacion.PrinterSetup;
      RLiquidacion.Preview;
      RLiquidacion.Destroy;
    end;

    QDetalle.close;
    QLiquidacion.close;
    QLiquidacion.Parameters.ParamByName('emp').Value    := dm.vp_cia;
    QLiquidacion.Parameters.ParamByName('num').Value := -1;
    QLiquidacion.open;
    QLiquidacion.insert;
    edProveedor.setfocus;
  end
  else
    Grid.SetFocus;
end;

procedure TfrmLiquidacion.QLiquidacionBeforePost(DataSet: TDataSet);
begin
  if QLiquidacion.State = dsedit then
  begin
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('execute pr_graba_liquidacion :emp, :num, :acc');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('num').Value := QLiquidacionliq_numero.Value;
    dm.Query1.Parameters.parambyname('acc').Value := 2;
    dm.Query1.ExecSQL;
  end;

  if QLiquidacion.State = dsinsert then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select isnull(max(liq_numero),0) as maximo from liquidacion');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Open;
    QLiquidacionliq_numero.Value := dm.Query1.FieldByName('maximo').AsInteger +1;
  end;
end;

procedure TfrmLiquidacion.btLimpiarClick(Sender: TObject);
begin
  if messagedlg('DESEA CANCELAR ESTA LIQUIDACION?',mtconfirmation,[mbyes,mbno],0) = mryes then
  begin
    QDetalle.DisableControls;
    QDetalle.close;
    QLiquidacion.DisableControls;
    QLiquidacion.close;
    QLiquidacion.Parameters.ParamByName('emp').Value    := dm.vp_cia;
    QLiquidacion.Parameters.ParamByName('num').Value := -1;
    QLiquidacion.open;
    QLiquidacion.EnableControls;
    QLiquidacion.insert;
    QDetalle.EnableControls;
    edProveedor.setfocus;
  end
  else
    Grid.setfocus;
end;

procedure TfrmLiquidacion.QLiquidacionAfterPost(DataSet: TDataSet);
begin
  QLiquidacion.UpdateBatch;
end;

procedure TfrmLiquidacion.FormPaint(Sender: TObject);
begin
  frmLiquidacion.top := 5;
  frmLiquidacion.Left := 0;
end;

procedure TfrmLiquidacion.btBuscaCtaClick(Sender: TObject);
begin
  Search.AliasFields.clear;
  Search.AliasFields.add('Cliente');
  Search.AliasFields.add('Numero');
  Search.Query.clear;
  Search.Query.add('select liq_numero, liq_fecha, liq_status');
  Search.Query.add('from liquidacion');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.Query.add('and liq_status = '+#39+'EMI'+#39);
  Search.ResultField := 'liq_numero';
  Search.Title := 'Liquidacion de Mercancia';
  if Search.execute then
  begin
    Totaliza := false;
    QLiquidacion.close;
    QLiquidacion.Parameters.parambyname('emp').Value := dm.vp_cia;
    QLiquidacion.Parameters.parambyname('num').Value := strtoint(Search.ValueField);
    QLiquidacion.open;

    QDetalle.close;
    QDetalle.Parameters.parambyname('emp').Value := dm.vp_cia;
    QDetalle.Parameters.parambyname('num').Value := strtoint(Search.ValueField);
    QDetalle.open;
    QDetalle.first;

    QGastosLiq.close;
    QGastosLiq.Parameters.parambyname('emp').Value := dm.vp_cia;
    QGastosLiq.Parameters.parambyname('num').Value := strtoint(Search.ValueField);
    QGastosLiq.open;
    QGastosLiq.first;

    QCuentas.close;
    QCuentas.Parameters.parambyname('emp').Value := dm.vp_cia;
    QCuentas.Parameters.parambyname('num').Value := strtoint(Search.ValueField);
    QCuentas.open;
    QCuentas.first;

    edProveedor.Text := QLiquidacionsup_codigo.AsString;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select sup_codigo, sup_nombre, sup_balance,');
    dm.Query1.sql.add('sup_direccion, sup_localidad, sup_telefono, sup_fax');
    dm.Query1.sql.add('from proveedores');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and sup_Status = '+#39+'ACT'+#39);
    dm.Query1.sql.add('and sup_codigo = :sup');
    dm.Query1.Parameters.parambyname('sup').Value := edProveedor.Text;
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.open;
    tProveedor.text := dm.Query1.fieldbyname('sup_nombre').asstring;

    QLiquidacion.Edit;
    Totaliza := true;
    Totalizar;
    QDetalle.EnableControls;
    Grid.setfocus;
  end
  else
    edProveedor.SetFocus;
end;

procedure TfrmLiquidacion.BitBtn2Click(Sender: TObject);
begin
  if Trim(edProveedor.Text) <> '' then
  begin
    Search.Query.clear;
    Search.AliasFields.clear;
    Search.Query.add('select ped_numero, ped_fecha, ped_nombre');
    Search.Query.add('from pedidos');
    Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
    Search.Query.add('and ped_tipo = '+#39+'S'+#39);
    Search.Query.add('and ped_status = '+#39+'EMI'+#39);
    Search.Query.add('and sup_codigo = '+Trim(edProveedor.Text));
    Search.AliasFields.add('Número');
    Search.AliasFields.add('Fecha');
    Search.AliasFields.add('Proveedor');
    Search.Title := 'Ordenes de Compra';
    Search.ResultField := 'ped_numero';
    if Search.execute then
    begin
      Totaliza := False;

      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select sup_codigo, ped_nombre');
      dm.Query1.SQL.Add('from pedidos');
      dm.Query1.SQL.Add('where emp_codigo = :emp');
      dm.Query1.SQL.Add('and ped_tipo = '+#39+'S'+#39);
      dm.Query1.SQL.Add('and ped_numero = :num');
      dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
      dm.Query1.Parameters.ParamByName('num').Value := StrToInt(Search.ValueField);
      dm.Query1.Open;
      edProveedor.Text := IntToStr(dm.Query1.FieldByName('sup_codigo').AsInteger);
      tProveedor.Text  := dm.Query1.FieldByName('ped_nombre').AsString;
      QLiquidacionsup_codigo.Value := dm.Query1.FieldByName('sup_codigo').AsInteger;

      qEjecutar.Close;
      qEjecutar.SQL.Clear;
      qEjecutar.SQL.Add('select det_secuencia, isnull(pro_codigo,0) pro_codigo, pro_roriginal,');
      qEjecutar.SQL.Add('pro_rfabric, det_descripcion, isnull(det_cantidad,0) det_cantidad, det_medida,');
      qEjecutar.SQL.Add('det_precio, det_conitbis, det_itbis, isnull(det_facturado,0) det_facturado');
      qEjecutar.SQL.Add('from det_pedido');
      qEjecutar.SQL.Add('where emp_codigo = :emp');
      qEjecutar.SQL.Add('and ped_tipo = '+#39+'S'+#39);
      qEjecutar.SQL.Add('and ped_numero = :num');
      qEjecutar.SQL.Add('and det_cantidad is not null');
      qEjecutar.SQL.Add('and det_status = '+#39+'PED'+#39);
      qEjecutar.Parameters.ParamByName('emp').Value := dm.vp_cia;
      qEjecutar.Parameters.ParamByName('num').Value := StrToInt(Search.ValueField);
      qEjecutar.Open;

      QDetalle.close;
      QDetalle.open;
      QDetalle.disablecontrols;
      QDetalle.First;
      while not qEjecutar.Eof do
      begin
        QDetalle.append;
        QDetalleDET_SECUENCIA.Value := qEjecutar.FieldByName('det_secuencia').AsInteger;
        QDetalleDET_CANTIDAD.Value  := qEjecutar.FieldByName('det_cantidad').AsFloat -
                                       qEjecutar.FieldByName('det_facturado').AsFloat;
        QDetallePRO_RFABRIC.Value   := qEjecutar.FieldByName('pro_rfabric').AsString;
        QDetallePRO_RORIGINAL.Value := qEjecutar.FieldByName('pro_roriginal').AsString;
        QDetallePRO_CODIGO.Value    := qEjecutar.FieldByName('pro_codigo').AsInteger;
        QDetalleDET_COSTO.Value     := qEjecutar.FieldByName('det_precio').AsFloat;
        QDetalleEMP_CODIGO.Value    := dm.vp_cia;
        QDetalleDET_NOMBRE.Value    := qEjecutar.FieldByName('det_descripcion').AsString;
        QDetalleDET_MEDIDA.Value    := qEjecutar.FieldByName('det_medida').AsString;
        QDetalleDET_COSTO.Value     := qEjecutar.FieldByName('det_precio').AsFloat;
        QDetalledet_costounidad.Value := qEjecutar.FieldByName('det_precio').AsFloat;
        QDetalledet_costoempaque.Value := qEjecutar.FieldByName('det_precio').AsFloat;
        QDetalle.Post;

      qEjecutar.Next;
      end;
      QDetalle.first;
      QDetalle.enablecontrols;

      QLiquidacionPED_NUMERO.Value := StrToInt(Search.ValueField);
      QLiquidacionped_tipo.Value   := 'S';

      Totaliza := True;
      Totalizar;

      DBEdit13.SetFocus;
    end;
  end
  else
  begin
    MessageDlg('DEBE SELECCIONAR EL PROVEEDOR',mtError,[mbok],0);
    edProveedor.SetFocus;
  end;
end;

procedure TfrmLiquidacion.QDetalleNewRecord(DataSet: TDataSet);
begin
  QDetalledet_medida.Value := 'Und';
end;

procedure TfrmLiquidacion.btmonedaClick(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Código');
  Search.Query.clear;
  Search.Query.add('select mon_nombre, mon_codigo');
  Search.ResultField := 'mon_codigo';
  Search.Query.add('from moneda');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.Title := 'Tipos de Moneda';
  if Search.execute then
  begin
    QLiquidacionmon_codigo.value := StrToInt(Search.ValueField);
    DBEdit14.setfocus;
  end;
end;

procedure TfrmLiquidacion.QLiquidacionmon_codigoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QLiquidacionmon_codigo.IsNull then
  begin
    Text := IntToStr(QLiquidacionmon_codigo.Value);
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select mon_codigo, mon_nombre');
    dm.Query1.sql.add('from moneda');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and mon_codigo = :mon');
    dm.Query1.Parameters.parambyname('mon').Value := QLiquidacionmon_codigo.Value;
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.open;
    if dm.Query1.RecordCount > 0 then
      tmoneda.text := dm.Query1.fieldbyname('mon_nombre').asstring
    else
      tmoneda.text := '';
  end
  else
    tmoneda.text := '';
end;

procedure TfrmLiquidacion.GridGastosEnter(Sender: TObject);
begin
  GridGastos.SelectedIndex := 0;
end;

procedure TfrmLiquidacion.GridGastosColEnter(Sender: TObject);
begin
  if GridGastos.SelectedIndex = 0 then GridGastos.SelectedIndex := 1;
end;

procedure TfrmLiquidacion.QGastosLiqAfterPost(DataSet: TDataSet);
begin
  if totaliza then totalizar;
end;

procedure TfrmLiquidacion.GridGastosKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    QGastosLiq.Edit;
    QGastosLiq.Post;
  end;
end;

procedure TfrmLiquidacion.GridCuentasColEnter(Sender: TObject);
begin
  if GridCuentas.SelectedIndex = 1 then
    GridCuentas.SelectedIndex := GridCuentas.SelectedIndex + 1;
end;

procedure TfrmLiquidacion.GridCuentasEnter(Sender: TObject);
begin
  GridCuentas.SelectedIndex := 0;
end;

procedure TfrmLiquidacion.btfindcuentaClick(Sender: TObject);
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
    QCuentas.Edit;
    QCuentasCAT_CUENTA.Value := Search.ValueField;
  end;
end;

procedure TfrmLiquidacion.btdeletecuentaClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR LA CUENTA?',mtconfirmation,[mbyes,mbno],0) = mryes then
    QCuentas.Delete;
  GridCuentas.setfocus;
end;

procedure TfrmLiquidacion.GridCuentasKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if GridCuentas.SelectedIndex = 2 then
  begin
    if key = 68 then
    begin
      QCuentas.Edit;
      QCuentasDET_ORIGEN.Value := 'Debito';
      GridCuentas.SelectedIndex := 3;
    end
    else if key = 67 then
    begin
      QCuentas.Edit;
      QCuentasDET_ORIGEN.Value := 'Credito';
      GridCuentas.SelectedIndex := 3;
    end;
  end;
  if key = vk_insert then abort;
  if (ssCtrl in Shift) and (key = vk_delete) then abort;
  if key = vk_return then
     if GridCuentas.SelectedIndex <> 3 then
        GridCuentas.SelectedIndex := GridCuentas.SelectedIndex + 1
     else
     begin
       GridCuentas.SelectedIndex := 0;
       QCuentas.Append;
     end;
end;

procedure TfrmLiquidacion.QCuentascat_cuentaChange(Sender: TField);
begin
  if not QCuentasCAT_CUENTA.IsNull then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cat_nombre, cat_origen, cat_movimiento from contcatalogo');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cat_cuenta = :cta');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('cta').Value  := QCuentasCAT_CUENTA.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
    begin
      QCuentas.Edit;
      QCuentasCAT_NOMBRE.Value := dm.Query1.FieldByName('cat_nombre').AsString;
      if dm.QUsuariosusu_factura_cuentas.Value = 'True' then
        GridCuentas.SelectedIndex := 2;
    end;
  end;
end;

procedure TfrmLiquidacion.TotalizarCuentas;
var
  Punt : TBookMark;
begin
  if Totaliza = True then
  Begin
    Debitos  := 0;
    Creditos := 0;
    Punt := QCuentas.GetBookmark;
    QCuentas.DisableControls;
    QCuentas.First;
    while not QCuentas.Eof do
    begin
      if QCuentasDET_ORIGEN.Value = 'Debito' then
        Debitos  := Debitos  + StrToFloat(Format('%10.2f',[QCuentasDET_MONTO.Value]))
      else
        Creditos := Creditos + StrToFloat(Format('%10.2f',[QCuentasDET_MONTO.Value]));
      QCuentas.Next;
    end;
    QCuentas.GotoBookmark(Punt);
    QCuentas.EnableControls;
    lbCR.Caption  := Format('%n',[Creditos]);
    lbDB.Caption  := Format('%n',[Debitos]);
    lbBAL.Caption := Format('%n',[Debitos-Creditos]);
  end;
  if Trim(lbBAL.Caption) <> '0.00' then
    lbBAL.Font.Color := clRed
  else
    lbBAL.Font.Color := clBlack;
end;

procedure TfrmLiquidacion.QCuentasAfterPost(DataSet: TDataSet);
begin
  TotalizarCuentas;
end;

procedure TfrmLiquidacion.QCuentasAfterDelete(DataSet: TDataSet);
begin
  TotalizarCuentas;
end;

end.
