unit PVENTA209;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls;

type
  TfrmPideClave = class(TForm)
    lbtitulo: TLabel;
    Image1: TImage;
    edclave: TEdit;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edclaveKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    acepto : integer;
  end;

var
  frmPideClave: TfrmPideClave;

implementation

uses SIGMA01;

{$R *.dfm}

procedure TfrmPideClave.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then
  begin
    Acepto := 0;
    Close;
    key := #0;
  end;
end;

procedure TfrmPideClave.edclaveKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    Acepto := 1;
    Close;
    key := #0;
  end;
end;

procedure TfrmPideClave.FormCreate(Sender: TObject);
begin
  acepto := 0;
end;

end.
