unit PVENTA239;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DIMime;

type
  TfrmPideAutorizacion = class(TForm)
    Label1: TLabel;
    edClave: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label2: TLabel;
    edtUsuario: TEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPideAutorizacion: TfrmPideAutorizacion;

implementation

uses SIGMA01;


{$R *.dfm}

procedure TfrmPideAutorizacion.BitBtn2Click(Sender: TObject);
begin
  ModalResult := mrcancel;
  close;
end;

procedure TfrmPideAutorizacion.BitBtn1Click(Sender: TObject);
begin
  dm.Query1.close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select isnull(usu_excede_limite,'+QuotedStr('False')+') exede_limite, USU_CLAVE CLAVE FROM USUARIOS ');
  dm.Query1.sql.add('WHERE usu_nombre = :USU');
  DM.Query1.Parameters.ParamByName('USU').Value := edtUsuario.Text;
  DM.Query1.open;
  if dm.Query1.Recordcount = 0  then
  begin
    showmessage('ESTE USUARIO NO EXISTE');
    edClave.SetFocus;
  end
  else
  if DM.Query1.FieldByName('CLAVE').Value <> MimeEncodeString(trim(edClave.text)) then begin
  ShowMessage('ESTA CLAVE ES INCORRECTA...');
  edClave.SetFocus;
  Exit;
  end;

    if DM.Query1.FieldByName('exede_limite').Text = 'True' then
    ModalResult := mrOk
    else
    ShowMessage('ESTE USUARIO NO PUEDE AUTORIZAR LA TRANSACCION');
end;



end.
