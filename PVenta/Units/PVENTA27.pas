unit PVENTA27;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, Mask, DBCtrls, Grids, DBGrids, DB,
  IBCustomDataSet, IBQuery, IBUpdateSQL, Spin, ADODB,
  QuerySearchDlgADO, Math, Menus, dxmdaset;

type
  TfrmEntradas = class(TForm)
    Panel2: TPanel;
    Label2: TLabel;
    SpeedButton2: TSpeedButton;
    tSulpidor: TEdit;
    Panel5: TPanel;
    Grid: TDBGrid;
    btBusca: TSpeedButton;
    Label19: TLabel;
    DBEdit10: TDBEdit;
    btGRabar: TSpeedButton;
    btLimpiar: TSpeedButton;
    BitBtn6: TSpeedButton;
    btBuscaProd: TSpeedButton;
    btElimina: TSpeedButton;
    Label9: TLabel;
    DBEdit5: TDBEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    QEntrada: TADOQuery;
    QEntradaEMP_CODIGO: TIntegerField;
    QEntradaENT_CONCEPTO: TIBStringField;
    QEntradaENT_FECHA: TDateTimeField;
    QEntradaENT_ITBIS: TFloatField;
    QEntradaENT_NUMERO: TIntegerField;
    QEntradaENT_STATUS: TIBStringField;
    QEntradaENT_TOTAL: TFloatField;
    QEntradaSUP_CODIGO: TIntegerField;
    dsEntrada: TDataSource;
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
    dsDetalle: TDataSource;
    QDetalleValor: TFloatField;
    edProveedor: TEdit;
    Search: TQrySearchDlgADO;
    QEntradaALM_CODIGO: TIntegerField;
    Label4: TLabel;
    tAlmacen: TEdit;
    QEntradaUSU_CODIGO: TIntegerField;
    QDetalleDET_FECHAVENCE: TDateTimeField;
    QDetalleDET_LOTE: TIntegerField;
    Query1: TADOQuery;
    QDetalleDET_VENCE: TIBStringField;
    dbAlmacen: TDBEdit;
    QDetalleDET_ESCALA: TIBStringField;
    QDetalleDET_MANEJAESCALA: TIBStringField;
    QDetalleDET_MEDIDA: TIBStringField;
    QDetalleCalcItbis: TFloatField;
    QDetallePrecioItbis: TFloatField;
    QDetalleCalcDesc: TFloatField;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    QEntradaSubTotal: TFloatField;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    QDetalleDET_COSTOEMP: TFloatField;
    QDetalleDET_COSTOUND: TFloatField;
    QEntradaSUC_CODIGO: TIntegerField;
    QDetalleSUC_CODIGO: TIntegerField;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    dsSuc: TDataSource;
    QSucursalalm_codigo: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    btalmacen: TSpeedButton;
    DBLookupComboBox2: TDBLookupComboBox;
    Label8: TLabel;
    btserie: TSpeedButton;
    QSerie: TADOQuery;
    QSerieemp_codigo: TIntegerField;
    QSeriesuc_codigo: TIntegerField;
    QSerieent_numero: TIntegerField;
    QSerieser_secuencia: TIntegerField;
    QSerieser_numero: TStringField;
    GridSerie: TStringGrid;
    QSeriepro_codigo: TIntegerField;
    Lista: TListBox;
    BitBtn1: TSpeedButton;
    BitBtn2: TSpeedButton;
    QDetallepro_cantempaque: TBCDField;
    QDetalledet_costound_ant: TBCDField;
    QDetalledet_costoemp_ant: TBCDField;
    QDetallepro_beneficio: TBCDField;
    QDetallepro_beneficio2: TBCDField;
    QDetallepro_beneficio3: TBCDField;
    QDetallepro_beneficio4: TBCDField;
    QDetallepro_precio1: TBCDField;
    QDetallepro_precio2: TBCDField;
    QDetallepro_precio3: TBCDField;
    QDetallepro_precio4: TBCDField;
    QDetalledet_oferta: TBCDField;
    Panel1: TPanel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    sbPrecios: TScrollBox;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    QDetalleValorItbisUnd: TFloatField;
    QDetalleValorItbisEmp: TFloatField;
    QDetallepro_detallado: TStringField;
    QDetalledet_cambiarprecio: TStringField;
    QDetalleCostoNeto: TFloatField;
    QDetalleCalcCosto: TFloatField;
    QDetalleCalcCostoemp: TFloatField;
    QDetallePrecioItbisEmp: TFloatField;
    QDetalleCalcItbisEmp: TFloatField;
    QDetalleCalcDescEmp: TFloatField;
    QDetalleValorEmp: TFloatField;
    QUtil: TADOQuery;
    QEntradaped_numero: TIntegerField;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Query2: TADOQuery;
    QUnidades: TADOQuery;
    btprecios: TBitBtn;
    QUnidadesemp_codigo: TIntegerField;
    QUnidadesent_numero: TIntegerField;
    QUnidadespro_codigo: TIntegerField;
    QUnidadesUnidadID: TStringField;
    QUnidadesPrecio: TBCDField;
    QUnidadesCantidad: TBCDField;
    QUnidadesSecuencia: TIntegerField;
    QUnidadesCredito: TBCDField;
    QUnidadesMinimo: TBCDField;
    QUnidadessuc_codigo: TIntegerField;
    PopupMenu1: TPopupMenu;
    Vercombodelproducto1: TMenuItem;
    N1: TMenuItem;
    Consultarmovimiento1: TMenuItem;
    N2: TMenuItem;
    Pantalladeproductos1: TMenuItem;
    Ajustedeinventario1: TMenuItem;
    DBText1: TDBText;
    Label3: TLabel;
    QDetallepro_unidad_medida: TStringField;
    QDetalleUnidadID: TStringField;
    QDetalleMedida_Precio1: TBCDField;
    QDetalleMedida_Precio2: TBCDField;
    QDetalleMedida_Precio3: TBCDField;
    QDetalleMedida_Precio4: TBCDField;
    QDetalledet_cant_unidad_medida: TBCDField;
    QMedidas: TADOQuery;
    QMedidasPrecio: TBCDField;
    QMedidasCantidad: TBCDField;
    QMedidasNombre: TStringField;
    QMedidasCredito: TBCDField;
    QMedidasMinimo: TBCDField;
    QMedidasUnidadID: TStringField;
    QDetalledet_cant_pendiente: TBCDField;
    N3: TMenuItem;
    Buscarproductoenellistado1: TMenuItem;
    QDetallepro_serializado: TStringField;
    MD_Detalle: TdxMemData;
    MD_Detallepro_codigo: TIntegerField;
    MD_Detalledet_cantidad: TFloatField;
    MD_Detalledet_secuencia: TIntegerField;
    MD_Detallepro_unidad_medida: TStringField;
    qModificaExistencia: TADOQuery;
    qBuscaProd: TADOQuery;
    lbLocSuc: TLabel;
    dbedtcont_numeroSucursal: TDBEdit;
    btLocalidad: TSpeedButton;
    TSucLoc: TEdit;
    QEntradacont_numeroSucursal: TStringField;
    qActulizaProd: TADOQuery;
    QEntradaENT_FECHA_HORA: TDateTimeField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormPaint(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure QEntradaNewRecord(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure QEntradaBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure GridEnter(Sender: TObject);
    procedure GridColEnter(Sender: TObject);
    procedure btBuscaProdClick(Sender: TObject);
    procedure QDetallePRO_CODIGOChange(Sender: TField);
    procedure QDetallePRO_RFABRICChange(Sender: TField);
    procedure QDetallePRO_RORIGINALChange(Sender: TField);
    procedure GridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure QDetalleCalcFields(DataSet: TDataSet);
    procedure SpeedButton2Click(Sender: TObject);
    procedure edProveedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure QDetalleBeforePost(DataSet: TDataSet);
    procedure btGRabarClick(Sender: TObject);
    procedure btBuscaClick(Sender: TObject);
    procedure QDetalleAfterDelete(DataSet: TDataSet);
    procedure QDetalleAfterPost(DataSet: TDataSet);
    procedure btEliminaClick(Sender: TObject);
    procedure btLimpiarClick(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure QDetalleDET_CONITBISChange(Sender: TField);
    procedure QEntradaALM_CODIGOGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure GridKeyPress(Sender: TObject; var Key: Char);
    procedure QEntradaCalcFields(DataSet: TDataSet);
    procedure QDetalleDET_MEDIDAChange(Sender: TField);
    procedure QEntradaSUC_CODIGOChange(Sender: TField);
    procedure btalmacenClick(Sender: TObject);
    procedure btserieClick(Sender: TObject);
    procedure QDetalleBeforeEdit(DataSet: TDataSet);
    procedure QDetalleNewRecord(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure dsEntradaDataChange(Sender: TObject; Field: TField);
    procedure QDetalleDET_COSTOUNDChange(Sender: TField);
    procedure QDetalleDET_COSTOEMPChange(Sender: TField);
    procedure QDetallepro_beneficioChange(Sender: TField);
    procedure QDetallepro_beneficio2Change(Sender: TField);
    procedure QDetallepro_beneficio3Change(Sender: TField);
    procedure QDetallepro_beneficio4Change(Sender: TField);
    procedure GridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure QDetallepro_precio1Change(Sender: TField);
    procedure DBEdit12KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit14KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit17KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit18KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Pantalladeproductos1Click(Sender: TObject);
    procedure btpreciosClick(Sender: TObject);
    procedure Ajustedeinventario1Click(Sender: TObject);
    procedure Crearnotaalproducto1Click(Sender: TObject);
    procedure Vercombodelproducto1Click(Sender: TObject);
    procedure Consultarmovimiento1Click(Sender: TObject);
    procedure QDetallepro_unidad_medidaChange(Sender: TField);
    procedure Buscarproductoenellistado1Click(Sender: TObject);
    procedure QSerieEntAfterInsert(DataSet: TDataSet);
    procedure QSerieEntNewRecord(DataSet: TDataSet);
    procedure QSerieNewRecord(DataSet: TDataSet);
    procedure QSerieAfterInsert(DataSet: TDataSet);
    procedure QSerieBeforeOpen(DataSet: TDataSet);
    procedure QSucursalNewRecord(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure dbedtcont_numeroSucursalChange(Sender: TObject);
    procedure dbedtcont_numeroSucursalKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure btLocalidadClick(Sender: TObject);
  private
    vSer :Boolean;
    vl_accion : Integer;
    procedure BorraSerial(vCod_Producto:string);
    function  Producto_sin_Serializar(const key : string):boolean;
  public
    { Public declarations }
    Sec : integer;
    Ins, Totaliza, Buscando : boolean;
    Total : Double;
    DecisionPrecio, MedidaAlm, PRO_SERVICIO : string;
    Procedure Totalizar;
    procedure precios;

    procedure BuscaProd (campo : string);
  end;

var
  frmEntradas: TfrmEntradas;

implementation

uses PVENTA33, RVENTA37, SIGMA01, SIGMA00, PVENTA41, PVENTA15, PVENTA138,
  PVENTA227, PVENTA121, PVENTA186, PVENTA36, DateUtils, RVENTA37_SARITA;

{$R *.DFM}

procedure TfrmEntradas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmEntradas.FormPaint(Sender: TObject);
begin
  frmEntradas.top := 5;
  frmEntradas.left := 0;
end;

procedure TfrmEntradas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10    then close;
  if key = vk_f2     then btGrabarClick(Self);
  if key = vk_f3     then btLimpiarClick(Self);
  //if key = vk_f6     then btEliminaClick(Self);
end;

procedure TfrmEntradas.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmEntradas.QEntradaNewRecord(DataSet: TDataSet);
var
  a : integer;
begin
  //unidades de medida
  if dm.QParametrospar_inv_unidad_medida.Value = 'True' then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select Nombre from UnidadMedida');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.Open;

    Grid.Columns[3].PickList.Clear;
    dm.Query1.DisableControls;
    while not dm.Query1.Eof do
    begin
      Grid.Columns[3].PickList.Add(dm.Query1.fieldByName('Nombre').AsString);
      dm.Query1.Next;
    end;

    dm.Query1.EnableControls;
  end;

  Total := 0;
  Lista.Items.Clear;

  DecisionPrecio := '';
  tSulpidor.text := '';
  tAlmacen.text := '';
  edProveedor.Text := '';
  //Ins := True;
  Totaliza := True;
  QEntradaSUC_CODIGO.Value := QSucursalsuc_codigo.Value;
  QEntradaEMP_CODIGO.value := dm.vp_cia;
  DBEdit5.ReadOnly :=  False;
  QEntradaENT_FECHA.value  := date;
  QEntradaENT_FECHA_HORA.Value := DM.getFechaBDA;
  QEntradaENT_STATUS.value := 'EMI';
  QEntradaENT_ITBIS.value  := 0;
  QEntradaENT_TOTAL.value  := 0;
  QEntradaUSU_CODIGO.value := dm.Usuario;
  QEntradaALM_CODIGO.Value := DM.QParametrosPAR_INVALMACEN.Value;


  QDetalle.EnableControls;
  QDetalle.close;
  QDetalle.Parameters.parambyname('emp').Value := dm.vp_cia;
  QDetalle.Parameters.parambyname('numero').Value := -1;
  QDetalle.Parameters.parambyname('suc').Value := -1;
  QDetalle.open;

  QUnidades.close;
  QUnidades.Parameters.parambyname('emp').Value := dm.vp_cia;
  QUnidades.Parameters.parambyname('num').Value := -1;
  QUnidades.Parameters.parambyname('suc').Value := -1;
  QUnidades.open;

  QSerie.DisableControls;
  QSerie.close;
  QSerie.Parameters.ParamByName('emp').Value    := dm.vp_cia;
  QSerie.Parameters.ParamByName('suc').Value    := -1;
  QSerie.Parameters.ParamByName('numero').Value := -1;
  QSerie.open;
  QSerie.EnableControls;
  vl_accion := 1;
  MD_Detalle.Close;
  MD_Detalle.Open;

  if ((DM.QParametrosPAR_INVALMACEN.Value = 0) or (DM.QParametrosPAR_INVALMACEN.IsNull)) then begin
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select alm_codigo from sucursales where emp_codigo = '+IntToStr(DM.vp_cia));
  dm.Query1.SQL.Add('and alm_codigo in (select alm_codigo from almacen where emp_codigo = '+IntToStr(DM.vp_cia)+')');
  dm.Query1.Open;
  if DM.Query1.RecordCount > 0 then begin
  dbAlmacen.Enabled   := True;
  btAlmacen.Enabled   := True;
  QEntradaALM_CODIGO.Value := dm.Query1.FieldByName('alm_codigo').AsInteger;
  Exit;
  end
  else
  begin
  MessageDlg('Este almacen no es valido para la sucursal, Favor revisar',mtInformation,[mbOK],0);
  dbAlmacen.SetFocus;
  end;
  end;
    //QEntradaALM_CODIGO.Value := dm.QParametrosPAR_INVALMACEN.Value;
end;

procedure TfrmEntradas.FormActivate(Sender: TObject);
begin
  if not QEntrada.active then
  begin
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;
    if QSucursal.RecordCount > 0 then
    DBLookupComboBox2.KeyValue := QSucursalsuc_codigo.Value else
    begin
      ShowMessage('ESTE USUARIO NO TIENE SUCURSAL ASIGNADA');
      frmEntradas.Close;
    end;

    QEntrada.Parameters.parambyname('emp').Value    := dm.vp_cia;
    QEntrada.Parameters.parambyname('numero').Value := -1;
    QEntrada.Parameters.parambyname('suc').Value    := -1;
    QEntrada.open;
    QEntrada.insert;
  end;
end;

procedure TfrmEntradas.QEntradaBeforePost(DataSet: TDataSet);
var
  alma : integer;
begin
  if QEntrada.state = dsinsert then
  begin
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select isnull(max(ent_numero),0) as maximo');
    dm.Query1.sql.add('from entradainv');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and suc_codigo = :suc');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('suc').Value := QEntradaSUC_CODIGO.Value;
    dm.Query1.open;
    QEntradaENT_NUMERO.value := dm.Query1.fieldbyname('maximo').asinteger + 1;
  end
  else
  begin
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select alm_codigo from entradainv');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and ent_numero = :num');
    dm.Query1.sql.add('and suc_codigo = :suc');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('num').Value := QEntradaENT_NUMERO.value;
    dm.Query1.Parameters.parambyname('suc').Value := QEntradaSUC_CODIGO.Value;
    dm.Query1.Open;
    alma := dm.Query1.FieldByName('alm_codigo').asinteger;

    
  end;
end;

procedure TfrmEntradas.FormCreate(Sender: TObject);
var
  a : integer;
begin
  sbPrecios.Visible := dm.QParametrospar_inv_unidad_medida.Value <> 'True';
  btprecios.Visible := dm.QParametrospar_inv_unidad_medida.Value = 'True';
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

   if dm.QParametrospar_visualizar_cant_empaque.Value <> 'True' then
    begin
      Grid.Columns[8].Visible := False;
      Grid.Columns[2].Visible := False;
      Grid.Columns[8].ReadOnly := True;
      Grid.Columns[2].ReadOnly := True;
      Grid.Columns[1].Width := Grid.Columns[1].Width + 36;
    end;

  if dm.QParametrosPAR_INVMOSTRARVENCE.Value <> 'True' then
  begin
    Grid.Columns[Grid.Columns.Count-2].Destroy;
    Grid.Columns[1].Width := Grid.Columns[1].Width + 45;
  end;

  if dm.QParametrospar_inv_unidad_medida.Value <> 'True' then
  begin
    Grid.Columns[6].Visible := False;
    Grid.Columns[6].ReadOnly := True;
    Grid.Columns[1].Width := Grid.Columns[1].Width + 30;
  end;

  if dm.QParametrosPAR_FACMEDIDA.Value <> 'True' then
  begin
    Grid.Columns[5].Visible := False;
    Grid.Columns[5].ReadOnly := True;
    Grid.Columns[1].Width := Grid.Columns[1].Width + 105;
  end;

  if dm.QParametrospar_fac_oferta.Value <> 'True' then
  begin
      Grid.Columns[4].Visible := False;
      Grid.Columns[4].ReadOnly := True;
      Grid.Columns[1].Width := Grid.Columns[1].Width + 36;
  end;




end;

procedure TfrmEntradas.GridEnter(Sender: TObject);
var
  a : integer;
begin
  //Grid.Columns[2].ReadOnly := false;

  Grid.SelectedIndex := 0;
end;

procedure TfrmEntradas.GridColEnter(Sender: TObject);
begin
 if uppercase(Grid.Columns[Grid.selectedindex].FieldName) = 'PRECIOITBIS' then
    Grid.SelectedIndex := Grid.SelectedIndex + 1;

 if uppercase(Grid.Columns[Grid.selectedindex].FieldName) = 'PRO_NOMBRE' then
    Grid.SelectedIndex := Grid.SelectedIndex + 1;

 if (uppercase(Grid.Columns[Grid.selectedindex].FieldName) = 'DET_OFERTA') AND
    (DM.QParametrospar_fac_oferta.Value <> 'True') then
    Grid.SelectedIndex := Grid.SelectedIndex + 1;

  if (uppercase(Grid.Columns[Grid.selectedindex].FieldName) = 'PRO_CANTEMPAQUE') AND
    (DM.QParametrospar_visualizar_cant_empaque.Value <> 'True')  then
    Grid.SelectedIndex := Grid.SelectedIndex + 1;

  if uppercase(Grid.Columns[Grid.selectedindex].FieldName) = 'PRO_UNIDAD_MEDIDA' then
    Grid.SelectedIndex := Grid.SelectedIndex + 1;

  if uppercase(Grid.Columns[Grid.selectedindex].FieldName) = 'DET_MEDIDA' then
    Grid.SelectedIndex := Grid.SelectedIndex + 1;

  if uppercase(Grid.Columns[Grid.selectedindex].FieldName) = 'CALCITBIS' then
    Grid.SelectedIndex := Grid.SelectedIndex + 1;

  if uppercase(Grid.Columns[Grid.selectedindex].FieldName) = 'DET_FECHAVENCE' then
    if QDetalleDET_VENCE.Value <> 'True' then
      Grid.SelectedIndex := Grid.SelectedIndex + 1;

  if (uppercase(Grid.Columns[Grid.selectedindex].FieldName) = 'DET_COSTOUND') and (UpperCase(QDetalleDET_MEDIDA.Value) = 'EMP') then
    Grid.SelectedIndex := Grid.SelectedIndex + 1;

  if (uppercase(Grid.Columns[Grid.selectedindex].FieldName) = 'DET_COSTOEMP') and (UpperCase(QDetalleDET_MEDIDA.Value) = 'UND') then
    Grid.SelectedIndex := Grid.SelectedIndex + 1;

  if uppercase(Grid.Columns[Grid.selectedindex].FieldName) = 'VALOR' then
  begin
    QDetalle.Append;
    Grid.SelectedIndex := 0;
  end;
end;

procedure TfrmEntradas.btBuscaProdClick(Sender: TObject);
var
  primera : boolean;
begin
  application.createform(tfrmBuscaProducto, frmBuscaProducto);
  Buscando := True;
  primera := true;
  while (frmBuscaProducto.ckactiva.Checked) or (Primera) do
  begin
    frmBuscaProducto.showmodal;
    Primera := false;
    frmBuscaProducto.almacen := QEntradaALM_CODIGO.Value;
    if frmBuscaProducto.seleccion = 1 then
    begin
      QDetalle.Edit;
      if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'I' then
         QDetallePRO_CODIGO.value := frmBuscaProducto.QProductosPRO_CODIGO.value
      else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'F' then
         QDetallePRO_RFABRIC.value := frmBuscaProducto.QProductosPRO_RFABRIC.value
      else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'O' then
         QDetallePRO_RORIGINAL.value := frmBuscaProducto.QProductosPRO_RORIGINAL.value;

      QDetallepro_serializado.value := frmBuscaProducto.QProductosPRO_serializado.value;
      if frmBuscaProducto.ckactiva.Checked then
      begin
        QDetalle.Append;
        Grid.SelectedIndex := 0;
      end;
    end;
  end;
  Buscando := False;
  frmBuscaProducto.release;
  Grid.setfocus;
end;

procedure TfrmEntradas.QDetallePRO_CODIGOChange(Sender: TField);
var
  cod : integer;
begin
  if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'I' then
  begin
    if not QDetallePRO_CODIGO.isnull then
    begin
      BuscaProd('I');
      if Lista.Items.IndexOf(QDetallePRO_CODIGO.AsString) >= 0 then
      begin
        if MessageDlg('Ya este producto existe en la lista, desea continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
        begin
          cod := QDetallePRO_CODIGO.Value;
          QDetalle.Cancel;
          QDetalle.Locate('pro_codigo', cod, []);
        end;
      end;
    end;
  end;
end;

procedure TfrmEntradas.QDetallePRO_RFABRICChange(Sender: TField);
var
  cod : integer;
begin
 
  if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'F' then
  begin
    if not QDetallePRO_RFABRIC.isnull then
    begin
      BuscaProd('F');
      if Lista.Items.IndexOf(QDetallePRO_CODIGO.AsString) >= 0 then
      begin
        if MessageDlg('Ya este producto existe en la lista, desea continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
        begin
          cod := QDetallePRO_CODIGO.Value;
          QDetalle.Cancel;
          QDetalle.Locate('pro_codigo', cod, []);
        end;
      end;
    end;
  end;
end;

procedure TfrmEntradas.QDetallePRO_RORIGINALChange(Sender: TField);
var
  cod : integer;
begin
  if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'O' then
  begin
    if not QDetallePRO_RORIGINAL.isnull then
    begin
      BuscaProd('O');
      if Lista.Items.IndexOf(QDetallePRO_CODIGO.AsString) >= 0 then
      begin
        if MessageDlg('Ya este producto existe en la lista, desea continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
        begin
          cod := QDetallePRO_CODIGO.Value;
          QDetalle.Cancel;
          QDetalle.Locate('pro_codigo', cod, []);
        end;
      end;
    end;
  end;
end;

procedure TfrmEntradas.GridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f4 then btBuscaProdClick(self);
  if key = vk_f5 then btEliminaClick(Self);
  if key = vk_f6 then btserieClick(Self);
  if key = vk_f8 then btpreciosClick(Self);
end;

procedure TfrmEntradas.QDetalleCalcFields(DataSet: TDataSet);
var
  Venta, NumItbis : Double;
  VentaEmp, NumItbisEmp : Double;
begin

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
  QDetalleValorItbisUnd.value := QDetalleCalcCosto.Value + QDetalleDET_COSTOUND.Value;
  QDetalleValorItbisEmp.value := QDetalleCalcCostoemp.Value + QDetalleDET_COSTOEMP.Value;

  if QDetalledet_medida.AsString = 'Und' then
    QDetalleCostoNeto.Value := QDetalleDET_COSTOUND.Value + QDetalleCalcCosto.Value
  else
    QDetalleCostoNeto.Value := QDetalleDET_COSTOEMP.Value + QDetalleCalcCostoEmp.Value;


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
  if QDetalleDET_MEDIDA.Value = 'Emp' then QDetalleValor.Value := QDetalleValorEmp.Value;

  if QDetalleDET_VENCE.Value = 'False' then
     QDetalleDET_FECHAVENCE.ReadOnly := True
  else
     QDetalleDET_FECHAVENCE.ReadOnly := False;
end;

procedure TfrmEntradas.SpeedButton2Click(Sender: TObject);
begin
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
    dm.Query1.sql.add('and sup_status = '+#39+'ACT'+#39);
    dm.Query1.sql.add('and sup_codigo = :sup');
    dm.Query1.Parameters.parambyname('sup').Value := strtoint(search.valuefield);
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    //dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.open;
    tSulpidor.text := dm.Query1.fieldbyname('sup_nombre').asstring;
    QEntradaSUP_CODIGO.value := dm.Query1.fieldbyname('sup_Codigo').asinteger;
    edProveedor.setfocus;
  end;
end;

procedure TfrmEntradas.edProveedorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
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
      //dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.open;
      tSulpidor.text := dm.Query1.fieldbyname('sup_nombre').asstring;
      QEntradaSUP_CODIGO.value := dm.Query1.fieldbyname('sup_codigo').asinteger;
    end;
  end;
end;

procedure TfrmEntradas.QDetalleBeforePost(DataSet: TDataSet);
var
vl_mod_ant, vl_mod_act :string;
begin
  {if dm.QParametrospar_inv_unidad_medida.Value = 'True' then
  begin
    if QDetallepro_precio1.Value < QDetalleCostoNeto.Value then
    begin
      MessageDlg('EL PRECIO NO PUEDE SER MENOR QUE EL COSTO', mtError, [mbok], 0);
      abort;
    end;
  end;}

  
if PRO_SERVICIO = 'TRUE' then
  begin
    MessageDlg('NO PUEDE INCLUIR ESTE PRODUCTO, DEBIDO A QUE'+#13+
               'ES UN SERVICIO',mtError,[mbok],0);
    Abort;
  end;


  IF QEntradaENT_FECHA.Value < StrToDate(FormatDateTime('dd/mm/yyyy',DM.getFechaBDA)) THEN BEGIN
  IF QEntradaALM_CODIGO.Value > 0 THEN BEGIN
  if DM.GetProductoAjustado(QEntradaEMP_CODIGO.Value, QEntradaALM_CODIGO.Value, QDetallePRO_CODIGO.Value, QEntradaENT_FECHA.Value) = True then begin
  MessageDlg('ESTE PRODUCTO TIENE AJUSTE POSTERIOR A LA FECHA DE LA ENTRADA,'+CHAR(13)+' NO ES POSIBLE AGREGAR ESTE PRODUCTO A ESTA ENTRADA...',
             mtWarning,[MBOK],0);
  Exit;
  end;
  end;
  end;

  if trim(QDetalleDET_MEDIDA.Value) = '' then QDetalleDET_MEDIDA.Value := MedidaAlm;
  QDetalleDET_CONITBIS.value := UpperCase(QDetalleDET_CONITBIS.value);

  if (StrToFloat(Format('%10.2F',[QDetalleDET_COSTOUND.Value])) <>
  StrToFloat(Format('%10.2F',[QDetalledet_costound_ant.Value]))) or
  (StrToFloat(Format('%10.2F',[QDetalleDET_COSTOEMP.Value])) <>
  StrToFloat(Format('%10.2F',[QDetalledet_costoemp_ant.Value]))) then
  begin
    QDetalledet_cambiarprecio.Value := 'S';
  end;

  QDetalledet_cambiarprecio.Value := UpperCase(QDetalledet_cambiarprecio.Value);
  if QDetalleDET_MEDIDA.Value = 'Und' then
    QDetalleDET_COSTO.value := QDetalleDET_COSTOUND.Value
  else if QDetalleDET_MEDIDA.Value = 'Emp' then
    QDetalleDET_COSTO.value := QDetalleDET_COSTOEMP.Value;

  if not QDetallePRO_CODIGO.isnull then
    Lista.Items.Add(IntToStr(QDetallePRO_CODIGO.Value));

   if (QDetalleDET_CANTIDAD.AsFloat > QDetalledet_cant_pendiente.AsFloat) and
  (QDetalledet_cant_pendiente.AsFloat > 0) then
  begin
    MessageDlg('No puedes recibir mas de la cantidad pedida', mtError, [mbOK], 0);
    QDetalleDET_CANTIDAD.Clear;
    abort;
  end;
end;

procedure TfrmEntradas.btGRabarClick(Sender: TObject);
var
  a, fila : integer;
begin
if Trim(dbAlmacen.Text)='' then begin
  ShowMessage('Debe indicar el almacen');
  dbAlmacen.Clear;
  dbAlmacen.SetFocus;
  Abort;
  end;
  if Producto_sin_Serializar(EmptyStr) then
     begin
      ShowMessage('HAY PRODUCTOS SERIALIZADOS SIN SERIALIZAR, Verifique...');
      //Exit;
     end;
  if QEntradaALM_CODIGO.IsNull then
  begin
    MessageDlg('DEBE ESPECIFICAR EL ALMACEN',mtError,[mbok],0);
    dbAlmacen.SetFocus;
  end
  else if messagedlg('TODOS LOS DATOS ESTAN CORECTOS?',mtconfirmation,[mbyes,mbno],0)=mryes then
  begin
    totaliza := true;
    QDetalle.edit;
    QDetalle.post;
    Totaliza := False;
    QEntrada.post;
    QEntrada.UpdateBatch;

    QDetalle.disablecontrols;
    QDetalle.First;
    a := 0;
    while not QDetalle.eof do
    begin
      a := a + 1;
      QDetalle.Edit;
      QDetalleDET_SECUENCIA.value := a;
      QDetalleEMP_CODIGO.value    := dm.vp_cia;
      QDetalleENT_NUMERO.value    := QEntradaENT_NUMERO.value;
      QDetalleSUC_CODIGO.Value    := QEntradaSUC_CODIGO.Value;
      QDetalle.post;
      QDetalle.next;
    end;
    QDetalle.enablecontrols;
    QDetalle.UpdateBatch;

    //Unidades de Medica
    QUnidades.disablecontrols;
    QUnidades.First;
    a := 0;
    while not QUnidades.eof do
    begin
      a := a + 1;
      QUnidades.Edit;
      QUnidadesSecuencia.value  := a;
      QUnidadesEMP_CODIGO.value := dm.vp_cia;
      QUnidadesENT_NUMERO.value := QEntradaENT_NUMERO.value;
      QUnidadesSUC_CODIGO.Value := QEntradaSUC_CODIGO.Value;
      QUnidades.post;
      QUnidades.next;
    end;
    QUnidades.enablecontrols;
    QUnidades.UpdateBatch;

    //Numeros de Serie
    if QSerie.Active then
       begin
         QSerie.DisableControls;
         QSerie.First;
         while not QSerie.Eof do
         begin
           QSerie.Edit;
           QSerieent_numero.Value := QEntradaENT_NUMERO.Value;
           QSerieEMP_CODIGO.value := dm.vp_cia;
           QSerieSUC_CODIGO.Value := QEntradaSUC_CODIGO.Value;
           QSerie.Post;
           QSerie.Next;
         end;
         QSerie.EnableControls;
         QSerie.UpdateBatch;
    end;   //}

    //fin Serie

   if vl_accion = 0 then begin
   if not MD_Detalle.IsEmpty then begin
    //dm.ADOSigma.Execute('ALTER TABLE PRODUCTOS DISABLE TRIGGER TR_CAMBIO_PRECIOS');
    MD_Detalle.DisableControls;
    MD_Detalle.First;
    while not MD_Detalle.Eof do begin
    with qModificaExistencia DO BEGIN
    Close;
    Parameters.ParamByName('cant').Value := MD_Detalledet_cantidad.Value;
    Parameters.ParamByName('emp').Value  := QEntradaEMP_CODIGO.Value;
    Parameters.ParamByName('alm').Value  := QEntradaALM_CODIGO.Value;
    Parameters.ParamByName('prod').Value := MD_Detallepro_codigo.Value;
    Parameters.ParamByName('tipo').Value := 0;
    ExecSQL;
    end;
    MD_Detalle.Next;
    end;
    MD_Detalle.EnableControls;
    //dm.ADOSigma.Execute('ALTER TABLE PRODUCTOS ENABLE TRIGGER TR_CAMBIO_PRECIOS');
    end;
    end;


  {  if vl_accion = 1 then begin
    if not QDetalle.IsEmpty then begin
    QDetalle.DisableControls;
    QDetalle.First;
    while not QDetalle.Eof do begin
    with qModificaExistencia DO BEGIN
    Close;
    Parameters.ParamByName('cant').Value := QDetalleDET_CANTIDAD.Value;
    Parameters.ParamByName('emp').Value  := QEntradaEMP_CODIGO.Value;
    Parameters.ParamByName('alm').Value  := QEntradaALM_CODIGO.Value;
    Parameters.ParamByName('prod').Value := QDetallePRO_CODIGO.Value;
    Parameters.ParamByName('tipo').Value := 1;
    ExecSQL;
    end;
    QDetalle.Next;
    end;
    QDetalle.EnableControls;
    end;
    dm.ADOSigma.Execute('ALTER TABLE PRODUCTOS ENABLE TRIGGER TR_CAMBIO_PRECIOS');
    end;   }



    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('execute pr_graba_ent :emp, :suc, :num, :alm, :acc, :usu');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('num').Value := QEntradaENT_NUMERO.value;
    dm.Query1.Parameters.parambyname('alm').Value := QEntradaALM_CODIGO.value;
    dm.Query1.Parameters.parambyname('suc').Value := QEntradaSUC_CODIGO.Value;
    dm.Query1.Parameters.parambyname('usu').Value := dm.vp_usuario;
    dm.Query1.Parameters.parambyname('acc').Value := VL_ACCION;
    dm.Query1.ExecSQL;


    MD_Detalle.Close;
    MD_Detalle.Open;

    if MessageDlg('SE HA GENERADO LA ENTRADA DE ALMACEN NUMERO '+inttostr(QEntradaENT_NUMERO.value)+#13+
                  'DESEA IMPRIMIR ESTA ENTRADA?',mtConfirmation,[mbyes,mbno],0) = mryes then
    begin
    if not (DM.QParametrospar_formato_preimpreso.Value = 'Sarita & Asociados') then
    begin
      if dm.QParametrosPAR_FORMATOCON.Value = 2 then
      begin
      Application.CreateForm(tREntradaAlm, REntradaAlm);
      REntradaAlm.QEntrada.Parameters.ParamByName('numero').Value := QEntradaENT_NUMERO.Value;
      REntradaAlm.QEntrada.Parameters.ParamByName('suc').Value := QEntradaSUC_CODIGO.Value;
      REntradaAlm.QEntrada.Open;
      REntradaAlm.QDetalle.Open;
      REntradaAlm.PrinterSetup;
      REntradaAlm.Print;
      REntradaAlm.Destroy;
      end;
    end
    else
    begin
    Application.CreateForm(TREntradaAlmSarita, REntradaAlmSarita);
      REntradaAlmSarita.QEntrada.Parameters.ParamByName('numero').Value := QEntradaENT_NUMERO.Value;
      REntradaAlmSarita.QEntrada.Parameters.ParamByName('suc').Value := QEntradaSUC_CODIGO.Value;
      REntradaAlmSarita.QEntrada.Open;
      REntradaAlmSarita.QDetalle.Open;
      REntradaAlmSarita.PrinterSetup;
      REntradaAlmSarita.Print;
      REntradaAlmSarita.Destroy;
    end;
    end;






    QEntrada.Close;
    QEntrada.Parameters.parambyname('numero').Value := -1;
    QEntrada.Parameters.parambyname('suc').Value := -1;
    QEntrada.open;
    DBEdit5.setfocus;
    QEntrada.insert;
    dm.GenerarArchivoBalanza;
  end;
end;

procedure TfrmEntradas.btBuscaClick(Sender: TObject);
var
  a, Suc : integer;
begin
  Suc := DBLookupComboBox2.KeyValue;
  Search.Query.clear;
  Search.AliasFields.clear;
  Search.Query.add('select ent_numero, ent_fecha, ent_concepto');
  Search.Query.add('from entradainv');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.Query.add('and ent_status = '+#39+'EMI'+#39);
  if trim(edProveedor.Text) <> '' then
     Search.Query.add('and sup_codigo = '+trim(edProveedor.Text));
  Search.Query.add('and suc_codigo = '+IntToStr(Suc));
  Search.AliasFields.add('N�mero');
  Search.AliasFields.add('Fecha');
  Search.AliasFields.add('Concepto');
  Search.Title := 'Entradas de Almacen';
  Search.ResultField := 'ent_numero';
  if Search.execute then
  begin
    Panel1.Enabled := False;
    buscando := true;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select con_numero from conduce where emp_codigo = :emp');
    dm.Query1.SQL.Add('and ent_numero = :ent and con_status <> '+QuotedStr('ANU'));
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('ent').Value := strtoint(Search.valuefield);
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
    begin
      MessageDlg('ESTA ENTRADA NO PUEDE MODIFICARSE, DEBIDO A '+#13+
                 'QUE SE REALIZO UN CONDUCE O SALIDA DE ALMACEN'+#13+
                 'CON LA MISMA',mtError,[mbok],0);
      Grid.SetFocus;
    end
    else
    begin
      Totaliza := False;
      QEntrada.close;
      QEntrada.Parameters.parambyname('emp').Value := dm.vp_cia;
      QEntrada.Parameters.parambyname('numero').Value := strtoint(Search.valuefield);
      QEntrada.Parameters.parambyname('suc').Value := Suc;
      QEntrada.open;

      if not QEntradaSUP_CODIGO.IsNull then
      begin
        edProveedor.Text := IntToStr(QEntradaSUP_CODIGO.Value);
        dm.Query1.Close;
        dm.Query1.SQL.Clear;
        dm.Query1.SQL.Add('select sup_nombre from proveedores');
        dm.Query1.SQL.Add('where emp_codigo = :emp');
        dm.Query1.SQL.Add('and sup_codigo = :sup');
        dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
        //dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
        dm.Query1.Parameters.ParamByName('sup').Value := QEntradaSUP_CODIGO.Value;
        dm.Query1.Open;
        tSulpidor.Text := dm.Query1.FieldByName('sup_nombre').AsString;
      end
      else
      begin
        edProveedor.Text := '';
        tSulpidor.Text   := '';
      end;

    QSerie.Close;
    QSerie.Parameters.ParamByName('emp').Value    := dm.vp_cia;
    QSerie.Parameters.ParamByName('suc').Value    := Suc; //DBLookupComboBox2.KeyValue;
    QSerie.Parameters.ParamByName('numero').Value := QEntradaENT_NUMERO.Value;
    QSerie.Open;


      QDetalle.close;
      QDetalle.Parameters.parambyname('emp').Value := dm.vp_cia;
      QDetalle.Parameters.parambyname('numero').Value := strtoint(Search.valuefield);
      QDetalle.Parameters.parambyname('suc').Value := Suc;
      QDetalle.open;

     with QDetalle do begin
      if not QDetalle.IsEmpty then begin
      MD_Detalle.Close;
      MD_Detalle.Open;
      QDetalle.First;
      while not QDetalle.Eof do begin
      MD_Detalle.Append;
      MD_Detallepro_codigo.Value        := QDetallePRO_CODIGO.Value;
      MD_Detalledet_cantidad.Value      := QDetalleDET_CANTIDAD.Value;
      MD_Detalledet_secuencia.Value     := QDetalleDET_SECUENCIA.Value;
      MD_Detallepro_unidad_medida.Value := QDetallepro_unidad_medida.Value;
      MD_Detalle.Post;
      QDetalle.Next;
      end;
      QDetalle.EnableControls;
      QDetalle.First;
      end;
      end;


      QDetalle.disablecontrols;
      QDetalle.First;
      lista.Items.Clear;
      for a := QDetalleDET_SECUENCIA.value+1 to 50 do
      begin
        if not QDetallePRO_CODIGO.isnull then
          Lista.Items.Add(IntToStr(QDetallePRO_CODIGO.Value));
        QDetalle.next;
      end;
      QDetalle.first;
      QDetalle.enablecontrols;

      buscando := false;
      Totaliza := True;
      QEntrada.Edit;
      Totalizar;
      DBEdit5.SetFocus;
      vl_accion := 0;
    end;
  end;
end;

procedure TfrmEntradas.Totalizar;
var
  Punt : TBookmark;
  TItbis, grabado : Double;
begin
  if Totaliza = True then
  begin
    Punt := QDetalle.GetBookmark;
    Total := 0;
    grabado := 0;
    QDetalle.disablecontrols;
    QDetalle.first;
    while not QDetalle.eof do
    begin
      if QDetalleDET_MEDIDA.Value = 'Und' then
      begin
        Total  := Total  + QDetalleDET_CANTIDAD.value*QDetallePrecioItbis.value;
        TItbis := TItbis + QDetalleCalcItbis.value*QDetalleDET_CANTIDAD.value;
        if QDetalleDET_CONITBIS.Value = 'S' then
          grabado := grabado + (QDetallePrecioItbis.value*QDetalleDET_CANTIDAD.value);
      end
      else
      begin
        Total  := Total  + QDetalleDET_CANTIDAD.value*QDetallePrecioItbisEmp.value;
        TItbis := TItbis + QDetalleCalcItbisEmp.value*QDetalleDET_CANTIDAD.value;
        if QDetalleDET_CONITBIS.Value = 'S' then
          grabado := grabado + (QDetallePrecioItbisEmp.value*QDetalleDET_CANTIDAD.value);
      end;
      QDetalle.Next;
    end;
    QDetalle.GotoBookmark(Punt);
    QDetalle.enablecontrols;
    QEntradaENT_ITBIS.Value := titbis;
    QEntradaENT_TOTAL.value := Total+QEntradaENT_ITBIS.Value;
  end;
end;

procedure TfrmEntradas.QDetalleAfterDelete(DataSet: TDataSet);
begin
  Totalizar;
end;

procedure TfrmEntradas.QDetalleAfterPost(DataSet: TDataSet);
begin
  Totalizar;
  if QDetalle.RecordCount > 0 then
  DBEdit5.ReadOnly :=  True else
  DBEdit5.ReadOnly :=  False;

  PRO_SERVICIO := '';
end;

procedure TfrmEntradas.btEliminaClick(Sender: TObject);
begin
  if messagedlg('ELIMINAR LA LINEA?',mtconfirmation,[mbyes,mbno],0)=mryes then
  begin
    BorraSerial(QDetallePRO_CODIGO.AsString);
    Lista.Items.Delete(Lista.Items.IndexOf(IntToStr(QDetallePRO_CODIGO.Value)));
    QDetalle.Delete;
  end;
  Grid.SetFocus;
end;

procedure TfrmEntradas.btLimpiarClick(Sender: TObject);
begin
  if messagedlg('DESEA CANCELAR ESTA ENTRADA?',mtconfirmation,[mbyes,mbno],0) = mryes then
  begin
    QEntrada.close;
    QEntrada.Parameters.parambyname('numero').Value := -1;
    QEntrada.open;
    DBEdit5.SetFocus;
    QEntrada.insert;
    vl_accion := 1;
  end
  else
    Grid.SetFocus;
end;

procedure TfrmEntradas.BitBtn6Click(Sender: TObject);
begin
  close;
end;

procedure TfrmEntradas.QDetalleDET_CONITBISChange(Sender: TField);
begin
  if not QDetalleDET_CONITBIS.IsNull then
    if (UpperCase(QDetalleDET_CONITBIS.Value) <> 'S') and
    (UpperCase(QDetalleDET_CONITBIS.Value) <> 'N') then
        QDetalleDET_CONITBIS.Clear;
end;

procedure TfrmEntradas.QEntradaALM_CODIGOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
   if not QEntradaALM_CODIGO.IsNull then
  begin
    Text := IntToStr(QEntradaALM_CODIGO.Value);
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select alm_codigo, alm_nombre, alm_medida');
    dm.Query1.sql.add('from almacen');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and alm_codigo = :alm');
    dm.Query1.Parameters.parambyname('alm').Value := QENTRADAALM_CODIGO.Value;
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.open;
    if dm.Query1.RecordCount > 0 then
    begin
      tAlmacen.text := dm.Query1.fieldbyname('alm_nombre').asstring;
      MedidaAlm     := dm.Query1.fieldbyname('alm_medida').AsString;
    end
    else
    begin
    tAlmacen.Clear;
    dbAlmacen.Clear;
    QEntradaALM_CODIGO.Clear;
    MessageDlg('Debes indicar un almacen valido en la sucursal para esta entrada.....',mtInformation,[mbOK],0);
    end;
end
else
begin
  tAlmacen.Clear;
  dbAlmacen.Clear;
end;
end;

procedure TfrmEntradas.GridKeyPress(Sender: TObject; var Key: Char);
var
  a : integer;
begin
If key = #13 then Grid.selectedindex := Grid.selectedindex + 1;

  if uppercase(Grid.Columns[Grid.selectedindex].FieldName) = 'DET_MEDIDA' then
  begin
    QDetalle.Edit;
    if uppercase(key) = 'E' then
      QDetalleDET_MEDIDA.Value := 'Emp'
    else if uppercase(key) = 'U' then
      QDetalleDET_MEDIDA.Value := 'Und';
  end;
  if uppercase(Grid.Columns[Grid.selectedindex].FieldName) = 'PRO_UNIDAD_MEDIDA' then
  begin
    for a := 0 to Grid.Columns[Grid.selectedindex].PickList.Count-1 do
    begin
      if copy(Grid.Columns[Grid.selectedindex].PickList[a],1,1) = uppercase(key) then
      begin
        QDetalle.Edit;
        QDetallepro_unidad_medida.Clear;
        QDetallepro_unidad_medida.Value := Grid.Columns[Grid.selectedindex].PickList[a];
      end;
    end;
    key := #0;
  end;
end;

procedure TfrmEntradas.QEntradaCalcFields(DataSet: TDataSet);
begin
  QEntradaSubTotal.Value := Total;
end;

procedure TfrmEntradas.QDetalleDET_MEDIDAChange(Sender: TField);
begin
  QDetalle.Edit;
  if QDetalleDET_MEDIDA.Value = 'Und' then
    QDetalleDET_COSTO.value := QDetalleDET_COSTOUND.Value
  else if QDetalleDET_MEDIDA.Value = 'Emp' then
    QDetalleDET_COSTO.value := QDetalleDET_COSTOEMP.Value;
end;

procedure TfrmEntradas.QEntradaSUC_CODIGOChange(Sender: TField);
begin
  QEntradaALM_CODIGO.Value := DM.QParametrosPAR_INVALMACEN.Value;
end;

procedure TfrmEntradas.btalmacenClick(Sender: TObject);
begin
  Search.Query.clear;
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C�digo');
  Search.Query.add('select alm_nombre, alm_codigo');
  Search.Query.add('from almacen');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  //Search.Query.add('where emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.value));
  Search.Title := 'Almacenes';
  Search.ResultField := 'alm_codigo';
  if Search.execute then
  begin
    QEntradaALM_CODIGO.value := StrToInt(Search.ValueField);
    dbAlmacen.setfocus;
  end
  else
  begin
    dbAlmacen.Clear;
    QEntradaALM_CODIGO.Clear;
    tAlmacen.Clear;
  end;
end;

procedure TfrmEntradas.btserieClick(Sender: TObject);
var
  a, fila : integer;
begin
 if QDetalle.State in [dsinsert]then
     QDetalle.Post;
  if QDetalleDET_CANTIDAD.AsInteger > 0 then
  begin
    Application.CreateForm(tfrmSerieFactura, frmSerieFactura);
    with frmSerieFactura do
      begin
        DBText1.DataSource := dsDetalle;
        DBText2.DataSource := dsDetalle;
        DBText3.DataSource := dsDetalle;
        dsMantSerie.DataSet:= QSerie;
        QSerie.Filter   := 'PRO_CODIGO ='+IntToStr(QDetallePRO_CODIGO.Value);
        QSerie.Filtered := True;

        IF not QSerie.Locate('PRO_CODIGO',QDetallePRO_CODIGO.Text,[]) THEN begin
        QSerie.Insert;

        QSeriePRO_CODIGO.Value := QDetallePRO_CODIGO.Value;
        end;



        if ShowModal = mrOk then
        begin
           if QSerie.State in [dsEdit,dsInsert] then
              QSerie.Post;
           vSer := True;
        end
        else
          vSer := false;
      end;
      QSerie.Filter   := '';
      QSerie.Filtered := False;
      QSerie.Refresh;
    frmSerieFactura.Release;
end;
end;

procedure TfrmEntradas.QDetalleBeforeEdit(DataSet: TDataSet);
begin
  Lista.Items.Delete(Lista.Items.IndexOf(IntToStr(QDetallePRO_CODIGO.Value)));
end;

procedure TfrmEntradas.QDetalleNewRecord(DataSet: TDataSet);
begin
  QDetalledet_medida.Value := 'Und';
end;

procedure TfrmEntradas.BitBtn1Click(Sender: TObject);
var
  a, Suc : integer;
  recibida : double;
begin
  Suc := DBLookupComboBox2.KeyValue;
  Search.Query.clear;
  Search.AliasFields.clear;
  Search.Query.add('select ped_numero, ped_fecha, ped_nombre');
  Search.Query.add('from pedidos');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.Query.add('and ped_tipo = '+#39+'S'+#39);
  Search.Query.add('and suc_codigo = '+IntToStr(Suc));
  if trim(edProveedor.Text) <> '' then
    Search.Query.add('and sup_codigo = '+edProveedor.Text);
  Search.Query.add('and (ped_status = '+QuotedStr('EMI')+' or ped_status = '+QuotedStr('PAR')+')');
  Search.AliasFields.add('N�mero');
  Search.AliasFields.add('Fecha');
  Search.AliasFields.add('Proveedor');
  Search.Title := 'Pedidos a proveedores';
  Search.ResultField := 'ped_numero';
  if Search.execute then
  begin
    buscando := true;
    Totaliza := False;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select sup_codigo, ped_nombre');
    dm.Query1.SQL.Add('from pedidos');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and ped_tipo = '+#39+'S'+#39);
    dm.Query1.SQL.Add('and ped_numero = :num');
    dm.Query1.sql.add('and suc_codigo = :suc');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('num').Value := StrToInt(Search.ValueField);
    dm.Query1.Parameters.parambyname('suc').Value := Suc;
    dm.Query1.Open;

    QEntradaped_numero.value := StrToInt(Search.ValueField);
    QEntradaSUP_CODIGO.Value := dm.Query1.FieldByName('sup_codigo').AsInteger;
    edProveedor.Text         := IntToStr(dm.Query1.FieldByName('sup_codigo').AsInteger);
    tSulpidor.Text           := dm.Query1.FieldByName('ped_nombre').AsString;

    QUtil.Close;
    QUtil.SQL.Clear;
    QUtil.SQL.Add('select det_secuencia, pro_codigo, pro_roriginal,');
    QUtil.SQL.Add('pro_rfabric, det_descripcion, det_cantidad,');
    QUtil.SQL.Add('det_precio, det_conitbis, det_itbis, det_costound, det_costoemp,');
    QUtil.sql.add('pro_beneficio, pro_beneficio2, pro_beneficio3, pro_beneficio4,');
    QUtil.sql.add('pro_precio1, pro_precio2, pro_precio3, pro_precio4, det_descuento');
    QUtil.SQL.Add('from det_pedido');
    QUtil.SQL.Add('where emp_codigo = :emp');
    QUtil.SQL.Add('and ped_tipo = '+#39+'S'+#39);
    QUtil.SQL.Add('and ped_numero = :num');
    QUtil.SQL.Add('and suc_codigo = :suc');
    QUtil.SQL.Add('and det_cantidad is not null');
    QUtil.Parameters.ParamByName('emp').Value := dm.vp_cia;
    QUtil.Parameters.ParamByName('num').Value := StrToInt(Search.ValueField);
    QUtil.Parameters.ParamByName('suc').Value := Suc;
    QUtil.Open;

    QDetalle.close;
    QDetalle.open;
    QDetalle.disablecontrols;
    QDetalle.First;
    while not QUtil.Eof do
    begin
      QDetalle.append;
      QDetalleDET_SECUENCIA.Value  := QUtil.FieldByName('det_secuencia').AsInteger;
      QDetalleEMP_CODIGO.Value     := dm.vp_cia;
      QDetalleDET_ITBIS.Value      := QUtil.FieldByName('det_itbis').AsFloat;
      QDetallePRO_CODIGO.Value     := QUtil.FieldByName('pro_codigo').AsInteger;
      QDetallePRO_NOMBRE.Value     := QUtil.FieldByName('det_descripcion').AsString;
      if not QUtil.FieldByName('pro_rfabric').IsNull then
        QDetallePRO_RFABRIC.Value   := QUtil.FieldByName('pro_rfabric').AsString;

      if not QUtil.FieldByName('pro_roriginal').IsNull then
        QDetallePRO_RORIGINAL.Value := QUtil.FieldByName('pro_roriginal').AsString;

      QDetalleENT_NUMERO.value    := QEntradaENT_NUMERO.value;
      QDetalleDET_COSTOUND.Value  := QUtil.FieldByName('det_precio').AsFloat -
                                     ((QUtil.FieldByName('det_precio').AsFloat *
                                     QUtil.FieldByName('det_descuento').AsFloat)/100);
      QDetalleDET_COSTOEMP.Value  := QUtil.FieldByName('det_costoemp').AsFloat;
      QDetalleDET_COSTO.Value     := QUtil.FieldByName('det_precio').AsFloat -
                                     ((QUtil.FieldByName('det_precio').AsFloat *
                                     QUtil.FieldByName('det_descuento').AsFloat)/100); 
      QDetalleDET_CONITBIS.Value  := QUtil.FieldByName('det_conitbis').AsString;

      QDetallePRO_BENEFICIO.Value  := QUtil.fieldbyname('pro_beneficio').AsFloat;
      QDetallePRO_BENEFICIO2.Value := QUtil.fieldbyname('pro_beneficio2').AsFloat;
      QDetallePRO_BENEFICIO3.Value := QUtil.fieldbyname('pro_beneficio3').AsFloat;
      QDetallePRO_BENEFICIO4.Value := QUtil.fieldbyname('pro_beneficio4').AsFloat;
      QDetallePRO_PRECIO1.Value    := QUtil.fieldbyname('pro_precio1').AsFloat;
      QDetallePRO_PRECIO2.Value    := QUtil.fieldbyname('pro_precio2').AsFloat;
      QDetallePRO_PRECIO3.Value    := QUtil.fieldbyname('pro_precio3').AsFloat;
      QDetallePRO_PRECIO4.Value    := QUtil.fieldbyname('pro_precio4').AsFloat;

      //buscando la cantidad ya recibida
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select	sum(isnull(d.det_cantidad,0)) as cant');
      dm.Query1.SQL.Add('from det_entrada d, entradainv e');
      dm.Query1.SQL.Add('where d.emp_codigo = e.emp_codigo');
      dm.Query1.SQL.Add('and d.suc_codigo = e.suc_codigo');
      dm.Query1.SQL.Add('and d.ent_numero = e.ent_numero');
      dm.Query1.SQL.Add('and e.emp_codigo = :emp');
      dm.Query1.SQL.Add('and e.suc_codigo = :suc');
      dm.Query1.SQL.Add('and e.ped_numero = :ped');
      dm.Query1.SQL.Add('and d.pro_codigo = :pro');
      dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
      dm.Query1.Parameters.ParamByName('suc').Value := Suc;
      dm.Query1.Parameters.ParamByName('ped').Value := StrToInt(Search.ValueField);
      dm.Query1.Parameters.ParamByName('pro').Value := QUtil.FieldByName('pro_codigo').AsInteger;
      dm.Query1.Open;
      recibida := dm.Query1.FieldByName('cant').AsFloat;
      QDetalledet_cant_pendiente.Value := QUtil.FieldByName('det_cantidad').AsFloat - recibida;

      QDetalleDET_CANTIDAD.Value   := QDetalledet_cant_pendiente.Value;
      
      QDetalle.Post;

      QUtil.Next;

      Application.ProcessMessages;
    end;

    QDetalle.first;
    QDetalle.enablecontrols;

    buscando := false;
    Totaliza := True;
    QEntrada.Edit;
    Totalizar;
    DBEdit5.SetFocus;
  end;
end;

procedure TfrmEntradas.BitBtn2Click(Sender: TObject);
var
  a, Moneda : integer;
begin
  Search.AliasFields.clear;
  Search.AliasFields.add('Numero');
  Search.AliasFields.add('Nombre del Cliente');
  Search.Query.clear;
  Search.Query.add('select con_numero, substring(con_nombre,1,40) as con_nombre');
  Search.Query.add('from conduce');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.ResultField := 'con_numero';
  Search.Title := 'Conduces';
  if Search.execute then
  begin
    Totaliza := false;
    QDetalle.close;
    QDetalle.open;
    QDetalle.disablecontrols;

    Query1.close;
    Query1.sql.clear;
    Query1.sql.add('select cli_codigo, con_nombre, cli_referencia,');
    Query1.sql.add('con_direccion, con_localidad, ven_codigo,');
    Query1.sql.add('con_telefono, con_fax, con_numero, suc_codigo');
    Query1.sql.add('from conduce');
    Query1.sql.add('where emp_codigo = :emp');
    Query1.sql.add('and con_numero = :numero');
    Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    Query1.Parameters.parambyname('numero').Value := strtoint(search.valuefield);
    Query1.open;

    Query2.close;
    Query2.sql.clear;
    Query2.sql.add('select d.pro_codigo, d.pro_roriginal, d.pro_rfabric,');
    Query2.sql.add('d.det_cantidad, d.det_precio, d.det_conitbis, d.det_itbis,');
    Query2.sql.add('d.det_escala, d.det_manejaescala, d.pro_nombre, d.det_medida,');
    Query2.sql.add('d.det_descuento, d.det_nota, p.pro_costo');
    Query2.sql.add('from det_conduce d, productos p');
    Query2.sql.add('where d.pro_codigo = p.pro_codigo');
    Query2.sql.add('and d.emp_codigo = :emp');
    Query2.sql.add('and d.con_numero = :numero');
    Query2.sql.add('order by d.det_secuencia');
    Query2.Parameters.parambyname('emp').Value := dm.vp_cia;
    Query2.Parameters.parambyname('numero').Value := strtoint(search.valuefield);
    Query2.open;

    Totaliza := false;

    a := 0;
    while not Query2.eof do
    begin
      a := a + 1;
      if not Query2.fieldbyname('pro_codigo').isnull then
      begin
        QDetalle.append;
        QDetalleEMP_CODIGO.value    := dm.vp_cia;
        QDetalleDET_SECUENCIA.value := a;
        QDetallePRO_RORIGINAL.value := Query2.fieldbyname('pro_roriginal').asstring;
        QDetallePRO_RFABRIC.value   := Query2.fieldbyname('pro_rfabric').asstring;
        QDetallePRO_CODIGO.value    := Query2.fieldbyname('pro_codigo').asinteger;
        QDetalleDET_MEDIDA.Value    := Query2.fieldbyname('det_medida').AsString;
        QDetalleDET_CANTIDAD.value  := Query2.fieldbyname('det_cantidad').asfloat;
        QDetalleDET_ITBIS.value     := Query2.fieldbyname('det_itbis').asfloat;
        QDetallePRO_NOMBRE.value    := Query2.fieldbyname('pro_nombre').AsString;
        QDetalleDET_PRECIO.value    := Query2.fieldbyname('det_precio').asfloat;
        QDetalleDET_CONITBIS.value  := Query2.fieldbyname('det_conitbis').asstring;
        QDetalleDET_MANEJAESCALA.Value := Query2.fieldbyname('det_manejaescala').asstring;
        QDetalleDET_ESCALA.Value    := Query2.fieldbyname('det_escala').asstring;
        QDetalleDET_COSTO.Value     := Query2.fieldbyname('pro_costo').asfloat;
        QDetalle.post;
      end;
      Query2.next;
      Application.ProcessMessages;
    end;

    QDetalle.enablecontrols;
    QDetalle.first;

    Totaliza := true;
    totalizar;
    Grid.setfocus;
    vl_accion := 0;
  end;
end;

procedure TfrmEntradas.dsEntradaDataChange(Sender: TObject; Field: TField);
begin
  dbAlmacen.Enabled := dsEntrada.State = dsInsert;
  btalmacen.Enabled := dsEntrada.State = dsInsert;
end;

procedure TfrmEntradas.precios;
var
  tcosto, rdesde, rhasta, rvalor : double;
  nValor, nEntero : String;
begin
  if QDetallepro_cantempaque.Value > 0 then
  begin
    //Precio al Detalle
    //Unidad
    //Precio1
    if QDetallePRO_BENEFICIO.Value > 0 then
      if dm.QParametrosPAR_PRECIOUND.Value = 'Precio1' then
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QDetallePRO_PRECIO1.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisUnd.Value+((QDetalleValorItbisUnd.Value*QDetallePRO_BENEFICIO.Value)/100))]))
        else
          QDetallePRO_PRECIO1.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOUND.Value+((QDetalleDET_COSTOUND.Value*QDetallePRO_BENEFICIO.Value)/100))]));
    //Precio2
    if QDetallePRO_BENEFICIO2.Value > 0 then
      if dm.QParametrosPAR_PRECIOUND.Value = 'Precio2' then
         if dm.QParametrospar_itbisincluido.Value = 'True' then
           QDetallePRO_PRECIO2.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisUnd.Value+((QDetalleValorItbisUnd.Value*QDetallePRO_BENEFICIO2.Value)/100))]))
         else
           QDetallePRO_PRECIO2.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOUND.Value+((QDetalleDET_COSTOUND.Value*QDetallePRO_BENEFICIO2.Value)/100))]));
    //Precio3
    if QDetallePRO_BENEFICIO3.Value > 0 then
      if dm.QParametrosPAR_PRECIOUND.Value = 'Precio3' then
         if dm.QParametrospar_itbisincluido.Value = 'True' then
           QDetallePRO_PRECIO3.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisUnd.Value+((QDetalleValorItbisUnd.Value*QDetallePRO_BENEFICIO3.Value)/100))]))
         else
           QDetallePRO_PRECIO3.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOUND.Value+((QDetalleDET_COSTOUND.Value*QDetallePRO_BENEFICIO3.Value)/100))]));
    //Precio4
    if QDetallePRO_BENEFICIO4.Value > 0 then
      if dm.QParametrosPAR_PRECIOUND.Value = 'Precio4' then
         if dm.QParametrospar_itbisincluido.Value = 'True' then
           QDetallePRO_PRECIO4.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisUnd.Value+((QDetalleValorItbisUnd.Value*QDetallePRO_BENEFICIO4.Value)/100))]))
         else
           QDetallePRO_PRECIO4.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOUND.Value+((QDetalleDET_COSTOUND.Value*QDetallePRO_BENEFICIO4.Value)/100))]));


    //Empaque
    //Precio1
    if QDetallePRO_BENEFICIO.Value > 0 then
      if dm.QParametrosPAR_PRECIOEMP.Value = 'Precio1' then
         if dm.QParametrospar_itbisincluido.Value = 'True' then
           QDetallePRO_PRECIO1.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisEmp.Value+((QDetalleValorItbisEmp.Value*QDetallePRO_BENEFICIO.Value)/100))]))
         else
           QDetallePRO_PRECIO1.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOEMP.Value+((QDetalleDET_COSTOEMP.Value*QDetallePRO_BENEFICIO.Value)/100))]));

    //Precio2
    if QDetallePRO_BENEFICIO2.Value > 0 then
      if dm.QParametrosPAR_PRECIOEMP.Value = 'Precio2' then
         if dm.QParametrospar_itbisincluido.Value = 'True' then
           QDetallePRO_PRECIO2.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisEmp.Value+((QDetalleValorItbisEmp.Value*QDetallePRO_BENEFICIO2.Value)/100))]))
         else
           QDetallePRO_PRECIO2.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOEMP.Value+((QDetalleDET_COSTOEMP.Value*QDetallePRO_BENEFICIO2.Value)/100))]));

    //Precio3
    if QDetallePRO_BENEFICIO3.Value > 0 then
      if dm.QParametrosPAR_PRECIOEMP.Value = 'Precio3' then
         if dm.QParametrospar_itbisincluido.Value = 'True' then
           QDetallePRO_PRECIO3.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisEmp.Value+((QDetalleValorItbisEmp.Value*QDetallePRO_BENEFICIO3.Value)/100))]))
         else
           QDetallePRO_PRECIO3.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOEMP.Value+((QDetalleDET_COSTOEMP.Value*QDetallePRO_BENEFICIO3.Value)/100))]));

    //Precio4
    if QDetallePRO_BENEFICIO4.Value > 0 then
      if dm.QParametrosPAR_PRECIOEMP.Value = 'Precio4' then
         if dm.QParametrospar_itbisincluido.Value = 'True' then
           QDetallePRO_PRECIO4.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisEmp.Value+((QDetalleValorItbisEmp.Value*QDetallePRO_BENEFICIO4.Value)/100))]))
         else
           QDetallePRO_PRECIO4.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOEMP.Value+((QDetalleDET_COSTOEMP.Value*QDetallePRO_BENEFICIO4.Value)/100))]));

    //Empaque
    //Precio1
    if QDetallePRO_BENEFICIO.Value > 0 then
    begin
      if dm.QParametrosPAR_PRECIOEMP.Value = 'Ninguno' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QDetallePRO_PRECIO1.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisUnd.Value+((QDetalleValorItbisUnd.Value*QDetallePRO_BENEFICIO.Value)/100))]))
        else
          QDetallePRO_PRECIO1.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOUND.Value+((QDetalleDET_COSTOUND.Value*QDetallePRO_BENEFICIO.Value)/100))]));
      end
      else if dm.QParametrosPAR_PRECIOEMP.Value = 'Precio1' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QDetallePRO_PRECIO1.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisEmp.Value+((QDetalleValorItbisEmp.Value*QDetallePRO_BENEFICIO.Value)/100))]))
        else
          QDetallePRO_PRECIO1.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOEMP.Value+((QDetalleDET_COSTOEMP.Value*QDetallePRO_BENEFICIO.Value)/100))]));
      end;
    end;

    //Precio2
    if QDetallePRO_BENEFICIO2.Value > 0 then
    begin
      if dm.QParametrosPAR_PRECIOEMP.Value = 'Ninguno' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QDetallePRO_PRECIO2.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisUnd.Value+((QDetalleValorItbisUnd.Value*QDetallePRO_BENEFICIO2.Value)/100))]))
        else
          QDetallePRO_PRECIO2.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOUND.Value+((QDetalleDET_COSTOUND.Value*QDetallePRO_BENEFICIO2.Value)/100))]));
      end
      else if dm.QParametrosPAR_PRECIOEMP.Value = 'Precio2' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QDetallePRO_PRECIO2.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisEmp.Value+((QDetalleValorItbisEmp.Value*QDetallePRO_BENEFICIO2.Value)/100))]))
        else
          QDetallePRO_PRECIO2.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOEMP.Value+((QDetalleDET_COSTOEMP.Value*QDetallePRO_BENEFICIO2.Value)/100))]));
      end;
    end;

    //Precio3
    if QDetallePRO_BENEFICIO3.Value > 0 then
    begin
      if dm.QParametrosPAR_PRECIOEMP.Value = 'Ninguno' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QDetallePRO_PRECIO3.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisUnd.Value+((QDetalleValorItbisUnd.Value*QDetallePRO_BENEFICIO3.Value)/100))]))
        else
          QDetallePRO_PRECIO3.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOUND.Value+((QDetalleDET_COSTOUND.Value*QDetallePRO_BENEFICIO3.Value)/100))]));
      end
      else if dm.QParametrosPAR_PRECIOEMP.Value = 'Precio3' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QDetallePRO_PRECIO3.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisEmp.Value+((QDetalleValorItbisEmp.Value*QDetallePRO_BENEFICIO3.Value)/100))]))
        else
          QDetallePRO_PRECIO3.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOEMP.Value+((QDetalleDET_COSTOEMP.Value*QDetallePRO_BENEFICIO3.Value)/100))]));
      end;
    end;

    //Precio4
    if QDetallePRO_BENEFICIO4.Value > 0 then
    begin
      if dm.QParametrosPAR_PRECIOEMP.Value = 'Ninguno' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QDetallePRO_PRECIO4.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisUnd.Value+((QDetalleValorItbisUnd.Value*QDetallePRO_BENEFICIO4.Value)/100))]))
        else
          QDetallePRO_PRECIO4.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOUND.Value+((QDetalleDET_COSTOUND.Value*QDetallePRO_BENEFICIO4.Value)/100))]));
      end
      else if dm.QParametrosPAR_PRECIOEMP.Value = 'Precio4' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QDetallePRO_PRECIO4.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisEmp.Value+((QDetalleValorItbisEmp.Value*QDetallePRO_BENEFICIO4.Value)/100))]))
        else
          QDetallePRO_PRECIO4.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOEMP.Value+((QDetalleDET_COSTOEMP.Value*QDetallePRO_BENEFICIO4.Value)/100))]));
      end;
    end;

    //Precio al x Mayor
    //Unidad
    //Precio1
    if QDetallePRO_BENEFICIO.Value > 0 then
    begin
      if dm.QParametrospar_preciound_m.Value = 'Ninguno' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QDetallePRO_PRECIO1.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisUnd.Value+((QDetalleValorItbisUnd.Value*QDetallePRO_BENEFICIO.Value)/100))]))
        else
          QDetallePRO_PRECIO1.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOUND.Value+((QDetalleDET_COSTOUND.Value*QDetallePRO_BENEFICIO.Value)/100))]));
      end
      else if dm.QParametrospar_preciound_m.Value = 'Precio1' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QDetallePRO_PRECIO1.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisUnd.Value+((QDetalleValorItbisUnd.Value*QDetallePRO_BENEFICIO.Value)/100))]))
        else
          QDetallePRO_PRECIO1.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOUND.Value+((QDetalleDET_COSTOUND.Value*QDetallePRO_BENEFICIO.Value)/100))]));
      end;
    end;

    //Precio2
    if QDetallePRO_BENEFICIO2.Value > 0 then
    begin
      if dm.QParametrospar_preciound_m.Value = 'Ninguno' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QDetallePRO_PRECIO2.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisUnd.Value+((QDetalleValorItbisUnd.Value*QDetallePRO_BENEFICIO2.Value)/100))]))
        else
          QDetallePRO_PRECIO2.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOUND.Value+((QDetalleDET_COSTOUND.Value*QDetallePRO_BENEFICIO2.Value)/100))]));
      end
      else if dm.QParametrospar_preciound_m.Value = 'Precio2' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QDetallePRO_PRECIO2.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisUnd.Value+((QDetalleValorItbisUnd.Value*QDetallePRO_BENEFICIO2.Value)/100))]))
        else
          QDetallePRO_PRECIO2.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOUND.Value+((QDetalleDET_COSTOUND.Value*QDetallePRO_BENEFICIO2.Value)/100))]));
      end;
    end;

    //Precio3
    if QDetallePRO_BENEFICIO3.Value > 0 then
    begin
      if dm.QParametrospar_preciound_m.Value = 'Ninguno' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QDetallePRO_PRECIO3.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisUnd.Value+((QDetalleValorItbisUnd.Value*QDetallePRO_BENEFICIO3.Value)/100))]))
        else
          QDetallePRO_PRECIO3.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOUND.Value+((QDetalleDET_COSTOUND.Value*QDetallePRO_BENEFICIO3.Value)/100))]));
      end
      else if dm.QParametrospar_preciound_m.Value = 'Precio3' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QDetallePRO_PRECIO3.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisUnd.Value+((QDetalleValorItbisUnd.Value*QDetallePRO_BENEFICIO3.Value)/100))]))
        else
          QDetallePRO_PRECIO3.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOUND.Value+((QDetalleDET_COSTOUND.Value*QDetallePRO_BENEFICIO3.Value)/100))]));
      end;
    end;

    //Precio4
    if QDetallePRO_BENEFICIO4.Value > 0 then
    begin
      if dm.QParametrospar_preciound_m.Value = 'Ninguno' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QDetallePRO_PRECIO4.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisUnd.Value+((QDetalleValorItbisUnd.Value*QDetallePRO_BENEFICIO4.Value)/100))]))
        else
          QDetallePRO_PRECIO4.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOUND.Value+((QDetalleDET_COSTOUND.Value*QDetallePRO_BENEFICIO4.Value)/100))]));
      end
      else if dm.QParametrospar_preciound_m.Value = 'Precio4' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QDetallePRO_PRECIO4.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisUnd.Value+((QDetalleValorItbisUnd.Value*QDetallePRO_BENEFICIO4.Value)/100))]))
        else
          QDetallePRO_PRECIO4.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOUND.Value+((QDetalleDET_COSTOUND.Value*QDetallePRO_BENEFICIO4.Value)/100))]));
      end;
    end;

    //Empaque
    //Precio1
    if QDetallePRO_BENEFICIO.Value > 0 then
    begin
      if dm.QParametrospar_precioemp_m.Value = 'Ninguno' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QDetallePRO_PRECIO1.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisUnd.Value+((QDetalleValorItbisUnd.Value*QDetallePRO_BENEFICIO.Value)/100))]))
        else
          QDetallePRO_PRECIO1.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOUND.Value+((QDetalleDET_COSTOUND.Value*QDetallePRO_BENEFICIO.Value)/100))]));
      end
      else if dm.QParametrospar_precioemp_m.Value = 'Precio1' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QDetallePRO_PRECIO1.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisEmp.Value+((QDetalleValorItbisEmp.Value*QDetallePRO_BENEFICIO.Value)/100))]))
        else
          QDetallePRO_PRECIO1.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOEMP.Value+((QDetalleDET_COSTOEMP.Value*QDetallePRO_BENEFICIO.Value)/100))]));
      end;
    end;

    //Precio2
    if QDetallePRO_BENEFICIO2.Value > 0 then
    begin
      if dm.QParametrospar_precioemp_m.Value = 'Ninguno' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QDetallePRO_PRECIO2.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisUnd.Value+((QDetalleValorItbisUnd.Value*QDetallePRO_BENEFICIO2.Value)/100))]))
        else
          QDetallePRO_PRECIO2.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOUND.Value+((QDetalleDET_COSTOUND.Value*QDetallePRO_BENEFICIO2.Value)/100))]));
      end
      else if dm.QParametrospar_precioemp_m.Value = 'Precio2' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QDetallePRO_PRECIO2.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisEmp.Value+((QDetalleValorItbisEmp.Value*QDetallePRO_BENEFICIO2.Value)/100))]))
        else
          QDetallePRO_PRECIO2.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOEMP.Value+((QDetalleDET_COSTOEMP.Value*QDetallePRO_BENEFICIO2.Value)/100))]));
      end;
    end;

    //Precio3
    if QDetallePRO_BENEFICIO3.Value > 0 then
    begin
      if dm.QParametrospar_precioemp_m.Value = 'Ninguno' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QDetallePRO_PRECIO3.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisUnd.Value+((QDetalleValorItbisUnd.Value*QDetallePRO_BENEFICIO3.Value)/100))]))
        else
          QDetallePRO_PRECIO3.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOUND.Value+((QDetalleDET_COSTOUND.Value*QDetallePRO_BENEFICIO3.Value)/100))]));
      end
      else if dm.QParametrospar_precioemp_m.Value = 'Precio3' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QDetallePRO_PRECIO3.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisEmp.Value+((QDetalleValorItbisEmp.Value*QDetallePRO_BENEFICIO3.Value)/100))]))
        else
          QDetallePRO_PRECIO3.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOEMP.Value+((QDetalleDET_COSTOEMP.Value*QDetallePRO_BENEFICIO3.Value)/100))]));
      end;
    end;

    //Precio4
    if QDetallePRO_BENEFICIO4.Value > 0 then
    begin
      if dm.QParametrospar_precioemp_m.Value = 'Ninguno' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QDetallePRO_PRECIO4.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisUnd.Value+((QDetalleValorItbisUnd.Value*QDetallePRO_BENEFICIO4.Value)/100))]))
        else
          QDetallePRO_PRECIO4.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOUND.Value+((QDetalleDET_COSTOUND.Value*QDetallePRO_BENEFICIO4.Value)/100))]));
      end
      else if dm.QParametrospar_precioemp_m.Value = 'Precio4' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QDetallePRO_PRECIO4.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisEmp.Value+((QDetalleValorItbisEmp.Value*QDetallePRO_BENEFICIO4.Value)/100))]))
        else
          QDetallePRO_PRECIO4.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOEMP.Value+((QDetalleDET_COSTOEMP.Value*QDetallePRO_BENEFICIO4.Value)/100))]));
      end;
    end;
  end;
  if QDetallepro_cantempaque.Value = 0 then begin
    if (QDetalleDET_COSTOEMP.Value = 0) or (QDetalleDET_COSTOEMP.IsNull) then
    begin
      if dm.QParametrospar_itbisincluido.Value = 'True' then
      begin
        if QDetallePRO_BENEFICIO.Value > 0 then
          QDetallePRO_PRECIO1.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisUnd.Value+((QDetalleValorItbisUnd.Value*QDetallePRO_BENEFICIO.Value)/100))]));

        if QDetallePRO_BENEFICIO2.Value > 0 then
          QDetallePRO_PRECIO2.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisUnd.Value+((QDetalleValorItbisUnd.Value*QDetallePRO_BENEFICIO2.Value)/100))]));

        if QDetallePRO_BENEFICIO3.Value > 0 then
          QDetallePRO_PRECIO3.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisUnd.Value+((QDetalleValorItbisUnd.Value*QDetallePRO_BENEFICIO3.Value)/100))]));

        if QDetallePRO_BENEFICIO4.Value > 0 then
          QDetallePRO_PRECIO4.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisUnd.Value+((QDetalleValorItbisUnd.Value*QDetallePRO_BENEFICIO4.Value)/100))]));
      end
      else
      begin
        if QDetallePRO_BENEFICIO.Value > 0 then
          QDetallePRO_PRECIO1.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOUND.Value+((QDetalleDET_COSTOUND.Value*QDetallePRO_BENEFICIO.Value)/100))]));

        if QDetallePRO_BENEFICIO2.Value > 0 then
          QDetallePRO_PRECIO2.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOUND.Value+((QDetalleDET_COSTOUND.Value*QDetallePRO_BENEFICIO2.Value)/100))]));

        if QDetallePRO_BENEFICIO3.Value > 0 then
          QDetallePRO_PRECIO3.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOUND.Value+((QDetalleDET_COSTOUND.Value*QDetallePRO_BENEFICIO3.Value)/100))]));

        if QDetallePRO_BENEFICIO4.Value > 0 then
          QDetallePRO_PRECIO4.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOUND.Value+((QDetalleDET_COSTOUND.Value*QDetallePRO_BENEFICIO4.Value)/100))]));
      end;
    end;
  end;

 //Redondeo
  {if dm.QParametrospar_redondeo.Value = 'True' then
  begin
    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Add('select par_desde, par_hasta, par_valor, par_sumar from redondeo_precios where emp_codigo = :emp');
    Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    Query1.Open;
    Query1.First;
    while not Query1.Eof do
    begin
      //Precio1
      if (Frac(StrToFloat(Format('%10.2F',[QDetallePRO_PRECIO1.Value]))) >= StrToFloat(Format('%10.2F',[Query1.FieldByName('par_desde').AsFloat]))) and
      (Frac(StrToFloat(Format('%10.2F',[QDetallePRO_PRECIO1.Value]))) <= StrToFloat(Format('%10.2F',[Query1.FieldByName('par_hasta').AsFloat]))) then
      begin
        if UpperCase(Query1.FieldByName('par_sumar').Value) <> 'S' then
        begin
          nEntero := Copy(FloatToStr(QDetallePRO_PRECIO1.Value), 1,
                     Pos('.',FloatToStr(QDetallePRO_PRECIO1.Value))-1);
          nValor  := nEntero+Copy(Query1.FieldByName('par_valor').AsString,pos('.',Query1.FieldByName('par_valor').AsString),3);
        end
        else
        begin
          nEntero := Copy(FloatToStr(QDetallePRO_PRECIO1.Value), 1,
                     Pos('.',FloatToStr(QDetallePRO_PRECIO1.Value))-1);
          nValor  := (FloatToStr((strtofloat(nEntero)+Query1.FieldByName('par_valor').AsFloat)))+'.00';
        end;
        QDetallePRO_PRECIO1.Value := StrToFloat(nValor)
      end;

      //Precio2
      if (Frac(StrToFloat(Format('%10.2F',[QDetallePRO_PRECIO2.Value]))) >= StrToFloat(Format('%10.2F',[Query1.FieldByName('par_desde').AsFloat]))) and
      (Frac(StrToFloat(Format('%10.2F',[QDetallePRO_PRECIO2.Value]))) <= StrToFloat(Format('%10.2F',[Query1.FieldByName('par_hasta').AsFloat]))) then
      begin
        if UpperCase(Query1.FieldByName('par_sumar').Value) <> 'S' then
        begin
          nEntero := Copy(FloatToStr(QDetallePRO_PRECIO2.Value), 1,
                     Pos('.',FloatToStr(QDetallePRO_PRECIO2.Value))-1);
          nValor  := nEntero+Copy(Query1.FieldByName('par_valor').AsString,pos('.',Query1.FieldByName('par_valor').AsString),3);
        end
        else
        begin
          nEntero := Copy(FloatToStr(QDetallePRO_PRECIO2.Value), 1,
                     Pos('.',FloatToStr(QDetallePRO_PRECIO2.Value))-1);
          nValor  := (FloatToStr((strtofloat(nEntero)+Query1.FieldByName('par_valor').AsFloat)))+'.00';
        end;
        QDetallePRO_PRECIO2.Value := StrToFloat(nValor)
      end;

      //Precio3
      if (Frac(StrToFloat(Format('%10.2F',[QDetallePRO_PRECIO3.Value]))) >= StrToFloat(Format('%10.2F',[Query1.FieldByName('par_desde').AsFloat]))) and
      (Frac(StrToFloat(Format('%10.2F',[QDetallePRO_PRECIO3.Value]))) <= StrToFloat(Format('%10.2F',[Query1.FieldByName('par_hasta').AsFloat]))) then
      begin
        if UpperCase(Query1.FieldByName('par_sumar').Value) <> 'S' then
        begin
          nEntero := Copy(FloatToStr(QDetallePRO_PRECIO3.Value), 1,
                     Pos('.',FloatToStr(QDetallePRO_PRECIO3.Value))-1);
          nValor  := nEntero+Copy(Query1.FieldByName('par_valor').AsString,pos('.',Query1.FieldByName('par_valor').AsString),3);
        end
        else
        begin
          nEntero := Copy(FloatToStr(QDetallePRO_PRECIO3.Value), 1,
                     Pos('.',FloatToStr(QDetallePRO_PRECIO3.Value))-1);
          nValor  := (FloatToStr((strtofloat(nEntero)+Query1.FieldByName('par_valor').AsFloat)))+'.00';
        end;
        QDetallePRO_PRECIO3.Value := StrToFloat(nValor)
      end;

      //Precio4
      if (Frac(StrToFloat(Format('%10.2F',[QDetallePRO_PRECIO4.Value]))) >= StrToFloat(Format('%10.2F',[Query1.FieldByName('par_desde').AsFloat]))) and
      (Frac(StrToFloat(Format('%10.2F',[QDetallePRO_PRECIO4.Value]))) <= StrToFloat(Format('%10.2F',[Query1.FieldByName('par_hasta').AsFloat]))) then
      begin
        if UpperCase(Query1.FieldByName('par_sumar').Value) <> 'S' then
        begin
          nEntero := Copy(FloatToStr(QDetallePRO_PRECIO4.Value), 1,
                     Pos('.',FloatToStr(QDetallePRO_PRECIO4.Value))-1);
          nValor  := nEntero+Copy(Query1.FieldByName('par_valor').AsString,pos('.',Query1.FieldByName('par_valor').AsString),3);
        end
        else
        begin
          nEntero := Copy(FloatToStr(QDetallePRO_PRECIO4.Value), 1,
                     Pos('.',FloatToStr(QDetallePRO_PRECIO4.Value))-1);
          nValor  := (FloatToStr((strtofloat(nEntero)+Query1.FieldByName('par_valor').AsFloat)))+'.00';
        end;
        QDetallePRO_PRECIO4.Value := StrToFloat(nValor)
      end;

      Query1.Next;
    end;
  end;}
end;

procedure TfrmEntradas.BuscaProd(campo: string);
begin
  qBuscaProd.close;
  qBuscaProd.sql.clear;
  qBuscaProd.sql.add('select pro_codigo, pro_nombre, pro_costo, isnull(pro_precio1,0)pro_precio1,');
  qBuscaProd.sql.add('isnull(pro_precio2,0) pro_precio2, isnull(pro_precio3,0) pro_precio3, isnull(pro_precio4,0)pro_precio4, UPPER(pro_servicio) PRO_SERVICIO,');
  qBuscaProd.sql.add('pro_roriginal, pro_rfabric, pro_itbis, pro_vence,');
  qBuscaProd.sql.add('pro_costoempaque, isnull(pro_beneficio,0)pro_beneficio, isnull(pro_beneficio2,0)pro_beneficio2,');
  qBuscaProd.sql.add('isnull(pro_beneficio3,0)pro_beneficio3, isnull(pro_beneficio4,0)pro_beneficio4, pro_preciomenor, pro_status,');
  qBuscaProd.sql.add('pro_preciomenoremp, pro_costous, pro_detallado, pro_cantempaque,');
  qBuscaProd.sql.add('UnidadID, pro_montoitbis, pro_serializado, PRO_COMBO');
  qBuscaProd.sql.add('from productos');
  qBuscaProd.sql.add('where emp_codigo = :emp');
  qBuscaProd.sql.add('and pro_status = '+QuotedStr('ACT'));
  if campo = 'I' then
  begin
    qBuscaProd.sql.add('and pro_codigo = :cod');
    qBuscaProd.Parameters.parambyname('cod').Value := QDetallePRO_CODIGO.value;
  end
  else if campo = 'F' then
  begin
    qBuscaProd.sql.add('and pro_rfabric = :cod');
    qBuscaProd.Parameters.parambyname('cod').Value := QDetallePRO_RFABRIC.value;
  end
  else if campo = 'O' then
  begin
    qBuscaProd.sql.add('and pro_roriginal = :cod');
    qBuscaProd.Parameters.parambyname('cod').Value := QDetallePRO_RORIGINAL.value;
  end;
  qBuscaProd.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
  qBuscaProd.open;

  PRO_SERVICIO := qBuscaProd.FieldByName('PRO_SERVICIO').AsString;

  if qBuscaProd.FieldByName('PRO_SERVICIO').AsString = 'TRUE' then
  begin
    MessageDlg('NO PUEDE INCLUIR ESTE PRODUCTO, DEBIDO A QUE'+#13+
               'ES UN SERVICIO',mtError,[mbok],0);
    Exit;
  end
  else
  if qBuscaProd.FieldByName('pro_status').AsString = 'INA' then
  begin
    MessageDlg('NO PUEDE INCLUIR ESTE PRODUCTO, DEBIDO A QUE'+#13+
               'ESTA INACTIVO',mtError,[mbok],0);
    Exit;
  end
  else
  begin
    if campo = 'I' then
    begin
      QDetallePRO_RORIGINAL.value := qBuscaProd.fieldbyname('pro_roriginal').asstring;
      QDetallePRO_RFABRIC.value   := qBuscaProd.fieldbyname('pro_rfabric').asstring;
    end
    else if campo = 'F' then
    begin
      QDetallePRO_RORIGINAL.value := qBuscaProd.fieldbyname('pro_roriginal').asstring;
      QDetallePRO_CODIGO.value    := qBuscaProd.fieldbyname('pro_codigo').AsInteger;
    end
    else if campo = 'O' then
    begin
      QDetallePRO_RFABRIC.value   := qBuscaProd.fieldbyname('pro_rfabric').asstring;
      QDetallePRO_CODIGO.value    := qBuscaProd.fieldbyname('pro_codigo').AsInteger;
    end;
    QDetallepro_cantempaque.Value := qBuscaProd.fieldbyname('pro_cantempaque').AsFloat;
    QDetallepro_detallado.Value := qBuscaProd.fieldbyname('pro_detallado').asstring;
    QDetallePRO_NOMBRE.value    := qBuscaProd.fieldbyname('pro_nombre').asstring;
    QDetalleDET_CONITBIS.value  := qBuscaProd.fieldbyname('pro_itbis').asstring;
    QDetalleDET_VENCE.Value     := qBuscaProd.fieldbyname('pro_vence').asstring;
    QDetalledet_costound_ant.Value  := qBuscaProd.fieldbyname('pro_costo').AsFloat;
    QDetalledet_costoemp_ant.Value  := qBuscaProd.fieldbyname('pro_costoempaque').AsFloat;
    QDetalleDET_COSTOUND.Value  := qBuscaProd.fieldbyname('pro_costo').AsFloat;
    QDetalleDET_COSTOEMP.Value  := qBuscaProd.fieldbyname('pro_costoempaque').AsFloat;
    QDetallePRO_BENEFICIO.Value     := qBuscaProd.fieldbyname('pro_beneficio').AsFloat;
    QDetallePRO_BENEFICIO2.Value    := qBuscaProd.fieldbyname('pro_beneficio2').AsFloat;
    QDetallePRO_BENEFICIO3.Value    := qBuscaProd.fieldbyname('pro_beneficio3').AsFloat;
    QDetallePRO_BENEFICIO4.Value    := qBuscaProd.fieldbyname('pro_beneficio4').AsFloat;
    QDetallePRO_PRECIO1.Value   := qBuscaProd.fieldbyname('pro_precio1').AsFloat;
    QDetallePRO_PRECIO2.Value   := qBuscaProd.fieldbyname('pro_precio2').AsFloat;
    QDetallePRO_PRECIO3.Value   := qBuscaProd.fieldbyname('pro_precio3').AsFloat;
    QDetallePRO_PRECIO4.Value   := qBuscaProd.fieldbyname('pro_precio4').AsFloat;
    QDetalleDET_ITBIS.Value   := qBuscaProd.fieldbyname('pro_montoitbis').AsFloat;
    QDetalleUnidadID.Value := qBuscaProd.fieldbyname('UnidadID').AsString;
    QDetallepro_serializado.Value := qBuscaProd.fieldbyname('pro_serializado').AsString;

    if QDetalleDET_MEDIDA.Value = 'Und' then
      QDetalleDET_COSTO.value := QDetalleDET_COSTOUND.Value
    else if QDetalleDET_MEDIDA.Value = 'Emp' then
      QDetalleDET_COSTO.value := QDetalleDET_COSTOEMP.Value;

    if QDetalleDET_ITBIS.Value > 0 then
      QDetalleDET_CONITBIS.Value := 'S'
    else
      QDetalleDET_CONITBIS.Value := 'N';

    //buscando unidad de medida del producto
    if dm.QParametrospar_inv_unidad_medida.Value = 'True' then
    begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select secuencia, unidadid, precio, cantidad, credito, minimo from ProdUnidadMedida');
      dm.Query1.SQL.Add('where emp_codigo = :emp');
      dm.Query1.SQL.Add('and pro_codigo = :pro');
      dm.Query1.SQL.Add('order by secuencia');
      dm.Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.Parameters.ParamByName('pro').Value := QDetallePRO_CODIGO.Value;
      dm.Query1.Open;
      while not dm.Query1.Eof do
      begin
        QUnidades.Append;
        QUnidadespro_codigo.Value := QDetallePRO_CODIGO.Value;
        QUnidadesUnidadID.Value   := dm.Query1.FieldByName('unidadid').value;
        QUnidadesCantidad.Value   := dm.Query1.FieldByName('cantidad').value;
        QUnidadesPrecio.Value     := dm.Query1.FieldByName('precio').value;
        QUnidadesCredito.Value    := dm.Query1.FieldByName('credito').value;
        QUnidadesMinimo.Value     := dm.Query1.FieldByName('minimo').value;
        QUnidades.Post;

        dm.Query1.Next;
      end;

      if not QDetalleUnidadID.IsNull then
      begin
        dm.Query1.Close;
        dm.Query1.SQL.Clear;
        dm.Query1.SQL.Add('select Nombre from UnidadMedida');
        dm.Query1.SQL.Add('where emp_codigo = :emp');
        dm.Query1.SQL.Add('and UnidadID = :und');
        dm.Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
        dm.Query1.Parameters.ParamByName('und').Value := QDetalleUnidadID.AsString;
        dm.Query1.Open;
        if dm.Query1.RecordCount > 0 then
        begin
          QDetallepro_unidad_medida.Value := dm.Query1.FieldByName('Nombre').AsString;

          if dm.QParametrospar_inv_unidad_medida.Value = 'True' then
          begin
            //buscando precio por unidad de medida
            QMedidas.Close;
            QMedidas.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
            QMedidas.Parameters.ParamByName('pro').Value := QDetallePRO_CODIGO.Value;
            QMedidas.Parameters.ParamByName('und').Value := QDetallepro_unidad_medida.Value;
            QMedidas.Open;
            QDetalledet_cant_unidad_medida.Value := QMedidasCantidad.AsFloat;
          end;
        end;
      end;
    end;
  end;
end;

procedure TfrmEntradas.QDetalleDET_COSTOUNDChange(Sender: TField);
begin
  if dm.QParametrospar_inv_unidad_medida.Value <> 'True' then
  begin
    if (not QDetalleDET_COSTOUND.IsNull) and (not Buscando) then
    begin
      if QDetalleDET_MEDIDA.Value = 'Und' then
      begin
        if QDetallepro_cantempaque.Value > 0 then
          QDetalleDET_COSTOEMP.Value := QDetalleDET_COSTOUND.Value * QDetallepro_cantempaque.Value;
        if StrToFloat(Format('%10.2F',[QDetalleDET_COSTOUND.Value])) <> StrToFloat(Format('%10.2F',[QDetalledet_costound_ant.Value])) then
        begin
          if dm.QParametrospar_inv_entrada_modifica_precio.Value = 'False' then
          begin
            if DecisionPrecio = '' then
            begin
              if MessageDlg('El Costo cambi�, desea actualizar los precios?',mtConfirmation,[mbyes,mbno], 0) = mryes then
              begin
                DecisionPrecio := 'S';
                Precios;

              end
              else
                DecisionPrecio := 'N';
                if ((DBEdit12.Text <> '') and (QDetallepro_precio1.Value>0)) then
                QDetallePRO_BENEFICIO.Value := ((QDetallepro_precio1.Value / QDetalleValorItbisUnd.Value)*100)-100;
                DBEdit11.Text := FormatCurr('#,0.00',QDetallepro_beneficio.Value);
                if ((DBEdit14.Text <> '') and (QDetallepro_precio2.Value>0)) then
                QDetallePRO_BENEFICIO2.Value := ((QDetallepro_precio2.Value / QDetalleValorItbisUnd.Value)*100)-100;
                DBEdit13.Text := FormatCurr('#,0.00',QDetallepro_beneficio2.Value);
                if ((DBEdit17.Text <> '') and (QDetallepro_precio3.Value>0)) then
                QDetallePRO_BENEFICIO3.Value := ((QDetallepro_precio3.Value / QDetalleValorItbisUnd.Value)*100)-100;
                DBEdit15.Text := FormatCurr('#,0.00',QDetallepro_beneficio3.Value);
                if ((DBEdit18.Text <> '') and (QDetallepro_precio4.Value>0)) then
                QDetallePRO_BENEFICIO4.Value := ((QDetallepro_precio4.Value / QDetalleValorItbisUnd.Value)*100)-100;
                DBEdit16.Text := FormatCurr('#,0.00',QDetallepro_beneficio4.Value);
            end
            else
            begin
              if DecisionPrecio = 'S' then precios;
              if DecisionPrecio = 'N' then begin
              if ((DBEdit12.Text <> '') and (QDetallepro_precio1.Value>0)) then
                QDetallePRO_BENEFICIO.Value := ((QDetallepro_precio1.Value / QDetalleValorItbisUnd.Value)*100)-100;
                DBEdit11.Text := FormatCurr('#,0.00',QDetallepro_beneficio.Value);
                if ((DBEdit14.Text <> '') and (QDetallepro_precio2.Value>0)) then
                QDetallePRO_BENEFICIO2.Value := ((QDetallepro_precio2.Value / QDetalleValorItbisUnd.Value)*100)-100;
                DBEdit13.Text := FormatCurr('#,0.00',QDetallepro_beneficio2.Value);
                if ((DBEdit17.Text <> '') and (QDetallepro_precio3.Value>0)) then
                QDetallePRO_BENEFICIO3.Value := ((QDetallepro_precio3.Value / QDetalleValorItbisUnd.Value)*100)-100;
                DBEdit15.Text := FormatCurr('#,0.00',QDetallepro_beneficio3.Value);
                if ((DBEdit18.Text <> '') and (QDetallepro_precio4.Value>0)) then
                QDetallePRO_BENEFICIO4.Value := ((QDetallepro_precio4.Value / QDetalleValorItbisUnd.Value)*100)-100;
                DBEdit16.Text := FormatCurr('#,0.00',QDetallepro_beneficio4.Value);
            end;
            end;
          end
          else
           Precios;
        end
      end;
    end;
  end;
  DecisionPrecio := '';
end;

procedure TfrmEntradas.QDetalleDET_COSTOEMPChange(Sender: TField);
begin
  if dm.QParametrospar_inv_unidad_medida.Value <> 'True' then
  begin
    if (not QDetalleDET_COSTOEMP.IsNull) and (not Buscando) then
    begin
      if QDetalleDET_MEDIDA.Value = 'Emp' then
      begin
        if QDetallepro_cantempaque.Value > 0 then
          QDetalleDET_COSTOUND.Value := QDetalleDET_COSTOEMP.Value / QDetallepro_cantempaque.Value;
        if StrToFloat(Format('%10.2F',[QDetalleDET_COSTOEMP.Value])) <> StrToFloat(Format('%10.2F',[QDetalledet_costoemp_ant.Value])) then
        begin
          if dm.QParametrospar_modifica_precio_automatico.Value = 'False' then
          begin
            if DecisionPrecio = '' then
            begin
              if MessageDlg('El Costo cambi�, desea actualizar los precios?',mtConfirmation,[mbyes,mbno], 0) = mryes then
              begin
                DecisionPrecio := 'S';
                Precios;
              end
              else
                DecisionPrecio := 'N';
            end
            else
            begin
              if DecisionPrecio = 'S' then precios;
            end;
          end
          else
            Precios;
        end
      end;
    end;
  end;
end;

procedure TfrmEntradas.QDetallepro_beneficioChange(Sender: TField);
begin
  Precios;
end;

procedure TfrmEntradas.QDetallepro_beneficio2Change(Sender: TField);
begin
  Precios;
end;

procedure TfrmEntradas.QDetallepro_beneficio3Change(Sender: TField);
begin
  Precios;
end;

procedure TfrmEntradas.QDetallepro_beneficio4Change(Sender: TField);
begin
  Precios;
end;

procedure TfrmEntradas.GridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if StrToFloat(Format('%10.2F',[QDetallePRO_PRECIO1.Value])) > 0 then
  begin
    if (StrToFloat(Format('%10.2F',[QDetalleDET_COSTOUND.Value])) <>
    StrToFloat(Format('%10.2F',[QDetalledet_costound_ant.Value]))) or
    (StrToFloat(Format('%10.2F',[QDetalleDET_COSTOEMP.Value])) <>
    StrToFloat(Format('%10.2F',[QDetalledet_costoemp_ant.Value]))) then
    begin
       Grid.canvas.font.Style := [fsBold];
       if StrToFloat(Format('%10.2F',[QDetalleDET_COSTOUND.Value])) > StrToFloat(Format('%10.2F',[QDetallePRO_PRECIO1.Value])) then
         Grid.Canvas.Font.Color := clRed;

       Grid.DefaultDrawcolumnCell(Rect, DataCol, Column, State);
    end;
  end;
end;

procedure TfrmEntradas.QDetallepro_precio1Change(Sender: TField);
begin
  if (not QDetallepro_precio1.IsNull) and (dm.QParametrospar_inv_unidad_medida.Value <> 'True') then
  begin
    if Buscando = false then
    begin
      if dm.QUsuariosusu_debajo_costo.Value <> 'True' then
      begin
        if (StrToFloat(format('%10.2F',[QDetalledet_costo.AsFloat])) > 0) and (dm.QParametrosPAR_DEBAJOCOSTO.Value = 'False') then
        begin
          if (QDetallePRO_PRECIO1.Value < QDetalleDET_COSTO.Value) and (QDetallePRO_PRECIO1.value > 0) then
          begin
            MessageDlg('EL PRECIO ESPECIFICADO EN EL PRODUCTO'+#13+
                       'NO PUEDE SER MENOR QUE EL COSTO, DEBIDO'+#13+
                       'A QUE DEBE DE HABER UN MARGEN MINIMO DE'+#13+
                       'BENEFICIO.',mtError,[mbok],0);
            abort;
          end;
        end;
      end;
    end;
  end;
end;

procedure TfrmEntradas.DBEdit12KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if QDetalle.State <> dsbrowse then
    begin
      if (StrToFloat(DBEdit12.Text) > 0) and (QDetalleValorItbisUnd.Value > 0) then
      begin
        QDetallePRO_BENEFICIO.Value := ((StrToFloat(DBEdit12.Text) / QDetalleValorItbisUnd.Value)*100)-100;
      end;
    end;
  end;
end;

procedure TfrmEntradas.DBEdit14KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if QDetalle.State <> dsbrowse then
    begin
      if QDetallePRO_CANTEMPAQUE.Value = 0 then
      begin
        if (StrToFloat(DBEdit14.Text) > 0) and (QDetalleValorItbisUnd.Value > 0) then
        begin
          QDetallePRO_BENEFICIO2.Value := ((StrToFloat(DBEdit14.Text) / QDetalleValorItbisUnd.Value)*100)-100;
        end;
      end
      else
      begin
        if (StrToFloat(DBEdit14.Text) > 0) and (QDetalleValorItbisEmp.Value > 0) then
        begin
          QDetallePRO_BENEFICIO2.Value := ((StrToFloat(DBEdit14.Text) / QDetalleValorItbisEmp.Value)*100)-100;
        end;
      end;
    end;
  end;
end;

procedure TfrmEntradas.DBEdit17KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if QDetalle.State <> dsbrowse then
    begin
      if (StrToFloat(DBEdit17.Text) > 0) and (QDetalleValorItbisUnd.Value > 0) then
      begin
        QDetallePRO_BENEFICIO3.Value := ((StrToFloat(DBEdit17.Text) / QDetalleValorItbisUnd.Value)*100)-100;
      end;
    end;
  end;
end;

procedure TfrmEntradas.DBEdit18KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if QDetalle.State <> dsbrowse then
    begin
      if QDetallePRO_CANTEMPAQUE.Value = 0 then
      begin
        if (StrToFloat(DBEdit18.Text) > 0) and (QDetalleValorItbisUnd.Value > 0) then
        begin
          QDetallePRO_BENEFICIO4.Value := ((StrToFloat(DBEdit18.Text) / QDetalleValorItbisUnd.Value)*100)-100;
        end;
      end
      else
      begin
        if (StrToFloat(DBEdit18.Text) > 0) and (QDetalleValorItbisEmp.Value > 0) then
        begin
          QDetallePRO_BENEFICIO4.Value := ((StrToFloat(DBEdit18.Text) / QDetalleValorItbisEmp.Value)*100)-100;
        end;
      end;
    end;
  end;
end;

procedure TfrmEntradas.Pantalladeproductos1Click(Sender: TObject);
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

procedure TfrmEntradas.btpreciosClick(Sender: TObject);
var
  a : integer;
begin
  Application.CreateForm(tfrmPreciosUnidadMedidaFacProvee, frmPreciosUnidadMedidaFacProvee);
  frmPreciosUnidadMedidaFacProvee.QUnidades.Open;

  QUnidades.DisableControls;
  QUnidades.First;
  while not QUnidades.Eof do
  begin
    if QUnidadespro_codigo.Value = QDetallePRO_CODIGO.Value then
    begin
      frmPreciosUnidadMedidaFacProvee.QUnidades.Append;
      frmPreciosUnidadMedidaFacProvee.QUnidadesUnidadID.Value   := QUnidadesUnidadID.Value;
      frmPreciosUnidadMedidaFacProvee.QUnidadesPrecio.Value     := QUnidadesPrecio.Value;
      frmPreciosUnidadMedidaFacProvee.QUnidadesCantidad.Value   := QUnidadesCantidad.Value;
      frmPreciosUnidadMedidaFacProvee.QUnidadesSecuencia.Value  := QUnidadesSecuencia.Value;
      frmPreciosUnidadMedidaFacProvee.QUnidadesCredito.Value    := QUnidadesCredito.Value;
      frmPreciosUnidadMedidaFacProvee.QUnidadesMinimo.Value     := QUnidadesMinimo.Value;
      frmPreciosUnidadMedidaFacProvee.QUnidadespro_codigo.Value := QDetallePRO_CODIGO.Value;
      frmPreciosUnidadMedidaFacProvee.QUnidades.Post;
    end;
    QUnidades.Next;
  end;
  QUnidades.First;
  QUnidades.EnableControls;
  frmPreciosUnidadMedidaFacProvee.QUnidades.First;

  frmPreciosUnidadMedidaFacProvee.ShowModal;
  if frmPreciosUnidadMedidaFacProvee.acepto = 1 then
  begin
    //eliminando registros del producto seleccionado para actualizarlo
    QUnidades.DisableControls;
    QUnidades.First;
    a := QUnidades.RecordCount;
    while a > 0 do
    begin
      if QUnidadespro_codigo.Value = QDetallePRO_CODIGO.Value then
        QUnidades.Delete
      else
        QUnidades.Next;

      a := a - 1;
    end;
    QUnidades.EnableControls;

    //insertando los registros actualizados
    frmPreciosUnidadMedidaFacProvee.QUnidades.First;
    while not frmPreciosUnidadMedidaFacProvee.QUnidades.Eof do
    begin
      QUnidades.Append;
      QUnidadespro_codigo.Value := QDetallePRO_CODIGO.Value;
      QUnidadesPrecio.Value     := frmPreciosUnidadMedidaFacProvee.QUnidadesPrecio.Value;
      QUnidadesCredito.Value    := frmPreciosUnidadMedidaFacProvee.QUnidadesCredito.Value;
      QUnidadesMinimo.Value     := frmPreciosUnidadMedidaFacProvee.QUnidadesMinimo.Value;
      QUnidadesCantidad.Value   := frmPreciosUnidadMedidaFacProvee.QUnidadesCantidad.Value;
      QUnidadesUnidadID.Value   := frmPreciosUnidadMedidaFacProvee.QUnidadesUnidadID.Value;
      QUnidades.Post;
      
      frmPreciosUnidadMedidaFacProvee.QUnidades.Next;
    end;
  end;
  frmPreciosUnidadMedidaFacProvee.Release;
end;

procedure TfrmEntradas.Ajustedeinventario1Click(Sender: TObject);
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

procedure TfrmEntradas.Crearnotaalproducto1Click(Sender: TObject);
begin
  application.createform(tfrmNota, frmNota);
  frmNota.DBMemo1.DataSource := frmEntradas.dsDetalle;
  frmNota.DBMemo1.DataField := 'DET_NOTA';
  frmNota.showmodal;
  frmNota.release;
end;

procedure TfrmEntradas.Vercombodelproducto1Click(Sender: TObject);
begin
  Application.CreateForm(tfrmConsCombo, frmConsCombo);
  frmConsCombo.QCombo.Parameters.ParamByName('emp').Value := dm.vp_cia;
  frmConsCombo.QCombo.Parameters.ParamByName('pro').Value := QDetallePRO_CODIGO.Value;
  frmConsCombo.QCombo.Open;
  frmConsCombo.ShowModal;
  frmConsCombo.Release;
end;

procedure TfrmEntradas.Consultarmovimiento1Click(Sender: TObject);
begin
  application.createform(tfrmConsProdClienteFac, frmConsProdClienteFac);
  frmConsProdClienteFac.CheckBox1.Caption := 'Todos los proveedores';
  frmConsProdClienteFac.QFacturas.Close;
  frmConsProdClienteFac.QFacturas.SQL.Clear;
  frmConsProdClienteFac.QFacturas.SQL.Add('select null as tfa_codigo, 0 as fac_numero, f.fac_fecha,');
  frmConsProdClienteFac.QFacturas.SQL.Add('f.fac_numero as numero, p.sup_nombre as fac_nombre,');
  frmConsProdClienteFac.QFacturas.SQL.Add('d.det_costo as det_precio,');
  frmConsProdClienteFac.QFacturas.SQL.Add('d.det_descuento, d.det_cantidad, m.mon_sigla');
  frmConsProdClienteFac.QFacturas.SQL.Add('from provfacturas f, moneda m, proveedores p, det_provfacturas d');
  frmConsProdClienteFac.QFacturas.SQL.Add('where f.emp_codigo = m.emp_codigo');
  frmConsProdClienteFac.QFacturas.SQL.Add('and f.mon_codigo = m.mon_codigo');
  frmConsProdClienteFac.QFacturas.SQL.Add('and f.emp_codigo = d.emp_codigo');
  frmConsProdClienteFac.QFacturas.SQL.Add('and f.sup_codigo = d.sup_codigo');
  frmConsProdClienteFac.QFacturas.SQL.Add('and f.fac_numero = d.fac_numero');
  frmConsProdClienteFac.QFacturas.SQL.Add('and p.emp_codigo = '+dm.QParametrosPAR_INVEMPRESA.AsString);
  frmConsProdClienteFac.QFacturas.SQL.Add('and f.sup_codigo = p.sup_codigo');
  frmConsProdClienteFac.QFacturas.SQL.Add('and f.emp_codigo = :emp');
  frmConsProdClienteFac.QFacturas.SQL.Add('and f.fac_status <> '+QuotedStr('ANU'));
  frmConsProdClienteFac.QFacturas.SQL.Add('and d.pro_codigo = :pro');
  frmConsProdClienteFac.Memo1.Lines := frmConsProdClienteFac.QFacturas.SQL;

  frmConsProdClienteFac.tipo := 'sup';
  if not QEntradaSUP_CODIGO.IsNull then
  begin
    frmConsProdClienteFac.cli := QEntradaSUP_CODIGO.value;
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

procedure TfrmEntradas.QDetallepro_unidad_medidaChange(Sender: TField);
begin
  if (not QDetallepro_unidad_medida.IsNull) and (dm.QParametrospar_inv_unidad_medida.Value = 'True') then
  begin
    //buscando precio por unidad de medida
    QMedidas.Close;
    QMedidas.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
    QMedidas.Parameters.ParamByName('pro').Value := QDetallePRO_CODIGO.Value;
    QMedidas.Parameters.ParamByName('und').Value := QDetallepro_unidad_medida.Value;
    QMedidas.Open;
    if QMedidas.RecordCount = 0 then
    begin
      MessageDlg('Esta unidad de medida no existe en el producto',mtError,[mbok],0);
      QDetallepro_unidad_medida.Clear;
      Abort;
    end
    else
    begin
      qdetalledet_cant_unidad_medida.Value := QMedidasCantidad.AsFloat;
      QDetalleUnidadID.Value := QMedidasUnidadID.Value;
    end;
  end;
end;

procedure TfrmEntradas.Buscarproductoenellistado1Click(Sender: TObject);
var
  nom : string;
begin
  nom := InputBox('Buscar producto', 'Nombre', '');
  if length(nom) > 0 then
  begin
    if not QDetalle.Locate('pro_nombre', nom, [loPartialKey]) then
    begin
      MessageDlg('Producto no encontrato en la lista', mtError, [mbOK], 0);
      Grid.SetFocus;
    end;
  end;
end;

procedure TfrmEntradas.QSerieEntAfterInsert(DataSet: TDataSet);
begin
  if DataSet.RecordCount = QDetalleDET_CANTIDAD.AsInteger then
     begin
      DataSet.cancel;
      ShowMessage('A EXEDIDO LA CANTIDAD MAXIMA DE REGISTROS');
     end;
end;

procedure TfrmEntradas.QSerieEntNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('ser_secuencia').Value := DataSet.RecordCount+1;
  DataSet.FieldByName('emp_codigo').Value    := QDetalle.Parameters.ParamByName('emp').value;
  DataSet.FieldByName('suc_codigo').Value    := QDetalle.Parameters.ParamByName('suc').value;
  DataSet.FieldByName('ent_numero').Value    := QDetalle.Parameters.ParamByName('numero').value;
end;

procedure TfrmEntradas.BorraSerial(vCod_Producto: string);
begin
  if QSerie.Active then
     begin
      QSerie.First;
      while not QSerie.eof do begin
        if (vCod_Producto = EmptyStr) then
           QSerie.delete
        else
        if vCod_Producto = QSeriepro_codigo.AsString then
           QSerie.delete;

        QSerie.Next;
      end;
     end;
end;

function TfrmEntradas.Producto_sin_Serializar(const key: string): boolean;
var Puntero : TBookmark;
begin
  Result := false;
  with QDetalle do
    begin
      QDetalle.DisableControls;
      Puntero := QDetalle.GetBookmark;
      First;
      while not eof do
      if QDetalle.fieldbyname('pro_serializado').Value = 'S' then
      begin
         QSerie.Filter := 'PRO_CODIGO=' +QuotedStr(QDetallePRO_CODIGO.AsString);
         QSerie.Filtered := true;
         Result := QDetalleDET_CANTIDAD.AsInteger <> QSerie.RecordCount;
         QSerie.Filtered := false;
         QSerie.Filter := '';
         if Result then begin
            QDetalle.EnableControls;
            exit
         end
         else
            Next;
      end
      else next;
    QDetalle.GotoBookmark(Puntero);
    QDetalle.EnableControls;
    end;
end;

procedure TfrmEntradas.QSerieNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('ser_secuencia').Value  := DataSet.RecordCount+1;
  DataSet.FieldByName('PRO_CODIGO').Value     := QDetallePRO_CODIGO.Value;
  DataSet.FieldByName('SUC_CODIGO').Value     := QDetalleSUC_CODIGO.Value;
  DataSet.FieldByName('ENT_NUMERO').Value     := QDetalleENT_NUMERO.Value;
end;

procedure TfrmEntradas.QSerieAfterInsert(DataSet: TDataSet);
begin
  if DataSet.RecordCount = QDetalleDET_CANTIDAD.AsInteger then
     begin
      DataSet.cancel;
      ShowMessage('A EXEDIDO LA CANTIDAD MAXIMA DE REGISTROS');
     end;
end;


procedure TfrmEntradas.QSerieBeforeOpen(DataSet: TDataSet);
begin
with QSerie do begin
Parameters.ParamByName('emp').Value := QDetalleEMP_CODIGO.Value;
Parameters.ParamByName('suc').Value := QDetalleSUC_CODIGO.Value;
Parameters.ParamByName('numero').Value := QDetalleENT_NUMERO.Value;
Parameters.ParamByName('PRO_CODIGO').Value := QDetallePRO_CODIGO.Value;
end;
end;

procedure TfrmEntradas.QSucursalNewRecord(DataSet: TDataSet);
begin
Panel1.Enabled                := True;

end;

procedure TfrmEntradas.FormShow(Sender: TObject);
begin
if dm.QParametrospar_banca_apuestas.Value = True then begin
lbLocSuc.Visible := True;
dbedtcont_numeroSucursal.Visible := True;
btLocalidad.Visible := True;
TSucLoc.Visible := True;
end;
if not dm.QParametrospar_banca_apuestas.Value = True then begin
LbLocSuc.Visible := False;
dbedtcont_numeroSucursal.Visible := False;
btLocalidad.Visible := False;
TSucLoc.Visible := False;
end;
end;

procedure TfrmEntradas.dbedtcont_numeroSucursalChange(Sender: TObject);
begin
if Trim(dbedtcont_numeroSucursal.Text) = '' then TSucLoc.Text := '';
end;

procedure TfrmEntradas.dbedtcont_numeroSucursalKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if Trim(dbedtcont_numeroSucursal.Text) <> '' then
    begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select suc_nombre, cont_numeroSucursal from sucursales');
      dm.Query1.SQL.Add('where emp_codigo = :emp');
      dm.Query1.SQL.Add('and cont_numeroSucursal = '+QuotedStr(dbedtcont_numeroSucursal.Text));
      dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
      dm.Query1.Open;
      TSucLoc.Text := dm.Query1.FieldByName('suc_nombre').AsString;
      end;
  end;
end;

procedure TfrmEntradas.btLocalidadClick(Sender: TObject);
begin
Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select suc_nombre, cont_numeroSucursal from sucursales');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C�digo');
  Search.Title := 'Localidades / Sucursales';
  Search.ResultField := 'cont_numeroSucursal';
  if Search.execute then
  begin
    dbedtcont_numeroSucursal.Text := Search.ValueField;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select suc_nombre, cont_numeroSucursal from sucursales');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cont_numeroSucursal = '+QuotedStr(dbedtcont_numeroSucursal.Text));
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Open;
    TSucLoc.Text := dm.Query1.FieldByName('suc_nombre').AsString;
  end;
end;

end.
