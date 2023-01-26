unit RVENTA99;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, DB, IBCustomDataSet,
  IBQuery, ADODB;

type
  TRepVentaFamiliaDepto = class(TQuickRep)
    QRBand1: TQRBand;
    lbTitulo: TQRLabel;
    lbFecha: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRLabel18: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel31: TQRLabel;
    QProductos: TADOQuery;
    QFamilia: TADOQuery;
    dsFamilia: TDataSource;
    QRSubDetail1: TQRSubDetail;
    QRDBText10: TQRDBText;
    QRDBText14: TQRDBText;
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
    QRLabel6: TQRLabel;
    QRDBText13: TQRDBText;
    lbprod: TQRDBText;
    QRBand3: TQRBand;
    QRDBText18: TQRDBText;
    QProductosfam_codigo: TIntegerField;
    QProductospro_codigo: TIntegerField;
    QProductospro_roriginal: TStringField;
    QProductospro_nombre: TStringField;
    QProductosmar_nombre: TStringField;
    QProductositbis: TBCDField;
    QProductosdescuento: TBCDField;
    QProductoscantidad: TBCDField;
    QFamiliaemp_codigo: TIntegerField;
    QFamiliafam_codigo: TIntegerField;
    QFamiliasuc_codigo: TIntegerField;
    QFamiliafam_nombre: TStringField;
    QProductostotal: TBCDField;
    QRBand4: TQRBand;
    QRExpr1: TQRExpr;
    QRLabel3: TQRLabel;
    QRBand5: TQRBand;
    QRLabel4: TQRLabel;
    QRExpr2: TQRExpr;
    QDeptos: TADOQuery;
    QDeptosemp_codigo: TIntegerField;
    QDeptosfam_codigo: TIntegerField;
    QDeptossuc_codigo: TIntegerField;
    QDeptosdep_codigo: TIntegerField;
    QDeptosdep_nombre: TStringField;
    QRSubDetail2: TQRSubDetail;
    QRDBText6: TQRDBText;
    QRBand6: TQRBand;
    QRLabel5: TQRLabel;
    QRExpr3: TQRExpr;
    dsDeptos: TDataSource;
    QRExcelFilter1: TQRExcelFilter;
    QRPDFFilter1: TQRPDFFilter;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLSUCURSAL: TQRLabel;
    procedure QRBand3AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  RepVentaFamiliaDepto: TRepVentaFamiliaDepto;

implementation

uses SIGMA01;


{$R *.DFM}

procedure TRepVentaFamiliaDepto.QRBand3AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
{  //QProductos.Close;
  QProductos.Parameters.ParamByName('suc_codigo').Value := QFamiliaemp_codigo.Value;
  QProductos.Parameters.ParamByName('emp_codigo').Value := QFamiliasuc_codigo.Value;
  QProductos.Parameters.ParamByName('fam_codigo').Value := QFamiliafam_codigo.Value;
  //QProductos.open;}
end;

procedure TRepVentaFamiliaDepto.QuickRepBeforePrint(Sender: TCustomQuickRep;
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
    dm.Query1.Parameters.ParamByName('mod').Value := 'RepVentaFamiliaDepto';
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

  if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'I' then
    lbprod.DataField := 'PRO_CODIGO'
  else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'F' then
    lbprod.DataField := 'pro_rfabric'
  else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'O' then
    lbprod.DataField := 'pro_roriginal';
end;

end.
