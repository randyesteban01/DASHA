unit PVENTA107;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, IBCustomDataSet,
  IBQuery, ExtCtrls, QuerySearchDlgADO, ADODB;

type
  TfrmAnulaPago = class(TForm)
    Label3: TLabel;
    edNumero: TEdit;
    btClose: TBitBtn;
    btAnular: TBitBtn;
    Query1: TADOQuery;
    cbTipo: TRadioGroup;
    Label1: TLabel;
    btBanco: TSpeedButton;
    edBanco: TEdit;
    tBanco: TEdit;
    Search: TQrySearchDlgADO;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btAnularClick(Sender: TObject);
    procedure btCloseClick(Sender: TObject);
    procedure btBancoClick(Sender: TObject);
    procedure edBancoChange(Sender: TObject);
    procedure edBancoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbTipoClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAnulaPago: TfrmAnulaPago;

implementation

uses SIGMA01;


{$R *.dfm}

procedure TfrmAnulaPago.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmAnulaPago.btAnularClick(Sender: TObject);
var
  Pago : Integer;
begin
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select pag_status, pag_numero from pagos');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  if cbTipo.ItemIndex = 0 then
  begin
    dm.Query1.SQL.Add('and pag_tipo = '+#39+'C'+#39);
    dm.Query1.SQL.Add('and ban_codigo = '+Trim(edBanco.Text));
  end
  else if cbTipo.ItemIndex = 1 then
    dm.Query1.SQL.Add('and pag_tipo = '+#39+'E'+#39)
  else if cbTipo.ItemIndex = 2 then
    dm.Query1.SQL.Add('and pag_tipo = '+#39+'N'+#39);
  dm.Query1.SQL.Add('and pag_documento = :num');
  dm.Query1.Parameters.ParamByName('emp').Value  := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('num').Value  := StrToInt(Trim(edNumero.Text));
  dm.Query1.Open;
  if dm.Query1.RecordCount = 0 then
  begin
    MessageDlg('ESTE PAGO NO EXISTE',mterror,[mbok],0);
    edNumero.SetFocus;
  end
  else if dm.Query1.FieldByName('pag_status').AsString = 'ANU' then
  begin
    MessageDlg('ESTE PAGO ESTA ANULADO',mterror,[mbok],0);
    edNumero.SetFocus;
  end
  else
    if MessageDlg('ESTA SEGURO?',mtConfirmation,[mbyes,mbno],0) = mryes then
    begin
      Pago := dm.Query1.FieldByName('pag_numero').AsInteger;
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('execute pr_anula_pago :emp, :num');
      dm.Query1.Parameters.ParamByName('emp').Value  := dm.vp_cia;
      dm.Query1.Parameters.ParamByName('num').Value  := Pago;
      dm.Query1.ExecSQL;
      MessageDlg('SE HA ANULADO EL PAGO',mtInformation,[mbok],0);
    end;
end;

procedure TfrmAnulaPago.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmAnulaPago.btBancoClick(Sender: TObject);
begin
  search.Query.clear;
  search.Query.add('select ban_nombre, ban_codigo');
  search.Query.add('from bancos');
  search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('Código');
  search.ResultField := 'ban_codigo';
  search.Title := 'Bancos';
  if search.execute then
  begin
    edBanco.text := search.valuefield;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select ban_nombre');
    dm.Query1.sql.add('from bancos');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and ban_codigo = :cod');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edBanco.text));
    dm.Query1.open;
    tBanco.text := dm.Query1.fieldbyname('ban_nombre').asstring;
    edBanco.SetFocus;
  end;
end;

procedure TfrmAnulaPago.edBancoChange(Sender: TObject);
begin
  if trim(edBanco.text) = '' then tBanco.text := '';
end;

procedure TfrmAnulaPago.edBancoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if Trim(edBanco.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select ban_nombre');
      dm.Query1.sql.add('from bancos');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and ban_codigo = :cod');
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edBanco.text));
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        tBanco.text := '';
        showmessage('ESTE BANCO NO EXISTE');
        edBanco.setfocus;
      end
      else
        tBanco.text := dm.Query1.fieldbyname('ban_nombre').asstring;
    end;
  end;
end;

procedure TfrmAnulaPago.cbTipoClick(Sender: TObject);
begin
  edBanco.Enabled := cbTipo.ItemIndex = 0;
  btBanco.Enabled := cbTipo.ItemIndex = 0;
end;

procedure TfrmAnulaPago.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
     begin
       perform(wm_nextdlgctl, 0, 0);
       key := #0;
     end;
end;

end.
