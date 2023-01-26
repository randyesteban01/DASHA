unit RVENTA116;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, DB, IBCustomDataSet,
  IBQuery, ADODB;

type
  TRCxPGeneral = class(TQuickRep)
    QRBand1: TQRBand;
    lbTitulo: TQRLabel;
    lbFecha: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRLabel21: TQRLabel;
    QRBand3: TQRBand;
    QRDBText10: TQRDBText;
    QRBand4: TQRBand;
    QProveedores: TADOQuery;
    QRLabel10: TQRLabel;
    QRLabel18: TQRLabel;
    lbCliente: TQRDBText;
    QRDBText12: TQRDBText;
    QRLabel19: TQRLabel;
    QRExpr2: TQRExpr;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel17: TQRLabel;
    QRLabel30: TQRLabel;
    QRDBText14: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel3: TQRLabel;
    QRExpr1: TQRExpr;
    QRLabel4: TQRLabel;
    QProveedoressup_codigo: TIntegerField;
    QProveedoressup_nombre: TStringField;
    QProveedoressup_rnc: TStringField;
    QProveedoressup_telefono: TStringField;
    QProveedoressup_limite: TBCDField;
    QProveedoresBalance: TBCDField;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  RCxPGeneral: TRCxPGeneral;

implementation

uses SIGMA01;


{$R *.DFM}

procedure TRCxPGeneral.QuickRepBeforePrint(Sender: TCustomQuickRep;
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
    dm.Query1.Parameters.ParamByName('mod').Value := 'RCxPGeneral';
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
