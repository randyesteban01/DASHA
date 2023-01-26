unit CONT50;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, db, DBCtrls, ADODB;

type
  TfrmCierreAno = class(TForm)
    btCerrar: TBitBtn;
    btReversa: TBitBtn;
    btClose: TBitBtn;
    Fecha: TDateTimePicker;
    Label1: TLabel;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    QSucursalemp_Codigo: TIntegerField;
    QSucursalalm_codigo: TIntegerField;
    dsSuc: TDataSource;
    Label15: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    procedure btCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btCerrarClick(Sender: TObject);
    procedure btReversaClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCierreAno: TfrmCierreAno;

implementation

uses SIGMA01;


{$R *.dfm}

procedure TfrmCierreAno.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCierreAno.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmCierreAno.FormCreate(Sender: TObject);
begin
  Fecha.Date := Date;
end;

procedure TfrmCierreAno.btCerrarClick(Sender: TObject);
var
  ano, mes, dia : word;
begin
  DecodeDate(Fecha.Date, ano, mes, dia);
  Screen.Cursor := crHourGlass;
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('execute CONTPR_CIERRE_ANO :emp, :suc, :ano, :mes, :fec, :usu');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('suc').Value := StrToInt(DBLookupComboBox2.KeyValue);
  dm.Query1.Parameters.ParamByName('ano').Value := Ano;
  dm.Query1.Parameters.ParamByName('mes').Value := Mes;
  dm.Query1.Parameters.ParamByName('fec').DataType := ftDate;
  dm.Query1.Parameters.ParamByName('fec').Value := Fecha.Date;
  dm.Query1.Parameters.ParamByName('usu').Value := dm.Usuario;
  dm.Query1.ExecSQL;
  Screen.Cursor := crDefault;
end;

procedure TfrmCierreAno.btReversaClick(Sender: TObject);
var
  ano, mes, dia : word;
begin
  DecodeDate(Fecha.Date, ano, mes, dia);
  Screen.Cursor := crHourGlass;
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('execute CONTPR_REVERSA_ANO :emp, :suc, :ano, :mes, :fec');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('suc').Value := StrToInt(DBLookupComboBox2.KeyValue);
  dm.Query1.Parameters.ParamByName('ano').Value := Ano;
  dm.Query1.Parameters.ParamByName('mes').Value := Mes;
  dm.Query1.Parameters.ParamByName('fec').DataType := ftDate;
  dm.Query1.Parameters.ParamByName('fec').Value := Fecha.Date;
  dm.Query1.ExecSQL;
  Screen.Cursor := crDefault;
end;

procedure TfrmCierreAno.FormActivate(Sender: TObject);
begin
  if not QSucursal.Active then
  begin
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;
    DBLookupComboBox2.KeyValue := QSucursalsuc_codigo.Value;
  end;
end;

end.
