unit PVENTA185;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, DB, ADODB;

type
  TfrmBuscaRNC = class(TForm)
    DBGrid1: TDBGrid;
    Label1: TLabel;
    edrazon: TEdit;
    btnBusca: TBitBtn;
    QRNC: TADOQuery;
    QRNCrnc_cedula: TStringField;
    QRNCrazon_social: TStringField;
    QRNCnombre_comercial: TStringField;
    QRNCactividad_economica: TStringField;
    QRNCdireccion: TStringField;
    QRNCnumero: TStringField;
    QRNCurbanizacion: TStringField;
    QRNCtelefono: TStringField;
    QRNCestatus: TStringField;
    Memo1: TMemo;
    dsRNC: TDataSource;
    procedure btnBuscaClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edrazonKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    seleccion : integer;
  end;

var
  frmBuscaRNC: TfrmBuscaRNC;

implementation

uses SIGMA01;

{$R *.dfm}

procedure TfrmBuscaRNC.btnBuscaClick(Sender: TObject);
begin
  if edrazon.text = '' then
  begin
    Showmessage('Debes de digital un valor');
    exit;
  end;

  QRNC.Close;
  QRNC.SQL.Clear;
  QRNC.SQL := Memo1.Lines;

  QRNC.SQL.Add('where razon_social like '+QuotedStr(edrazon.Text+'%') );
  QRNC.SQL.Add('order by razon_social');
  QRNC.Open;
  DBGrid1.SetFocus;
end;

procedure TfrmBuscaRNC.DBGrid1DblClick(Sender: TObject);
begin
  if dbgrid1.DataSource.DataSet.RecordCount > 0 then
    seleccion := 1;
  close;
end;

procedure TfrmBuscaRNC.FormCreate(Sender: TObject);
begin
  seleccion := 0;
  memo1.lines := qrnc.sql;
end;

procedure TfrmBuscaRNC.edrazonKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) and (edrazon.text <> '') then
    btnBuscaClick(nil);
end;

end.
