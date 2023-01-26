unit RCONT13;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery, ADODB;

type
  TRepVistaSituacion = class(TQuickRep)
    QRBand1: TQRBand;
    lbTitulo: TQRLabel;
    QRDBText1: TQRDBText;
    QRSysData1: TQRSysData;
    QRBand3: TQRBand;
    dbNombre: TQRDBText;
    QCuentas: TADOQuery;
    QCuentasCUENTA: TIBStringField;
    QCuentasNOMBRE: TIBStringField;
    QCuentasNIVEL: TIntegerField;
    lbAnexo: TQRLabel;
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public
    Imprime : Boolean;
  end;

var
  RepVistaSituacion: TRepVistaSituacion;

implementation

uses SIGMA01;


{$R *.DFM}

procedure TRepVistaSituacion.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select ane_nombre from contanexos');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.SQL.Add('and cat_cuenta = :cta');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('cta').Value  := QCuentasCUENTA.Value;
  dm.Query1.Open;
  lbAnexo.Caption := dm.Query1.FieldByName('ane_nombre').AsString;

  dbNombre.Font.Style := dbNombre.Font.Style - [fsBold];
  if QCuentasNIVEL.Value = 1 then
  begin
    dbNombre.Left := 26;
    dbNombre.Font.Style := dbNombre.Font.Style + [fsBold];
  end
  else if QCuentasNIVEL.Value = 2 then
    dbNombre.Left := 26+20
  else if QCuentasNIVEL.Value = 3 then
    dbNombre.Left := 26+40
  else if QCuentasNIVEL.Value = 4 then
    dbNombre.Left := 26+60
  else if QCuentasNIVEL.Value = 5 then
    dbNombre.Left := 26+80;
end;

end.
