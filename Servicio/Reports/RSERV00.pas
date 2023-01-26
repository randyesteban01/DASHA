unit RSERV00;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, ADODB;

type
  TROrdenServicio = class(TQuickRep)
    QOrden: TADOQuery;
    QOrdenemp_codigo: TIntegerField;
    QOrdensuc_codigo: TIntegerField;
    QOrdenord_numero: TIntegerField;
    QOrdenord_fecha: TDateTimeField;
    QOrdenusu_codigo: TIntegerField;
    QOrdencli_codigo: TIntegerField;
    QOrdenord_nombre: TStringField;
    QOrdenord_direccion: TStringField;
    QOrdenord_localidad: TStringField;
    QOrdenord_telefono: TStringField;
    QOrdenord_status: TStringField;
    QOrdenord_fecha_entrega: TDateTimeField;
    QOrdenord_fecha_expira: TDateTimeField;
    QOrdenord_nota: TMemoField;
    dsOrden: TDataSource;
    QDetalle: TADOQuery;
    QDetalleemp_codigo: TIntegerField;
    QDetallesuc_codigo: TIntegerField;
    QDetalleord_numero: TIntegerField;
    QDetalledet_secuencia: TIntegerField;
    QDetalletip_codigo: TIntegerField;
    QDetalledet_numero_serie: TStringField;
    QDetalledet_descripcion: TStringField;
    QDetalledet_problema: TMemoField;
    QDetalledet_fecha_entrada: TDateTimeField;
    QDetalledet_fecha_entrega: TDateTimeField;
    QDetalletec_codigo: TIntegerField;
    QDetalledet_monto: TBCDField;
    QDetalledet_comentario: TMemoField;
    QDetalledet_tiene_garantia: TStringField;
    QDetalletip_nombre: TStringField;
    QRBand1: TQRBand;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    lbEntrega: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText16: TQRDBText;
    QRBand3: TQRBand;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRBand4: TQRBand;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBRichText1: TQRDBRichText;
    QRBand5: TQRBand;
    QRLabel11: TQRLabel;
    QRLabel15: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRLabel16: TQRLabel;
    QOrdenusu_nombre: TStringField;
    QRDBRichText2: TQRDBRichText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel14: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    lbReimpresion: TQRLabel;
    qrlTelefono: TQRLabel;
    QRBand30: TQRBand;
    qrlUsuario: TQRLabel;
    QRDBText1: TQRDBText;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  ROrdenServicio: TROrdenServicio;

implementation

uses SIGMA01, MaskUtils;

{$R *.DFM}

procedure TROrdenServicio.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
  var telefono :String;
begin
  Telefono := QOrdenord_telefono.Value;

{20170710
 if not QOrdenord_telefono.IsNull then
    qrlTelefono.Caption := '('+copy(Telefono,1,3) + ')'+copy(Telefono,4,3)+'-'+copy(Telefono,4,4)
  else
    qrlTelefono.Caption :=''; //}
end;

procedure TROrdenServicio.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
 qrlUsuario.Caption :='Impreso por :'+ dm.getNombreUsuario(DM.Usuario) +
                       ' Fecha/Hora ' + FormatDateTime('dd/mm/yyyy hh:mm:ss AM/PM',now);
end;

end.
