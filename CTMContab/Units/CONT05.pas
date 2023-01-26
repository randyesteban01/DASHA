unit CONT05;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask, DBCtrls, Buttons, QuerySearchDlgIB,
  DB, IBCustomDataSet, IBQuery, Grids, DBGrids;

type
  TfrmRepClientes = class(TForm)
    cbStatus: TRadioGroup;
    cbBalance: TRadioGroup;
    Label12: TLabel;
    btTipo: TSpeedButton;
    tTipo: TEdit;
    edTipo: TEdit;
    Label1: TLabel;
    btDesde: TSpeedButton;
    tDesde: TEdit;
    edDesde: TEdit;
    Label2: TLabel;
    btHasta: TSpeedButton;
    tHasta: TEdit;
    edHasta: TEdit;
    Label3: TLabel;
    cbPrecio: TComboBox;
    ckDesk: TCheckBox;
    Label10: TLabel;
    btCondi: TSpeedButton;
    tCondi: TEdit;
    edCondi: TEdit;
    btClose: TBitBtn;
    btPrint: TBitBtn;
    cbOrden: TComboBox;
    Label4: TLabel;
    Search: TQrySearchDlgIB;
    Label5: TLabel;
    btVendedor: TSpeedButton;
    tVendedor: TEdit;
    edVendedor: TEdit;
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCondiClick(Sender: TObject);
    procedure btDesdeClick(Sender: TObject);
    procedure btHastaClick(Sender: TObject);
    procedure btTipoClick(Sender: TObject);
    procedure edTipoChange(Sender: TObject);
    procedure edTipoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edDesdeChange(Sender: TObject);
    procedure edDesdeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edHastaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edHastaChange(Sender: TObject);
    procedure edCondiChange(Sender: TObject);
    procedure edCondiKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure btPrintClick(Sender: TObject);
    procedure edVendedorChange(Sender: TObject);
    procedure edVendedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btVendedorClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRepClientes: TfrmRepClientes;

implementation

uses CONT01, RCONT00;

{$R *.dfm}

procedure TfrmRepClientes.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmRepClientes.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then close;
  if key = vk_return then
    selectnext(activecontrol, true, true);
end;

procedure TfrmRepClientes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmRepClientes.btCondiClick(Sender: TObject);
begin
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('Código');
  Search.Query.clear;
  Search.Query.add('select cpa_nombre, cpa_codigo');
  Search.Query.add('from condiciones');
  Search.Query.add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.value));
  Search.ResultField := 'cpa_Codigo';
  Search.Title := 'Condiciones de Pago';
  if Search.execute then
  begin
    edCondi.text := Search.ValueField;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select cpa_nombre from condiciones');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and cpa_codigo = :cod');
    dm.Query1.parambyname('emp').asinteger := dm.QEmpresasEMP_CODIGO.value;
    dm.Query1.parambyname('cod').asinteger := strtoint(trim(edCondi.text));
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      messagedlg('CONDICION NO EXISTE',mterror,[mbok],0)
    else
      tCondi.text := dm.Query1.fieldbyname('cpa_nombre').asstring;
    edCondi.setfocus;
  end;
end;

procedure TfrmRepClientes.btDesdeClick(Sender: TObject);
begin
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('Código');
  search.AliasFields.add('Referencia');
  Search.Query.clear;
  Search.Query.add('select cli_nombre, cli_codigo, cli_referencia');
  Search.Query.add('from clientes');
  Search.Query.add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.value));
  if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
     Search.ResultField := 'cli_Codigo'
  else
     Search.ResultField := 'cli_referencia';
  Search.Title := 'Listado de Clientes';
  if Search.execute then
  begin
    edDesde.text := Search.ValueField;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select cli_nombre, cli_codigo, cli_referencia from clientes');
    dm.Query1.sql.add('where emp_codigo = :emp');
    if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
       dm.Query1.sql.add('and cli_codigo = :cod')
    else
       dm.Query1.sql.add('and cli_referencia = :cod');
    dm.Query1.parambyname('emp').asinteger := dm.QEmpresasEMP_CODIGO.value;
    if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
       dm.Query1.parambyname('cod').asinteger := strtoint(trim(edDesde.text))
    else
       dm.Query1.parambyname('cod').asstring := trim(edDesde.text);
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      messagedlg('CLIENTE NO EXISTE',mterror,[mbok],0)
    else
      tDesde.text := dm.Query1.fieldbyname('cli_nombre').asstring;
    edDesde.setfocus;
  end;
end;

procedure TfrmRepClientes.btHastaClick(Sender: TObject);
begin
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('Código');
  search.AliasFields.add('Referencia');
  Search.Query.clear;
  Search.Query.add('select cli_nombre, cli_codigo, cli_referencia');
  Search.Query.add('from clientes');
  Search.Query.add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.value));
  if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
     Search.ResultField := 'cli_Codigo'
  else
     Search.ResultField := 'cli_referencia';
  Search.Title := 'Listado de Clientes';
  if Search.execute then
  begin
    edHasta.text := Search.ValueField;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select cli_nombre, cli_codigo, cli_referencia from clientes');
    dm.Query1.sql.add('where emp_codigo = :emp');
    if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
       dm.Query1.sql.add('and cli_codigo = :cod')
    else
       dm.Query1.sql.add('and cli_referencia = :cod');
    dm.Query1.parambyname('emp').asinteger := dm.QEmpresasEMP_CODIGO.value;
    if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
       dm.Query1.parambyname('cod').asinteger := strtoint(trim(edHasta.text))
    else
       dm.Query1.parambyname('cod').asstring := trim(edHasta.text);
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      messagedlg('CLIENTE NO EXISTE',mterror,[mbok],0)
    else
      tHasta.text := dm.Query1.fieldbyname('cli_nombre').asstring;
    edHasta.setfocus;
  end;
end;

procedure TfrmRepClientes.btTipoClick(Sender: TObject);
begin
  Search.query.clear;
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('Código');
  Search.Title := 'Tipos de Clientes';
  Search.ResultField := 'tcl_codigo';
  Search.query.add('select tcl_nombre, tcl_codigo');
  Search.query.add('from tipoclientes');
  Search.query.add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.value));
  if search.execute then
  begin
    edTipo.text := search.valuefield;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select tcl_nombre from tipoclientes');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and tcl_codigo = '+edTipo.Text);
    dm.Query1.ParamByName('emp').AsInteger := dm.QEmpresasEMP_CODIGO.value;
    dm.Query1.Open;
    tTipo.Text := dm.Query1.FieldByname('tcl_nombre').AsString;
    edTipo.SetFocus;
  end;
end;

procedure TfrmRepClientes.edTipoChange(Sender: TObject);
begin
  if trim(edTipo.text) = '' then tTipo.text := '';
end;

procedure TfrmRepClientes.edTipoKeyDown(Sender: TObject; var Key: Word;
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
      dm.Query1.parambyname('emp').asinteger := dm.QEmpresasEMP_CODIGO.value;
      dm.Query1.parambyname('cod').asinteger := strtoint(trim(edTipo.text));
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

procedure TfrmRepClientes.edDesdeChange(Sender: TObject);
begin
  if trim(edDesde.text) = '' then tDesde.text := '';
end;

procedure TfrmRepClientes.edDesdeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edDesde.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select cli_nombre from clientes');
      dm.Query1.sql.add('where emp_codigo = :emp');
      if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
         dm.Query1.sql.add('and cli_codigo = :cod')
      else
         dm.Query1.sql.add('and cli_referencia = :cod');
      dm.Query1.parambyname('emp').asinteger := dm.QEmpresasEMP_CODIGO.value;
      if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
         dm.Query1.parambyname('cod').asinteger := strtoint(trim(edDesde.text))
      else
         dm.Query1.parambyname('cod').asstring := trim(edDesde.text);
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        messagedlg('CLIENTE NO EXISTE',mterror,[mbok],0);
        edDesde.SetFocus;
      end
      else
        tDesde.text := dm.Query1.fieldbyname('cli_nombre').asstring;
    end;
  end;
end;

procedure TfrmRepClientes.edHastaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edHasta.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select cli_nombre from clientes');
      dm.Query1.sql.add('where emp_codigo = :emp');
      if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
         dm.Query1.sql.add('and cli_codigo = :cod')
      else
         dm.Query1.sql.add('and cli_referencia = :cod');
      dm.Query1.parambyname('emp').asinteger := dm.QEmpresasEMP_CODIGO.value;
      if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
         dm.Query1.parambyname('cod').asinteger := strtoint(trim(edHasta.text))
      else
         dm.Query1.parambyname('cod').asstring := trim(edHasta.text);
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        messagedlg('CLIENTE NO EXISTE',mterror,[mbok],0);
        edHasta.SetFocus;
      end
      else
        tHasta.text := dm.Query1.fieldbyname('cli_nombre').asstring;
    end;
  end;
end;

procedure TfrmRepClientes.edHastaChange(Sender: TObject);
begin
  if trim(edHasta.text) = '' then tHasta.text := '';
end;

procedure TfrmRepClientes.edCondiChange(Sender: TObject);
begin
  if trim(edCondi.text) = '' then tCondi.text := '';
end;

procedure TfrmRepClientes.edCondiKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edCondi.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select cpa_nombre from condiciones');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and cpa_codigo = :cod');
      dm.Query1.parambyname('emp').asinteger := dm.QEmpresasEMP_CODIGO.value;
      dm.Query1.parambyname('cod').asinteger := strtoint(trim(edCondi.text));
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        messagedlg('CONDICION NO EXISTE',mterror,[mbok],0);
        edCondi.SetFocus;
      end
      else
        tCondi.text := dm.Query1.fieldbyname('cpa_nombre').asstring;
    end;
  end;
end;

procedure TfrmRepClientes.FormCreate(Sender: TObject);
begin
  cbPrecio.ItemIndex := 0;
  cbOrden.ItemIndex := 0;
end;

procedure TfrmRepClientes.btPrintClick(Sender: TObject);
begin
  Application.CreateForm(tRRepClientes, RRepClientes);
  RRepClientes.lbFecha.Caption := 'Al '+DateToStr(Date);
  RRepClientes.lbTipo.Caption := tTipo.Text;
  RRepClientes.lbCondi.Caption := tCondi.Text;
  RRepClientes.lbUsuario.Caption := cbBalance.Items[cbBalance.ItemIndex];
  RRepClientes.lbStatus.Caption := cbStatus.Items[cbStatus.ItemIndex];
  if ckDesk.Checked = True then
    RRepClientes.lbDesc.Caption := 'Con descuento'
  else
    RRepClientes.lbDesc.Caption := ' ';
  RRepClientes.lbPrecio.Caption := cbPrecio.Items[cbPrecio.ItemIndex];
  if Trim(edTipo.Text) <> '' then
    RRepClientes.QClientes.SQL.Add('and tcl_codigo = '+Trim(edTipo.Text));
  if (Trim(edDesde.Text) <> '') and (Trim(edHasta.Text) <> '') then
  begin
    if dm.QParametrosPAR_CODIGOCLIENTE.Value = 'I' then
       RRepClientes.QClientes.SQL.Add('and cli_codigo between '+Trim(edDesde.Text)+
                                       ' and '+Trim(edHasta.Text))
    else
       RRepClientes.QClientes.SQL.Add('and cli_referencia between '+#39+Trim(edDesde.Text)+#39+
                                       ' and '+#39+Trim(edHasta.Text)+#39);
  end;
  if Trim(edCondi.Text) <> '' then
    RRepClientes.QClientes.SQL.Add('and cpa_codigo = '+Trim(edCondi.Text));
  if Trim(edVendedor.Text) <> '' then
    RRepClientes.QClientes.SQL.Add('and ven_codigo = '+Trim(edVendedor.Text));

  case cbStatus.ItemIndex of
  1 : RRepClientes.QClientes.SQL.Add('and cli_status = "ACT"');
  2 : RRepClientes.QClientes.SQL.Add('and cli_status = "INA"');
  end;

  case cbBalance.ItemIndex of
  1 : RRepClientes.QClientes.SQL.Add('and cli_balance = 0');
  2 : RRepClientes.QClientes.SQL.Add('and cli_balance > 0');
  3 : RRepClientes.QClientes.SQL.Add('and cli_balance < 0');
  end;

  case cbPrecio.ItemIndex of
  1 : RRepClientes.QClientes.SQL.Add('and cli_precio = "Precio 1"');
  2 : RRepClientes.QClientes.SQL.Add('and cli_precio = "Precio 2"');
  3 : RRepClientes.QClientes.SQL.Add('and cli_precio = "Precio 3"');
  4 : RRepClientes.QClientes.SQL.Add('and cli_precio = "Precio 4"');
  end;

  case cbOrden.ItemIndex of
  0 : RRepClientes.QClientes.SQL.Add('Order by cli_codigo');
  1 : RRepClientes.QClientes.SQL.Add('Order by cli_referencia');
  2 : RRepClientes.QClientes.SQL.Add('Order by cli_nombre');
  3 : RRepClientes.QClientes.SQL.Add('Order by cli_cedula');
  4 : RRepClientes.QClientes.SQL.Add('Order by cli_rnc');
  end;
  RRepClientes.QClientes.Open;
  RRepClientes.QClientes.FetchAll;
  RRepClientes.PrinterSetup;
  RRepClientes.Preview;
  RRepClientes.Destroy;
end;

procedure TfrmRepClientes.edVendedorChange(Sender: TObject);
begin
  if trim(edVendedor.text) = '' then tVendedor.text := '';
end;

procedure TfrmRepClientes.edVendedorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
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
      dm.Query1.parambyname('emp').asinteger := dm.QEmpresasEMP_CODIGO.value;
      dm.Query1.parambyname('ven').asinteger := strtoint(trim(edVendedor.text));
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

procedure TfrmRepClientes.btVendedorClick(Sender: TObject);
begin
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('Código');
  Search.Query.clear;
  Search.Query.add('select ven_nombre, ven_codigo');
  Search.Query.add('from vendedores');
  Search.Query.add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.value));
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
    dm.Query1.parambyname('emp').asinteger := dm.QEmpresasEMP_CODIGO.value;
    dm.Query1.parambyname('ven').asinteger := strtoint(trim(edVendedor.text));
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      messagedlg('VENDEDOR NO EXISTE',mterror,[mbok],0)
    else
      tVendedor.text := dm.Query1.fieldbyname('ven_nombre').asstring;
    edVendedor.setfocus;
  end;
end;

end.
