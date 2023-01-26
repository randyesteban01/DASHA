unit RVENTA34;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, DB, IBCustomDataSet,
  IBQuery, ADODB;

type
  TRNotaDebito = class(TQuickRep)
    QRBand1: TQRBand;
    QRBand3: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QNota: TADOQuery;
    QNotaCLI_CODIGO: TIntegerField;
    QNotaCLI_REFERENCIA: TIBStringField;
    QNotaEMP_CODIGO: TIntegerField;
    QNotaNDE_CONCEPTO: TIBStringField;
    QNotaNDE_FECHA: TDateTimeField;
    QNotaNDE_MONTO: TFloatField;
    QNotaNDE_NUMERO: TIntegerField;
    QNotaNDE_STATUS: TIBStringField;
    QNotaUSU_CODIGO: TIntegerField;
    QNotaNDE_ABONO: TFloatField;
    QNotaCLI_NOMBRE: TIBStringField;
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
    QRDBText10: TQRDBText;
    lbReimpresion: TQRLabel;
    QNotaNCF_Fijo: TStringField;
    QNotaNCF_Secuencia: TBCDField;
    lbTitulo: TQRLabel;
    QRShape6: TQRShape;
    QRLabel10: TQRLabel;
    QRShape8: TQRShape;
    QRLabel9: TQRLabel;
    dsSucursal: TDataSource;
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
    dsNota: TDataSource;
    QNotasuc_codigo: TIntegerField;
    procedure QNotaCalcFields(DataSet: TDataSet);
    procedure QNotaAfterOpen(DataSet: TDataSet);
  private

  public

  end;

var
  RNotaDebito: TRNotaDebito;

implementation

uses SIGMA01;


{$R *.DFM}

procedure TRNotaDebito.QNotaCalcFields(DataSet: TDataSet);
begin
  if not QNotaNCF_Fijo.IsNull then
    QNotaNumeroCF.Value := 'NCF:'+ QNotaNCF_Fijo.Value+FormatFloat('00000000',QNotaNCF_Secuencia.Value)
  else
    QNotaNumeroCF.Value := ' ';
end;

procedure TRNotaDebito.QNotaAfterOpen(DataSet: TDataSet);
begin
qSucursal.Open;
end;

end.
