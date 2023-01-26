unit SIGMA06;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons;

type
  TfrmSeleccionFecha = class(TForm)
    BitBtn1: TBitBtn;
    GroupBox1: TGroupBox;
    fecha1: TDateTimePicker;
    Label1: TLabel;
    fecha2: TDateTimePicker;
    Label2: TLabel;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    accion : integer;
  end;

var
  frmSeleccionFecha: TfrmSeleccionFecha;

implementation

{$R *.dfm}

procedure TfrmSeleccionFecha.BitBtn1Click(Sender: TObject);
begin
  accion := 0;
  Close;
end;

procedure TfrmSeleccionFecha.BitBtn2Click(Sender: TObject);
begin
  accion := 1;
  Close;
end;

procedure TfrmSeleccionFecha.FormCreate(Sender: TObject);
begin
  fecha1.Date := date;
  fecha2.Date := date;
end;

end.
