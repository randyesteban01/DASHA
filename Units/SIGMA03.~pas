unit SIGMA03;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, DIMime;

type
  TfrmCambioClave = class(TForm)
    Label1: TLabel;
    edanterior: TEdit;
    Image1: TImage;
    Label2: TLabel;
    ednueva: TEdit;
    Label3: TLabel;
    edconfirma: TEdit;
    btClose: TBitBtn;
    btcambia: TBitBtn;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btCloseClick(Sender: TObject);
    procedure btcambiaClick(Sender: TObject);
    procedure edanteriorChange(Sender: TObject);
    procedure ednuevaChange(Sender: TObject);
    procedure edconfirmaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCambioClave: TfrmCambioClave;

implementation

uses SIGMA01;

{$R *.dfm}

procedure TfrmCambioClave.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
     perform(wm_nextdlgctl, 0, 0);
     key := #0;
  end;
end;

procedure TfrmCambioClave.btCloseClick(Sender: TObject);
begin
   Close
end;

procedure TfrmCambioClave.btcambiaClick(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select usu_clave from usuarios');
  dm.Query1.SQL.Add('where usu_codigo = :usu');
  dm.Query1.Parameters.ParamByName('usu').Value := dm.Usuario;
  dm.Query1.Open;
  if edanterior.Text <> MimeDecodeString(dm.Query1.FieldByName('usu_clave').AsString ) then
  begin
    MessageDlg('La clave anterior no es la correcta',mtError,[mbok],0);
    edanterior.SetFocus;
  end
  else
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('update usuarios set usu_clave = :cla');
    dm.Query1.SQL.Add('where usu_codigo = :usu');
    dm.Query1.Parameters.ParamByName('usu').Value := dm.Usuario;
    dm.Query1.Parameters.ParamByName('cla').Value := MimeEncodeString(ednueva.Text);
    dm.Query1.ExecSQL;
    MessageDlg('Clave ha sido cambiada',mtInformation,[mbok],0);
    Close;
  end;
end;

procedure TfrmCambioClave.edanteriorChange(Sender: TObject);
begin
  btcambia.Enabled := (Trim(edanterior.Text) <> '') and (ednueva.Text = edconfirma.Text);
end;

procedure TfrmCambioClave.ednuevaChange(Sender: TObject);
begin
  btcambia.Enabled := (Trim(edanterior.Text) <> '') and (ednueva.Text = edconfirma.Text)
  and (Trim(ednueva.Text) <> '');
end;

procedure TfrmCambioClave.edconfirmaChange(Sender: TObject);
begin
  btcambia.Enabled := (Trim(edanterior.Text) <> '') and (ednueva.Text = edconfirma.Text)
  and (Trim(ednueva.Text) <> '');
end;

end.
