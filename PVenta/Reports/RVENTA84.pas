unit RVENTA84;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, DB, ADODB;

type
  TRepRentabilidad = class(TQuickRep)
    QRBand1: TQRBand;
    lbTitulo: TQRLabel;
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
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRBand3: TQRBand;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QProductos: TADOQuery;
    QProductospro_codigo: TIntegerField;
    QProductospro_nombre: TStringField;
    QProductospro_costo: TBCDField;
    QProductospro_precio1: TBCDField;
    QProductospro_precio2: TBCDField;
    QProductospro_precio3: TBCDField;
    QProductospro_precio4: TBCDField;
    QProductosPrecio: TFloatField;
    QProductosRentabilidad: TFloatField;
    QProductospro_roriginal: TStringField;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    lbfamilia: TQRLabel;
    lbdepto: TQRLabel;
    lbmarca: TQRLabel;
    lbprov: TQRLabel;
    lbtipo: TQRLabel;
    QProductospro_selectivo_ad: TBCDField;
    QProductospro_selectivo_con: TBCDField;
    QProductospro_itbis: TStringField;
    QProductosItbis: TFloatField;
    QProductosImpuestos: TFloatField;
    QRBand4: TQRBand;
    QRExpr1: TQRExpr;
    QRExpr4: TQRExpr;
    QRLabel15: TQRLabel;
    QProductosTotalCosto: TFloatField;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    lbgerente: TQRLabel;
    QRLabel24: TQRLabel;
    QProductospro_costoempaque: TBCDField;
    QProductosTotalCostoEmp: TFloatField;
    QProductosItbisEmp: TFloatField;
    QRDBText12: TQRDBText;
    QRLabel27: TQRLabel;
    QRDBText13: TQRDBText;
    QProductosPrecioEmp: TFloatField;
    QRLabel4: TQRLabel;
    QRDBText6: TQRDBText;
    QProductosRentabilidadEmp: TFloatField;
    QRLabel29: TQRLabel;
    QRLabel3: TQRLabel;
    QProductospro_montoitbis: TBCDField;
    procedure QProductosCalcFields(DataSet: TDataSet);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public
    precio : string;
    incluiritbis : boolean;
  end;

var
  RepRentabilidad: TRepRentabilidad;

implementation

uses SIGMA01;

{$R *.DFM}

procedure TRepRentabilidad.QProductosCalcFields(DataSet: TDataSet);
var
  itbis : double;
begin
  if incluiritbis = true then itbis := QProductospro_montoitbis.Value else itbis := 0;
  
  if precio = 'Precio1 y Precio2' then
  begin
    QProductosPrecio.Value := QProductospro_precio1.Value;
    QProductosPrecioEmp.Value := QProductospro_precio2.Value;
  end
  else if precio = 'Precio1 y Precio4' then
  begin
    QProductosPrecio.Value := QProductospro_precio1.Value;
    QProductosPrecioEmp.Value := QProductospro_precio4.Value;
  end
  else if precio = 'Precio3 y Precio4' then
  begin
    QProductosPrecio.Value := QProductospro_precio3.Value;
    QProductosPrecioEmp.Value := QProductospro_precio4.Value;
  end;

  if QProductospro_itbis.Value = 'S' then
  begin
    QProductosItbis.Value := (QProductospro_costo.Value * itbis)/100;
    QProductosItbisEmp.Value := (QProductospro_costoempaque.Value * itbis)/100;
  end
  else
  begin
    QProductosItbis.Value := 0;
    QProductosItbisEmp.Value := 0;
  end;

  QProductosTotalCosto.Value      := QProductospro_costo.Value + QProductosItbis.Value;
  QProductosTotalCostoEmp.Value   := QProductospro_costoEmpaque.Value + QProductosItbisEmp.Value;

  if QProductosPrecio.Value > 0 then
    QProductosRentabilidad.Value    := QProductosPrecio.Value - QProductosTotalCosto.Value;
    
  if QProductosPrecioEmp.Value > 0 then
    QProductosRentabilidadEmp.Value := QProductosPrecioEmp.Value - QProductosTotalCostoEmp.Value;
end;

procedure TRepRentabilidad.QuickRepBeforePrint(Sender: TCustomQuickRep;
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
    dm.Query1.Parameters.ParamByName('mod').Value := 'RepRentabilidad';
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
end;

end.
