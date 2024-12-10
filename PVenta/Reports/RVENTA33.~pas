unit RVENTA33;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, DB, IBCustomDataSet,
  IBQuery, ADODB;

type
  TRNotaCredito = class(TQuickRep)
    V: TQRBand;
    QRBand3: TQRBand;
    QNota: TADOQuery;
    QNotaCLI_CODIGO: TIntegerField;
    QNotaCLI_REFERENCIA: TIBStringField;
    QNotaEMP_CODIGO: TIntegerField;
    QNotaNCR_CONCEPTO: TIBStringField;
    QNotaNCR_FECHA: TDateTimeField;
    QNotaNCR_MONTO: TFloatField;
    QNotaNCR_NUMERO: TIntegerField;
    QNotaNCR_STATUS: TIBStringField;
    QNotaUSU_CODIGO: TIntegerField;
    QNotaFAC_FORMA: TIBStringField;
    QNotaFAC_NUMERO: TIntegerField;
    QNotaTFA_CODIGO: TIntegerField;
    QNotaNCR_MONTOUSADO: TFloatField;
    QNotaNCR_DEVOLUCION: TIntegerField;
    QNotaVEN_CODIGO: TIntegerField;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRDBText6: TQRDBText;
    QNotaCLI_NOMBRE: TIBStringField;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    C: TQRDBText;
    QRShape6: TQRShape;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRLabel7: TQRLabel;
    QRShape5: TQRShape;
    QRDBText10: TQRDBText;
    QRLabel8: TQRLabel;
    QRShape7: TQRShape;
    QRDBText11: TQRDBText;
    QNotaDisp: TFloatField;
    QRShape8: TQRShape;
    QRLabel9: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QNotaNumeroCF: TStringField;
    QRDBText12: TQRDBText;
    lbReimpresion: TQRLabel;
    QNotaNCF_Fijo: TStringField;
    QNotaNCF_Secuencia: TBCDField;
    QNotaNCF: TStringField;
    QRLabel13: TQRLabel;
    QRDBText15: TQRDBText;
    lbTitulo: TQRLabel;
    QRLabel14: TQRLabel;
    QRDBText16: TQRDBText;
    QRShape9: TQRShape;
    QNotancr_itbis: TBCDField;
    QRShape10: TQRShape;
    QRDBText17: TQRDBText;
    QRLabel15: TQRLabel;
    QNotacli_direccion: TStringField;
    QNotacli_rnc: TStringField;
    QRLabel16: TQRLabel;
    QRDBText18: TQRDBText;
    QRShape11: TQRShape;
    QNotaMONEDA: TStringField;
    QRDBText9: TQRDBText;
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
    QNotasuc_codigo: TIntegerField;
    dsNota: TDataSource;
    QNotaNCR_MONTO2: TFloatField;
    procedure QNotaCalcFields(DataSet: TDataSet);
    procedure QNotaAfterOpen(DataSet: TDataSet);
  private

  public

  end;

var
  RNotaCredito: TRNotaCredito;

implementation

uses SIGMA01;


{$R *.DFM}

procedure TRNotaCredito.QNotaCalcFields(DataSet: TDataSet);
begin
  QNotaDisp.Value := (QNotaNCR_MONTO.Value ) - QNotaNCR_MONTOUSADO.Value;
  if not QNotaNCF_Fijo.IsNull then
    QNotaNumeroCF.Value := 'NCF:'+ QNotaNCF_Fijo.Value+FormatFloat('00000000',QNotaNCF_Secuencia.Value)
  else
    QNotaNumeroCF.Value := ' ';
end;

procedure TRNotaCredito.QNotaAfterOpen(DataSet: TDataSet);
begin
qSucursal.Open;
end;

end.
