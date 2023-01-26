unit PVENTA178;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, DBCtrls,
  QuerySearchDlgADO, DB, ADODB;

type
  TfrmProductosDespachados = class(TForm)
    Panel1: TPanel;
    Label12: TLabel;
    btcliente: TSpeedButton;
    edCliente: TEdit;
    tCliente: TEdit;
    Label2: TLabel;
    Fecha1: TDateTimePicker;
    Fecha2: TDateTimePicker;
    rgtipo: TRadioGroup;
    btPrint: TBitBtn;
    btClose: TBitBtn;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    QSucursalalm_codigo: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    dsSuc: TDataSource;
    Search: TQrySearchDlgADO;
    Label8: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    procedure btCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btclienteClick(Sender: TObject);
    procedure edClienteChange(Sender: TObject);
    procedure edClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btPrintClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Cliente : Integer;
  end;

var
  frmProductosDespachados: TfrmProductosDespachados;

implementation

uses SIGMA01, RVENTA89;

{$R *.dfm}

procedure TfrmProductosDespachados.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmProductosDespachados.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmProductosDespachados.btclienteClick(Sender: TObject);
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
    end;
    edCliente.setfocus;
  end;
end;

procedure TfrmProductosDespachados.edClienteChange(Sender: TObject);
begin
  if trim(edCliente.text) = '' then tcliente.text := '';
end;

procedure TfrmProductosDespachados.edClienteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edCliente.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select cli_codigo, cli_nombre from clientes');
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
      begin
        messagedlg('CLIENTE NO EXISTE',mterror,[mbok],0);
        edCliente.SetFocus;
      end
      else
      begin
        tCliente.text := dm.Query1.fieldbyname('cli_nombre').asstring;
        Cliente := dm.Query1.fieldbyname('cli_codigo').AsInteger;
      end;
    end;
  end;
end;

procedure TfrmProductosDespachados.FormCreate(Sender: TObject);
begin
  fecha1.Date := Date;
  fecha2.Date := Date;
end;

procedure TfrmProductosDespachados.FormActivate(Sender: TObject);
begin
  if not QSucursal.Active then
  begin
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;
    DBLookupComboBox2.KeyValue := QSucursalsuc_codigo.Value;
  end;
end;

procedure TfrmProductosDespachados.btPrintClick(Sender: TObject);
begin
  if Trim(edCliente.Text) = '' then
  begin
    MessageDlg('Debe seleccionar el Cliente',mtError,[mbok],0);
    edcliente.SetFocus;
  end
  else
  begin
    Application.CreateForm(tRepProductosDespachados, RepProductosDespachados);
    RepProductosDespachados.lbCliente.Caption := tCliente.Text;
    RepProductosDespachados.lbFecha.Caption   := 'Del '+DateToStr(fecha1.Date)+' Al '+DateToStr(fecha2.Date);

    case rgtipo.ItemIndex of
    0 : RepProductosDespachados.QProductos.SQL.Add('where Despachada < Pedida');
    1 : RepProductosDespachados.QProductos.SQL.Add('where Despachada >0');
    2 : RepProductosDespachados.QProductos.SQL.Add('where Facturada < Pedida');
    3 : RepProductosDespachados.QProductos.SQL.Add('where Facturada >0');
    end;
    RepProductosDespachados.QProductos.SQL.Add('order by Fecha');

    RepProductosDespachados.QProductos.Parameters.ParamByName('emp').Value     := dm.vp_cia;
    RepProductosDespachados.QProductos.Parameters.ParamByName('suc').Value     := DBLookupComboBox2.KeyValue;
    RepProductosDespachados.QProductos.Parameters.ParamByName('fec1').DataType := ftDate;
    RepProductosDespachados.QProductos.Parameters.ParamByName('fec2').DataType := ftDate;
    RepProductosDespachados.QProductos.Parameters.ParamByName('fec1').Value    := Fecha1.Date;
    RepProductosDespachados.QProductos.Parameters.ParamByName('fec2').Value    := Fecha2.Date;
    RepProductosDespachados.QProductos.Parameters.ParamByName('cliente').Value := Cliente;
    RepProductosDespachados.QProductos.Open;
    RepProductosDespachados.PrinterSetup;
    RepProductosDespachados.Preview;
    RepProductosDespachados.Destroy;
  end;
end;

end.
