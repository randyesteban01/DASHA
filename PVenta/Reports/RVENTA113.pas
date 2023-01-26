unit RVENTA113;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, DB, ADODB;

type
  TRBeneficioBruto = class(TQuickRep)
    QRBand1: TQRBand;
    lbTitulo: TQRLabel;
    lbMes: TQRLabel;
    QRSysData1: TQRSysData;
    lbGerente: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRBand2: TQRBand;
    lbnombre: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRBand3: TQRBand;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    lbProveedor: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    lbTipo: TQRLabel;
    QFamilia: TADOStoredProc;
    QFamiliatipo: TStringField;
    QFamiliacodigo: TIntegerField;
    QFamilianombre: TStringField;
    QFamiliaact_venta: TBCDField;
    QFamiliaact_costo: TBCDField;
    QFamiliaact_beneficio_bruto: TFloatField;
    QFamiliaact_margen_bruto: TFloatField;
    procedure QFamiliaCalcFields(DataSet: TDataSet);
  private

  public

  end;

var
  RBeneficioBruto: TRBeneficioBruto;

implementation

uses SIGMA01, PVENTA196;

{$R *.DFM}

procedure TRBeneficioBruto.QFamiliaCalcFields(DataSet: TDataSet);
begin
  if frmMargenBruto.QFamiliaact_venta.Value > 0 then
    frmMargenBruto.QFamiliaact_beneficio_bruto.Value := frmMargenBruto.QFamiliaact_venta.Value - frmMargenBruto.QFamiliaact_costo.Value;

  if frmMargenBruto.QFamiliaact_venta.Value > 0 then
    frmMargenBruto.QFamiliaact_margen_bruto.Value    := (frmMargenBruto.QFamiliaact_beneficio_bruto.Value / frmMargenBruto.QFamiliaact_venta.Value)*100;

end;

end.
