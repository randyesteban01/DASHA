unit PVENTA220;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, QuerySearchDlgADO, DBCtrls, DB;

type
  TfrmRepCambioPrecios = class(TForm)
    Label1: TLabel;
    Fecha1: TDateTimePicker;
    Fecha2: TDateTimePicker;
    btClose: TBitBtn;
    btPrint: TBitBtn;
    btFamilia: TSpeedButton;
    Label4: TLabel;
    btDepto: TSpeedButton;
    Label27: TLabel;
    Label2: TLabel;
    btProveedor: TSpeedButton;
    btMarca: TSpeedButton;
    Label5: TLabel;
    Label7: TLabel;
    btgerente: TSpeedButton;
    tFamilia: TEdit;
    tDepto: TEdit;
    edProveedor: TEdit;
    tProveedor: TEdit;
    edDepto: TEdit;
    edFamilia: TEdit;
    tMArca: TEdit;
    edMarca: TEdit;
    edgerente: TEdit;
    tgerente: TEdit;
    Label3: TLabel;
    cbOrden: TComboBox;
    Search: TQrySearchDlgADO;
    Label6: TLabel;
    cbPrecios: TComboBox;
    procedure btCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btFamiliaClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btDeptoClick(Sender: TObject);
    procedure btProveedorClick(Sender: TObject);
    procedure btMarcaClick(Sender: TObject);
    procedure btgerenteClick(Sender: TObject);
    procedure edFamiliaChange(Sender: TObject);
    procedure edFamiliaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edDeptoChange(Sender: TObject);
    procedure edDeptoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edProveedorChange(Sender: TObject);
    procedure edProveedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edMarcaChange(Sender: TObject);
    procedure edMarcaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edgerenteChange(Sender: TObject);
    procedure edgerenteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure btPrintClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRepCambioPrecios: TfrmRepCambioPrecios;

implementation

uses SIGMA01, RVENTA120;

{$R *.dfm}

procedure TfrmRepCambioPrecios.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmRepCambioPrecios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmRepCambioPrecios.btFamiliaClick(Sender: TObject);
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

procedure TfrmRepCambioPrecios.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = chr(vk_return) then
     begin
       perform(wm_nextdlgctl, 0, 0);
       key := #0;
     end;
end;

procedure TfrmRepCambioPrecios.btDeptoClick(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Código');
  Search.Query.clear;
  Search.Query.add('select dep_nombre, dep_codigo');
  Search.Query.add('from departamentos');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
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
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.open;
    tDepto.text := dm.Query1.fieldbyname('dep_nombre').asstring;
    edDepto.setfocus;
  end;
end;

procedure TfrmRepCambioPrecios.btProveedorClick(Sender: TObject);
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

procedure TfrmRepCambioPrecios.btMarcaClick(Sender: TObject);
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

procedure TfrmRepCambioPrecios.btgerenteClick(Sender: TObject);
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

procedure TfrmRepCambioPrecios.edFamiliaChange(Sender: TObject);
begin
  if trim(edFamilia.text) = '' then tFamilia.text := '';
end;

procedure TfrmRepCambioPrecios.edFamiliaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
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

procedure TfrmRepCambioPrecios.edDeptoChange(Sender: TObject);
begin
  if trim(edDepto.text) = '' then tDepto.text := '';
end;

procedure TfrmRepCambioPrecios.edDeptoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
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
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      dm.Query1.open;
      tDepto.text := dm.Query1.fieldbyname('dep_nombre').asstring;
    end
    else
      tDepto.text := '';
  end;
end;

procedure TfrmRepCambioPrecios.edProveedorChange(Sender: TObject);
begin
  if trim(edProveedor.text) = '' then tProveedor.text := '';
end;

procedure TfrmRepCambioPrecios.edProveedorKeyDown(Sender: TObject;
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

procedure TfrmRepCambioPrecios.edMarcaChange(Sender: TObject);
begin
  if trim(edMarca.text) = '' then tMArca.text := '';
end;

procedure TfrmRepCambioPrecios.edMarcaKeyDown(Sender: TObject;
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

procedure TfrmRepCambioPrecios.edgerenteChange(Sender: TObject);
begin
  if trim(edgerente.text) = '' then tgerente.text := '';
end;

procedure TfrmRepCambioPrecios.edgerenteKeyDown(Sender: TObject;
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

procedure TfrmRepCambioPrecios.FormCreate(Sender: TObject);
begin
  Fecha1.Date := date;
  Fecha2.Date := date;
end;

procedure TfrmRepCambioPrecios.btPrintClick(Sender: TObject);
begin
  Application.CreateForm(tRCambioPrecios, RCambioPrecios);
  RCambioPrecios.lbmarca.Caption     := tMArca.Text;
  RCambioPrecios.lbFamilia.Caption   := tFamilia.Text;
  RCambioPrecios.lbDepto.Caption     := tDepto.Text;
  RCambioPrecios.lbProveedor.Caption := tProveedor.Text;
  RCambioPrecios.lbFecha.Caption     := 'Del '+datetostr(fecha1.date)+' Al '+datetostr(fecha2.date);
  RCambioPrecios.lbGerente.Caption   := tgerente.Text;
  
  if Trim(edProveedor.Text) <> '' then
    RCambioPrecios.QModificaciones.SQL.Add('and P.pro_codigo in (select pro_codigo from prodproveedores where sup_codigo = '+Trim(edProveedor.Text)+')');

  if Trim(edDepto.Text) <> '' then
    RCambioPrecios.QModificaciones.SQL.Add('and p.dep_codigo = '+Trim(edDepto.Text));

  if Trim(edFamilia.Text) <> '' then
    RCambioPrecios.QModificaciones.SQL.Add('and p.fam_codigo = '+Trim(edFamilia.Text));

  if Trim(edMarca.Text) <> '' then
    RCambioPrecios.QModificaciones.SQL.Add('and p.mar_codigo = '+Trim(edMarca.Text));

  if Trim(edgerente.Text) <> '' then
    RCambioPrecios.QModificaciones.SQL.Add('and p.ger_codigo = '+Trim(edgerente.Text));

  if cbPrecios.Text = 'Precio1 y Precio2' then
  begin
    RCambioPrecios.QRLabel9.Caption := 'PRECIO 1';
    RCambioPrecios.QRLabel5.Caption := 'PRECIO 2';
    RCambioPrecios.QRDBText9.DataField  := 'PRO_PRECIO1_ANT';
    RCambioPrecios.QRDBText6.DataField  := 'PRO_PRECIO1_ACT';
    RCambioPrecios.QRDBText7.DataField  := 'PRO_PRECIO2_ANT';
    RCambioPrecios.QRDBText10.DataField := 'PRO_PRECIO2_ACT';
    RCambioPrecios.QModificaciones.SQL.Add('and (isnull(c.PRO_PRECIO1_ACT,0) <> isnull(c.PRO_PRECIO1_ANT,0)');
    RCambioPrecios.QModificaciones.SQL.Add('or isnull(c.PRO_PRECIO2_ACT,0) <> isnull(c.PRO_PRECIO2_ANT,0))');
  end
  else if cbPrecios.Text = 'Precio1 y Precio3' then
  begin
    RCambioPrecios.QRLabel9.Caption := 'PRECIO 1';
    RCambioPrecios.QRLabel5.Caption := 'PRECIO 3';
    RCambioPrecios.QRDBText9.DataField  := 'PRO_PRECIO1_ANT';
    RCambioPrecios.QRDBText6.DataField  := 'PRO_PRECIO1_ACT';
    RCambioPrecios.QRDBText7.DataField  := 'PRO_PRECIO3_ANT';
    RCambioPrecios.QRDBText10.DataField := 'PRO_PRECIO3_ACT';
    RCambioPrecios.QModificaciones.SQL.Add('and (isnull(c.PRO_PRECIO1_ACT,0) <> isnull(c.PRO_PRECIO1_ANT,0)');
    RCambioPrecios.QModificaciones.SQL.Add('or isnull(c.PRO_PRECIO3_ACT,0) <> isnull(c.PRO_PRECIO3_ANT,0))');
  end
  else if cbPrecios.Text = 'Precio1 y Precio4' then
  begin
    RCambioPrecios.QRLabel9.Caption := 'PRECIO 1';
    RCambioPrecios.QRLabel5.Caption := 'PRECIO 4';
    RCambioPrecios.QRDBText9.DataField  := 'PRO_PRECIO1_ANT';
    RCambioPrecios.QRDBText6.DataField  := 'PRO_PRECIO1_ACT';
    RCambioPrecios.QRDBText7.DataField  := 'PRO_PRECIO4_ANT';
    RCambioPrecios.QRDBText10.DataField := 'PRO_PRECIO4_ACT';
    RCambioPrecios.QModificaciones.SQL.Add('and (isnull(c.PRO_PRECIO1_ACT,0) <> isnull(c.PRO_PRECIO1_ANT,0)');
    RCambioPrecios.QModificaciones.SQL.Add('or isnull(c.PRO_PRECIO4_ACT,0) <> isnull(c.PRO_PRECIO4_ANT,0))');
  end
  else if cbPrecios.Text = 'Precio2 y Precio3' then
  begin
    RCambioPrecios.QRLabel9.Caption := 'PRECIO 2';
    RCambioPrecios.QRLabel5.Caption := 'PRECIO 3';
    RCambioPrecios.QRDBText9.DataField  := 'PRO_PRECIO2_ANT';
    RCambioPrecios.QRDBText6.DataField  := 'PRO_PRECIO2_ACT';
    RCambioPrecios.QRDBText7.DataField  := 'PRO_PRECIO3_ANT';
    RCambioPrecios.QRDBText10.DataField := 'PRO_PRECIO3_ACT';
    RCambioPrecios.QModificaciones.SQL.Add('and (isnull(c.PRO_PRECIO2_ACT,0) <> isnull(c.PRO_PRECIO2_ANT,0)');
    RCambioPrecios.QModificaciones.SQL.Add('or isnull(c.PRO_PRECIO3_ACT,0) <> isnull(c.PRO_PRECIO3_ANT,0))');
  end
  else if cbPrecios.Text = 'Precio2 y Precio4' then
  begin
    RCambioPrecios.QRLabel9.Caption := 'PRECIO 2';
    RCambioPrecios.QRLabel5.Caption := 'PRECIO 4';
    RCambioPrecios.QRDBText9.DataField  := 'PRO_PRECIO2_ANT';
    RCambioPrecios.QRDBText6.DataField  := 'PRO_PRECIO2_ACT';
    RCambioPrecios.QRDBText7.DataField  := 'PRO_PRECIO4_ANT';
    RCambioPrecios.QRDBText10.DataField := 'PRO_PRECIO4_ACT';
    RCambioPrecios.QModificaciones.SQL.Add('and (isnull(c.PRO_PRECIO2_ACT,0) <> isnull(c.PRO_PRECIO2_ANT,0)');
    RCambioPrecios.QModificaciones.SQL.Add('or isnull(c.PRO_PRECIO4_ACT,0) <> isnull(c.PRO_PRECIO4_ANT,0))');
  end
  else if cbPrecios.Text = 'Precio3 y Precio4' then
  begin
    RCambioPrecios.QRLabel9.Caption := 'PRECIO 3';
    RCambioPrecios.QRLabel5.Caption := 'PRECIO 4';
    RCambioPrecios.QRDBText9.DataField  := 'PRO_PRECIO3_ANT';
    RCambioPrecios.QRDBText6.DataField  := 'PRO_PRECIO3_ACT';
    RCambioPrecios.QRDBText7.DataField  := 'PRO_PRECIO4_ANT';
    RCambioPrecios.QRDBText10.DataField := 'PRO_PRECIO4_ACT';
    RCambioPrecios.QModificaciones.SQL.Add('and (isnull(c.PRO_PRECIO3_ACT,0) <> isnull(c.PRO_PRECIO3_ANT,0)');
    RCambioPrecios.QModificaciones.SQL.Add('or isnull(c.PRO_PRECIO4_ACT,0) <> isnull(c.PRO_PRECIO4_ANT,0))');
  end;

  case cbOrden.ItemIndex of
  0 : RCambioPrecios.QModificaciones.SQL.Add('order by p.pro_codigo');
  1 : RCambioPrecios.QModificaciones.SQL.Add('order by p.pro_roriginal');
  2 : RCambioPrecios.QModificaciones.SQL.Add('order by p.pro_rfabric');
  3 : RCambioPrecios.QModificaciones.SQL.Add('order by p.pro_nombre');
  end;

  RCambioPrecios.QModificaciones.Parameters.ParamByName('emp').Value  := dm.QParametrosPAR_INVEMPRESA.Value;
  RCambioPrecios.QModificaciones.Parameters.ParamByName('fec1').Value := fecha1.Date;
  RCambioPrecios.QModificaciones.Parameters.ParamByName('fec2').Value := fecha2.Date;
  RCambioPrecios.QModificaciones.Parameters.ParamByName('fec1').DataType := ftDate;
  RCambioPrecios.QModificaciones.Parameters.ParamByName('fec2').DataType := ftDate;
  RCambioPrecios.QModificaciones.Open;
  RCambioPrecios.PrinterSetup;
  RCambioPrecios.Preview;
  RCambioPrecios.Destroy;
end;

end.
