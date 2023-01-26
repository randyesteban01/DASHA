unit RLISTADOENVIO01;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, ADODB, dxmdaset;

type
  TRListadoEnvio = class(TQuickRep)
    DetailBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText9: TQRDBText;
    PageFooterBand1: TQRBand;
    qrlUsuario: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel11: TQRLabel;
    lbSuc: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel45: TQRLabel;
    lbEmp: TQRLabel;
    lbLocalidad: TQRLabel;
    lbTelefono: TQRLabel;
    lbRnc: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    qrlSoftware: TQRLabel;
    lbSucOrigen: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    lbFecha: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    lbCant: TQRLabel;
    QRLChofer: TQRLabel;
    QRLFicha: TQRLabel;
    QRLNombreChofer: TQRLabel;
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
    QEnviosFICHA: TStringField;
    QEnviosCHOFER: TStringField;
    dsEnvios: TDataSource;
    dxMemData1: TdxMemData;
    dxMemData1status: TStringField;
    dxMemData1fac_numero: TIntegerField;
    dxMemData1Fecha: TDateTimeField;
    dxMemData1Nombre_Recibe: TStringField;
    dxMemData1Telefono_Recibe: TStringField;
    dxMemData1Nombre_envia: TStringField;
    dxMemData1Telefono_envia: TStringField;
    dxMemData1Origen: TStringField;
    dxMemData1Descripcion: TStringField;
    QEnviosDescripcion2: TStringField;
    QEnviosDescripcionN: TStringField;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QEnviosCalcFields(DataSet: TDataSet);
  private

  public

  end;

var
  RListadoEnvio: TRListadoEnvio;

implementation

uses PVENTA230, SIGMA01;

{$R *.DFM}

procedure TRListadoEnvio.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  qrlUsuario.Caption :=dm.getNombreUsuario(DM.Usuario);
  lbFecha.Caption    := 'Fecha/Hora ' + FormatDateTime('dd/mm/yyyy hh:mm',now)
end;

procedure TRListadoEnvio.QEnviosCalcFields(DataSet: TDataSet);
begin
QEnviosDescripcionN.Text := Trim(QEnviosDescripcion.Text)+' '+QEnviosDescripcion2.Text;
end;

end.
