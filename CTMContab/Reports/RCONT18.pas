unit RCONT18;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery, ADODB;

type
  TRepListaDepositos = class(TQuickRep)
    QRBand1: TQRBand;
    lbTitulo: TQRLabel;
    lbFecha: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QDepositos: TADOQuery;
    QRLabel5: TQRLabel;
    QRBand4: TQRBand;
    QRExpr1: TQRExpr;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    dsDepositos: TDataSource;
    QDetalle: TADOQuery;
    QDetalleCAT_CUENTA: TIBStringField;
    QDetalleCAT_NOMBRE: TIBStringField;
    QDetalleDET_ORIGEN: TIBStringField;
    QDetalleDET_MONTO: TFloatField;
    QDetalleDebito: TFloatField;
    QDetalleCredito: TFloatField;
    QRSubDetail1: TQRSubDetail;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRLabel10: TQRLabel;
    lbOpcion: TQRLabel;
    QDepositosBAN_NOMBRE: TIBStringField;
    QDepositosDEP_NUMERO: TIntegerField;
    QDepositosDEP_FECHA: TDateTimeField;
    QDepositosDEP_CONCEPTO1: TIBStringField;
    QDepositosDEP_CONCEPTO2: TIBStringField;
    QDepositosDEP_MONTO: TFloatField;
    QDepositosDEP_STATUS: TIBStringField;
    QDepositosDEP_TIPO: TIBStringField;
    QDepositosUSU_NOMBRE: TIBStringField;
    QDepositosEMP_CODIGO: TIntegerField;
    QDepositosBAN_CODIGO: TIntegerField;
    QDepositosDEP_ANO: TIntegerField;
    QDepositosDEP_MES: TIntegerField;
    QDepositosSUC_CODIGO: TIntegerField;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRSubDetail2: TQRSubDetail;
    QBancos: TADOQuery;
    QBancosBAN_CODIGO: TIntegerField;
    QBancosBAN_NOMBRE: TStringField;
    QBancosEMP_CODIGO: TIntegerField;
    QBancosSUC_CODIGO: TIntegerField;
    dsBancos: TDataSource;
    QRDBText10: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText11: TQRDBText;
    QRBand5: TQRBand;
    QRExpr2: TQRExpr;
    QRLabel3: TQRLabel;
    QRExpr3: TQRExpr;
    QRLabel11: TQRLabel;
    QRExpr4: TQRExpr;
    QRLabel12: TQRLabel;
    procedure QDetalleCalcFields(DataSet: TDataSet);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public
    Imprime : Boolean;
  end;

var
  RepListaDepositos: TRepListaDepositos;

implementation

uses SIGMA01;


{$R *.DFM}

procedure TRepListaDepositos.QDetalleCalcFields(DataSet: TDataSet);
begin
  if QDetalleDET_ORIGEN.Value = 'Debito' then
    QDetalleDebito.Value := QDetalleDET_MONTO.Value
  else
    QDetalleCredito.Value := QDetalleDET_MONTO.Value;
end;

procedure TRepListaDepositos.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if QDetalle.Active then
  begin
    QRDBText7.Font.Style  := [fsbold];
    QRDBText8.Font.Style  := [fsbold];
    QRDBText9.Font.Style  := [fsbold];
    QRDBText10.Font.Style := [fsbold];
    QRDBText12.Font.Style := [fsbold];
  end;
end;

procedure TRepListaDepositos.QuickRepBeforePrint(Sender: TCustomQuickRep;
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
    dm.Query1.Parameters.ParamByName('mod').Value := 'RepListaDepositos';
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
