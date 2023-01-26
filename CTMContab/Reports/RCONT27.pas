unit RCONT27;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, ADODB;

type
  TRepActivos = class(TQuickRep)
    QRBand1: TQRBand;
    lbTitulo: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel6: TQRLabel;
    lbcat: TQRLabel;
    lbFecha: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel4: TQRLabel;
    QRLabel15: TQRLabel;
    lbfam: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    lbdepto: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    lbmarca: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    lbprov: TQRLabel;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRLabel7: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel16: TQRLabel;
    QRDBText6: TQRDBText;
    QActivos: TADOQuery;
    QActivosemp_codigo: TIntegerField;
    QActivosact_codigo: TStringField;
    QActivosact_numeroserie: TStringField;
    QActivosact_referencia: TStringField;
    QActivosact_nombre: TStringField;
    QActivosact_fecadquisicion: TDateTimeField;
    QActivosact_costoadquisicion: TBCDField;
    QActivosact_tasa: TBCDField;
    QActivosact_valorlibro: TBCDField;
    QActivosact_depresiacionacumulada: TBCDField;
    QActivosact_valorresidual: TBCDField;
    QActivosact_documento: TStringField;
    QActivosact_depresiacionactual: TBCDField;
    QActivosact_depresiacionmes: TBCDField;
    QActivosdep_codigo: TIntegerField;
    QActivosfam_codigo: TIntegerField;
    QActivosmar_codigo: TIntegerField;
    QActivoscat_codigo: TIntegerField;
    QActivossup_codigo: TIntegerField;
    QActivosact_procedencia: TStringField;
    QActivosact_nuevousado: TStringField;
    QActivosusu_codigo: TIntegerField;
    QActivosact_tipo: TStringField;
    QActivosact_status: TStringField;
    QActivosact_ubicacion: TStringField;
    QActivosact_meses: TIntegerField;
    QActivosfam_nombre: TStringField;
    QActivosmar_nombre: TStringField;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRBand4: TQRBand;
    QRExpr1: TQRExpr;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  RepActivos: TRepActivos;

implementation

uses SIGMA01;

{$R *.DFM}

procedure TRepActivos.QuickRepBeforePrint(Sender: TCustomQuickRep;
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
    dm.Query1.Parameters.ParamByName('mod').Value := 'RepActivos';
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
