unit RVENTA52;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, DB, IBCustomDataSet,
  IBQuery, ADODB;

type
  TRRepVentaCliente = class(TQuickRep)
    QRBand1: TQRBand;
    lbTitulo: TQRLabel;
    lbFecha: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRLabel19: TQRLabel;
    QRBand3: TQRBand;
    QRLabel7: TQRLabel;
    QRDBText6: TQRDBText;
    QClientes: TADOQuery;
    QClientesCLI_CODIGO: TIntegerField;
    QClientesCLI_REFERENCIA: TIBStringField;
    QClientesCLI_NOMBRE: TIBStringField;
    QClientesTOTAL: TFloatField;
    QRDBText7: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText8: TQRDBText;
    QRBand4: TQRBand;
    QRLabel4: TQRLabel;
    lbGrupo: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    lbVendedor: TQRLabel;
    PageFooterBand1: TQRBand;
    qrlUsuario: TQRLabel;
    qClientes2: TADOQuery;
    IntegerField1: TIntegerField;
    IBStringField1: TIBStringField;
    IBStringField2: TIBStringField;
    FloatField1: TFloatField;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    lbTotal: TQRLabel;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand4BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private


  public
      vl_total : Currency;
  end;

var
  RRepVentaCliente: TRRepVentaCliente;

implementation

uses SIGMA01;


{$R *.DFM}

procedure TRRepVentaCliente.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
 qrlUsuario.Caption :='Impreso por :'+ dm.getNombreUsuario(DM.Usuario) +
                       ' Fecha/Hora ' + FormatDateTime('dd/mm/yyyy hh:mm:ss AM/PM',now);

end;

procedure TRRepVentaCliente.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
vl_total := vl_total + QClientesTOTAL.Value;
end;

procedure TRRepVentaCliente.QRBand4BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
vl_total := vl_total + QClientes2.fieldbyname('TOTAL').Value;
lbTotal.Caption  := FormatCurr('#,0.00',vl_total);
end;

end.
