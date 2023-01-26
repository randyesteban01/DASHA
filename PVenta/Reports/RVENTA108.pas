unit RVENTA108;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, DB, ADODB;

type
  TRRepHistorialCliTipo = class(TQuickRep)
    QRBand1: TQRBand;
    lbTitulo: TQRLabel;
    lbFecha: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel7: TQRLabel;
    QRBand3: TQRBand;
    QHistorial: TADOQuery;
    QHistorialid: TAutoIncField;
    QHistorialtipo: TStringField;
    QHistorialnumero: TIntegerField;
    QHistorialfecha: TDateTimeField;
    QHistorialconcepto: TStringField;
    QHistorialmonto: TBCDField;
    QHistorialabono: TBCDField;
    QHistorialsaldo: TBCDField;
    QHistorialstatus: TStringField;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel8: TQRLabel;
    QRBand4: TQRBand;
    QRExpr1: TQRExpr;
    QRLabel9: TQRLabel;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QClientes: TADOQuery;
    QClientesemp_codigo: TIntegerField;
    QClientescli_codigo: TIntegerField;
    QClientestcl_codigo: TIntegerField;
    QClientescli_nombre: TStringField;
    QClientescli_referencia: TStringField;
    QRSubDetail1: TQRSubDetail;
    QRDBText12: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText13: TQRDBText;
    dsClientes: TDataSource;
    QRDBText14: TQRDBText;
    lbCodigo: TQRDBText;
    QRDBText15: TQRDBText;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBText22: TQRDBText;
    QClientescli_telefono: TStringField;
    QClientescli_cedula: TStringField;
    QRBand5: TQRBand;
    QRExpr4: TQRExpr;
    QRLabel14: TQRLabel;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRDBText16: TQRDBText;
    procedure QRBand4BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public
    pendientes : boolean;
  end;

var
  RRepHistorialCliTipo: TRRepHistorialCliTipo;

implementation

uses SIGMA01;

{$R *.DFM}

procedure TRRepHistorialCliTipo.QRBand4BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  Printband := pendientes;
end;

end.
