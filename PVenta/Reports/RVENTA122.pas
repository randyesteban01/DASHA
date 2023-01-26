unit RVENTA122;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, DB, IBCustomDataSet, ADODB;

type
  TRFacturaClinico = class(TQuickRep)
    QFactura: TADOQuery;
    QFacturaCAJ_CODIGO: TIntegerField;
    QFacturaCLI_CODIGO: TIntegerField;
    QFacturaCOT_NUMERO: TIntegerField;
    QFacturaCPA_CODIGO: TIntegerField;
    QFacturaEMP_CODIGO: TIntegerField;
    QFacturaFAC_ABONO: TFloatField;
    QFacturaFAC_DESCUENTO: TFloatField;
    QFacturaFAC_DIRECCION: TIBStringField;
    QFacturaFAC_FAX: TIBStringField;
    QFacturaFAC_FECHA: TDateTimeField;
    QFacturaFAC_FORMA: TIBStringField;
    QFacturaFAC_ITBIS: TFloatField;
    QFacturaFAC_LOCALIDAD: TIBStringField;
    QFacturaFAC_NOMBRE: TIBStringField;
    QFacturaFAC_NUMERO: TIntegerField;
    QFacturaFAC_OTROS: TFloatField;
    QFacturaFAC_STATUS: TIBStringField;
    QFacturaFAC_TELEFONO: TIBStringField;
    QFacturaFAC_TOTAL: TFloatField;
    QFacturaPED_NUMERO: TIntegerField;
    QFacturaTFA_CODIGO: TIntegerField;
    QFacturaUSU_CODIGO: TIntegerField;
    QFacturaVEN_CODIGO: TIntegerField;
    QFacturaCLI_REFERENCIA: TIBStringField;
    QFacturaSubTotal: TFloatField;
    QFacturaALM_CODIGO: TIntegerField;
    QFacturaFAC_MENSAJE1: TIBStringField;
    QFacturaFAC_MENSAJE2: TIBStringField;
    QFacturaFAC_MENSAJE3: TIBStringField;
    QFacturaFAC_HORA: TIBStringField;
    QFacturaFAC_VENCE: TDateTimeField;
    QFacturaMON_CODIGO: TIntegerField;
    QFacturaFAC_CONITBIS: TStringField;
    QFacturaSUC_CODIGO: TIntegerField;
    QFacturaNumero: TStringField;
    QFacturaNumeroCF: TStringField;
    QFacturaNCF_Fijo: TStringField;
    QFacturaNCF_Secuencia: TBCDField;
    QFacturafac_rnc: TStringField;
    QFacturaPlaca: TStringField;
    QFacturaChofer: TStringField;
    QFacturaModelo: TStringField;
    QFacturaMarca: TStringField;
    QFacturaCompania: TStringField;
    dsFactura: TDataSource;
    QRBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRBand2: TQRBand;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel14: TQRLabel;
    QClinico: TADOQuery;
    QClinicoemp_codigo: TIntegerField;
    QClinicosuc_codigo: TIntegerField;
    QClinicofac_forma: TStringField;
    QClinicotfa_codigo: TIntegerField;
    QClinicofac_numero: TIntegerField;
    QClinicodetalleid: TIntegerField;
    QClinicofacturaid: TBCDField;
    QClinicorecordid: TBCDField;
    QClinicofacturada_sigma: TStringField;
    QClinicotipo: TStringField;
    QClinicofecha: TDateTimeField;
    QClinicopaciente: TStringField;
    QClinicopoliza: TStringField;
    QClinicocobertura: TBCDField;
    QClinicoautorizacion: TStringField;
    QRBand3: TQRBand;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText13: TQRDBText;
    QFacturaOrdenID: TStringField;
    QFacturaFAC_NOTA: TMemoField;
    procedure QFacturaCalcFields(DataSet: TDataSet);
    procedure QFacturaAfterOpen(DataSet: TDataSet);
  private

  public

  end;

var
  RFacturaClinico: TRFacturaClinico;

implementation

uses SIGMA01;

{$R *.DFM}

procedure TRFacturaClinico.QFacturaCalcFields(DataSet: TDataSet);
begin
  if not QFacturaNCF_Fijo.isnull then
    QFacturaNumeroCF.Value := QFacturaNCF_Fijo.Value+formatfloat('00000000',QFacturaNCF_Secuencia.Value)
  else
    QFacturaNumeroCF.Value := ' ';
end;

procedure TRFacturaClinico.QFacturaAfterOpen(DataSet: TDataSet);
begin
  QClinico.close;
  QClinico.Parameters.ParamByName('emp').Value := dm.vp_cia;
  QClinico.Parameters.ParamByName('suc').Value := QFacturaSUC_CODIGO.Value;
  QClinico.Parameters.ParamByName('for').Value := QFacturaFAC_FORMA.Value;
  QClinico.Parameters.ParamByName('tfa').Value := QFacturaTFA_CODIGO.Value;
  QClinico.Parameters.ParamByName('fac').Value := QFacturaFAC_NUMERO.Value;
  QClinico.open;
end;

end.
