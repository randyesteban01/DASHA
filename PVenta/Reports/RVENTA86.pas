unit RVENTA86;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, QuerySearchDlgADO;

type
  TfrmRepPuntoReorden = class(TForm)
    btFamilia: TSpeedButton;
    Label4: TLabel;
    tFamilia: TEdit;
    btDepto: TSpeedButton;
    Label27: TLabel;
    tDepto: TEdit;
    Label2: TLabel;
    btProveedor: TSpeedButton;
    edProveedor: TEdit;
    tProveedor: TEdit;
    edDepto: TEdit;
    edFamilia: TEdit;
    Search: TQrySearchDlgADO;
    btClose: TBitBtn;
    btPrint: TBitBtn;
    cbOrden: TComboBox;
    Label1: TLabel;
    btMarca: TSpeedButton;
    Label3: TLabel;
    tMArca: TEdit;
    edMarca: TEdit;
    Label5: TLabel;
    cbTipo: TComboBox;
    btAlma: TSpeedButton;
    Label6: TLabel;
    tAlma: TEdit;
    edAlma: TEdit;
    Label7: TLabel;
    btgerente: TSpeedButton;
    btcolor: TSpeedButton;
    Label18: TLabel;
    btgondolero: TSpeedButton;
    Label17: TLabel;
    edgerente: TEdit;
    tgerente: TEdit;
    tcolor: TEdit;
    edColor: TEdit;
    tgondolero: TEdit;
    edGondolero: TEdit;
    procedure btProveedorClick(Sender: TObject);
    procedure edProveedorChange(Sender: TObject);
    procedure btFamiliaClick(Sender: TObject);
    procedure btDeptoClick(Sender: TObject);
    procedure edDeptoChange(Sender: TObject);
    procedure edFamiliaChange(Sender: TObject);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btPrintClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edFamiliaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edDeptoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edProveedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edAlmaChange(Sender: TObject);
    procedure edAlmaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edMarcaChange(Sender: TObject);
    procedure edMarcaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btAlmaClick(Sender: TObject);
    procedure btMarcaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btgerenteClick(Sender: TObject);
    procedure btcolorClick(Sender: TObject);
    procedure btgondoleroClick(Sender: TObject);
    procedure edgerenteChange(Sender: TObject);
    procedure edColorChange(Sender: TObject);
    procedure edGondoleroChange(Sender: TObject);
    procedure edgerenteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edColorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edGondoleroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRepPuntoReorden: TfrmRepPuntoReorden;

implementation

uses SIGMA01, RVENTA125;

{$R *.dfm}

procedure TfrmRepPuntoReorden.btProveedorClick(Sender: TObject);
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
    edProveedor.setfocus;
  end;
end;

procedure TfrmRepPuntoReorden.edProveedorChange(Sender: TObject);
begin
  if trim(edProveedor.text) = '' then tProveedor.text := '';
end;

procedure TfrmRepPuntoReorden.btFamiliaClick(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Código');
  Search.Query.clear;
  Search.Query.add('select fam_nombre, fam_codigo');
  Search.Query.add('from familias');
  Search.Query.add('where emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.value));
  Search.ResultField := 'fam_codigo';
  Search.Title := 'Listado de Familias';
  if Search.execute then
  begin
    edFamilia.text := search.valuefield;
    edFamilia.setfocus;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select fam_codigo, fam_nombre');
    dm.Query1.sql.add('from familias');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and fam_codigo = :fam');
    dm.Query1.Parameters.parambyname('fam').Value := strtoint(search.valuefield);
    dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.open;
    tFamilia.text := dm.Query1.fieldbyname('fam_nombre').asstring;
    edFamilia.setfocus;
  end;
end;

procedure TfrmRepPuntoReorden.btDeptoClick(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Código');
  Search.Query.clear;
  Search.Query.add('select dep_nombre, dep_codigo');
  Search.Query.add('from departamentos');
  Search.Query.add('where emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.value));
  Search.Query.add('and dep_tipo = '+QuotedStr('V'));
  Search.ResultField := 'dep_codigo';
  Search.Title := 'Listado de Departamentos';
  if Search.execute then
  begin
    edDepto.text := search.valuefield;
    edDepto.setfocus;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select dep_codigo, dep_nombre');
    dm.Query1.sql.add('from departamentos');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and dep_codigo = :dep');
    dm.Query1.sql.add('and dep_tipo = '+QuotedStr('V'));
    dm.Query1.Parameters.parambyname('dep').Value := strtoint(search.valuefield);
    dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.open;
    tDepto.text := dm.Query1.fieldbyname('dep_nombre').asstring;
    edDepto.setfocus;
  end;
end;

procedure TfrmRepPuntoReorden.edDeptoChange(Sender: TObject);
begin
  if trim(edDepto.text) = '' then tDepto.text := '';
end;

procedure TfrmRepPuntoReorden.edFamiliaChange(Sender: TObject);
begin
  if trim(edFamilia.text) = '' then tFamilia.text := '';
end;

procedure TfrmRepPuntoReorden.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmRepPuntoReorden.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then close;
end;

procedure TfrmRepPuntoReorden.btPrintClick(Sender: TObject);
begin
  Application.CreateForm(tRReOrden, RReOrden);
  RReOrden.lbFecha.Caption := 'Al '+DateToStr(Date);

  RReOrden.lbFamilia.Caption   := tFamilia.Text;
  RReOrden.lbDepto.Caption     := tDepto.Text;
  RReOrden.lbProveedor.Caption := tProveedor.Text;
  RReOrden.lbmarca.Caption     := tMArca.Text;
  RReOrden.lbAlmacen.Caption   := tAlma.Text;
  RReOrden.lbTipo.Caption      := cbTipo.Items[cbTipo.itemindex];
  RReOrden.lbTitulo.Caption    := 'Productos en Punto de Reorden';
  RReOrden.lbGerente.Caption   := tgerente.Text;
  RReOrden.lbcolor.Caption     := tcolor.Text;
  RReOrden.lbpasillo.Caption   := tgondolero.Text;

  if Trim(edAlma.Text) <> '' then
  begin
    RReOrden.QProductos.SQL.Clear;
    RReOrden.QProductos.SQL.Add('select');
    RReOrden.QProductos.SQL.Add('p.PRO_CODIGO, e.exi_Cantidad as PRO_EXISTENCIA, p.PRO_NOMBRE,');
    //CAMBIO REALIZADO POR JHONATTAN GOMEZ 18/02/2018
    RReOrden.QProductos.SQL.Add('(isnull(pro_stkminimo,1)) cant_minimo, (isnull(pro_stkmaximo,1)) cant_maximo, ');
    RReOrden.QProductos.SQL.Add('(isnull(pro_stkminimo,1)-pro_existencia) req_minimo, (isnull(pro_stkmaximo,1)-pro_existencia) req_maximo, ');
    //CAMBIO REALIZADO POR JHONATTAN GOMEZ 18/02/2018
    RReOrden.QProductos.SQL.Add('p.PRO_PRECIO1, p.PRO_PRECIO2, p.PRO_PRECIO3,');
    RReOrden.QProductos.SQL.Add('p.PRO_PRECIO4, p.PRO_RFABRIC, p.PRO_RORIGINAL,');
    RReOrden.QProductos.SQL.Add('p.PRO_COSTO, e.exi_empaque as pro_existempaque, p.pro_costoempaque,');
    RReOrden.QProductos.SQL.Add('p.pro_itbis, isnull(p.pro_selectivo_ad,0) as pro_selectivo_ad,');
    RReOrden.QProductos.SQL.Add('isnull(p.pro_selectivo_con,0) as pro_selectivo_con, p.pro_montoitbis ');
    RReOrden.QProductos.SQL.Add('from PRODUCTOS p, existencias e');
    RReOrden.QProductos.SQL.Add('where p.emp_codigo = :par_invempresa');
    RReOrden.QProductos.SQL.Add('and p.pro_codigo = e.pro_codigo');
    RReOrden.QProductos.SQL.Add('and e.alm_codigo = :alm');
    RReOrden.QProductos.SQL.Add('and e.emp_codigo = '+IntToStr(dm.vp_cia));
    //Cambio Realizado por Jhonattan Gomez 20200708
    RReOrden.QProductos.SQL.Add('and p.pro_status = '+#39+'ACT'+#39);
    RReOrden.QProductos.Parameters.ParamByName('alm').Value := StrToInt(Trim(edAlma.Text));
  end;

  if Trim(edProveedor.Text) <> '' then
  begin
    RReOrden.QProductos.SQL.Add('and p.pro_codigo in');
    RReOrden.QProductos.SQL.Add('(select pro_codigo from PRODPROVEEDORES');
    RReOrden.QProductos.SQL.Add('where emp_codigo = '+inttostr(dm.vp_cia));
    RReOrden.QProductos.SQL.Add('and sup_codigo = '+Trim(edProveedor.text)+')');
  end;
  if Trim(edDepto.Text) <> '' then
    RReOrden.QProductos.SQL.Add('and p.dep_codigo = '+Trim(edDepto.Text));

  if Trim(edFamilia.Text) <> '' then
    RReOrden.QProductos.SQL.Add('and p.fam_codigo = '+Trim(edFamilia.Text));

  if Trim(edMarca.Text) <> '' then
    RReOrden.QProductos.SQL.Add('and p.mar_codigo = '+Trim(edMarca.Text));

  if Trim(edgerente.Text) <> '' then
    RReOrden.QProductos.SQL.Add('and p.ger_codigo = '+Trim(edgerente.Text));

  if Trim(edColor.Text) <> '' then
    RReOrden.QProductos.SQL.Add('and p.col_codigo = '+Trim(edColor.Text));

  if Trim(edGondolero.Text) <> '' then
    RReOrden.QProductos.SQL.Add('and p.gon_codigo = '+Trim(edGondolero.Text));

  if cbTipo.ItemIndex <> 2 then
  begin
    if cbTipo.ItemIndex = 0 then
      RReOrden.QProductos.SQL.Add('and p.PRO_NUEVOUSADO = '+#39+'N'+#39)
    else
      RReOrden.QProductos.SQL.Add('and p.PRO_NUEVOUSADO = '+#39+'U'+#39);
  end;

  RReOrden.QProductos.SQL.Add('and p.PRO_STKMINIMO >= p.pro_existencia');

  case cbOrden.ItemIndex of
  0 : RReOrden.QProductos.SQL.Add('order by p.pro_codigo');
  1 : RReOrden.QProductos.SQL.Add('order by p.PRO_RORIGINAL');
  2 : RReOrden.QProductos.SQL.Add('order by p.PRO_RFABRIC');
  3 : RReOrden.QProductos.SQL.Add('order by p.pro_nombre');
  end;
  RReOrden.QProductos.Open;
  RReOrden.PrinterSetup;
  RReOrden.Preview;
  RReOrden.Destroy;
end;

procedure TfrmRepPuntoReorden.FormCreate(Sender: TObject);
begin
  cbOrden.ItemIndex := 3;
end;

procedure TfrmRepPuntoReorden.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
     begin
       perform(wm_nextdlgctl, 0, 0);
       key := #0;
     end;
end;

procedure TfrmRepPuntoReorden.edFamiliaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edFamilia.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select fam_codigo, fam_nombre');
      dm.Query1.sql.add('from familias');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and fam_codigo = :fam');
      dm.Query1.Parameters.parambyname('fam').Value := strtoint(edFamilia.text);
      dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.open;
      tFamilia.text := dm.Query1.fieldbyname('fam_nombre').asstring;
    end
    else
      tFamilia.text := '';
  end;
end;

procedure TfrmRepPuntoReorden.edDeptoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edDepto.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select dep_codigo, dep_nombre');
      dm.Query1.sql.add('from departamentos');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and dep_codigo = :dep');
      dm.Query1.Parameters.parambyname('dep').Value := strtoint(edDepto.text);
      dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.open;
      tDepto.text := dm.Query1.fieldbyname('dep_nombre').asstring;
    end
    else
      tDepto.text := '';
  end;
end;

procedure TfrmRepPuntoReorden.edProveedorKeyDown(Sender: TObject; var Key: Word;
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
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.open;
      tProveedor.text := dm.Query1.fieldbyname('sup_nombre').asstring;
    end
    else
      tProveedor.text := '';
  end;
end;

procedure TfrmRepPuntoReorden.edAlmaChange(Sender: TObject);
begin
  if trim(edAlma.text) = '' then tAlma.text := '';
end;

procedure TfrmRepPuntoReorden.edAlmaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edAlma.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select alm_nombre');
      dm.Query1.sql.add('from almacen');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and alm_codigo = :alm');
      dm.Query1.Parameters.parambyname('alm').Value := strtoint(edAlma.text);
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.open;
      tAlma.text := dm.Query1.fieldbyname('alm_nombre').asstring;
    end
    else
      tAlma.text := '';
  end;
end;

procedure TfrmRepPuntoReorden.edMarcaChange(Sender: TObject);
begin
  if trim(edMarca.text) = '' then tMArca.text := '';
end;

procedure TfrmRepPuntoReorden.edMarcaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edMarca.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select mar_nombre');
      dm.Query1.sql.add('from marcas');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and mar_codigo = :mar');
      dm.Query1.Parameters.parambyname('mar').Value := strtoint(edMarca.text);
      dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.open;
      tMArca.text := dm.Query1.fieldbyname('mar_nombre').asstring;
    end
    else
      tMArca.text := '';
  end;
end;

procedure TfrmRepPuntoReorden.btAlmaClick(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Código');
  Search.Query.clear;
  Search.Query.add('select alm_nombre, alm_codigo');
  Search.Query.add('from almacen');
  Search.Query.add('where emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.value));
  Search.ResultField := 'alm_codigo';
  Search.Title := 'Listado de Almacenes';
  if Search.execute then
  begin
    edAlma.text := search.valuefield;
    edAlma.setfocus;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select alm_nombre');
    dm.Query1.sql.add('from almacen');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and alm_codigo = :alm');
    dm.Query1.Parameters.parambyname('alm').Value := strtoint(search.valuefield);
    dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.open;
    tAlma.text := dm.Query1.fieldbyname('alm_nombre').asstring;
    edAlma.setfocus;
  end;
end;

procedure TfrmRepPuntoReorden.btMarcaClick(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Código');
  Search.Query.clear;
  Search.Query.add('select mar_nombre, mar_codigo');
  Search.Query.add('from marcas');
  Search.Query.add('where emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.value));
  Search.ResultField := 'mar_codigo';
  Search.Title := 'Listado de Marcas';
  if Search.execute then
  begin
    edMarca.text := search.valuefield;
    edMarca.setfocus;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select mar_nombre');
    dm.Query1.sql.add('from marcas');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and mar_codigo = :mar');
    dm.Query1.Parameters.parambyname('mar').Value := strtoint(search.valuefield);
    dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.open;
    tMArca.text := dm.Query1.fieldbyname('mar_nombre').asstring;
    edMarca.setfocus;
  end;
end;

procedure TfrmRepPuntoReorden.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmRepPuntoReorden.btgerenteClick(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Código');
  Search.Query.clear;
  Search.Query.add('select ger_nombre, ger_codigo');
  Search.ResultField := 'ger_codigo';
  Search.Query.add('from gerentes');
  Search.Query.add('where emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.value));
  Search.Title := 'Listado de Gerentes';
  if Search.execute then
  begin
    edgerente.text := search.valuefield;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select ger_codigo, ger_nombre');
    dm.Query1.sql.add('from gerentes');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and ger_codigo = :ger');
    dm.Query1.Parameters.parambyname('ger').Value := strtoint(edgerente.text);
    dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.open;
    tgerente.text := dm.Query1.fieldbyname('ger_nombre').asstring;
    edgerente.setfocus;
  end;
end;

procedure TfrmRepPuntoReorden.btcolorClick(Sender: TObject);
begin
  Search.Title := 'Colores';
  Search.ResultField := 'col_codigo';
  Search.query.Clear;
  Search.query.add('select col_nombre, col_codigo');
  Search.query.add('from colores');
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Código');
  if search.execute then
  begin
    edColor.text := Search.ValueField;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select col_nombre from colores');
    dm.Query1.sql.add('where col_codigo = :col');
    dm.Query1.Parameters.parambyname('col').Value := strtoint(trim(edColor.text));
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      messagedlg('COLOR NO EXISTE',mterror,[mbok],0)
    else
      tcolor.text := dm.Query1.fieldbyname('col_nombre').asstring;
    edColor.setfocus;
  end;
end;

procedure TfrmRepPuntoReorden.btgondoleroClick(Sender: TObject);
begin
  Search.Title := 'Pasillo';
  Search.ResultField := 'gon_codigo';
  Search.query.Clear;
  Search.query.add('select gon_nombre, gon_codigo');
  Search.query.add('from gondoleros');
  Search.query.add('where emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.Value));
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Código');
  if search.execute then
  begin
    edGondolero.text := Search.ValueField;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select gon_nombre from gondoleros');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and gon_codigo = :gon');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('gon').Value := strtoint(trim(edGondolero.text));
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      messagedlg('PASILLO NO EXISTE',mterror,[mbok],0)
    else
      tgondolero.text := dm.Query1.fieldbyname('gon_nombre').asstring;
    edGondolero.setfocus;
  end;
end;

procedure TfrmRepPuntoReorden.edgerenteChange(Sender: TObject);
begin
  if trim(edgerente.text) = '' then tgerente.text := '';
end;

procedure TfrmRepPuntoReorden.edColorChange(Sender: TObject);
begin
  if trim(edColor.text) = '' then tcolor.text := '';
end;

procedure TfrmRepPuntoReorden.edGondoleroChange(Sender: TObject);
begin
  if trim(edGondolero.text) = '' then tgondolero.text := '';
end;

procedure TfrmRepPuntoReorden.edgerenteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edgerente.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select ger_codigo, ger_nombre');
      dm.Query1.sql.add('from gerentes');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and ger_codigo = :ger');
      dm.Query1.Parameters.parambyname('ger').Value := strtoint(edgerente.text);
      dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.open;
      tgerente.text := dm.Query1.fieldbyname('ger_nombre').asstring;
    end
    else
      tgerente.text := '';
  end;
end;

procedure TfrmRepPuntoReorden.edColorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edColor.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select col_nombre from colores');
      dm.Query1.sql.add('where col_codigo = :col');
      dm.Query1.Parameters.parambyname('col').Value := strtoint(trim(edColor.text));
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        messagedlg('COLOR NO EXISTE',mterror,[mbok],0);
        edColor.SetFocus;
      end
      else
        tcolor.text := dm.Query1.fieldbyname('col_nombre').asstring;
    end;
  end;
end;

procedure TfrmRepPuntoReorden.edGondoleroKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edGondolero.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select gon_nombre from gondoleros');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and gon_codigo = :gon');
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      dm.Query1.Parameters.parambyname('gon').Value := strtoint(trim(edGondolero.text));
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        messagedlg('PASILLO NO EXISTE',mterror,[mbok],0);
        edGondolero.SetFocus;
      end
      else
        tgondolero.text := dm.Query1.fieldbyname('gon_nombre').asstring;
    end;
  end;
end;

end.
