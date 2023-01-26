unit CONT76;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TfrmSeleccionNCF = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    BitBtn1: TBitBtn;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ncf : integer;
  end;

var
  frmSeleccionNCF: TfrmSeleccionNCF;

implementation

{$R *.dfm}

procedure TfrmSeleccionNCF.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f2 then
  begin
    ncf := 2;
    close;
  end
  else if key = vk_f3 then
  begin
    ncf := 3;
    close;
  end
  else if key = vk_f4 then
  begin
    ncf := 4;
    close;
  end;
end;

procedure TfrmSeleccionNCF.BitBtn1Click(Sender: TObject);
begin
  ncf := 0;
  close;
end;

procedure TfrmSeleccionNCF.FormCreate(Sender: TObject);
begin
  ncf := 0;
end;

end.
