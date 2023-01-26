unit RVENTA35;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, DB, IBCustomDataSet,
  IBQuery, ADODB;

type
  TRDesembolso = class(TQuickRep)
    QRBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRBand3: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRShape6: TQRShape;
    QRLabel10: TQRLabel;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QDesem: TADOQuery;
    QDesemCLI_CODIGO: TIntegerField;
    QDesemDES_BENEFICIARIO: TIBStringField;
    QDesemDES_CONCEPTO: TIBStringField;
    QDesemDES_FECHA: TDateTimeField;
    QDesemDES_MONTO: TFloatField;
    QDesemDES_NUMERO: TIntegerField;
    QDesemDES_STATUS: TIBStringField;
    QDesemDEV_NUMERO: TIntegerField;
    QDesemEMP_CODIGO: TIntegerField;
    QDesemUSU_CODIGO: TIntegerField;
    QDesemCAJ_CODIGO: TIntegerField;
    QRShape5: TQRShape;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRShape7: TQRShape;
    lbMonto: TQRLabel;
    QRDBText8: TQRDBText;
    QDesemDES_CONCEPTO2: TIBStringField;
    QRShape3: TQRShape;
    QRDBText9: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    lbReimpresion: TQRLabel;
    QDesemdes_ncf: TStringField;
    QRDBText10: TQRDBText;
    lbFactura: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel11: TQRLabel;
    QDesemdes_gasto_menor: TStringField;
    lbgastomenor: TQRLabel;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  RDesembolso: TRDesembolso;

implementation

uses SIGMA01;


{$R *.DFM}

procedure TRDesembolso.QuickRepBeforePrint(Sender: TCustomQuickRep;
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
    dm.Query1.Parameters.ParamByName('mod').Value := 'RDesembolso';
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

  lbgastomenor.Enabled := QDesemdes_gasto_menor.Value = 'True';
  lbMonto.Caption := dm.numero2Letras(QDesemDES_MONTO.Value);
end;

end.
