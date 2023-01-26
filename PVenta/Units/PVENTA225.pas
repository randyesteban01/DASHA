unit PVENTA225;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuerySearchDlgADO, StdCtrls, ExtCtrls, ComCtrls, Buttons;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label11: TLabel;
    btVendedor: TSpeedButton;
    btClose: TBitBtn;
    btPrint: TBitBtn;
    Fecha1: TDateTimePicker;
    Fecha2: TDateTimePicker;
    cbGrupo: TRadioGroup;
    edCantidad: TEdit;
    CheckBox1: TCheckBox;
    cbtipo: TRadioGroup;
    tVendedor: TEdit;
    edVendedor: TEdit;
    Search: TQrySearchDlgADO;
    procedure btCloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses SIGMA01;

{$R *.dfm}

procedure TForm1.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Fecha1.Date := Date;
  Fecha2.Date := Date;
end;

end.
