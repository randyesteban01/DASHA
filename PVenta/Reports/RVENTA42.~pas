unit RVENTA42;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, DB, IBCustomDataSet,
  IBQuery, ADODB;

type
  TRExistProd = class(TQuickRep)
    QRBand1: TQRBand;
    lbTitulo: TQRLabel;
    lbFecha: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRBand3: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    lbAlmacen: TQRLabel;
    QProductos: TADOQuery;
    QProductosPRO_CODIGO: TIntegerField;
    QProductosPRO_EXISTENCIA: TFloatField;
    QProductosPRO_INVINICIAL: TFloatField;
    QProductosPRO_NOMBRE: TIBStringField;
    QProductosPRO_RFABRIC: TIBStringField;
    QProductosPRO_RORIGINAL: TIBStringField;
    lbCodigo: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QEntradas: TADOQuery;
    QProductosPRO_INVFISICO: TFloatField;
    dsProd: TDataSource;
    QProductosEMP_CODIGO: TIntegerField;
    QEntradasENT_NUMERO: TIntegerField;
    QEntradasENT_FECHA: TDateTimeField;
    QEntradasCANTIDAD: TFloatField;
    QRSubDetail1: TQRSubDetail;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRSubDetail2: TQRSubDetail;
    QRSubDetail3: TQRSubDetail;
    QRSubDetail4: TQRSubDetail;
    QConduces: TADOQuery;
    QConducesCON_NUMERO: TIntegerField;
    QConducesCON_FECHA: TDateTimeField;
    QConducesCANTIDAD: TFloatField;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QFacturas: TADOQuery;
    QFacturasFAC_FORMA: TIBStringField;
    QFacturasTFA_CODIGO: TIntegerField;
    QFacturasFAC_NUMERO: TIntegerField;
    QFacturasFAC_FECHA: TDateTimeField;
    QFacturasCANTIDAD: TFloatField;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRBand4: TQRBand;
    QRLabel9: TQRLabel;
    QRExpr1: TQRExpr;
    QRBand5: TQRBand;
    QRLabel10: TQRLabel;
    QRExpr2: TQRExpr;
    QRBand6: TQRBand;
    QRLabel11: TQRLabel;
    QRExpr3: TQRExpr;
    QRBand7: TQRBand;
    QRLabel12: TQRLabel;
    QRExpr4: TQRExpr;
    QDevol: TADOQuery;
    QDevolDEV_NUMERO: TIntegerField;
    QDevolDEV_FECHA: TDateTimeField;
    QDevolCANTIDAD: TFloatField;
    QRLabel5: TQRLabel;
    QProductosPRO_EXISTEMPAQUE: TFloatField;
    QEntradasDET_MEDIDA: TIBStringField;
    QDevolDET_MEDIDA: TIBStringField;
    QConducesDET_MEDIDA: TIBStringField;
    QFacturasDET_MEDIDA: TIBStringField;
    QCompras: TADOQuery;
    QComprasSUP_NOMBRE: TIBStringField;
    QComprasFAC_NUMERO: TIBStringField;
    QComprasFAC_FECHA: TDateTimeField;
    QComprasDET_MEDIDA: TIBStringField;
    QComprasCANTIDAD: TFloatField;
    QRSubDetail5: TQRSubDetail;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRDBText29: TQRDBText;
    QRBand8: TQRBand;
    QRLabel16: TQRLabel;
    QRExpr5: TQRExpr;
    QDevCompra: TADOQuery;
    QDevCompraSUP_NOMBRE: TIBStringField;
    QDevCompraDEV_NUMERO: TIntegerField;
    QDevCompraDEV_FECHA: TDateTimeField;
    QDevCompraDET_MEDIDA: TIBStringField;
    QDevCompraCANTIDAD: TFloatField;
    QRSubDetail6: TQRSubDetail;
    QRBand9: TQRBand;
    QRLabel17: TQRLabel;
    QRExpr6: TQRExpr;
    QRDBText31: TQRDBText;
    QRDBText32: TQRDBText;
    QRDBText33: TQRDBText;
    QRDBText35: TQRDBText;
    QRDBText36: TQRDBText;
    QTickets: TADOQuery;
    QTicketsTICKET: TIntegerField;
    QTicketsFECHA: TDateTimeField;
    QTicketsCANTIDAD: TFloatField;
    QRSubDetail7: TQRSubDetail;
    QRDBText37: TQRDBText;
    QRDBText38: TQRDBText;
    QRDBText39: TQRDBText;
    QTicketsMedida: TStringField;
    QRBand10: TQRBand;
    QRLabel18: TQRLabel;
    QRExpr7: TQRExpr;
    QRLabel15: TQRLabel;
    QEntradasEmp: TFloatField;
    QEntradasUnd: TFloatField;
    QDevolEmp: TFloatField;
    QDevolUnd: TFloatField;
    QConducesEmp: TFloatField;
    QConducesUnd: TFloatField;
    QFacturasEmp: TFloatField;
    QFacturasUnd: TFloatField;
    QComprasEmp: TFloatField;
    QComprasUnd: TFloatField;
    QDevCompraEmp: TFloatField;
    QDevCompraUnd: TFloatField;
    QTicketsEmp: TFloatField;
    QTicketsUnd: TFloatField;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel23: TQRLabel;
    QEntradasUSU_NOMBRE: TStringField;
    QRDBText41: TQRDBText;
    QRDBText42: TQRDBText;
    QRDBText43: TQRDBText;
    QRDBText44: TQRDBText;
    QRDBText45: TQRDBText;
    QRDBText46: TQRDBText;
    QDevolUSU_NOMBRE: TStringField;
    QConducesUSU_NOMBRE: TStringField;
    QFacturasUSU_NOMBRE: TStringField;
    QComprasUSU_NOMBRE: TStringField;
    QDevCompraUSU_NOMBRE: TStringField;
    QRLabel13: TQRLabel;
    QDevoldev_nombre: TStringField;
    QRDBText8: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QConducescon_nombre: TStringField;
    QFacturasfac_nombre: TStringField;
    QLiquidacion: TADOQuery;
    QLiquidacionliq_numero: TIntegerField;
    QLiquidacionliq_fecha: TDateTimeField;
    QLiquidacionsup_nombre: TStringField;
    QLiquidacionusu_nombre: TStringField;
    QLiquidaciondet_medida: TStringField;
    QLiquidacioncantidad: TBCDField;
    QRLabel14: TQRLabel;
    QRLabel19: TQRLabel;
    QRDBText25: TQRDBText;
    QRLabel20: TQRLabel;
    QRLabel24: TQRLabel;
    QRDBText26: TQRDBText;
    QRDBText30: TQRDBText;
    QRExpr8: TQRExpr;
    QRExpr9: TQRExpr;
    QRDBText34: TQRDBText;
    QRExpr10: TQRExpr;
    QRDBText40: TQRDBText;
    QRExpr11: TQRExpr;
    QRDBText47: TQRDBText;
    QRExpr12: TQRExpr;
    QRDBText48: TQRDBText;
    QRExpr13: TQRExpr;
    QRDBText49: TQRDBText;
    QRExpr14: TQRExpr;
    QEntradasent_concepto: TStringField;
    QRDBText50: TQRDBText;
    QTicketsDescripcion: TStringField;
    QTicketscaja: TIntegerField;
    QTicketsusu_nombre: TStringField;
    QRDBText51: TQRDBText;
    QRSubDetail8: TQRSubDetail;
    QRBand11: TQRBand;
    QTransferSalida: TADOQuery;
    QTransferSalidatra_numero: TIntegerField;
    QTransferSalidatra_fecha: TDateTimeField;
    QTransferSalidatra_concepto: TStringField;
    QTransferSalidausu_nombre: TStringField;
    QTransferSalidadet_medida: TStringField;
    QTransferSalidacantidad: TBCDField;
    QRDBText52: TQRDBText;
    QRDBText53: TQRDBText;
    QRDBText54: TQRDBText;
    QRDBText55: TQRDBText;
    QRDBText56: TQRDBText;
    QTransferSalidaUnidad: TFloatField;
    QTransferSalidaEmpaque: TFloatField;
    QRDBText57: TQRDBText;
    QRExpr15: TQRExpr;
    QRExpr16: TQRExpr;
    QTransferEntrada: TADOQuery;
    QTransferEntradatra_numero: TIntegerField;
    QTransferEntradatra_fecha: TDateTimeField;
    QTransferEntradatra_concepto: TStringField;
    QTransferEntradausu_nombre: TStringField;
    QTransferEntradadet_medida2: TStringField;
    QTransferEntradacantidad: TBCDField;
    QRSubDetail9: TQRSubDetail;
    QRBand12: TQRBand;
    QRDBText58: TQRDBText;
    QRDBText59: TQRDBText;
    QRDBText60: TQRDBText;
    QRDBText61: TQRDBText;
    QRDBText62: TQRDBText;
    QRDBText63: TQRDBText;
    QTransferEntradaUnidad: TFloatField;
    QTransferEntradaEmpaque: TFloatField;
    QRExpr17: TQRExpr;
    QRExpr18: TQRExpr;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    PageFooterBand1: TQRBand;
    qrlUsuario: TQRLabel;
    QRBand13: TQRBand;
    QRExpr19: TQRExpr;
    QRLabel27: TQRLabel;
    QRSubDetail10: TQRSubDetail;
    QRDBText64: TQRDBText;
    QRDBText65: TQRDBText;
    QRDBText66: TQRDBText;
    QRDBText68: TQRDBText;
    QRDBText69: TQRDBText;
    qAjusteInv: TADOQuery;
    IntegerField1: TIntegerField;
    DateTimeField1: TDateTimeField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    BCDField1: TBCDField;
    qAjusteInvcantidad_ant: TFloatField;
    QRDBText67: TQRDBText;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRDBText70: TQRDBText;
    qAjusteInvcantidad_desp: TCurrencyField;
    qInvInicial: TADOQuery;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    BCDField2: TBCDField;
    QRSubDetail11: TQRSubDetail;
    QRDBText73: TQRDBText;
    QRDBText74: TQRDBText;
    QRDBText75: TQRDBText;
    QRBand14: TQRBand;
    QRExpr20: TQRExpr;
    QRLabel32: TQRLabel;
    qInvInicialcantidad_ant: TIntegerField;
    qInvInicialcantidad_desp: TFloatField;
    qVencimmiento: TADOQuery;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    BCDField3: TBCDField;
    IntegerField2: TIntegerField;
    FloatField1: TFloatField;
    QRSubDetail12: TQRSubDetail;
    QRDBText71: TQRDBText;
    QRDBText72: TQRDBText;
    QRDBText76: TQRDBText;
    QRBand15: TQRBand;
    QRExpr21: TQRExpr;
    QRLabel30: TQRLabel;
    QDevol2: TADOQuery;
    QRSubDetail13: TQRSubDetail;
    QRDBText77: TQRDBText;
    QRDBText78: TQRDBText;
    QRDBText79: TQRDBText;
    QRDBText80: TQRDBText;
    QRDBText81: TQRDBText;
    QRDBText82: TQRDBText;
    QRBand16: TQRBand;
    QRLabel31: TQRLabel;
    QRExpr22: TQRExpr;
    QRExpr23: TQRExpr;
    QDevol2DEV_NUMERO: TIntegerField;
    QDevol2DEV_FECHA: TDateTimeField;
    QDevol2CANTIDAD: TFloatField;
    QDevol2Emp: TFloatField;
    QDevol2Und: TFloatField;
    QDevol2DET_MEDIDA: TStringField;
    QDevol2USU_NOMBRE: TStringField;
    QDevol2dev_nombre: TStringField;
    QDevol2Concepto: TStringField;
    QRDBText83: TQRDBText;
    qFacturasCombos: TADOQuery;
    QRSubDetail14: TQRSubDetail;
    QRDBText84: TQRDBText;
    QRDBText85: TQRDBText;
    QRDBText86: TQRDBText;
    QRDBText87: TQRDBText;
    QRDBText88: TQRDBText;
    QRDBText89: TQRDBText;
    QRDBText90: TQRDBText;
    QRDBText91: TQRDBText;
    QRBand17: TQRBand;
    QRLabel33: TQRLabel;
    QRExpr24: TQRExpr;
    QRExpr25: TQRExpr;
    qFacturasCombosFAC_FORMA: TIBStringField;
    qFacturasCombosTFA_CODIGO: TIntegerField;
    qFacturasCombosFAC_NUMERO: TIntegerField;
    qFacturasCombosFAC_FECHA: TDateTimeField;
    qFacturasCombosCANTIDAD: TFloatField;
    qFacturasCombosEmp: TFloatField;
    qFacturasCombosUnd: TFloatField;
    qFacturasCombosDET_MEDIDA: TIBStringField;
    qFacturasCombosUSU_NOMBRE: TStringField;
    qFacturasCombosfac_nombre: TStringField;
    qTicketCombos: TADOQuery;
    qTicketCombosTICKET: TIntegerField;
    qTicketCombosFECHA: TDateTimeField;
    qTicketCombosCANTIDAD: TFloatField;
    qTicketCombosEmp: TFloatField;
    qTicketCombosUnd: TFloatField;
    qTicketCombosMedida: TStringField;
    qTicketCombosDescripcion: TStringField;
    qTicketComboscaja: TIntegerField;
    qTicketCombosusu_nombre: TStringField;
    QRSubDetail15: TQRSubDetail;
    QRDBText92: TQRDBText;
    QRDBText93: TQRDBText;
    QRDBText94: TQRDBText;
    QRDBText95: TQRDBText;
    QRDBText96: TQRDBText;
    QRBand18: TQRBand;
    QRLabel34: TQRLabel;
    QRExpr26: TQRExpr;
    QRExpr27: TQRExpr;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QTicketsCalcFields(DataSet: TDataSet);
    procedure QEntradasCalcFields(DataSet: TDataSet);
    procedure QDevolCalcFields(DataSet: TDataSet);
    procedure QConducesCalcFields(DataSet: TDataSet);
    procedure QFacturasCalcFields(DataSet: TDataSet);
    procedure QComprasCalcFields(DataSet: TDataSet);
    procedure QDevCompraCalcFields(DataSet: TDataSet);
    procedure QTransferSalidaCalcFields(DataSet: TDataSet);
    procedure QTransferEntradaCalcFields(DataSet: TDataSet);
    procedure QDevol2CalcFields(DataSet: TDataSet);
    procedure qFacturasCombosCalcFields(DataSet: TDataSet);
    procedure qTicketCombosCalcFields(DataSet: TDataSet);
  private

  public

  end;

var
  RExistProd: TRExistProd;

implementation

uses SIGMA01;


{$R *.DFM}

procedure TRExistProd.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'I' then
    lbCodigo.DataField := 'PRO_CODIGO'
  else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'F' then
    lbCodigo.DataField := 'pro_rfabric'
  else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'O' then
    lbCodigo.DataField := 'pro_roriginal';
 qrlUsuario.Caption :='Impreso por :'+ dm.getNombreUsuario(DM.Usuario) +
                       ' Fecha/Hora ' + FormatDateTime('dd/mm/yyyy hh:mm:ss AM/PM',now);

end;

procedure TRExistProd.QTicketsCalcFields(DataSet: TDataSet);
begin
  //if QTicketsEMPAQUE.Value = 'U' then
    QTicketsUnd.Value := QTicketsCANTIDAD.Value;
  //else
    //QTicketsEmp.Value := QTicketsCANTIDAD.Value;
    QTicketsDescripcion.Value := 'Caja: '+QTicketscaja.AsString+' Cajero: '+QTicketsusu_nombre.Value;
end;

procedure TRExistProd.QEntradasCalcFields(DataSet: TDataSet);
begin
  if QEntradasDET_MEDIDA.Value = 'Und' then
    QEntradasUnd.Value := QEntradasCANTIDAD.Value
  else
    QEntradasEmp.Value := QEntradasCANTIDAD.Value;
end;

procedure TRExistProd.QDevolCalcFields(DataSet: TDataSet);
begin
  if QDevolDET_MEDIDA.Value = 'Und' then
    QDevolUnd.Value := QDevolCANTIDAD.Value
  else
    QDevolEmp.Value := QDevolCANTIDAD.Value;
end;

procedure TRExistProd.QConducesCalcFields(DataSet: TDataSet);
begin
  if QConducesDET_MEDIDA.Value = 'Und' then
    QConducesUnd.Value := QConducesCANTIDAD.Value
  else
    QConducesEmp.Value := QConducesCANTIDAD.Value;
end;

procedure TRExistProd.QFacturasCalcFields(DataSet: TDataSet);
begin
  if QFacturasDET_MEDIDA.Value = 'Und' then
    QFacturasUnd.Value := QFacturasCANTIDAD.Value
  else
    QFacturasEmp.Value := QFacturasCANTIDAD.Value;
end;

procedure TRExistProd.QComprasCalcFields(DataSet: TDataSet);
begin
  if QComprasDET_MEDIDA.Value = 'Und' then
    QComprasUnd.Value := QComprasCANTIDAD.Value
  else
    QComprasEmp.Value := QComprasCANTIDAD.Value;
end;

procedure TRExistProd.QDevCompraCalcFields(DataSet: TDataSet);
begin
  if QDevCompraDET_MEDIDA.Value = 'Und' then
    QDevCompraUnd.Value := QDevCompraCANTIDAD.Value
  else
    QDevCompraEmp.Value := QDevCompraCANTIDAD.Value;
end;

procedure TRExistProd.QTransferSalidaCalcFields(DataSet: TDataSet);
begin
  if QTransferSalidadet_medida.Value = 'Und' then
    QTransferSalidaUnidad.Value := QTransferSalidacantidad.Value
  else
    QTransferSalidaEmpaque.Value := QTransferSalidacantidad.Value;
end;

procedure TRExistProd.QTransferEntradaCalcFields(DataSet: TDataSet);
begin
  if QTransferEntradadet_medida2.Value = 'Und' then
    QTransferEntradaUnidad.Value := QTransferEntradacantidad.Value
  else
    QTransferEntradaEmpaque.Value := QTransferEntradacantidad.Value;
end;

procedure TRExistProd.QDevol2CalcFields(DataSet: TDataSet);
begin
  if QDevol2DET_MEDIDA.Value = 'Und' then
    QDevol2Und.Value := QDevol2CANTIDAD.Value
  else
    QDevol2Emp.Value := QDevol2CANTIDAD.Value;
end;

procedure TRExistProd.qFacturasCombosCalcFields(DataSet: TDataSet);
begin
  if qFacturasCombosDET_MEDIDA.Value = 'Und' then
    qFacturasCombosUnd.Value := qFacturasCombosCANTIDAD.Value
  else
    qFacturasCombosEmp.Value := QFacturasCombosCANTIDAD.Value;
end;

procedure TRExistProd.qTicketCombosCalcFields(DataSet: TDataSet);
begin
  //if QTicketsEMPAQUE.Value = 'U' then
    qTicketCombosUnd.Value := QTicketsCANTIDAD.Value;
  //else
    //QTicketsEmp.Value := QTicketsCANTIDAD.Value;
    qTicketCombosDescripcion.Value := 'Caja: '+qTicketComboscaja.AsString+' Cajero: '+qTicketCombosusu_nombre.Value;
end;

end.
