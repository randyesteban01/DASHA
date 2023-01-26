program USBKey;

uses
  Forms,
  USBK00 in 'USBK00.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Registro Dasha';
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
