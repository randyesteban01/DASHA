unit PVENTA195;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, IBCustomDataSet,
  IBQuery, ADODB, DBCtrls;

type
  TfrmAnulaLiq = class(TForm)
    Label3: TLabel;
    edNumero: TEdit;
    btClose: TBitBtn;
    btAnular: TBitBtn;
    Query1: TADOQuery;
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
  frmAnulaLiq: TfrmAnulaLiq;

implementation

uses SIGMA01;


{$R *.dfm}

procedure TfrmAnulaLiq.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmAnulaLiq.btAnularClick(Sender: TObject);
var
  Fecha : TDateTime;
  Forma : string;
  Tipo, Fact : Integer;
begin
  if QMotivo.RecordCount = 0 then
  begin
    MessageDlg('Debe especificar un Motivo de Anulación',mtError,[mbok],0);
  end
  else
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select liq_status, liq_fecha, liq_numero');
    dm.Query1.SQL.Add('from Liquidacion');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and liq_numero = :num');
    dm.Query1.Parameters.ParamByName('emp').Value  := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('num').Value  := StrToInt(Trim(edNumero.Text));
    dm.Query1.Open;
    if dm.Query1.RecordCount = 0 then
    begin
      MessageDlg('ESTA LIQUIDACION NO EXISTE',mterror,[mbok],0);
      edNumero.SetFocus;
    end
    else if dm.Query1.FieldByName('liq_status').AsString = 'ANU' then
    begin
      MessageDlg('ESTA LIQUIDACION ESTA ANULADA',mterror,[mbok],0);
      edNumero.SetFocus;
    end
    else
    begin
      Fecha := dm.Query1.FieldByName('liq_fecha').AsDateTime;
      Fact  := dm.Query1.FieldByName('liq_numero').asinteger;
      if MessageDlg('ESTA SEGURO?',mtConfirmation,[mbyes,mbno],0) = mryes then
      begin
        dm.Query1.Close;
        dm.Query1.SQL.Clear;
        dm.Query1.SQL.Add('execute pr_anula_liq :emp, :num, :usu, :mot');
        dm.Query1.Parameters.ParamByName('emp').Value  := dm.vp_cia;
        dm.Query1.Parameters.ParamByName('num').Value  := StrToInt(Trim(edNumero.Text));
        dm.Query1.Parameters.ParamByName('usu').Value  := dm.NomUsu;
        dm.Query1.Parameters.ParamByName('mot').Value  := DBLookupComboBox1.KeyValue;
        dm.Query1.ExecSQL;
        MessageDlg('SE HA ANULADO LA LIQUIDACION',mtInformation,[mbok],0);
      end;
    end;
  end;
end;

procedure TfrmAnulaLiq.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmAnulaLiq.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmAnulaLiq.FormActivate(Sender: TObject);
begin
  if not QMotivo.Active then
  begin
    QMotivo.Open;
    DBLookupComboBox1.KeyValue := QMotivomanu_codigo.Value;
  end;
end;

end.
