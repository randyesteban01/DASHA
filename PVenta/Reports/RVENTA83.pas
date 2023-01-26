unit RVENTA83;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, DB, ADODB;

type
  TRepRecetas = class(TQuickRep)
    QRBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    lbTitulo: TQRLabel;
    lbFecha: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRBand3: TQRBand;
    QRDBText6: TQRDBText;
    QClientes: TADOQuery;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QClientescli_codigo: TIntegerField;
    QClientescli_referencia: TStringField;
    QClientescli_nombre: TStringField;
    QClientescli_telefono: TStringField;
    QRLabel6: TQRLabel;
    QRDBText9: TQRDBText;
    QClientesemp_codigo: TIntegerField;
    QRecetas: TADOQuery;
    dsClientes: TDataSource;
    QRecetasdet_tipo: TStringField;
    QRecetasdet_esf: TStringField;
    QRecetasdet_cil: TStringField;
    QRecetasdet_eje: TStringField;
    QRecetasdet_add: TStringField;
    QRecetasdet_dist: TStringField;
    QRecetasdet_alt: TStringField;
    QRecetasdet_tipo_1: TStringField;
    QRecetasdet_esf_1: TStringField;
    QRecetasdet_cil_1: TStringField;
    QRecetasdet_eje_1: TStringField;
    QRecetasdet_add_1: TStringField;
    QRecetasdet_dist_1: TStringField;
    QRecetasdet_alt_1: TStringField;
    QRSubDetail1: TQRSubDetail;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
  private

  public

  end;

var
  RepRecetas: TRepRecetas;

implementation

uses SIGMA01;

{$R *.DFM}

end.
