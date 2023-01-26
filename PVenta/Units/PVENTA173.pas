unit PVENTA173;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, DBCtrls, StdCtrls, Buttons;

type
  TfrmAnulaDevCompra = class(TForm)
    Label3: TLabel;
    Label14: TLabel;
    edNumero: TEdit;
    btClose: TBitBtn;
    btAnular: TBitBtn;
    DBLookupComboBox2: TDBLookupComboBox;
    Query1: TADOQuery;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    QSucursalalm_codigo: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    dsSuc: TDataSource;
    QMotivo: TADOQuery;
    QMotivomanu_codigo: TIntegerField;
    QMotivomanu_nombre: TStringField;
    dsMotivo: TDataSource;
    Label4: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure btCloseClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btAnularClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAnulaDevCompra: TfrmAnulaDevCompra;

implementation

uses SIGMA01;

{$R *.dfm}

procedure TfrmAnulaDevCompra.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmAnulaDevCompra.FormActivate(Sender: TObject);
begin
  if not QSucursal.Active then
  begin
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;
    DBLookupComboBox2.KeyValue := QSucursalsuc_codigo.Value;

    QMotivo.Open;
    DBLookupComboBox1.KeyValue := QMotivomanu_codigo.Value;
  end;
end;

procedure TfrmAnulaDevCompra.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmAnulaDevCompra.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmAnulaDevCompra.btAnularClick(Sender: TObject);
var
  Fecha : TDateTime;
  Fact : string;
  Tipo, Sup : Integer;
begin
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select dev_status, dev_fecha, sup_codigo, fac_numero');
  dm.Query1.SQL.Add('from devolucioncompra');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.SQL.Add('and dev_numero = :num');
  dm.Query1.SQL.Add('and suc_codigo = :suc');
  dm.Query1.Parameters.ParamByName('emp').Value  := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('num').Value  := StrToInt(Trim(edNumero.Text));
  dm.Query1.Parameters.ParamByName('suc').Value  := DBLookupComboBox2.KeyValue;
  dm.Query1.Open;
  if dm.Query1.RecordCount = 0 then
  begin
    MessageDlg('ESTA DEVOLUCION NO EXISTE',mterror,[mbok],0);
    edNumero.SetFocus;
  end
  else if dm.Query1.FieldByName('dev_status').AsString = 'ANU' then
  begin
    MessageDlg('ESTA DEVOLUCION ESTA ANULADA',mterror,[mbok],0);
    edNumero.SetFocus;
  end
  else
  begin
    Fecha := dm.Query1.FieldByName('dev_fecha').AsDateTime;
    Sup   := dm.Query1.FieldByName('sup_codigo').asinteger;
    Fact  := dm.Query1.FieldByName('fac_numero').asstring;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select n.ncr_montousado');
    dm.Query1.SQL.Add('from notascreditocompra n, det_notacreditocompra d');
    dm.Query1.SQL.Add('where n.emp_codigo = d.emp_codigo');
    dm.Query1.SQL.Add('and n.suc_codigo = d.suc_codigo');
    dm.Query1.SQL.Add('and n.ncr_numero = d.ncr_numero');
    dm.Query1.SQL.Add('and n.emp_codigo = :emp');
    dm.Query1.SQL.Add('and n.ncr_devolucion = :num');
    dm.Query1.SQL.Add('and n.suc_codigo = :suc');
    dm.Query1.Parameters.ParamByName('emp').Value  := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('num').Value  := StrToInt(Trim(edNumero.Text));
    dm.Query1.Parameters.ParamByName('suc').Value  := DBLookupComboBox2.KeyValue;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 1 then
    begin
      MessageDlg('ESTA DEVOLUCION GENERO UNA NOTA DE CREDITO,'+#13+
                 'LA CUAL FUE UTILIZADA PAGAR O ABONAR OTRAS FACTURAS.'+#13+
                 'NO PUEDE SER ANULADA.',mtError,[mbok],0);
      edNumero.SetFocus;
    end
    else
    begin
      //verificando si el cierre se hizo para esta fecha
      Query1.Close;
      Query1.SQL.Clear;
      Query1.SQL.Add('select cie_fecha from cierre');
      Query1.SQL.Add('where emp_codigo = :emp');
      Query1.SQL.Add('and cie_fecha = :fec');
      Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
      Query1.Parameters.ParamByName('fec').Value    := Fecha;
      Query1.Open;
      if Query1.RecordCount > 0 then
      begin
        MessageDlg('NO PUEDE ANULARSE LA NOTA DE CREDITO, DEBIDO'+#13+
                   'A QUE ESTE DIA FUE CERRADO.',mtError,[mbok],0);
      end
      else if MessageDlg('ESTA SEGURO?',mtConfirmation,[mbyes,mbno],0) = mryes then
      begin
        dm.Query1.Close;
        dm.Query1.SQL.Clear;
        dm.Query1.SQL.Add('execute pr_anula_dev_compra :emp, :suc, :num, :usu, :mot');
        dm.Query1.Parameters.ParamByName('emp').Value  := dm.vp_cia;
        dm.Query1.Parameters.ParamByName('num').Value  := StrToInt(Trim(edNumero.Text));
        dm.Query1.Parameters.ParamByName('suc').Value  := DBLookupComboBox2.KeyValue;
        dm.Query1.Parameters.ParamByName('usu').Value  := dm.NomUsu;
        dm.Query1.Parameters.ParamByName('mot').Value  := DBLookupComboBox1.KeyValue;
        dm.Query1.ExecSQL;
        MessageDlg('SE HA ANULADO LA DEVOLUCION',mtInformation,[mbok],0);
      end;
    end;
  end;
end;

end.
