unit PVENTA89;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, IBCustomDataSet,
  IBQuery, ADODB, QuerySearchDlgADO, DBCtrls;

type
  TfrmAsignaCliente = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    btTipo: TSpeedButton;
    edTipo: TEdit;
    tTipo: TEdit;
    edNumero: TEdit;
    edGrupo: TEdit;
    Search: TQrySearchDlgADO;
    btClose: TBitBtn;
    btAsigna: TBitBtn;
    Label4: TLabel;
    edCliente: TEdit;
    SpeedButton2: TSpeedButton;
    tCliente: TEdit;
    Query1: TADOQuery;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    dsSuc: TDataSource;
    Label14: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    QSucursalalm_codigo: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    procedure edGrupoChange(Sender: TObject);
    procedure edTipoChange(Sender: TObject);
    procedure btTipoClick(Sender: TObject);
    procedure edTipoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btAsignaClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure edClienteChange(Sender: TObject);
    procedure edClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edNumeroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edNumeroChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Cliente : integer;
    Ref : String;
  end;

var
  frmAsignaCliente: TfrmAsignaCliente;

implementation

uses SIGMA01;


{$R *.dfm}

procedure TfrmAsignaCliente.edGrupoChange(Sender: TObject);
begin
  if (trim(edGrupo.Text) <> 'A') and (trim(edGrupo.Text) <> 'B') then
     edGrupo.Text := '';
end;

procedure TfrmAsignaCliente.edTipoChange(Sender: TObject);
begin
  if trim(edTipo.text) = '' then tTipo.text := '';
end;

procedure TfrmAsignaCliente.btTipoClick(Sender: TObject);
begin
  search.Query.clear;
  search.Query.add('select tfa_nombre, tfa_codigo');
  search.Query.add('from tiposfactura');
  search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('Código');
  search.ResultField := 'tfa_codigo';
  search.Title := 'Tipos de factura';
  if search.execute then
  begin
    edTipo.text := search.valuefield;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select tfa_nombre, tfa_selcondi, tfa_formatoimp, tfa_puertoimp');
    dm.Query1.sql.add('from tiposfactura');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and tfa_codigo = :cod');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edTipo.text));
    dm.Query1.open;
    tTipo.text := dm.Query1.fieldbyname('tfa_nombre').asstring;
    edTipo.SetFocus;
  end;
end;

procedure TfrmAsignaCliente.edTipoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if Trim(edTipo.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select tfa_nombre, tfa_selcondi, tfa_formatoimp, tfa_puertoimp');
      dm.Query1.sql.add('from tiposfactura');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and tfa_codigo = :cod');
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edTipo.text));
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        tTipo.text := '';
        showmessage('ESTE TIPO DE FACTURA NO EXISTE');
        edTipo.setfocus;
      end
      else
        tTipo.text := dm.Query1.fieldbyname('tfa_nombre').asstring;
    end;
  end;
end;

procedure TfrmAsignaCliente.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmAsignaCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmAsignaCliente.btAsignaClick(Sender: TObject);
begin
  Query1.Close;
  Query1.SQL.Clear;
  Query1.SQL.Add('select cli_codigo, fac_fecha from facturas');
  Query1.SQL.Add('where emp_codigo = :emp');
  Query1.SQL.Add('and fac_forma = :for');
  Query1.SQL.Add('and tfa_codigo = :tfa');
  Query1.SQL.Add('and fac_numero = :num');
  Query1.SQL.Add('and suc_codigo = :suc');
  Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  Query1.Parameters.ParamByName('for').Value  := edGrupo.Text;
  Query1.Parameters.ParamByName('tfa').Value := StrToInt(Trim(edTipo.Text));
  Query1.Parameters.ParamByName('num').Value := StrToInt(Trim(edNumero.Text));
  Query1.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
  Query1.Open;
  if Query1.Recordcount = 0 then
  begin
    MessageDlg('ESTA FACTURA NO EXISTE',mterror,[mbok],0);
    edNumero.text := '';
    edNumero.SetFocus;
  end
  else if Query1.Fieldbyname('cli_codigo').AsInteger >0 then
  begin
    MessageDlg('ESTA FACTURA YA TIENE UN CLIENTE ASIGNADO',mterror,[mbok],0);
    edNumero.text := '';
    edNumero.SetFocus;
  end
  else
  begin
    //verificando si el cierre se hizo para esta fecha
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cie_fecha from cierre');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cie_fecha = :fec');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('fec').Value    := Query1.FieldByname('fac_fecha').AsDateTime;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
    begin
      MessageDlg('NO PUEDE ASIGNAR EL CLIENTE, DEBIDO A QUE ESTE'+#13+
                 'DIA FUE CERRADO.',mtError,[mbok],0);
    end
    else
    begin
      Query1.Close;
      Query1.SQL.Clear;
      Query1.SQL.Add('select cli_codigo, cli_referencia, cli_nombre,');
      Query1.SQL.Add('cli_direccion, cli_localidad, cli_telefono from clientes');
      Query1.SQL.Add('where emp_codigo = :emp');
      Query1.SQL.Add('and cli_codigo = :cli');
      Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
      Query1.Parameters.ParamByName('cli').Value := Cliente;
      Query1.Open;

      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('update facturas set cli_codigo = :cli,');
      dm.Query1.SQL.Add('cli_referencia = :ref, fac_nombre = :nom,');
      dm.Query1.SQL.Add('fac_direccion = :dir, fac_localidad = :loc,');
      dm.Query1.SQL.Add('fac_telefono = :tel');
      dm.Query1.SQL.Add('where emp_codigo = :emp');
      dm.Query1.SQL.Add('and fac_forma = :for');
      dm.Query1.SQL.Add('and tfa_codigo = :tfa');
      dm.Query1.SQL.Add('and fac_numero = :num');
      dm.Query1.SQL.Add('and suc_codigo = :suc');
      dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
      dm.Query1.Parameters.ParamByName('for').Value  := edGrupo.Text;
      dm.Query1.Parameters.ParamByName('tfa').Value := StrToInt(Trim(edTipo.Text));
      dm.Query1.Parameters.ParamByName('num').Value := StrToInt(Trim(edNumero.Text));
      dm.Query1.Parameters.ParamByName('cli').Value := Cliente;
      dm.Query1.Parameters.ParamByName('ref').Value  := Ref;
      dm.Query1.Parameters.ParamByName('nom').Value  := Query1.FieldByname('cli_nombre').AsString;
      dm.Query1.Parameters.ParamByName('dir').Value  := Query1.FieldByname('cli_direccion').AsString;
      dm.Query1.Parameters.ParamByName('loc').Value  := Query1.FieldByname('cli_localidad').AsString;
      dm.Query1.Parameters.ParamByName('tel').Value  := Query1.FieldByname('cli_telefono').AsString;
      dm.Query1.Parameters.ParamByName('suc').Value  := DBLookupComboBox2.KeyValue;
      dm.Query1.ExecSQL;

      MessageDlg('CLIENTE ASIGNADO',mtInformation,[mbok],0);
    end;
  end;
end;

procedure TfrmAsignaCliente.SpeedButton2Click(Sender: TObject);
begin
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('Código');
  search.AliasFields.add('Referencia');
  Search.Query.clear;
  Search.Query.add('select cli_nombre, cli_codigo, cli_referencia');
  Search.Query.add('from clientes');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
     Search.ResultField := 'cli_Codigo'
  else
     Search.ResultField := 'cli_referencia';
  Search.Title := 'Listado de Clientes';
  if Search.execute then
  begin
    edCliente.text := Search.ValueField;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select cli_nombre, cli_codigo, cli_referencia from clientes');
    dm.Query1.sql.add('where emp_codigo = :emp');
    if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
       dm.Query1.sql.add('and cli_codigo = :cod')
    else
       dm.Query1.sql.add('and cli_referencia = :cod');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
       dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edCliente.text))
    else
       dm.Query1.Parameters.parambyname('cod').Value := trim(edCliente.text);
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      messagedlg('CLIENTE NO EXISTE',mterror,[mbok],0)
    else
    begin
      tCliente.text := dm.Query1.fieldbyname('cli_nombre').asstring;
      Cliente := dm.Query1.fieldbyname('cli_codigo').AsInteger;
      Ref := dm.Query1.fieldbyname('cli_referencia').AsString;
    end;
    edCliente.setfocus;
  end;
end;

procedure TfrmAsignaCliente.edClienteChange(Sender: TObject);
begin
  if trim(edCliente.text) = '' then tCliente.text := '';
  btasigna.Enabled := (trim(edCliente.text) <> '') and (trim(edNumero.text) <> '');
end;

procedure TfrmAsignaCliente.edClienteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edCliente.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select cli_codigo, cli_referencia, cli_nombre from clientes');
      dm.Query1.sql.add('where emp_codigo = :emp');
      if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
         dm.Query1.sql.add('and cli_codigo = :cod')
      else
         dm.Query1.sql.add('and cli_referencia = :cod');
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
         dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edcliente.text))
      else
         dm.Query1.Parameters.parambyname('cod').Value := trim(edcliente.text);
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        messagedlg('CLIENTE NO EXISTE',mterror,[mbok],0);
        edCliente.SetFocus;
      end
      else
      begin
        tCliente.text := dm.Query1.fieldbyname('cli_nombre').asstring;
        Cliente := dm.Query1.fieldbyname('cli_codigo').AsInteger;
        Ref := dm.Query1.fieldbyname('cli_referencia').AsString;
      end;
    end;
  end;
end;

procedure TfrmAsignaCliente.edNumeroKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cli_codigo from facturas');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and fac_forma = :for');
    dm.Query1.SQL.Add('and tfa_codigo = :tfa');
    dm.Query1.SQL.Add('and fac_numero = :num');
    dm.Query1.SQL.Add('and suc_codigo = :suc');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('for').Value  := edGrupo.Text;
    dm.Query1.Parameters.ParamByName('tfa').Value := StrToInt(Trim(edTipo.Text));
    dm.Query1.Parameters.ParamByName('num').Value := StrToInt(Trim(edNumero.Text));
    dm.Query1.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
    dm.Query1.Open;
    if dm.Query1.Recordcount = 0 then
    begin
      MessageDlg('ESTA FACTURA NO EXISTE',mterror,[mbok],0);
      edNumero.text := '';
      edNumero.SetFocus;
    end
    else if dm.Query1.Fieldbyname('cli_codigo').AsInteger >0 then
    begin
      MessageDlg('ESTA FACTURA YA TIENE UN CLIENTE ASIGNADO',mterror,[mbok],0);
      edNumero.text := '';
      edNumero.SetFocus;
    end;
  end;
end;

procedure TfrmAsignaCliente.edNumeroChange(Sender: TObject);
begin
  btasigna.Enabled := (trim(edCliente.text) <> '') and (trim(edNumero.text) <> '');
end;

procedure TfrmAsignaCliente.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
     begin
       perform(wm_nextdlgctl, 0, 0);
       key := #0;
     end;
end;

procedure TfrmAsignaCliente.FormActivate(Sender: TObject);
begin
  if not QSucursal.Active then
  begin
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;
    DBLookupComboBox2.KeyValue := QSucursalsuc_codigo.Value;
  end;
end;

end.
