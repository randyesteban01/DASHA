unit PVenta234;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar;

type
  TFrmFecha = class(TForm)
    cxDateEdit1: TcxDateEdit;
    btnAceptar: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAceptarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFecha: TFrmFecha;

implementation

{$R *.dfm}

procedure TFrmFecha.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := caFree;
end;

procedure TFrmFecha.btnAceptarClick(Sender: TObject);
begin
FrmFecha.Close;
end;

end.
