unit PVENTA122;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, Mask, DBCtrls, Grids, DBGrids, DB,
  IBCustomDataSet, IBQuery, IBUpdateSQL, DateUtils,
  ComCtrls, ADODB, QuerySearchDlgADO;

type
  TfrmDevolucionCompra = class(TForm)
    Panel5: TPanel;
    btGrabar: TBitBtn;
    btLimpiar: TBitBtn;
    btClose: TBitBtn;
    QDevolucion: TADOQuery;
    Panel3: TPanel;
    Label9: TLabel;
    Label10: TLabel;
    Label1: TLabel;
    btProv: TSpeedButton;
    DBEdit5: TDBEdit;
    tCondicion: TEdit;
    edProv: TEdit;
    tProv: TEdit;
    Label14: TLabel;
    tPendiente: TEdit;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    dsDevolucion: TDataSource;
    Search: TQrySearchDlgADO;
    QDetalle: TADOQuery;
    dsDetalle: TDataSource;
    QDetalleValor: TFloatField;
    QDevolucionDEV_FECHA: TDateTimeField;
    QDevolucionDEV_ITBIS: TFloatField;
    QDevolucionDEV_NOMBRE: TIBStringField;
    QDevolucionDEV_NUMERO: TIntegerField;
    QDevolucionDEV_STATUS: TIBStringField;
    QDevolucionDEV_TOTAL: TFloatField;
    QDevolucionEMP_CODIGO: TIntegerField;
    QDevolucionSUP_CODIGO: TIntegerField;
    QDevolucionUSU_CODIGO: TIntegerField;
    QDetalleDEP_CODIGO: TIntegerField;
    QDetalleDET_SECUENCIA: TIntegerField;
    QDetalleDEV_CANTFACTURADA: TFloatField;
    QDetalleDEV_CANTIDAD: TFloatField;
    QDetalleDEV_CONITBIS: TIBStringField;
    QDetalleDEV_COSTO: TFloatField;
    QDetalleDEV_ITBIS: TFloatField;
    QDetalleDEV_NUMERO: TIntegerField;
    QDetalleDEV_TOPECANTIDAD: TFloatField;
    QDetalleEMP_CODIGO: TIntegerField;
    QDetalleFAM_CODIGO: TIntegerField;
    QDetalleMAR_CODIGO: TIntegerField;
    QDetallePRO_CODIGO: TIntegerField;
    QDetallePRO_NOMBRE: TIBStringField;
    QDetallePRO_RFABRIC: TIBStringField;
    QDetallePRO_RORIGINAL: TIBStringField;
    QDetallePRO_SERVICIO: TIBStringField;
    QDetalleDevuelta: TFloatField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Grid: TDBGrid;
    TabSheet2: TTabSheet;
    GridCuentas: TDBGrid;
    QDetalleDET_COSTOEMP: TFloatField;
    QDetalleDET_COSTOITBIS: TFloatField;
    QDetalleDET_COSTOUND: TFloatField;
    QDetalleDET_MEDIDA: TIBStringField;
    QDetalleDET_FECHAVENCE: TDateTimeField;
    QDetallePrecioItbis: TFloatField;
    QDetalleCalcItbis: TFloatField;
    QDetalleCalcDesc: TFloatField;
    QDevolucionDEV_GRABADO: TFloatField;
    QDevolucionDEV_EXCENTO: TFloatField;
    QCuentas: TADOQuery;
    dsCuentas: TDataSource;
    QCuentasCAT_CUENTA: TIBStringField;
    QCuentasCAT_NOMBRE: TIBStringField;
    QCuentasDET_MONTO: TFloatField;
    QCuentasDET_ORIGEN: TIBStringField;
    QCuentasDET_SECUENCIA: TIntegerField;
    QCuentasEMP_CODIGO: TIntegerField;
    QCuentasDEV_NUMERO: TIntegerField;
    btEliminaCta: TBitBtn;
    btBuscaCta: TBitBtn;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label19: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    lbCR: TStaticText;
    lbDB: TStaticText;
    lbBAL: TStaticText;
    Query1: TADOQuery;
    QDevolucionTotal: TFloatField;
    QDevolucionFAC_NUMERO: TIBStringField;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    dsSuc: TDataSource;
    Label21: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    QDevolucionSUC_CODIGO: TIntegerField;
    QDetalleSUC_CODIGO: TIntegerField;
    QCuentasSUC_CODIGO: TIntegerField;
    QSucursalalm_codigo: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    QDevoluciondev_ncf: TStringField;
    DBEdit6: TDBEdit;
    Label6: TLabel;
    QDevoluciondev_ncf_modifica: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormPaint(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edProvKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btProvClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure QDevolucionNewRecord(DataSet: TDataSet);
    procedure QDevolucionFAC_NUMEROChange(Sender: TField);
    procedure GridEnter(Sender: TObject);
    procedure GridColEnter(Sender: TObject);
    procedure GridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btCloseClick(Sender: TObject);
    procedure QDetalleBeforePost(DataSet: TDataSet);
    procedure QDetalleAfterInsert(DataSet: TDataSet);
    procedure QDetalleCalcFields(DataSet: TDataSet);
    procedure QDetalleAfterPost(DataSet: TDataSet);
    procedure btGrabarClick(Sender: TObject);
    procedure QDevolucionBeforePost(DataSet: TDataSet);
    procedure btLimpiarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure QDevolucionDEV_GRABADOChange(Sender: TField);
    procedure btBuscaCtaClick(Sender: TObject);
    procedure QCuentasCAT_CUENTAChange(Sender: TField);
    procedure btEliminaCtaClick(Sender: TObject);
    procedure GridCuentasColEnter(Sender: TObject);
    procedure GridCuentasEnter(Sender: TObject);
    procedure GridCuentasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure QCuentasAfterDelete(DataSet: TDataSet);
    procedure QCuentasAfterPost(DataSet: TDataSet);
    procedure QDevolucionSUP_CODIGOChange(Sender: TField);
    procedure QDevolucionDEV_EXCENTOChange(Sender: TField);
    procedure QDevolucionDEV_ITBISChange(Sender: TField);
    procedure QDevolucionCalcFields(DataSet: TDataSet);
    procedure QDetalleNewRecord(DataSet: TDataSet);
    procedure QCuentasNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    SelCajero, SelCondi, Totaliza, ActBalance, Insertar : boolean;
    descuento, total, Itbis, Pendiente, Anterior, Comision, MontoDesem : double;
    FormatoImp, almacen, cajero : integer;
    Excento, Grabado, Debitos, Creditos : Double;
    CtaCxP, CtaCompra, PuertoImp : String;
    procedure totalizar;
    procedure Imp40Columnas;
    procedure TotalizaCtas;
  end;

var
  frmDevolucionCompra: TfrmDevolucionCompra;

implementation

uses RVENTA03, PVENTA37, PVENTA97, SIGMA01, SIGMA00, RVENTA100;

{$R *.DFM}

procedure TfrmDevolucionCompra.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmDevolucionCompra.FormPaint(Sender: TObject);
begin
  frmDevolucionCompra.top := 5;
  frmDevolucionCompra.left := 0;
end;

procedure TfrmDevolucionCompra.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then close;
  if key = vk_f2  then btGrabarClick(self);
  if key = vk_f3  then btLimpiarClick(self); 
end;

procedure TfrmDevolucionCompra.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmDevolucionCompra.edProvKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select sup_nombre');
    dm.Query1.sql.add('from proveedores');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and sup_codigo = :cod');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edProv.text));
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
    begin
      tProv.text := '';
      showmessage('ESTE PROVEEDOR NO EXISTE');
      edProv.setfocus;
    end
    else
    begin
      QDevolucion.close;
      QDevolucion.Parameters.parambyname('numero').Value := -1;
      QDevolucion.Parameters.parambyname('suc').Value := -1;
      QDevolucion.open;
      QDevolucion.insert;

      tProv.text := dm.Query1.fieldbyname('sup_nombre').asstring;
    end;
  end;
end;

procedure TfrmDevolucionCompra.btProvClick(Sender: TObject);
begin
  search.Query.clear;
  search.AliasFields.clear;
  search.Query.add('select sup_nombre, sup_codigo');
  search.Query.add('from proveedores');
  search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  search.AliasFields.add('Nombre');
  search.AliasFields.add('Código');
  search.ResultField := 'sup_codigo';
  search.Title := 'Proveedores';
  if search.execute then
  begin
    edProv.text := search.valuefield;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select sup_nombre, sup_codigo');
    dm.Query1.sql.add('from proveedores');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and sup_codigo = :sup');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('sup').Value := strtoint(trim(edProv.text));
    dm.Query1.open;

    QDevolucion.close;
    QDevolucion.Parameters.parambyname('numero').Value := -1;
    QDevolucion.Parameters.parambyname('suc').Value := -1;
    QDevolucion.open;
    QDevolucion.insert;

    tProv.text := dm.Query1.fieldbyname('sup_nombre').asstring;
    edProv.SetFocus;
    SelectNext(activecontrol, true, true);
  end;
end;

procedure TfrmDevolucionCompra.FormActivate(Sender: TObject);
begin
  if not QDevolucion.Active then
  begin
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;
    QDevolucion.Parameters.parambyname('numero').Value := -1;
    QDevolucion.Parameters.parambyname('suc').Value := -1;
    QDevolucion.open;
    QDevolucion.insert;
  end;
end;

procedure TfrmDevolucionCompra.QDevolucionNewRecord(DataSet: TDataSet);
begin
   tPendiente.text := '';
  Insertar := True;
  Totaliza := True;
  
  QDevolucionSUC_CODIGO.Value := QSucursalsuc_codigo.Value;
  QDevolucionDEV_FECHA.value  := date;
  QDevolucionDEV_STATUS.value := 'EMI';
  QDevolucionDEV_TOTAL.value  := 0;
  QDevolucionDEV_ITBIS.value  := 0;
  QDevolucionUSU_CODIGO.value := dm.Usuario;
  QDevolucionEMP_CODIGO.value := dm.vp_cia;
  tCondicion.text := '';
  tProv.text := '';

  QDetalle.close;
  QDetalle.Parameters.parambyname('emp').Value := dm.vp_cia;
  QDetalle.Parameters.parambyname('numero').Value := -1;
  QDetalle.Parameters.parambyname('suc').Value := -1;
  QDetalle.open;

  QCuentas.close;
  QCuentas.Parameters.parambyname('emp').Value := dm.vp_cia;
  QCuentas.Parameters.parambyname('num').Value := -1;
  QCuentas.Parameters.parambyname('suc').Value := -1;
  QCuentas.open;
  
end;

procedure TfrmDevolucionCompra.QDevolucionFAC_NUMEROChange(Sender: TField);
var
  Condi, Cajero, a : integer;
begin
  if not QDevolucionFAC_NUMERO.isnull then
  begin
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select p.sup_nombre, f.fac_dias, f.sup_codigo,');
    dm.Query1.sql.add('f.alm_codigo, f.fac_status, f.fac_exento, f.fac_total, f.fac_abono,');
    dm.Query1.sql.add('f.fac_fecha, f.ncf');
    dm.Query1.sql.add('from provfacturas f, proveedores p');
    dm.Query1.sql.add('where f.emp_codigo = p.emp_codigo');
    dm.Query1.sql.add('and f.sup_codigo = p.sup_Codigo');
    dm.Query1.sql.add('and f.emp_codigo = :emp');
    dm.Query1.sql.add('and f.sup_codigo = :sup');
    dm.Query1.sql.add('and f.fac_numero = :num');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('sup').Value := strtoint(trim(edProv.text));
    dm.Query1.Parameters.parambyname('num').Value := QDevolucionFAC_NUMERO.value;
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
    begin
      showmessage('ESTA FACTURA NO EXISTE');
      QDevolucionFAC_NUMERO.Clear;
      abort;
    end
    else if dm.Query1.fieldbyname('fac_status').asstring = 'ANU' then
    begin
      showmessage('ESTA FACTURA ESTA ANULADA');
      QDevolucionFAC_NUMERO.Clear;
      abort;
    end
    else if StrToFloat(format('%10.2F',[dm.Query1.fieldbyname('fac_total').AsFloat])) = 0 then
    begin
      showmessage('ESTA FACTURA NO TIENE NINGUN MONTO');
      QDevolucionFAC_NUMERO.Clear;
      abort;
    end
    else
    begin
      Almacen    := dm.Query1.fieldbyname('alm_codigo').asinteger;
      Pendiente  := strtofloat(format('%10.2f',[dm.Query1.fieldbyname('fac_total').asfloat]))-
                    strtofloat(format('%10.2f',[dm.Query1.fieldbyname('fac_abono').asfloat]));
      Condi      := dm.Query1.fieldbyname('fac_dias').asinteger;
      tCondicion.Text := inttostr(dm.Query1.fieldbyname('fac_dias').asinteger)+' Dias';
      tProv.text := dm.Query1.fieldbyname('sup_nombre').asstring;
      QDevoluciondev_ncf_modifica.Value := dm.Query1.fieldbyname('ncf').asstring;
      QDevolucionDEV_NOMBRE.Value := dm.Query1.fieldbyname('sup_nombre').asstring;
      QDevolucionSUP_CODIGO.value := dm.Query1.fieldbyname('sup_codigo').asinteger;
      tPendiente.text := format('%n',[Pendiente]);

      //Buscando detalle de la factura
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select pro_codigo, pro_nombre, det_costo, ');
      dm.Query1.sql.add('det_cantidad, det_conitbis, det_itbis, ');
      dm.Query1.sql.add('det_cantdevuelta, pro_roriginal, pro_rfabric,');
      dm.Query1.sql.add('det_medida');
      dm.Query1.sql.add('from det_provfacturas');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and sup_codigo   = :sup');
      dm.Query1.sql.add('and fac_numero   = :num');
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      dm.Query1.Parameters.parambyname('sup').Value := strtoint(trim(edProv.text));
      dm.Query1.Parameters.parambyname('num').Value := QDevolucionFAC_NUMERO.value;
      dm.Query1.open;
      dm.Query1.disablecontrols;

      QDetalle.close;
      QDetalle.open;
      a := 0;
      Insertar := True;
      while not dm.Query1.eof do
      begin
        a := a + 1;
        QDetalle.append;
        QDetalleDET_SECUENCIA.value     := a;
        QDetalleEMP_CODIGO.value        := dm.vp_cia;
        QDetallePRO_CODIGO.value        := dm.Query1.fieldbyname('pro_codigo').asinteger;
        QDetalleDEV_COSTO.value         := dm.Query1.fieldbyname('det_costo').asfloat;
        QDetalleDEV_TOPECANTIDAD.value  := dm.Query1.fieldbyname('det_cantidad').asfloat-
                                           dm.Query1.fieldbyname('det_cantdevuelta').asfloat;
        QDetalleDEV_CONITBIS.value      := dm.Query1.fieldbyname('det_conitbis').asstring;
        QDetalleDEV_ITBIS.value         := dm.Query1.fieldbyname('det_itbis').asfloat;
        QDetalleDEV_CANTFACTURADA.value := dm.Query1.fieldbyname('det_cantidad').asfloat;
        QDetallePRO_NOMBRE.value        := dm.Query1.fieldbyname('pro_nombre').asstring;
        QDetallePRO_RORIGINAL.value     := dm.Query1.fieldbyname('pro_roriginal').asstring;
        QDetallePRO_RFABRIC.value       := dm.Query1.fieldbyname('pro_rfabric').asstring;
        QDetalleDET_MEDIDA.Value        := dm.Query1.fieldbyname('det_medida').asstring;
        QDetalle.post;
        dm.Query1.next;
      end;
      dm.Query1.enablecontrols;
      QDetalle.first;
      Insertar := False;
    end;
  end;
end;

procedure TfrmDevolucionCompra.GridEnter(Sender: TObject);
begin
  Grid.SelectedIndex := Grid.Columns.Count-2;
end;

procedure TfrmDevolucionCompra.GridColEnter(Sender: TObject);
begin
  if uppercase(Grid.Columns[Grid.selectedindex].FieldName) <> 'DEV_CANTIDAD' then
    Grid.SelectedIndex := Grid.Columns.Count-2;
end;

procedure TfrmDevolucionCompra.GridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    QDetalle.edit;
    QDetalle.post;
  end;
end;

procedure TfrmDevolucionCompra.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmDevolucionCompra.QDetalleBeforePost(DataSet: TDataSet);
begin
  if format('%10.2f',[QDetalleDEV_CANTIDAD.value]) > format('%10.2f',[QDetalleDEV_TOPECANTIDAD.value]) then
  begin
    showmessage('CANTIDAD A DEVOLVER NO PUEDE SER MAYOR A LA'+#13+
                'CANTIDAD RESTANTE DEL PRODUCTO DE ESTA FACTURA');
    QDetalleDEV_CANTIDAD.clear;
    abort;
  end; 
end;

procedure TfrmDevolucionCompra.QDetalleAfterInsert(DataSet: TDataSet);
begin
  if Insertar = false then QDetalle.cancel;
end;

procedure TfrmDevolucionCompra.totalizar;
var
  punt : tbookmark;
begin
  total := 0;
  Itbis := 0;
  Descuento := 0;
  punt := QDetalle.GetBookmark;
  QDetalle.disablecontrols;
  QDetalle.first;
  Excento := 0;
  Grabado := 0;
  while not QDetalle.eof do
  begin
    Total     := Total  + strtofloat(format('%10.2f',[QDetalleDEV_CANTIDAD.value]))*strtofloat(format('%10.2f',[QDetalleDEV_COSTO.value]));
    if QDetalleDEV_CONITBIS.Value = 'N' then
      Excento := Excento + (QDetallePrecioItbis.Value * QDetalleDEV_CANTIDAD.Value)
    else
      Grabado := Grabado + (QDetallePrecioItbis.Value * QDetalleDEV_CANTIDAD.Value);

    QDetalle.next;
  end;
  QDetalle.GotoBookmark(punt);
  QDetalle.enablecontrols;
  QDevolucionDEV_EXCENTO.value   := Excento;
  QDevolucionDEV_GRABADO.value   := Grabado;
  QDevolucionDEV_TOTAL.value     := (strtofloat(format('%10.2f',[QDevolucionDEV_EXCENTO.value]))+
                         strtofloat(format('%10.2f',[QDevolucionDEV_GRABADO.value]))+
                         strtofloat(format('%10.2f',[QDevolucionDEV_ITBIS.value])));

end;

procedure TfrmDevolucionCompra.QDetalleCalcFields(DataSet: TDataSet);
var
  Venta, NumItbis : Double;
begin
  QDetalleDevuelta.value := QDetalleDEV_CANTFACTURADA.value - QDetalleDEV_TOPECANTIDAD.value;

  if QDetalleDEv_CONITBIS.value = 'S' then
  begin
    NumItbis := strtofloat(format('%10.2f',[(QDetalleDEV_ITBIS.asfloat/100)+1]));
    Venta    := QDetalleDEv_COSTO.value;
    QDetallePrecioItbis.value := Venta;
    QDetalleCalcItbis.value   := ((Venta-QDetalleCalcDesc.value)*QDetalleDEV_ITBIS.Value)/100;
    QDetalleValor.value       := ((Venta-QDetalleCalcDesc.value))*
                                 QDetalleDEv_CANTIDAD.value+(QDetalleCalcItbis.value*QDetalleDEV_CANTIDAD.value);
  end
  else
  begin
    Venta := QDetalleDEv_COSTO.value;
    QDetallePrecioItbis.value := Venta;
    QDetalleValor.value       := (Venta-QDetalleCalcDesc.value)*QDetalleDEv_CANTIDAD.value;
    QDetalleCalcItbis.value   := 0;
  end;
end;

procedure TfrmDevolucionCompra.QDetalleAfterPost(DataSet: TDataSet);
begin
  if Totaliza = true then Totalizar;
end;

procedure TfrmDevolucionCompra.btGrabarClick(Sender: TObject);
var
  desem, a : integer;
  devdinero : string;
begin
if Trim(QDevoluciondev_ncf.Text)<>'' then begin
if not (Length(QDevoluciondev_ncf.Value) IN [11,19]) then begin
          ShowMessage('El NCF contiene '+IntToStr(Length(QDevoluciondev_ncf.Value))+' digitos,'+Char(13)+
                  'Solo se permite 11 o 19 digitos numericos......');
      DBEdit6.SetFocus;
      Abort;
    end;
  end;


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
      QDevolucionSUP_CODIGO.value := strtoint(trim(edProv.text));
      QDevolucion.Post;
      QDevolucion.UpdateBatch;

      Totaliza := False;

      //grabando detalle
      QDetalle.disablecontrols;
      QDetalle.first;
      a := 0;
      while not QDetalle.eof do
      begin
        a := a + 1;
        QDetalle.edit;
        QDetalleDEV_NUMERO.value    := QDevolucionDEV_NUMERO.value;
        QDetalleDET_SECUENCIA.Value := a;
        QDetalleSUC_CODIGO.Value    := QDevolucionSUC_CODIGO.Value;
        QDetalle.post;
        QDetalle.next;
      end;
      QDetalle.enablecontrols;
      QDetalle.UpdateBatch;

      //grabando cuentas
      QCuentas.disablecontrols;
      QCuentas.first;
      a := 0;
      while not QCuentas.eof do
      begin
        a := a + 1;
        QCuentas.edit;
        QCuentasDEV_NUMERO.value    := QDevolucionDEV_NUMERO.value;
        QCuentasDET_SECUENCIA.Value := a;
        QCuentasSUC_CODIGO.Value    := QDevolucionSUC_CODIGO.Value;
        QCuentas.post;
        QCuentas.next;
      end;
      QCuentas.enablecontrols;
      QCuentas.UpdateBatch;

      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('execute pr_graba_dev_compra :emp, :suc, :sup, :num, :alm, :usu');
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      dm.Query1.Parameters.parambyname('num').Value := QDevolucionDEV_NUMERO.value;
      dm.Query1.Parameters.parambyname('sup').Value := QDevolucionSUP_CODIGO.Value;
      dm.Query1.Parameters.parambyname('alm').Value := almacen;
      dm.Query1.Parameters.parambyname('suc').Value := QDevolucionSUC_CODIGO.Value;
      dm.Query1.Parameters.parambyname('usu').Value := DM.vp_usuario;
      dm.Query1.ExecSQL;

      if messagedlg('SE HA GENERADO LA DEVOLUCION NUMERO '+inttostr(QDevolucionDEV_NUMERO.value)+
                    ', DESEA IMPRIMIR ESTA DEVOLUCION?',mtconfirmation,[mbyes,mbno],0) = mryes then
      begin
        application.createform(tRDevolucionCompra, RDevolucionCompra);
        RDevolucionCompra.QDevolucion.Parameters.ParamByName('emp').Value := dm.vp_cia;
        RDevolucionCompra.QDevolucion.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
        RDevolucionCompra.QDevolucion.Parameters.ParamByName('num').Value := QDevolucionDEV_NUMERO.Value;
        RDevolucionCompra.QDevolucion.open;
        RDevolucionCompra.QDetalle.Open;
        if FormatoImp = 2 then
        begin
          RDevolucionCompra.PrinterSetup;
          RDevolucionCompra.print;
          RDevolucionCompra.Destroy;
        end
        else if FormatoImp = 3 then
        begin
          Imp40Columnas;
        end;
      end;
      QDevolucion.Close;
      QDevolucion.Parameters.parambyname('numero').Value := -1;
      QDevolucion.Parameters.parambyname('suc').Value := -1;
      QDevolucion.open;
      QDevolucion.insert;
      edProv.setfocus;
    end
    else
      Grid.setfocus;
  end;
end;

procedure TfrmDevolucionCompra.QDevolucionBeforePost(DataSet: TDataSet);
begin
  if QDevolucion.State = dsinsert then
  begin
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select isnull(max(dev_numero),0) as maximo');
    dm.Query1.sql.add('from devolucioncompra');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and suc_codigo = :suc');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('suc').Value := QDevolucionSUC_CODIGO.Value;
    dm.Query1.open;
    QDevolucionDEV_NUMERO.value := dm.Query1.fieldbyname('maximo').asinteger + 1;
  end;
end;

procedure TfrmDevolucionCompra.btLimpiarClick(Sender: TObject);
begin
  if messagedlg('DESEA CANCELAR LA DEVOLUCION?',mtconfirmation, [mbyes,mbno],0) = mryes then
  begin
    QDevolucion.Close;
    QDevolucion.Parameters.parambyname('numero').Value := -1;
    QDevolucion.Parameters.parambyname('suc').Value := -1;
    QDevolucion.open;
    QDevolucion.insert;
    edProv.setfocus;
  end
  else
    Grid.setfocus;
end;

procedure TfrmDevolucionCompra.FormCreate(Sender: TObject);
var
  a : integer;
begin
  FormatoImp := dm.QParametrosPAR_FORMATODEV.value;

  for a := 0 to (Sender as TForm).ComponentCount -1 DO
  begin
    if Components[a].ClassType = tdbedit then
    begin
      (Components[a] as tdbedit).OnEnter := frmMain.Entra;
      (Components[a] as tdbedit).OnExit := frmMain.sale;
    end;
  end;

  if dm.QParametrosPAR_FACMEDIDA.Value <> 'True' then
  begin
    Grid.Columns[2].Destroy;
    Grid.Columns[0].Width := Grid.Columns[0].Width + 30;
  end;

  if dm.QParametrosPAR_INVMOSTRARVENCE.Value <> 'True' then
  begin
    Grid.Columns[Grid.Columns.Count-3].Destroy;
    Grid.Columns[0].Width := Grid.Columns[0].Width + 55;
  end;

end;

procedure TfrmDevolucionCompra.Imp40Columnas;
var
  arch : textfile;
  s : array [0..20] of char;
  puertopeq : textfile;
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
  writeln(arch, 'Cliente : '+tProv.text);
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

procedure TfrmDevolucionCompra.QDevolucionDEV_GRABADOChange(
  Sender: TField);
begin
  if not QDevolucionDEV_GRABADO.IsNull then
    QDevolucionDEV_ITBIS.Value := strtofloat(format('%10.2f',[(QDevolucionDEV_GRABADO.Value *
                               QDetalleDEV_ITBIS.Value)/100]));

  if (QDevolucionDEV_GRABADO.Value > 0) and (CtaCompra <> '') then
  begin
    if not QCuentas.Locate('cat_cuenta', CtaCompra,[]) then
    Begin
      QCuentas.Append;
      QcuentasCAT_CUENTA.Value := CtaCompra;
      QCuentasDET_ORIGEN.Value := 'Debito';
      QCuentasDET_MONTO.Value  := QDevolucionDEV_GRABADO.Value + QDevolucionDEV_EXCENTO.Value;
      QCuentas.Post;
    End
    else
    Begin
      QCuentas.Edit;
      QcuentasCAT_CUENTA.Value := CtaCompra;
      QCuentasDET_ORIGEN.Value := 'Debito';
      QCuentasDET_MONTO.Value  := QDevolucionDEV_GRABADO.Value + QDevolucionDEV_EXCENTO.Value;
      QCuentas.Post;
    End;
  end;
                               
end;

procedure TfrmDevolucionCompra.btBuscaCtaClick(Sender: TObject);
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
    QcuentasCAT_CUENTA.Value := Search.ValueField;
  end;
end;

procedure TfrmDevolucionCompra.QCuentasCAT_CUENTAChange(Sender: TField);
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
    if dm.Query1.RecordCount = 0 then
    begin
      MessageDlg('ESTA CUENTA NO EXISTE',mtError,[mbok],0);
      QCuentasCAT_CUENTA.Clear;
      Abort;
    end
    else if dm.Query1.FieldByName('cat_movimiento').AsString = 'N' then
    begin
      MessageDlg('ESTA CUENTA NO ACEPTA MOVIMIENTO',mtError,[mbok],0);
      QCuentasCAT_CUENTA.Clear;
      Abort;
    end
    else if dm.Query1.RecordCount > 0 then
    begin
      QCuentas.Edit;
      QCuentasCAT_NOMBRE.Value := dm.Query1.FieldByName('cat_nombre').AsString;
      GridCuentas.SelectedIndex := 2;
    end;
  end;
end;

procedure TfrmDevolucionCompra.btEliminaCtaClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR LA CUENTA?',mtconfirmation,[mbyes,mbno],0) = mryes then
  begin
    QCuentas.Delete
  end;
  GridCuentas.setfocus;
end;

procedure TfrmDevolucionCompra.GridCuentasColEnter(Sender: TObject);
begin
  if GridCuentas.SelectedIndex = 1 then
    GridCuentas.SelectedIndex := GridCuentas.SelectedIndex + 1;
end;

procedure TfrmDevolucionCompra.GridCuentasEnter(Sender: TObject);
begin
  GridCuentas.SelectedIndex := 0;
end;

procedure TfrmDevolucionCompra.GridCuentasKeyDown(Sender: TObject;
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
  if key = vk_f5 then btBuscaCtaClick(Self);
  if key = vk_f6 then btEliminaCtaClick(Self);
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

procedure TfrmDevolucionCompra.TotalizaCtas;
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

procedure TfrmDevolucionCompra.QCuentasAfterDelete(DataSet: TDataSet);
begin
  TotalizaCtas;
end;

procedure TfrmDevolucionCompra.QCuentasAfterPost(DataSet: TDataSet);
begin
  TotalizaCtas;
end;

procedure TfrmDevolucionCompra.QDevolucionSUP_CODIGOChange(Sender: TField);
begin
  if not QDevolucionSUP_CODIGO.IsNull then
  Begin
    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Add('select sup_cuenta, sup_ctacompra from proveedores');
    Query1.SQL.Add('where emp_Codigo = :emp');
    Query1.SQL.Add('and sup_Codigo = :sup');
    Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    Query1.Parameters.ParamByName('sup').Value := QDevolucionSUP_CODIGO.Value;
    Query1.Open;
    //Cuenta de CxP
    if not Query1.FieldByName('sup_cuenta').IsNull then
    begin
      CtaCxP := Query1.FieldByName('sup_cuenta').AsString;
      if not QCuentas.Locate('cat_cuenta', Query1.FieldByName('sup_cuenta').AsString,[]) then
      Begin
        QCuentas.Append;
        QcuentasCAT_CUENTA.Value := CtaCxP;
        QCuentasDET_ORIGEN.Value := 'Credito';
        QCuentasDET_MONTO.Value  := QDevolucionTOTAL.Value;
        QCuentas.Post;
      End;
    end;
    //Cuenta Compra
    if not Query1.FieldByName('sup_ctacompra').IsNull then
    begin
      CtaCompra := Query1.FieldByName('sup_ctacompra').AsString;
      if not QCuentas.Locate('cat_cuenta', Query1.FieldByName('sup_ctacompra').AsString,[]) then
      Begin
        QCuentas.Append;
        QcuentasCAT_CUENTA.Value := CtaCompra;
        QCuentasDET_ORIGEN.Value := 'Debito';
        QCuentasDET_MONTO.Value  := QDevolucionDEV_EXCENTO.Value + QDevolucionDEV_GRABADO.Value;
        QCuentas.Post;
      End
      else
      begin
        QCuentas.Edit;
        QcuentasCAT_CUENTA.Value := CtaCompra;
        QCuentasDET_ORIGEN.Value := 'Debito';
        QCuentasDET_MONTO.Value  := QDevolucionDEV_EXCENTO.Value + QDevolucionDEV_GRABADO.Value;
        QCuentas.Post;
      end;
    end;
  end;
end;

procedure TfrmDevolucionCompra.QDevolucionDEV_EXCENTOChange(
  Sender: TField);
begin
  if (not QDevolucionDEV_EXCENTO.IsNull) and (QDevolucionDEV_EXCENTO.Value > 0)
  and (CtaCompra <> '') then
  begin
    if not QCuentas.Locate('cat_cuenta', CtaCompra,[]) then
    Begin
      QCuentas.Append;
      QcuentasCAT_CUENTA.Value := CtaCompra;
      QCuentasDET_ORIGEN.Value := 'Debito';
      QCuentasDET_MONTO.Value  := QDevolucionDEV_EXCENTO.Value + QDevolucionDEV_GRABADO.Value;
      QCuentas.Post;
    End
    else
    Begin
      QCuentas.Edit;
      QcuentasCAT_CUENTA.Value := CtaCompra;
      QCuentasDET_ORIGEN.Value := 'Debito';
      QCuentasDET_MONTO.Value  := QDevolucionDEV_EXCENTO.Value + QDevolucionDEV_GRABADO.Value;
      QCuentas.Post;
    End;
  end;
  if (QDevolucionDEV_EXCENTO.Value > 0) and (CtaCxP <> '') then
  begin
    if not QCuentas.Locate('cat_cuenta', CtaCxP,[]) then
    Begin
      QCuentas.Append;
      QcuentasCAT_CUENTA.Value := CtaCxP;
      QCuentasDET_ORIGEN.Value := 'Credito';
      QCuentasDET_MONTO.Value  := QDevolucionTOTAL.Value;
      QCuentas.Post;
    End
    else
    Begin
      QCuentas.Edit;
      QcuentasCAT_CUENTA.Value := CtaCxP;
      QCuentasDET_ORIGEN.Value := 'Credito';
      QCuentasDET_MONTO.Value  := QDevolucionTOTAL.Value;
      QCuentas.Post;
    End;
  end;
end;

procedure TfrmDevolucionCompra.QDevolucionDEV_ITBISChange(Sender: TField);
begin
  if (not QDevolucionDEV_ITBIS.IsNull) and (QDevolucionDEV_ITBIS.Value > 0)
  and (not dm.QContabpar_cta_itbis_compra.IsNull) then
  begin
    if not QCuentas.Locate('cat_cuenta', dm.QContabpar_cta_itbis_compra.Value ,[]) then
    Begin
      QCuentas.Append;
      QcuentasCAT_CUENTA.Value := dm.QContabpar_cta_itbis_compra.Value;
      QCuentasDET_ORIGEN.Value := 'Debito';
      QCuentasDET_MONTO.Value  := QDevolucionDEV_ITBIS.Value;
      QCuentas.Post;
    End
    else
    Begin
      QCuentas.Edit;
      QcuentasCAT_CUENTA.Value := dm.QContabpar_cta_itbis_compra.Value;
      QCuentasDET_ORIGEN.Value := 'Debito';
      QCuentasDET_MONTO.Value  := QDevolucionDEV_ITBIS.Value;
      QCuentas.Post;
    End;
  end;
  if (QDevolucionDEV_ITBIS.Value > 0) and (CtaCxP <> '') then
  begin
    if not QCuentas.Locate('cat_cuenta', CtaCxP,[]) then
    Begin
      QCuentas.Append;
      QcuentasCAT_CUENTA.Value := CtaCxP;
      QCuentasDET_ORIGEN.Value := 'Credito';
      QCuentasDET_MONTO.Value  := QDevolucionTOTAL.Value;
      QCuentas.Post;
    End
    else
    Begin
      QCuentas.Edit;
      QcuentasCAT_CUENTA.Value := CtaCxP;
      QCuentasDET_ORIGEN.Value := 'Credito';
      QCuentasDET_MONTO.Value  := QDevolucionTOTAL.Value;
      QCuentas.Post;
    End;
  end;
end;

procedure TfrmDevolucionCompra.QDevolucionCalcFields(DataSet: TDataSet);
begin
  QDevolucionTotal.value := (strtofloat(format('%10.2f',[QDevolucionDEV_EXCENTO.value]))+
                         strtofloat(format('%10.2f',[QDevolucionDEV_GRABADO.value]))+
                         strtofloat(format('%10.2f',[QDevolucionDEV_ITBIS.value])));
end;

procedure TfrmDevolucionCompra.QDetalleNewRecord(DataSet: TDataSet);
begin
  QDetalleEMP_CODIGO.Value := dm.vp_cia;
end;

procedure TfrmDevolucionCompra.QCuentasNewRecord(DataSet: TDataSet);
begin
  QCuentasEMP_CODIGO.Value := dm.vp_cia;
end;

end.
