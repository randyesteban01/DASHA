unit RCONT06;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery, ADODB;

type
  TRepMovimiento = class(TQuickRep)
    QRBand1: TQRBand;
    lbTitulo: TQRLabel;
    lbFecha: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRLabel21: TQRLabel;
    QRBand3: TQRBand;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    lbCuenta: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QTrans: TADOQuery;
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
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText12: TQRDBText;
    QRBand4: TQRBand;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    lbAnt: TQRLabel;
    lbActual: TQRLabel;
    QTransid: TAutoIncField;
    QTransSUC_CODIGO: TIntegerField;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QTransBALANCE: TBCDField;
    QTransOrigen: TStringField;
    QTransMonto: TFloatField;
    QRLabel5: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel3: TQRLabel;
    QTransDebito: TFloatField;
    QTransCredito: TFloatField;
    QRDBText11: TQRDBText;
    QRDBText13: TQRDBText;
    QRLabel8: TQRLabel;
    procedure QTransCalcFields(DataSet: TDataSet);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public
    Imprime : Boolean;
  end;

var
  RepMovimiento: TRepMovimiento;

implementation

uses SIGMA01;


{$R *.DFM}

procedure TRepMovimiento.QTransCalcFields(DataSet: TDataSet);
begin
  if QTransTRA_DEBITOS.Value > 0 then
  begin
    QTransMonto.Value  := QTransTRA_DEBITOS.Value;
    QTransOrigen.Value := 'D';
    QTransDebito.Value := QTransTRA_DEBITOS.Value;
  end
  else
  begin
    QTransMonto.Value  := QTransTRA_CREDITOS.Value;
    QTransOrigen.Value := 'C';
    QTransCredito.Value := QTransTRA_CREDITOS.Value;
  end;
end;

procedure TRepMovimiento.QuickRepBeforePrint(Sender: TCustomQuickRep;
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
    dm.Query1.Parameters.ParamByName('mod').Value := 'RepMovimiento';
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
