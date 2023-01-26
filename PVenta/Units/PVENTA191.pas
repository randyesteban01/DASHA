unit PVENTA191;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, QuerySearchDlgADO;

type
  TfrmRepInvFamilia = class(TForm)
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRepInvFamilia: TfrmRepInvFamilia;

implementation

uses SIGMA01, RVENTA27;

{$R *.dfm}

procedure TfrmRepInvFamilia.btFamiliaClick(Sender: TObject);
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

procedure TfrmRepInvFamilia.edFamiliaChange(Sender: TObject);
begin
  if trim(edFamilia.text) = '' then tFamilia.text := '';
end;

procedure TfrmRepInvFamilia.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmRepInvFamilia.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then close;
end;

procedure TfrmRepInvFamilia.btPrintClick(Sender: TObject);
begin
  if edAlma.Text = '' then
  begin
    MessageDlg('Debe especificar el almacen',mtError,[mbok],0);
    edAlma.SetFocus;
  end
  else
  begin
    Application.CreateForm(tRProdFamilia, RProdFamilia);
    RProdFamilia.Impuesto := ckimpuesto.Checked;
    RProdFamilia.empaque  := ckemp.Checked;
    if edFamilia.Text <> '' then
    begin
      RProdFamilia.QFamilias.SQL.Clear;
      RProdFamilia.QFamilias.SQL.Add('select distinct p.fam_codigo,');
      RProdFamilia.QFamilias.SQL.Add('f.fam_nombre, p.emp_codigo');
      RProdFamilia.QFamilias.SQL.Add('from productos p, familias f');
      RProdFamilia.QFamilias.SQL.Add('where p.emp_codigo = f.emp_codigo');
      RProdFamilia.QFamilias.SQL.Add('and p.fam_codigo = f.fam_codigo');
      RProdFamilia.QFamilias.SQL.Add('and p.emp_codigo = :par_invempresa');
      RProdFamilia.QFamilias.SQL.Add('and f.fam_codigo = '+edFamilia.Text);
    end;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select rep3 from parconfigimpinv');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.value;
    dm.Query1.Open;
    if UpperCase(dm.Query1.FieldByName('rep3').AsString) = 'CON EXISTENCIA = 0' then
    begin
      RProdFamilia.QProductos.SQL.Add('and pro_existencia = 0');
      RProdFamilia.QFamilias.SQL.Add('and pro_existencia = 0');
    end
    else if UpperCase(dm.Query1.FieldByName('rep3').AsString) = 'CON EXISTENCIA > 0' then
    begin
      RProdFamilia.QProductos.SQL.Add('and pro_existencia > 0');
      RProdFamilia.QFamilias.SQL.Add('and pro_existencia > 0');
    end
    else if UpperCase(dm.Query1.FieldByName('rep3').AsString) = 'CON EXISTENCIA < 0' then
    begin
      RProdFamilia.QProductos.SQL.Add('and pro_existencia < 0');
      RProdFamilia.QFamilias.SQL.Add('and pro_existencia < 0');
    end;

    case cbOrden.ItemIndex of
    0: RProdFamilia.QProductos.SQL.Add('order by p.pro_codigo');
    1: RProdFamilia.QProductos.SQL.Add('order by p.pro_roriginal');
    2: RProdFamilia.QProductos.SQL.Add('order by p.pro_nombre');
    end;

    RProdFamilia.QFamilias.SQL.Add('order by p.fam_codigo');
    RProdFamilia.lbFecha.Caption := 'Al '+DateToStr(Date);

    RProdFamilia.QProductos.Parameters.ParamByName('alm').Value := StrToInt(edAlma.Text);
    RProdFamilia.QFamilias.Open;
    RProdFamilia.QProductos.Open;
    RProdFamilia.PrinterSetup;
    RProdFamilia.Preview;
    RProdFamilia.Destroy;
  end;
end;

procedure TfrmRepInvFamilia.FormCreate(Sender: TObject);
begin
  cbOrden.ItemIndex := 3;
end;

procedure TfrmRepInvFamilia.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
     begin
       perform(wm_nextdlgctl, 0, 0);
       key := #0;
     end;
end;

procedure TfrmRepInvFamilia.edFamiliaKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmRepInvFamilia.edAlmaChange(Sender: TObject);
begin
  if trim(edAlma.text) = '' then tAlma.text := '';
end;

procedure TfrmRepInvFamilia.edAlmaKeyDown(Sender: TObject;
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
      dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.open;
      tAlma.text := dm.Query1.fieldbyname('alm_nombre').asstring;
    end
    else
      tAlma.text := '';
  end;
end;

procedure TfrmRepInvFamilia.btAlmaClick(Sender: TObject);
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

procedure TfrmRepInvFamilia.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

end.
