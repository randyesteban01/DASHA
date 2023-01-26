unit PVENTA92;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, IBCustomDataSet,
  IBQuery, ADODB, DBCtrls;

type
  TfrmAnulaND = class(TForm)
    Label3: TLabel;
    edNumero: TEdit;
    btClose: TBitBtn;
    btAnular: TBitBtn;
    Query1: TADOQuery;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    dsSuc: TDataSource;
    Label14: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    QSucursalalm_codigo: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    Label4: TLabel;
    QMotivo: TADOQuery;
    QMotivomanu_codigo: TIntegerField;
    QMotivomanu_nombre: TStringField;
    dsMotivo: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btAnularClick(Sender: TObject);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAnulaND: TfrmAnulaND;

implementation

uses SIGMA01;


{$R *.dfm}

procedure TfrmAnulaND.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmAnulaND.btAnularClick(Sender: TObject);
begin
  if QMotivo.RecordCount = 0 then
  begin
    MessageDlg('Debe especificar un Motivo de Anulación',mtError,[mbok],0);
  end
  else
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select nde_status, nde_abono from notasdebito');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and nde_numero = :num');
    dm.Query1.SQL.Add('and suc_codigo = :suc');
    dm.Query1.Parameters.ParamByName('emp').Value  := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('num').Value  := StrToInt(Trim(edNumero.Text));
    dm.Query1.Parameters.ParamByName('suc').Value  := DBLookupComboBox2.KeyValue;
    dm.Query1.Open;
    if dm.Query1.RecordCount = 0 then
    begin
      MessageDlg('ESTA NOTA DE DEBITO NO EXISTE',mterror,[mbok],0);
      edNumero.SetFocus;
    end
    else if dm.Query1.FieldByName('nde_status').AsString = 'ANU' then
    begin
      MessageDlg('ESTA NOTA DE DEBITO ESTA ANULADA',mterror,[mbok],0);
      edNumero.SetFocus;
    end
    else if StrToFloat(Format('%10.2f',[dm.Query1.FieldByName('nde_abono').asfloat])) > 0 then
    begin
      MessageDlg('ESTA NOTA DE DEBITO TIENE UN ABONO Y NO'+#13+
                 'PUEDE SER ANULADA',mterror,[mbok],0);
      edNumero.SetFocus;
    end
    else
    begin
      if MessageDlg('ESTA SEGURO?',mtConfirmation,[mbyes,mbno],0) = mryes then
      begin
        dm.Query1.Close;
        dm.Query1.SQL.Clear;
        dm.Query1.SQL.Add('execute pr_anula_db :emp, :suc, :num, :usu, :mot');
        dm.Query1.Parameters.ParamByName('emp').Value  := dm.vp_cia;
        dm.Query1.Parameters.ParamByName('num').Value  := StrToInt(Trim(edNumero.Text));
        dm.Query1.Parameters.ParamByName('suc').Value  := DBLookupComboBox2.KeyValue;
        dm.Query1.Parameters.ParamByName('usu').Value  := dm.NomUsu;
        dm.Query1.Parameters.ParamByName('mot').Value  := DBLookupComboBox1.KeyValue;
        dm.Query1.ExecSQL;
        MessageDlg('SE HA ANULADO LA NOTA DE DEBITO',mtInformation,[mbok],0);
      end;
    end;
  end;
end;

procedure TfrmAnulaND.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmAnulaND.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
     begin
       perform(wm_nextdlgctl, 0, 0);
       key := #0;
     end;
end;

procedure TfrmAnulaND.FormActivate(Sender: TObject);
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

end.
