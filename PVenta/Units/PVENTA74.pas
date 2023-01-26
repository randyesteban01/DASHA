unit PVENTA74;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery, ADODB, QRPDFFilt, QRExport;

type
  TRAntigSaldo = class(TQuickRep)
    QRBand1: TQRBand;
    lbTitulo: TQRLabel;
    lbFecha: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRLabel18: TQRLabel;
    QRLabel21: TQRLabel;
    QRBand3: TQRBand;
    QClientes: TADOQuery;
    lbDia2: TQRLabel;
    lbDia3: TQRLabel;
    lbDia4: TQRLabel;
    QRLabel9: TQRLabel;
    lbDia1: TQRLabel;
    QRBand5: TQRBand;
    QRExpr2: TQRExpr;
    QClientesCLI_CODIGO: TIntegerField;
    QClientesCLI_REFERENCIA: TIBStringField;
    QClientesCLI_NOMBRE: TIBStringField;
    QClientesCLI_TELEFONO: TIBStringField;
    QClientesBALANCE: TFloatField;
    QClientesDIA1: TFloatField;
    QClientesDIA2: TFloatField;
    QClientesDIA3: TFloatField;
    QClientesDIA4: TFloatField;
    QRExpr1: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRLabel4: TQRLabel;
    QClientesid: TAutoIncField;
    QRDBText13: TQRDBText;
    lbcodigo: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    lbVendedor: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    PageFooterBand1: TQRBand;
    qrlUsuario: TQRLabel;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public
     Dia : integer;
  end;

var
  RAntigSaldo: TRAntigSaldo;

implementation

uses SIGMA01;


{$R *.DFM}

procedure TRAntigSaldo.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  if dm.QParametrosPAR_CODIGOCLIENTE.Value = 'I' then
    lbCodigo.DataField := 'CLI_CODIGO'
  else
    lbCodigo.DataField := 'CLI_REFERENCIA';

  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select par_dia1label, par_dia2label,');
  dm.Query1.SQL.Add('par_dia3label, par_dia4label');
  dm.Query1.SQL.Add('from PARAMANTIGSALDO');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Open;

  lbDia1.Caption := dm.Query1.FieldByName('par_dia1label').AsString;
  lbDia2.Caption := dm.Query1.FieldByName('par_dia2label').AsString;
  lbDia3.Caption := dm.Query1.FieldByName('par_dia3label').AsString;
  lbDia4.Caption := dm.Query1.FieldByName('par_dia4label').AsString;
  if Dia > 0 then
  begin
    lbDia1.Enabled := Dia = 1;
    lbDia2.Enabled := Dia = 2;
    lbDia3.Enabled := Dia = 3;
    lbDia4.Enabled := Dia = 4;
    QRDBText17.Enabled := Dia = 1;
    QRDBText18.Enabled := Dia = 2;
    QRDBText19.Enabled := Dia = 3;
    QRDBText20.Enabled := Dia = 4;
    QRExpr1.Enabled := Dia = 1;
    QRExpr3.Enabled := Dia = 2;
    QRExpr4.Enabled := Dia = 3;
    QRExpr5.Enabled := Dia = 4;
  end;

    qrlUsuario.Caption :='Impreso por :'+ dm.getNombreUsuario(DM.Usuario) +
                       ' Fecha/Hora ' + FormatDateTime('dd/mm/yyyy hh:mm:ss AM/PM',now);
end;

procedure TRAntigSaldo.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if Dia > 0 then
  begin
    if (Dia = 1) and (QClientesDIA1.Value = 0) then
      PrintBand := False
    else if (Dia = 2) and (QClientesDIA2.Value = 0) then
      PrintBand := False
    else if (Dia = 3) and (QClientesDIA3.Value = 0) then
      PrintBand := False
    else if (Dia = 4) and (QClientesDIA4.Value = 0) then
      PrintBand := False
    else
      PrintBand := True;
  end;
end;

end.
