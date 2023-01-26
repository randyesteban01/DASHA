unit CONT46;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, IBCustomDataSet,
  IBQuery, Spin, DateUtils, ADODB, QuerySearchDlgADO, DBCtrls;

type
  TfrmEliminaCargoBanco = class(TForm)
    Search: TQrySearchDlgADO;
    Label3: TLabel;
    btBanco: TSpeedButton;
    edBanco: TEdit;
    tBanco: TEdit;
    btClose: TBitBtn;
    btAnula: TBitBtn;
    Query1: TADOQuery;
    Label1: TLabel;
    Label4: TLabel;
    spAno: TSpinEdit;
    cbMes: TComboBox;
    edNumero1: TEdit;
    Label2: TLabel;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    dsSuc: TDataSource;
    Label14: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    QSucursalalm_codigo: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    procedure btBancoClick(Sender: TObject);
    procedure edBancoChange(Sender: TObject);
    procedure edBancoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btCloseClick(Sender: TObject);
    procedure btAnulaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure edNumero1Change(Sender: TObject);
    procedure edNumero2Change(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEliminaCargoBanco: TfrmEliminaCargoBanco;

implementation

uses SIGMA01;


{$R *.dfm}

procedure TfrmEliminaCargoBanco.btBancoClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select ban_nombre, ban_codigo');
  Search.Query.Add('from bancos');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.QEmpresasEMP_CODIGO.Value));
  Search.Query.Add('and suc_codigo = '+IntToStr(DBLookupComboBox2.KeyValue));
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Código');
  Search.Title := 'Bancos';
  Search.ResultField := 'ban_codigo';
  if Search.execute then
  begin
    edBanco.Text := Search.ValueField;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select ban_nombre, ban_codigo from bancos');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and ban_codigo = :cod');
    dm.Query1.SQL.Add('and suc_codigo = :suc');
    dm.Query1.Parameters.ParamByName('cod').Value := StrToInt(edBanco.Text);
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
    dm.Query1.Open;
    tBanco.Text := dm.Query1.FieldByName('ban_nombre').AsString;
  end;

end;

procedure TfrmEliminaCargoBanco.edBancoChange(Sender: TObject);
begin
  if Trim(edBanco.Text) = '' then tBanco.Text := '';
  btAnula.Enabled := (Trim(edBanco.Text) <> '') and
                     (Trim(edNumero1.Text) <> '');
end;

procedure TfrmEliminaCargoBanco.edBancoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if Trim(edBanco.Text) <> '' then
    begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select ban_nombre, ban_codigo from bancos');
      dm.Query1.SQL.Add('where emp_codigo = :emp');
      dm.Query1.SQL.Add('and ban_codigo = :cod');
      dm.Query1.SQL.Add('and suc_codigo = :suc');
      dm.Query1.Parameters.ParamByName('cod').Value := StrToInt(edBanco.Text);
      dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
      dm.Query1.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
      dm.Query1.Open;
      tBanco.Text := dm.Query1.FieldByName('ban_nombre').AsString;
    end;
  end;
end;

procedure TfrmEliminaCargoBanco.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmEliminaCargoBanco.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmEliminaCargoBanco.btAnulaClick(Sender: TObject);
begin
  if MessageDlg('ESTA SEGURO?',mtConfirmation,[mbyes,mbno],0) = mryes then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select car_numero from cargosbanco');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and ban_codigo = '+Trim(edBanco.Text));
    dm.Query1.SQL.Add('and car_ano = :ano');
    dm.Query1.SQL.Add('and car_mes = :mes');
    dm.Query1.SQL.Add('and car_numero between :num1 and :num2');
    dm.Query1.SQL.Add('and car_abono > 0');
    dm.Query1.SQL.Add('and suc_codigo = :suc');
    dm.Query1.Parameters.ParamByName('emp').Value  := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('ano').Value  := spAno.Value;
    dm.Query1.Parameters.ParamByName('mes').Value  := cbMes.ItemIndex + 1;
    dm.Query1.Parameters.ParamByName('num1').Value := StrToInt(Trim(edNumero1.Text));
    dm.Query1.Parameters.ParamByName('num2').Value := StrToInt(Trim(edNumero1.Text));
    dm.Query1.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
    begin
      MessageDlg('EXISTEN CARGOS QUE TIENEN ABONO Y NO PUEDEN ELIMINARSE'+#13+
                 'DEBE ELIMINAR LOS CREDITOS ANTES DE ELIMINARLOS',
                 mtError, [mbok], 0);
      edNumero1.SetFocus;
    end
    else
    begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select car_numero from cargosbanco');
      dm.Query1.SQL.Add('where emp_codigo = :emp');
      dm.Query1.SQL.Add('and ban_codigo = '+Trim(edBanco.Text));
      dm.Query1.SQL.Add('and car_ano = :ano');
      dm.Query1.SQL.Add('and car_mes = :mes');
      dm.Query1.SQL.Add('and car_numero between :num1 and :num2');
      dm.Query1.SQL.Add('and suc_codigo = :suc');
      dm.Query1.Parameters.ParamByName('emp').Value  := dm.QEmpresasEMP_CODIGO.Value;
      dm.Query1.Parameters.ParamByName('ano').Value  := spAno.Value;
      dm.Query1.Parameters.ParamByName('mes').Value  := cbMes.ItemIndex + 1;
      dm.Query1.Parameters.ParamByName('num1').Value := StrToInt(Trim(edNumero1.Text));
      dm.Query1.Parameters.ParamByName('num2').Value := StrToInt(Trim(edNumero1.Text));
      dm.Query1.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
      dm.Query1.Open;
      while not dm.Query1.eof do
      begin
        Query1.Close;
        Query1.SQL.Clear;
        Query1.SQL.Add('execute contpr_elimina_cargosbanco :emp, :suc, :ban, :ano, :mes, :num, :usu');
        Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
        Query1.Parameters.ParamByName('ban').Value := StrToInt(Trim(edBanco.Text));
        Query1.Parameters.ParamByName('num').Value := dm.Query1.FieldByName('car_numero').AsInteger;
        Query1.Parameters.ParamByName('ano').Value := spAno.Value;
        Query1.Parameters.ParamByName('mes').Value := cbMes.ItemIndex + 1;
        Query1.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
        Query1.Parameters.ParamByName('usu').Value := dm.Usuario;
        Query1.ExecSQL;
        dm.Query1.Next;
      end;
      MessageDlg('EL PROCESO DE ELIMINAR HA FINALIZADO', mtInformation, [mbok], 0);
      edNumero1.Text := '';
      edNumero1.SetFocus;
    end;
  end;
end;

procedure TfrmEliminaCargoBanco.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmEliminaCargoBanco.FormCreate(Sender: TObject);
begin
  spAno.Value  := YearOf(Date);
  cbMes.ItemIndex := MonthOf(Date)-1;
end;

procedure TfrmEliminaCargoBanco.edNumero1Change(Sender: TObject);
begin
  btAnula.Enabled := (Trim(edBanco.Text) <> '') and
                     (Trim(edNumero1.Text) <> '');
end;

procedure TfrmEliminaCargoBanco.edNumero2Change(Sender: TObject);
begin
  btAnula.Enabled := (Trim(edBanco.Text) <> '') and
                     (Trim(edNumero1.Text) <> '');
end;

procedure TfrmEliminaCargoBanco.FormActivate(Sender: TObject);
begin
  if not QSucursal.Active then
  begin
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;
    DBLookupComboBox2.KeyValue := QSucursalsuc_codigo.value;
  end;
end;

end.
