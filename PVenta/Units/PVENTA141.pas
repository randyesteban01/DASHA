unit PVENTA141;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons;

type
  TfrmImprimeBarraCompra = class(TForm)
    Grid: TDBGrid;
    btClose: TBitBtn;
    procedure btCloseClick(Sender: TObject);
    procedure GridKeyPress(Sender: TObject; var Key: Char);
    procedure GridEnter(Sender: TObject);
    procedure GridColEnter(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmImprimeBarraCompra: TfrmImprimeBarraCompra;

implementation

uses SIGMA01, PVENTA45;

{$R *.dfm}

procedure TfrmImprimeBarraCompra.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmImprimeBarraCompra.GridKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    frmFacProvee.QDetalle.Edit;
    frmFacProvee.QDetalle.Post;
    frmFacProvee.QDetalle.Next;
    Grid.SelectedIndex := 2;
  end;
end;

procedure TfrmImprimeBarraCompra.GridEnter(Sender: TObject);
begin
  Grid.SelectedIndex := 2;
end;

procedure TfrmImprimeBarraCompra.GridColEnter(Sender: TObject);
begin
  if Grid.SelectedIndex <> 2 then Grid.SelectedIndex := 2;
end;

procedure TfrmImprimeBarraCompra.FormActivate(Sender: TObject);
begin
  frmFacProvee.Totaliza := false;
end;

end.
