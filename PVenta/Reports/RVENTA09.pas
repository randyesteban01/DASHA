unit RVENTA09;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, DB, IBCustomDataSet,
  IBQuery, ADODB;

type
  TRConsNC = class(TQuickRep)
    QRBand1: TQRBand;
    lbTitulo: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel15: TQRLabel;
    lbGrupo: TQRLabel;
    lbTipo: TQRLabel;
    lbVendedor: TQRLabel;
    lbCliente: TQRLabel;
    lbUsuario: TQRLabel;
    lbStatus: TQRLabel;
    lbFecha: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel33: TQRLabel;
    QRBand3: TQRBand;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText16: TQRDBText;
    QRBand4: TQRBand;
    QRLabel20: TQRLabel;
    QRLabel38: TQRLabel;
    QRExpr1: TQRExpr;
    QNotas: TADOQuery;
    QNotasFAC_FORMA: TIBStringField;
    QNotasFAC_NUMERO: TIntegerField;
    QNotasNCR_CONCEPTO: TIBStringField;
    QNotasNCR_DEVOLUCION: TIntegerField;
    QNotasNCR_FECHA: TDateTimeField;
    QNotasNCR_MONTO: TFloatField;
    QNotasNCR_MONTOUSADO: TFloatField;
    QNotasNCR_NUMERO: TIntegerField;
    QNotasNCR_STATUS: TIBStringField;
    QNotasTFA_CODIGO: TIntegerField;
    QNotasUSU_CODIGO: TIntegerField;
    QNotasVEN_CODIGO: TIntegerField;
    QNotasCLI_NOMBRE: TIBStringField;
    QNotasUSU_NOMBRE: TIBStringField;
    QRLabel3: TQRLabel;
    QRDBText12: TQRDBText;
    QNotassuc_codigo: TIntegerField;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QNotasNCF_Fijo: TStringField;
    QNotasNCF_Secuencia: TBCDField;
    QNotasNCF: TStringField;
    QRLabel19: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText6: TQRDBText;
    procedure QNotasCalcFields(DataSet: TDataSet);
  private

  public

  end;

var
  RConsNC: TRConsNC;

implementation

uses SIGMA01;


{$R *.DFM}

procedure TRConsNC.QNotasCalcFields(DataSet: TDataSet);
begin
  if not QNotasNCF_Fijo.IsNull then
    QNotasNCF.Value := QNotasNCF_Fijo.Value + FormatFloat('00000000',QNotasNCF_Secuencia.Value);
end;

end.
