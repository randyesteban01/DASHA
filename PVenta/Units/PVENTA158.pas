unit PVENTA158;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, ADODB, Grids, DBGrids, DIMime;

type
  TfrmSupervisoresCaja = class(TForm)
    btClose: TBitBtn;
    DBGrid1: TDBGrid;
    QUsuarios: TADOQuery;
    QUsuariosusu_codigo: TIntegerField;
    QUsuariosusu_nombre: TStringField;
    dsUsuarios: TDataSource;
    DBGrid2: TDBGrid;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    QSupervisor: TADOQuery;
    QSupervisorusu_nombre: TStringField;
    QSupervisorusu_codigo: TIntegerField;
    dsSuper: TDataSource;
    QUsuariosusu_clave: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSupervisoresCaja: TfrmSupervisoresCaja;

implementation

uses SIGMA01;

{$R *.dfm}

procedure TfrmSupervisoresCaja.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmSupervisoresCaja.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmSupervisoresCaja.FormActivate(Sender: TObject);
begin
  if not QUsuarios.Active then
  begin
    QUsuarios.Open;
    QSupervisor.Open;
  end;
end;

procedure TfrmSupervisoresCaja.SpeedButton1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('insert into clave_supervisor_caja (usu_codigo, clave)');
  dm.Query1.SQL.Add('values (:usu, :cla)');
  dm.Query1.Parameters.ParamByName('usu').Value := QUsuariosusu_codigo.Value;
  dm.Query1.Parameters.ParamByName('cla').Value := MimeDecodeString(QUsuariosusu_clave.Value);
  dm.Query1.ExecSQL;
  QUsuarios.Close;
  QSupervisor.Close;
  QUsuarios.Open;
  QSupervisor.Open;
end;

procedure TfrmSupervisoresCaja.SpeedButton2Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('delete from clave_supervisor_caja');
  dm.Query1.SQL.Add('where usu_codigo = :usu');
  dm.Query1.Parameters.ParamByName('usu').Value := QSupervisorusu_codigo.Value;
  dm.Query1.ExecSQL;
  QUsuarios.Close;
  QSupervisor.Close;
  QUsuarios.Open;
  QSupervisor.Open;
end;

end.
