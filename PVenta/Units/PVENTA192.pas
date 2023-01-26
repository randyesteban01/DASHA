unit PVENTA192;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, QuerySearchDlgADO;

type
  TfrmRepInvFamiliaDepto = class(TForm)
    btFamilia: TSpeedButton;
    Label4: TLabel;
    tFamilia: TEdit;
    edFamilia: TEdit;
    Search: TQrySearchDlgADO;
    btClose: TBitBtn;
    btPrint: TBitBtn;
    cbOrden: TComboBox;
    Label1: TLabel;
    btAlma: TSpeedButton;
    Label6: TLabel;
    tAlma: TEdit;
    edAlma: TEdit;
    ckimpuesto: TCheckBox;
    btDepto: TSpeedButton;
    Label27: TLabel;
    tDepto: TEdit;
    edDepto: TEdit;
    ckemp: TCheckBox;
    procedure btFamiliaClick(Sender: TObject);
    procedure edFamiliaChange(Sender: TObject);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btPrintClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edFamiliaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edAlmaChange(Sender: TObject);
    procedure edAlmaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btAlmaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btDeptoClick(Sender: TObject);
    procedure edDeptoChange(Sender: TObject);
    procedure edDeptoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRepInvFamiliaDepto: TfrmRepInvFamiliaDepto;

implementation

uses SIGMA01, RVENTA27, RVENTA98;

{$R *.dfm}

procedure TfrmRepInvFamiliaDepto.btFamiliaClick(Sender: TObject);
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

procedure TfrmRepInvFamiliaDepto.edFamiliaChange(Sender: TObject);
begin
  if trim(edFamilia.text) = '' then tFamilia.text := '';
end;

procedure TfrmRepInvFamiliaDepto.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmRepInvFamiliaDepto.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then close;
end;

procedure TfrmRepInvFamiliaDepto.btPrintClick(Sender: TObject);
begin
  if edAlma.Text = '' then
  begin
    MessageDlg('Debe especificar el almacen',mtError,[mbok],0);
    edAlma.SetFocus;
  end
  else
  begin
    Application.CreateForm(tRProdFamiliaDepto, RProdFamiliaDepto);
    RProdFamiliaDepto.Impuesto := ckimpuesto.Checked;
    RProdFamiliaDepto.empaque  := ckemp.Checked;
    RProdFamiliaDepto.QFamilias.SQL.Clear;
    RProdFamiliaDepto.QFamilias.SQL.Add('select distinct p.fam_codigo,');
    RProdFamiliaDepto.QFamilias.SQL.Add('f.fam_nombre, p.emp_codigo');
    RProdFamiliaDepto.QFamilias.SQL.Add('from productos p, familias f');
    RProdFamiliaDepto.QFamilias.SQL.Add('where p.emp_codigo = f.emp_codigo');
    RProdFamiliaDepto.QFamilias.SQL.Add('and p.fam_codigo = f.fam_codigo');
    RProdFamiliaDepto.QFamilias.SQL.Add('and p.emp_codigo = :par_invempresa');
    RProdFamiliaDepto.QFamilias.SQL.Add('and p.dep_codigo is not null');

    if edFamilia.Text <> '' then
      RProdFamiliaDepto.QFamilias.SQL.Add('and p.fam_codigo = '+edFamilia.Text);

    if edDepto.Text <> '' then
      RProdFamiliaDepto.QFamilias.SQL.Add('and p.dep_codigo = '+edDepto.Text);

    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select rep3 from parconfigimpinv');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.value;
    dm.Query1.Open;
    if UpperCase(dm.Query1.FieldByName('rep3').AsString) = 'CON EXISTENCIA = 0' then
    begin
      RProdFamiliaDepto.QProductos.SQL.Add('and p.pro_existencia = 0');
      RProdFamiliaDepto.QFamilias.SQL.Add('and p.pro_existencia = 0');
    end
    else if UpperCase(dm.Query1.FieldByName('rep3').AsString) = 'CON EXISTENCIA > 0' then
    begin
      RProdFamiliaDepto.QProductos.SQL.Add('and p.pro_existencia > 0');
      RProdFamiliaDepto.QFamilias.SQL.Add('and p.pro_existencia > 0');
    end
    else if UpperCase(dm.Query1.FieldByName('rep3').AsString) = 'CON EXISTENCIA < 0' then
    begin
      RProdFamiliaDepto.QProductos.SQL.Add('and p.pro_existencia < 0');
      RProdFamiliaDepto.QFamilias.SQL.Add('and p.pro_existencia < 0');
    end;

    case cbOrden.ItemIndex of
    0: RProdFamiliaDepto.QProductos.SQL.Add('order by p.pro_codigo');
    1: RProdFamiliaDepto.QProductos.SQL.Add('order by p.pro_roriginal');
    2: RProdFamiliaDepto.QProductos.SQL.Add('order by p.pro_nombre');
    end;

    RProdFamiliaDepto.QFamilias.SQL.Add('order by p.fam_codigo');
    RProdFamiliaDepto.lbFecha.Caption := 'Al '+DateToStr(Date);

    RProdFamiliaDepto.QProductos.Parameters.ParamByName('alm').Value := StrToInt(edAlma.Text);
    RProdFamiliaDepto.QFamilias.Open;
    RProdFamiliaDepto.QDeptos.Open;
    RProdFamiliaDepto.QProductos.Open;
    RProdFamiliaDepto.PrinterSetup;
    RProdFamiliaDepto.Preview;
    RProdFamiliaDepto.Destroy;
  end;
end;

procedure TfrmRepInvFamiliaDepto.FormCreate(Sender: TObject);
begin
  cbOrden.ItemIndex := 3;
end;

procedure TfrmRepInvFamiliaDepto.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
     begin
       perform(wm_nextdlgctl, 0, 0);
       key := #0;
     end;
end;

procedure TfrmRepInvFamiliaDepto.edFamiliaKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmRepInvFamiliaDepto.edAlmaChange(Sender: TObject);
begin
  if trim(edAlma.text) = '' then tAlma.text := '';
end;

procedure TfrmRepInvFamiliaDepto.edAlmaKeyDown(Sender: TObject;
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

procedure TfrmRepInvFamiliaDepto.btAlmaClick(Sender: TObject);
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
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.open;
    tAlma.text := dm.Query1.fieldbyname('alm_nombre').asstring;
    edAlma.setfocus;
  end;
end;

procedure TfrmRepInvFamiliaDepto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmRepInvFamiliaDepto.btDeptoClick(Sender: TObject);
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

procedure TfrmRepInvFamiliaDepto.edDeptoChange(Sender: TObject);
begin
  if trim(edDepto.text) = '' then tDepto.text := '';
end;

procedure TfrmRepInvFamiliaDepto.edDeptoKeyDown(Sender: TObject; var Key: Word;
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

end.
