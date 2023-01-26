unit RCONT03;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery, ADODB;

type
  TRepCatalogo = class(TQuickRep)
    QRBand1: TQRBand;
    lbTitulo: TQRLabel;
    lbFecha: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRLabel21: TQRLabel;
    QRBand3: TQRBand;
    QRDBText10: TQRDBText;
    QRLabel10: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QCatalogo: TADOQuery;
    QCatalogoCAT_CONTROL: TIBStringField;
    QCatalogoCAT_CUENTA: TIBStringField;
    QCatalogoCAT_MOVIMIENTO: TIBStringField;
    QCatalogoCAT_NOMBRE: TIBStringField;
    QCatalogoCAT_ORIGEN: TIBStringField;
    QCatalogoCAT_TIPO: TIBStringField;
    QRLabel9: TQRLabel;
    QRDBText7: TQRDBText;
    QCatalogoOrigen: TStringField;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    procedure QCatalogoCalcFields(DataSet: TDataSet);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public
    Imprime : Boolean;
  end;

var
  RepCatalogo: TRepCatalogo;

implementation

uses SIGMA01;


{$R *.DFM}

procedure TRepCatalogo.QCatalogoCalcFields(DataSet: TDataSet);
begin
  if QCatalogoCAT_ORIGEN.Value = 'D' then
    QCatalogoOrigen.Value := 'Debito'
  else
    QCatalogoOrigen.Value := 'Credito';
end;

procedure TRepCatalogo.QuickRepBeforePrint(Sender: TCustomQuickRep;
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
    dm.Query1.Parameters.ParamByName('mod').Value := 'RepCatalogo';
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
  Imprime := False;
end;

procedure TRepCatalogo.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if (QCatalogoCAT_CONTROL.IsNull) or (QCatalogoCAT_CONTROL.Value = '') then
  begin
    QRDBText6.Font.Style  := QRDBText6.Font.Style+[fsbold]+[fsUnderLine];
    QRDBText7.Font.Style  := QRDBText7.Font.Style+[fsbold]+[fsUnderLine];
    QRDBText8.Font.Style  := QRDBText8.Font.Style+[fsbold]+[fsUnderLine];
    QRDBText9.Font.Style  := QRDBText9.Font.Style+[fsbold]+[fsUnderLine];
    QRDBText10.Font.Style := QRDBText10.Font.Style+[fsbold]+[fsUnderLine];
    QRDBText11.Font.Style := QRDBText11.Font.Style+[fsbold]+[fsUnderLine];
  end
  else
  begin
    QRDBText6.Font.Style  := QRDBText6.Font.Style-[fsbold]-[fsUnderLine];
    QRDBText7.Font.Style  := QRDBText7.Font.Style-[fsbold]-[fsUnderLine];
    QRDBText8.Font.Style  := QRDBText8.Font.Style-[fsbold]-[fsUnderLine];
    QRDBText9.Font.Style  := QRDBText9.Font.Style-[fsbold]-[fsUnderLine];
    QRDBText10.Font.Style := QRDBText10.Font.Style-[fsbold]-[fsUnderLine];
    QRDBText11.Font.Style := QRDBText11.Font.Style-[fsbold]-[fsUnderLine];
  end
end;

end.
