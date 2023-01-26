unit RVENTA10;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, DB, IBCustomDataSet,
  IBQuery, ADODB;

type
  TRConsDB = class(TQuickRep)
    QRBand1: TQRBand;
    lbTitulo: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel13: TQRLabel;
    lbCliente: TQRLabel;
    lbUsuario: TQRLabel;
    lbFecha: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel33: TQRLabel;
    QRBand3: TQRBand;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRBand4: TQRBand;
    QRLabel36: TQRLabel;
    QRLabel41: TQRLabel;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QNota: TADOQuery;
    QNotaNDE_ABONO: TFloatField;
    QNotaNDE_CONCEPTO: TIBStringField;
    QNotaNDE_FECHA: TDateTimeField;
    QNotaNDE_MONTO: TFloatField;
    QNotaNDE_NUMERO: TIntegerField;
    QNotaNDE_STATUS: TIBStringField;
    QNotaCLI_NOMBRE: TIBStringField;
    QNotaUSU_NOMBRE: TIBStringField;
    QRDBText6: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    lbStatus: TQRLabel;
    QNotasuc_codigo: TIntegerField;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QNotaEMP_CODIGO: TIntegerField;
    QNotaNCF_Fijo: TStringField;
    QNotaNCF_Secuencia: TBCDField;
    QNotaNCF: TStringField;
    procedure QNotaCalcFields(DataSet: TDataSet);
  private

  public

  end;

var
  RConsDB: TRConsDB;

implementation

uses SIGMA01;


{$R *.DFM}

procedure TRConsDB.QNotaCalcFields(DataSet: TDataSet);
begin
  if not QNotaNCF_Fijo.IsNull then
    QNotaNCF.Value := QNotaNCF_Fijo.Value + FormatFloat('00000000',QNotaNCF_Secuencia.Value);
end;

end.
