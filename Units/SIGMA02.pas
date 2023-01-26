unit SIGMA02;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QREditor, StdCtrls, Buttons;

type
  Tfrmadhoc = class(TForm)
    QREditor1: TQREditor;
    btClose: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmadhoc: Tfrmadhoc;

implementation

uses SIGMA01;

{$R *.dfm}

procedure Tfrmadhoc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure Tfrmadhoc.btCloseClick(Sender: TObject);
begin
  Close;
end;

end.
