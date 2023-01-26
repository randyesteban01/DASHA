unit PVENTA229;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ADODB, StdCtrls, Buttons;

type
  TfrmVerPagos = class(TForm)
    DBGrid1: TDBGrid;
    QPagosCxP: TADOQuery;
    dsPagos: TDataSource;
    btClose: TBitBtn;
    QPagosCxPDescripcion: TStringField;
    QPagosCxPNumero: TIntegerField;
    QPagosCxPFecha: TDateTimeField;
    QPagosCxPPago: TBCDField;
    QPagosCxPTipo: TStringField;
    QPagosCxPConcepto1: TStringField;
    QPagosCxPConcepto2: TStringField;
    QPagosCxPTasa: TBCDField;
    QPagosCxPSigla: TStringField;
    QPagosCxPMonto: TFloatField;
    procedure btCloseClick(Sender: TObject);
    procedure QPagosCxPCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVerPagos: TfrmVerPagos;

implementation

uses SIGMA00, SIGMA01;

{$R *.dfm}

procedure TfrmVerPagos.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmVerPagos.QPagosCxPCalcFields(DataSet: TDataSet);
begin
  QPagosCxPMonto.Value := QPagosCxPPago.Value / QPagosCxPTasa.Value;
end;

end.
