unit RCONT15;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery, ADODB;

type
  TRepListaCheques = class(TQuickRep)
    QRBand1: TQRBand;
    lbTitulo: TQRLabel;
    lbFecha: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QCheques: TADOQuery;
    QChequesBAN_NOMBRE: TIBStringField;
    QChequesCHE_NUMERO: TIntegerField;
    QChequesCHE_FECHA: TDateTimeField;
    QChequesCHE_CONCEPTO1: TIBStringField;
    QChequesCHE_CONCEPTO2: TIBStringField;
    QChequesCHE_BENEF: TIBStringField;
    QChequesCHE_MONTO: TFloatField;
    QChequesCHE_STATUS: TIBStringField;
    QChequesCHE_TIPO: TIBStringField;
    QChequesUSU_NOMBRE: TIBStringField;
    QChequesEMP_CODIGO: TIntegerField;
    QChequesBAN_CODIGO: TIntegerField;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRBand4: TQRBand;
    QRExpr1: TQRExpr;
    QRLabel8: TQRLabel;
    dsCheques: TDataSource;
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
    QChequesSUC_CODIGO: TIntegerField;
    QRLabel7: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QBancos: TADOQuery;
    QBancosban_codigo: TIntegerField;
    QBancosban_nombre: TStringField;
    QBancosemp_codigo: TIntegerField;
    QBancossuc_codigo: TIntegerField;
    dsBancos: TDataSource;
    QRSubDetail2: TQRSubDetail;
    QRDBText10: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText17: TQRDBText;
    QRBand5: TQRBand;
    QRLabel9: TQRLabel;
    QRExpr2: TQRExpr;
    QChequesCHE_MONTO_BANCO: TBCDField;
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
  RepListaCheques: TRepListaCheques;

implementation

uses SIGMA01;


{$R *.DFM}

procedure TRepListaCheques.QDetalleCalcFields(DataSet: TDataSet);
begin
  if QDetalleDET_ORIGEN.Value = 'Debito' then
    QDetalleDebito.Value := QDetalleDET_MONTO.Value
  else
    QDetalleCredito.Value := QDetalleDET_MONTO.Value;
end;

procedure TRepListaCheques.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if QDetalle.Active then
  begin
    QRDBText7.Font.Style  := [fsbold];
    QRDBText8.Font.Style  := [fsbold];
    QRDBText9.Font.Style  := [fsbold];
    QRDBText10.Font.Style := [fsbold];
    QRDBText11.Font.Style := [fsbold];
//    QRDBText12.Font.Style := [fsbold];
  end;
end;

procedure TRepListaCheques.QuickRepBeforePrint(Sender: TCustomQuickRep;
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
    dm.Query1.Parameters.ParamByName('mod').Value := 'RepListaCheques';
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
