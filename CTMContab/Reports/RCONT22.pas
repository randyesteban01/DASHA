unit RCONT22;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery, ADODB;

type
  TRepCostoVenta = class(TQuickRep)
    QRBand1: TQRBand;
    lbTitulo: TQRLabel;
    QRDBText1: TQRDBText;
    QRBand3: TQRBand;
    QProduccion: TADOQuery;
    lbFecha: TQRLabel;
    QRLabel1: TQRLabel;
    lbCtaProceso: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    lbTotal1: TQRLabel;
    lbTotal2: TQRLabel;
    lbTotal3: TQRLabel;
    lbTotal4: TQRLabel;
    lbTotal5: TQRLabel;
    QRShape1: TQRShape;
    QProduccionMTOMATERIA: TFloatField;
    QProduccionMTOLABOR: TFloatField;
    QProduccionMTOCOSTOS: TFloatField;
    QProduccionMTOPROCESOINI: TFloatField;
    QProduccionMTOPROCESOFIN: TFloatField;
    QVenta: TADOQuery;
    QVentaMONTOINI: TFloatField;
    QVentaMONTOFIN: TFloatField;
    QRShape2: TQRShape;
    QProduccionid: TAutoIncField;
    QVentaid: TAutoIncField;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public
    Imprime : Boolean;
  end;

var
  RepCostoVenta: TRepCostoVenta;

implementation

uses SIGMA01;


{$R *.DFM}

procedure TRepCostoVenta.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  lbTotal1.Caption := Format('%n',[QVentaMONTOINI.Value]);
  lbTotal2.Caption := Format('%n',[(QProduccionMTOMATERIA.Value+
                                   QProduccionMTOLABOR.Value+
                                   QProduccionMTOCOSTOS.Value+
                                   QProduccionMTOPROCESOINI.Value)-
                                   QProduccionMTOPROCESOFIN.Value]);
  lbTotal3.Caption := Format('%n',[((QProduccionMTOMATERIA.Value+
                                   QProduccionMTOLABOR.Value+
                                   QProduccionMTOCOSTOS.Value+
                                   QProduccionMTOPROCESOINI.Value)-
                                   QProduccionMTOPROCESOFIN.Value)+
                                   QVentaMONTOINI.Value]);
  lbTotal4.Caption := Format('%n',[QVentaMONTOFIN.Value]);
  lbTotal5.Caption := Format('%n',[(((QProduccionMTOMATERIA.Value+
                                   QProduccionMTOLABOR.Value+
                                   QProduccionMTOCOSTOS.Value+
                                   QProduccionMTOPROCESOINI.Value)-
                                   QProduccionMTOPROCESOFIN.Value)+
                                   QVentaMONTOINI.Value)-
                                   QVentaMONTOFIN.Value]);
end;

end.
