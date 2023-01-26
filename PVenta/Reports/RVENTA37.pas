unit RVENTA37;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, Db, IBCustomDataSet,
  IBQuery, ADODB;

type
  TREntradaAlm = class(TQuickRep)
    QRBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRBand4: TQRBand;
    QRLabel21: TQRLabel;
    QRDBText18: TQRDBText;
    QRLabel22: TQRLabel;
    QRShape9: TQRShape;
    QRLabel23: TQRLabel;
    QRShape10: TQRShape;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRLabel28: TQRLabel;
    lbCliente: TQRDBText;
    QEntrada: TADOQuery;
    QEntradaEMP_CODIGO: TIntegerField;
    QEntradaENT_CONCEPTO: TIBStringField;
    QEntradaENT_FECHA: TDateTimeField;
    QEntradaENT_ITBIS: TFloatField;
    QEntradaENT_NUMERO: TIntegerField;
    QEntradaENT_STATUS: TIBStringField;
    QEntradaENT_TOTAL: TFloatField;
    QEntradaSUP_CODIGO: TIntegerField;
    QEntradaALM_CODIGO: TIntegerField;
    QEntradaUSU_CODIGO: TIntegerField;
    dsEntrada: TDataSource;
    QDetalle: TADOQuery;
    QDetalleDET_CANTIDAD: TFloatField;
    QDetalleDET_CONITBIS: TIBStringField;
    QDetalleDET_COSTO: TFloatField;
    QDetalleDET_ITBIS: TFloatField;
    QDetalleDET_PRECIO: TFloatField;
    QDetalleDET_SECUENCIA: TIntegerField;
    QDetalleEMP_CODIGO: TIntegerField;
    QDetalleENT_NUMERO: TIntegerField;
    QDetallePRO_BARRA: TIBStringField;
    QDetallePRO_CODIGO: TIntegerField;
    QDetallePRO_NOMBRE: TIBStringField;
    QDetallePRO_RFABRIC: TIBStringField;
    QDetallePRO_RORIGINAL: TIBStringField;
    QDetalleValor: TFloatField;
    QEntradaALM_NOMBRE: TIBStringField;
    lbSup: TQRLabel;
    QDetalleDET_MEDIDA: TIBStringField;
    QEntradasuc_codigo: TIntegerField;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    lbReimpresion: TQRLabel;
    ChildBand1: TQRChildBand;
    QRRichText1: TQRRichText;
    QSerie: TADOQuery;
    QSerieser_numero: TStringField;
    dsDetalle: TDataSource;
    QDetallesuc_codigo: TIntegerField;
    QDetalleCalcDesc: TFloatField;
    QDetallePrecioItbis: TFloatField;
    QDetalleCalcItbis: TFloatField;
    QRLabel12: TQRLabel;
    QRExpr1: TQRExpr;
    QRDBText9: TQRDBText;
    QRLabel13: TQRLabel;
    QRDBText14: TQRDBText;
    QEntradausu_nombre: TStringField;
    QDetallepro_cantempaque: TBCDField;
    QDetalledet_costound_ant: TBCDField;
    QDetalledet_costoemp_ant: TBCDField;
    QDetallepro_beneficio: TBCDField;
    QDetallepro_beneficio2: TBCDField;
    QDetallepro_beneficio3: TBCDField;
    QDetallepro_beneficio4: TBCDField;
    QDetallepro_precio1: TBCDField;
    QDetallepro_precio2: TBCDField;
    QDetallepro_precio3: TBCDField;
    QDetallepro_precio4: TBCDField;
    QDetalledet_oferta: TBCDField;
    QDetallepro_detallado: TStringField;
    QDetalledet_cambiarprecio: TStringField;
    QDetalleCalcCosto: TFloatField;
    QDetalledet_costound: TBCDField;
    QDetalledet_costoemp: TBCDField;
    QDetalleCalcCostoemp: TFloatField;
    QDetalleValorItbisUnd: TFloatField;
    QDetalleValorItbisEmp: TFloatField;
    QDetalleCostoNeto: TFloatField;
    QDetallePrecioItbisEmp: TFloatField;
    QDetalleCalcItbisEmp: TFloatField;
    QDetalleCalcDescEmp: TFloatField;
    QDetalleValorEmp: TFloatField;
    QRDBText10: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText28: TQRDBText;
    lbProd: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText29: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel10: TQRLabel;
    qSucursal: TADOQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    BlobField1: TBlobField;
    dsSucursal: TDataSource;
    procedure QDetalleCalcFields(DataSet: TDataSet);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure ChildBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QEntradaAfterOpen(DataSet: TDataSet);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  REntradaAlm: TREntradaAlm;

implementation

uses SIGMA01;


{$R *.DFM}

procedure TREntradaAlm.QDetalleCalcFields(DataSet: TDataSet);
var
  Venta, NumItbis : Double;
  VentaEmp, NumItbisEmp : Double;
begin
  if QDetalleDET_CONITBIS.Value = 'S' then
  begin
    QDetalleCalcCosto.Value    := (QDetalleDET_COSTOUND.Value * QDetalleDET_ITBIS.Value)/100;
    QDetalleCalcCostoemp.Value := (QDetalleDET_COSTOEMP.Value * QDetalleDET_ITBIS.Value)/100;
  end
  else
  begin
    QDetalleCalcCosto.Value    := 0;
    QDetalleCalcCostoemp.Value := 0;
  end;
  QDetalleValorItbisUnd.value := QDetalleCalcCosto.Value + QDetalleDET_COSTOUND.Value;
  QDetalleValorItbisEmp.value := QDetalleCalcCostoemp.Value + QDetalleDET_COSTOEMP.Value;

  if QDetalledet_medida.AsString = 'Und' then
    QDetalleCostoNeto.Value := QDetalleDET_COSTOUND.Value + QDetalleCalcCosto.Value
  else
    QDetalleCostoNeto.Value := QDetalleDET_COSTOEMP.Value + QDetalleCalcCostoEmp.Value;


  //Unidad
  if QDetalleDET_CONITBIS.value = 'S' then
  begin
    NumItbis := strtofloat(format('%10.2f',[(QDetalleDET_ITBIS.asfloat/100)+1]));
    Venta    := QDetalleDET_COSTOUND.value;
    QDetallePrecioItbis.value := Venta;
    QDetalleCalcItbis.value   := ((Venta-QDetalleCalcDesc.value)*QDetalleDET_ITBIS.Value)/100;
    QDetalleValor.value       := ((Venta-QDetalleCalcDesc.value))*QDetalleDET_CANTIDAD.value;
  end
  else
  begin
    Venta := QDetalleDET_COSTOUND.value;
    QDetallePrecioItbis.value := Venta;
    QDetalleValor.value       := (Venta-QDetalleCalcDesc.value)*QDetalleDET_CANTIDAD.value;
    QDetalleCalcItbis.value   := 0;
  end;

  //Empaque
  if QDetalleDET_CONITBIS.value = 'S' then
  begin
    NumItbisEmp := strtofloat(format('%10.2f',[(QDetalleDET_ITBIS.asfloat/100)+1]));
    VentaEmp    := QDetalleDET_COSTOEMP.value;
    QDetallePrecioItbisEmp.value := VentaEmp;
    QDetalleCalcItbisEmp.value   := ((VentaEmp-QDetalleCalcDescEmp.value)*QDetalleDET_ITBIS.Value)/100;
    QDetalleValorEmp.value       := ((VentaEmp-QDetalleCalcDescEmp.value))*QDetalleDET_CANTIDAD.value;
  end
  else
  begin
    VentaEmp := QDetalleDET_COSTOEMP.value;
    QDetallePrecioItbisEmp.value := VentaEmp;
    QDetalleValorEmp.value       := (VentaEmp-QDetalleCalcDescEmp.value)*QDetalleDET_CANTIDAD.value;
    QDetalleCalcItbisEmp.value   := 0;
  end;
  if QDetalleDET_MEDIDA.Value = 'Emp' then QDetalleValor.Value := QDetalleValorEmp.Value;
end;

procedure TREntradaAlm.QuickRepBeforePrint(Sender: TCustomQuickRep;
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
    dm.Query1.Parameters.ParamByName('mod').Value := 'REntradaAlm';
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
     lbProd.DataField := 'PRO_CODIGO'
  else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'F' then
     lbProd.DataField := 'PRO_RFABRIC'
  else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'O' then
     lbProd.DataField := 'PRO_RORIGINAL';

  if not QEntradaSUP_CODIGO.IsNull then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select sup_nombre from proveedores');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and sup_codigo = :sup');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.Parameters.ParamByName('sup').Value := QEntradaSUP_CODIGO.Value;
    dm.Query1.Open;
    lbSup.Caption := dm.Query1.FieldByName('sup_nombre').AsString;
  end
  else
    lbSup.Caption := ' ';
end;

procedure TREntradaAlm.ChildBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  PrintBand := QSerie.RecordCount > 0;
  if QSerie.RecordCount > 0 then
  begin
    QSerie.First;
    while not QSerie.Eof do
    begin
      QRRichText1.Lines.Add('SN#: '+QSerieser_numero.Value);
      QSerie.next;
    end;
  end;
end;

procedure TREntradaAlm.QEntradaAfterOpen(DataSet: TDataSet);
begin
  QSerie.Open;
  qSucursal.Open;
end;

procedure TREntradaAlm.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if (QDetallepro_precio2.Value = 0) or (QDetallepro_precio2.IsNull) then
  begin
    if (QDetallepro_precio3.Value = 0) or (QDetallepro_precio3.IsNull) then
      QRDBText29.DataField := 'pro_precio4'
    else
      QRDBText29.DataField := 'pro_precio3';
  end
  else
  begin
    if (QDetallepro_precio3.Value = 0) or (QDetallepro_precio3.IsNull) then
      QRDBText29.DataField := 'pro_precio4'
    else
      QRDBText29.DataField := 'pro_precio3';
  end;

  if (StrToFloat(Format('%10.2F',[QDetalleDET_COSTOUND.Value])) <>
  StrToFloat(Format('%10.2F',[QDetalledet_costound_ant.Value]))) or
  (StrToFloat(Format('%10.2F',[QDetalleDET_COSTOEMP.Value])) <>
  StrToFloat(Format('%10.2F',[QDetalledet_costoemp_ant.Value]))) then
  begin
    lbprod.Font.Style := lbprod.Font.Style + [fsBold];
    QRDBText10.Font.Style := QRDBText10.Font.Style + [fsBold];
    QRDBText28.Font.Style := QRDBText28.Font.Style + [fsBold];
    QRDBText25.Font.Style := QRDBText25.Font.Style + [fsBold];
    QRDBText24.Font.Style := QRDBText24.Font.Style + [fsBold];
    QRDBText11.Font.Style := QRDBText11.Font.Style + [fsBold];
    QRDBText29.Font.Style := QRDBText29.Font.Style + [fsBold];
  end
  else
  begin
    lbprod.Font.Style := lbprod.Font.Style - [fsBold];
    QRDBText10.Font.Style := QRDBText10.Font.Style - [fsBold];
    QRDBText28.Font.Style := QRDBText28.Font.Style - [fsBold];
    QRDBText25.Font.Style := QRDBText25.Font.Style - [fsBold];
    QRDBText24.Font.Style := QRDBText24.Font.Style - [fsBold];
    QRDBText11.Font.Style := QRDBText11.Font.Style - [fsBold];
    QRDBText29.Font.Style := QRDBText29.Font.Style - [fsBold];
  end;

  QRRichText1.Lines.Clear;
end;

end.
