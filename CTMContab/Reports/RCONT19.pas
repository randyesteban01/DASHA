unit RCONT19;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery, ADODB;

type
  TRepListaCargosBanco = class(TQuickRep)
    QRBand1: TQRBand;
    lbTitulo: TQRLabel;
    lbFecha: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QCargos: TADOQuery;
    QRLabel5: TQRLabel;
    QRLabel9: TQRLabel;
    dsCargos: TDataSource;
    QDetalle: TADOQuery;
    QDetalleCAT_CUENTA: TIBStringField;
    QDetalleCAT_NOMBRE: TIBStringField;
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
    QCargosBAN_NOMBRE: TIBStringField;
    QCargosCAR_NUMERO: TIntegerField;
    QCargosCAR_FECHA: TDateTimeField;
    QCargosCAR_CONCEPTO1: TIBStringField;
    QCargosCAR_CONCEPTO2: TIBStringField;
    QCargosCAR_MONTO: TFloatField;
    QCargosCAR_STATUS: TIBStringField;
    QCargosCAR_TIPO: TIBStringField;
    QCargosUSU_NOMBRE: TIBStringField;
    QCargosEMP_CODIGO: TIntegerField;
    QCargosBAN_CODIGO: TIntegerField;
    QCargosCAR_ANO: TIntegerField;
    QCargosCAR_MES: TIntegerField;
    QCargosCAR_FORMA: TIBStringField;
    QCargosDebito: TFloatField;
    QCargosCredito: TFloatField;
    QDetalleDET_ORIGEN: TIBStringField;
    QCargosSUC_CODIGO: TIntegerField;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QCargosCAR_MONTO_BANCO: TBCDField;
    QBancos: TADOQuery;
    dsBancos: TDataSource;
    QBancosBAN_NOMBRE: TStringField;
    QBancosBAN_CODIGO: TIntegerField;
    QBancosEMP_CODIGO: TIntegerField;
    QBancosSUC_CODIGO: TIntegerField;
    QRSubDetail2: TQRSubDetail;
    QRDBText10: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText17: TQRDBText;
    QRLabel3: TQRLabel;
    QRBand4: TQRBand;
    QRExpr1: TQRExpr;
    QRLabel7: TQRLabel;
    QRBand5: TQRBand;
    QRLabel8: TQRLabel;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRLabel11: TQRLabel;
    QRExpr4: TQRExpr;
    QRLabel12: TQRLabel;
    QRDBText6: TQRDBText;
    QCargosCAR_BENEF: TStringField;
    QRLabel13: TQRLabel;
    procedure QDetalleCalcFields(DataSet: TDataSet);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QCargosCalcFields(DataSet: TDataSet);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public
    Imprime : Boolean;
  end;

var
  RepListaCargosBanco: TRepListaCargosBanco;

implementation

uses SIGMA01;


{$R *.DFM}

procedure TRepListaCargosBanco.QDetalleCalcFields(DataSet: TDataSet);
begin
  if QDetalleDET_ORIGEN.Value = 'Debito' then
    QDetalleDebito.Value := QDetalleDET_MONTO.Value
  else
    QDetalleCredito.Value := QDetalleDET_MONTO.Value;
end;

procedure TRepListaCargosBanco.QRBand3BeforePrint(Sender: TQRCustomBand;
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

procedure TRepListaCargosBanco.QCargosCalcFields(DataSet: TDataSet);
begin
  if QCargosCAR_FORMA.Value = 'D' then
    QCargosDebito.Value := QCargosCAR_MONTO_BANCO.Value
  else
    QCargosCredito.Value := QCargosCAR_MONTO_BANCO.Value;
end;

procedure TRepListaCargosBanco.QuickRepBeforePrint(Sender: TCustomQuickRep;
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
    dm.Query1.Parameters.ParamByName('mod').Value := 'RepListaCargosBanco';
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
