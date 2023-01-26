unit RCONT31;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, ADODB;

type
  TRCashflow_Mes = class(TQuickRep)
    QRBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel1: TQRLabel;
    lbmes: TQRLabel;
    QRBand2: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRBand3: TQRBand;
    QTransacciones: TADOQuery;
    QTransaccionesGrupoID: TIntegerField;
    QTransaccionesSubgrupoID: TIntegerField;
    QTransaccionesConceptoID: TIntegerField;
    QTransaccionesTransaccionID: TBCDField;
    QTransaccionesFecha: TDateTimeField;
    QTransaccionesMonto: TBCDField;
    QTransaccionesStatus: TStringField;
    QTransaccionesConcepto: TStringField;
    QTransaccionesemp_codigo: TIntegerField;
    QTransaccionesRecurrente: TStringField;
    QTransaccionesCantidad_meses: TIntegerField;
    QTransaccionesTransaccion_recurrente: TBCDField;
    QTransaccionesNombre: TStringField;
    QTransaccionesFacturaCxP: TStringField;
    QTransaccionesFacturaCxC: TIntegerField;
    QTransaccionesDocumento: TStringField;
    QRBand4: TQRBand;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QConceptos: TADOQuery;
    QConceptosGrupoID: TIntegerField;
    QConceptosSubgrupoID: TIntegerField;
    QConceptosConceptoID: TIntegerField;
    QConceptosNombre: TStringField;
    dsConceptos: TDataSource;
    QConceptosemp_codigo: TIntegerField;
    QRSubDetail1: TQRSubDetail;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRBand5: TQRBand;
    QRExpr3: TQRExpr;
    QRLabel8: TQRLabel;
    procedure QTransaccionesCalcFields(DataSet: TDataSet);
  private

  public
    operacion : string;
  end;

var
  RCashflow_Mes: TRCashflow_Mes;

implementation

uses SIGMA01;

{$R *.DFM}

procedure TRCashflow_Mes.QTransaccionesCalcFields(DataSet: TDataSet);
begin
  if operacion = 'S' then
    QTransaccionesDocumento.Value := QTransaccionesFacturaCxC.AsString
  else
    QTransaccionesDocumento.Value := QTransaccionesFacturaCxP.AsString;
end;

end.
