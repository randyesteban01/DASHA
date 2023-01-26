unit RVENTA56;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, DB, IBCustomDataSet,
  IBQuery, ADODB;

type
  TRCuadre = class(TQuickRep)
    QRBand1: TQRBand;
    lbTitulo: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand3: TQRBand;
    lbFecha: TQRLabel;
    lbCajero: TQRLabel;
    lbGrupo: TQRLabel;
    QForma: TADOQuery;
    dsForma: TDataSource;
    QFormaEMP_CODIGO: TIntegerField;
    QFormaFPA_CODIGO: TIntegerField;
    QFormaFPA_NOMBRE: TIBStringField;
    QRBand5: TQRBand;
    QRDBText18: TQRDBText;
    QDetalle: TADOQuery;
    QDetalleid: TAutoIncField;
    QDetalletipo: TStringField;
    QDetallesecuencia: TIntegerField;
    QDetalletfa_codigo: TIntegerField;
    QDetallefac_forma: TStringField;
    QDetalledescripcion: TStringField;
    QDetallenumero: TIntegerField;
    QDetallefecha: TDateTimeField;
    QDetallemonto: TBCDField;
    QDetallestatus: TStringField;
    QDetalleforma_pago: TStringField;
    QDetallecodigo_forma: TIntegerField;
    QRSubDetail1: TQRSubDetail;
    QRBand2: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QTipo: TADOQuery;
    QTiposecuencia: TIntegerField;
    QTipodescripcion: TStringField;
    dsTipo: TDataSource;
    QTipocodigo_forma: TIntegerField;
    QRSubDetail2: TQRSubDetail;
    QRDBText10: TQRDBText;
    QRExpr1: TQRExpr;
    QRBand4: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel8: TQRLabel;
    lbinicial: TQRLabel;
    QRLabel9: TQRLabel;
    lbTotal: TQRLabel;
    QRBand6: TQRBand;
    QRExpr3: TQRExpr;
    QRDBText11: TQRDBText;
    QRLabel11: TQRLabel;
    lbCobrado: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText12: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QSucursal: TADOQuery;
    QSucursalsuc_nombre: TStringField;
    QSucursalsuc_localidad: TStringField;
    QSucursalsuc_telefono: TStringField;
    QSucursalsuc_rnc: TStringField;
    QSucursalsuc_direccion: TStringField;
    QRLabel13: TQRLabel;
    QDetallenombre: TStringField;
    QDetalleconcepto: TStringField;
    QRDBText13: TQRDBText;
    QRLabel14: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel15: TQRLabel;
    lbitbis: TQRLabel;
    QRLabel16: TQRLabel;
    lbCodigo: TQRDBText;
    QDetallecli_codigo: TIntegerField;
    QDetallecli_ref: TStringField;
    QRLabel17: TQRLabel;
    lbretencion: TQRLabel;
    lbcajero2: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    lbusuario: TQRLabel;
    QRExpr2: TQRExpr;
    QRDBText15: TQRDBText;
    lbHora: TQRLabel;
    lbUsuario2: TQRLabel;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public
    Total : Double;
  end;

var
  RCuadre: TRCuadre;

implementation

uses SIGMA01;


{$R *.DFM}

procedure TRCuadre.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select usu_nombre from usuarios where usu_codigo = :usu');
  dm.Query1.Parameters.ParamByName('usu').Value := dm.Usuario;
  dm.Query1.Open;
  lbusuario.Caption := dm.Query1.FieldByName('usu_nombre').AsString;
  lbcajero2.Caption := lbCajero.Caption;

  Total := 0;
  if dm.QParametrosPAR_CODIGOCLIENTE.Value = 'R' then lbCodigo.DataField := 'cli_ref';

  lbHora.Caption := TimeToStr(Now);
  lbUsuario2.Caption := DM.QUsuariosUSU_NOMBRE.Text;
end;

procedure TRCuadre.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  PrintBand := QTipo.RecordCount > 0;
end;

end.
