unit RVENTA133;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, DB, ADODB, Math;

type
  TRepListaRestBar = class(TQuickRep)
    QRBand1: TQRBand;
    lbTitulo: TQRLabel;
    lbFecha: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRLabel16: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel32: TQRLabel;
    QRBand3: TQRBand;
    QRBand4: TQRBand;
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
    QRLabel9: TQRLabel;
    Fac1: TQRDBText;
    Fac3: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText10: TQRDBText;
    QEmpresas: TADOQuery;
    QEmpresasemp_codigo: TIntegerField;
    QEmpresasemp_nombre: TStringField;
    QEmpresasemp_direccion: TStringField;
    QEmpresasemp_localidad: TStringField;
    QEmpresasemp_telefono: TStringField;
    QEmpresasemp_rnc: TStringField;
    QRLabel3: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel30: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRLabel4: TQRLabel;
    QRDBText8: TQRDBText;
    QTickets: TADOQuery;
    QRLabel5: TQRLabel;
    QRLabel11: TQRLabel;
    lbCaja: TQRLabel;
    lbCajero: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel6: TQRLabel;
    QTicketsFecha: TDateField;
    QTicketsCaja: TStringField;
    QTicketsFacturaID: TIntegerField;
    QTicketsNCF: TStringField;
    QTicketsMonto: TCurrencyField;
    QTicketsItbis: TCurrencyField;
    QTicketsDescuento: TCurrencyField;
    QTicketsEstatus: TStringField;
    QRLabel8: TQRLabel;
    QRDBText12: TQRDBText;
    QTicketsPropina: TCurrencyField;
    QTicketsSubTotal: TCurrencyField;
    QRLabel10: TQRLabel;
    QRLabel12: TQRLabel;
    QRExpr3: TQRExpr;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRExpr5: TQRExpr;
    QRLabel17: TQRLabel;
    QRLabel19: TQRLabel;
    QRExpr4: TQRExpr;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public
    ckgrabado, ckexento, detallado : boolean;
    credito : double;
  end;

var
  RepListaRestBar: TRepListaRestBar;

implementation

uses SIGMA00, SIGMA01;

{$R *.DFM}

procedure TRepListaRestBar.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
var
  a : integer;
  cambiar : TQRLabel;
begin
  if dm.QParametrosIdioma.AsString = 'I' then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select objeto, ingles from Traduccion where modulo = :mod');
    dm.Query1.Parameters.ParamByName('mod').Value := 'RepListaTickets';
    dm.Query1.Open;
    dm.Query1.DisableControls;
    while not dm.Query1.Eof do
    begin
      cambiar := (FindComponent(dm.Query1.FieldByName('objeto').AsString) as TQRLabel);
      cambiar.Caption := dm.Query1.FieldByName('ingles').AsString;
      dm.Query1.Next;
    end;
    dm.Query1.EnableControls;
  end;
end;

end.
