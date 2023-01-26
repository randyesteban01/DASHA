unit PVENTA117;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, IBCustomDataSet, IBQuery, ADODB;

type
  TfrmSelEscala = class(TForm)
    QEscalas: TADOQuery;
    QEscalasALM_CODIGO: TIntegerField;
    QEscalasEMP_CODIGO: TIntegerField;
    QEscalasESC_ESCALA: TIBStringField;
    QEscalasESC_EXISTENCIA: TFloatField;
    QEscalasESC_SECUENCIA: TIntegerField;
    QEscalasPRO_CODIGO: TIntegerField;
    dsEscala: TDataSource;
    Grid: TDBGrid;
    procedure GridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Seleccion : Boolean;
  end;

var
  frmSelEscala: TfrmSelEscala;

implementation

uses SIGMA01;

{$R *.dfm}

procedure TfrmSelEscala.GridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    Seleccion := True;
    Close;
  end;
  if key = vk_escape then
  begin
    Seleccion := False;
    Close;
  end;
end;

procedure TfrmSelEscala.FormCreate(Sender: TObject);
begin
  Seleccion := False;
end;

procedure TfrmSelEscala.FormActivate(Sender: TObject);
begin
  if not QEscalas.Active then QEscalas.Open;
end;

end.
