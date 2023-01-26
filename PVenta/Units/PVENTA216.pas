unit PVENTA216;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DBCtrls, ComCtrls, QuerySearchDlgADO, DB,
  ADODB;

type
  TfrmRepCxPGeneral = class(TForm)
    btClose: TBitBtn;
    btPrint: TBitBtn;
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
    Label1: TLabel;
    Label12: TLabel;
    btMoneda: TSpeedButton;
    tMoneda: TEdit;
    edMoneda: TEdit;
    Label2: TLabel;
    bttipo: TSpeedButton;
    tTipo: TEdit;
    edTipo: TEdit;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btPrintClick(Sender: TObject);
    procedure btMonedaClick(Sender: TObject);
    procedure bttipoClick(Sender: TObject);
    procedure edMonedaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edMonedaChange(Sender: TObject);
    procedure edTipoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edTipoChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRepCxPGeneral: TfrmRepCxPGeneral;

implementation

uses SIGMA01, RVENTA105, RVENTA116;

{$R *.dfm}

procedure TfrmRepCxPGeneral.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = chr(vk_return) then
     begin
       perform(wm_nextdlgctl, 0, 0);
       key := #0;
     end;
end;

procedure TfrmRepCxPGeneral.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmRepCxPGeneral.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmRepCxPGeneral.FormActivate(Sender: TObject);
begin
  if not QSucursal.Active then
  begin
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;
    DBLookupComboBox2.KeyValue := QSucursalsuc_codigo.Value;
  end;
end;

procedure TfrmRepCxPGeneral.FormCreate(Sender: TObject);
begin
  Fecha1.Date := Date;
end;

procedure TfrmRepCxPGeneral.btPrintClick(Sender: TObject);
begin
  Application.CreateForm(tRCxPGeneral, RCxPGeneral);

  if trim(edTipo.Text) = '' then edTipo.Text := '0';
  if trim(edMoneda.Text) = '' then edMoneda.Text := '0';
  RCxPGeneral.QProveedores.Close;
  RCxPGeneral.QProveedores.SQL.Clear;
  RCxPGeneral.QProveedores.SQL.Add('exec pr_cxp_fecha :emp, :fec, :tip, :mon, 0, 2');
  RCxPGeneral.QProveedores.Parameters.ParamByName('emp').Value    := dm.vp_cia;
  RCxPGeneral.QProveedores.Parameters.ParamByName('fec').DataType := ftDate;
  RCxPGeneral.QProveedores.Parameters.ParamByName('fec').Value    := Fecha1.Date;
  RCxPGeneral.QProveedores.Parameters.ParamByName('tip').Value    := StrToInt(edTipo.Text);
  RCxPGeneral.QProveedores.Parameters.ParamByName('mon').Value    := StrToInt(edMoneda.Text);
  screen.Cursor := crHourGlass;
  RCxPGeneral.QProveedores.Open;
  screen.Cursor := crDefault;
  RCxPGeneral.lbFecha.Caption := 'Al '+DateToStr(fecha1.Date);
  RCxPGeneral.PrinterSetup;
  RCxPGeneral.Preview;
  RCxPGeneral.Destroy;

end;


procedure TfrmRepCxPGeneral.btMonedaClick(Sender: TObject);
begin
  Search.query.clear;
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('Código');
  Search.Title := 'Moneda';
  Search.ResultField := 'mon_codigo';
  Search.query.add('select mon_nombre, mon_codigo');
  Search.query.add('from Moneda');
  Search.query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  if search.execute then
  begin
    edMoneda.text := search.valuefield;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select mon_nombre from Moneda');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and mon_codigo = '+edMoneda.Text);
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Open;
    tMoneda.Text := dm.Query1.FieldByname('mon_nombre').AsString;
    edMoneda.SetFocus;
  end;
end;

procedure TfrmRepCxPGeneral.bttipoClick(Sender: TObject);
begin
  Search.query.clear;
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('Código');
  Search.Title := 'Tipos de proveedor';
  Search.ResultField := 'tip_codigo';
  Search.query.add('select tip_nombre, tip_codigo');
  Search.query.add('from tipo_proveedor');
  Search.query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  if search.execute then
  begin
    edTipo.text := search.valuefield;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select tip_nombre from tipo_proveedor');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and tip_codigo = '+edTipo.Text);
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Open;
    ttipo.Text := dm.Query1.FieldByname('tip_nombre').AsString;
    edTipo.SetFocus;
  end;
end;

procedure TfrmRepCxPGeneral.edMonedaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if Trim(edMoneda.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select mon_nombre');
      dm.Query1.sql.add('from Moneda');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and mon_codigo = :cod');
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edMoneda.text));
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        tMoneda.text := '';
        showmessage('ESTA MONEDA NO EXISTE');
        edMoneda.setfocus;
      end
      else
      begin
        tMoneda.text := dm.Query1.fieldbyname('mon_nombre').asstring;
      end;
    end;
  end;
end;

procedure TfrmRepCxPGeneral.edMonedaChange(Sender: TObject);
begin
  if trim(edMoneda.text) = '' then tMoneda.text := '';
end;

procedure TfrmRepCxPGeneral.edTipoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if Trim(edTipo.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select tip_nombre');
      dm.Query1.sql.add('from tipo_proveedor');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and tip_codigo = :cod');
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edTipo.text));
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        tTipo.text := '';
        showmessage('ESTE TIPO NO EXISTE');
        edTipo.setfocus;
      end
      else
      begin
        tTipo.text := dm.Query1.fieldbyname('tip_nombre').asstring;
      end;
    end;
  end;
end;

procedure TfrmRepCxPGeneral.edTipoChange(Sender: TObject);
begin
  if trim(edTipo.text) = '' then tTipo.text := '';
end;

end.
