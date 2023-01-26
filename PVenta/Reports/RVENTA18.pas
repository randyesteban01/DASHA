unit RVENTA18;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, DB, IBCustomDataSet,
  IBQuery, ADODB;

type
  TRConsConduce = class(TQuickRep)
    QRBand1: TQRBand;
    lbTitulo: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    lbCliente: TQRLabel;
    lbUsuario: TQRLabel;
    lbNombre: TQRLabel;
    lbStatus: TQRLabel;
    lbFecha: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRBand3: TQRBand;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRBand4: TQRBand;
    QRLabel20: TQRLabel;
    QRExpr1: TQRExpr;
    QConduce: TADOQuery;
    QConduceCON_FECHA: TDateTimeField;
    QConduceCON_NOMBRE: TIBStringField;
    QConduceCON_NUMERO: TIntegerField;
    QConduceCON_STATUS: TIBStringField;
    QConduceCON_TOTAL: TFloatField;
    QConduceEMP_CODIGO: TIntegerField;
    QConduceUSU_NOMBRE: TIBStringField;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRExpr2: TQRExpr;
    QConduceChofer: TStringField;
    QConducePlaca: TStringField;
    QConduceMetraje: TBCDField;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText11: TQRDBText;
    QRLabel9: TQRLabel;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  RConsConduce: TRConsConduce;

implementation

uses SIGMA01;


{$R *.DFM}

procedure TRConsConduce.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  if (dm.QParametrospar_fac_preimpresa.Value = 'False') or (dm.QParametrospar_formato_preimpreso.Value <> 'QRAgregados') then
  begin
    QRLabel5.Enabled := false;
    QRLabel6.Enabled := false;
    QRLabel8.Enabled := false;
    QRDBText6.Enabled := false;
    QRDBText7.Enabled := false;
    QRDBText11.Enabled := false;
  end;
end;

end.
