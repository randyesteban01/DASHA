unit RVENTA40;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, DB, IBCustomDataSet,
  IBQuery, ADODB;

type
  TRCxP = class(TQuickRep)
    QRBand1: TQRBand;
    lbTitulo: TQRLabel;
    lbFecha: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRLabel18: TQRLabel;
    QRLabel21: TQRLabel;
    QRBand3: TQRBand;
    QRDBText10: TQRDBText;
    QRBand4: TQRBand;
    QRLabel20: TQRLabel;
    QRLabel38: TQRLabel;
    QRExpr1: TQRExpr;
    QDocs: TADOQuery;
    QProv: TADOQuery;
    QRSubDetail1: TQRSubDetail;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    lbCodigo: TQRDBText;
    QRDBText7: TQRDBText;
    dsProv: TDataSource;
    QDocsSaldo: TFloatField;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRBand5: TQRBand;
    QRLabel8: TQRLabel;
    QRLabel11: TQRLabel;
    QRExpr2: TQRExpr;
    QDocsALM_CODIGO: TIntegerField;
    QDocsEMP_CODIGO: TIntegerField;
    QDocsFAC_ABONO: TFloatField;
    QDocsFAC_DESCUENTO: TFloatField;
    QDocsFAC_DIAS: TIntegerField;
    QDocsFAC_EXENTO: TFloatField;
    QDocsFAC_FECHA: TDateTimeField;
    QDocsFAC_GRABADO: TFloatField;
    QDocsFAC_NUMERO: TIBStringField;
    QDocsFAC_STATUS: TIBStringField;
    QDocsFAC_TOTAL: TFloatField;
    QDocsFAC_VENCE: TDateTimeField;
    QDocsSUP_CODIGO: TIntegerField;
    QDocsUSU_CODIGO: TIntegerField;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    lbmoneda: TQRLabel;
    QProvid: TAutoIncField;
    QProvEMP_CODIGO: TIntegerField;
    QProvSUP_CODIGO: TIntegerField;
    QProvSUP_NOMBRE: TStringField;
    QProvBALANCE: TBCDField;
    QProvVENCIDO: TBCDField;
    QProvsup_telefono: TStringField;
    QProvsup_limite: TBCDField;
    QProvsup_rnc: TStringField;
    procedure QDocsCalcFields(DataSet: TDataSet);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  RCxP: TRCxP;

implementation

uses SIGMA01;


{$R *.DFM}

procedure TRCxP.QDocsCalcFields(DataSet: TDataSet);
begin
  QDocsSaldo.Value := QDocsFAC_TOTAL.Value - QDocsFAC_ABONO.Value;
end;

procedure TRCxP.QuickRepBeforePrint(Sender: TCustomQuickRep;
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
    dm.Query1.Parameters.ParamByName('mod').Value := 'RCxP';
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
