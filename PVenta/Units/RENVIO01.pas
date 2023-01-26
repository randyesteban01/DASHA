unit RENVIO01;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, ADODB;

type
  TRENVIO = class(TQuickRep)
    QRBand1: TQRBand;
    QRDBImage1: TQRDBImage;
    lbFactura: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRSysData1: TQRSysData;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRLabel28: TQRLabel;
    lbCliente: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText23: TQRDBText;
    QRLabel50: TQRLabel;
    QRLabel29: TQRLabel;
    QRDBText28: TQRDBText;
    QRLabel36: TQRLabel;
    QEnvios: TADOQuery;
    QEnviosemp_codigo: TIntegerField;
    QEnviossuc_codigo: TIntegerField;
    QEnviosfac_numero: TIntegerField;
    QEnviospro_codigo: TIntegerField;
    QEnviosIDEnvio: TIntegerField;
    QEnviosFecha: TDateTimeField;
    QEnviosCiudad_Origen: TStringField;
    QEnviosCiudad_Destino: TStringField;
    QEnviosNombre_envia: TStringField;
    QEnviosTelefono_Envia: TStringField;
    QEnviosNombre_Recibe: TStringField;
    QEnviosTelefono_Recibe: TStringField;
    QEnviosDescripcion: TStringField;
    QEnviosstatus: TStringField;
    QEnviosTFA_CODIGO: TIntegerField;
    QEnviosCAJ_CODIGO: TIntegerField;
    QEnviosFAC_MENSAJE1: TStringField;
    QEnviosFAC_MENSAJE2: TStringField;
    QEnviosFAC_MENSAJE3: TStringField;
    QEnviosenv_recibido: TStringField;
    QEnviosenv_rec_cedula: TStringField;
    QEnviosOrigen: TStringField;
    QEnviosDestino: TStringField;
    QEnviossuc_direccion: TStringField;
    QEnviossuc_localidad: TStringField;
    QEnviossuc_telefono: TStringField;
    QEnviossuc_rnc: TStringField;
    QEnviossuc_nombre: TStringField;
    QEnviossuc_fax: TStringField;
    DetailBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText10: TQRDBText;
    QRDBText1: TQRDBText;
    QRExpr1: TQRExpr;
    LUsuario: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel11: TQRLabel;
    QEnvioshora: TDateTimeField;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  RENVIO: TRENVIO;

implementation
uses SIGMA01, pventa230;
{$R *.DFM}

procedure TRENVIO.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  LUsuario.Caption := dm.NomUsu;
end;

end.
