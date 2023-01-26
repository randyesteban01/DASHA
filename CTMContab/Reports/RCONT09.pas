unit RCONT09;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery, ADODB;

type
  TRepEstResultado = class(TQuickRep)
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRLabel21: TQRLabel;
    QRBand3: TQRBand;
    QRDBText10: TQRDBText;
    QRLabel10: TQRLabel;
    QRDBText6: TQRDBText;
    lbFec1: TQRLabel;
    lbFec2: TQRLabel;
    QCuentas: TADOQuery;
    lbAnt1: TQRLabel;
    lbAnt2: TQRLabel;
    lbAct1: TQRLabel;
    lbAct2: TQRLabel;
    lbTitulo: TQRLabel;
    QRDBText1: TQRDBText;
    lbFecha: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel1: TQRLabel;
    QCuentasCUENTA: TIBStringField;
    QCuentasCONTROL: TIBStringField;
    QCuentasDESCRIP: TIBStringField;
    QCuentasMESANT: TFloatField;
    QCuentasBALMES: TFloatField;
    QCuentasBALFECHA: TFloatField;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText9: TQRDBText;
    lbConsol: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QCuentasid: TAutoIncField;
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    Total1, total2, total3 : Double;
  public
    Imprime : Boolean;
    ano, mes : integer;
  end;

var
  RepEstResultado: TRepEstResultado;

implementation

uses SIGMA01;


{$R *.DFM}

procedure TRepEstResultado.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if QCuentasCONTROL.Value = 'G' then
  begin
    QRBand3.Height := 28;
    QRShape1.Enabled := True;
    QRShape2.Enabled := True;
    QRShape3.Enabled := True;
    QRShape4.Enabled := True;
    QRShape5.Enabled := True;
    QRShape6.Enabled := True;
  end
  else
  begin
    QRBand3.Height := 16;
    QRShape1.Enabled := False;
    QRShape2.Enabled := False;
    QRShape3.Enabled := False;
    QRShape4.Enabled := False;
    QRShape5.Enabled := False;
    QRShape6.Enabled := False;
  end;

  if (QCuentasCONTROL.Value = 'S') or (QCuentasCONTROL.Value = 'T')
  or (QCuentasCONTROL.Value = 'G') then
  begin
    QRDBText6.Font.Style  := QRDBText6.Font.Style + [fsBold];
    QRDBText10.Font.Style := QRDBText6.Font.Style + [fsBold];
    QRDBText11.Font.Style := QRDBText6.Font.Style + [fsBold];
    QRDBText12.Font.Style := QRDBText6.Font.Style + [fsBold];
    QRDBText9.Font.Style  := QRDBText6.Font.Style + [fsBold];
  end
  else
  begin
    QRDBText6.Font.Style  := QRDBText6.Font.Style - [fsBold];
    QRDBText10.Font.Style := QRDBText6.Font.Style - [fsBold];
    QRDBText11.Font.Style := QRDBText6.Font.Style - [fsBold];
    QRDBText12.Font.Style := QRDBText6.Font.Style - [fsBold];
    QRDBText9.Font.Style  := QRDBText6.Font.Style - [fsBold];
  end;

  if (QCuentasCONTROL.Value = 'T') or (QCuentasCONTROL.Value = 'G') then
  begin
    QRDBText11.Frame.DrawTop := True;
    QRDBText12.Frame.DrawTop := True;
    QRDBText9.Frame.DrawTop  := True;
  end
  else
  begin
    QRDBText11.Frame.DrawTop := False;
    QRDBText12.Frame.DrawTop := False;
    QRDBText9.Frame.DrawTop  := False;
  end;

  if dm.QContabPAR_REPRESULTCOL1.Value = 'True' then
  begin
    if (QCuentasMESANT.Value = 0) and ((QCuentasCONTROL.Value = 'S') or
    (QCuentasCONTROL.Value = 'T')) then
      QRDBText11.Enabled := False
    else
      QRDBText11.Enabled := True;
  end
  else
  begin
    QRDBText11.Enabled := False;
    QRShape1.Enabled := False;
    QRShape2.Enabled := False;
  end;

  if dm.QContabPAR_REPRESULTCOL2.Value = 'True' then
  begin
    if (QCuentasBALMES.Value = 0) and ((QCuentasCONTROL.Value = 'S') or
    (QCuentasCONTROL.Value = 'T')) then
      QRDBText12.Enabled := False
    else
      QRDBText12.Enabled := True;
  end
  else
  begin
    QRDBText12.Enabled := False;
    QRShape3.Enabled := False;
    QRShape4.Enabled := False;
  end;

  if dm.QContabPAR_REPRESULTCOL3.Value = 'True' then
  begin
    if (QCuentasBALFECHA.Value = 0) and ((QCuentasCONTROL.Value = 'S') or
    (QCuentasCONTROL.Value = 'T')) then
      QRDBText9.Enabled := False
    else
      QRDBText9.Enabled := True;
  end
  else
  begin
    QRDBText9.Enabled := False;
    QRShape5.Enabled := False;
    QRShape6.Enabled := False;
  end;

  if (QCuentasBALFECHA.Value = 0) and (QCuentasBALMES.Value = 0) and (QCuentasMESANT.Value = 0) and
  (QCuentasCONTROL.Value <> 'T') then
    PrintBand := false
  else
    PrintBand := true;

end;

procedure TRepEstResultado.QuickRepBeforePrint(Sender: TCustomQuickRep;
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
    dm.Query1.Parameters.ParamByName('mod').Value := 'RepEstResultado';
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

  lbAnt1.Enabled := dm.QContabPAR_REPRESULTCOL1.Value = 'True';
  lbAnt2.Enabled := dm.QContabPAR_REPRESULTCOL1.Value = 'True';
  QRDBText11.Enabled := dm.QContabPAR_REPRESULTCOL1.Value = 'True';

  lbAct1.Enabled := dm.QContabPAR_REPRESULTCOL2.Value = 'True';
  lbAct2.Enabled := dm.QContabPAR_REPRESULTCOL2.Value = 'True';
  QRDBText12.Enabled := dm.QContabPAR_REPRESULTCOL2.Value = 'True';

  lbFec1.Enabled := dm.QContabPAR_REPRESULTCOL3.Value = 'True';
  lbFec2.Enabled := dm.QContabPAR_REPRESULTCOL3.Value = 'True';
  QRDBText9.Enabled := dm.QContabPAR_REPRESULTCOL3.Value = 'True';
end;

end.
