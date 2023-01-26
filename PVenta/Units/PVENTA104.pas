unit PVENTA104;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, ExtCtrls, DateUtils, Db,
  QuerySearchDlgADO, DBCtrls, ADODB;

type
  TfrmRepVentaFamilia = class(TForm)
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
    cbOrden: TComboBox;
    Label2: TLabel;
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
  private
    { Private declarations }
  public
    { Public declarations }
    ejecuto : boolean;
  end;

var
  frmRepVentaFamilia: TfrmRepVentaFamilia;

implementation

uses RVENTA58, SIGMA01, SIGMA00;

{$R *.dfm}

procedure TfrmRepVentaFamilia.FormCreate(Sender: TObject);
begin
  Fecha1.Date := Date;
  Fecha2.Date := Date;
  ejecuto := false;
end;

procedure TfrmRepVentaFamilia.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmRepVentaFamilia.FormActivate(Sender: TObject);
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

procedure TfrmRepVentaFamilia.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmRepVentaFamilia.btPrintClick(Sender: TObject);
begin
  ejecuto := true;
  Application.CreateForm(TRepVentaFamilia, RepVentaFamilia);
  RepVentaFamilia.lbFecha.Caption := 'Del '+DateToStr(Fecha1.Date)+' Al '+DateToStr(Fecha2.Date);
  RepVentaFamilia.QFamilia.Close;
  RepVentaFamilia.QFamilia.SQL.Clear;
  RepVentaFamilia.QFamilia.SQL.Add('select distinct');
  RepVentaFamilia.QFamilia.SQL.Add('p.emp_codigo, p.fam_codigo, p.suc_codigo,');
  RepVentaFamilia.QFamilia.SQL.Add('ltrim(f.fam_nombre) as fam_nombre');
  RepVentaFamilia.QFamilia.SQL.Add('from pr_rep_venta_familia (:emp_codigo, :suc, :fec1, :fec2, :fam, 0) p,');
  RepVentaFamilia.QFamilia.SQL.Add('familias f');
  RepVentaFamilia.QFamilia.SQL.Add('where p.fam_codigo = f.fam_codigo');
  RepVentaFamilia.QFamilia.SQL.Add('order by 2');

  RepVentaFamilia.QProductos.Close;
  RepVentaFamilia.QProductos.SQL.Clear;
  RepVentaFamilia.QProductos.SQL.Add('select fam_codigo, pro_codigo, pro_roriginal, pro_nombre,');
  RepVentaFamilia.QProductos.SQL.Add('mar_nombre, total, itbis,');
  RepVentaFamilia.QProductos.SQL.Add('descuento,cantidad');
  RepVentaFamilia.QProductos.SQL.Add('from pr_rep_venta_familia (:emp_codigo, :suc_codigo, :fec1, :fec2, :fam_codigo, 0)');

  case cbOrden.ItemIndex of
  0: RepVentaFamilia.QProductos.SQL.Add('order by 2');
  1: RepVentaFamilia.QProductos.SQL.Add('order by 3');
  2: RepVentaFamilia.QProductos.SQL.Add('order by 4');
  end;

  RepVentaFamilia.QFamilia.Parameters.ParamByName('fec1').DataType := ftDate;
  RepVentaFamilia.QFamilia.Parameters.ParamByName('fec2').DataType := ftDate;
  RepVentaFamilia.QFamilia.Parameters.ParamByName('fec1').Value := Fecha1.Date;
  RepVentaFamilia.QFamilia.Parameters.ParamByName('fec2').Value := Fecha2.Date;
  RepVentaFamilia.QFamilia.Parameters.ParamByName('suc').Value  := DBLookupComboBox2.KeyValue;
  RepVentaFamilia.QFamilia.Parameters.ParamByName('emp_codigo').Value := dm.vp_cia;
  if Trim(edFamilia.Text) = '' then
    RepVentaFamilia.QFamilia.Parameters.ParamByName('fam').Value := 0
  else
    RepVentaFamilia.QFamilia.Parameters.ParamByName('fam').Value := StrToInt(edFamilia.Text);

  RepVentaFamilia.QProductos.Parameters.ParamByName('fec1').DataType := ftDate;
  RepVentaFamilia.QProductos.Parameters.ParamByName('fec2').DataType := ftDate;
  RepVentaFamilia.QProductos.Parameters.ParamByName('fec1').Value := Fecha1.Date;
  RepVentaFamilia.QProductos.Parameters.ParamByName('fec2').Value := Fecha2.Date;
  RepVentaFamilia.QProductos.Parameters.ParamByName('emp_codigo').DataType := ftInteger;
  RepVentaFamilia.QProductos.Parameters.ParamByName('suc_codigo').DataType := ftInteger;
  RepVentaFamilia.QProductos.Parameters.ParamByName('fam_codigo').DataType := ftInteger;

  RepVentaFamilia.lbGrupo.Caption := cbGrupo.Items[cbGrupo.ItemIndex];
  RepVentaFamilia.QFamilia.Open;
  RepVentaFamilia.QProductos.Open;
  RepVentaFamilia.QRLSUCURSAL.Caption := UpperCase(DBLookupComboBox2.Text);
  RepVentaFamilia.PrinterSetup;
  RepVentaFamilia.Preview;
  RepVentaFamilia.Destroy;
end;

procedure TfrmRepVentaFamilia.btFamiliaClick(Sender: TObject);
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

procedure TfrmRepVentaFamilia.edFamiliaChange(Sender: TObject);
begin
  if trim(edFamilia.text) = '' then tFamilia.text := '';
end;

procedure TfrmRepVentaFamilia.edFamiliaKeyDown(Sender: TObject;
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

procedure TfrmRepVentaFamilia.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
     begin
       perform(wm_nextdlgctl, 0, 0);
       key := #0;
     end;
end;

procedure TfrmRepVentaFamilia.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

end.
