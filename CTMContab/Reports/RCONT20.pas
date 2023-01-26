unit RCONT20;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery, ADODB;

type
  TRepCostoProduccion = class(TQuickRep)
    QRBand1: TQRBand;
    lbTitulo: TQRLabel;
    QRDBText1: TQRDBText;
    QRBand3: TQRBand;
    QCuentas: TADOQuery;
    lbFecha: TQRLabel;
    QRLabel1: TQRLabel;
    lbCtaProceso: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    lbTotal1: TQRLabel;
    lbTotal2: TQRLabel;
    lbTotal3: TQRLabel;
    lbTotal4: TQRLabel;
    lbTotal5: TQRLabel;
    lbTotal6: TQRLabel;
    lbTotal7: TQRLabel;
    lbTotal8: TQRLabel;
    QRShape1: TQRShape;
    QCuentasMTOMATERIA: TFloatField;
    QCuentasMTOLABOR: TFloatField;
    QCuentasMTOCOSTOS: TFloatField;
    QCuentasMTOPROCESOINI: TFloatField;
    QCuentasMTOPROCESOFIN: TFloatField;
    QRShape2: TQRShape;
    QCuentasid: TAutoIncField;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public
    Imprime : Boolean;
  end;

var
  RepCostoProduccion: TRepCostoProduccion;

implementation

uses SIGMA01;


{$R *.DFM}

procedure TRepCostoProduccion.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  lbTotal1.Caption := Format('%n',[QCuentasMTOPROCESOINI.Value]);
  lbTotal2.Caption := Format('%n',[QCuentasMTOMATERIA.Value]);
  lbTotal3.Caption := Format('%n',[QCuentasMTOLABOR.Value]);
  lbTotal4.Caption := Format('%n',[QCuentasMTOCOSTOS.Value]);
  lbTotal5.Caption := Format('%n',[QCuentasMTOMATERIA.Value+
                                   QCuentasMTOLABOR.Value+
                                   QCuentasMTOCOSTOS.Value]);
  lbTotal6.Caption := Format('%n',[QCuentasMTOMATERIA.Value+
                                   QCuentasMTOLABOR.Value+
                                   QCuentasMTOCOSTOS.Value+
                                   QCuentasMTOPROCESOINI.Value]);

  lbTotal7.Caption := Format('%n',[QCuentasMTOPROCESOFIN.Value]);
  lbTotal8.Caption := Format('%n',[(QCuentasMTOMATERIA.Value+
                                   QCuentasMTOLABOR.Value+
                                   QCuentasMTOCOSTOS.Value+
                                   QCuentasMTOPROCESOINI.Value)-
                                   QCuentasMTOPROCESOFIN.Value]);
end;

end.
