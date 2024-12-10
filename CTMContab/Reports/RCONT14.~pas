unit RCONT14;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery, ADODB;

type
  TRepEstadoSituacion = class(TQuickRep)
    QRBand1: TQRBand;
    lbTitulo: TQRLabel;
    QRDBText1: TQRDBText;
    QRSysData1: TQRSysData;
    QRBand3: TQRBand;
    QCuentas: TADOQuery;
    lbAnexo: TQRLabel;
    lbFecha: TQRLabel;
    QRLabel1: TQRLabel;
    dbBalance: TQRDBText;
    lbConsol: TQRLabel;
    QCuentascuenta: TStringField;
    QCuentasnombre: TStringField;
    QCuentasbalance: TBCDField;
    QCuentasnivel: TIntegerField;
    dbNombre: TQRDBText;
    QCuentasnegrita: TStringField;
    QCuentasbalancecontrol: TBCDField;
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public
    Imprime : Boolean;
  end;

var
  RepEstadoSituacion: TRepEstadoSituacion;

implementation

uses SIGMA01;


{$R *.DFM}

procedure TRepEstadoSituacion.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if (QCuentasbalancecontrol.Value = 0) or (QCuentasbalancecontrol.IsNull) then
  begin
    //dbBalanceControl.Enabled := false;
    dbBalance.Enabled := true;
  end
  else
  begin
    //dbBalanceControl.Enabled := true;
    dbBalance.Enabled := false;
  end;

  if dm.QContabPAR_REPANEXOS.Value = 'S' then
  begin
    lbAnexo.Enabled := True;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select ane_nombre from contanexos');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cat_cuenta = :cta');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('cta').Value  := QCuentasCUENTA.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
      lbAnexo.Caption := dm.Query1.FieldByName('ane_nombre').AsString
    else
      lbAnexo.Caption := ' ';
  end
  else
    lbAnexo.Enabled := False;

  if (QCuentasbalance.Value = 0) and (QCuentascuenta.Value <> 'T') then
    dbBalance.Enabled := false
  else
    dbBalance.Enabled := true;

  dbNombre.Font.Style  := dbNombre.Font.Style - [fsBold];
  dbBalance.Font.Style := dbNombre.Font.Style - [fsBold];
  //dbBalanceControl.Font.Style := dbNombre.Font.Style - [fsBold];
  dbBalance.Frame.DrawTop := False;
  if QCuentascuenta.Value = 'T' then
  begin
    dbNombre.Font.Style  := dbNombre.Font.Style + [fsBold];
    dbBalance.Font.Style := dbNombre.Font.Style + [fsBold];
    //dbBalanceControl.Font.Style := dbNombre.Font.Style + [fsBold];
    dbBalance.Frame.DrawTop := True;
  end;

  dbNombre.Left := 10 * QCuentasnivel.AsInteger;
  if QCuentasnegrita.Value = 'S' then
  begin
    dbnombre.Font.Style := dbnombre.Font.Style + [fsbold];
    lbAnexo.Font.Style := lbAnexo.Font.Style + [fsbold];
    dbBalance.Font.Style := dbBalance.Font.Style + [fsbold];
    //dbBalanceControl.Font.Style := dbNombre.Font.Style + [fsBold];
  end
  else
  begin
    dbnombre.Font.Style := dbnombre.Font.Style - [fsbold];
    lbAnexo.Font.Style := lbAnexo.Font.Style - [fsbold];
    dbBalance.Font.Style := dbBalance.Font.Style - [fsbold];
    //dbBalanceControl.Font.Style := dbNombre.Font.Style - [fsBold];
  end;
end;

procedure TRepEstadoSituacion.QuickRepBeforePrint(Sender: TCustomQuickRep;
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
    dm.Query1.Parameters.ParamByName('mod').Value := 'RepEstadoSituacion';
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
