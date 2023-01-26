unit PVENTA98;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, IBCustomDataSet,
  IBQuery, ADODB, DBCtrls;

type
  TfrmAnulaEnt = class(TForm)
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
    QMotivo: TADOQuery;
    QMotivomanu_codigo: TIntegerField;
    QMotivomanu_nombre: TStringField;
    dsMotivo: TDataSource;
    Label4: TLabel;
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
  frmAnulaEnt: TfrmAnulaEnt;

implementation

uses SIGMA01;


{$R *.dfm}

procedure TfrmAnulaEnt.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmAnulaEnt.btAnularClick(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select ent_status from entradainv');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.SQL.Add('and ent_numero = :num');
  dm.Query1.SQL.Add('and suc_codigo = :suc');
  dm.Query1.Parameters.ParamByName('emp').Value  := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('num').Value  := StrToInt(Trim(edNumero.Text));
  dm.Query1.Parameters.ParamByName('suc').Value  := DBLookupComboBox2.KeyValue;
  dm.Query1.Open;
  if dm.Query1.RecordCount = 0 then
  begin
    MessageDlg('ESTA ENTRADA DE ALMACEN NO EXISTE',mterror,[mbok],0);
    edNumero.SetFocus;
  end
  else if dm.Query1.FieldByName('ent_status').AsString = 'ANU' then
  begin
    MessageDlg('ESTA ENTRADA DE ALMACEN ESTA ANULADA',mterror,[mbok],0);
    edNumero.SetFocus;
  end
  else
    if MessageDlg('ESTA SEGURO?',mtConfirmation,[mbyes,mbno],0) = mryes then
    begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('execute pr_anula_ent :emp, :suc, :num, :mot, :usu');
      dm.Query1.Parameters.ParamByName('emp').Value  := dm.vp_cia;
      dm.Query1.Parameters.ParamByName('num').Value  := StrToInt(Trim(edNumero.Text));
      dm.Query1.Parameters.ParamByName('suc').Value  := DBLookupComboBox2.KeyValue;
      dm.Query1.Parameters.ParamByName('mot').Value  := DBLookupComboBox1.KeyValue;
      dm.Query1.Parameters.ParamByName('usu').Value  := dm.vp_usuario;
      dm.Query1.ExecSQL;
      MessageDlg('SE HA ANULADO LA ENTRADA DE ALMACEN',mtInformation,[mbok],0);
    end;
end;

procedure TfrmAnulaEnt.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmAnulaEnt.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
     begin
       perform(wm_nextdlgctl, 0, 0);
       key := #0;
     end;
end;

procedure TfrmAnulaEnt.FormActivate(Sender: TObject);
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
