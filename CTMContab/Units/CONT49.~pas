unit CONT49;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery, ADODB;

type
  TRepLibroBanco = class(TQuickRep)
    QRBand1: TQRBand;
    lbTitulo: TQRLabel;
    lbFecha: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRDBText10: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText11: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRLabel8: TQRLabel;
    QRDBText15: TQRDBText;
    lbBanco: TQRLabel;
    QRLabel10: TQRLabel;
    QLibro: TADOQuery;
    QLibroDOCUMENTO: TIBStringField;
    QLibroNUMERO: TIntegerField;
    QLibroFECHA: TDateTimeField;
    QLibroCONCEPTO: TIBStringField;
    QLibroBENEF: TIBStringField;
    QLibroSTATUS: TIBStringField;
    QLibroBALANCE: TFloatField;
    QLibroORIGEN: TIBStringField;
    QLibroMONTO: TFloatField;
    QLibroCONCILIADO: TIBStringField;
    QLibroDebito: TFloatField;
    QLibroCredito: TFloatField;
    QRDBText6: TQRDBText;
    QRBand4: TQRBand;
    QRLabel5: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    lbCantDB: TQRLabel;
    lbMontoDB: TQRLabel;
    lbCantCR: TQRLabel;
    lbMontoCR: TQRLabel;
    lbBalance: TQRLabel;
    QLibroid: TAutoIncField;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QLibroDescripcion: TStringField;
    procedure QLibroCalcFields(DataSet: TDataSet);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public
    Imprime : Boolean;
  end;

var
  RepLibroBanco: TRepLibroBanco;

implementation

uses SIGMA01;


{$R *.DFM}

procedure TRepLibroBanco.QLibroCalcFields(DataSet: TDataSet);
begin
  if QLibroORIGEN.Value = 'C' then
    QLibroCredito.Value := QLibroMONTO.Value
  else
    QLibroDebito.Value := QLibroMONTO.Value;

  if QLibroDOCUMENTO.AsString <> 'CK' then
    QLibroDescripcion.Value := QLibroCONCEPTO.AsString
  else
    QLibroDescripcion.Value := QLibroBENEF.AsString;
end;

procedure TRepLibroBanco.QuickRepBeforePrint(Sender: TCustomQuickRep;
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
    dm.Query1.Parameters.ParamByName('mod').Value := 'RepLibroBanco';
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
