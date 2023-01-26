unit SERV07;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, jpeg, ExtCtrls;

type
  TfrmAccesoTec = class(TForm)
    edtPass: TEdit;
    Label1: TLabel;
    Image1: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    Acepto :integer;
  end;

var
  frmAccesoTec: TfrmAccesoTec;

implementation

{$R *.dfm}

procedure TfrmAccesoTec.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//  Action := cafree;
end;

end.
