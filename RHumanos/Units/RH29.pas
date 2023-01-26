unit RH29;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ADODB, StdCtrls, Buttons;

type
  TfrmElegiblesEmpleados = class(TForm)
    DBGrid1: TDBGrid;
    QElegibles: TADOQuery;
    QElegiblesNombre: TStringField;
    QElegiblesCedula: TStringField;
    QElegiblesSexo: TStringField;
    QElegiblesTelefono1: TStringField;
    QElegiblesTelefono2: TStringField;
    dsElegibles: TDataSource;
    btClose: TBitBtn;
    BitBtn2: TBitBtn;
    procedure btCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmElegiblesEmpleados: TfrmElegiblesEmpleados;

implementation

uses SIGMA01;

{$R *.dfm}

procedure TfrmElegiblesEmpleados.btCloseClick(Sender: TObject);
begin
  Close;
end;

end.
