unit PVENTA139;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, QuerySearchDlgADO;

type
  TfrmRepSolicitados = class(TForm)
    btClose: TBitBtn;
    btPrint: TBitBtn;
    Search: TQrySearchDlgADO;
    Label2: TLabel;
    btProveedor: TSpeedButton;
    edProveedor: TEdit;
    tProveedor: TEdit;
    Label1: TLabel;
    cbOrden: TComboBox;
    procedure btCloseClick(Sender: TObject);
    procedure btPrintClick(Sender: TObject);
    procedure btProveedorClick(Sender: TObject);
    procedure edProveedorChange(Sender: TObject);
    procedure edProveedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRepSolicitados: TfrmRepSolicitados;

implementation

uses SIGMA01, RVENTA69;

{$R *.dfm}

procedure TfrmRepSolicitados.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmRepSolicitados.btPrintClick(Sender: TObject);
begin
  Application.CreateForm(tRepSolicitados, RepSolicitados);
  RepSolicitados.lbFecha.Caption := DateToStr(date);
  if trim(edProveedor.Text) <> '' then
  begin
    RepSolicitados.QProv.SQL.Clear;
    RepSolicitados.QProv.SQL.Add('select distinct s.sup_nombre, s.sup_codigo, s.emp_codigo');
    RepSolicitados.QProv.SQL.Add('from proveedores s, prodproveedores v');
    RepSolicitados.QProv.SQL.Add('where s.emp_codigo = :par_invempresa');
    RepSolicitados.QProv.SQL.Add('and exists (select null from productos where pro_realizar_pedido = '+QuotedStr('True'));
    RepSolicitados.QProv.SQL.Add('and emp_codigo = s.emp_codigo');
    RepSolicitados.QProv.SQL.Add('and sup_codigo = s.sup_codigo)');
    RepSolicitados.QProv.SQL.Add('and s.sup_codigo = '+trim(edProveedor.Text));
    RepSolicitados.QProv.SQL.Add('order by s.sup_codigo');
  end;
  RepSolicitados.QProv.Open;

  case cbOrden.ItemIndex of
  0 : RepSolicitados.QProductos.SQL.Add('order by pro_codigo');
  1 : RepSolicitados.QProductos.SQL.Add('order by pro_roriginal');
  2 : RepSolicitados.QProductos.SQL.Add('order by pro_nombre');
  end;

  RepSolicitados.QProductos.Open;
  RepSolicitados.PrinterSetup;
  RepSolicitados.Preview;
  RepSolicitados.Destroy;
end;

procedure TfrmRepSolicitados.btProveedorClick(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C�digo');
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
    edProveedor.setfocus;
  end;
end;

procedure TfrmRepSolicitados.edProveedorChange(Sender: TObject);
begin
  if trim(edProveedor.text) = '' then tProveedor.text := '';
end;

procedure TfrmRepSolicitados.edProveedorKeyDown(Sender: TObject;
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
    end
    else
      tProveedor.text := '';
  end;
end;

procedure TfrmRepSolicitados.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
     begin
       perform(wm_nextdlgctl, 0, 0);
       key := #0;
     end;
end;

procedure TfrmRepSolicitados.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

end.
