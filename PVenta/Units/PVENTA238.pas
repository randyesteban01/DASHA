unit PVENTA238;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, Grids, DBGrids;

type
  TfrmOrdenesFactura = class(TForm)
    SpeedButton2: TSpeedButton;
    DBGrid1: TDBGrid;
    SpeedButton3: TSpeedButton;
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1ColEnter(Sender: TObject);
    procedure DBGrid1Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOrdenesFactura: TfrmOrdenesFactura;

implementation

uses SIGMA01, PVENTA18, Math;

{$R *.dfm}

procedure TfrmOrdenesFactura.SpeedButton3Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmOrdenesFactura.SpeedButton2Click(Sender: TObject);
begin
  frmFactura.QPedidos.Delete;
end;

procedure TfrmOrdenesFactura.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    if DBGrid1.SelectedIndex = 0 then
    begin
      DBGrid1.SelectedIndex := 0;
      frmFactura.QPedidos.Append;
    end;
  end;
end;

procedure TfrmOrdenesFactura.DBGrid1ColEnter(Sender: TObject);
begin
  if DBGrid1.SelectedIndex > 0 then DBGrid1.SelectedIndex := 0;
end;

procedure TfrmOrdenesFactura.DBGrid1Enter(Sender: TObject);
begin
  if DBGrid1.SelectedIndex > 0 then DBGrid1.SelectedIndex := 0;
end;

end.
