unit PVENTA187;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, Grids, DBGrids, Buttons;

type
  TfrnAmalisisCompraVenta = class(TForm)
    rgtipo: TRadioGroup;
    fecha1: TDateTimePicker;
    Label1: TLabel;
    DateTimePicker1: TDateTimePicker;
    Label2: TLabel;
    Label3: TLabel;
    edNombre: TEdit;
    DBGrid1: TDBGrid;
    btClose: TBitBtn;
    btPrint: TBitBtn;
    btRefresh: TBitBtn;
    procedure btCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frnAmalisisCompraVenta: TfrnAmalisisCompraVenta;

implementation

uses SIGMA00, SIGMA01;

{$R *.dfm}

procedure TfrnAmalisisCompraVenta.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrnAmalisisCompraVenta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
