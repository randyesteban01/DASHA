unit PVENTA129;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, IBCustomDataSet, IBQuery, Grids, DBGrids, Buttons,
  ADODB;

type
  TfrmConsEquivalencias = class(TForm)
    lbprod: TLabel;
    DBGrid9: TDBGrid;
    QEquivalencia: TADOQuery;
    QEquivalenciaEMP_CODIGO: TIntegerField;
    QEquivalenciaPRO_CODIGO: TIntegerField;
    QEquivalenciaPRO_CODIGOEQUIVALENTE: TIntegerField;
    QEquivalenciaEQ_SECUENCIA: TIntegerField;
    QEquivalenciaPRO_NOMBRE: TIBStringField;
    dsEqui: TDataSource;
    btSalir: TBitBtn;
    QEquivalenciaPRO_PRECIO1: TFloatField;
    QEquivalenciaPRO_PRECIO2: TFloatField;
    QEquivalenciaPRO_RORIGINAL: TIBStringField;
    QEquivalenciaPRO_RFABRIC: TIBStringField;
    QEquivalenciaPRO_EXISTENCIA: TFloatField;
    BitBtn1: TBitBtn;
    QEquivalenciaFAM_NOMBRE: TIBStringField;
    QEquivalenciaMAR_NOMBRE: TIBStringField;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btSalirClick(Sender: TObject);
    procedure DBGrid9KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    seleccion : integer;
  end;

var
  frmConsEquivalencias: TfrmConsEquivalencias;

implementation

uses SIGMA01;

{$R *.dfm}

procedure TfrmConsEquivalencias.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_escape then
  begin
    seleccion := 0;
    close;
  end;
end;

procedure TfrmConsEquivalencias.btSalirClick(Sender: TObject);
begin
  seleccion := 0;
  close;
end;

procedure TfrmConsEquivalencias.DBGrid9KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    seleccion := 1;
    close;
  end;
end;

procedure TfrmConsEquivalencias.BitBtn1Click(Sender: TObject);
begin
  seleccion := 1;
  close;
end;

end.
