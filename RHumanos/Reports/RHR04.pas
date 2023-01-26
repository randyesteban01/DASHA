unit RHR04;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, ADODB;

type
  TRepEmpleadoSueldos = class(TQuickRep)
    QRBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRBand2: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRBand3: TQRBand;
    QGrupo: TADOQuery;
    QGrupogru_codigo: TIntegerField;
    QGrupogru_nombre: TStringField;
    dsGrupo: TDataSource;
    QEmpleados: TADOQuery;
    QGrupoemp_codigo: TIntegerField;
    QRLabel10: TQRLabel;
    QEmpleadosemp_numero: TIntegerField;
    QEmpleadosNombre: TStringField;
    QEmpleadosemp_cedula: TStringField;
    QEmpleadosemp_fecha_entrada: TDateTimeField;
    QEmpleadosemp_sexo: TStringField;
    QEmpleadosest_nombre: TStringField;
    QRDBText2: TQRDBText;
    QRSubDetail1: TQRSubDetail;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRBand4: TQRBand;
    QRExpr1: TQRExpr;
    QRLabel11: TQRLabel;
    QRBand5: TQRBand;
    QRExpr2: TQRExpr;
    QRLabel12: TQRLabel;
    QRLabel8: TQRLabel;
    QEmpleadosemp_salario: TBCDField;
    QRDBText6: TQRDBText;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QTipoNomina: TADOQuery;
    QTipoNominaemp_codigo: TIntegerField;
    QTipoNominatno_codigo: TIntegerField;
    QTipoNominatno_nombre: TStringField;
    dsTipo: TDataSource;
    QRSubDetail2: TQRSubDetail;
    QRDBText10: TQRDBText;
    QEmpleadospos_nombre: TStringField;
    lbtitulo: TQRLabel;
    procedure QRSubDetail2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  RepEmpleadoSueldos: TRepEmpleadoSueldos;

implementation

uses SIGMA01;

{$R *.DFM}

procedure TRepEmpleadoSueldos.QRSubDetail2BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  PrintBand := QEmpleados.RecordCount > 0;
end;

procedure TRepEmpleadoSueldos.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  PrintBand := QGrupo.RecordCount > 0;
end;

procedure TRepEmpleadoSueldos.QuickRepBeforePrint(Sender: TCustomQuickRep;
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
    dm.Query1.Parameters.ParamByName('mod').Value := 'RepEmpleadoSueldos';
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
