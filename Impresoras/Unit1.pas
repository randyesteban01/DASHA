unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Printers, StdCtrls;

type
  TForm1 = class(TForm)
    configuracion: TButton;
    Edit1: TEdit;
    ComboBox1: TComboBox;
    PrinterSetupDialog1: TPrinterSetupDialog;
    Label1: TLabel;
    Label2: TLabel;
    predeterminada: TButton;
    procedure SeleccionarImpresora(Nombre:string);
    procedure configuracionClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure SetDefaultPrinter(NewDefPrinter: string);
    procedure predeterminadaClick(Sender: TObject);

  private
    { Private declarations }
  public
    function GetDefaultPrinter: string;

    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.SeleccionarImpresora(Nombre: string);
var
Index: Integer;

begin
// Buscamos la impresora deseada en la lista de impresoras
Index := Printer.Printers.IndexOf(Nombre);

// Si la encontramos, dejamos que PrinterIndex haga el trabajo sucio
if Index <> -1 then
Printer.PrinterIndex := Index;
end;

procedure TForm1.configuracionClick(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;
end;

function TForm1.GetDefaultPrinter: string;
var
  ResStr : array[0..255] of Char;
begin
  GetProfileString('Windows', 'device', '', ResStr, 255);
  Result := StrPas(ResStr);

end;

procedure TForm1.SetDefaultPrinter(NewDefPrinter: string);
var
  ResStr            : array[0..255] of Char;
begin
  StrPCopy(ResStr, NewdefPrinter);
  WriteProfileString('windows', 'device', ResStr);
  StrCopy(ResStr, 'windows');
  SendMessage(HWND_BROADCAST, WM_WININICHANGE, 0, Longint(@ResStr));

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
label2.Caption := Format('Impresora predeterminada: %s', [GetDefaultPrinter]);
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
 Combobox1.Items.Clear;
  Combobox1.Items.AddStrings(Printer.Printers);
end;

procedure TForm1.predeterminadaClick(Sender: TObject);
begin
  // Fijar impresora predeterminada
  if Combobox1.Text <> '' then
  begin
    SetDefaultPrinter(ComboBox1.Text);
    label2.Caption := Format('Impresora predeterminada: %s', [GetDefaultPrinter]);
  end
  else ShowMessage('Elije primero una impresora !');
end;

end.
