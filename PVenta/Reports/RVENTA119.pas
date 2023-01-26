unit RVENTA119;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, DB, ADODB;

type
  TRProductosDespachados = class(TQuickRep)
    QRBand1: TQRBand;
    lbTitulo: TQRLabel;
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
    QRBand2: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRBand3: TQRBand;
    QProductos: TADOQuery;
    QProductoscon_fecha: TDateTimeField;
    QProductoscon_numero: TIntegerField;
    QProductoscon_nombre: TStringField;
    QProductospro_nombre: TStringField;
    QProductosPlaca: TStringField;
    QProductosChofer: TStringField;
    QProductosMetraje: TBCDField;
    QProductoscantidad: TBCDField;
    QFecha: TADOQuery;
    QFechacon_fecha: TDateTimeField;
    QFechaemp_codigo: TIntegerField;
    QFechasuc_codigo: TIntegerField;
    dsFecha: TDataSource;
    QRDBText6: TQRDBText;
    QRSubDetail1: TQRSubDetail;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRBand4: TQRBand;
    QRExpr1: TQRExpr;
    QResumen: TADOQuery;
    QResumenpro_nombre: TStringField;
    QResumencantidad: TBCDField;
    QRBand5: TQRBand;
    QRExpr2: TQRExpr;
    QRLabel11: TQRLabel;
    PageFooterBand1: TQRBand;
    qrlUsuario: TQRLabel;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  RProductosDespachados: TRProductosDespachados;

implementation

uses SIGMA01;

{$R *.DFM}

procedure TRProductosDespachados.QuickRepBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
 qrlUsuario.Caption :='Impreso por :'+ dm.getNombreUsuario(DM.Usuario) +
                       ' Fecha/Hora ' + FormatDateTime('dd/mm/yyyy hh:mm:ss AM/PM',now);
end;

end.
