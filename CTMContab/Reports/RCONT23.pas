unit RCONT23;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery, ADODB;

type
  TRepBceComparativo = class(TQuickRep)
    QRBand1: TQRBand;
    lbTitulo: TQRLabel;
    QRDBText1: TQRDBText;
    lbFecha: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand3: TQRBand;
    QRDBText10: TQRDBText;
    QCuentas: TADOQuery;
    QRLabel1: TQRLabel;
    QNivel: TADOQuery;
    QRBand2: TQRBand;
    QRLabel4: TQRLabel;
    QNivelBCE_NIVEL: TIntegerField;
    QNivelCAT_NOMBRE: TIBStringField;
    dsNivel: TDataSource;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRBand4: TQRBand;
    QRSubDetail1: TQRSubDetail;
    QRDBText2: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QCuentasEMPRESA: TIntegerField;
    QCuentasCUENTA: TIBStringField;
    QCuentasDESCRIP: TIBStringField;
    QCuentasNIVEL: TIntegerField;
    QCuentasBALANCEACT: TFloatField;
    QCuentasBALANCEANT: TFloatField;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QCuentasVariacion: TFloatField;
    QCuentasPorc: TFloatField;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRBand5: TQRBand;
    QRLabel7: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QCuentasORIGEN: TIBStringField;
    lbAct: TQRLabel;
    lbAnt: TQRLabel;
    lbVaria: TQRLabel;
    lbPorc: TQRLabel;
    lbConsol: TQRLabel;
    QCuentasid: TAutoIncField;
    procedure QCuentasCalcFields(DataSet: TDataSet);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand5BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public
    ActDebitos, ActCreditos, AntDebitos, AntCreditos : Double;
  end;

var
  RepBceComparativo: TRepBceComparativo;

implementation

uses SIGMA01;


{$R *.DFM}

procedure TRepBceComparativo.QCuentasCalcFields(DataSet: TDataSet);
begin
  QCuentasVariacion.Value := QCuentasBALANCEACT.Value - QCuentasBALANCEANT.Value;
  if QCuentasBALANCEANT.Value > 0 then
    QCuentasPorc.Value := QCuentasVariacion.Value / QCuentasBALANCEANT.Value;
end;

procedure TRepBceComparativo.QuickRepBeforePrint(Sender: TCustomQuickRep;
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
    dm.Query1.Parameters.ParamByName('mod').Value := 'RepBceComparativo';
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
  ActDebitos  := 0;
  ActCreditos := 0;
  AntDebitos  := 0;
  AntCreditos := 0;
end;

procedure TRepBceComparativo.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if QCuentasORIGEN.Value = 'D' then
  begin
    ActDebitos := ActDebitos + QCuentasBALANCEACT.Value;
    AntDebitos := AntDebitos + QCuentasBALANCEANT.Value;
  end
  else
  begin
    ActCreditos := ActCreditos + QCuentasBALANCEACT.Value;
    AntCreditos := AntCreditos + QCuentasBALANCEANT.Value;
  end;
end;

procedure TRepBceComparativo.QRBand5BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  lbAct.Caption   := Format('%n',[ActDebitos]);
  lbAnt.Caption   := Format('%n',[AntCreditos]);
  lbVaria.Caption := Format('%n',[ActDebitos - AntDebitos]);
  lbPorc.Caption  := Format('%n',[(ActDebitos - AntDebitos) / AntDebitos]);

  QCuentasVariacion.Value := QCuentasBALANCEACT.Value - QCuentasBALANCEANT.Value;
  if QCuentasBALANCEANT.Value > 0 then
    QCuentasPorc.Value := QCuentasVariacion.Value / QCuentasBALANCEANT.Value;

end;

end.
