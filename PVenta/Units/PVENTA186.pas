unit PVENTA186;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, DB, ADODB;

type
  TfrmConsProdClienteFac = class(TForm)
    DBGrid1: TDBGrid;
    CheckBox1: TCheckBox;
    btclose: TBitBtn;
    QFacturas: TADOQuery;
    QFacturastfa_codigo: TIntegerField;
    QFacturasfac_numero: TIntegerField;
    QFacturasfac_fecha: TDateTimeField;
    QFacturasfac_nombre: TStringField;
    QFacturasdet_precio: TBCDField;
    QFacturasdet_descuento: TBCDField;
    dsFacturas: TDataSource;
    Memo1: TMemo;
    QFacturasdet_cantidad: TBCDField;
    QFacturasmon_sigla: TStringField;
    QFacturasnumero: TStringField;
    QFacturasfactura: TStringField;
    procedure btcloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure QFacturasCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    cli, pro : integer;
    tipo : string;
    procedure pr_consultar;
  end;

var
  frmConsProdClienteFac: TfrmConsProdClienteFac;

implementation

uses SIGMA01;

{$R *.dfm}

procedure TfrmConsProdClienteFac.btcloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmConsProdClienteFac.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_escape then btcloseClick(Self);
end;

procedure TfrmConsProdClienteFac.FormCreate(Sender: TObject);
begin
  tipo := 'cli';
  memo1.lines := qfacturas.SQL;
end;

procedure TfrmConsProdClienteFac.pr_consultar;
begin
  QFacturas.Close;
  QFacturas.SQL.Clear;
  QFacturas.SQL := Memo1.Lines;
  if not CheckBox1.Checked then
  begin
    if tipo = 'sup' then
      QFacturas.SQL.Add('and f.sup_codigo = '+inttostr(cli))
    else
      QFacturas.SQL.Add('and f.cli_codigo = '+inttostr(cli));
  end;
  QFacturas.SQL.Add('order by f.fac_fecha desc');
  QFacturas.Parameters.ParamByName('emp').Value := dm.vp_cia;
  QFacturas.Parameters.ParamByName('pro').Value := pro;
  QFacturas.Open;
end;

procedure TfrmConsProdClienteFac.CheckBox1Click(Sender: TObject);
begin
  pr_consultar;
end;

procedure TfrmConsProdClienteFac.QFacturasCalcFields(DataSet: TDataSet);
begin
  if tipo = 'sup' then
    QFacturasfactura.Value := QFacturasnumero.Value
  else
    QFacturasfactura.Value := IntToStr(QFacturasfac_numero.Value);
end;

end.
