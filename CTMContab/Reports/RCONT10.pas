unit RCONT10;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery, ADODB;

type
  TRepMayorGeneral = class(TQuickRep)
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRLabel21: TQRLabel;
    QRBand3: TQRBand;
    QRDBText10: TQRDBText;
    QRLabel10: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel7: TQRLabel;
    QCatalogo: TADOQuery;
    QCatalogoCAT_CONTROL: TIBStringField;
    QCatalogoCAT_CUENTA: TIBStringField;
    QCatalogoCAT_MOVIMIENTO: TIBStringField;
    QCatalogoCAT_NOMBRE: TIBStringField;
    QCatalogoCAT_ORIGEN: TIBStringField;
    QCatalogoCAT_TIPO: TIBStringField;
    QRLabel9: TQRLabel;
    QCatalogoOrigen: TStringField;
    QCatalogoCAT_BALACTUAL: TFloatField;
    QCatalogoCAT_BALANT: TFloatField;
    QDoc: TADOQuery;
    dsCatalogo: TDataSource;
    QCatalogoEMP_CODIGO: TIntegerField;
    QDocENT_NUMERO: TIntegerField;
    QDocTRA_FECHA: TDateTimeField;
    QDocTRA_DOC: TIBStringField;
    QDocDET_DEBITO: TFloatField;
    QDocDET_CREDITO: TFloatField;
    QRSubDetail1: TQRSubDetail;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QDocDoc: TStringField;
    QDocTDO_CODIGO: TIBStringField;
    QDocTRA_CONCEPTO1: TIBStringField;
    QDocTRA_BENEF: TIBStringField;
    QDocTRA_CONCEPTO2: TIBStringField;
    QDocConc: TStringField;
    QRDBText9: TQRDBText;
    QRDBText11: TQRDBText;
    QRBand4: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    lbAnterior: TQRLabel;
    lbDebito: TQRLabel;
    lbCredito: TQRLabel;
    lbActual: TQRLabel;
    QRBand5: TQRBand;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRLabel8: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRShape1: TQRShape;
    lbAct1: TQRLabel;
    lbPas1: TQRLabel;
    lbCap1: TQRLabel;
    lbIng1: TQRLabel;
    lbCos1: TQRLabel;
    lbGas1: TQRLabel;
    lbAct2: TQRLabel;
    lbPas2: TQRLabel;
    lbCap2: TQRLabel;
    lbIng2: TQRLabel;
    lbCos2: TQRLabel;
    lbGas2: TQRLabel;
    lbAct3: TQRLabel;
    lbPas3: TQRLabel;
    lbCap3: TQRLabel;
    lbIng3: TQRLabel;
    lbCos3: TQRLabel;
    lbGas3: TQRLabel;
    lbAct4: TQRLabel;
    lbPas4: TQRLabel;
    lbCap4: TQRLabel;
    lbIng4: TQRLabel;
    lbCos4: TQRLabel;
    lbGas4: TQRLabel;
    QRShape2: TQRShape;
    lbTotal1: TQRLabel;
    lbTotal2: TQRLabel;
    lbTotal3: TQRLabel;
    lbTotal4: TQRLabel;
    lbTitulo: TQRLabel;
    QRDBText1: TQRDBText;
    lbFecha: TQRLabel;
    QRSysData1: TQRSysData;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    procedure QDocCalcFields(DataSet: TDataSet);
    procedure QRBand4BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand3AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand5BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public
    Fecha1, Fecha2 : TDateTime;
    Anterior, Debito, Credito, Monto1, Monto2, Monto3, Monto4,
    Monto5, Monto6, Monto7, Monto8, Monto9, Monto10, Monto11,
    Monto12, Monto13, Monto14, Monto15, Monto16, Monto17, Monto18,
    Monto19, Monto20, Monto21, Monto22, Monto23, Monto24, Actual : Double;
    Imprime, ckBalance : Boolean;
    Suc : Integer;
  end;

var
  RepMayorGeneral: TRepMayorGeneral;

implementation

uses SIGMA01;


{$R *.DFM}

procedure TRepMayorGeneral.QDocCalcFields(DataSet: TDataSet);
begin
  QDocDoc.Value := IntToStr(QDocENT_NUMERO.Value)+' '+
                   QDocTDO_CODIGO.Value+' '+
                   QDocTRA_DOC.Value+' '+
                   DateToStr(QDocTRA_FECHA.Value);
  QDocConc.Value := QDocTRA_CONCEPTO1.Value+', '+
                    QDocTRA_CONCEPTO2.Value;
end;

procedure TRepMayorGeneral.QRBand4BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  lbDebito.Caption  := Format('%n',[Debito]);
  lbCredito.Caption := Format('%n',[Credito]);
  lbAnterior.Caption := Format('%n',[Anterior]);
  if QCatalogoCAT_ORIGEN.Value = 'D' then
    Actual := StrToFloat(Format('%10.2f',[(Anterior + Debito) - Credito]))
  else
    Actual := StrToFloat(Format('%10.2f',[(Anterior + Credito) - Debito]));
  lbActual.Caption := Format('%n',[Actual]);
  if QCatalogoCAT_TIPO.Value = 'AC' then
  Begin
    Monto1 := Monto1 + StrToFloat(Format('%10.2f',[Anterior]));
    Monto2 := Monto2 + StrToFloat(Format('%10.2f',[Debito]));
    Monto3 := Monto3 + StrToFloat(Format('%10.2f',[Credito]));
    Monto4 := Monto4 + StrToFloat(Format('%10.2f',[Actual]));
  End
  else if QCatalogoCAT_TIPO.Value = 'PA' then
  Begin
    Monto5 := Monto5 + StrToFloat(Format('%10.2f',[Anterior]));
    Monto6 := Monto6 + StrToFloat(Format('%10.2f',[Debito]));
    Monto7 := Monto7 + StrToFloat(Format('%10.2f',[Credito]));
    Monto8 := Monto8 + StrToFloat(Format('%10.2f',[Actual]));
  End
  else if QCatalogoCAT_TIPO.Value = 'CA' then
  Begin
    Monto9  := Monto9  + StrToFloat(Format('%10.2f',[Anterior]));
    Monto10 := Monto10 + StrToFloat(Format('%10.2f',[Debito]));
    Monto11 := Monto11 + StrToFloat(Format('%10.2f',[Credito]));
    Monto12 := Monto12 + StrToFloat(Format('%10.2f',[Actual]));
  End
  else if QCatalogoCAT_TIPO.Value = 'IN' then
  Begin
    Monto13 := Monto13 + StrToFloat(Format('%10.2f',[Anterior]));
    Monto14 := Monto14 + StrToFloat(Format('%10.2f',[Debito]));
    Monto15 := Monto15 + StrToFloat(Format('%10.2f',[Credito]));
    Monto16 := Monto16 + StrToFloat(Format('%10.2f',[Actual]));
  End
  else if QCatalogoCAT_TIPO.Value = 'CO' then
  Begin
    Monto17 := Monto17 + StrToFloat(Format('%10.2f',[Anterior]));
    Monto18 := Monto18 + StrToFloat(Format('%10.2f',[Debito]));
    Monto19 := Monto19 + StrToFloat(Format('%10.2f',[Credito]));
    Monto20 := Monto20 + StrToFloat(Format('%10.2f',[Actual]));
  End
  else if QCatalogoCAT_TIPO.Value = 'GA' then
  Begin
    Monto21 := Monto21 + StrToFloat(Format('%10.2f',[Anterior]));
    Monto22 := Monto22 + StrToFloat(Format('%10.2f',[Debito]));
    Monto23 := Monto23 + StrToFloat(Format('%10.2f',[Credito]));
    Monto24 := Monto24 + StrToFloat(Format('%10.2f',[Actual]));
  End;

  PrintBand := Imprime;
end;

procedure TRepMayorGeneral.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  Debito  := Debito  + StrToFloat(Format('%10.2f',[QDocDET_DEBITO.Value]));
  Credito := Credito + StrToFloat(Format('%10.2f',[QDocDET_CREDITO.Value]));
  if QDoc.RecordCount = 0 then
    QRSubDetail1.Height := 0
  else
    QRSubDetail1.Height := 16;
end;

procedure TRepMayorGeneral.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  Anterior := 0;
  Actual := 0;
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select * from CONTPR_BUSCA_BALMOV (:EMP, :SUC, :FEC1, :FEC2, :CTA, :SUP, 0)');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('fec1').Value   := Fecha1;
  dm.Query1.Parameters.ParamByName('fec2').Value   := Fecha2;
  dm.Query1.Parameters.ParamByName('cta').Value    := QCatalogoCAT_CUENTA.Value;
  dm.Query1.Parameters.ParamByName('suc').Value    := Suc;
  dm.Query1.Parameters.ParamByName('sup').Value    := 0;
  dm.Query1.Open;
  Anterior := StrToFloat(Format('%10.2f',[dm.Query1.FieldByName('anterior').AsFloat]));
  if ckBalance = True then
  Begin
    if (StrToFloat(Format('%10.2f',[dm.Query1.FieldByName('creditos').AsFloat])) = 0)
    and (StrToFloat(Format('%10.2f',[dm.Query1.FieldByName('debitos').AsFloat])) = 0) and
    (StrToFloat(Format('%10.2f',[dm.Query1.FieldByName('anterior').AsFloat])) = 0)
    and (StrToFloat(Format('%10.2f',[dm.Query1.FieldByName('actual').AsFloat])) = 0)
    then
    begin
      PrintBand := False;
      Imprime := False;
    end
    else
      Imprime := True;
  end
  else
    Imprime := True;
end;

procedure TRepMayorGeneral.QRBand3AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Debito   := 0;
  Credito  := 0;
end;

procedure TRepMayorGeneral.QuickRepBeforePrint(Sender: TCustomQuickRep;
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
    dm.Query1.Parameters.ParamByName('mod').Value := 'RepMayorGeneral';
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

  Monto1  := 0; Monto2  := 0; monto3  := 0; Monto4  := 0;
  Monto5  := 0; Monto6  := 0; monto7  := 0; Monto8  := 0;
  Monto9  := 0; Monto10 := 0; monto11 := 0; Monto12 := 0;
  Monto13 := 0; Monto14 := 0; monto15 := 0; Monto16 := 0;
  Monto17 := 0; Monto18 := 0; monto19 := 0; Monto20 := 0;
  Monto21 := 0; Monto22 := 0; monto23 := 0; Monto24 := 0;
end;

procedure TRepMayorGeneral.QRBand5BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  //Activos
  lbAct1.Caption := Format('%n',[Monto1]);
  lbAct2.Caption := Format('%n',[Monto2]);
  lbAct3.Caption := Format('%n',[Monto3]);
  lbAct4.Caption := Format('%n',[Monto4]);
  //Pasivos
  lbPas1.Caption := Format('%n',[Monto5]);
  lbPas2.Caption := Format('%n',[Monto6]);
  lbPas3.Caption := Format('%n',[Monto7]);
  lbPas4.Caption := Format('%n',[Monto8]);
  //Capital
  lbCap1.Caption := Format('%n',[Monto9]);
  lbCap2.Caption := Format('%n',[Monto10]);
  lbCap3.Caption := Format('%n',[Monto11]);
  lbCap4.Caption := Format('%n',[Monto12]);
  //Ingresos
  lbIng1.Caption := Format('%n',[Monto13]);
  lbIng2.Caption := Format('%n',[Monto14]);
  lbIng3.Caption := Format('%n',[Monto15]);
  lbIng4.Caption := Format('%n',[Monto16]);
  //Costos
  lbCos1.Caption := Format('%n',[Monto17]);
  lbCos2.Caption := Format('%n',[Monto18]);
  lbCos3.Caption := Format('%n',[Monto19]);
  lbCos4.Caption := Format('%n',[Monto20]);
  //Gastos
  lbGas1.Caption := Format('%n',[Monto21]);
  lbGas2.Caption := Format('%n',[Monto22]);
  lbGas3.Caption := Format('%n',[Monto23]);
  lbGas4.Caption := Format('%n',[Monto24]);

  lbTotal1.Caption := Format('%n',[Monto1+Monto5+Monto9+Monto13+Monto17+Monto21]);
  lbTotal2.Caption := Format('%n',[Monto2+Monto6+Monto10+Monto14+Monto18+Monto22]);
  lbTotal3.Caption := Format('%n',[Monto3+Monto7+Monto11+Monto15+Monto19+Monto23]);
  lbTotal4.Caption := Format('%n',[Monto4+Monto8+Monto12+Monto16+Monto20+Monto24]);
end;

end.
