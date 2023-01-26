unit RCONT12;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery, ADODB;

type
  TRepAnexos = class(TQuickRep)
    QRBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRBand2: TQRBand;
    QRLabel21: TQRLabel;
    QRBand3: TQRBand;
    QRLabel10: TQRLabel;
    QRLabel4: TQRLabel;
    QCuentas: TADOQuery;
    lbTitulo: TQRLabel;
    QRBand4: TQRBand;
    QRExpr1: TQRExpr;
    QRLabel3: TQRLabel;
    lbFecha: TQRLabel;
    QCuentasCAT_CUENTA: TIBStringField;
    QCuentasCAT_NOMBRE: TIBStringField;
    QAnexos: TADOQuery;
    QAnexosANE_CODIGO: TIntegerField;
    QAnexosANE_NOMBRE: TIBStringField;
    QAnexosCAT_CUENTA: TIBStringField;
    dsAnexos: TDataSource;
    QRSubDetail1: TQRSubDetail;
    QRDBText10: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel1: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    lbConsol: TQRLabel;
    QCuentasCAT_BALACTUAL: TBCDField;
    procedure dsAnexosDataChange(Sender: TObject; Field: TField);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public
    Imprime : Boolean;
  end;

var
  RepAnexos: TRepAnexos;

implementation

uses SIGMA01;


{$R *.DFM}

procedure TRepAnexos.dsAnexosDataChange(Sender: TObject; Field: TField);
begin
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select cat_nombre from contcatalogo');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.SQL.Add('and cat_cuenta = :cta');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('cta').Value  := QAnexosCAT_CUENTA.Value;
  dm.Query1.Open;
  lbTitulo.Caption := 'RELACION '+Trim(dm.Query1.FieldByName('cat_nombre').AsString);
end;

procedure TRepAnexos.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if StrToFloat(Format('%10.2f',[QCuentasCAT_BALACTUAL.value])) = 0 then
    PrintBand := False;
end;

procedure TRepAnexos.QuickRepBeforePrint(Sender: TCustomQuickRep;
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
    dm.Query1.Parameters.ParamByName('mod').Value := 'RepAnexos';
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
  QRLabel10.Enabled := dm.QContabPAR_REPANEXOSCTA.Value = 'True';
  QRDBText6.Enabled := dm.QContabPAR_REPANEXOSCTA.Value = 'True';
end;

end.                                                              
