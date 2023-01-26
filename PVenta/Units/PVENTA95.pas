unit PVENTA95;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, IBCustomDataSet,
  IBQuery, ADODB, DBCtrls;

type
  TfrmAnulaREC = class(TForm)
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
  frmAnulaREC: TfrmAnulaREC;

implementation

uses SIGMA01;


{$R *.dfm}

procedure TfrmAnulaREC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmAnulaREC.btAnularClick(Sender: TObject);
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
    dm.Query1.SQL.Add('select rec_status, rec_fecha from recibos');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and rec_numero = :num');
    dm.Query1.SQL.Add('and suc_codigo = :suc');
    dm.Query1.Parameters.ParamByName('emp').Value  := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('num').Value  := StrToInt(Trim(edNumero.Text));
    dm.Query1.Parameters.ParamByName('suc').Value  := DBLookupComboBox2.KeyValue;
    dm.Query1.Open;
    if dm.Query1.RecordCount = 0 then
    begin
      MessageDlg('ESTE RECIBO NO EXISTE',mterror,[mbok],0);
      edNumero.SetFocus;
    end
    else if dm.Query1.FieldByName('rec_status').AsString = 'ANU' then
    begin
      MessageDlg('ESTE RECIBO ESTA ANULADO',mterror,[mbok],0);
      edNumero.SetFocus;
    end
    else
    begin
      Fecha := dm.Query1.FieldByName('rec_fecha').AsDateTime;
      //verificando si el cierre se hizo para esta fecha
      Query1.Close;
      Query1.SQL.Clear;
      Query1.SQL.Add('select cie_fecha from cierre');
      Query1.SQL.Add('where emp_codigo = :emp');
      Query1.SQL.Add('and cie_fecha = :fec');
      Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
      Query1.Parameters.ParamByName('fec').Value := Fecha;
      Query1.Open;
      if Query1.RecordCount > 0 then
      begin
        MessageDlg('NO PUEDE ANULARSE EL RECIBO, DEBIDO'+#13+
                   'A QUE ESTE DIA FUE CERRADO.',mtError,[mbok],0);
      end
      else
        if MessageDlg('ESTA SEGURO?',mtConfirmation,[mbyes,mbno],0) = mryes then
        begin
          dm.Query1.Close;
          dm.Query1.SQL.Clear;
          dm.Query1.SQL.Add('execute pr_anula_rec :emp, :suc, :num, :usu, :mot');
          dm.Query1.Parameters.ParamByName('emp').Value  := dm.vp_cia;
          dm.Query1.Parameters.ParamByName('num').Value  := StrToInt(Trim(edNumero.Text));
          dm.Query1.Parameters.ParamByName('suc').Value  := DBLookupComboBox2.KeyValue;
          dm.Query1.Parameters.ParamByName('usu').Value  := dm.NomUsu;
          dm.Query1.Parameters.ParamByName('mot').Value  := DBLookupComboBox1.KeyValue;
          dm.Query1.ExecSQL;
          MessageDlg('SE HA ANULADO EL RECIBO',mtInformation,[mbok],0);
        end;
    end;
  end;
end;

procedure TfrmAnulaREC.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmAnulaREC.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
     begin
       perform(wm_nextdlgctl, 0, 0);
       key := #0;
     end;
end;

procedure TfrmAnulaREC.FormActivate(Sender: TObject);
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
