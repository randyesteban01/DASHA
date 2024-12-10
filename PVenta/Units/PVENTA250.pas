unit PVENTA250;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, ADODB;

type
  TFormAnularBoleto = class(TForm)
    Label4: TLabel;
    btAnular: TBitBtn;
    btClose: TBitBtn;
    txtMotivo: TMemo;
    procedure btAnularClick(Sender: TObject);
    procedure btCloseClick(Sender: TObject);
    procedure btCloseKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    numboleto: Integer;
    motivo_anular: String;
    guardado:Boolean
  end;

var
  FormAnularBoleto: TFormAnularBoleto;

implementation

uses SIGMA01;

{$R *.dfm}

procedure TFormAnularBoleto.btAnularClick(Sender: TObject);
begin
 if txtMotivo.Text = '' then
  begin
    MessageDlg('Debe especificar un Motivo de Anulación',mtError,[mbok],0);
  end
  else
  begin
  if MessageDlg('ESTA SEGURO?',mtConfirmation,[mbyes,mbno],0) = mryes then
      begin
        dm.Query1.Close;
        dm.Query1.SQL.Clear;
        dm.Query1.SQL.Add('execute pr_anula_boleto :emp, :boleto, :motivo, :usu ');
        dm.Query1.Parameters.ParamByName('emp').Value   := dm.vp_cia;
        dm.Query1.Parameters.ParamByName('boleto').Value   := numboleto;
        dm.Query1.Parameters.ParamByName('usu').Value   := dm.NomUsu;
        dm.Query1.Parameters.ParamByName('motivo').Value   := txtMotivo.Text;
        dm.Query1.ExecSQL;
        dm.Query1.Close;
        DM.Query1.SQL.Clear;
        MessageDlg('PROCESO DE ANULACION EJECUTADO',mtInformation,[mbok],0);
        guardado:=true;
        close();
      end;
  end;
end;

procedure TFormAnularBoleto.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TFormAnularBoleto.btCloseKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = chr(vk_return) then
     begin
       perform(wm_nextdlgctl, 0, 0);
       key := #0;
     end;
end;

procedure TFormAnularBoleto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 action := cafree;
end;

procedure TFormAnularBoleto.FormCreate(Sender: TObject);
begin
 txtMotivo.Text:=motivo_anular;
end;

end.
