unit RVENTA106;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, DB, IBCustomDataSet,
  IBQuery, ADODB;

type
  TRepProdOferta = class(TQuickRep)
    QRBand1: TQRBand;
    lbTitulo: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel6: TQRLabel;
    lbfamilia: TQRLabel;
    lbFecha: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRLabel21: TQRLabel;
    QRBand3: TQRBand;
    QRDBText10: TQRDBText;
    QRBand4: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel15: TQRLabel;
    lbdepto: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    lbmarca: TQRLabel;
    QProductos: TADOQuery;
    QRLabel10: TQRLabel;
    lbCliente: TQRDBText;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    lbproveedor: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QProductospro_codigo: TIntegerField;
    QProductospro_roriginal: TStringField;
    QProductospro_nombre: TStringField;
    QProductospro_precio1: TBCDField;
    QProductospro_existencia: TBCDField;
    QRLabel19: TQRLabel;
    QRExpr2: TQRExpr;
    QRLabel3: TQRLabel;
    QRDBText7: TQRDBText;
    dsProducto: TDataSource;
    QOferta: TADOQuery;
    QProductosemp_codigo: TIntegerField;
    QOfertacantidad: TBCDField;
    QOfertaprecio: TBCDField;
    QOfertaregalo: TBCDField;
    QOfertafecha_ini: TDateTimeField;
    QOfertafecha_fin: TDateTimeField;
    QRSubDetail1: TQRSubDetail;
    QRLabel7: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText12: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel14: TQRLabel;
    lbgerente: TQRLabel;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  RepProdOferta: TRepProdOferta;

implementation

uses SIGMA01;


{$R *.DFM}

procedure TRepProdOferta.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
var
  a : integer;
  cambiar : TQRLabel;
begin
  if dm.QParametrosIdioma.AsString = 'I' then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select objeto, ingles from Traduccion where modulo = :mod');
    dm.Query1.Parameters.ParamByName('mod').Value := 'RepProdOferta';
    dm.Query1.Open;
    dm.Query1.DisableControls;
    while not dm.Query1.Eof do
    begin
      cambiar := (FindComponent(dm.Query1.FieldByName('objeto').AsString) as TQRLabel);
      cambiar.Caption := dm.Query1.FieldByName('ingles').AsString;
      dm.Query1.Next;
    end;
    dm.Query1.EnableControls;
  end;

  if dm.QParametrosPAR_CODIGOCLIENTE.Value = 'I' then
    lbCliente.DataField := 'CLI_CODIGO'
  else
    lbCliente.DataField := 'CLI_REFERENCIA';
end;

end.
