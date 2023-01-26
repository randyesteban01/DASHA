unit PVENTA193;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, ExtCtrls, DateUtils, Db,
  QuerySearchDlgADO, DBCtrls, ADODB;

type
  TfrmRepVentaFamiliaDepto = class(TForm)
    Label1: TLabel;
    btClose: TBitBtn;
    btPrint: TBitBtn;
    Fecha1: TDateTimePicker;
    Fecha2: TDateTimePicker;
    cbGrupo: TRadioGroup;
    btFamilia: TSpeedButton;
    Label4: TLabel;
    tFamilia: TEdit;
    edFamilia: TEdit;
    Search: TQrySearchDlgADO;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    dsSuc: TDataSource;
    Label8: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    QSucursalalm_codigo: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    Label27: TLabel;
    btDepto: TSpeedButton;
    edDepto: TEdit;
    tDepto: TEdit;
    Label2: TLabel;
    cbOrden: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure btCloseClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btPrintClick(Sender: TObject);
    procedure btFamiliaClick(Sender: TObject);
    procedure edFamiliaChange(Sender: TObject);
    procedure edFamiliaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edDeptoChange(Sender: TObject);
    procedure edDeptoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    ejecuto : boolean;
  end;

var
  frmRepVentaFamiliaDepto: TfrmRepVentaFamiliaDepto;

implementation

uses RVENTA58, SIGMA01, SIGMA00, RVENTA99;

{$R *.dfm}

procedure TfrmRepVentaFamiliaDepto.FormCreate(Sender: TObject);
begin
  Fecha1.Date := Date;
  Fecha2.Date := Date;
  ejecuto := false;
end;

procedure TfrmRepVentaFamiliaDepto.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmRepVentaFamiliaDepto.FormActivate(Sender: TObject);
begin
  if not QSucursal.Active then
  begin
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;
    DBLookupComboBox2.KeyValue := QSucursalsuc_codigo.Value;
  end;
  if ejecuto = False then
    if (Time >= TimeOf(dm.QParametrosPAR_AHORA1.Value)) and
    (Time <= TimeOf(dm.QParametrosPAR_AHORA2.Value)) then
       cbGrupo.ItemIndex := 0
    else
       cbGrupo.ItemIndex := 1;
  frmMain.stBar1.Panels[1].Text := Copy(cbGrupo.Items[cbGrupo.ItemIndex],1,1);
end;

procedure TfrmRepVentaFamiliaDepto.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (ssCtrl in Shift) and (ord(key) = 66) and (ssAlt in Shift) then
    cbGrupo.ItemIndex := 1;
  if (ssCtrl in Shift) and (ord(key) = 65) and (ssAlt in Shift) then
    cbGrupo.ItemIndex := 0;
  if (ssCtrl in Shift) and (ord(key) = 84) and (ssAlt in Shift) then
    cbGrupo.ItemIndex := 2;
  frmMain.stBar1.Panels[1].Text := Copy(cbGrupo.Items[cbGrupo.ItemIndex],1,1);
end;

procedure TfrmRepVentaFamiliaDepto.btPrintClick(Sender: TObject);
begin
  ejecuto := true;
  Application.CreateForm(TRepVentaFamiliaDepto, RepVentaFamiliaDepto);
  RepVentaFamiliaDepto.lbFecha.Caption := 'Del '+DateToStr(Fecha1.Date)+' Al '+DateToStr(Fecha2.Date);
  RepVentaFamiliaDepto.QFamilia.Close;
  RepVentaFamiliaDepto.QFamilia.SQL.Clear;
  RepVentaFamiliaDepto.QFamilia.SQL.Add('select distinct');
  RepVentaFamiliaDepto.QFamilia.SQL.Add('p.emp_codigo, p.fam_codigo, p.suc_codigo,');
  RepVentaFamiliaDepto.QFamilia.SQL.Add('ltrim(f.fam_nombre) as fam_nombre');
  RepVentaFamiliaDepto.QFamilia.SQL.Add('from pr_rep_venta_familia (:emp_codigo, :suc, :fec1, :fec2, :fam, :dep) p,');
  RepVentaFamiliaDepto.QFamilia.SQL.Add('familias f');
  RepVentaFamiliaDepto.QFamilia.SQL.Add('where f.fam_codigo = p.fam_codigo');
  RepVentaFamiliaDepto.QFamilia.SQL.Add('order by 2');

  RepVentaFamiliaDepto.QDeptos.Close;
  RepVentaFamiliaDepto.QDeptos.SQL.Clear;
  RepVentaFamiliaDepto.QDeptos.SQL.Add('select distinct');
  RepVentaFamiliaDepto.QDeptos.SQL.Add('p.emp_codigo, p.fam_codigo, p.suc_codigo, p.dep_codigo,');
  RepVentaFamiliaDepto.QDeptos.SQL.Add('ltrim(d.dep_nombre) as dep_nombre');
  RepVentaFamiliaDepto.QDeptos.SQL.Add('from pr_rep_venta_familia (:emp_codigo, :suc_codigo, :fec1, :fec2, :fam_codigo, :dep) p,');
  RepVentaFamiliaDepto.QDeptos.SQL.Add('departamentos d');
  RepVentaFamiliaDepto.QDeptos.SQL.Add('where p.dep_codigo = d.dep_codigo and p.emp_codigo = d.emp_codigo');
  RepVentaFamiliaDepto.QDeptos.SQL.Add('order by 4');

  RepVentaFamiliaDepto.QProductos.Close;
  RepVentaFamiliaDepto.QProductos.SQL.Clear;
  RepVentaFamiliaDepto.QProductos.SQL.Add('select fam_codigo, pro_codigo, pro_roriginal, pro_nombre,');
  RepVentaFamiliaDepto.QProductos.SQL.Add('mar_nombre, total, itbis,');
  RepVentaFamiliaDepto.QProductos.SQL.Add('descuento,cantidad');
  RepVentaFamiliaDepto.QProductos.SQL.Add('from pr_rep_venta_familia (:emp_codigo, :suc_codigo, :fec1, :fec2, :fam_codigo, :dep_codigo)');

  case cbOrden.ItemIndex of
  0: RepVentaFamiliaDepto.QProductos.SQL.Add('order by 2');
  1: RepVentaFamiliaDepto.QProductos.SQL.Add('order by 3');
  2: RepVentaFamiliaDepto.QProductos.SQL.Add('order by 4');
  end;

  RepVentaFamiliaDepto.QFamilia.Parameters.ParamByName('fec1').DataType := ftDate;
  RepVentaFamiliaDepto.QFamilia.Parameters.ParamByName('fec2').DataType := ftDate;
  RepVentaFamiliaDepto.QFamilia.Parameters.ParamByName('fec1').Value := Fecha1.Date;
  RepVentaFamiliaDepto.QFamilia.Parameters.ParamByName('fec2').Value := Fecha2.Date;
  RepVentaFamiliaDepto.QFamilia.Parameters.ParamByName('suc').Value  := DBLookupComboBox2.KeyValue;
  RepVentaFamiliaDepto.QFamilia.Parameters.ParamByName('emp_codigo').Value := dm.vp_cia;

  if Trim(edFamilia.Text) = '' then
    RepVentaFamiliaDepto.QFamilia.Parameters.ParamByName('fam').Value := 0
  else
    RepVentaFamiliaDepto.QFamilia.Parameters.ParamByName('fam').Value := StrToInt(edFamilia.Text);

  if Trim(edDepto.Text) = '' then
    RepVentaFamiliaDepto.QFamilia.Parameters.ParamByName('dep').Value := 0
  else
    RepVentaFamiliaDepto.QFamilia.Parameters.ParamByName('dep').Value := StrToInt(edDepto.Text);

  RepVentaFamiliaDepto.QDeptos.Parameters.ParamByName('fec1').DataType := ftDate;
  RepVentaFamiliaDepto.QDeptos.Parameters.ParamByName('fec2').DataType := ftDate;
  RepVentaFamiliaDepto.QDeptos.Parameters.ParamByName('fec1').Value := Fecha1.Date;
  RepVentaFamiliaDepto.QDeptos.Parameters.ParamByName('fec2').Value := Fecha2.Date;
  RepVentaFamiliaDepto.QDeptos.Parameters.ParamByName('emp_codigo').DataType := ftInteger;
  RepVentaFamiliaDepto.QDeptos.Parameters.ParamByName('suc_codigo').DataType := ftInteger;
  RepVentaFamiliaDepto.QDeptos.Parameters.ParamByName('fam_codigo').DataType := ftInteger;
  RepVentaFamiliaDepto.QDeptos.Parameters.ParamByName('dep').DataType := ftInteger;

  if Trim(edDepto.Text) = '' then
    RepVentaFamiliaDepto.QDeptos.Parameters.ParamByName('dep').Value := 0
  else
    RepVentaFamiliaDepto.QDeptos.Parameters.ParamByName('dep').Value := StrToInt(edDepto.Text);

  RepVentaFamiliaDepto.QProductos.Parameters.ParamByName('fec1').DataType := ftDate;
  RepVentaFamiliaDepto.QProductos.Parameters.ParamByName('fec2').DataType := ftDate;
  RepVentaFamiliaDepto.QProductos.Parameters.ParamByName('fec1').Value := Fecha1.Date;
  RepVentaFamiliaDepto.QProductos.Parameters.ParamByName('fec2').Value := Fecha2.Date;
  RepVentaFamiliaDepto.QProductos.Parameters.ParamByName('emp_codigo').DataType := ftInteger;
  RepVentaFamiliaDepto.QProductos.Parameters.ParamByName('suc_codigo').DataType := ftInteger;
  RepVentaFamiliaDepto.QProductos.Parameters.ParamByName('fam_codigo').DataType := ftInteger;
  RepVentaFamiliaDepto.QProductos.Parameters.ParamByName('dep_codigo').DataType := ftInteger;

  RepVentaFamiliaDepto.lbGrupo.Caption := cbGrupo.Items[cbGrupo.ItemIndex];
  RepVentaFamiliaDepto.QFamilia.Open;
  RepVentaFamiliaDepto.QDeptos.Open;
  RepVentaFamiliaDepto.QProductos.Open;
  RepVentaFamiliaDepto.QRLSUCURSAL.Caption := UpperCase(DBLookupComboBox2.Text);
  RepVentaFamiliaDepto.PrinterSetup;
  RepVentaFamiliaDepto.Preview;
  RepVentaFamiliaDepto.Destroy;
end;

procedure TfrmRepVentaFamiliaDepto.btFamiliaClick(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Código');
  Search.Query.clear;
  Search.Query.add('select fam_nombre, fam_codigo');
  Search.Query.add('from familias');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
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
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.open;
    tFamilia.text := dm.Query1.fieldbyname('fam_nombre').asstring;
    edFamilia.setfocus;
  end;
end;

procedure TfrmRepVentaFamiliaDepto.edFamiliaChange(Sender: TObject);
begin
  if trim(edFamilia.text) = '' then tFamilia.text := '';
end;

procedure TfrmRepVentaFamiliaDepto.edFamiliaKeyDown(Sender: TObject;
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
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      dm.Query1.open;
      tFamilia.text := dm.Query1.fieldbyname('fam_nombre').asstring;
    end
    else
      tFamilia.text := '';
  end;
end;

procedure TfrmRepVentaFamiliaDepto.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
     begin
       perform(wm_nextdlgctl, 0, 0);
       key := #0;
     end;
end;

procedure TfrmRepVentaFamiliaDepto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmRepVentaFamiliaDepto.edDeptoChange(Sender: TObject);
begin
  if trim(edDepto.text) = '' then tDepto.text := '';
end;

procedure TfrmRepVentaFamiliaDepto.edDeptoKeyDown(Sender: TObject;
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

end.
