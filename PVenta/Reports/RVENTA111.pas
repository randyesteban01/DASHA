unit RVENTA111;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, DB, IBCustomDataSet,
  IBQuery, ADODB;

type
  TRInvTransferencia = class(TQuickRep)
    QRBand1: TQRBand;
    lbTitulo: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel6: TQRLabel;
    lbAlmacen: TQRLabel;
    lbFecha: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRDBText9: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel19: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QTrans: TADOQuery;
    QTranspro_codigo: TIntegerField;
    QTranspro_roriginal: TStringField;
    QTranspro_nombre: TStringField;
    QTranscantidad: TBCDField;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    lbprov: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    lbfam: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    lbdepto: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    lbger: TQRLabel;
    QTranspro_costo: TBCDField;
    QRLabel9: TQRLabel;
    QRDBText10: TQRDBText;
    QTransValor: TFloatField;
    QRLabel12: TQRLabel;
    QRDBText11: TQRDBText;
    QRBand4: TQRBand;
    QRExpr1: TQRExpr;
    QRBand30: TQRBand;
    qrlUsuario: TQRLabel;
    procedure QTransCalcFields(DataSet: TDataSet);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  RInvTransferencia: TRInvTransferencia;

implementation

uses SIGMA01;


{$R *.DFM}

procedure TRInvTransferencia.QTransCalcFields(DataSet: TDataSet);
begin
  QTransValor.Value := QTranscantidad.Value * QTranspro_costo.Value;
end;

procedure TRInvTransferencia.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  qrlUsuario.Caption :='Impreso por :'+ dm.getNombreUsuario(DM.Usuario) +
                       ' Fecha/Hora ' + FormatDateTime('dd/mm/yyyy hh:mm:ss AM/PM',now);
end;

end.
