unit PVENTA174;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, DBCtrls, StdCtrls, Buttons;

type
  TfrmAnulaNCCompra = class(TForm)
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
    Label4: TLabel;
    QMotivo: TADOQuery;
    QMotivomanu_codigo: TIntegerField;
    QMotivomanu_nombre: TStringField;
    dsMotivo: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btCloseClick(Sender: TObject);
    procedure btAnularClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAnulaNCCompra: TfrmAnulaNCCompra;

implementation

uses SIGMA01;

{$R *.dfm}

procedure TfrmAnulaNCCompra.FormActivate(Sender: TObject);
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

procedure TfrmAnulaNCCompra.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmAnulaNCCompra.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmAnulaNCCompra.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmAnulaNCCompra.btAnularClick(Sender: TObject);
var
  Fecha : TDateTime;
begin
  if QMotivo.RecordCount = 0 then
  begin
    MessageDlg('Debe especificar un Motivo de Anulación',mtError,[mbok],0);
  end
  else
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select ncr_status, ncr_devolucion, ncr_fecha from notascreditocompra');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and ncr_numero = :num');
    dm.Query1.SQL.Add('and suc_codigo = :suc');
    dm.Query1.Parameters.ParamByName('emp').Value  := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('num').Value  := StrToInt(Trim(edNumero.Text));
    dm.Query1.Parameters.ParamByName('suc').Value  := DBLookupComboBox2.KeyValue;
    dm.Query1.Open;
    if dm.Query1.RecordCount = 0 then
    begin
      MessageDlg('ESTA NOTA DE CREDITO NO EXISTE',mterror,[mbok],0);
      edNumero.SetFocus;
    end
    else if dm.Query1.FieldByName('ncr_status').AsString = 'ANU' then
    begin
      MessageDlg('ESTA NOTA DE CREDITO ESTA ANULADA',mterror,[mbok],0);
      edNumero.SetFocus;
    end
    else if dm.Query1.FieldByName('ncr_devolucion').AsInteger > 0 then
    begin
      MessageDlg('ESTA NOTA DE CREDITO SE GENERO MEDIANTE UNA'+#13+
                 'DEVOLUCION. PARA ANULARLA DEBE ANULAR LA'+#13+
                 'DEVOLUCION Y EL SISTEMA AUTOMATICAMENTE'+#13+
                 'ANULARA LA NOTA DE CREDITO',mterror,[mbok],0);
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
        dm.Query1.SQL.Add('execute pr_anula_nc_compra :emp, :suc, :num, :usu, :mot');
        dm.Query1.Parameters.ParamByName('emp').Value  := dm.vp_cia;
        dm.Query1.Parameters.ParamByName('num').Value  := StrToInt(Trim(edNumero.Text));
        dm.Query1.Parameters.ParamByName('suc').Value  := DBLookupComboBox2.KeyValue;
        dm.Query1.Parameters.ParamByName('usu').Value  := dm.NomUsu;
        dm.Query1.Parameters.ParamByName('mot').Value  := DBLookupComboBox1.KeyValue;
        dm.Query1.ExecSQL;
        MessageDlg('SE HA ANULADO LA NOTA DE CREDITO',mtInformation,[mbok],0);
      end;
    end;
  end;
end;

end.
