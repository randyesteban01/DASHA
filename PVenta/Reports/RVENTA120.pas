unit RVENTA120;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, DB, ADODB;

type
  TRCambioPrecios = class(TQuickRep)
    QRBand1: TQRBand;
    lbTitulo: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel28: TQRLabel;
    lbFamilia: TQRLabel;
    lbDepto: TQRLabel;
    lbProveedor: TQRLabel;
    lbFecha: TQRLabel;
    QRSysData1: TQRSysData;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel16: TQRLabel;
    lbGerente: TQRLabel;
    QRLabel6: TQRLabel;
    lbmarca: TQRLabel;
    QRBand2: TQRBand;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel3: TQRLabel;
    QRBand3: TQRBand;
    lbcodigo: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel8: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QModificaciones: TADOQuery;
    QModificacionesFECHA: TDateTimeField;
    QModificacionesPRO_PRECIO1_ANT: TBCDField;
    QModificacionesPRO_PRECIO1_ACT: TBCDField;
    QModificacionesPRO_PRECIO2_ANT: TBCDField;
    QModificacionesPRO_PRECIO2_ACT: TBCDField;
    QModificacionesPRO_PRECIO3_ANT: TBCDField;
    QModificacionesPRO_PRECIO3_ACT: TBCDField;
    QModificacionesPRO_PRECIO4_ANT: TBCDField;
    QModificacionesPRO_PRECIO4_ACT: TBCDField;
    QModificacionesPRO_COSTOUN_ANT: TBCDField;
    QModificacionesPRO_COSTOUN_ACT: TBCDField;
    QModificacionesPRO_COSTOEM_ANT: TBCDField;
    QModificacionesPRO_COSTOEM_ACT: TBCDField;
    QModificacionespro_nombre: TStringField;
    QModificacionespro_codigo: TIntegerField;
    QModificacionespro_roriginal: TStringField;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText10: TQRDBText;
    QRLabel10: TQRLabel;
    QRDBText11: TQRDBText;
    QModificacionesUSU_ANT: TStringField;
    QModificacionesUSU_ACT: TStringField;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  RCambioPrecios: TRCambioPrecios;

implementation

uses SIGMA01;

{$R *.DFM}

procedure TRCambioPrecios.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  if dm.QParametrosPAR_CODIGOPRODUCTO.Value = 'I' then
  begin
    lbcodigo.DataField := 'pro_codigo';
    QRLabel3.Caption   := 'CODIGO';
  end
  else if dm.QParametrosPAR_CODIGOPRODUCTO.Value = 'O' then
  begin
    lbcodigo.DataField := 'pro_roriginal';
    QRLabel3.Caption   := 'REFERENCIA';
  end;
end;

end.
