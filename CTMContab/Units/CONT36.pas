unit CONT36;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery, ADODB;

type
  TRepListaSolicitudes = class(TQuickRep)
    QRBand1: TQRBand;
    lbTitulo: TQRLabel;
    lbFecha: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRBand3: TQRBand;
    QRDBText10: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRBand4: TQRBand;
    QRExpr1: TQRExpr;
    QRLabel8: TQRLabel;
    QSolicitud: TADOQuery;
    QSolicitudBAN_NOMBRE: TIBStringField;
    QSolicitudSOL_NUMERO: TIntegerField;
    QSolicitudSOL_FECHA: TDateTimeField;
    QSolicitudSOL_CONCEPTO1: TIBStringField;
    QSolicitudSOL_CONCEPTO2: TIBStringField;
    QSolicitudSOL_BENEF: TIBStringField;
    QSolicitudSOL_MONTO: TFloatField;
    QSolicitudSOL_STATUS: TIBStringField;
    QSolicitudSOL_TIPO: TIBStringField;
    QSolicitudUSU_NOMBRE: TIBStringField;
    QSolicitudEMP_CODIGO: TIntegerField;
    QSolicitudBAN_CODIGO: TIntegerField;
    QSolicitudSOL_CHEQUE: TIntegerField;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel44: TQRLabel;
    QRDBText4: TQRDBText;
    QSolicitudSOL_MONTO_BANCO: TBCDField;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  RepListaSolicitudes: TRepListaSolicitudes;

implementation

uses SIGMA01;


{$R *.DFM}

procedure TRepListaSolicitudes.QuickRepBeforePrint(Sender: TCustomQuickRep;
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
    dm.Query1.Parameters.ParamByName('mod').Value := 'RepListaSolicitudes';
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
