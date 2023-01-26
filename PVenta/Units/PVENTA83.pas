unit PVENTA83;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons;

type
  TfrmImpPantalla = class(TForm)
    Memo1: TMemo;
    Panel1: TPanel;
    btClose: TBitBtn;
    procedure btCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmImpPantalla: TfrmImpPantalla;

implementation

{$R *.dfm}

procedure TfrmImpPantalla.btCloseClick(Sender: TObject);
begin
  Close;
end;

end.
