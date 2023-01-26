unit PVenta233;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, dxmdaset, cxCheckBox, ADODB,
  QuerySearchDlgADO, frxClass, frxDBSet;

type
  TfrmListadoProdFalt = class(TForm)
    grp1: TGroupBox;
    RG_BusqProd: TRadioGroup;
    RG_Suplidor: TRadioGroup;
    grp2: TGroupBox;
    LB_1: TLabel;
    edProveedor: TEdit;
    btProveedor: TSpeedButton;
    edProveedorN: TEdit;
    btnImprimir: TBitBtn;
    btnSalir: TBitBtn;
    btnFind: TBitBtn;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    MD_1: TdxMemData;
    MD_1emp_codigo: TIntegerField;
    MD_1suc_codigo: TIntegerField;
    MD_1pro_nombre: TStringField;
    MD_1pedido: TBooleanField;
    MD_1sup_codigo: TIntegerField;
    MD_1sup_nombre: TStringField;
    DS_1: TDataSource;
    cxGrid1DBTableView1pro_codigo: TcxGridDBColumn;
    cxGrid1DBTableView1pro_nombre: TcxGridDBColumn;
    cxGrid1DBTableView1pedido: TcxGridDBColumn;
    cxGrid1DBTableView1sup_codigo: TcxGridDBColumn;
    cxGrid1DBTableView1sup_nombre: TcxGridDBColumn;
    QSelectProd: TADOQuery;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    QSucursalalm_codigo: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    Search: TQrySearchDlgADO;
    MD_1pro_codigo: TStringField;
    Rpt_1: TfrxReport;
    DB_Impresion: TfrxDBDataset;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GrabarListado;
    procedure BuscarListado(Tipo:Integer);
    procedure FormActivate(Sender: TObject);
    procedure cxGrid1DBTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure RG_SuplidorClick(Sender: TObject);
    procedure btProveedorClick(Sender: TObject);
    procedure MD_1BeforePost(DataSet: TDataSet);
    procedure MD_1NewRecord(DataSet: TDataSet);
    procedure cxGrid1DBTableView1EditKeyDown(
      Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
      AEdit: TcxCustomEdit; var Key: Word; Shift: TShiftState);
    procedure btnSalirClick(Sender: TObject);
    procedure cxGrid1Exit(Sender: TObject);
    procedure btnFindClick(Sender: TObject);
    procedure edProveedorClick(Sender: TObject);
    procedure edProveedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnImprimirClick(Sender: TObject);
  private
    vl_sucursal : Integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmListadoProdFalt: TfrmListadoProdFalt;

implementation

uses SIGMA01, PVENTA33;

{$R *.dfm}

procedure TfrmListadoProdFalt.BuscarListado(Tipo: Integer);
begin
with QSelectProd do begin
Close;
SQL.Clear;
SQL.Add('select A.emp_codigo, A.suc_codigo, A.pro_codigo, A.pro_nombre, A.sup_codigo, B.sup_nombre, A.pedido');
sql.Add('from ListProdFaltantes A');
sql.Add('LEFT JOIN Proveedores B on A.emp_codigo=B.emp_codigo and A.sup_codigo=B.sup_codigo');
sql.Add('where A.emp_codigo = :emp and A.suc_codigo = :suc');
if Trim(edProveedor.Text)<> '' then begin
SQL.Add('and A.sup_codigo = :sup');
Parameters.ParamByName('sup').Value := StrToInt(edProveedor.Text);
end;
Parameters.ParamByName('emp').Value := dm.vp_cia;
Parameters.ParamByName('suc').Value := vl_sucursal;
Open;
if not IsEmpty then begin
  MD_1.Close;
  MD_1.Open;
  QSelectProd.First;
  while not QSelectProd.Eof do begin
    md_1.append;
    MD_1emp_codigo.Value :=  QSelectProd.fieldbyname('emp_codigo').Value;
    MD_1suc_codigo.Value :=  QSelectProd.fieldbyname('suc_codigo').Value;
    MD_1pro_codigo.Value :=  QSelectProd.fieldbyname('pro_codigo').Value;
    MD_1pro_nombre.Value :=  QSelectProd.fieldbyname('pro_nombre').Value;
    if QSelectProd.fieldbyname('sup_codigo').Value > 0 then begin
    MD_1sup_codigo.Value :=  QSelectProd.fieldbyname('sup_codigo').Value;
    MD_1sup_nombre.Value :=  QSelectProd.fieldbyname('sup_nombre').Value;
    end;
    MD_1pedido.Value     :=  QSelectProd.fieldbyname('pedido').Value;
    MD_1.Post;
    QSelectProd.Next;
  end;
end else
begin
MD_1.Close;
MD_1.Open;
end;
end;
end;

procedure TfrmListadoProdFalt.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if MessageDlg('Desea Grabar los productos?',mtConfirmation,[mbYes,mbNo],0)=mryes then begin
  GrabarListado;
  action := caFree;
end;
end;

procedure TfrmListadoProdFalt.GrabarListado;
begin
if MD_1.State in [dsedit, dsinsert] then
MD_1.Post;
MD_1.First;

while not MD_1.Eof do begin
WITH DM.Query1 DO BEGIN
  Close;
  SQL.Clear;
  SQL.Add('DELETE FROM ListProdFaltantes');
  sql.Add('WHERE emp_codigo = :emp and suc_codigo = :suc and pro_codigo = :prod and pro_nombre = :nombre');
  Parameters.ParamByName('emp').Value        := dm.vp_cia;
  Parameters.ParamByName('suc').Value        := vl_sucursal;
  Parameters.ParamByName('prod').Value       := MD_1pro_codigo.Value;
  Parameters.ParamByName('nombre').Value     := MD_1pro_nombre.Value;
  ExecSQL;
end;

if MD_1pedido.Value = False then begin
WITH DM.Query1 DO BEGIN
  Close;
  SQL.Clear;
  SQL.Add('INSERT INTO ListProdFaltantes');
  sql.Add('(emp_codigo, suc_codigo, pro_codigo, pro_nombre, sup_codigo, pedido)');
  SQL.Add('VALUES (:emp, :suc, :prod, :prodnombre, :suplidor, :pedido)');
  Parameters.ParamByName('emp').Value        := dm.vp_cia;
  Parameters.ParamByName('suc').Value        := vl_sucursal;
  Parameters.ParamByName('prod').Value       := MD_1pro_codigo.Value;
  Parameters.ParamByName('prodnombre').Value := MD_1pro_nombre.Value;
  Parameters.ParamByName('suplidor').Value   := MD_1sup_codigo.Value;
  Parameters.ParamByName('pedido').Value     := MD_1pedido.Value;
  ExecSQL;
end;
end;
MD_1.Next;
end;
end;

procedure TfrmListadoProdFalt.FormActivate(Sender: TObject);
begin
RG_SuplidorClick(Sender);
with QSucursal do begin
Close;
Parameters.ParamByName('usu').Value := dm.Usuario;
Open;
if Locate('suc_codigo',dm.vp_cia, []) then
vl_sucursal := QSucursalsuc_codigo.Value;
Close;
end;

BuscarListado(0);
if DM.QParametrosPAR_CODIGOPRODUCTO.Value = 'I' then
RG_BusqProd.ItemIndex := 0;
if DM.QParametrosPAR_CODIGOPRODUCTO.Value = 'O' then
RG_BusqProd.ItemIndex := 1;
if DM.QParametrosPAR_CODIGOPRODUCTO.Value = 'F' then
RG_BusqProd.ItemIndex := 2;
end;

procedure TfrmListadoProdFalt.cxGrid1DBTableView1KeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then cxGrid1DBTableView1.Items[cxGrid1DBTableView1.ItemCount+1];
end;

procedure TfrmListadoProdFalt.RG_SuplidorClick(Sender: TObject);
begin
case RG_Suplidor.ItemIndex of
0:begin
grp2.Enabled := False;
edProveedor.Clear;
edProveedorN.Clear;
end;
1:grp2.Enabled := True;
end;
end;

procedure TfrmListadoProdFalt.btProveedorClick(Sender: TObject);
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
    edProveedor.text := dm.Query1.fieldbyname('sup_nombre').asstring;
    edProveedor.setfocus;
  end;
end;

procedure TfrmListadoProdFalt.MD_1BeforePost(DataSet: TDataSet);
begin
MD_1emp_codigo.Value := dm.vp_cia;
MD_1suc_codigo.Value := vl_sucursal;
if MD_1pro_nombre.Text = '' then begin
ShowMessage('Debes indicar el producto....');
Abort;
end;
end;

procedure TfrmListadoProdFalt.MD_1NewRecord(DataSet: TDataSet);
begin
MD_1emp_codigo.Value := dm.vp_cia;
MD_1suc_codigo.Value := vl_sucursal;
end;

procedure TfrmListadoProdFalt.cxGrid1DBTableView1EditKeyDown(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  AEdit: TcxCustomEdit; var Key: Word; Shift: TShiftState);
begin
IF Key = VK_DOWN THEN MD_1.Append;
end;

procedure TfrmListadoProdFalt.btnSalirClick(Sender: TObject);
begin
GrabarListado;
frmListadoProdFalt.Close;
end;

procedure TfrmListadoProdFalt.cxGrid1Exit(Sender: TObject);
begin
GrabarListado;
end;

procedure TfrmListadoProdFalt.btnFindClick(Sender: TObject);
begin
 MD_1.Append;
  application.createform(tfrmBuscaProducto, frmBuscaProducto);
  frmBuscaProducto.showmodal;
  if frmBuscaProducto.seleccion = 1 then
  begin
    case RG_BusqProd.ItemIndex of
    0:MD_1pro_codigo.Value := frmBuscaProducto.QProductosPRO_CODIGO.AsString;
    1:MD_1pro_codigo.Value := frmBuscaProducto.QProductosPRO_RORIGINAL.AsString;
    2:MD_1pro_codigo.Value := frmBuscaProducto.QProductosPRO_RFABRIC.AsString;
  end;
      MD_1sup_codigo.Value := frmBuscaProducto.QProductosSUP_CODIGO.Value;
      MD_1pro_nombre.Value := frmBuscaProducto.QProductosPRO_NOMBRE.Value;
      MD_1sup_nombre.Value := frmBuscaProducto.QProductosSUP_NOMBRE.Value;
  end;
  frmBuscaProducto.release;
end;

procedure TfrmListadoProdFalt.edProveedorClick(Sender: TObject);
begin
cxGrid1Exit(Sender);
end;

procedure TfrmListadoProdFalt.edProveedorKeyDown(Sender: TObject;
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
      edProveedorN.text := dm.Query1.fieldbyname('sup_nombre').asstring;
      BuscarListado(StrToInt(edProveedor.Text));
    end
    else
      edProveedorN.text := '';
      BuscarListado(0);
  end;
end;

procedure TfrmListadoProdFalt.btnImprimirClick(Sender: TObject);
begin
if MD_1.State in [dsedit, dsinsert] then
MD_1.Post;

if MD_1.RecordCount = 0 then begin
  ShowMessage('No existen datos para el reporte');
  Abort;
end;

if MessageDlg('Desea imprimir el listado de articulos?',mtConfirmation,[mbYes,mbNo],0)=mryes then begin
Rpt_1.ShowReport(True);
end;
end;

end.
