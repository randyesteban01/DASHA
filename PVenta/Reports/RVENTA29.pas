unit RVENTA29;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, DB, IBCustomDataSet,
  IBQuery, ADODB;

type
  TRInvFisico = class(TQuickRep)
    QRBand1: TQRBand;
    lbTitulo: TQRLabel;
    lbFecha: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRLabel19: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRBand3: TQRBand;
    QRDBText10: TQRDBText;
    QProd: TADOQuery;
    QProdPRO_CODIGO: TIntegerField;
    QProdPRO_RFABRIC: TIBStringField;
    QProdPRO_RORIGINAL: TIBStringField;
    QProdPRO_NOMBRE: TIBStringField;
    QProdEXI_CANTIDAD: TFloatField;
    QProdEXI_FISICO: TFloatField;
    QProdValor: TFloatField;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QProdALM_NOMBRE: TIBStringField;
    QRLabel9: TQRLabel;
    QProdEXI_EMPAQUE: TFloatField;
    QProdEXI_FISICOEMP: TFloatField;
    QProdValor2: TFloatField;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel15: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText14: TQRDBText;
    QRBand4: TQRBand;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QProdpro_costo: TBCDField;
    QProdpro_costoempaque: TBCDField;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel5: TQRLabel;
    lbFamilia: TQRLabel;
    lbDepto: TQRLabel;
    lbProveedor: TQRLabel;
    QRLabel12: TQRLabel;
    lbGerente: TQRLabel;
    QRLabel13: TQRLabel;
    lbmarca: TQRLabel;
    QRLabel14: TQRLabel;
    lbcolor: TQRLabel;
    QRLabel18: TQRLabel;
    lbpasillo: TQRLabel;
    QRLabel11: TQRLabel;
    lbAlmacen: TQRLabel;
    QRBand30: TQRBand;
    qrlUsuario: TQRLabel;
    procedure QProdCalcFields(DataSet: TDataSet);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  RInvFisico: TRInvFisico;

implementation

uses SIGMA01;


{$R *.DFM}

procedure TRInvFisico.QProdCalcFields(DataSet: TDataSet);
begin
  QProdValor.Value  := QProdEXI_FISICO.Value - QProdEXI_CANTIDAD.Value;
  QProdValor2.Value := QProdEXI_FISICOEMP.Value - QProdEXI_EMPAQUE.Value;
end;

procedure TRInvFisico.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  lbAlmacen.Caption := QProdALM_NOMBRE.Value;
  qrlUsuario.Caption :='Impreso por :'+ dm.getNombreUsuario(DM.Usuario) +
                       ' Fecha/Hora ' + FormatDateTime('dd/mm/yyyy hh:mm:ss AM/PM',now);
end;

end.
