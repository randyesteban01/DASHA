unit SERV08;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, Buttons;

type
  TfrmAccesoTec2 = class(TForm)
    btlogin: TBitBtn;
    btexit: TBitBtn;
    Label1: TLabel;
    edtPass: TEdit;
    Image1: TImage;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    Acepto : integer;
  end;

var
  frmAccesoTec2: TfrmAccesoTec2;

implementation
{$R *.dfm}

procedure TfrmAccesoTec2.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = 13) and (edtPass.Text <> EmptyStr) then
     ModalResult := mrOk;
end;

end.
