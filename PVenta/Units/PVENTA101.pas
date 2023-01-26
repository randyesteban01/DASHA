unit PVENTA101;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Buttons, StdCtrls, IBCustomDataSet,
  IBUpdateSQL, DB, IBQuery, ADODB, QuerySearchDlgADO, Mask, DBCtrls,
  ExtCtrls, Grids, DBGrids;

type
  TfrmDevSinFactura = class(TForm)
    Panel5: TPanel;
    Panel2: TPanel;
    Label2: TLabel;
    btBuscaCli: TSpeedButton;
    Label12: TLabel;
    btVendedor: TSpeedButton;
    Label8: TLabel;
    edCliente: TEdit;
    dbVendedor: TDBEdit;
    tVendedor: TEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    Grid: TDBGrid;
    QDevolucion: TADOQuery;
    QDevolucionDEV_DESCUENTO: TFloatField;
    QDevolucionDEV_DEVDINERO: TIBStringField;
    QDevolucionDEV_FECHA: TDateTimeField;
    QDevolucionDEV_ITBIS: TFloatField;
    QDevolucionDEV_NUMERO: TIntegerField;
    QDevolucionDEV_STATUS: TIBStringField;
    QDevolucionDEV_TOTAL: TFloatField;
    QDevolucionEMP_CODIGO: TIntegerField;
    QDevolucionFAC_FORMA: TIBStringField;
    QDevolucionFAC_NUMERO: TIntegerField;
    QDevolucionTFA_CODIGO: TIntegerField;
    QDevolucionUSU_CODIGO: TIntegerField;
    QDevolucionVEN_CODIGO: TIntegerField;
    QDevolucionCLI_CODIGO: TIntegerField;
    QDevolucionCAJ_CODIGO: TIntegerField;
    QDevolucionDEV_PORCCOMISION: TFloatField;
    QDevolucionDEV_COMISION: TFloatField;
    QDevolucionDEV_NOMBRE: TIBStringField;
    QDevolucionBAN_CODIGO: TIntegerField;
    QDevolucionCHE_NUMERO: TIntegerField;
    QDevoluciondev_conitbis: TStringField;
    QDevolucionsuc_codigo: TIntegerField;
    dsDevolucion: TDataSource;
    Search: TQrySearchDlgADO;
    tCliente: TEdit;
    Label9: TLabel;
    DBEdit5: TDBEdit;
    QDetalle: TADOQuery;
    QDetalleEMP_CODIGO: TIntegerField;
    QDetalleDEV_NUMERO: TIntegerField;
    QDetalleDET_SECUENCIA: TIntegerField;
    QDetallePRO_CODIGO: TIntegerField;
    QDetalleFAM_CODIGO: TIntegerField;
    QDetalleDEV_COSTO: TFloatField;
    QDetalleDEV_PRECIO: TFloatField;
    QDetallePRO_NOMBRE: TIBStringField;
    QDetalleDEV_CANTIDAD: TFloatField;
    QDetalleDEP_CODIGO: TIntegerField;
    QDetalleDEV_TOPECANTIDAD: TFloatField;
    QDetalleDEV_CONITBIS: TIBStringField;
    QDetalleDEV_DESCUENTO: TFloatField;
    QDetalleDEV_ITBIS: TFloatField;
    QDetalleDEV_CANTFACTURADA: TFloatField;
    QDetalleValor: TFloatField;
    QDetalleCalcDesc: TFloatField;
    QDetallePrecioItbis: TFloatField;
    QDetalleCalcItbis: TFloatField;
    QDetalleDevuelta: TFloatField;
    QDetallePRO_RORIGINAL: TIBStringField;
    QDetallePRO_RFABRIC: TIBStringField;
    QDetallePRO_SERVICIO: TIBStringField;
    QDetalleMAR_CODIGO: TIntegerField;
    QDetalleVEN_CODIGO: TIntegerField;
    QDetalleDET_COMISION: TFloatField;
    QDetalleDET_ESCALA: TIBStringField;
    QDetalleDET_MEDIDA: TIBStringField;
    QDetalleNeto: TFloatField;
    QDetallesuc_codigo: TIntegerField;
    QDetalledet_lote: TIntegerField;
    QDetalledet_fechavence: TDateTimeField;
    QDetalledet_cant_oferta: TBCDField;
    dsDetalle: TDataSource;
    Label11: TLabel;
    lbItbis: TLabel;
    Label19: TLabel;
    btBuscaProd: TSpeedButton;
    btPrecio: TSpeedButton;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit10: TDBEdit;
    btGrabar: TBitBtn;
    btLimpiar: TBitBtn;
    btSalir: TBitBtn;
    btBuscaCliente: TBitBtn;
    btNota: TBitBtn;
    ckItbis: TDBCheckBox;
    btEliminar: TBitBtn;
    Query1: TADOQuery;
    Lista: TListBox;
    QDetalledet_vence: TStringField;
    QDetalledet_manejaescala: TStringField;
    QDevoluciondev_nota: TMemoField;
    QDevolucionSubTotal: TFloatField;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    QSucursalalm_codigo: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    dsSuc: TDataSource;
    QDetalledet_selectivo_ad: TBCDField;
    QDetalledet_selectivo_con: TBCDField;
    QDevolucionNCF: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btBuscaCliClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btVendedorClick(Sender: TObject);
    procedure btBuscaProdClick(Sender: TObject);
    procedure QDetallePRO_CODIGOChange(Sender: TField);
    procedure QDetalleCalcFields(DataSet: TDataSet);
    procedure GridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btPrecioClick(Sender: TObject);
    procedure btBuscaClienteClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btSalirClick(Sender: TObject);
    procedure btNotaClick(Sender: TObject);
    procedure QDevolucionVEN_CODIGOGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure QDetallePRO_RORIGINALChange(Sender: TField);
    procedure QDevolucionCalcFields(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure QDevolucionNewRecord(DataSet: TDataSet);
    procedure edClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GridKeyPress(Sender: TObject; var Key: Char);
    procedure GridColEnter(Sender: TObject);
    procedure QDetalleAfterPost(DataSet: TDataSet);
    procedure ckItbisClick(Sender: TObject);
    procedure btGrabarClick(Sender: TObject);
    procedure QDevolucionBeforePost(DataSet: TDataSet);
    procedure QDetalleNewRecord(DataSet: TDataSet);
    procedure btLimpiarClick(Sender: TObject);
    procedure btEliminarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Prod, Cliente : integer;
    Precio : String;
    Total, Itbis, Descuento : Double;
    Buscando, Totaliza : boolean;
    FormatoImp, almacen, cajero : integer;
    PuertoImp : string;
    procedure totalizar;
    procedure Imp40Columnas;
  end;

var
  frmDevSinFactura: TfrmDevSinFactura;

implementation

uses PVENTA33, RVENTA03, SIGMA01, PVENTA34, PVENTA36, SIGMA00, RVENTA72;

{$R *.dfm}

procedure TfrmDevSinFactura.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmDevSinFactura.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    if ActiveControl.ClassType <> TDBGrid then
    begin
      perform(wm_nextdlgctl, 0, 0);
      key := #0;
    end;
  end;
end;

procedure TfrmDevSinFactura.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmDevSinFactura.btBuscaCliClick(Sender: TObject);
var
  Cliente : integer;
begin
  Search.Query.clear;
  Search.AliasFields.clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Referencia');
  Search.AliasFields.Add('Telefono');
  Search.AliasFields.Add('Cédula');
  Search.AliasFields.Add('Código');
  Search.Query.add('select cli_nombre, cli_referencia, cli_telefono, cli_cedula, cli_codigo');
  if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
    Search.ResultField := 'cli_codigo'
  else
    Search.ResultField := 'cli_referencia';
  Search.Query.add('from clientes');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.Query.add('and cli_Status = '+#39+'ACT'+#39);
  Search.Title := 'Listado de clientes';
  if Search.execute then
  begin
    edCliente.text := search.valuefield;
    edCliente.setfocus;
    Query1.close;
    Query1.sql.clear;
    Query1.sql.add('select cli_codigo, cli_nombre, cli_balance, cli_referencia,');
    Query1.sql.add('cli_limite, cli_precio, cli_descuento, ven_codigo, cpa_codigo,');
    Query1.sql.add('cli_direccion, cli_localidad, cli_telefono, cli_fax, cli_facturarbce,');
    Query1.sql.add('cli_facturarvencida, cli_precio, cli_cuenta, pro_codigo');
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
    Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    Query1.open;
    Cliente := Query1.fieldbyname('cli_codigo').asinteger;

    tCliente.Text := Query1.fieldbyname('cli_nombre').asstring;
    QDevolucionCLI_CODIGO.value     := Query1.fieldbyname('cli_Codigo').asinteger;

    if not Query1.fieldbyname('ven_Codigo').IsNull then
      QDevolucionVEN_CODIGO.Value     := Query1.fieldbyname('ven_Codigo').asinteger;
    QDevolucionDEV_NOMBRE.value     := Query1.fieldbyname('cli_nombre').asstring;

  end;
end;

procedure TfrmDevSinFactura.FormCreate(Sender: TObject);
begin
  if dm.QParametrosPAR_FACESCALA.Value <> 'True' then
  begin
    Grid.Columns[4].Destroy;
    Grid.Columns[1].Width := Grid.Columns[1].Width + 30;
  end;

  if dm.QParametrosPAR_FACMEDIDA.Value <> 'True' then
  begin
    Grid.Columns[3].Destroy;
    Grid.Columns[1].Width := Grid.Columns[1].Width + 30;
  end;

  if dm.QParametrosPAR_INVMOSTRARVENCE.Value <> 'True' then
  begin
    Grid.Columns[Grid.Columns.Count-2].Destroy;
    Grid.Columns[1].Width := Grid.Columns[1].Width + 45;
  end;

  if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'I' then
     Grid.Columns[0].FieldName := 'PRO_CODIGO'
  else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'F' then
     Grid.Columns[0].FieldName := 'PRO_RFABRIC'
  else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'O' then
     Grid.Columns[0].FieldName := 'PRO_RORIGINAL';

end;

procedure TfrmDevSinFactura.btVendedorClick(Sender: TObject);
begin
  Search.AliasFields.clear;
  Search.AliasFields.add('Nombre');
  Search.AliasFields.add('Código');
  Search.Query.clear;
  Search.Query.add('select ven_nombre, ven_codigo');
  Search.Query.add('from vendedores');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.ResultField := 'ven_Codigo';
  Search.Title := 'Listado de Vendedores';
  if Search.execute then
  begin
    QDevolucionVEN_CODIGO.value := strtoint(Search.ValueField);
    dbVendedor.setfocus;
  end;
end;

procedure TfrmDevSinFactura.btBuscaProdClick(Sender: TObject);
var
  primera : boolean;
  Relleno, Lote : string;
  s : array[0..20] of char;
begin
  application.createform(tfrmBuscaProducto, frmBuscaProducto);
  frmBuscaProducto.almacen := dm.QParametrospar_almacendevolucion.Value;
  frmBuscaProducto.facturando := True;
  primera := true;
  while (frmBuscaProducto.ckactiva.Checked) or (Primera) do
  begin
    frmBuscaProducto.showmodal;
    Primera := false;
    if frmBuscaProducto.seleccion = 1 then
    begin
      Relleno := '';
      if dm.QParametrosPAR_VENVERIFICA.Value = '1' then
      begin
        Relleno := '';
        if frmBuscaProducto.QVence.RecordCount > 0 then
        begin
          FillChar(s, dm.QParametrosPAR_VENDIGITOSLOTE.Value-Length(IntToStr(frmBuscaProducto.QVenceven_lote.Value)),'0');
          Relleno := s+IntToStr(frmBuscaProducto.QVenceven_lote.Value);
        end
        else
        begin
          FillChar(s, dm.QParametrosPAR_VENDIGITOSLOTE.Value,'9');
          Relleno := s;
        end;
      end;

      QDetalle.Edit;
      QDetalleDET_ESCALA.Value := frmBuscaProducto.QEscalasESC_ESCALA.Value;
      if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'I' then
         QDetallePRO_CODIGO.value := frmBuscaProducto.QProductosPRO_CODIGO.value
      else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'F' then
         QDetallePRO_RFABRIC.value := Relleno+frmBuscaProducto.QProductosPRO_RFABRIC.value
      else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'O' then
         QDetallePRO_RORIGINAL.value := Relleno+frmBuscaProducto.QProductosPRO_RORIGINAL.value;

      if frmBuscaProducto.ckactiva.Checked then
      begin
        QDetalle.Append;
        Grid.SelectedIndex := 0;
      end;
    end;
  end;
  frmBuscaProducto.release;
  Grid.setfocus;
end;

procedure TfrmDevSinFactura.QDetallePRO_CODIGOChange(Sender: TField);
var
  Prod, Lote : Integer;
begin
  if (dm.QParametrosPAR_CODIGOPRODUCTO.value = 'I') and (Buscando = False) then
  begin
    if not QDetallePRO_CODIGO.isnull then
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
      dm.Query1.sql.add('select p.pro_codigo, p.pro_nombre, p.pro_costo, p.pro_precio1,');
      dm.Query1.sql.add('p.pro_precio2, p.pro_precio3, p.pro_precio4, p.dep_codigo, ');
      dm.Query1.sql.add('p.pro_roriginal, p.pro_rfabric, p.pro_itbis, p.PRO_DESCMAX,');
      dm.Query1.sql.add('p.pro_servicio, p.pro_vence, p.PRO_PRECIOMENOR, p.pro_escala,');
      dm.Query1.sql.add('p.PRO_COSTOEMPAQUE, p.pro_combo, p.pro_preciomenoremp, pro_comision');
      dm.Query1.sql.add('from productos p');
      dm.Query1.sql.add('where p.emp_codigo = :emp');
      dm.Query1.sql.add('and p.pro_codigo = :cod');
      dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.Parameters.parambyname('cod').Value := Prod;
      dm.Query1.open;
      if dm.Query1.RecordCount = 0 then
      begin
        MessageDlg('ESTE PRODUCTO NO ESTA REGISTRADO EN EL MAESTRO',
        mtError,[mbok],0);
        Abort;
      end
      else if (Lista.Items.IndexOf(IntToStr(Prod)) >= 0) and
      (dm.QParametrosPAR_FACREPITEPROD.Value = 'False') then
      begin
        MessageDlg('ESTE PRODUCTO ESTA INCLUIDO EN ESTA FACTURA',
        mtError,[mbok],0);
        Abort;
      end
      else
      begin
        QDetalleDET_VENCE.value     := dm.Query1.fieldbyname('pro_vence').asstring;
        QDetalleDET_MANEJAESCALA.Value := dm.Query1.fieldbyname('pro_escala').asstring;
        QDetallePRO_SERVICIO.Value  := dm.Query1.fieldbyname('pro_servicio').asstring;
        QDetallePRO_RORIGINAL.value := dm.Query1.fieldbyname('pro_roriginal').asstring;
        QDetallePRO_RFABRIC.value   := dm.Query1.fieldbyname('pro_rfabric').asstring;
        QDetallePRO_NOMBRE.value    := dm.Query1.fieldbyname('pro_nombre').asstring;
        QDetalleDEV_CONITBIS.value  := dm.Query1.fieldbyname('pro_itbis').asstring;
        QDetalleDEV_COSTO.value     := dm.Query1.fieldbyname('pro_costo').asfloat;
        QDetalleDEV_DESCUENTO.value := 0;
        QDetalleDET_COMISION.Value  := dm.Query1.fieldbyname('pro_comision').asfloat;
        QDetalleDEP_CODIGO.value    := dm.Query1.fieldbyname('dep_codigo').asinteger;
        QDetalleDEV_PRECIO.value := dm.Query1.fieldbyname('pro_precio1').asfloat;

        QDetalleDEV_CANTIDAD.Value := 1;
        QDetalle.Post;
        if dm.QParametrosPAR_FACBAJARLINEA.Value = 'True' then
        begin
          QDetalle.Append;
          Grid.SelectedIndex := 0;
        end;
      end;
    end;
  end;
end;

procedure TfrmDevSinFactura.QDetalleCalcFields(DataSet: TDataSet);
var
  Venta, NumItbis : Double;
begin
  if QDetalleDEV_CONITBIS.value = 'S' then
  begin
    NumItbis := strtofloat(format('%10.2f',[(QDetalleDEV_ITBIS.asfloat/100)+1]));
    if dm.QParametrospar_itbisincluido.Value = 'True' then
    begin
      Venta    := strtofloat(format('%10.2f',[(QDetalleDEV_PRECIO.value)/NumItbis]));
      QDetallePrecioItbis.value := strtofloat(format('%10.2f',[Venta]));
      QDetalleCalcDesc.value    := strtofloat(format('%10.2f',[(Venta *
                                 strtofloat(format('%10.2f',[QDetalleDEV_DESCUENTO.value])))/100]));

      QDetalleCalcItbis.value   := strtofloat(format('%10.2f',[(((Venta-QDetalleCalcDesc.value)+
                                                                (QDetalledet_selectivo_ad.Value+
                                                                QDetalledet_selectivo_con.Value))*
                                   strtofloat(format('%10.2f',[QDetalleDEV_ITBIS.Value])))/100]));
      QDetalleValor.value       := ((strtofloat(format('%10.2f',[Venta]))-
                                   strtofloat(format('%10.2f',[QDetalleCalcDesc.value])))+
                                   strtofloat(format('%10.2f',[QDetalledet_selectivo_ad.Value]))+
                                   strtofloat(format('%10.2f',[QDetalledet_selectivo_con.Value]))+
                                   strtofloat(format('%10.2f',[QDetalleCalcItbis.value])))*
                                   strtofloat(format('%10.2f',[QDetalleDEV_CANTIDAD.value]));
    end
    else
    begin
      Venta    := strtofloat(format('%10.2f',[(QDetalleDEV_PRECIO.value)]));
      QDetallePrecioItbis.value := strtofloat(format('%10.2f',[QDetalleDEV_PRECIO.value+
                                                              QDetalledet_selectivo_ad.Value+
                                                              QDetalledet_selectivo_con.Value]));
      QDetalleCalcDesc.value    := strtofloat(format('%10.2f',[(Venta *
                                  strtofloat(format('%10.2f',[QDetalleDEV_DESCUENTO.value])))/100]));
      if QDetalleDEV_CONITBIS.Value = 'S' then
        QDetalleCalcItbis.value   := strtofloat(format('%10.2f',[(((Venta-QDetalleCalcDesc.value)+
                                                                  (QDetalledet_selectivo_ad.Value+
                                                                  QDetalledet_selectivo_con.Value))*
                                     strtofloat(format('%10.2f',[QDetalleDEV_ITBIS.Value])))/100]))
      else
        QDetalleCalcItbis.value   := 0;

      QDetalleValor.value       := (((strtofloat(format('%10.2f',[QDetalleDEV_PRECIO.value]))-
                                   strtofloat(format('%10.2f',[QDetalleCalcDesc.value])))+
                                   strtofloat(format('%10.2f',[QDetalledet_selectivo_ad.Value]))+
                                   strtofloat(format('%10.2f',[QDetalledet_selectivo_con.Value])))+
                                   strtofloat(format('%10.2f',[QDetalleCalcItbis.value])))*
                                   strtofloat(format('%10.2f',[QDetalleDEV_CANTIDAD.value]));
    end;
  end
  else
  begin
    Venta := strtofloat(format('%10.2f',[QDetalleDEV_PRECIO.value]));
    QDetalleCalcDesc.value    := strtofloat(format('%10.2f',[(Venta * QDetalleDEV_DESCUENTO.value)/100]));
    QDetallePrecioItbis.value := strtofloat(format('%10.2f',[Venta]));
    QDetalleCalcItbis.value   := 0;
    QDetalleValor.value       := strtofloat(format('%10.2f',[(Venta-QDetalleCalcDesc.value)*QDetalleDEV_CANTIDAD.value]));
  end;
  QDetalleNeto.Value := (QDetallePrecioItbis.Value - QDetalleCalcDesc.Value)+QDetalleCalcItbis.Value;
end;

procedure TfrmDevSinFactura.GridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = vk_f4) and (btBuscaProd.Enabled = True) then btBuscaProdClick(self);
  if key = vk_f7  then btPrecioClick(Self);
  if key = vk_f6  then btEliminarClick(Self);
end;

procedure TfrmDevSinFactura.btPrecioClick(Sender: TObject);
begin
  if not QDetallePRO_CODIGO.isnull then
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
    frmPrecios.edProducto.text := QDetallePRO_NOMBRE.value;
    frmPrecios.edPrecio1.text  := format('%n',[dm.Query1.fieldbyname('pro_precio1').asfloat]);
    frmPrecios.edPrecio2.text  := format('%n',[dm.Query1.fieldbyname('pro_precio2').asfloat]);
    frmPrecios.edPrecio3.text  := format('%n',[dm.Query1.fieldbyname('pro_precio3').asfloat]);
    frmPrecios.edPrecio4.text  := format('%n',[dm.Query1.fieldbyname('pro_precio4').asfloat]);
    frmPrecios.showmodal;
    if frmPrecios.Precio <> 'null' then
    begin
      QDetalle.edit;
      QDetalleDEV_PRECIO.value := dm.Query1.fieldbyname(frmPrecios.Precio).asfloat;
      QDetalle.post;
    end;
    frmPrecios.release;
  end;
  Grid.setfocus;
end;

procedure TfrmDevSinFactura.btBuscaClienteClick(Sender: TObject);
begin
  if btBuscaCli.Enabled then
    btBuscaCliClick(Self)
  else
    Grid.SetFocus;
end;

procedure TfrmDevSinFactura.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then btSalirClick(self);
  if key = vk_f5  then btBuscaClienteClick(Self);
  if key = vk_f3  then btLimpiarClick(Self);
  if key = vk_f2  then btGrabarClick(Self);
end;

procedure TfrmDevSinFactura.btSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmDevSinFactura.btNotaClick(Sender: TObject);
begin
  application.createform(tfrmNota, frmNota);
  frmNota.DBMemo1.DataSource := frmDevSinFactura.dsDevolucion;
  frmNota.DBMemo1.DataField := 'DEV_NOTA';
  frmNota.showmodal;
  frmNota.release;
end;

procedure TfrmDevSinFactura.QDevolucionVEN_CODIGOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QDevolucionVEN_CODIGO.isnull then
  begin
    Text := inttostr(QDevolucionVEN_CODIGO.value);
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select ven_nombre, ven_comventa from vendedores');
    dm.Query1.sql.add('where emp_Codigo = :emp');
    dm.Query1.sql.add('and ven_Codigo = :ven');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('ven').Value := QDevolucionVEN_CODIGO.value;
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      tVendedor.text := ''
    else
      tVendedor.text := dm.Query1.fieldbyname('ven_nombre').asstring;
  end
  else
    tVendedor.text := '';
end;

procedure TfrmDevSinFactura.QDetallePRO_RORIGINALChange(Sender: TField);
var
  Prod : String;
  Lote : Integer;
begin
  if (dm.QParametrosPAR_CODIGOPRODUCTO.value = 'O') and (Buscando = False) then
  begin
    if not QDetallePRO_RORIGINAL.isnull then
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
      dm.Query1.sql.add('select p.pro_codigo, p.pro_nombre, p.pro_costo, p.pro_precio1,');
      dm.Query1.sql.add('p.pro_precio2, p.pro_precio3, p.pro_precio4, p.dep_codigo,');
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
      if (Lista.Items.IndexOf(IntToStr(QDetallePRO_CODIGO.Value)) >= 0) and
      (dm.QParametrosPAR_FACREPITEPROD.Value = 'False') then
      begin
        MessageDlg('ESTE PRODUCTO ESTA INCLUIDO EN ESTA FACTURA',
        mtError,[mbok],0);
        Abort;
      end
      else
      begin
        QDetalleDET_VENCE.value        := dm.Query1.fieldbyname('pro_vence').asstring;
        QDetalleDET_MANEJAESCALA.Value := dm.Query1.fieldbyname('pro_escala').asstring;
        QDetallePRO_SERVICIO.Value     := dm.Query1.fieldbyname('pro_servicio').asstring;
        QDetallePRO_RFABRIC.value      := dm.Query1.fieldbyname('pro_rfabric').asstring;
        QDetallePRO_NOMBRE.value       := dm.Query1.fieldbyname('pro_nombre').asstring;
        QDetalleDEV_CONITBIS.value     := dm.Query1.fieldbyname('pro_itbis').asstring;
        QDetalleDEV_COSTO.value        := dm.Query1.fieldbyname('pro_costo').asfloat;
        QDetalleDEV_DESCUENTO.value    := 0;
        QDetalleDEP_CODIGO.value       := dm.Query1.fieldbyname('dep_codigo').asinteger;
        QDetalleDEV_PRECIO.value := dm.Query1.fieldbyname('pro_precio1').asfloat;

        QDetalleDEV_CANTIDAD.Value := 1;
        QDetalle.Post;
        if dm.QParametrosPAR_FACBAJARLINEA.Value = 'True' then
        begin
          QDetalle.Append;
          Grid.SelectedIndex := 0;
        end;
      end;
    end;
  end;
end;

procedure TfrmDevSinFactura.QDevolucionCalcFields(DataSet: TDataSet);
begin
  QDevolucionSubTotal.Value := Total;
end;

procedure TfrmDevSinFactura.FormActivate(Sender: TObject);
begin
  FormatoImp := dm.QParametrosPAR_FORMATODEV.value;

  if not QDevolucion.Active then
  begin
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;
    DBLookupComboBox2.KeyValue := QSucursalsuc_codigo.Value;

    QDevolucion.Parameters.parambyname('numero').Value := -1;
    QDevolucion.Parameters.parambyname('suc').Value := DBLookupComboBox2.KeyValue;
    QDevolucion.open;
    QDevolucion.insert;
  end;
end;

procedure TfrmDevSinFactura.QDevolucionNewRecord(DataSet: TDataSet);
begin
  if dm.QParametrosPAR_ITBISDEFECTO.Value = 'True' then
    QDevoluciondev_conitbis.Value := 'True'
  else
    QDevoluciondev_conitbis.Value := 'False';

  QDevolucionsuc_codigo.Value := QSucursalsuc_codigo.Value;
  QdevolucionFAC_FORMA.Value  := 'X';
  QDevolucionDEV_TOTAL.value  := 0;
  QDevolucionDEV_ITBIS.value  := 0;
  QDevolucionDEV_DESCUENTO.value := 0;
  QDevolucionDEV_FECHA.Value  := Date;
  QDevolucionDEV_ITBIS.Value  := 0;
  QDevolucionDEV_STATUS.Value := 'EMI';
  QDevolucionUSU_CODIGO.Value := dm.Usuario;
  QDevolucionEMP_CODIGO.Value := dm.vp_cia;

  QDetalle.close;
  QDetalle.Parameters.parambyname('emp').Value := dm.vp_cia;
  QDetalle.Parameters.parambyname('numero').Value := -1;
  QDetalle.Parameters.parambyname('suc').Value := -1;
  QDetalle.open;

  Totaliza := True;
end;

procedure TfrmDevSinFactura.edClienteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
  Cliente : integer;
begin
  if key = vk_return then
  begin
    if trim(edCliente.text) <> '' then
    begin
      Query1.close;
      Query1.sql.clear;
      Query1.sql.add('select cli_referencia, cli_codigo, cli_nombre, cli_balance,');
      Query1.sql.add('cli_limite, cli_precio, cli_descuento, ven_codigo, cpa_codigo,');
      Query1.sql.add('cli_direccion, cli_localidad, cli_telefono, cli_fax, cli_facturarbce,');
      Query1.sql.add('cli_facturarvencida, cli_precio, cli_cuenta, pro_codigo');
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
      Cliente := Query1.fieldbyname('cli_codigo').asinteger;

      QDevolucionCLI_CODIGO.value     := Query1.fieldbyname('cli_Codigo').asinteger;
      QDevolucionDEV_NOMBRE.value     := Query1.fieldbyname('cli_nombre').asstring;

      if not Query1.fieldbyname('ven_Codigo').IsNull then
        QDevolucionVEN_CODIGO.Value     := Query1.fieldbyname('ven_Codigo').asinteger;

      Grid.SetFocus;
    end
    else
      edCliente.SetFocus;
  end;
end;

procedure TfrmDevSinFactura.GridKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then Grid.selectedindex := Grid.selectedindex + 1;
  if uppercase(Grid.Columns[Grid.selectedindex].FieldName) = 'DET_MEDIDA' then
  begin
    QDetalle.Edit;
    if uppercase(key) = 'E' then
    begin
      QDetalleDET_MEDIDA.Value := 'Emp';
      //Grid.selectedindex := Grid.selectedindex + 1;
    end
    else if uppercase(key) = 'U' then
    begin
      QDetalleDET_MEDIDA.Value := 'Und';
      //Grid.selectedindex := Grid.selectedindex + 1;
    end;
  end;
end;

procedure TfrmDevSinFactura.GridColEnter(Sender: TObject);
begin
  if Grid.selectedindex = 1 then
     Grid.selectedindex := 2;
     
  if uppercase(Grid.Columns[Grid.selectedindex].FieldName) = 'DET_ESCALA' then
     Grid.selectedindex := Grid.selectedindex + 1;

  if uppercase(Grid.Columns[Grid.selectedindex].FieldName) = 'CALCITBIS' then
     Grid.selectedindex := Grid.selectedindex + 1;

  if uppercase(Grid.Columns[Grid.selectedindex].FieldName) = 'DET_FECHAVENCE' then
    if QDetalleDET_VENCE.Value <> 'True' then
      Grid.SelectedIndex := Grid.SelectedIndex + 1;

  if uppercase(Grid.Columns[Grid.selectedindex].FieldName) = 'VALOR' then
  begin
    Grid.selectedindex := 0;
    QDetalle.Append;
  end;


  if (Grid.selectedindex <> 0) and (QDetallePRO_CODIGO.IsNull)  then
     Grid.selectedindex := 0;
end;

procedure TfrmDevSinFactura.totalizar;
var
  punt : tbookmark;
begin
  if totaliza = true then
  begin
    total := 0;
    Itbis := 0;
    Descuento := 0;
    punt := QDetalle.GetBookmark;
    QDetalle.disablecontrols;
    QDetalle.first;
    while not QDetalle.eof do
    begin
      Total     := Total  + strtofloat(format('%10.2f',[QDetalleDEV_CANTIDAD.value*QDetallePrecioItbis.value]));
      Descuento := Descuento  + strtofloat(format('%10.2f',[QDetalleCalcDesc.value*QDetalleDEV_CANTIDAD.value]));
      Itbis     := Itbis + strtofloat(format('%10.2f',[QDetalleCalcItbis.value*QDetalleDEV_CANTIDAD.value]));
      QDetalle.next;
    end;
    QDetalle.GotoBookmark(punt);
    QDetalle.enablecontrols;
    QDevolucionDEV_ITBIS.value     := strtofloat(format('%10.2f',[Itbis]));
    QDevolucionDEV_TOTAL.value     := strtofloat(format('%10.2f',[(Total+Itbis)]));
  end;
end;

procedure TfrmDevSinFactura.QDetalleAfterPost(DataSet: TDataSet);
begin
  if Totaliza = true then Totalizar;
end;

procedure TfrmDevSinFactura.ckItbisClick(Sender: TObject);
begin
  if QDetalle.Active then
  begin
    Totalizar;
  end;
end;

procedure TfrmDevSinFactura.btGrabarClick(Sender: TObject);
var
  a : integer;
begin
  //verificando si el cierre se hizo para esta fecha
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select cie_fecha from cierre');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.SQL.Add('and cie_fecha = :fec');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('fec').Value    := QDevolucionDEV_FECHA.Value;
  dm.Query1.Open;
  if dm.Query1.RecordCount > 0 then
  begin
    MessageDlg('LA DEVOLUCION NO PUEDE REALIZARSE, DEBIDO A QUE ESTE'+#13+
               'DIA FUE CERRADO.',mtError,[mbok],0);
    Grid.setfocus;
  end
  else if Total <= 0 then
  begin
    showmessage('LA DEVOLUCION NO ESTA COMPLETADA');
    Grid.setfocus;
    abort;
  end
  else
  begin
    if messagedlg('TODOS LOS DATOS ESTAN CORRECTOS?',mtconfirmation,[mbyes,mbno],0) = mryes then
    begin
      QDevolucion.Post;
      QDevolucion.UpdateBatch;

      Totaliza := False;

      //grabando detalle
      QDetalle.disablecontrols;
      QDetalle.first;
      a := 0;
      while not QDetalle.eof do
      begin
        QDetalle.edit;
        a := a + 1;
        QDetalleEMP_CODIGO.Value    := QDevolucionEMP_CODIGO.Value;
        QDetallesuc_codigo.Value    := QDevolucionsuc_codigo.Value;
        QDetalleDET_SECUENCIA.Value := a;
        QDetalleDEV_NUMERO.value    := QDevolucionDEV_NUMERO.value;
        QDetallesuc_codigo.Value    := QDevolucionsuc_codigo.Value;
        QDetalle.post;
        QDetalle.next;
      end;
      QDetalle.enablecontrols;
      QDetalle.UpdateBatch;

      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('execute pr_graba_dev_sin_factura :emp, :suc, :num');
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      dm.Query1.Parameters.parambyname('num').Value := QDevolucionDEV_NUMERO.value;
      dm.Query1.Parameters.parambyname('suc').Value := QDevolucionsuc_codigo.value;
      dm.Query1.ExecSQL;

      if messagedlg('SE HA GENERADO LA DEVOLUCION NUMERO '+inttostr(QDevolucionDEV_NUMERO.value)+
                    ', DESEA IMPRIMIR ESTA DEVOLUCION?',mtconfirmation,[mbyes,mbno],0) = mryes then
      begin
        if dm.QParametrospar_fac_preimpresa.Value = 'False' then
        begin
          if FormatoImp = 2 then
          begin
            application.createform(tRDevolucion, RDevolucion);
            RDevolucion.QDevolucion.Parameters.ParamByName('numero').Value := QDevolucionDEV_NUMERO.value;
            RDevolucion.QDevolucion.Parameters.ParamByName('suc').Value    := QDevolucionsuc_codigo.Value;
            RDevolucion.QDevolucion.open;
            RDevolucion.QDetalle.open;
            //RDevolucion.lbComentario.caption := ' ';
            RDevolucion.PrinterSetup;
            RDevolucion.print;
            RDevolucion.Destroy;
          end
          else if FormatoImp = 3 then
          begin
            Imp40Columnas;
          end;
        end
        else
        begin
          application.createform(tRDevolucionPreImpresa, RDevolucionPreImpresa);
          RDevolucionPreImpresa.QDevolucion.Parameters.ParamByName('numero').Value := QDevolucionDEV_NUMERO.value;
          RDevolucionPreImpresa.QDevolucion.Parameters.ParamByName('suc').Value    := QDevolucionsuc_codigo.Value;
          RDevolucionPreImpresa.QDevolucion.open;
          RDevolucionPreImpresa.QDetalle.open;

          RDevolucionPreImpresa.QRBB.PrinterSetup;
          RDevolucionPreImpresa.QRBB.print;
          RDevolucionPreImpresa.Release;
        end;
      end;

      QDevolucion.Close;
      QDevolucion.Parameters.parambyname('numero').Value := -1;
      QDevolucion.Parameters.parambyname('suc').Value := -1;
      QDevolucion.open;
      QDevolucion.insert;
      //edCliente.setfocus;
    end
    else
      Grid.setfocus;
  end;
end;

procedure TfrmDevSinFactura.Imp40Columnas;
var
  s : array [0..20] of char;
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
    
  Application.createform(tRDevolucion, RDevolucion);

  AssignFile(arch, 'c:\imp.bat');
  rewrite(arch);
  writeln(arch, 'type c:\t.txt > '+puerto);
  closefile(arch);

  AssignFile(arch, 'c:\t.txt');
  rewrite(arch);
  writeln(arch, dm.Centro(trim(dm.QEmpresasEMP_NOMBRE.value)));
  writeln(arch, dm.Centro(trim(DM.QEmpresasEMP_DIRECCION.value)));
  writeln(arch, dm.Centro(trim(DM.QEmpresasEMP_LOCALIDAD.value)));
  writeln(arch, dm.Centro('Telefono : '+trim(dm.QEmpresasEMP_TELEFONO.value)));
  writeln(arch, dm.Centro('RNC: '+dm.QEmpresasEMP_RNC.value));
  writeln(arch, ' ');
  writeln(arch, dm.Centro('D E V O L U C I O N'));
  writeln(arch, ' ');
  writeln(arch, 'Numero  : '+inttostr(QDevolucionDEV_NUMERO.value));
  writeln(arch, 'Cliente : '+tCliente.text);
  writeln(arch, 'Fecha   : '+DateToStr(QDevolucionDEV_FECHA.Value));
  writeln(arch, ' ');
  writeln(arch, 'MONTO   : '+chr(27)+chr(52)+Format('%n',[QdevolucionDEV_TOTAL.value])+chr(27)+chr(53));
  writeln(arch, '----------------------------------------');
  writeln(arch, 'Cant. Descripcion del Producto');
  writeln(arch, '----------------------------------------');
  QDetalle.DisableControls;
  QDetalle.First;
  while not QDetalle.Eof do
  begin
    s := '';
    fillchar(S, 5-length(floattostr(QDetalleDEV_CANTIDAD.value)),' ');
    writeln(arch, floattostr(QDetalleDEV_CANTIDAD.value)+s+
            copy(trim(QDetallePRO_NOMBRE.value),1,32));
    QDetalle.Next;
  end;
  QDetalle.EnableControls;
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, dm.Centro('_____________________'));
  writeln(arch, dm.Centro('Realizado por'));
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  CloseFile(arch);
  winexec('c:\imp.bat',0);
  RDevolucion.Destroy;
end;

procedure TfrmDevSinFactura.QDevolucionBeforePost(DataSet: TDataSet);
begin
  if QDevolucion.State = dsinsert then
  begin
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select isnull(max(dev_numero),0) as maximo');
    dm.Query1.sql.add('from devolucion');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and suc_codigo = :suc');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('suc').Value := QDevolucionsuc_codigo.Value;
    dm.Query1.open;
    QDevolucionDEV_NUMERO.value := dm.Query1.fieldbyname('maximo').asinteger + 1;
  end;
end;

procedure TfrmDevSinFactura.QDetalleNewRecord(DataSet: TDataSet);
begin
  QDetalleDET_MEDIDA.Value := 'Und';
end;

procedure TfrmDevSinFactura.btLimpiarClick(Sender: TObject);
begin
  if messagedlg('DESEA CANCELAR LA DEVOLUCION?',mtconfirmation, [mbyes,mbno],0) = mryes then
  begin
    Totaliza := false;
    QDevolucion.Close;
    QDevolucion.Parameters.parambyname('numero').Value := -1;
    QDevolucion.Parameters.parambyname('suc').Value := -1;
    QDevolucion.open;
    QDevolucion.insert;
    edCliente.setfocus;
  end
  else
    Grid.setfocus;
end;

procedure TfrmDevSinFactura.btEliminarClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR LA FILA?',mtconfirmation,[mbyes,mbno],0) = mryes then
  begin
    QDetalle.Delete;
    Totalizar;
  end;
  Grid.setfocus;
end;

end.

