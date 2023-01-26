unit USerial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFSerial = class(TForm)
    edt1: TEdit;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSerial: TFSerial;

implementation

uses SIGMA01;

{$R *.dfm}

procedure TFSerial.FormShow(Sender: TObject);
begin
edt1.ReadOnly := False;
edt1.Text := DM.GeneraLicencia;
edt1.ReadOnly := True;
end;

end.
