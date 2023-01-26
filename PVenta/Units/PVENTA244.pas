unit PVENTA244;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrls, ExtCtrls, DB, ADODB, DIMime;

type
  TFrmConfCorreo = class(TForm)
    pnmail: TPanel;
    Label75: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    DBEdit66: TDBEdit;
    DBEdit67: TDBEdit;
    DBEdit68: TDBEdit;
    DBEdit70: TDBEdit;
    btnPruebaEmail: TBitBtn;
    EdtPassMail: TEdit;
    btnGrabar: TBitBtn;
    dsUsuario: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnPruebaEmailClick(Sender: TObject);
    procedure btnGrabarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConfCorreo: TFrmConfCorreo;

implementation

uses SIGMA01, DateUtils, SIGMA00;

{$R *.dfm}

procedure TFrmConfCorreo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmConfCorreo.FormShow(Sender: TObject);
begin
EdtPassMail.Text := MimeDecodeString(DM.QUsuariospar_mailclave.Text);

end;

procedure TFrmConfCorreo.btnPruebaEmailClick(Sender: TObject);
begin
if DM.QUsuarios.State in [dsedit] then
btnGrabarClick(Sender);
frmMain.EnviarCorreo(dm.QUsuariospar_mailusuario.Text,'Prueba del Correo','','Prueba del Sistema!');
end;

procedure TFrmConfCorreo.btnGrabarClick(Sender: TObject);
begin
if dm.QUsuarios.State in [dsedit] then begin ;
DM.QUsuariospar_mailclave.Value := MimeEncodeString(EdtPassMail.Text);
DM.QUsuariospar_mailOK.Value    := dm.vp_usermailok;
DM.QUsuarios.Post;
end;
end;

end.
