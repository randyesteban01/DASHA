unit RH57;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Buttons;

type
  TfrmAutorizar = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    fecha: TDateTimePicker;
    edautorizado: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAutorizar: TfrmAutorizar;

implementation

{$R *.dfm}

procedure TfrmAutorizar.FormCreate(Sender: TObject);
begin
  fecha.Date := date;
end;

end.
