unit PVENTA227;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, StdCtrls, Buttons, IBCustomDataSet,
  Mask, DBCtrls;

type
  TfrmPreciosUnidadMedidaFacProvee = class(TForm)
    QMedidas: TADOQuery;
    QMedidasUnidadID: TStringField;
    QMedidasNombre: TStringField;
    dsMedida: TDataSource;
    QUnidades: TADOQuery;
    dsUnidades: TDataSource;
    gunidades: TDBGrid;
    BitBtn1: TBitBtn;
    QUnidadesemp_codigo: TIntegerField;
    QUnidadessup_codigo: TIntegerField;
    QUnidadesfac_numero: TStringField;
    QUnidadespro_codigo: TIntegerField;
    QUnidadesUnidadID: TStringField;
    QUnidadesPrecio: TBCDField;
    QUnidadesCantidad: TBCDField;
    QUnidadesSecuencia: TIntegerField;
    QUnidadesCredito: TBCDField;
    QUnidadesMinimo: TBCDField;
    QUnidadesNombre: TStringField;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure gunidadesKeyPress(Sender: TObject; var Key: Char);
    procedure QMedidasBeforePost(DataSet: TDataSet);
    procedure DBEdit43Enter(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure QUnidadesBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    acepto : integer;
    fac : string;
  end;

var
  frmPreciosUnidadMedidaFacProvee: TfrmPreciosUnidadMedidaFacProvee;

implementation

uses SIGMA01;

{$R *.dfm}

procedure TfrmPreciosUnidadMedidaFacProvee.BitBtn1Click(Sender: TObject);
begin
  acepto := 0;
  Close;
end;

procedure TfrmPreciosUnidadMedidaFacProvee.gunidadesKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    if gunidades.SelectedIndex <> 5 then
      gunidades.SelectedIndex := gunidades.SelectedIndex + 1
    else
    begin
      QUnidades.Append;
      gunidades.SelectedIndex := 0;
    end;
  end;
end;

procedure TfrmPreciosUnidadMedidaFacProvee.QMedidasBeforePost(DataSet: TDataSet);
begin
  QUnidadesUnidadID.Value := UpperCase(QUnidadesUnidadID.Value);
end;

procedure TfrmPreciosUnidadMedidaFacProvee.DBEdit43Enter(Sender: TObject);
begin
  gunidades.SetFocus;
end;

procedure TfrmPreciosUnidadMedidaFacProvee.BitBtn2Click(Sender: TObject);
begin
  acepto := 1;
  close;
end;

procedure TfrmPreciosUnidadMedidaFacProvee.QUnidadesBeforePost(
  DataSet: TDataSet);
begin
  QUnidadesUnidadID.Value := UpperCase(QUnidadesUnidadID.Value);
end;

end.
