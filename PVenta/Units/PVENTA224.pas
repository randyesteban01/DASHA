unit PVENTA224;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ADODB, StdCtrls, Buttons;

type
  TfrmBuscaTemporal = class(TForm)
    DBGrid1: TDBGrid;
    QFacturas: TADOQuery;
    QFacturasfac_fecha: TDateTimeField;
    QFacturastfa_codigo: TIntegerField;
    QFacturascli_codigo: TIntegerField;
    QFacturasfac_nombre: TStringField;
    dsFacturas: TDataSource;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    QFacturasfac_numero: TIntegerField;
    QFacturasfac_forma: TStringField;
    QFacturassuc_codigo: TIntegerField;
    QFacturasfac_total: TCurrencyField;
    QFacturasproducto: TStringField;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    acepto : integer;
  end;

var
  frmBuscaTemporal: TfrmBuscaTemporal;

implementation

uses SIGMA01, PVENTA18;

{$R *.dfm}

procedure TfrmBuscaTemporal.BitBtn1Click(Sender: TObject);
begin
  Acepto := 0;
  Close;
end;

procedure TfrmBuscaTemporal.BitBtn2Click(Sender: TObject);
begin
  Acepto := 1;
  Close;
end;

procedure TfrmBuscaTemporal.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
BitBtn2Click(Sender);
end;

procedure TfrmBuscaTemporal.DBGrid1DblClick(Sender: TObject);
begin
BitBtn2Click(Sender);
end;

end.
