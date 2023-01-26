unit PVENTA46;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, IBUpdateSQL, Mask, DBCtrls,
  StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, ADODB;

type
  TfrmConsSerie = class(TForm)
    btClose: TBitBtn;
    Label1: TLabel;
    edNumero: TEdit;
    BitBtn1: TBitBtn;
    gfacturas: TDBGrid;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    DBGrid1: TDBGrid;
    StaticText3: TStaticText;
    DBGrid2: TDBGrid;
    QFacturas: TADOQuery;
    QFacturastfa_codigo: TIntegerField;
    QFacturasfac_numero: TIntegerField;
    QFacturasfac_fecha: TDateTimeField;
    QFacturasfac_nombre: TStringField;
    QFacturasdet_precio: TBCDField;
    QFacturasven_nombre: TStringField;
    dsFacturas: TDataSource;
    QEntradas: TADOQuery;
    QEntradasent_numero: TIntegerField;
    QEntradasent_fecha: TDateTimeField;
    QEntradasent_concepto: TStringField;
    QEntradasdet_costo: TBCDField;
    dsEntradas: TDataSource;
    QConduce: TADOQuery;
    QConducecon_numero: TIntegerField;
    QConducecon_fecha: TDateTimeField;
    QConducecon_nombre: TStringField;
    QConducedet_precio: TBCDField;
    QConduceven_nombre: TStringField;
    dsConduce: TDataSource;
    tProd: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormPaint(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsSerie: TfrmConsSerie;

implementation

uses SIGMA01, SIGMA00;


{$R *.dfm}

procedure TfrmConsSerie.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrmConsSerie.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmConsSerie.FormCreate(Sender: TObject);
var
  a : integer;
begin
  for a := 0 to (Sender as TForm).ComponentCount -1 DO
  begin
    if Components[a].ClassType = tdbedit then
    begin
      (Components[a] as tdbedit).OnEnter := frmMain.Entra;
      (Components[a] as tdbedit).OnExit := frmMain.sale;
    end;
  end;
end;

procedure TfrmConsSerie.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
     if activecontrol.classtype <> tdbgrid then
     begin
       perform(wm_nextdlgctl, 0, 0);
       key := #0;
     end;
end;

procedure TfrmConsSerie.FormPaint(Sender: TObject);
begin
  top := 2;
  left := 2;
end;

procedure TfrmConsSerie.BitBtn1Click(Sender: TObject);
begin
  QFacturas.Close;
  QFacturas.Parameters.ParamByName('emp').Value := dm.vp_cia;
  QFacturas.Parameters.ParamByName('ser').Value := trim(edNumero.Text);
  QFacturas.Open;

  QEntradas.Close;
  QEntradas.Parameters.ParamByName('emp').Value := dm.vp_cia;
  QEntradas.Parameters.ParamByName('ser').Value := trim(edNumero.Text);
  QEntradas.Open;

  QConduce.Close;
  QConduce.Parameters.ParamByName('emp').Value := dm.vp_cia;
  QConduce.Parameters.ParamByName('ser').Value := trim(edNumero.Text);
  QConduce.Open;
end;

end.
