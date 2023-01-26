unit PVENTA194;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DBCtrls, ComCtrls, QuerySearchDlgADO, DB,
  ADODB;

type
  TfrmRepCxCVendedorProvincia = class(TForm)
    btClose: TBitBtn;
    btPrint: TBitBtn;
    Label1: TLabel;
    btVendedor: TSpeedButton;
    edVendedor: TEdit;
    tVendedor: TEdit;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    edProvincia: TEdit;
    tProvincia: TEdit;
    Label8: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Search: TQrySearchDlgADO;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    QSucursalalm_codigo: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    dsSuc: TDataSource;
    Fecha1: TDateTimePicker;
    Fecha2: TDateTimePicker;
    ckperiodo: TCheckBox;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edVendedorChange(Sender: TObject);
    procedure edVendedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edProvinciaChange(Sender: TObject);
    procedure edProvinciaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btVendedorClick(Sender: TObject);
    procedure btPrintClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRepCxCVendedorProvincia: TfrmRepCxCVendedorProvincia;

implementation

uses SIGMA01, RVENTA103;

{$R *.dfm}

procedure TfrmRepCxCVendedorProvincia.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = chr(vk_return) then
     begin
       perform(wm_nextdlgctl, 0, 0);
       key := #0;
     end;
end;

procedure TfrmRepCxCVendedorProvincia.edVendedorChange(Sender: TObject);
begin
  if trim(edVendedor.text) = '' then tVendedor.text := '';
end;

procedure TfrmRepCxCVendedorProvincia.edVendedorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edVendedor.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select ven_nombre from vendedores');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and ven_codigo = :ven');
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      dm.Query1.Parameters.parambyname('ven').Value := strtoint(trim(edVendedor.text));
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        messagedlg('VENDEDOR NO EXISTE',mterror,[mbok],0);
        edVendedor.SetFocus;
      end
      else
        tVendedor.text := dm.Query1.fieldbyname('ven_nombre').asstring;
    end;
  end;
end;

procedure TfrmRepCxCVendedorProvincia.edProvinciaChange(Sender: TObject);
begin
  if trim(edProvincia.text) = '' then tprovincia.text := '';
end;

procedure TfrmRepCxCVendedorProvincia.edProvinciaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edProvincia.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select pro_nombre from provincias');
      dm.Query1.sql.add('where pro_codigo = :cod');
      dm.Query1.sql.add('and emp_codigo = :emp');
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edProvincia.text));
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        messagedlg('PROVINCIA NO EXISTE',mterror,[mbok],0);
        edProvincia.setFocus;
      end
      else
        tprovincia.text := dm.Query1.fieldbyname('pro_nombre').asstring;
    end;
  end;
end;

procedure TfrmRepCxCVendedorProvincia.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmRepCxCVendedorProvincia.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmRepCxCVendedorProvincia.SpeedButton1Click(Sender: TObject);
begin
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('Código');
  Search.Query.clear;
  Search.Query.add('select pro_nombre, pro_codigo');
  Search.Query.add('from provincias');
  Search.Query.add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.ResultField := 'pro_Codigo';
  Search.Title := 'Provincias';
  if Search.execute then
  begin
    edProvincia.text := Search.ValueField;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select pro_nombre from provincias');
    dm.Query1.sql.add('where pro_codigo = :cod');
    dm.Query1.sql.add('and emp_codigo = :emp');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edProvincia.text));
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      messagedlg('PROVINCIA NO EXISTE',mterror,[mbok],0)
    else
      tprovincia.text := dm.Query1.fieldbyname('pro_nombre').asstring;
    edProvincia.setfocus;
  end;
end;

procedure TfrmRepCxCVendedorProvincia.btVendedorClick(Sender: TObject);
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
  end;
end;

procedure TfrmRepCxCVendedorProvincia.btPrintClick(Sender: TObject);
begin
  Application.CreateForm(tRCxCVendedorProvincia, RCxCVendedorProvincia);
  RCxCVendedorProvincia.lbvendedor.Caption  := tVendedor.Text;
  RCxCVendedorProvincia.lbprovincia.Caption := tProvincia.Text;
  RCxCVendedorProvincia.lbfecha.Caption := ' Al '+DateToStr(Date);

  if Trim(edVendedor.Text) <> '' then
    RCxCVendedorProvincia.QVendedor.SQL.Add('and c.ven_codigo = '+Trim(edVendedor.Text));

  if ckperiodo.Checked then
  begin
    RCxCVendedorProvincia.lbfecha.Caption := 'Del '+DateToStr(fecha1.Date)+' Al '+DateToStr(fecha2.Date);

    RCxCVendedorProvincia.QVendedor.SQL.Add('and m.mov_fecha between convert(datetime, :fec1, 105) and convert(datetime, :fec2, 105)');
    RCxCVendedorProvincia.QVendedor.Parameters.ParamByName('fec1').DataType := ftDate;
    RCxCVendedorProvincia.QVendedor.Parameters.ParamByName('fec2').DataType := ftDate;
    RCxCVendedorProvincia.QVendedor.Parameters.ParamByName('fec1').Value := Fecha1.Date;
    RCxCVendedorProvincia.QVendedor.Parameters.ParamByName('fec2').Value := Fecha2.Date;

    RCxCVendedorProvincia.QProvincia.SQL.Add('and m.mov_fecha between convert(datetime, :fec1, 105) and convert(datetime, :fec2, 105)');
    RCxCVendedorProvincia.QProvincia.Parameters.ParamByName('fec1').DataType := ftDate;
    RCxCVendedorProvincia.QProvincia.Parameters.ParamByName('fec2').DataType := ftDate;
    RCxCVendedorProvincia.QProvincia.Parameters.ParamByName('fec1').Value := Fecha1.Date;
    RCxCVendedorProvincia.QProvincia.Parameters.ParamByName('fec2').Value := Fecha2.Date;

    RCxCVendedorProvincia.QDocs.SQL.Add('and m.mov_fecha between convert(datetime, :fec1, 105) and convert(datetime, :fec2, 105)');
    RCxCVendedorProvincia.QDocs.Parameters.ParamByName('fec1').DataType := ftDate;
    RCxCVendedorProvincia.QDocs.Parameters.ParamByName('fec2').DataType := ftDate;
    RCxCVendedorProvincia.QDocs.Parameters.ParamByName('fec1').Value := Fecha1.Date;
    RCxCVendedorProvincia.QDocs.Parameters.ParamByName('fec2').Value := Fecha2.Date;
  end;

  if Trim(edProvincia.Text) <> '' then
  begin
    RCxCVendedorProvincia.QVendedor.SQL.Add('and c.pro_codigo = '+Trim(edProvincia.Text));
    RCxCVendedorProvincia.QProvincia.SQL.Add('and c.pro_codigo = '+Trim(edProvincia.Text));
  end;

  RCxCVendedorProvincia.QVendedor.SQL.Add('group by');
  RCxCVendedorProvincia.QVendedor.SQL.Add('v.ven_codigo, v.ven_nombre, m.emp_codigo, m.suc_codigo');
  RCxCVendedorProvincia.QVendedor.SQL.Add('order by v.ven_nombre');

  RCxCVendedorProvincia.QProvincia.SQL.Add('group by');
  RCxCVendedorProvincia.QProvincia.SQL.Add('p.pro_codigo, p.pro_nombre, c.ven_codigo, m.emp_codigo, m.suc_codigo');
  RCxCVendedorProvincia.QProvincia.SQL.Add('order by p.pro_nombre');

  RCxCVendedorProvincia.QDocs.SQL.Add('order by c.cli_nombre, m.mov_fecha');

  RCxCVendedorProvincia.QVendedor.Parameters.ParamByName('emp').Value := dm.vp_cia;
  RCxCVendedorProvincia.QVendedor.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
  RCxCVendedorProvincia.QVendedor.Open;
  RCxCVendedorProvincia.QProvincia.Open;
  RCxCVendedorProvincia.QClientes.Open;
  RCxCVendedorProvincia.QDocs.Open;
  RCxCVendedorProvincia.PrinterSetup;
  RCxCVendedorProvincia.Preview;
  RCxCVendedorProvincia.Destroy;
end;

procedure TfrmRepCxCVendedorProvincia.FormActivate(Sender: TObject);
begin
  if not QSucursal.Active then
  begin
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;
    DBLookupComboBox2.KeyValue := QSucursalsuc_codigo.Value;
  end;
end;

procedure TfrmRepCxCVendedorProvincia.FormCreate(Sender: TObject);
begin
  Fecha1.Date := Date;
  Fecha2.Date := Date;
end;

end.
