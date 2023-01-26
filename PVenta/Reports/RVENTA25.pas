unit RVENTA25;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, DB, IBCustomDataSet,
  IBQuery, ADODB;

type
  TRRepPrecios = class(TQuickRep)
    QRBand1: TQRBand;
    lbTitulo: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel28: TQRLabel;
    lbFamilia: TQRLabel;
    lbDepto: TQRLabel;
    lbProveedor: TQRLabel;
    lbFecha: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    lbcodigo: TQRDBText;
    QRDBText12: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QProductos: TADOQuery;
    QProductosPRO_CODIGO: TIntegerField;
    QProductosPRO_EXISTENCIA: TFloatField;
    QProductosPRO_NOMBRE: TIBStringField;
    QProductosPRO_PRECIO1: TFloatField;
    QProductosPRO_PRECIO2: TFloatField;
    QProductosPRO_PRECIO3: TFloatField;
    QProductosPRO_PRECIO4: TFloatField;
    QProductosPRO_RFABRIC: TIBStringField;
    QProductosPRO_RORIGINAL: TIBStringField;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel4: TQRLabel;
    QProductosPRO_EXISTEMPAQUE: TFloatField;
    QRLabel12: TQRLabel;
    QProductospro_comision: TBCDField;
    QProductospro_comisiondescuento: TBCDField;
    QProductosComision1: TFloatField;
    QProductosComision2: TFloatField;
    QRLabel5: TQRLabel;
    QRDBText11: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel10: TQRLabel;
    lbtipo: TQRLabel;
    QProductospro_itbis: TStringField;
    QProductospro_selectivo_ad: TBCDField;
    QProductospro_selectivo_con: TBCDField;
    QProductosItbis: TFloatField;
    QRLabel16: TQRLabel;
    lbGerente: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QProductospro_costo: TBCDField;
    QProductospro_costoempaque: TBCDField;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QProductosCostoUnd: TFloatField;
    QProductosCostoEmp: TFloatField;
    QRDBText6: TQRDBText;
    QProductosexento_grabado: TStringField;
    QRLabel6: TQRLabel;
    lbmarca: TQRLabel;
    QRLabel8: TQRLabel;
    lbcolor: TQRLabel;
    QRLabel15: TQRLabel;
    lbpasillo: TQRLabel;
    QProductospro_montoitbis: TBCDField;
    PageFooterBand1: TQRBand;
    qrlUsuario: TQRLabel;
    procedure QProductosCalcFields(DataSet: TDataSet);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public
     Existencia, Costos, Impuestos : Boolean;
     precios : string;
  end;

var
  RRepPrecios: TRRepPrecios;

implementation

uses SIGMA01;


{$R *.DFM}

procedure TRRepPrecios.QProductosCalcFields(DataSet: TDataSet);
begin
  if QProductospro_itbis.Value = 'N' then
    QProductosexento_grabado.Value := 'E'
  else
    QProductosexento_grabado.Value := '';

  QProductosComision1.Value := (QProductosPRO_PRECIO1.Value * QProductospro_comision.Value)/100;
  QProductosComision2.Value := (QProductosPRO_PRECIO1.Value * QProductospro_comisiondescuento.Value)/100;
  if Impuestos = True then
  begin
    if QProductospro_itbis.Value = 'S' then
    begin
      QProductosCostoUnd.Value := QProductospro_costo.Value + ((QProductospro_costo.Value * QProductospro_montoitbis.Value)/100);
      QProductosCostoEmp.Value := QProductospro_costoempaque.Value + ((QProductospro_costoempaque.Value * QProductospro_montoitbis.Value)/100);
    end
    else
    begin
      QProductosCostoUnd.Value := QProductospro_costo.Value;;
      QProductosCostoEmp.Value := QProductospro_costoempaque.Value;;
    end;
  end
  else
  begin
    QProductosCostoUnd.Value := QProductospro_costo.Value;;
    QProductosCostoEmp.Value := QProductospro_costoempaque.Value;;
  end;
end;

procedure TRRepPrecios.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRDBText9.Enabled  := Existencia;
  QRDBText7.Enabled  := Existencia;
  QRDBText13.Enabled := Costos;
  QRDBText14.Enabled := Costos;

  if not Existencia then QRDBText8.Width := 423;
end;

procedure TRRepPrecios.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
    QRDBText9.Left    := 373;
    QRLabel4.Left     := 372;
    QRLabel9.Left     := 372;
    QRLabel13.Left    := 497;
    QRLabel14.Left    := 497;
    QRDBText7.Left    := 496;

    QRDBText8.Width   := 249;

  if dm.QParametrosPAR_CODIGOPRODUCTO.Value = 'I' then
  begin
    lbcodigo.DataField := 'pro_codigo';
    QRLabel3.Caption   := 'CODIGO';
  end
  else if dm.QParametrosPAR_CODIGOPRODUCTO.Value = 'O' then
  begin
    lbcodigo.DataField := 'pro_roriginal';
    QRLabel3.Caption   := 'REFERENCIA';
  end;

  if precios = 'Precio1' then
  begin
    QRLabel12.Caption    := 'PRECIO 1';
    QRLabel5.Enabled     := false;
    QRDBText12.DataField := 'PRO_PRECIO1';
    QRDBText11.Enabled   := false;
  end
  else if precios = 'Precio2' then
  begin
    QRLabel12.Caption    := 'PRECIO 2';
    QRLabel5.Enabled     := false;
    QRDBText12.DataField := 'PRO_PRECIO2';
    QRDBText11.Enabled   := false;
  end
  else if precios = 'Precio3' then
  begin
    QRLabel12.Caption    := 'PRECIO 3';
    QRLabel5.Enabled     := false;
    QRDBText12.DataField := 'PRO_PRECIO3';
    QRDBText11.Enabled   := false;
  end
  else if precios = 'Precio4' then
  begin
    QRLabel12.Caption    := 'PRECIO 4';
    QRLabel5.Enabled     := false;
    QRDBText12.DataField := 'PRO_PRECIO4';
    QRDBText11.Enabled   := false;
  end
  else if precios = 'Precio1 y Precio2' then
  begin
    QRLabel12.Caption := 'PRECIO 1';
    QRLabel5.Caption  := 'PRECIO 2';
    QRDBText12.DataField := 'PRO_PRECIO1';
    QRDBText11.DataField := 'PRO_PRECIO2';
  end
  else if precios = 'Precio1 y Precio3' then
  begin
    QRLabel12.Caption := 'PRECIO 1';
    QRLabel5.Caption  := 'PRECIO 3';
    QRDBText12.DataField := 'PRO_PRECIO1';
    QRDBText11.DataField := 'PRO_PRECIO3';
  end
  else if precios = 'Precio1 y Precio4' then
  begin
    QRLabel12.Caption := 'PRECIO 1';
    QRLabel5.Caption  := 'PRECIO 4';
    QRDBText12.DataField := 'PRO_PRECIO1';
    QRDBText11.DataField := 'PRO_PRECIO4';
  end
  else if precios = 'Precio2 y Precio3' then
  begin
    QRLabel12.Caption := 'PRECIO 2';
    QRLabel5.Caption  := 'PRECIO 3';
    QRDBText12.DataField := 'PRO_PRECIO2';
    QRDBText11.DataField := 'PRO_PRECIO3';
  end
  else if precios = 'Precio2 y Precio4' then
  begin
    QRLabel12.Caption := 'PRECIO 2';
    QRLabel5.Caption  := 'PRECIO 4';
    QRDBText12.DataField := 'PRO_PRECIO2';
    QRDBText11.DataField := 'PRO_PRECIO4';
  end
  else if precios = 'Precio3 y Precio4' then
  begin
    QRLabel12.Caption := 'PRECIO 3';
    QRLabel5.Caption  := 'PRECIO 4';
    QRDBText12.DataField := 'PRO_PRECIO3';
    QRDBText11.DataField := 'PRO_PRECIO4';
  end;

  QRLabel4.Enabled  := Existencia;
  QRLabel9.Enabled  := Existencia;
  QRLabel13.Enabled  := Existencia;
  QRLabel14.Enabled  := Existencia;
  if Costos = false then
  begin
    QRLabel17.Enabled := False;
    QRLabel18.Enabled := False;
    QRLabel22.Enabled := False;
    QRLabel23.Enabled := False;
    QRDBText9.Left    := QRDBText9.Left + 64;
    QRLabel4.Left     := QRLabel4.Left  + 64;
    QRLabel9.Left     := QRLabel9.Left  + 64;
    QRLabel13.Left    := QRLabel13.Left + 64;
    QRLabel14.Left    := QRLabel14.Left + 64;
    QRDBText7.Left    := QRDBText7.Left + 64;
    QRDBText8.Width   := QRDBText8.Width + 64 + 64;


  end;
  qrlUsuario.Caption :='Impreso por :'+ dm.getNombreUsuario(DM.Usuario) +
                       ' Fecha/Hora ' + FormatDateTime('dd/mm/yyyy hh:mm:ss AM/PM',now);
end;

end.
