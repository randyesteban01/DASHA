unit PVENTA143;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, Buttons;

type
  TfrmRecetaOptica = class(TForm)
    Grid: TStringGrid;
    btClose: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure btCloseClick(Sender: TObject);
    procedure GridKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRecetaOptica: TfrmRecetaOptica;

implementation

{$R *.dfm}

procedure TfrmRecetaOptica.FormActivate(Sender: TObject);
begin
  Grid.Cells[1,0] := '   ESF';
  Grid.Cells[2,0] := '   CIL';
  Grid.Cells[3,0] := '   EJE';
  Grid.Cells[4,0] := '   ADD';
  Grid.Cells[5,0] := '   DIST';
  Grid.Cells[6,0] := '   ALT';

  Grid.Cells[0,1] := 'OD';
  Grid.Cells[0,2] := 'IO';
end;

procedure TfrmRecetaOptica.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmRecetaOptica.GridKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if Grid.Col <> 6 then
      Grid.Col := Grid.Col + 1
    else if Grid.Row = 1 then
    begin
      Grid.Col  := 1;
      Grid.Row := 2;
    end
    else
    begin
      Grid.Col  := 1;
      Grid.Row := 1;
    end;
  end;
end;

end.
