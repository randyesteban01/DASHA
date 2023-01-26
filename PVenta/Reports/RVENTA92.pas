unit RVENTA92;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, DB, ADODB;

type
  TRExistProdGeneral = class(TQuickRep)
    QRBand1: TQRBand;
    lbTitulo: TQRLabel;
    lbFecha: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel4: TQRLabel;
    lbAlmacen: TQRLabel;
    QRDBText1: TQRDBText;
    QRBand2: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRBand3: TQRBand;
    QProductos: TADOQuery;
    QProductospro_codigo: TIntegerField;
    QProductospro_roriginal: TStringField;
    QProductospro_nombre: TStringField;
    QProductosent_und: TBCDField;
    lbprod: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QProductosent_emp: TBCDField;
    QProductossal_und: TBCDField;
    QProductossal_emp: TBCDField;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QProductosexi_cantidad: TBCDField;
    QProductosexi_empaque: TBCDField;
    QRLabel1: TQRLabel;
    PageFooterBand1: TQRBand;
    qrlUsuario: TQRLabel;
    procedure QProductosFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public
     entradas, salidas : boolean;
  end;

var
  RExistProdGeneral: TRExistProdGeneral;

implementation

uses SIGMA01, Math;

{$R *.DFM}

procedure TRExistProdGeneral.QProductosFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  if not entradas then
  begin
    if (QProductosent_und.Value > 0) or (QProductosent_emp.Value > 0) then
      Accept := false;
  end
  else
    Accept := True;

  if not salidas then
  begin
    if (QProductossal_und.Value > 0) or (QProductossal_emp.Value > 0) then
      Accept := false;
  end
  else
    Accept := True;
end;

procedure TRExistProdGeneral.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'I' then
    lbprod.DataField := 'PRO_CODIGO'
  else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'F' then
    lbprod.DataField := 'pro_rfabric'
  else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'O' then
    lbprod.DataField := 'pro_roriginal';

 qrlUsuario.Caption :='Impreso por :'+ dm.getNombreUsuario(DM.Usuario) +
                       ' Fecha/Hora ' + FormatDateTime('dd/mm/yyyy hh:mm:ss AM/PM',now);
end;

end.
