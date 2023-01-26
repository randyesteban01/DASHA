unit PRENTA001;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TfrmRentaOld = class(TForm)
    btClose: TBitBtn;
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRentaOld: TfrmRentaOld;

implementation

uses SIGMA01,PVENTA18;

{$R *.dfm}

procedure TfrmRentaOld.btCloseClick(Sender: TObject);
begin
  CLOSE();
end;

procedure TfrmRentaOld.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

end.
