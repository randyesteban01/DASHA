unit RCONT08;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery, ADODB;

type
  TRepDiarioGeneral = class(TQuickRep)
    QRBand1: TQRBand;
    lbTitulo: TQRLabel;
    QRDBText1: TQRDBText;
    lbFecha: TQRLabel;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRLabel10: TQRLabel;
    QRDBText6: TQRDBText;
    QTrans: TADOQuery;
    QTransEMP_CODIGO: TIntegerField;
    QTransENT_NUMERO: TIntegerField;
    QTransTRA_BENEF: TIBStringField;
    QTransTRA_CONCEPTO1: TIBStringField;
    QTransTRA_CONCEPTO2: TIBStringField;
    QTransTRA_DOC: TIBStringField;
    QTransTRA_FECHA: TDateTimeField;
    QTransTRA_NUMERO: TIntegerField;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    dsTrans: TDataSource;
    QDetalle: TADOQuery;
    QDetalleCAT_CUENTA: TIBStringField;
    QDetalleCAT_NOMBRE: TIBStringField;
    QDetalleDET_DEBITO: TFloatField;
    QDetalleDET_CREDITO: TFloatField;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QTransTDO_CODIGO: TIBStringField;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRBand4: TQRBand;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRBand5: TQRBand;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRLabel11: TQRLabel;
    lbDescuadre: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel12: TQRLabel;
    lbCuenta: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel13: TQRLabel;
    lbCuenta2: TQRLabel;
    QRSysData1: TQRSysData;
    QTransSUC_CODIGO: TIntegerField;
    QDetalleSUC_CODIGO: TIntegerField;
    procedure QRBand4BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public
    Imprime : Boolean;
  end;

var
  RepDiarioGeneral: TRepDiarioGeneral;

implementation

uses SIGMA01;


{$R *.DFM}

procedure TRepDiarioGeneral.QRBand4BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if StrToFloat(Format('%18.2F',[QRExpr1.Value.dblResult])) <>
  StrToFloat(Format('%18.2F',[QRExpr2.Value.dblResult])) then
    lbDescuadre.Enabled := True
  else
    lbDescuadre.Enabled := False;
end;

procedure TRepDiarioGeneral.QuickRepBeforePrint(Sender: TCustomQuickRep;
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
    dm.Query1.Parameters.ParamByName('mod').Value := 'RepDiarioGeneral';
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
