unit RCONT05;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery, ADODB;

type
  TRepDocumento = class(TQuickRep)
    QRBand1: TQRBand;
    lbTitulo: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRLabel21: TQRLabel;
    QRBand3: TQRBand;
    QRDBText10: TQRDBText;
    QRLabel10: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText8: TQRDBText;
    QTrans: TADOQuery;
    QTransValor: TFloatField;
    QTransCLI_CODIGO: TIntegerField;
    QTransEMP_CODIGO: TIntegerField;
    QTransENT_NUMERO: TIntegerField;
    QTransSUP_CODIGO: TIntegerField;
    QTransTDO_CODIGO: TIBStringField;
    QTransTRA_ANO: TIntegerField;
    QTransTRA_BENEF: TIBStringField;
    QTransTRA_CONCEPTO1: TIBStringField;
    QTransTRA_CONCEPTO2: TIBStringField;
    QTransTRA_DOC: TIBStringField;
    QTransTRA_FECHA: TDateTimeField;
    QTransTRA_MES: TIntegerField;
    QTransTRA_STATUS: TIBStringField;
    QTransTRA_DEBITOS: TFloatField;
    QTransTRA_CREDITOS: TFloatField;
    QTransTRA_NUMERO: TIntegerField;
    QTransTDO_NOMBRE: TIBStringField;
    QTransUSU_CODIGO: TIntegerField;
    dsTrans: TDataSource;
    QDetalle: TADOQuery;
    QDetalleCAT_CUENTA: TIBStringField;
    QDetalleCAT_NOMBRE: TIBStringField;
    QDetalleDET_CREDITO: TFloatField;
    QDetalleDET_DEBITO: TFloatField;
    QDetalleDET_ORIGEN: TIBStringField;
    QDetalleDET_SEC: TIntegerField;
    QDetalleEMP_CODIGO: TIntegerField;
    QDetalleENT_NUMERO: TIntegerField;
    QDetalleTRA_ANO: TIntegerField;
    QDetalleTRA_DOC: TIBStringField;
    QDetalleTRA_MES: TIntegerField;
    QDetalleValor: TFloatField;
    QDetalleTRA_NUMERO: TIntegerField;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText7: TQRDBText;
    QRBand4: TQRBand;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRLabel5: TQRLabel;
    QTransid: TAutoIncField;
    QTransSUC_CODIGO: TIntegerField;
    QDetalleSUC_CODIGO: TIntegerField;
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
    Imprime : Boolean;
  end;

var
  RepDocumento: TRepDocumento;

implementation

uses SIGMA01;


{$R *.DFM}

procedure TRepDocumento.QuickRepBeforePrint(Sender: TCustomQuickRep;
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
    dm.Query1.Parameters.ParamByName('mod').Value := 'RepDocumento';
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
