unit PVENTA41;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Buttons, DB, IBCustomDataSet, IBQuery, DBCtrls,
  StdCtrls, Mask, Grids,ADODB, DBGrids, ExtCtrls;

type
  TfrmSerieFactura = class(TForm)
    btClose: TBitBtn;
    btPost: TBitBtn;
    GridSerie: TStringGrid;
    pTop: TPanel;
    pBottom: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    dsMantSerie: TDataSource;
    DBText1: TDBText;
    DBText2: TDBText;
    Label1: TLabel;
    Label2: TLabel;
    DBText3: TDBText;
    Label3: TLabel;
    Label4: TLabel;
    btnEliminar: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure GridSerieKeyPress(Sender: TObject; var Key: Char);
    procedure dbGSerieKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure btnEliminarClick(Sender: TObject);
  private
  public
  end;

var
  frmSerieFactura: TfrmSerieFactura;

implementation

uses SIGMA01,PVENTA28,PVENTA18;


{$R *.dfm}

procedure TfrmSerieFactura.FormActivate(Sender: TObject);
begin
  //dbGSerie.SetFocus;
end;

procedure TfrmSerieFactura.GridSerieKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    case Tag of
      18 : if GridSerie.Cells[0,GridSerie.Row] <> '' then
              if not dm.validaSerie(GridSerie.Cells[1,GridSerie.Row], GridSerie.Cells[0,GridSerie.Row]) then
                 begin
                   GridSerie.Cells[0,GridSerie.Row]:='';
                   ShowMessage('SERIE NO VALIDA, Verifique....');
                   exit;
                 end;
      28 : if GridSerie.Cells[0,GridSerie.Row] <> '' then
              if not dm.validaSerie(GridSerie.Cells[1,GridSerie.Row], GridSerie.Cells[0,GridSerie.Row]) then
                 begin
                   GridSerie.Cells[0,GridSerie.Row]:='';
                   ShowMessage('ESTA SERIE NO PERTENECE A ESTA FACTURA, Verifique....');
                   exit;
                 end;
    end;
     if GridSerie.Row <> GridSerie.RowCount-1 then
      GridSerie.Row := GridSerie.Row + 1;
    key := #0;
  end;
end;

procedure TfrmSerieFactura.dbGSerieKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (key = #13) and (dsMantSerie.DataSet.FieldByName('ser_numero').AsString <> '') then
      begin
        dsMantSerie.DataSet.Post;
        dsMantSerie.DataSet.Insert;
      end;
end;
procedure TfrmSerieFactura.BitBtn2Click(Sender: TObject);
begin
 close;
end;

procedure TfrmSerieFactura.btnEliminarClick(Sender: TObject);
begin
GridSerie.Cells[0,GridSerie.Row] := '';
end;

end.
