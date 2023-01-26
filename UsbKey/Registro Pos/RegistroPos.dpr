program RegistroPos;

uses
  Forms,
  REG00 in '..\..\..\..\..\Sigma\RegistrarSigma\REG00.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
