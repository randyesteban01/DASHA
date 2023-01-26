unit PVENTA242;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxPC, cxControls, DB, QuerySearchDlgADO, IBCustomDataSet, ADODB,
  StdCtrls, Buttons, Grids, DBGrids, ComCtrls, ExtCtrls, Math, Menus;

type
  TFrmCotizacionVencidas = class(TForm)
    Splitter1: TSplitter;
    Panel1: TPanel;
    Label1: TLabel;
    Label12: TLabel;
    btVendedor: TSpeedButton;
    Label2: TLabel;
    SpeedButton2: TSpeedButton;
    btusuario: TSpeedButton;
    Label3: TLabel;
    Fecha1: TDateTimePicker;
    Fecha2: TDateTimePicker;
    tVendedor: TEdit;
    edVendedor: TEdit;
    edCliente: TEdit;
    tCliente: TEdit;
    tUsuario: TEdit;
    edUsuario: TEdit;
    Memo1: TMemo;
    Panel2: TPanel;
    btClose: TBitBtn;
    btrefresh: TBitBtn;
    QCotizacion: TADOQuery;
    dsCotizacion: TDataSource;
    Search: TQrySearchDlgADO;
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
    QDetalleCalcItbis: TFloatField;
    QDetalleCalcDesc: TFloatField;
    QDetallePrecioItbis: TFloatField;
    QDetalleValor: TFloatField;
    QDetalleDET_ESCALA: TIBStringField;
    QDetalleDET_MANEJAESCALA: TIBStringField;
    QDetalleDET_PRECIO1: TFloatField;
    QDetalleDET_PRECIO2: TFloatField;
    QDetalleDET_PRECIO3: TFloatField;
    QDetalleDET_PRECIO4: TFloatField;
    QDetalleDET_MEDIDA: TIBStringField;
    QDetalleDET_NOTA: TMemoField;
    QDetalleDET_DESCUENTO: TBCDField;
    QDetalledet_margen: TBCDField;
    QDetalledet_costo: TBCDField;
    QDetallePrecioTasa: TFloatField;
    QDetallepro_servicio: TStringField;
    QDetallepro_combo: TStringField;
    QDetallemar_codigo: TIntegerField;
    QDetallepro_unidad_medida: TStringField;
    QDetalleUnidadID: TStringField;
    QDetalleMedida_Precio1: TBCDField;
    QDetalleMedida_Precio2: TBCDField;
    QDetalleMedida_Precio3: TBCDField;
    QDetalleMedida_Precio4: TBCDField;
    QDetalledet_cant_unidad_medida: TBCDField;
    dsDetalle: TDataSource;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    Grid: TDBGrid;
    DBGrid1: TDBGrid;
    QCotizacionCOT_NUMERO: TIntegerField;
    QCotizacionEMP_CODIGO: TIntegerField;
    QCotizacionSUC_CODIGO: TIntegerField;
    QCotizacionCOT_FECHA: TDateField;
    QCotizacionCOT_NOMBRE: TStringField;
    QCotizacionCOT_TOTAL: TCurrencyField;
    QCotizacionESTATUS: TStringField;
    qConsulta: TADOQuery;
    QCotizacionUSU_NOMBRE: TStringField;
    PopupMenu1: TPopupMenu;
    mniAgregarComentarios1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btrefreshClick(Sender: TObject);
    procedure QCotizacionAfterOpen(DataSet: TDataSet);
    procedure QDetalleCalcFields(DataSet: TDataSet);
    procedure btCloseClick(Sender: TObject);
    procedure btVendedorClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure btusuarioClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure mniAgregarComentarios1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCotizacionVencidas: TFrmCotizacionVencidas;

implementation

uses SIGMA01, PVENTA243;

{$R *.dfm}

procedure TFrmCotizacionVencidas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action :=  caFree;
end;

procedure TFrmCotizacionVencidas.btrefreshClick(Sender: TObject);
begin
  QCotizacion.Close;
  QCotizacion.SQL.Clear;
  QCotizacion.SQL := qConsulta.SQL;

  if Trim(edVendedor.Text) <> '' then QCotizacion.SQL.Add('and c.ven_codigo = '+edVendedor.Text);
  if Trim(edCliente.Text) <> ''  then QCotizacion.SQL.Add('and c.cli_codigo = '+edCliente.Text);
  if Trim(edUsuario.Text) <> ''  then QCotizacion.SQL.Add('and c.usu_codigo = '+edUsuario.Text);

  QCotizacion.SQL.Add('order by c.cot_fecha desc');
  QCotizacion.Parameters.ParamByName('fec1').DataType := ftDate;
  QCotizacion.Parameters.ParamByName('fec2').DataType := ftDate;
  QCotizacion.Parameters.ParamByName('fec1').Value := Fecha1.Date;
  QCotizacion.Parameters.ParamByName('fec2').Value := Fecha2.Date;
  QCotizacion.Open;
  DBGrid1.SetFocus;
end;

procedure TFrmCotizacionVencidas.QCotizacionAfterOpen(DataSet: TDataSet);
begin
  if not QDetalle.Active then QDetalle.Open;
end;

procedure TFrmCotizacionVencidas.QDetalleCalcFields(DataSet: TDataSet);
var
  Venta, NumItbis, vPrec, vDesc, vCant : Double;
  a : integer;
begin
  if QDetalleDET_CONITBIS.value = 'S' then
  begin
    NumItbis := RoundTo((QDetalleDET_ITBIS.asfloat/100)+1, -2);
    if dm.QParametrospar_itbisincluido.Value = 'True' then
    begin
      Venta    := QDetalleDET_PRECIO.value/NumItbis;
      QDetallePrecioItbis.value := RoundTo(Venta, -2);
      QDetalleCalcDesc.value    := RoundTo((Venta * QDetalleDET_DESCUENTO.value)/100, -4);
      if QDetalleDET_CONITBIS.value = 'S' then
        QDetalleCalcItbis.value   := RoundTo(((Venta - QDetalleCalcDesc.value) * QDetalleDET_ITBIS.value) / 100, -4)
      else
        QDetalleCalcItbis.value   := 0;

      QDetalleValor.value     := (QDetallePrecioItbis.value - QDetalleCalcDesc.value + QDetalleCalcItbis.value) * QDetalleDET_CANTIDAD.value;
      QDetalleCalcItbis.value := RoundTo(QDetalleCalcItbis.value * QDetalleDET_CANTIDAD.value, -2);
    end
    else
    begin
      Venta := QDetalleDET_PRECIO.value;
      QDetallePrecioItbis.value := Venta;
      QDetalleCalcDesc.value    := RoundTo((Venta * QDetalleDET_DESCUENTO.value)/100, -4);
      if QDetalleDET_CONITBIS.value = 'S' then
        QDetalleCalcItbis.value := RoundTo(((Venta - QDetalleCalcDesc.value)* QDetalleDET_ITBIS.value) / 100, -4)
      else
        QDetalleCalcItbis.value := 0;

      QDetalleValor.value     := (QDetallePrecioItbis.value - QDetalleCalcDesc.value + QDetalleCalcItbis.value) * QDetalleDET_CANTIDAD.value;
      QDetalleCalcItbis.value := RoundTo(QDetalleCalcItbis.value * QDetalleDET_CANTIDAD.value, -2);
    end;
  end
  else
  begin
    Venta := QDetalleDET_PRECIO.value;
    QDetalleCalcDesc.value    := (Venta * QDetalleDET_DESCUENTO.value)/100;
    QDetallePrecioItbis.value := Venta;
    QDetalleCalcItbis.value   := 0;
    QDetalleValor.value       := (Venta-QDetalleCalcDesc.value)*QDetalleDET_CANTIDAD.value;
  end;


end;

procedure TFrmCotizacionVencidas.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmCotizacionVencidas.btVendedorClick(Sender: TObject);
begin
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('Código');
  Search.Query.clear;
  Search.Query.add('select ven_nombre, ven_codigo');
  Search.Query.add('from vendedores');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.ResultField := 'ven_Codigo';
  Search.Title := 'Listado de Vendedores';
  if Search.execute then
  begin
    edVendedor.text := Search.ValueField;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select ven_nombre from vendedores');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and ven_codigo = :ven');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('ven').Value := strtoint(trim(edVendedor.text));
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      messagedlg('VENDEDOR NO EXISTE',mterror,[mbok],0)
    else
      tVendedor.text := dm.Query1.fieldbyname('ven_nombre').asstring;
    edVendedor.setfocus;
    btRefreshClick(self);
  end;
end;

procedure TFrmCotizacionVencidas.SpeedButton2Click(Sender: TObject);
begin
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('Código');
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
    edCliente.setfocus;
    btRefreshClick(self);
  end;
end;

procedure TFrmCotizacionVencidas.btusuarioClick(Sender: TObject);
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

procedure TFrmCotizacionVencidas.FormShow(Sender: TObject);
begin
with DM.Query1 do begin
  Close;
  SQL.Clear;
  SQL.Add('SELECT CAST(CAST(GETDATE() AS CHAR(11)) AS DATETIME) AS FECHA1, ');
  SQL.Add('DATEADD(YEAR, -1, CAST(CAST(GETDATE() AS CHAR(11)) AS DATETIME)) FECHA2');
  Open;
  Fecha1.Date := FIELDBYNAME('Fecha2').AsDateTime;
  Fecha2.Date := FIELDBYNAME('Fecha1').AsDateTime;
  Close;
end;
btrefreshClick(Sender);
end;

procedure TFrmCotizacionVencidas.mniAgregarComentarios1Click(
  Sender: TObject);
begin
 application.createform(tFrmComentCoti, FrmComentCoti);
 FrmComentCoti.showmodal;
end;

end.
