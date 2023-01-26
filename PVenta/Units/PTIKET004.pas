unit PTIKET004;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls;

type
  TRListadoBoletos = class(TQuickRep)
    ColumnHeaderBand1: TQRBand;
    lbEmp: TQRLabel;
    lbLocalidad: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel44: TQRLabel;
    lbTelefono: TQRLabel;
    lbRnc: TQRLabel;
    lbSuc: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel1: TQRLabel;
    PageFooterBand1: TQRBand;
    qrlUsuario: TQRLabel;
    qrlSoftware: TQRLabel;
    SummaryBand1: TQRBand;
    QRExpr8: TQRExpr;
    QRLabel52: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel2: TQRLabel;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  RListadoBoletos: TRListadoBoletos;

implementation
uses PTIKET003, SIGMA01;

{$R *.DFM}

procedure TRListadoBoletos.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  qrlUsuario.Caption :='Impreso por :'+ dm.getNombreUsuario(DM.Usuario) +
                       ' Fecha/Hora ' + FormatDateTime('dd/mm/yyyy',now); 
end;

end.
