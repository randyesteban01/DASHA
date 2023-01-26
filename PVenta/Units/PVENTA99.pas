unit PVENTA99;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, IBCustomDataSet,
  IBQuery, ADODB, DBCtrls;

type
  TfrmAnulaCond = class(TForm)
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
  frmAnulaCond: TfrmAnulaCond;

implementation

uses SIGMA01;


{$R *.dfm}

procedure TfrmAnulaCond.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmAnulaCond.btAnularClick(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select con_status, con_facturado from conduce');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.SQL.Add('and con_numero = :num');
  dm.Query1.SQL.Add('and suc_codigo = :suc');
  dm.Query1.Parameters.ParamByName('emp').Value  := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('num').Value  := StrToInt(Trim(edNumero.Text));
  dm.Query1.Parameters.ParamByName('suc').Value  := DBLookupComboBox2.KeyValue;
  dm.Query1.Open;
  if dm.Query1.RecordCount = 0 then
  begin
    MessageDlg('ESTE CONDUCE NO EXISTE',mterror,[mbok],0);
    edNumero.SetFocus;
  end
  else if dm.Query1.FieldByName('con_facturado').AsString = 'S' then
  begin
    MessageDlg('ESTE CONDUCE FUE UTILIZADO EN UNA FACTURA',mterror,[mbok],0);
    edNumero.SetFocus;
  end
  else if dm.Query1.FieldByName('con_status').AsString = 'ANU' then
  begin
    MessageDlg('ESTE CONDUCE ESTA ANULADO',mterror,[mbok],0);
    edNumero.SetFocus;
  end
  else
    if MessageDlg('ESTA SEGURO?',mtConfirmation,[mbyes,mbno],0) = mryes then
    begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('execute pr_anula_conduce :emp, :suc, :num, :usu');
      dm.Query1.Parameters.ParamByName('emp').Value  := dm.vp_cia;
      dm.Query1.Parameters.ParamByName('num').Value  := StrToInt(Trim(edNumero.Text));
      dm.Query1.Parameters.ParamByName('suc').Value  := DBLookupComboBox2.KeyValue;
      dm.Query1.Parameters.ParamByName('usu').Value  := DM.vp_usuario;
      dm.Query1.ExecSQL;
      MessageDlg('SE HA ANULADO EL CONDUCE',mtInformation,[mbok],0);
    end;
end;

procedure TfrmAnulaCond.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmAnulaCond.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
     begin
       perform(wm_nextdlgctl, 0, 0);
       key := #0;
     end;
end;

procedure TfrmAnulaCond.FormActivate(Sender: TObject);
begin
  if not QSucursal.Active then
  begin
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;
    DBLookupComboBox2.KeyValue := QSucursalsuc_codigo.Value;
  end;
end;

end.
