unit PVENTA249;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TfrmDigitarClave = class(TForm)
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
  frmDigitarClave: TfrmDigitarClave;

implementation
uses SIGMA01,DIMime;

{$R *.dfm}

procedure TfrmDigitarClave.BitBtn2Click(Sender: TObject);
begin
  ModalResult := mrcancel;
  close;
end;

procedure TfrmDigitarClave.BitBtn1Click(Sender: TObject);
begin
if vl_autorizacion = '' then begin
  dm.Query1.close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select isnull(usu_elimina_factura_temporal,'+QuotedStr('False')+') elimina_temporal FROM USUARIOS WHERE usu_clave = :clave');
  dm.Query1.Parameters.parambyname('clave').Value := MimeEncodeString(trim(edClave.text));
  dm.Query1.open;
  
  if ((dm.Query1.Recordcount = 0) OR (DM.Query1.FieldByName('elimina_temporal').Value = 'False')) then
  begin
    showmessage('ESTE USUARIO NO ESTA AUTORIZADO');
    edClave.SetFocus;
  end
  else
    ModalResult := mrOk;
end;
end;
end.
