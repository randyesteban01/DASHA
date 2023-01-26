unit PVENTA38;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, ExtCtrls, StdCtrls, Buttons, DB, IBCustomDataSet, IBQuery,
  IBUpdateSQL, ADODB;

type
  TfrmPVenta = class(TForm)
    Grid: TStringGrid;
    Panel1: TPanel;
    lbTotal: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    edFecha: TEdit;
    edCajero: TEdit;
    Label3: TLabel;
    edHora: TEdit;
    Panel2: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    edProducto: TEdit;
    tProducto: TEdit;
    edCantidad: TEdit;
    edPrecio: TEdit;
    QFacturas: TADOQuery;
    QFacturasCAJ_CODIGO: TIntegerField;
    QFacturasCLI_CODIGO: TIntegerField;
    QFacturasCOT_NUMERO: TIntegerField;
    QFacturasCPA_CODIGO: TIntegerField;
    QFacturasEMP_CODIGO: TIntegerField;
    QFacturasFAC_DESCUENTO: TFloatField;
    QFacturasFAC_DIRECCION: TIBStringField;
    QFacturasFAC_FAX: TIBStringField;
    QFacturasFAC_FECHA: TDateTimeField;
    QFacturasFAC_FORMA: TIBStringField;
    QFacturasFAC_ITBIS: TFloatField;
    QFacturasFAC_LOCALIDAD: TIBStringField;
    QFacturasFAC_NOMBRE: TIBStringField;
    QFacturasFAC_NUMERO: TIntegerField;
    QFacturasFAC_OTROS: TFloatField;
    QFacturasFAC_STATUS: TIBStringField;
    QFacturasFAC_TELEFONO: TIBStringField;
    QFacturasFAC_TOTAL: TFloatField;
    QFacturasPED_NUMERO: TIntegerField;
    QFacturasTFA_CODIGO: TIntegerField;
    QFacturasUSU_CODIGO: TIntegerField;
    QFacturasVEN_CODIGO: TIntegerField;
    dsFacturas: TDataSource;
    QFacturasFAC_ABONO: TFloatField;
    QDetalle: TADOQuery;
    QDetalleDET_CANTDEVUELTA: TFloatField;
    QDetalleDET_CANTIDAD: TFloatField;
    QDetalleDET_CONITBIS: TIBStringField;
    QDetalleDET_COSTO: TFloatField;
    QDetalleDET_DESCUENTO: TFloatField;
    QDetalleDET_ITBIS: TFloatField;
    QDetalleDET_PRECIO: TFloatField;
    QDetalleDET_SECUENCIA: TIntegerField;
    QDetalleDET_STATUS: TIBStringField;
    QDetalleEMP_CODIGO: TIntegerField;
    QDetalleFAC_FORMA: TIBStringField;
    QDetalleFAC_NUMERO: TIntegerField;
    QDetallePRO_BARRA: TIBStringField;
    QDetallePRO_CODIGO: TIntegerField;
    QDetallePRO_NOMBRE: TIBStringField;
    QDetallePRO_RFABRIC: TIBStringField;
    QDetallePRO_RORIGINAL: TIBStringField;
    QDetalleTFA_CODIGO: TIntegerField;
    QDetalleValor: TFloatField;
    Query1: TADOQuery;
    lbForma: TLabel;
    Label7: TLabel;
    lbProducto: TLabel;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    StaticText6: TStaticText;
    StaticText7: TStaticText;
    StaticText8: TStaticText;
    StaticText9: TStaticText;
    QFacturasFAC_NOTA: TMemoField;
    procedure btSalirClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btBuscaProdClick(Sender: TObject);
    procedure QFacturasNewRecord(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure ckFormaClick(Sender: TObject);
    procedure edProductoKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure edPrecioKeyPress(Sender: TObject; var Key: Char);
    procedure btLimpiarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Cajero : integer;
    Total  : double;
    Forma  : string;
    procedure BuscaProducto;
  end;

var
  frmPVenta: TfrmPVenta;

implementation

uses PVENTA37, PVENTA33, PVENTA39, SIGMA01;

{$R *.dfm}

procedure TfrmPVenta.btSalirClick(Sender: TObject);
begin
  if messagedlg('DESEA SALIR DE LA FACTURA?',mtconfirmation,[mbyes,mbno],0) = mryes then
     close;
end;

procedure TfrmPVenta.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    if ActiveControl.classtype <> tStringgrid then
      perform(wm_nextdlgctl, 0, 0);
  end;
end;

procedure TfrmPVenta.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then btSalirClick(self);
  if key = vk_f3  then btLimpiarClick(self);
  if key = vk_f4  then btBuscaProdClick(self);
  if key = vk_f12 then
  begin
    if Forma = 'Automatico' then
    begin
      Forma := 'Manual';
      lbForma.caption := 'MODO '+UpperCase(Forma);
      edCantidad.Enabled := true;
      edPrecio.Enabled   := true;
      edProducto.setfocus;
    end
    else
    begin
      Forma := 'Automatico';
      lbForma.caption := 'MODO '+UpperCase(Forma);
      edCantidad.Enabled := false;
      edPrecio.Enabled   := false;
      edProducto.setfocus;
    end;
  end;
end;

procedure TfrmPVenta.btBuscaProdClick(Sender: TObject);
begin
  application.createform(tfrmBuscaProducto, frmBuscaProducto);
  frmBuscaProducto.showmodal;
  if frmBuscaProducto.seleccion = 1 then
  begin
    if dm.QParametrosPAR_CODIGOPRODUCTO.Value = 'I' then
       edProducto.text := inttostR(frmBuscaProducto.QProductosPRO_CODIGO.value)
    else if dm.QParametrosPAR_CODIGOPRODUCTO.Value = 'O' then
       edProducto.text := frmBuscaProducto.QProductosPRO_RORIGINAL.value
    else if dm.QParametrosPAR_CODIGOPRODUCTO.Value = 'F' then
       edProducto.text := frmBuscaProducto.QProductosPRO_RFABRIC.value;

    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select pro_nombre, pro_precio1, pro_precio2,');
    dm.Query1.sql.add('pro_precio3, pro_precio4, PRO_DISPLAY ');
    dm.Query1.sql.add('from productos where emp_codigo = :emp ');

    if dm.QParametrosPAR_CODIGOPRODUCTO.Value = 'I' then
       dm.Query1.sql.add('and pro_codigo = '+trim(edProducto.text))
    else if dm.QParametrosPAR_CODIGOPRODUCTO.Value = 'O' then
       dm.Query1.sql.add('and PRO_RORIGINAL = '+#39+trim(edProducto.text)+#39)
    else if dm.QParametrosPAR_CODIGOPRODUCTO.Value = 'F' then
       dm.Query1.sql.add('and PRO_RFABRIC = '+#39+trim(edProducto.text)+#39);
    dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.value;
    dm.Query1.open;

    tProducto.text := dm.Query1.fieldbyname('pro_nombre').asstring;
    edCantidad.text := '1';
    edPrecio.text := floattostr(dm.Query1.fieldbyname('pro_'+dm.QParametrosPAR_TIPOPRECIO.value).asfloat);

{    QDetalle.Edit;
    if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'I' then
       QDetallePRO_CODIGO.value := frmBuscaProducto.QProductosPRO_CODIGO.value
    else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'F' then
       QDetallePRO_RFABRIC.value := frmBuscaProducto.QProductosPRO_RFABRIC.value
    else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'O' then
       QDetallePRO_RORIGINAL.value := frmBuscaProducto.QProductosPRO_RORIGINAL.value;}
  end;
  frmBuscaProducto.release;
  if Forma = 'Automatico' then
     BuscaProducto
  else
     edCantidad.setfocus;
end;

procedure TfrmPVenta.QFacturasNewRecord(DataSet: TDataSet);
begin
  QFacturasEMP_CODIGO.value := dm.vp_cia;
  QFacturasFAC_FECHA.value  := date;
  QFacturasTFA_CODIGO.value := dm.QParametrosPAR_TFACODIGO.value;
  QFacturasFAC_FORMA.value  := dm.QParametrosPAR_FACFORMA.value;
  QFacturasFAC_ABONO.value  := 0;
  QFacturasFAC_TOTAL.value  := 0;
  QFacturasFAC_DESCUENTO.value := 0;
  QFacturasFAC_ITBIS.value  := 0;
  QFacturasFAC_STATUS.value := 'EMI';
  QFacturasCAJ_CODIGO.value := Cajero;
  lbTotal.caption := '0.00';
  Total := 0;
end;

procedure TfrmPVenta.FormActivate(Sender: TObject);
begin
  if not QFacturas.Active then
  begin
    QFacturas.Parameters.parambyname('emp_codigo').Value := dm.vp_cia;
    QFacturas.Parameters.parambyname('forma').Value       := dm.QParametrosPAR_FACFORMA.value;
    QFacturas.Parameters.parambyname('tipo').Value       := dm.QParametrosPAR_TFACODIGO.value;
    QFacturas.Parameters.parambyname('numero').Value     := -1;
    QFacturas.Open;
    QFacturas.Insert;
    lbProducto.caption := ' ';
  end;
end;

procedure TfrmPVenta.ckFormaClick(Sender: TObject);
begin
  edProducto.setfocus;
end;

procedure TfrmPVenta.edProductoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    BuscaProducto;
  end;
end;

procedure TfrmPVenta.FormCreate(Sender: TObject);
begin
  Grid.Cells[0,0] := 'No.';
  Grid.Cells[1,0] := 'CANTIDAD';
  Grid.Cells[2,0] := 'NOMBRE DEL PRODUCTO';
  Grid.Cells[3,0] := 'VALOR';
  Total := 0;
  Forma := 'Automatico';
end;

procedure TfrmPVenta.edPrecioKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if trim(Grid.cells[0,1]) <> '' then
       Grid.RowCount := Grid.RowCount + 1;

    Grid.Cells[0,Grid.RowCount-1] := inttostr(Grid.RowCount-1);
    Grid.Cells[1,Grid.RowCount-1] := trim(edCantidad.text);
    Grid.Cells[2,Grid.RowCount-1] := dm.Query1.fieldbyname('pro_nombre').asstring;
    Grid.Cells[3,Grid.RowCount-1] := format('%n',[strtofloat(trim(edPrecio.text))*strtofloat(trim(edCantidad.text))]);

    Total := Total + strtofloat(trim(edPrecio.text))*strtofloat(trim(edCantidad.text));
    lbTotal.Caption := format('%n',[Total]);

    edProducto.Text := '';
    tProducto.Text := '';
    edCantidad.Text := '';
    edPrecio.Text := '';
    Forma := 'Automatico';
    lbForma.caption := 'MODO '+UpperCase(Forma);
    edCantidad.Enabled := false;
    edPrecio.Enabled   := false;
    edProducto.setfocus;
  end;
end;

procedure TfrmPVenta.BuscaProducto;
begin
  dm.Query1.close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select pro_nombre, pro_precio1, pro_precio2,');
  dm.Query1.sql.add('pro_precio3, pro_precio4, PRO_DISPLAY ');
  dm.Query1.sql.add('from productos where emp_codigo = :emp ');
  if dm.QParametrosPAR_CODIGOPRODUCTO.Value = 'I' then
     dm.Query1.sql.add('and pro_codigo = '+trim(edProducto.text))
  else if dm.QParametrosPAR_CODIGOPRODUCTO.Value = 'O' then
     dm.Query1.sql.add('and PRO_RORIGINAL = '+#39+trim(edProducto.text)+#39)
  else if dm.QParametrosPAR_CODIGOPRODUCTO.Value = 'F' then
     dm.Query1.sql.add('and PRO_RFABRIC = '+#39+trim(edProducto.text)+#39);
  dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.value;
  dm.Query1.open;
  if dm.Query1.recordcount > 0 then
  begin
    tProducto.text := dm.Query1.fieldbyname('pro_nombre').asstring;
    lbProducto.caption := dm.Query1.fieldbyname('pro_nombre').asstring;
    edCantidad.text := '1';
    edPrecio.text := floattostr(dm.Query1.fieldbyname('pro_'+dm.QParametrosPAR_TIPOPRECIO.value).asfloat);

    if Forma = 'Automatico' then
    begin
      if trim(Grid.cells[0,1]) <> '' then
         Grid.RowCount := Grid.RowCount + 1;

      Grid.Cells[0,Grid.RowCount-1] := inttostr(Grid.RowCount-1);
      Grid.Cells[1,Grid.RowCount-1] := '1';
      Grid.Cells[2,Grid.RowCount-1] := dm.Query1.fieldbyname('pro_nombre').asstring;
      Grid.Cells[3,Grid.RowCount-1] := format('%n',[dm.Query1.fieldbyname('pro_'+dm.QParametrosPAR_TIPOPRECIO.value).asfloat]);

      Total := Total + dm.Query1.fieldbyname('pro_'+dm.QParametrosPAR_TIPOPRECIO.value).asfloat;
      lbTotal.Caption := format('%n',[Total]);

      edProducto.Text := '';
      tProducto.Text := '';
      edCantidad.Text := '';
      edPrecio.Text := '';
    end;
  end
  else
  begin
    showmessage('ESTE PRODUCTO NO EXISTE');
    edProducto.Text := '';
    tProducto.Text := '';
    edCantidad.Text := '';
    edPrecio.Text := '';
    edProducto.setfocus;
  end;
end;

procedure TfrmPVenta.btLimpiarClick(Sender: TObject);
var
  a, b : integer;
begin
  QFacturas.CancelUpdates;
  QFacturas.insert;
  lbProducto.caption := ' ';
  for a := 1 to Grid.RowCount-1 do
    for b := 0 to Grid.ColCount-1 do
      Grid.cells[b,a] := '';
  Grid.RowCount := 2;
  edProducto.Text := '';
  tProducto.Text := '';
  edCantidad.Text := '';
  edPrecio.Text := '';
  Forma := 'Automatico';
  lbForma.caption := 'MODO '+UpperCase(Forma);
  edCantidad.Enabled := false;
  edPrecio.Enabled   := false;

  edProducto.SetFocus;
end;

end.
