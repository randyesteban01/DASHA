unit RVENTA45;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, DB, IBCustomDataSet,
  IBQuery, ADODB;

type
  TRepVentaFPago = class(TQuickRep)
    QRBand1: TQRBand;
    lbTitulo: TQRLabel;
    lbFecha: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel31: TQRLabel;
    QRBand3: TQRBand;
    QRBand4: TQRBand;
    QRExpr4: TQRExpr;
    QFacturas: TADOQuery;
    QForma: TADOQuery;
    QFormaEMP_CODIGO: TIntegerField;
    QFormaFPA_CODIGO: TIntegerField;
    QFormaFPA_NOMBRE: TIBStringField;
    dsForma: TDataSource;
    QRSubDetail1: TQRSubDetail;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText18: TQRDBText;
    QFacturasFAC_FORMA: TIBStringField;
    QFacturasTFA_CODIGO: TIntegerField;
    QFacturasFAC_NUMERO: TIntegerField;
    QFacturasFAC_NOMBRE: TIBStringField;
    QFacturasFAC_DESCUENTO: TFloatField;
    QFacturasFAC_ITBIS: TFloatField;
    QFacturasFAC_OTROS: TFloatField;
    QFacturasFAC_TOTAL: TFloatField;
    QFacturasFAC_STATUS: TIBStringField;
    QFacturasFOR_MONTO: TFloatField;
    QRBand5: TQRBand;
    QRExpr1: TQRExpr;
    QRLabel3: TQRLabel;
    QFacturasFAC_FECHA: TDateTimeField;
    QFacturasFOR_DESCRIPCION: TIBStringField;
    QRLabel4: TQRLabel;
    QRDBText11: TQRDBText;
    QFormaSUC_CODIGO: TIntegerField;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  RepVentaFPago: TRepVentaFPago;

implementation

uses SIGMA01;


{$R *.DFM}

procedure TRepVentaFPago.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
var
  a : integer;
  cambiar : TQRLabel;
begin
  if dm.QParametrosIdioma.AsString = 'I' then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select objeto, ingles from Traduccion where modulo = :mod');
    dm.Query1.Parameters.ParamByName('mod').Value := 'RepVentaFPago';
    dm.Query1.Open;
    dm.Query1.DisableControls;
    while not dm.Query1.Eof do
    begin
      cambiar := (FindComponent(dm.Query1.FieldByName('objeto').AsString) as TQRLabel);
      cambiar.Caption := dm.Query1.FieldByName('ingles').AsString;
      dm.Query1.Next;
    end;
    dm.Query1.EnableControls;
  end;
end;

end.
