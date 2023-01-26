unit PVENTA125;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxCurrencyEdit;

type
  TfrmDevueltaEfectivo = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    ed1000: TEdit;
    ed500: TEdit;
    ed100: TEdit;
    ed50: TEdit;
    ed20: TEdit;
    ed10: TEdit;
    ed050: TEdit;
    ed1: TEdit;
    ed5: TEdit;
    ed01: TEdit;
    ed025: TEdit;
    btClose: TBitBtn;
    btcancelar: TBitBtn;
    edRecibido: TcxCurrencyEdit;
    edTotal: TcxCurrencyEdit;
    edDevuelta: TcxCurrencyEdit;
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure ed1000Enter(Sender: TObject);
    procedure btcancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edRecibidoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    total, devuelta : double;
    facturar : boolean;
  end;

var
  frmDevueltaEfectivo: TfrmDevueltaEfectivo;

implementation

uses StdConvs, Math, PVENTA18;

{$R *.dfm}

procedure TfrmDevueltaEfectivo.btCloseClick(Sender: TObject);
begin
  if edRecibido.Value < edTotal.Value then
  facturar := False else
  facturar := True;
  close;
end;

procedure TfrmDevueltaEfectivo.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then btCloseClick(self);
  if key = vk_escape then btcancelarClick(Self);
end;

procedure TfrmDevueltaEfectivo.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmDevueltaEfectivo.FormActivate(Sender: TObject);
begin
  edTotal.Properties.ReadOnly := False;
  edTotal.Value := total;
  edTotal.Properties.ReadOnly := True;
end;

procedure TfrmDevueltaEfectivo.ed1000Enter(Sender: TObject);
begin
  edRecibido.SetFocus;
end;

procedure TfrmDevueltaEfectivo.btcancelarClick(Sender: TObject);
begin
  facturar := false;
  Close;
end;

procedure TfrmDevueltaEfectivo.FormCreate(Sender: TObject);
begin
  facturar := false;
end;

procedure TfrmDevueltaEfectivo.edRecibidoExit(Sender: TObject);
VAR
  v1000, v500, v100, v50, v20, v10, v5, v1, v050, v025, v01 : integer;
begin
 if edRecibido.Text = '' then edRecibido.Value := total else
 edRecibido.Text := edRecibido.Text;

    devuelta := edRecibido.Value - edTotal.Value;
    edDevuelta.Properties.ReadOnly := False;
    edDevuelta.Value := edRecibido.Value - edTotal.Value;
    edDevuelta.Properties.ReadOnly := True;

    devuelta := devuelta;
    v1000 := trunc(devuelta/1000);
    devuelta := devuelta - (v1000 * 1000);
    v500  := trunc(devuelta/500);
    devuelta := devuelta - (v500 * 500);
    v100  := trunc(devuelta/100);
    devuelta := devuelta - (v100 * 100);
    v50   := trunc(devuelta/50);
    devuelta := devuelta - (v50 * 50);
    v20   := trunc(devuelta/20);
    devuelta := devuelta - (v20 * 20);
    v10   := trunc(devuelta/10);
    devuelta := devuelta - (v10 * 10);
    v5    := trunc(devuelta/5);
    devuelta := devuelta - (v5 * 5);
    v1    := trunc(devuelta/1);
    devuelta := devuelta - (v1 * 1);
    v050  := trunc(devuelta/0.50);
    devuelta := devuelta - (v050 * 0.50);
    v025  := trunc(devuelta/0.25);
    devuelta := devuelta - (v025*0.25);
    v01   := trunc(devuelta/0.01);
    devuelta := devuelta - (v01*0.01);

    ed1000.Text := inttostr(v1000);
    ed500.Text  := inttostr(v500);
    ed100.Text  := inttostr(v100);
    ed50.Text   := inttostr(v50);
    ed20.Text   := inttostr(v20);
    ed10.Text   := inttostr(v10);
    ed5.Text    := inttostr(v5);
    ed1.Text    := inttostr(v1);
    ed050.Text  := inttostr(v050);
    ed025.Text  := inttostr(v025);
    ed01.Text   := inttostr(v01);
    btClose.SetFocus;
end;



end.
