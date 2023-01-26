unit PVENTA215;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DBCtrls, ComCtrls, QuerySearchDlgADO, DB,
  ADODB;

type
  TfrmRepCxcGeneral = class(TForm)
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
    Fecha2: TDateTimePicker;
    Label1: TLabel;
    Label12: TLabel;
    btTipo: TSpeedButton;
    tTipo: TEdit;
    edTipo: TEdit;
    ckpendiente: TCheckBox;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btPrintClick(Sender: TObject);
    procedure btTipoClick(Sender: TObject);
    procedure edTipoChange(Sender: TObject);
    procedure edTipoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRepCxcGeneral: TfrmRepCxcGeneral;

implementation

uses SIGMA01, RVENTA105;

{$R *.dfm}

procedure TfrmRepCxcGeneral.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = chr(vk_return) then
     begin
       perform(wm_nextdlgctl, 0, 0);
       key := #0;
     end;
end;

procedure TfrmRepCxcGeneral.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmRepCxcGeneral.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmRepCxcGeneral.FormActivate(Sender: TObject);
begin
  if not QSucursal.Active then
  begin
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;
    DBLookupComboBox2.KeyValue := QSucursalsuc_codigo.Value;
  end;
end;

procedure TfrmRepCxcGeneral.FormCreate(Sender: TObject);
begin
  Fecha1.Date := Date;
  Fecha2.Date := Date;
end;

procedure TfrmRepCxcGeneral.btPrintClick(Sender: TObject);
begin
  {Screen.Cursor := crHourGlass;
  Application.CreateForm(tRCxCGeneral, RCxCGeneral);
  RCxCGeneral.QClientes.SQL.Clear;
  RCxCGeneral.QClientes.SQL.Add('select C.CLI_CEDULA, C.CLI_CODIGO, C.CLI_CUENTA,');
  RCxCGeneral.QClientes.SQL.Add('C.CLI_DESCUENTO, C.CLI_DIRECCION, C.CLI_EMAIL, C.CLI_FAX, C.CLI_LIMITE,');
  RCxCGeneral.QClientes.SQL.Add('C.CLI_LOCALIDAD, C.CLI_NOMBRE, C.CLI_PRECIO, C.CLI_REFERENCIA,');
  RCxCGeneral.QClientes.SQL.Add('C.CLI_RNC, C.CLI_STATUS, C.CLI_TELEFONO, C.CLI_WEB, C.CPA_CODIGO,');
  RCxCGeneral.QClientes.SQL.Add('C.EMP_CODIGO, C.FPA_CODIGO, C.TCL_CODIGO, CP.CPA_NOMBRE, T.TCL_NOMBRE,');
  if ckpendiente.Checked then
    RCxCGeneral.QClientes.SQL.Add('sum(m.mov_monto - m.mov_abono) as CLI_BALANCE')
  else
  begin
    RCxCGeneral.QClientes.SQL.Add('sum(m.mov_monto) as CLI_BALANCE');
    RCxCGeneral.QRLabel3.Caption := 'MONTO';
  end;
  RCxCGeneral.QClientes.SQL.Add('from CLIENTES C');
  RCxCGeneral.QClientes.SQL.Add('LEFT OUTER JOIN CONDICIONES CP ON (C.EMP_CODIGO = CP.EMP_CODIGO');
  RCxCGeneral.QClientes.SQL.Add('AND C.CPA_CODIGO = CP.CPA_CODIGO)');
  RCxCGeneral.QClientes.SQL.Add('LEFT OUTER JOIN TIPOCLIENTES T ON (C.EMP_CODIGO = T.EMP_CODIGO');
  RCxCGeneral.QClientes.SQL.Add('AND C.TCL_CODIGO = T.TCL_CODIGO), movimientos m');
  RCxCGeneral.QClientes.SQL.Add('where c.emp_codigo = :emp_codigo');
  RCxCGeneral.QClientes.SQL.Add('and c.cli_balance > 0');
  RCxCGeneral.QClientes.SQL.Add('and c.emp_codigo = m.emp_codigo');
  RCxCGeneral.QClientes.SQL.Add('and c.cli_codigo = m.cli_codigo');
  RCxCGeneral.QClientes.SQL.Add('and m.suc_codigo = :suc');
  if ckpendiente.Checked then
    RCxCGeneral.QClientes.SQL.Add('and m.mov_Status = '+QuotedStr('PEN'));

  if Trim(edTipo.Text) <> '' then
    RCxCGeneral.QClientes.SQL.Add('and c.tcl_codigo = '+Trim(edTipo.Text));
  RCxCGeneral.QClientes.SQL.Add('and m.mov_fecha between convert(datetime, :fec1, 105) and convert(datetime, :fec2, 105)');
  RCxCGeneral.QClientes.SQL.Add('group by C.CLI_CEDULA, C.CLI_CODIGO, C.CLI_CUENTA,');
  RCxCGeneral.QClientes.SQL.Add('C.CLI_DESCUENTO, C.CLI_DIRECCION, C.CLI_EMAIL, C.CLI_FAX, C.CLI_LIMITE,');
  RCxCGeneral.QClientes.SQL.Add('C.CLI_LOCALIDAD, C.CLI_NOMBRE, C.CLI_PRECIO, C.CLI_REFERENCIA,');
  RCxCGeneral.QClientes.SQL.Add('C.CLI_RNC, C.CLI_STATUS, C.CLI_TELEFONO, C.CLI_WEB, C.CPA_CODIGO,');
  RCxCGeneral.QClientes.SQL.Add('C.EMP_CODIGO, C.FPA_CODIGO, C.TCL_CODIGO, CP.CPA_NOMBRE, T.TCL_NOMBRE');
  RCxCGeneral.QClientes.SQL.Add('order by c.cli_nombre');
  RCxCGeneral.QClientes.Parameters.ParamByName('fec1').DataType := ftDate;
  RCxCGeneral.QClientes.Parameters.ParamByName('fec2').DataType := ftDate;
  RCxCGeneral.QClientes.Parameters.ParamByName('fec1').Value := Fecha1.Date;
  RCxCGeneral.QClientes.Parameters.ParamByName('fec2').Value := Fecha2.Date;
  RCxCGeneral.QClientes.Parameters.ParamByName('suc').Value  := DBLookupComboBox2.KeyValue;
  RCxCGeneral.QClientes.Open;
  Screen.Cursor := crDefault;
  RCxCGeneral.lbFecha.Caption := 'Del '+DateToStr(fecha1.Date)+' Al '+DateToStr(fecha2.date);
  RCxCGeneral.PrinterSetup;
  RCxCGeneral.Preview;
  RCxCGeneral.Destroy;    }

  Screen.Cursor := crHourGlass;
  if trim(edTipo.Text) = '' then edTipo.Text := '0';
  Application.CreateForm(tRCxCGeneral, RCxCGeneral);
  RCxCGeneral.QClientes.SQL.Clear;
  RCxCGeneral.QClientes.SQL.Add('exec pr_cxc_fecha :emp, :fec, :tip, 0, :suc');
  RCxCGeneral.QClientes.Parameters.ParamByName('emp').Value := dm.vp_cia;
  RCxCGeneral.QClientes.Parameters.ParamByName('fec').DataType := ftDate;
  RCxCGeneral.QClientes.Parameters.ParamByName('fec').Value := Fecha2.Date;
  RCxCGeneral.QClientes.Parameters.ParamByName('tip').Value := StrToInt(edTipo.Text);
  RCxCGeneral.QClientes.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
  RCxCGeneral.QClientes.Open;

  Screen.Cursor := crDefault;
  RCxCGeneral.lbFecha.Caption := ' Al '+DateToStr(Fecha2.date);
  RCxCGeneral.PrinterSetup;
  RCxCGeneral.Preview;
  RCxCGeneral.Destroy;
end;

procedure TfrmRepCxcGeneral.btTipoClick(Sender: TObject);
begin
  Search.query.clear;
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('Código');
  Search.Title := 'Tipos de Clientes';
  Search.ResultField := 'tcl_codigo';
  Search.query.add('select tcl_nombre, tcl_codigo');
  Search.query.add('from tipoclientes');
  Search.query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  if search.execute then
  begin
    edTipo.text := search.valuefield;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select tcl_nombre from tipoclientes');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and tcl_codigo = '+edTipo.Text);
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Open;
    tTipo.Text := dm.Query1.FieldByname('tcl_nombre').AsString;
    edTipo.SetFocus;
  end;
end;

procedure TfrmRepCxcGeneral.edTipoChange(Sender: TObject);
begin
  if trim(edTipo.text) = '' then tTipo.text := '';
end;

procedure TfrmRepCxcGeneral.edTipoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if Trim(edTipo.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select tcl_nombre, tcl_codigo');
      dm.Query1.sql.add('from tipoclientes');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and tcl_codigo = :cod');
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edTipo.text));
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        tTipo.text := '';
        showmessage('ESTE TIPO DE CLIENTE NO EXISTE');
        edTipo.setfocus;
      end
      else
      begin
        tTipo.text := dm.Query1.fieldbyname('tcl_nombre').asstring;
      end;
    end;
  end;
end;

end.
