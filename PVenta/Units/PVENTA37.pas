unit PVENTA37;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TfrmPideCajero = class(TForm)
    Label1: TLabel;
    edClave: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    vl_autorizacion : String;
    vl_usuario : Integer;
    { Public declarations }
  end;

var
  frmPideCajero: TfrmPideCajero;

implementation

uses SIGMA01;


{$R *.dfm}

procedure TfrmPideCajero.BitBtn2Click(Sender: TObject);
begin
  ModalResult := mrcancel;
  close;
end;

procedure TfrmPideCajero.BitBtn1Click(Sender: TObject);
begin
if vl_autorizacion = '' then begin
  dm.Query1.close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select Caj_codigo, caj_clave, caj_nombre, fac_caja, tfa_codigo, isnull(caj_vendedor,0) caj_vendedor');
  dm.Query1.sql.add('from Cajeros');
  dm.Query1.sql.add('where emp_codigo = :emp');
  dm.Query1.sql.add('and caj_clave = :clave');
  dm.Query1.Parameters.parambyname('emp').Value  := dm.vp_cia;
  dm.Query1.Parameters.parambyname('clave').Value := trim(edClave.text);
  dm.Query1.open;
  if dm.Query1.Recordcount = 0 then
  begin
    showmessage('ESTE CAJERO NO EXISTE');
    edClave.SetFocus;
  end
  else
    ModalResult := mrOk;
end;

if vl_autorizacion = 'Sarita' then begin
  dm.Query1.close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select isnull(usu_excede_limite,'+QuotedStr('False')+') exede_limite FROM USUARIOS WHERE usu_codigo = :usu');
  dm.Query1.Parameters.parambyname('usu').Value := vl_usuario;
  dm.Query1.open;
  if ((dm.Query1.Recordcount = 0) OR (DM.Query1.FieldByName('exede_limite').Value = 'False')) then
  begin
    showmessage('ESTE USUARIO NO ESTA AUTORIZADO');
    edClave.SetFocus;
  end
  else
    ModalResult := mrOk;
end;


end;

end.
