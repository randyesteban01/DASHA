unit PVENTA26;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, Mask, DBCtrls, Grids, DBGrids, DB,
  IBCustomDataSet, IBQuery, IBUpdateSQL, ADODB,
  QuerySearchDlgADO, QRCtrls, QuickRpt;

type
  TfrmCotizacion = class(TForm)
    Panel2: TPanel;
    Label2: TLabel;
    edCliente: TEdit;
    SpeedButton2: TSpeedButton;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    Panel3: TPanel;
    Label9: TLabel;
    DBEdit5: TDBEdit;
    Panel5: TPanel;
    btBuscar: TSpeedButton;
    Label11: TLabel;
    Label17: TLabel;
    Label19: TLabel;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit10: TDBEdit;
    btGrabar: TSpeedButton;
    btLimpiar: TSpeedButton;
    btSalir: TSpeedButton;
    btBuscaProd: TSpeedButton;
    btElimina: TSpeedButton;
    btPrecio: TSpeedButton;
    QCotizacion: TADOQuery;
    QCotizacionCLI_CODIGO: TIntegerField;
    QCotizacionCLI_REFERENCIA: TIBStringField;
    QCotizacionCOT_DIRECCION: TIBStringField;
    QCotizacionCOT_FAX: TIBStringField;
    QCotizacionCOT_FECHA: TDateTimeField;
    QCotizacionCOT_ITBIS: TFloatField;
    QCotizacionCOT_LOCALIDAD: TIBStringField;
    QCotizacionCOT_NOMBRE: TIBStringField;
    QCotizacionCOT_NUMERO: TIntegerField;
    QCotizacionCOT_STATUS: TIBStringField;
    QCotizacionCOT_TELEFONO: TIBStringField;
    QCotizacionCOT_TOTAL: TFloatField;
    QCotizacionEMP_CODIGO: TIntegerField;
    QCotizacionUSU_CODIGO: TIntegerField;
    QCotizacionVEN_CODIGO: TIntegerField;
    dsCotizacion: TDataSource;
    QDetalle: TADOQuery;
    QDetalleCOT_NUMERO: TIntegerField;
    QDetalleDET_CANTIDAD: TFloatField;
    QDetalleDET_CONITBIS: TIBStringField;
    QDetalleDET_ITBIS: TFloatField;
    QDetalleDET_PRECIO: TFloatField;
    QDetalleDET_SECUENCIA: TIntegerField;
    QDetalleEMP_CODIGO: TIntegerField;
    QDetallePRO_BARRA: TIBStringField;
    QDetallePRO_CODIGO: TIntegerField;
    QDetallePRO_NOMBRE: TIBStringField;
    QDetallePRO_RFABRIC: TIBStringField;
    QDetallePRO_RORIGINAL: TIBStringField;
    QDetalleValor: TFloatField;
    dsDetalle: TDataSource;
    DBEdit7: TDBEdit;
    QCotizacionSubTotal: TFloatField;
    Grid: TDBGrid;
    Search: TQrySearchDlgADO;
    QDetalleCalcItbis: TFloatField;
    QDetalleCalcDesc: TFloatField;
    QDetallePrecioItbis: TFloatField;
    DBText1: TDBText;
    QDetalleDET_ESCALA: TIBStringField;
    QDetalleDET_MANEJAESCALA: TIBStringField;
    btEscalas: TSpeedButton;
    QDetalleDET_PRECIO1: TFloatField;
    QDetalleDET_PRECIO2: TFloatField;
    QDetalleDET_PRECIO3: TFloatField;
    QDetalleDET_PRECIO4: TFloatField;
    QDetalleDET_MEDIDA: TIBStringField;
    Panel1: TPanel;
    btnotaprod: TSpeedButton;
    QDetalleDET_NOTA: TMemoField;
    Label12: TLabel;
    btVendedor: TSpeedButton;
    dbVendedor: TDBEdit;
    tVendedor: TEdit;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    dsSuc: TDataSource;
    QCotizacionSUC_CODIGO: TIntegerField;
    QSucursalalm_codigo: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    QDetalleDET_DESCUENTO: TBCDField;
    QCotizacionCOT_DESCUENTO: TBCDField;
    Label1: TLabel;
    DBEdit9: TDBEdit;
    QDetalledet_margen: TBCDField;
    QDetalledet_costo: TBCDField;
    QCotizacionmon_codigo: TIntegerField;
    QCotizacioncot_Tasa: TBCDField;
    Label13: TLabel;
    btmoneda: TSpeedButton;
    Label15: TLabel;
    DBEdit14: TDBEdit;
    tmoneda: TEdit;
    DBEdit15: TDBEdit;
    Label10: TLabel;
    btCondicion: TSpeedButton;
    tCondicion: TEdit;
    DBEdit12: TDBEdit;
    QCotizacioncpa_codigo: TIntegerField;
    QCotizacioncot_validez: TIntegerField;
    QCotizacioncot_tiempo_entrega: TStringField;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit11: TDBEdit;
    Label14: TLabel;
    DBEdit13: TDBEdit;
    QCotizacioncot_nota: TMemoField;
    btnota: TSpeedButton;
    DBLookupComboBox2: TDBLookupComboBox;
    QDetallePrecioTasa: TFloatField;
    btnuevonumero: TSpeedButton;
    Query1: TADOQuery;
    QDetallepro_servicio: TStringField;
    QDetallepro_combo: TStringField;
    QDetallemar_codigo: TIntegerField;
    QCotizacioncot_contacto: TStringField;
    DBEdit16: TDBEdit;
    Label16: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormPaint(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure QCotizacionNewRecord(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure QDetallePRO_CODIGOChange(Sender: TField);
    procedure QDetallePRO_RFABRICChange(Sender: TField);
    procedure QDetallePRO_RORIGINALChange(Sender: TField);
    procedure btBuscaProdClick(Sender: TObject);
    procedure btEliminaClick(Sender: TObject);
    procedure btPrecioClick(Sender: TObject);
    procedure GridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btVendedorClick(Sender: TObject);
    procedure QCotizacionVEN_CODIGOGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure edClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton2Click(Sender: TObject);
    procedure GridColEnter(Sender: TObject);
    procedure QCotizacionBeforePost(DataSet: TDataSet);
    procedure QDetalleCalcFields(DataSet: TDataSet);
    procedure GridEnter(Sender: TObject);
    procedure QCotizacionCalcFields(DataSet: TDataSet);
    procedure QDetalleAfterPost(DataSet: TDataSet);
    procedure btGrabarClick(Sender: TObject);
    procedure btBuscarClick(Sender: TObject);
    procedure QDetalleBeforePost(DataSet: TDataSet);
    procedure btLimpiarClick(Sender: TObject);
    procedure btSalirClick(Sender: TObject);
    procedure btEscalasClick(Sender: TObject);
    procedure GridKeyPress(Sender: TObject; var Key: Char);
    procedure QDetalleDET_MEDIDAChange(Sender: TField);
    procedure btnotaprodClick(Sender: TObject);
    procedure QDetalleNewRecord(DataSet: TDataSet);
    procedure DBEdit6Enter(Sender: TObject);
    procedure QDetalledet_margenChange(Sender: TField);
    procedure btmonedaClick(Sender: TObject);
    procedure QCotizacionmon_codigoChange(Sender: TField);
    procedure QCotizacionmon_codigoGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure btCondicionClick(Sender: TObject);
    procedure QCotizacioncpa_codigoGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure btnotaClick(Sender: TObject);
    procedure btnuevonumeroClick(Sender: TObject);
    procedure QDetalleAfterDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    Total, Itbis : Double;
    Totaliza : Boolean;
    procedure totalizar;
  end;

var
  frmCotizacion: TfrmCotizacion;

implementation

uses PVENTA33, PVENTA34, RVENTA36, SIGMA01, SIGMA00, PVENTA117, RVENTA65,
  PVENTA36, RVENTA85;

{$R *.DFM}

procedure TfrmCotizacion.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmCotizacion.FormPaint(Sender: TObject);
begin
  frmCotizacion.top := 5;
  frmCotizacion.Left := 0;
end;

procedure TfrmCotizacion.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then close;
  if key = vk_f2  then btGrabarClick(self);
  if key = vk_f3  then btLimpiarClick(self);
  if key = vk_f9  then btnuevonumeroClick(Self);
end;

procedure TfrmCotizacion.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmCotizacion.QCotizacionNewRecord(DataSet: TDataSet);
var
  a : integer;
begin
  Total := 0;
  Totaliza := True;
  tVendedor.text := '';

  QCotizacioncot_nota.Value   := dm.QParametrospar_nota_cotizacion.Value;
  QCotizacionmon_codigo.Value := dm.QParametrosMON_CODIGO.Value;
  QCotizacionCOT_DESCUENTO.Value := 0;
  QCotizacionSUC_CODIGO.Value := QSucursalsuc_codigo.Value;
  QCotizacionCOT_FECHA.value  := date;
  QCotizacionCOT_ITBIS.value  := 0;
  QCotizacionCOT_STATUS.value := 'EMI';
  QCotizacionCOT_TOTAL.value  := 0;
  QCotizacionEMP_CODIGO.value := dm.QEmpresasEMP_CODIGO.value;
  QCotizacionUSU_CODIGO.value := dm.Usuario;

  QDetalle.close;
  QDetalle.Parameters.parambyname('emp').Value    := dm.QEmpresasEMP_CODIGO.value;
  QDetalle.Parameters.parambyname('numero').Value := -1;
  QDetalle.open;

  {QDetalle.disablecontrols;
  for a := 1 to 40 do
  begin
    QDetalle.append;
    QDetalleDET_SECUENCIA.value := a;
    QDetalleEMP_CODIGO.value    := dm.QEmpresasEMP_CODIGO.value;
    QDetalle.post;
  end;
  QDetalle.First;
  QDetalle.enablecontrols;}
end;

procedure TfrmCotizacion.FormActivate(Sender: TObject);
begin
  //Grid.Columns[Grid.Columns.Count-2].Title.Caption := FloatToStr(dm.QParametrosPAR_ITBIS.Value)+'% Itbis';
  if not QCotizacion.active then
  begin
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;
    QCotizacion.Parameters.ParamByName('emp').Value    := dm.QEmpresasEMP_CODIGO.value;
    QCotizacion.Parameters.ParamByName('numero').Value := -1;
    QCotizacion.open;
    QCotizacion.insert;
  end;
end;

procedure TfrmCotizacion.FormCreate(Sender: TObject);
var
  a : integer;
begin
  for a := 0 to (Sender as TForm).ComponentCount -1 DO
  begin
    if Components[a].ClassType = tdbedit then
    begin
      if (Components[a] as tdbedit).Tag  <> 1 then
      begin
        (Components[a] as tdbedit).OnEnter := frmMain.Entra;
        (Components[a] as tdbedit).OnExit := frmMain.sale;
      end;
    end;
  end;

  if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'I' then
     Grid.Columns[0].FieldName := 'PRO_CODIGO'
  else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'F' then
     Grid.Columns[0].FieldName := 'PRO_RFABRIC'
  else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'O' then
     Grid.Columns[0].FieldName := 'PRO_RORIGINAL';
  Grid.Columns[0].Width := 43;

  if dm.QParametrospar_visualizadesc.Value <> 'True' then
  begin
    Grid.Columns[8].Destroy;
    Grid.Columns[2].Width := Grid.Columns[2].Width + 37;
  end;

  if dm.QParametrosPAR_FACESCALA.Value <> 'True' then
  begin
    Grid.Columns[5].Destroy;
    Grid.Columns[2].Width := Grid.Columns[2].Width + 32;
  end;

  if dm.QParametrosPAR_FACMEDIDA.Value <> 'True' then
  begin
    Grid.Columns[4].Destroy;
    Grid.Columns[2].Width := Grid.Columns[2].Width + 37;
  end;
  
end;

procedure TfrmCotizacion.QDetallePRO_CODIGOChange(Sender: TField);
begin
  if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'I' then
  begin
    if not QDetallePRO_CODIGO.isnull then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select pro_codigo, pro_nombre, pro_costo, pro_precio1,');
      dm.Query1.sql.add('pro_precio2, pro_precio3, pro_precio4,');
      dm.Query1.sql.add('pro_roriginal, pro_rfabric, pro_itbis, pro_escala,');
      dm.Query1.sql.add('pro_beneficio, pro_beneficio2, pro_beneficio3, pro_beneficio4');
      dm.Query1.sql.add('from productos');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and pro_codigo = :cod');
      dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.value;
      dm.Query1.Parameters.parambyname('cod').Value := QDetallePRO_CODIGO.value;
      dm.Query1.open;
      QDetallePRO_RORIGINAL.value := dm.Query1.fieldbyname('pro_roriginal').asstring;
      QDetallePRO_RFABRIC.value   := dm.Query1.fieldbyname('pro_rfabric').asstring;
      QDetallePRO_NOMBRE.value := dm.Query1.fieldbyname('pro_nombre').asstring;
      QDetalleDET_MANEJAESCALA.Value := dm.Query1.fieldbyname('pro_escala').asstring;
      QDetalleDET_CONITBIS.value := dm.Query1.fieldbyname('pro_itbis').asstring;
      if QDetalleDET_CONITBIS.value = 'S' then
         QDetalleDET_ITBIS.value := dm.QParametrosPAR_ITBIS.asfloat
      else
         QDetalleDET_ITBIS.value := 0;

      //Buscando escalas
      if (QDetalleDET_MANEJAESCALA.Value = 'True') and (QDetalleDET_ESCALA.IsNull) then
      begin
        dm.Query1.Close;
        dm.Query1.SQL.Clear;
        dm.Query1.SQL.Add('select esc_escala from escalas');
        dm.Query1.SQL.Add('where emp_codigo = :emp');
        dm.Query1.SQL.Add('and pro_codigo = :pro');
        dm.Query1.SQL.Add('order by esc_secuencia');
        dm.Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
        dm.Query1.Parameters.ParamByName('pro').Value := QDetallePRO_CODIGO.Value;
        dm.Query1.Open;
        dm.Query1.DisableControls;
        QDetalleDET_ESCALA.Value := dm.Query1.FieldByName('esc_escala').AsString;
        Grid.Columns[4].PickList.Clear;
        while not dm.Query1.Eof do
        begin
          Grid.Columns[4].PickList.Add(dm.Query1.FieldByName('esc_escala').AsString);
          dm.Query1.Next;
        end;
        dm.Query1.EnableControls;
      end;

      QDetalleDET_PRECIO1.Value := dm.Query1.fieldbyname('pro_precio1').AsFloat;
      QDetalleDET_PRECIO2.Value := dm.Query1.fieldbyname('pro_precio2').AsFloat;
      QDetalleDET_PRECIO3.Value := dm.Query1.fieldbyname('pro_precio3').AsFloat;
      QDetalleDET_PRECIO4.Value := dm.Query1.fieldbyname('pro_precio4').AsFloat;
      QDetalledet_costo.Value   := dm.Query1.fieldbyname('pro_costo').AsFloat;

      //Unidad
      if QDetalleDET_MEDIDA.Value = 'Und' then
        QDetalleDET_PRECIO.Value := QDetalle.FieldByName('det_'+dm.QParametrosPAR_PRECIOUND.Value).AsFloat;

      if dm.QParametrosPAR_PRECIOUND.Value = 'Precio1' then
        QDetalledet_margen.Value := dm.Query1.fieldbyname('pro_beneficio').AsFloat
      else if dm.QParametrosPAR_PRECIOUND.Value = 'Precio2' then
        QDetalledet_margen.Value := dm.Query1.fieldbyname('pro_beneficio2').AsFloat
      else if dm.QParametrosPAR_PRECIOUND.Value = 'Precio3' then
        QDetalledet_margen.Value := dm.Query1.fieldbyname('pro_beneficio3').AsFloat
      else if dm.QParametrosPAR_PRECIOUND.Value = 'Precio4' then
        QDetalledet_margen.Value := dm.Query1.fieldbyname('pro_beneficio4').AsFloat;

      //Empaque
      if QDetalleDET_MEDIDA.Value = 'Emp' then
        QDetalleDET_PRECIO.Value := QDetalle.FieldByName('det_'+dm.QParametrosPAR_PRECIOEMP.Value).AsFloat;
    end;
  end;
end;

procedure TfrmCotizacion.QDetallePRO_RFABRICChange(Sender: TField);
begin
  if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'F' then
  begin
    if not QDetallePRO_RFABRIC.isnull then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select pro_codigo, pro_nombre, pro_costo, pro_precio1,');
      dm.Query1.sql.add('pro_precio2, pro_precio3, pro_precio4,');
      dm.Query1.sql.add('pro_roriginal, pro_rfabric, pro_itbis, pro_Escala,');
      dm.Query1.sql.add('pro_beneficio, pro_beneficio2, pro_beneficio3, pro_beneficio4');
      dm.Query1.sql.add('from productos ');
      dm.Query1.sql.add('where emp_codigo = :emp ');
      dm.Query1.sql.add('and pro_rfabric = :cod');
      dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.value;
      dm.Query1.Parameters.parambyname('cod').Value := QDetallePRO_RFABRIC.value;
      dm.Query1.open;
      QDetallePRO_CODIGO.value := dm.Query1.fieldbyname('pro_codigo').asinteger;
      QDetallePRO_RORIGINAL.value   := dm.Query1.fieldbyname('pro_roriginal').asstring;
      QDetallePRO_NOMBRE.value := dm.Query1.fieldbyname('pro_nombre').asstring;
      QDetalleDET_CONITBIS.value := dm.Query1.fieldbyname('pro_itbis').asstring;
      QDetalleDET_MANEJAESCALA.Value := dm.Query1.fieldbyname('pro_escala').asstring;
      if QDetalleDET_CONITBIS.value = 'S' then
         QDetalleDET_ITBIS.value := dm.QParametrosPAR_ITBIS.asfloat
      else
         QDetalleDET_ITBIS.value := 0;

      //Buscando escalas
      if (QDetalleDET_MANEJAESCALA.Value = 'True') and (QDetalleDET_ESCALA.IsNull) then
      begin
        dm.Query1.Close;
        dm.Query1.SQL.Clear;
        dm.Query1.SQL.Add('select esc_escala from escalas');
        dm.Query1.SQL.Add('where emp_codigo = :emp');
        dm.Query1.SQL.Add('and pro_codigo = :pro');
        dm.Query1.SQL.Add('order by esc_secuencia');
        dm.Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
        dm.Query1.Parameters.ParamByName('pro').Value := QDetallePRO_CODIGO.Value;
        dm.Query1.Open;
        dm.Query1.DisableControls;
        QDetalleDET_ESCALA.Value := dm.Query1.FieldByName('esc_escala').AsString;
        Grid.Columns[4].PickList.Clear;
        while not dm.Query1.Eof do
        begin
          Grid.Columns[4].PickList.Add(dm.Query1.FieldByName('esc_escala').AsString);
          dm.Query1.Next;
        end;
        dm.Query1.EnableControls;
      end;

      QDetalleDET_PRECIO1.Value := dm.Query1.fieldbyname('pro_precio1').AsFloat;
      QDetalleDET_PRECIO2.Value := dm.Query1.fieldbyname('pro_precio2').AsFloat;
      QDetalleDET_PRECIO3.Value := dm.Query1.fieldbyname('pro_precio3').AsFloat;
      QDetalleDET_PRECIO4.Value := dm.Query1.fieldbyname('pro_precio4').AsFloat;
      QDetalledet_costo.Value   := dm.Query1.fieldbyname('pro_costo').AsFloat;

      //Unidad
      if QDetalleDET_MEDIDA.Value = 'Und' then
        QDetalleDET_PRECIO.Value := QDetalle.FieldByName('det_'+dm.QParametrosPAR_PRECIOUND.Value).AsFloat;

      if dm.QParametrosPAR_PRECIOUND.Value = 'Precio1' then
        QDetalledet_margen.Value := dm.Query1.fieldbyname('pro_beneficio').AsFloat
      else if dm.QParametrosPAR_PRECIOUND.Value = 'Precio2' then
        QDetalledet_margen.Value := dm.Query1.fieldbyname('pro_beneficio2').AsFloat
      else if dm.QParametrosPAR_PRECIOUND.Value = 'Precio3' then
        QDetalledet_margen.Value := dm.Query1.fieldbyname('pro_beneficio3').AsFloat
      else if dm.QParametrosPAR_PRECIOUND.Value = 'Precio4' then
        QDetalledet_margen.Value := dm.Query1.fieldbyname('pro_beneficio4').AsFloat;
        
      //Empaque
      if QDetalleDET_MEDIDA.Value = 'Emp' then
        QDetalleDET_PRECIO.Value := QDetalle.FieldByName('det_'+dm.QParametrosPAR_PRECIOEMP.Value).AsFloat;
    end;
  end;
end;

procedure TfrmCotizacion.QDetallePRO_RORIGINALChange(Sender: TField);
begin
  if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'O' then
  begin
    if not QDetallePRO_RORIGINAL.isnull then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select pro_codigo, pro_nombre, pro_costo, pro_precio1,');
      dm.Query1.sql.add('pro_precio2, pro_precio3, pro_precio4,');
      dm.Query1.sql.add('pro_roriginal, pro_rfabric, pro_itbis, pro_Escala,');
      dm.Query1.sql.add('pro_beneficio, pro_beneficio2, pro_beneficio3, pro_beneficio4');
      dm.Query1.sql.add('from productos ');
      dm.Query1.sql.add('where emp_codigo = :emp ');
      dm.Query1.sql.add('and pro_roriginal = :cod');
      dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.value;
      dm.Query1.Parameters.parambyname('cod').Value := QDetallePRO_RORIGINAL.value;
      dm.Query1.open;
      QDetallePRO_CODIGO.value := dm.Query1.fieldbyname('pro_codigo').asinteger;
      QDetallePRO_RFABRIC.value := dm.Query1.fieldbyname('pro_rfabric').asstring;
      QDetallePRO_NOMBRE.value := dm.Query1.fieldbyname('pro_nombre').asstring;
      QDetalleDET_CONITBIS.value := dm.Query1.fieldbyname('pro_itbis').asstring;
      QDetalleDET_MANEJAESCALA.Value := dm.Query1.fieldbyname('pro_escala').asstring;
      if QDetalleDET_CONITBIS.value = 'S' then
         QDetalleDET_ITBIS.value := dm.QParametrosPAR_ITBIS.asfloat
      else
         QDetalleDET_ITBIS.value := 0;
      //Buscando escalas
      if (QDetalleDET_MANEJAESCALA.Value = 'True') and (QDetalleDET_ESCALA.IsNull) then
      begin
        dm.Query1.Close;
        dm.Query1.SQL.Clear;
        dm.Query1.SQL.Add('select esc_escala from escalas');
        dm.Query1.SQL.Add('where emp_codigo = :emp');
        dm.Query1.SQL.Add('and pro_codigo = :pro');
        dm.Query1.SQL.Add('order by esc_secuencia');
        dm.Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
        dm.Query1.Parameters.ParamByName('pro').Value := QDetallePRO_CODIGO.Value;
        dm.Query1.Open;
        dm.Query1.DisableControls;
        QDetalleDET_ESCALA.Value := dm.Query1.FieldByName('esc_escala').AsString;
        Grid.Columns[4].PickList.Clear;
        while not dm.Query1.Eof do
        begin
          Grid.Columns[4].PickList.Add(dm.Query1.FieldByName('esc_escala').AsString);
          dm.Query1.Next;
        end;
        dm.Query1.EnableControls;
      end;

      QDetalleDET_PRECIO1.Value := dm.Query1.fieldbyname('pro_precio1').AsFloat;
      QDetalleDET_PRECIO2.Value := dm.Query1.fieldbyname('pro_precio2').AsFloat;
      QDetalleDET_PRECIO3.Value := dm.Query1.fieldbyname('pro_precio3').AsFloat;
      QDetalleDET_PRECIO4.Value := dm.Query1.fieldbyname('pro_precio4').AsFloat;
      QDetalledet_costo.Value   := dm.Query1.fieldbyname('pro_costo').AsFloat;

      //Unidad
      if QDetalleDET_MEDIDA.Value = 'Und' then
        QDetalleDET_PRECIO.Value := QDetalle.FieldByName('det_'+dm.QParametrosPAR_PRECIOUND.Value).AsFloat;

      if dm.QParametrosPAR_PRECIOUND.Value = 'Precio1' then
        QDetalledet_margen.Value := dm.Query1.fieldbyname('pro_beneficio').AsFloat
      else if dm.QParametrosPAR_PRECIOUND.Value = 'Precio2' then
        QDetalledet_margen.Value := dm.Query1.fieldbyname('pro_beneficio2').AsFloat
      else if dm.QParametrosPAR_PRECIOUND.Value = 'Precio3' then
        QDetalledet_margen.Value := dm.Query1.fieldbyname('pro_beneficio3').AsFloat
      else if dm.QParametrosPAR_PRECIOUND.Value = 'Precio4' then
        QDetalledet_margen.Value := dm.Query1.fieldbyname('pro_beneficio4').AsFloat;
        
      //Empaque
      if QDetalleDET_MEDIDA.Value = 'Emp' then
        QDetalleDET_PRECIO.Value := QDetalle.FieldByName('det_'+dm.QParametrosPAR_PRECIOEMP.Value).AsFloat;
    end;
  end;
end;

procedure TfrmCotizacion.btBuscaProdClick(Sender: TObject);
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

procedure TfrmCotizacion.btEliminaClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR LA FILA?',mtconfirmation,[mbyes,mbno],0) = mryes then
    QDetalle.Delete;
  Grid.setfocus;
end;

procedure TfrmCotizacion.btPrecioClick(Sender: TObject);
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
    dm.query1.Parameters.parambyname('emp').Value  := dm.QParametrosPAR_INVEMPRESA.value;
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
      QDetalleDET_PRECIO.value := dm.Query1.fieldbyname(frmPrecios.Precio).asfloat;
      QDetalle.post;
    end;
    frmPrecios.release;
  end;
  Grid.setfocus;
end;

procedure TfrmCotizacion.GridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f4 then btBuscaProdClick(self);
  if key = vk_f6 then btEliminaClick(self);
  if key = vk_f7 then btPrecioClick(Self);
  if (key = vk_f8) and
  (QDetalleDET_MANEJAESCALA.Value = 'True') then btEscalasClick(Self);
end;

procedure TfrmCotizacion.btVendedorClick(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Código');
  Search.Query.clear;
  Search.Query.add('select ven_nombre, ven_codigo');
  Search.Query.add('from vendedores');
  Search.Query.add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.value));
  Search.ResultField := 'ven_Codigo';
  Search.Title := 'Listado de Vendedores';
  if Search.execute then
  begin
    QCotizacionVEN_CODIGO.value := strtoint(Search.ValueField);
    dbVendedor.setfocus;
  end;
end;

procedure TfrmCotizacion.QCotizacionVEN_CODIGOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QCotizacionVEN_CODIGO.isnull then
  begin
    Text := inttostr(QCotizacionVEN_CODIGO.value);
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select ven_nombre from vendedores');
    dm.Query1.sql.add('where emp_Codigo = :emp');
    dm.Query1.sql.add('and ven_Codigo = :ven');
    dm.Query1.Parameters.parambyname('emp').Value := dm.QEmpresasEMP_CODIGO.value;
    dm.Query1.Parameters.parambyname('ven').Value := QCotizacionVEN_CODIGO.value;
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      tVendedor.text := ''
    else
      tVendedor.text := dm.Query1.fieldbyname('ven_nombre').asstring;
  end
  else
    tVendedor.text := '';
end;

procedure TfrmCotizacion.edClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edCliente.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select cli_codigo, cli_nombre, cli_referencia, cli_contacto,');
      dm.Query1.sql.add('cli_direccion, cli_localidad, cli_telefono, cli_fax');
      dm.Query1.sql.add('from clientes');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and cli_Status = '+#39+'ACT'+#39);
      if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
      begin
        dm.Query1.sql.add('and cli_codigo = :cli');
        dm.Query1.Parameters.parambyname('cli').Value := strtoint(trim(edCliente.text));
      end
      else
      begin
        dm.Query1.sql.add('and cli_referencia = :cli');
        dm.Query1.Parameters.parambyname('cli').Value := trim(edCliente.text)
      end;
      dm.Query1.Parameters.parambyname('emp').Value := dm.QEmpresasEMP_CODIGO.value;
      dm.Query1.open;
      QCotizacionCOT_NOMBRE.value     := dm.Query1.fieldbyname('cli_nombre').asstring;
      QCotizacionCLI_CODIGO.value     := dm.Query1.fieldbyname('cli_Codigo').asinteger;
      QCotizacionCLI_REFERENCIA.value := dm.Query1.fieldbyname('cli_referencia').asstring;
      QCotizacionCOT_DIRECCION.value  := dm.Query1.fieldbyname('cli_direccion').asstring;
      QCotizacionCOT_FAX.value        := dm.Query1.fieldbyname('cli_fax').asstring;
      QCotizacionCOT_LOCALIDAD.value  := dm.Query1.fieldbyname('cli_localidad').asstring;
      QCotizacionCOT_TELEFONO.value   := dm.Query1.fieldbyname('cli_telefono').asstring;
      QCotizacioncot_contacto.Value   := dm.Query1.fieldbyname('cli_contacto').asstring;
    end;
  end;
end;

procedure TfrmCotizacion.SpeedButton2Click(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Código');
  Search.Query.clear;
  if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
  begin
    Search.Query.add('select substring(cli_nombre,1,50) as cli_nombre, cli_codigo');
    Search.ResultField := 'cli_codigo';
  end
  else
  begin
    Search.Query.add('select substring(cli_nombre,1,50) as cli_nombre, cli_referencia');
    Search.ResultField := 'cli_referencia';
  end;
  Search.Query.add('from clientes');
  Search.Query.add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.value));
  Search.Query.add('and cli_Status = '+#39+'ACT'+#39);
  Search.Title := 'Listado de Clientes';
  if Search.execute then
  begin
    edCliente.text := search.valuefield;
    edCliente.setfocus;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select cli_codigo, cli_nombre, cli_referencia, cli_contacto,');
    dm.Query1.sql.add('cli_direccion, cli_localidad, cli_telefono, cli_fax');
    dm.Query1.sql.add('from clientes');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and cli_Status = '+#39+'ACT'+#39);
    if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
    begin
      dm.Query1.sql.add('and cli_codigo = :cli');
      dm.Query1.Parameters.parambyname('cli').Value := strtoint(search.valuefield);
    end
    else
    begin
      dm.Query1.sql.add('and cli_referencia = :cli');
      dm.Query1.Parameters.parambyname('cli').Value := search.valuefield;
    end;
    dm.Query1.Parameters.parambyname('emp').Value := dm.QEmpresasEMP_CODIGO.value;
    dm.Query1.open;
    QCotizacionCOT_NOMBRE.value     := dm.Query1.fieldbyname('cli_nombre').asstring;
    QCotizacionCLI_CODIGO.value     := dm.Query1.fieldbyname('cli_Codigo').asinteger;
    QCotizacionCLI_REFERENCIA.value := dm.Query1.fieldbyname('cli_referencia').asstring;
    QCotizacionCOT_DIRECCION.value  := dm.Query1.fieldbyname('cli_direccion').asstring;
    QCotizacionCOT_FAX.value        := dm.Query1.fieldbyname('cli_fax').asstring;
    QCotizacionCOT_LOCALIDAD.value  := dm.Query1.fieldbyname('cli_localidad').asstring;
    QCotizacionCOT_TELEFONO.value   := dm.Query1.fieldbyname('cli_telefono').asstring;
    QCotizacioncot_contacto.Value   := dm.Query1.fieldbyname('cli_contacto').asstring;
    edCliente.setfocus;
  end;
end;

procedure TfrmCotizacion.GridColEnter(Sender: TObject);
begin
  if uppercase(Grid.Columns[Grid.selectedindex].FieldName) = 'CALCITBIS' then
    Grid.SelectedIndex := Grid.SelectedIndex + 1;

  if uppercase(Grid.Columns[Grid.selectedindex].FieldName) = 'DET_ESCALA' then
    Grid.SelectedIndex := Grid.SelectedIndex + 1;

  if uppercase(Grid.Columns[Grid.selectedindex].FieldName) = 'PRECIOITBIS' then
    Grid.SelectedIndex := Grid.SelectedIndex + 1;

  if uppercase(Grid.Columns[Grid.selectedindex].FieldName) = 'VALOR' then
  begin
    Grid.SelectedIndex := 0;
    QDetalle.Append;
  end;
end;

procedure TfrmCotizacion.QCotizacionBeforePost(DataSet: TDataSet);
begin
  if QCotizacion.State = dsInsert then
  begin
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select isnull(max(cot_numero),0) as maximo');
    dm.Query1.sql.add('from cotizacion');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.Parameters.parambyname('emp').Value := dm.QEmpresasEMP_CODIGO.value;
    dm.Query1.open;
    QCotizacionCOT_NUMERO.value := dm.Query1.fieldbyname('maximo').asinteger + 1;
  end;
end;

procedure TfrmCotizacion.QDetalleCalcFields(DataSet: TDataSet);
var
  Venta, NumItbis : Double;
begin
  if QDetalleDET_CONITBIS.value = 'S' then
  begin
    NumItbis := strtofloat(format('%10.2f',[(dm.QParametrosPAR_ITBIS.asfloat/100)+1]));
    QDetalleCalcDesc.value    := 0;
    if dm.QParametrospar_itbisincluido.Value = 'True' then
    begin
      Venta    := strtofloat(format('%10.4f',[(QDetalleDET_PRECIO.value)/NumItbis]));

      QDetallePrecioItbis.value := strtofloat(format('%10.4f',[Venta]));
      QDetalleCalcDesc.value    := strtofloat(format('%10.2f',[(Venta *
                                 strtofloat(format('%10.2f',[QDetalleDET_DESCUENTO.value])))/100]));
      QDetalleCalcItbis.value   := strtofloat(format('%10.4f',[((Venta-QDetalleCalcDesc.value)*
                                   strtofloat(format('%10.4f',[dm.QParametrosPAR_ITBIS.Value])))/100]));
      QDetalleValor.value       := ((strtofloat(format('%10.4f',[Venta]))-
                                   strtofloat(format('%10.2f',[QDetalleCalcDesc.value])))+
                                   strtofloat(format('%10.2f',[QDetalleCalcItbis.value])))*
                                   strtofloat(format('%10.2f',[QDetalleDET_CANTIDAD.value]));
    end
    else
    begin
      Venta    := strtofloat(format('%10.4f',[(QDetalleDET_PRECIO.value)]));
      QDetallePrecioItbis.value := strtofloat(format('%10.4f',[QDetalleDET_PRECIO.value]));
      QDetalleCalcDesc.value    := strtofloat(format('%10.2f',[(Venta *
                                 strtofloat(format('%10.2f',[QDetalleDET_DESCUENTO.value])))/100]));
      QDetalleCalcItbis.value   := strtofloat(format('%10.4f',[((QDetalleDET_PRECIO.value-QDetalleCalcDesc.value)*
                                   strtofloat(format('%10.4f',[dm.QParametrosPAR_ITBIS.Value])))/100]));
      {QDetalleValor.value       := ((strtofloat(format('%10.4f',[QDetalleDET_PRECIO.value]))-
                                   strtofloat(format('%10.2f',[QDetalleCalcDesc.value])))+
                                   strtofloat(format('%10.4f',[QDetalleCalcItbis.value])))*
                                   strtofloat(format('%10.2f',[QDetalleDET_CANTIDAD.value]));}
      QDetalleValor.value := (strtofloat(format('%10.4f',[QDetalleDET_PRECIO.value])) - strtofloat(format('%10.2f',[QDetalleCalcDesc.value])))*
                             strtofloat(format('%10.2f',[QDetalleDET_CANTIDAD.value]));
    end;
  end
  else
  begin
    Venta := strtofloat(format('%10.4f',[QDetalleDET_PRECIO.value]));
    QDetalleCalcDesc.value    := strtofloat(format('%10.2f',[(Venta *
                                 strtofloat(format('%10.2f',[QDetalleDET_DESCUENTO.value])))/100]));
    QDetallePrecioItbis.value := strtofloat(format('%10.4f',[Venta]));
    QDetalleCalcItbis.value   := 0;
    QDetalleValor.value       := strtofloat(format('%10.2f',[(Venta-QDetalleCalcDesc.value)*QDetalleDET_CANTIDAD.value]));
  end;
  QDetallePrecioTasa.Value := QDetalleDET_PRECIO.Value * QCotizacioncot_Tasa.Value;
end;

procedure TfrmCotizacion.GridEnter(Sender: TObject);
begin
  Grid.SelectedIndex := 0;
end;

procedure TfrmCotizacion.totalizar;
var
  Puntero : TBookmark;
  TItbis, TDesc : Double;
begin
  if Totaliza = true then
  begin
    Puntero := QDetalle.GetBookmark;
    QDetalle.disablecontrols;
    QDetalle.first;
    Total  := 0;
    TItbis := 0;
    TDesc  := 0;
    while not QDetalle.eof do
    begin
      Total  := Total  + strtofloat(format('%10.2f',[QDetalleDET_CANTIDAD.value]))*strtofloat(format('%10.4f',[QDetallePrecioItbis.value]));
      TDesc  := TDesc  + strtofloat(format('%10.2f',[QDetalleCalcDesc.value*QDetalleDET_CANTIDAD.value]));
      TItbis := strtofloat(format('%10.4f',[TItbis])) + strtofloat(format('%10.4f',[QDetalleCalcItbis.value*QDetalleDET_CANTIDAD.value]));
      //TItbis := strtofloat(format('%10.4f',[TItbis])) + strtofloat(format('%10.4f',[QDetalleCalcItbis.value*QDetalleDET_CANTIDAD.value]));
      QDetalle.next;
    end;
    QCotizacion.Edit;
    QCotizacionCOT_DESCUENTO.Value := strtofloat(format('%10.2f',[TDesc]));
    QCotizacionCOT_ITBIS.value     := strtofloat(format('%10.4f',[TItbis]));
    //QCotizacionCOT_ITBIS.value     := ((Total-TDesc) * dm.QParametrosPAR_ITBIS.Value)/100;
    QCotizacionCOT_TOTAL.value     := strtofloat(format('%10.2f',[(Total-TDesc)+QCotizacionCOT_ITBIS.value]));

    QDetalle.GotoBookmark(Puntero);
    QDetalle.enablecontrols;
  end;
end;

procedure TfrmCotizacion.QCotizacionCalcFields(DataSet: TDataSet);
begin
  QCotizacionSubTotal.value := Total;
end;

procedure TfrmCotizacion.QDetalleAfterPost(DataSet: TDataSet);
begin
  Totalizar;
end;

procedure TfrmCotizacion.btGrabarClick(Sender: TObject);
var
  a : integer;
begin
  if QCotizacionCOT_TOTAL.Value > 0 then
  begin
    Totaliza := False;
    QCotizacion.post;
    QCotizacion.UpdateBatch;

    QDetalle.disablecontrols;
    QDetalle.first;
    a := 0;
    while not QDetalle.eof do
    begin
      a := a + 1;
      QDetalle.edit;
      QDetalleDET_SECUENCIA.value := a;
      QDetalleCOT_NUMERO.value    := QCotizacionCOT_NUMERO.value;
      QDetalleEMP_CODIGO.value    := dm.QEmpresasEMP_CODIGO.value;
      QDetalle.post;
      QDetalle.next;
    end;
    QDetalle.enablecontrols;
    QDetalle.UpdateBatch;

    if MessageDlg('SE HA GENERADO LA COTIZACION NO. '+IntToStr(QCotizacionCOT_NUMERO.Value)+
    ', DESEA IMPRIMIRLA?',mtConfirmation,[mbyes,mbno],0) = mryes then
    begin
      if dm.QParametrospar_fac_preimpresa.Value = 'True' then
      begin
        if dm.QParametrospar_formato_preimpreso.Value = 'QRMSConsulting' then
        begin
          application.CreateForm(tRCotizacionPreimpresa, RCotizacionPreimpresa);
          RCotizacionPreimpresa.QCotizacion.Parameters.ParamByName('numero').Value := QCotizacionCOT_NUMERO.Value;
          RCotizacionPreimpresa.QCotizacion.Open;
          RCotizacionPreimpresa.QDetalle.Open;
          RCotizacionPreimpresa.QRMSConsulting.PrinterSetup;
          RCotizacionPreimpresa.QRMSConsulting.Preview;
          RCotizacionPreimpresa.Release;
        end
        else if dm.QParametrospar_formato_preimpreso.Value = 'QRThorton' then
        begin
          application.CreateForm(tRCotizacionPreimpresa, RCotizacionPreimpresa);
          RCotizacionPreimpresa.QCotizacion.Parameters.ParamByName('numero').Value := QCotizacionCOT_NUMERO.Value;
          RCotizacionPreimpresa.QCotizacion.Open;
          RCotizacionPreimpresa.QDetalle.Open;
          RCotizacionPreimpresa.QRTHorton.PrinterSetup;
          RCotizacionPreimpresa.QRTHorton.Preview;
          RCotizacionPreimpresa.Release;
        end
        else if dm.QParametrospar_formato_preimpreso.Value = 'QRBelkis' then
        begin
          application.CreateForm(tRCotizacionPreimpresa, RCotizacionPreimpresa);
          RCotizacionPreimpresa.QCotizacion.Parameters.ParamByName('numero').Value := QCotizacionCOT_NUMERO.Value;
          RCotizacionPreimpresa.QCotizacion.Open;
          RCotizacionPreimpresa.QDetalle.Open;
          RCotizacionPreimpresa.QRBelkis.PrinterSetup;
          RCotizacionPreimpresa.QRBelkis.Preview;
          RCotizacionPreimpresa.Release;
        end
        else
        begin
          if dm.QParametrosPAR_FORMATOCOT.Value = 2 then
          begin
            Application.CreateForm(tRCotizacion, RCotizacion);
            RCotizacion.QCotizacion.Parameters.ParamByName('numero').Value := QCotizacionCOT_NUMERO.Value;
            RCotizacion.QCotizacion.Open;
            RCotizacion.QDetalle.Open;
            if MessageDLG('DESEA IMPRIMIR EL EMCABEZADO?', mtConfirmation, [mbyes,mbno],0) = mrno then
            begin
              RCotizacion.lbEmp1.Enabled := False;
              RCotizacion.lbEmp2.Enabled := False;
              RCotizacion.lbEmp3.Enabled := False;
              RCotizacion.lbEmp4.Enabled := False;
              RCotizacion.lbEmp5.Enabled := False;
              RCotizacion.lbEmp6.Enabled := False;
              RCotizacion.lbEmp7.Enabled := False;
              RCotizacion.lbEmp8.Enabled := False;
              RCotizacion.lbEmp9.Enabled := False;
            end;
            RCotizacion.PrinterSetup;
            RCotizacion.Preview;
            RCotizacion.Destroy;
          end
          else
          begin
            Application.CreateForm(tRCotizacionElegante, RCotizacionElegante);
            RCotizacionElegante.QCotizacion.Parameters.ParamByName('numero').Value := QCotizacionCOT_NUMERO.Value;
            RCotizacionElegante.QCotizacion.Open;
            RCotizacionElegante.QDetalle.Open;
            RCotizacionElegante.PrinterSetup;
            RCotizacionElegante.Preview;
            RCotizacionElegante.Destroy;
          end;
        end;
      end
      else
      if dm.QParametrosPAR_FORMATOCOT.Value = 2 then
      begin
        Application.CreateForm(tRCotizacion, RCotizacion);
        RCotizacion.QCotizacion.Parameters.ParamByName('numero').Value := QCotizacionCOT_NUMERO.Value;
        RCotizacion.QCotizacion.Open;
        RCotizacion.QDetalle.Open;
        if MessageDLG('DESEA IMPRIMIR EL EMCABEZADO?', mtConfirmation, [mbyes,mbno],0) = mrno then
        begin
          RCotizacion.lbEmp1.Enabled := False;
          RCotizacion.lbEmp2.Enabled := False;
          RCotizacion.lbEmp3.Enabled := False;
          RCotizacion.lbEmp4.Enabled := False;
          RCotizacion.lbEmp5.Enabled := False;
          RCotizacion.lbEmp6.Enabled := False;
          RCotizacion.lbEmp7.Enabled := False;
          RCotizacion.lbEmp8.Enabled := False;
          RCotizacion.lbEmp9.Enabled := False;
        end;
        RCotizacion.PrinterSetup;
        RCotizacion.Preview;
        RCotizacion.Destroy;
      end
      else
      begin
        Application.CreateForm(tRCotizacionElegante, RCotizacionElegante);
        RCotizacionElegante.QCotizacion.Parameters.ParamByName('numero').Value := QCotizacionCOT_NUMERO.Value;
        RCotizacionElegante.QCotizacion.Open;
        RCotizacionElegante.QDetalle.Open;
        RCotizacionElegante.PrinterSetup;
        RCotizacionElegante.Preview;
        RCotizacionElegante.Destroy;
      end;
    end;

    DBEdit5.SetFocus;
    QCotizacion.close;
    QCotizacion.Parameters.ParamByName('emp').Value    := dm.QEmpresasEMP_CODIGO.value;
    QCotizacion.Parameters.ParamByName('numero').Value := -1;
    QCotizacion.open;
    QCotizacion.insert;
  end
  else
  begin
    MessageDlg('Debe completar los datos de esta Cotizacion',mtError,[mbok],0);
    Grid.SetFocus;
  end;
end;

procedure TfrmCotizacion.btBuscarClick(Sender: TObject);
begin
  Search.Query.clear;
  Search.Query.add('select cot_numero, substring(cot_nombre,1,50) as cot_nombre');
  Search.Query.add('from cotizacion');
  Search.Query.add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.value));

  if dm.QUsuariosusu_modifica_otras_cotizaciones.Value = 'False' then
     Search.Query.add('and usu_codigo = '+IntToStr(dm.QUsuariosUSU_CODIGO.Value));

  Search.AliasFields.clear;
  Search.AliasFields.add('Número');
  Search.AliasFields.add('A Nombre de');
  Search.ResultField := 'cot_numero';
  Search.Title := 'Cotizaciones';
  if Search.execute then
  begin
    QCotizacion.close;
    QCotizacion.Parameters.parambyname('numero').Value := strtoint(Search.valuefield);
    QCotizacion.open;

    if not QCotizacionCLI_CODIGO.IsNull then
    begin
      if dm.QParametrosPAR_CODIGOCLIENTE.Value = 'I' then
        edCliente.Text := QCotizacionCLI_CODIGO.AsString
      else
        edCliente.Text := QCotizacionCLI_REFERENCIA.AsString;
    end;

    QDetalle.close;
    QDetalle.Parameters.parambyname('numero').Value := strtoint(Search.valuefield);
    QDetalle.open;

    totalizar;

    QCotizacion.Edit;
    Grid.SetFocus;
  end;
end;

procedure TfrmCotizacion.QDetalleBeforePost(DataSet: TDataSet);
begin
  if trim(QDetalleDET_MEDIDA.Value) = '' then
     QDetalleDET_MEDIDA.Value := 'Und';

  if QDetalleDET_DESCUENTO.isnull then
     QDetalleDET_DESCUENTO.Value := 0;

  QDetalleDET_CONITBIS.value := UpperCase(QDetalleDET_CONITBIS.value);
end;

procedure TfrmCotizacion.btLimpiarClick(Sender: TObject);
begin
  if messagedlg('DESEA CANCELAR ESTA COTIZACION?',mtconfirmation,[mbyes,mbno],0)= mryes then
  begin
    QCotizacion.close;
    QCotizacion.Parameters.ParamByName('emp').Value    := dm.QEmpresasEMP_CODIGO.value;
    QCotizacion.Parameters.ParamByName('numero').Value := -1;
    QCotizacion.open;
    QCotizacion.insert;
    DBEdit5.setfocus;
  end
  else
    Grid.SetFocus;
end;

procedure TfrmCotizacion.btSalirClick(Sender: TObject);
begin
  close;
end;

procedure TfrmCotizacion.btEscalasClick(Sender: TObject);
begin
  if QDetalleDET_MANEJAESCALA.Value = 'True' then
  begin
    Application.CreateForm(tfrmSelEscala, frmSelEscala);
    frmSelEscala.QEscalas.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
    frmSelEscala.QEscalas.Parameters.ParamByName('pro').Value := QDetallePRO_CODIGO.Value;
    frmSelEscala.ShowModal;
    if frmSelEscala.Seleccion = True then
    begin
      QDetalle.Edit;
      QDetalleDET_ESCALA.Value := frmSelEscala.QEscalasESC_ESCALA.Value;
      QDetalle.Post;
    end;
    frmSelEscala.Release;
  end;
  Grid.SetFocus;
end;

procedure TfrmCotizacion.GridKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmCotizacion.QDetalleDET_MEDIDAChange(Sender: TField);
begin
  if not QDetalleDET_MEDIDA.IsNull then
  begin
    //Unidad
    if QDetalleDET_MEDIDA.Value = 'Und' then
      QDetalleDET_PRECIO.Value := QDetalle.FieldByName('det_'+dm.QParametrosPAR_PRECIOUND.Value).AsFloat;

    //Empaque
    if QDetalleDET_MEDIDA.Value = 'Emp' then
      QDetalleDET_PRECIO.Value := QDetalle.FieldByName('det_'+dm.QParametrosPAR_PRECIOEMP.Value).AsFloat;
  end;
end;

procedure TfrmCotizacion.btnotaprodClick(Sender: TObject);
begin
  application.createform(tfrmNota, frmNota);
  frmNota.DBMemo1.DataSource := frmCotizacion.dsDetalle;
  frmNota.DBMemo1.DataField := 'DET_NOTA';
  frmNota.showmodal;
  frmNota.release;
end;

procedure TfrmCotizacion.QDetalleNewRecord(DataSet: TDataSet);
begin
  QDetalleDET_MEDIDA.Value := 'Und';
  QDetalleDET_CONITBIS.Value := 'S';
end;

procedure TfrmCotizacion.DBEdit6Enter(Sender: TObject);
begin
  Grid.SetFocus;
end;

procedure TfrmCotizacion.QDetalledet_margenChange(Sender: TField);
var
  CostoItbis : Double;
begin
  CostoItbis := QDetalledet_costo.Value + ((QDetalledet_costo.Value*dm.QParametrosPAR_ITBIS.Value)/100);
  if QDetalledet_margen.Value > 0 then
    if dm.QParametrosPAR_PRECIOUND.Value = 'Precio1' then
       if dm.QParametrospar_itbisincluido.Value = 'True' then
         QDetalleDET_PRECIO.Value := StrToFloat(Format('%10.2F',[(CostoItbis+((CostoItbis*QDetalledet_margen.Value)/100))]))
       else
         QDetalleDET_PRECIO.Value := StrToFloat(Format('%10.2F',[(QDetalledet_costo.Value+((QDetalledet_costo.Value*QDetalledet_margen.Value)/100))]));
end;

procedure TfrmCotizacion.btmonedaClick(Sender: TObject);
begin
  Search.AliasFields.clear;
  Search.AliasFields.add('Nombre');
  Search.AliasFields.add('Código');
  Search.Query.clear;
  Search.Query.add('select mon_nombre, mon_codigo');
  Search.Query.add('from moneda');
  Search.Query.add('where emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.value));
  Search.ResultField := 'mon_Codigo';
  Search.Title := 'Tipo de moneda';
  if Search.execute then
  begin
    QCotizacionMON_CODIGO.value := strtoint(Search.ValueField);
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select mon_sigla, MON_RELACIONPESOCOMPRA from moneda');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and mon_codigo = :mon');
    dm.Query1.Parameters.parambyname('emp').Value := dm.QEmpresasEMP_CODIGO.value;
    dm.Query1.Parameters.parambyname('mon').Value := QCotizacionMON_CODIGO.Value;
    dm.Query1.open;
    tmoneda.Text := dm.Query1.FieldByName('mon_sigla').AsString;
    QCotizacionCOT_TASA.Value := dm.Query1.FieldByName('MON_RELACIONPESOCOMPRA').AsFloat;
  end;
end;

procedure TfrmCotizacion.QCotizacionmon_codigoChange(Sender: TField);
begin
  if not QCotizacionmon_codigo.IsNull then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select mon_sigla, MON_RELACIONPESOCOMPRA from moneda');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and mon_codigo = :mon');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('mon').Value := QCotizacionmon_codigo.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
    begin
      tmoneda.Text := dm.Query1.FieldByName('mon_sigla').AsString;
      QCotizacionCOT_TASA.Value := dm.Query1.FieldByName('MON_RELACIONPESOCOMPRA').AsFloat;
    end
    else
    begin
      tmoneda.Text := '';
      QCotizacionCOT_TASA.Value := 1;
    end;
  end;
end;

procedure TfrmCotizacion.QCotizacionmon_codigoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QCotizacionmon_codigo.IsNull then
  begin
    Text := IntToStr(QCotizacionmon_codigo.Value);
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select mon_sigla, MON_RELACIONPESOCOMPRA from moneda');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and mon_codigo = :mon');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('mon').Value := QCotizacionmon_codigo.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
    begin
      tmoneda.Text := dm.Query1.FieldByName('mon_sigla').AsString;
      //QPedidosPED_TASA.Value := dm.Query1.FieldByName('MON_RELACIONPESOCOMPRA').AsFloat;
    end
    else
    begin
      tmoneda.Text := '';
      //QPedidosPED_TASA.Value := 1;
    end;
  end;
end;

procedure TfrmCotizacion.btCondicionClick(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Condicion');
  Search.AliasFields.Add('Codigo');
  Search.Query.clear;
  Search.Query.add('select cpa_nombre, cpa_codigo');
  Search.Query.add('from condiciones');
  Search.Query.add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.value));
  Search.ResultField := 'cpa_Codigo';
  Search.Title := 'Condiciones de pago';
  if Search.execute then
  begin
    QCotizacioncpa_codigo.value := strtoint(Search.ValueField);
    dbEdit12.setfocus;
  end;
end;

procedure TfrmCotizacion.QCotizacioncpa_codigoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QCotizacioncpa_codigo.isnull then
  begin
    Text := inttostr(QCotizacioncpa_codigo.value);
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select cpa_nombre from condiciones');
    dm.Query1.sql.add('where emp_Codigo = :emp');
    dm.Query1.sql.add('and cpa_Codigo = :con');
    dm.Query1.Parameters.parambyname('emp').Value := dm.QEmpresasEMP_CODIGO.value;
    dm.Query1.Parameters.parambyname('con').Value := QCotizacioncpa_codigo.value;
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      tCondicion.text := ''
    else
      tCondicion.text := dm.Query1.fieldbyname('cpa_nombre').asstring;
  end
  else
    tCondicion.text := '';
end;

procedure TfrmCotizacion.btnotaClick(Sender: TObject);
begin
  application.createform(tfrmNota, frmNota);
  frmNota.DBMemo1.DataSource := frmCotizacion.dsCotizacion;
  frmNota.DBMemo1.DataField := 'COT_NOTA';
  frmNota.showmodal;
  frmNota.release;
end;

procedure TfrmCotizacion.btnuevonumeroClick(Sender: TObject);
var
  a : integer;
begin
  Search.Query.clear;
  Search.Query.add('select cot_numero, substring(cot_nombre,1,50) as cot_nombre');
  Search.Query.add('from cotizacion');
  Search.Query.add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.value));

  if dm.QUsuariosusu_modifica_otras_cotizaciones.Value = 'False' then
     Search.Query.add('and usu_codigo = '+IntToStr(dm.QUsuariosUSU_CODIGO.Value));

  Search.AliasFields.clear;
  Search.AliasFields.add('Número');
  Search.AliasFields.add('A Nombre de');
  Search.ResultField := 'cot_numero';
  Search.Title := 'Cotizaciones';
  if Search.execute then
  begin
    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Add('select emp_codigo, cot_numero, cot_fecha, cli_referencia, cot_nombre, cot_direccion, cot_localidad,');
    Query1.SQL.Add('cot_telefono, cot_fax, cot_itbis, cot_total, cot_status, cli_codigo, ven_codigo, usu_codigo, suc_codigo,');
    Query1.SQL.Add('cot_descuento, mon_codigo, cot_tasa, cpa_codigo, cot_validez, cot_tiempo_entrega, cot_nota');
    Query1.SQL.Add('from cotizacion');
    Query1.SQL.Add('where emp_codigo = :emp');
    Query1.SQL.Add('and suc_codigo = :suc');
    Query1.SQL.Add('and cot_numero = :cot');
    Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    Query1.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
    Query1.Parameters.ParamByName('cot').Value := strtoint(Search.valuefield);
    Query1.Open;

    if not Query1.FieldbyName('cli_codigo').IsNull then
    begin
      QCotizacionCLI_CODIGO.Value     := Query1.FieldbyName('cli_codigo').AsInteger;
      QCotizacionCLI_REFERENCIA.Value := Query1.FieldbyName('cli_referencia').AsString;
    end;
    QCotizacionCOT_DIRECCION.Value  := Query1.FieldbyName('cot_direccion').AsString;
    QCotizacionCOT_FAX.Value        := Query1.FieldbyName('cot_fax').AsString;
    QCotizacionCOT_FECHA.Value      := Query1.FieldbyName('cot_fecha').Value;
    QCotizacionCOT_ITBIS.Value      := Query1.FieldbyName('cot_itbis').Value;
    QCotizacionCOT_LOCALIDAD.Value  := Query1.FieldbyName('cot_localidad').AsString;
    QCotizacionCOT_NOMBRE.Value     := Query1.FieldbyName('cot_nombre').AsString;
    QCotizacionCOT_TELEFONO.Value   := Query1.FieldbyName('cot_telefono').AsString;

    if not Query1.FieldbyName('ven_codigo').IsNull then
      QCotizacionVEN_CODIGO.Value     := Query1.FieldbyName('ven_codigo').Value;

    if not Query1.FieldbyName('cpa_codigo').IsNull then
      QCotizacionCPA_CODIGO.Value     := Query1.FieldbyName('cpa_codigo').Value;
      
    QCotizacioncot_Tasa.Value       := Query1.FieldbyName('cot_tasa').Value;
    QCotizacioncot_validez.Value    := Query1.FieldbyName('cot_validez').AsInteger;
    QCotizacioncot_tiempo_entrega.Value := Query1.FieldbyName('cot_tiempo_entrega').AsString;
    QCotizacioncot_nota.Value       := Query1.FieldbyName('cot_nota').AsString;

    QDetalle.Close;
    QDetalle.Open;

    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Add('select emp_codigo, cot_numero, det_secuencia, pro_roriginal, pro_rfabric, pro_nombre, pro_barra,');
    Query1.SQL.Add('det_precio, det_cantidad, det_conitbis, det_itbis, pro_servicio, det_escala, det_manejaescala,');
    Query1.SQL.Add('det_medida, det_precio1, det_precio2, det_precio3, det_precio4, pro_combo, mar_codigo, det_nota,');
    Query1.SQL.Add('pro_codigo, det_descuento, det_margen, det_costo');
    Query1.SQL.Add('from det_cotizacion');
    Query1.SQL.Add('where emp_codigo = :emp');
    Query1.SQL.Add('and cot_numero = :cot');
    Query1.SQL.Add('order by det_secuencia');
    Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    Query1.Parameters.ParamByName('cot').Value := strtoint(Search.valuefield);
    Query1.Open;
    Totaliza := false;
    while not Query1.Eof do
    begin
      QDetalle.Append;
      if not Query1.FieldByName('det_cantidad').IsNull then
        QDetalleDET_CANTIDAD.Value     := Query1.FieldByName('det_cantidad').AsFloat;

      QDetalleDET_SECUENCIA.Value    := Query1.FieldByName('det_secuencia').Value;

      if not Query1.FieldByName('pro_codigo').IsNull then
        QDetallePRO_CODIGO.Value       := Query1.FieldByName('pro_codigo').AsInteger;

      QDetallePRO_NOMBRE.Value       := Query1.FieldByName('pro_nombre').AsString;
      QDetallePRO_RFABRIC.Value      := Query1.FieldByName('pro_rfabric').AsString;
      QDetallePRO_RORIGINAL.Value    := Query1.FieldByName('pro_roriginal').AsString;
      QDetalleDET_ESCALA.Value       := Query1.FieldByName('det_escala').AsString;
      QDetalleDET_MANEJAESCALA.Value := Query1.FieldByName('det_manejaescala').AsString;
      QDetalleDET_PRECIO1.Value      := Query1.FieldByName('det_precio1').AsFloat;
      QDetalleDET_PRECIO2.Value      := Query1.FieldByName('det_precio2').AsFloat;
      QDetalleDET_PRECIO3.Value      := Query1.FieldByName('det_precio3').AsFloat;
      QDetalleDET_PRECIO4.Value      := Query1.FieldByName('det_precio4').AsFloat;
      QDetalleDET_MEDIDA.Value       := Query1.FieldByName('det_medida').AsString;
      QDetalleDET_NOTA.Value         := Query1.FieldByName('det_nota').AsString;
      QDetalleDET_DESCUENTO.Value    := Query1.FieldByName('det_descuento').Value;
      QDetalledet_margen.Value       := Query1.FieldByName('det_margen').AsFloat;
      QDetalledet_costo.Value        := Query1.FieldByName('det_costo').AsFloat;
      if not Query1.FieldByName('det_conitbis').IsNull then
        QDetalleDET_CONITBIS.Value     := Query1.FieldByName('det_conitbis').AsString;

      if not Query1.FieldByName('det_itbis').IsNull then
        QDetalleDET_ITBIS.Value        := Query1.FieldByName('det_itbis').AsFloat;

      if not Query1.FieldByName('det_precio').IsNull then
        QDetalleDET_PRECIO.Value       := Query1.FieldByName('det_precio').AsFloat;

      {for a := 0 to Query1.FieldCount-1 do
        QDetalle.FieldByName(Query1.Fields[a].FieldName).Value := Query1.Fields[a].Value;}

      QDetalle.Post;
      Query1.Next;
    end;

    totaliza := true;
    totalizar;

    Grid.SetFocus;
  end;
end;

procedure TfrmCotizacion.QDetalleAfterDelete(DataSet: TDataSet);
begin
  totalizar;
end;

end.
