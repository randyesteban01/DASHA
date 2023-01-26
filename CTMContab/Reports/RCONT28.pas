unit RCONT28;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet, ADODB;

type
  TRNCF_Unico_Resumen = class(TQuickRep)
    QRBand1: TQRBand;
    lbFactura: TQRLabel;
    QRDBText1: TQRDBText;
    QDetalle: TADOQuery;
    QRLabel3: TQRLabel;
    lbfecha: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText2: TQRDBText;
    QRBand2: TQRBand;
    QRLabel8: TQRLabel;
    QRLabel12: TQRLabel;
    QRBand3: TQRBand;
    QRDBText5: TQRDBText;
    QRDBText9: TQRDBText;
    QRBand4: TQRBand;
    QRExpr1: TQRExpr;
    QRLabel13: TQRLabel;
    lbncf: TQRLabel;
    QDetalledescripcion: TStringField;
    QDetalletotal: TBCDField;
    QRBand30: TQRBand;
    qrlUsuario: TQRLabel;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  RNCF_Unico_Resumen: TRNCF_Unico_Resumen;

implementation

uses SIGMA01;

{$R *.DFM}

procedure TRNCF_Unico_Resumen.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  qrlUsuario.Caption :='Impreso por :'+ dm.getNombreUsuario(DM.Usuario) +
                       ' Fecha/Hora ' + FormatDateTime('dd/mm/yyyy hh:mm:ss AM/PM',now);
end;

end.
