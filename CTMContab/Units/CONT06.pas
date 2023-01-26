unit CONT06;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, QuerySearchDlgIB;

type
  TfrmRepProveedores = class(TForm)
    cbStatus: TRadioGroup;
    cbBalance: TRadioGroup;
    btClose: TBitBtn;
    btPrint: TBitBtn;
    Label1: TLabel;
    btDesde: TSpeedButton;
    Label2: TLabel;
    btHasta: TSpeedButton;
    tDesde: TEdit;
    edDesde: TEdit;
    tHasta: TEdit;
    edHasta: TEdit;
    Search: TQrySearchDlgIB;
    Label4: TLabel;
    cbOrden: TComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure edDesdeChange(Sender: TObject);
    procedure edHastaChange(Sender: TObject);
    procedure btDesdeClick(Sender: TObject);
    procedure btHastaClick(Sender: TObject);
    procedure edDesdeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edHastaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btPrintClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRepProveedores: TfrmRepProveedores;

implementation

uses CONT01, RCONT01;

{$R *.dfm}

procedure TfrmRepProveedores.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmRepProveedores.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmRepProveedores.edDesdeChange(Sender: TObject);
begin
  if trim(edDesde.text) = '' then tDesde.text := '';
end;

procedure TfrmRepProveedores.edHastaChange(Sender: TObject);
begin
  if trim(edHasta.text) = '' then tHasta.text := '';
end;

procedure TfrmRepProveedores.btDesdeClick(Sender: TObject);
begin
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('Código');
  search.AliasFields.add('Referencia');
  Search.Query.clear;
  Search.Query.add('select sup_nombre, sup_codigo');
  Search.Query.add('from proveedores');
  Search.Query.add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.value));
  Search.ResultField := 'sup_Codigo';
  Search.Title := 'Listado de Proveedores';
  if Search.execute then
  begin
    edDesde.text := Search.ValueField;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select sup_nombre, sup_codigo from proveedores');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and sup_codigo = '+trim(edDesde.text));
    dm.Query1.parambyname('emp').asinteger := dm.QEmpresasEMP_CODIGO.value;
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      messagedlg('PROVEEDOR NO EXISTE',mterror,[mbok],0)
    else
      tDesde.text := dm.Query1.fieldbyname('sup_nombre').asstring;
    edDesde.setfocus;
  end;
end;

procedure TfrmRepProveedores.btHastaClick(Sender: TObject);
begin
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('Código');
  search.AliasFields.add('Referencia');
  Search.Query.clear;
  Search.Query.add('select sup_nombre, sup_codigo');
  Search.Query.add('from proveedores');
  Search.Query.add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.value));
  Search.ResultField := 'sup_Codigo';
  Search.Title := 'Listado de Proveedores';
  if Search.execute then
  begin
    edHasta.text := Search.ValueField;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select sup_nombre, sup_codigo from proveedores');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and sup_codigo = '+trim(edHasta.text));
    dm.Query1.parambyname('emp').asinteger := dm.QEmpresasEMP_CODIGO.value;
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      messagedlg('PROVEEDOR NO EXISTE',mterror,[mbok],0)
    else
      tHasta.text := dm.Query1.fieldbyname('sup_nombre').asstring;
    edHasta.setfocus;
  end;
end;

procedure TfrmRepProveedores.edDesdeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edDesde.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select sup_nombre from proveedores');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and cli_codigo = '+Trim(edDesde.Text));
      dm.Query1.parambyname('emp').asinteger := dm.QEmpresasEMP_CODIGO.value;
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        messagedlg('PROVEEDOR NO EXISTE',mterror,[mbok],0);
        edDesde.SetFocus;
      end
      else
        tDesde.text := dm.Query1.fieldbyname('sup_nombre').asstring;
    end;
  end;
end;

procedure TfrmRepProveedores.edHastaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edHasta.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select sup_nombre from proveedores');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and cli_codigo = '+Trim(edHasta.Text));
      dm.Query1.parambyname('emp').asinteger := dm.QEmpresasEMP_CODIGO.value;
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        messagedlg('PROVEEDOR NO EXISTE',mterror,[mbok],0);
        edHasta.SetFocus;
      end
      else
        tHasta.text := dm.Query1.fieldbyname('sup_nombre').asstring;
    end;
  end;
end;

procedure TfrmRepProveedores.btPrintClick(Sender: TObject);
begin
  Application.CreateForm(tRRepProveedores, RRepProveedores);
  if (Trim(edDesde.Text) <> '') and (Trim(edHasta.Text) <> '') then
    RRepProveedores.QProv.SQL.Add('and sup_codigo between '+
                                  Trim(edDesde.Text)+' And '+
                                  Trim(edHasta.Text));
  case cbStatus.ItemIndex of
  1 : RRepProveedores.QProv.SQL.Add('and sup_status = "ACT"');
  2 : RRepProveedores.QProv.SQL.Add('and sup_status = "INA"');
  end;

  case cbBalance.ItemIndex of
  1 : RRepProveedores.QProv.SQL.Add('and sup_balance = 0');
  2 : RRepProveedores.QProv.SQL.Add('and sup_balance > 0');
  3 : RRepProveedores.QProv.SQL.Add('and sup_balance < 0');
  end;

  case cbOrden.ItemIndex of
  0 : RRepProveedores.QProv.SQL.Add('order by sup_codigo');
  1 : RRepProveedores.QProv.SQL.Add('order by sup_nombre');
  2 : RRepProveedores.QProv.SQL.Add('order by sup_rnc');
  end;
  RRepProveedores.QProv.Open;
  RRepProveedores.QProv.FetchAll;
  RRepProveedores.lbFecha.Caption := 'Al '+DateToStr(Date);
  RRepProveedores.lbStatus.Caption := cbStatus.Items[cbStatus.ItemIndex];
  RRepProveedores.lbUsuario.Caption := cbBalance.Items[cbBalance.ItemIndex];
  RRepProveedores.PrinterSetup;
  RRepProveedores.Preview;
  RRepProveedores.Destroy;
end;

procedure TfrmRepProveedores.FormCreate(Sender: TObject);
begin
  cbOrden.ItemIndex := 0;
end;

procedure TfrmRepProveedores.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then close;
  if key = vk_return then
    selectnext(activecontrol, true, true);
end;

end.
