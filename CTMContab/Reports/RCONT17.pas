unit RCONT17;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery, DateUtils, ADODB;

type
  TRepCheque = class(TQuickRep)
    QRBand1: TQRBand;
    QCheques: TADOQuery;
    QChequesBAN_NOMBRE: TIBStringField;
    QChequesCHE_NUMERO: TIntegerField;
    QChequesCHE_FECHA: TDateTimeField;
    QChequesCHE_CONCEPTO1: TIBStringField;
    QChequesCHE_CONCEPTO2: TIBStringField;
    QChequesCHE_BENEF: TIBStringField;
    QChequesCHE_MONTO: TFloatField;
    QChequesCHE_STATUS: TIBStringField;
    QChequesCHE_TIPO: TIBStringField;
    QChequesUSU_NOMBRE: TIBStringField;
    QChequesEMP_CODIGO: TIntegerField;
    QChequesBAN_CODIGO: TIntegerField;
    dsCheques: TDataSource;
    QDetalle: TADOQuery;
    QDetalleCAT_CUENTA: TIBStringField;
    QDetalleCAT_NOMBRE: TIBStringField;
    QDetalleDET_ORIGEN: TIBStringField;
    QDetalleDET_MONTO: TFloatField;
    QDetalleBAN_CODIGO: TIntegerField;
    QDetalleCHE_NUMERO: TIntegerField;
    QDetalleDET_SECUENCIA: TIntegerField;
    QDetalleEMP_CODIGO: TIntegerField;
    QRSubDetail1: TQRSubDetail;
    lbCheque: TQRDBText;
    lbDia: TQRLabel;
    lbMes: TQRLabel;
    lbAno: TQRLabel;
    lbMontoLetra: TQRLabel;
    lbBenef: TQRDBText;
    lbMonto: TQRDBText;
    lbConcepto1: TQRDBText;
    lbConcepto2: TQRDBText;
    lbNumeroConc: TQRDBText;
    lbMontoConc: TQRDBText;
    lbCuenta: TQRDBText;
    lbDescrip: TQRDBText;
    QDetalleDebito: TFloatField;
    QDetalleCredito: TFloatField;
    lbDB: TQRDBText;
    lbCR: TQRDBText;
    lbNombreCia: TQRLabel;
    lbDireccionCia: TQRLabel;
    lbRNC: TQRLabel;
    lbNomBanco: TQRLabel;
    lbCtaBanco: TQRLabel;
    QChequesSUC_CODIGO: TIntegerField;
    QChequesCHE_MONTO_BANCO: TBCDField;
    lbConcepto3: TQRDBText;
    QChequesche_concepto3: TStringField;
    lbFechaConc: TQRDBText;
    lbConceptoProv3: TQRDBText;
    lbConceptoProv2: TQRDBText;
    lbConceptoProv1: TQRDBText;
    QProveedor: TADOQuery;
    QProveedorsup_concepto_cheque: TStringField;
    QChequessup_codigo: TIntegerField;
    QChequesNegritas: TBooleanField;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QDetalleCalcFields(DataSet: TDataSet);
    procedure QChequesAfterOpen(DataSet: TDataSet);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

Const
  DMes : array[1..12] of String = ('Enero','Febrero','Marzo',
                                  'Abril','Mayo','Junio',
                                  'Julio','Agosto','Septiembre',
                                  'Octubre','Noviembre','Diciembre');
                                  
  DMesIngles : array[1..12] of String = ('January','February','March',
                                  'April','May','Jun',
                                  'July','August','September',
                                  'Octuber','November','December');

var
  RepCheque: TRepCheque;

implementation

uses SIGMA01, QRPrntr;


{$R *.DFM}

procedure TRepCheque.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
  idioma : string;
begin
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select ban_nombre, BAN_CUENTA, ban_idioma_numeracion from bancos');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.SQL.Add('and ban_codigo = :ban');
  dm.Query1.SQL.Add('and suc_codigo = :suc');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('ban').Value := QChequesBAN_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('suc').Value := QChequesSUC_CODIGO.Value;
  dm.Query1.Open;
  lbNomBanco.Caption := dm.Query1.FieldByName('ban_nombre').AsString;
  lbCtaBanco.Caption := dm.Query1.FieldByName('BAN_CUENTA').AsString;
  idioma := dm.Query1.FieldByName('ban_idioma_numeracion').AsString;

  if pos(lbCtaBanco.Caption, lbNomBanco.Caption) > 0 then
     lbNomBanco.Caption := copy(lbNomBanco.Caption,1,pos(lbCtaBanco.Caption, lbNomBanco.Caption)-1); 

  lbNombreCia.Caption := dm.QEmpresasEMP_NOMBRE.Value;
  lbDireccionCia.Caption := dm.QEmpresasEMP_DIRECCION.Value;
  lbRNC.Caption := 'RNC:'+dm.QEmpresasEMP_RNC.Value;

  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select COL_NUMEROCK, LIN_NUMEROCK, COL_FECHA,');
  dm.Query1.SQL.Add('LIN_FECHA, COL_MONTOLETRA, LIN_MONTOLETRA,');
  dm.Query1.SQL.Add('COL_MONTO, LIN_MONTO, COL_CONCEPTO1,LIN_CONCEPTO1,');
  dm.Query1.SQL.Add('COL_CONCEPTO2, LIN_CONCEPTO2, COL_MONTOCONCEPTO,');
  dm.Query1.SQL.Add('LIN_MONTOCONCEPTO, PAR_IMPRIMEDET, PAR_IMPNUMEROCKCONCEPTO,');
  dm.Query1.SQL.Add('COL_MES, LIN_MES, COL_DIA, LIN_DIA, COL_ANO, LIN_ANO,');
  dm.Query1.SQL.Add('COL_NUMEROCKCONC, LIN_NUMEROCKCONC, COL_DETALLE, LIN_DETALLE,');
  dm.Query1.SQL.Add('lin_benef, col_benef, col_cuenta, col_descuenta, col_debito,');
  dm.Query1.SQL.Add('col_credito, LIN_NOMCIA, COL_NOMCIA, LIN_DIRCIA, COL_DIRCIA,');
  dm.Query1.SQL.Add('LIN_RNC, COL_RNC, LIN_NOMBANCO, COL_NOMBANCO, LIN_CTABANCO,');
  dm.Query1.SQL.Add('COL_CTABANCO, col_concepto3, lin_concepto3, col_fechackconc, lin_fechackconc,');
  dm.Query1.SQL.Add('lin_concepto_proveedor, col_concepto_proveedor, par_mes_letra');
  dm.Query1.SQL.Add('from parconfigcheque');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.SQL.Add('and ban_codigo = :ban');
  dm.Query1.SQL.Add('and suc_codigo = :suc');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('ban').Value := QChequesBAN_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('suc').Value := QChequesSUC_CODIGO.Value;
  dm.Query1.Open;

  if dm.Query1.FieldByName('par_mes_letra').AsString <> 'True' then
  begin
    lbAno.Caption := copy(IntToStr(YearOf(QChequesCHE_FECHA.Value)),1,1)+'  '+
                     copy(IntToStr(YearOf(QChequesCHE_FECHA.Value)),2,1)+'  '+
                     copy(IntToStr(YearOf(QChequesCHE_FECHA.Value)),3,1)+'  '+
                     copy(IntToStr(YearOf(QChequesCHE_FECHA.Value)),4,1);
  end
  else
    lbAno.Caption := IntToStr(YearOf(QChequesCHE_FECHA.Value));

  if dm.Query1.FieldByName('par_mes_letra').AsString = 'True' then
  begin
    if idioma = 'ES' then
      lbDia.Caption := IntToStr(DayOf(QChequesCHE_FECHA.Value))+' De'
    else
      lbDia.Caption := IntToStr(DayOf(QChequesCHE_FECHA.Value))+' Of';

    if idioma = 'ES' then
      lbMes.Caption := DMes[MonthOf(QChequesCHE_FECHA.Value)]+' Del '
    else
      lbMes.Caption := DMesIngles[MonthOf(QChequesCHE_FECHA.Value)]+' Of ';
  end
  else
  begin
    lbDia.Caption := copy(formatfloat('00',strtofloat(inttostr((DayOf(QChequesCHE_FECHA.Value))))),1,1) + '  '+
                     copy(formatfloat('00',strtofloat(inttostr((DayOf(QChequesCHE_FECHA.Value))))),2,1);

    lbMes.Caption := copy(formatfloat('00',strtofloat(inttostr((MonthOf(QChequesCHE_FECHA.Value))))),1,1) + '  ' +
                     copy(formatfloat('00',strtofloat(inttostr((MonthOf(QChequesCHE_FECHA.Value))))),2,1);
  end;

  lbCheque.Top      := dm.Query1.FieldbyName('lin_numerock').AsInteger;
  lbCheque.Left     := dm.Query1.FieldbyName('col_numerock').AsInteger;
  lbDia.Top         := dm.Query1.FieldbyName('lin_dia').AsInteger;
  lbDia.Left        := dm.Query1.FieldbyName('col_dia').AsInteger;
  lbMes.Top         := dm.Query1.FieldbyName('lin_mes').AsInteger;
  lbMes.Left        := dm.Query1.FieldbyName('col_mes').AsInteger;
  lbAno.Top         := dm.Query1.FieldbyName('lin_ano').AsInteger;
  lbAno.Left        := dm.Query1.FieldbyName('col_ano').AsInteger;
  lbMontoLetra.Top  := dm.Query1.FieldbyName('lin_montoletra').AsInteger;
  lbMontoLetra.Left := dm.Query1.FieldbyName('col_montoletra').AsInteger;
  lbBenef.Top       := dm.Query1.FieldbyName('lin_benef').AsInteger;
  lbBenef.Left      := dm.Query1.FieldbyName('col_benef').AsInteger;
  lbMonto.Top       := dm.Query1.FieldbyName('lin_monto').AsInteger;
  lbMonto.Left      := dm.Query1.FieldbyName('col_monto').AsInteger;
  lbConcepto1.Top   := dm.Query1.FieldbyName('lin_concepto1').AsInteger;
  lbConcepto1.Left  := dm.Query1.FieldbyName('col_concepto1').AsInteger;
  lbConcepto2.Top   := dm.Query1.FieldbyName('lin_concepto2').AsInteger;
  lbConcepto2.Left  := dm.Query1.FieldbyName('col_concepto2').AsInteger;
  lbConcepto3.Top   := dm.Query1.FieldbyName('lin_concepto3').AsInteger;
  lbConcepto3.Left  := dm.Query1.FieldbyName('col_concepto3').AsInteger;
  lbNumeroConc.Top  := dm.Query1.FieldbyName('lin_NUMEROCKCONC').AsInteger;
  lbNumeroConc.Left := dm.Query1.FieldbyName('col_NUMEROCKCONC').AsInteger;
  lbMontoConc.Top   := dm.Query1.FieldbyName('lin_MONTOCONCEPTO').AsInteger;
  lbMontoConc.Left  := dm.Query1.FieldbyName('col_MONTOCONCEPTO').AsInteger;
  lbFechaConc.Top   := dm.Query1.FieldbyName('lin_fechackconc').AsInteger;
  lbFechaConc.Left  := dm.Query1.FieldbyName('col_fechackconc').AsInteger;

  if not QChequessup_codigo.IsNull then
  begin
    QProveedor.Close;
    QProveedor.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    QProveedor.Parameters.ParamByName('sup').Value := QChequessup_codigo.Value;
    QProveedor.Open;

    if QProveedorsup_concepto_cheque.Value = 'True' then
    begin
      lbConceptoProv1.Top  := dm.Query1.FieldbyName('lin_concepto_proveedor').AsInteger;
      lbConceptoProv1.Left := dm.Query1.FieldbyName('col_concepto_proveedor').AsInteger;
      lbConceptoProv2.Top  := dm.Query1.FieldbyName('lin_concepto_proveedor').AsInteger+20;
      lbConceptoProv2.Left := dm.Query1.FieldbyName('col_concepto_proveedor').AsInteger;
      lbConceptoProv3.Top  := dm.Query1.FieldbyName('lin_concepto_proveedor').AsInteger+40;
      lbConceptoProv3.Left := dm.Query1.FieldbyName('col_concepto_proveedor').AsInteger;
    end
    else
    begin
      lbConceptoProv1.Top  := -1000;
      lbConceptoProv2.Top  := -1000;
      lbConceptoProv3.Top  := -1000;
    end;
  end
  else
  begin
    lbConceptoProv1.Top  := -1000;
    lbConceptoProv2.Top  := -1000;
    lbConceptoProv3.Top  := -1000;
  end;

  if idioma = 'ES' then
    lbMontoLetra.Caption := dm.numero2Letras(QChequesCHE_MONTO_BANCO.Value )
  else
    lbMontoLetra.Caption := dm.numero2LetrasIngles(QChequesCHE_MONTO_BANCO.Value );
    
  QRBand1.Height := dm.Query1.FieldbyName('lin_detalle').AsInteger;
  lbCuenta.Left  := dm.Query1.FieldbyName('col_cuenta').AsInteger;
  lbDescrip.Left := dm.Query1.FieldbyName('col_descuenta').AsInteger;
  lbDB.Left := dm.Query1.FieldbyName('col_debito').AsInteger;
  lbCR.Left := dm.Query1.FieldbyName('col_credito').AsInteger;
  lbNombreCia.Top  := dm.Query1.FieldbyName('LIN_NOMCIA').AsInteger;
  lbNombreCia.Left := dm.Query1.FieldbyName('COL_NOMCIA').AsInteger;
  lbDireccionCia.Top  := dm.Query1.FieldbyName('LIN_DIRCIA').AsInteger;
  lbDireccionCia.Left := dm.Query1.FieldbyName('COL_DIRCIA').AsInteger;
  lbRNC.Top := dm.Query1.FieldbyName('LIN_RNC').AsInteger;
  lbRNC.Left := dm.Query1.FieldbyName('COL_RNC').AsInteger;
  lbNomBanco.Top := dm.Query1.FieldbyName('LIN_NOMBANCO').AsInteger;
  lbNomBanco.Left := dm.Query1.FieldbyName('COL_NOMBANCO').AsInteger;
  lbCtaBanco.Top := dm.Query1.FieldbyName('LIN_CTABANCO').AsInteger;
  lbCtaBanco.Left := dm.Query1.FieldbyName('COL_CTABANCO').AsInteger;
end;

procedure TRepCheque.QDetalleCalcFields(DataSet: TDataSet);
begin
  if QDetalleDET_ORIGEN.Value = 'Debito' then
    QDetalleDebito.Value := QDetalleDET_MONTO.Value
  else
    QDetalleCredito.Value := QDetalleDET_MONTO.Value;
end;

procedure TRepCheque.QChequesAfterOpen(DataSet: TDataSet);
begin
  QDetalle.Open;
end;

procedure TRepCheque.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  lbCR.Enabled := True;
  lbDB.Enabled := True;
  if QDetalleDET_ORIGEN.Value = 'Debito' then
    lbCR.Enabled := False
  else
    lbDB.Enabled := False
end;

procedure TRepCheque.QRBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('update cheques set che_impreso = '+#39+'S'+#39);
  dm.Query1.SQL.Add('where emp_Codigo = :emp');
  dm.Query1.SQL.Add('and ban_codigo = :ban');
  dm.Query1.SQL.Add('and che_numero = :num');
  dm.Query1.SQL.Add('and suc_codigo = :suc');
  dm.Query1.Parameters.ParamByName('emp').Value   := dm.QEmpresasEMP_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('ban').Value   := QChequesBAN_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('num').Value   := QChequesCHE_NUMERO.Value;
  dm.Query1.Parameters.ParamByName('suc').Value   := QChequesSUC_CODIGO.Value;
  dm.Query1.ExecSQL;
end;

procedure TRepCheque.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
//RepCheque.Page.Length := printer.PaperLengthValue;
//RepCheque.Page.Width  := printer.PaperWidthValue;

if QChequesNegritas.Value = True then begin
lbCheque.Font.Style := [fsBold];
lbDia.Font.Style := [fsBold];
lbMes.Font.Style := [fsBold];
lbAno.Font.Style := [fsBold];
lbBenef.Font.Style := [fsBold];
lbMontoLetra.Font.Style := [fsBold];
lbMonto.Font.Style := [fsBold];
lbNombreCia.Font.Style := [fsBold];
lbNomBanco.Font.Style := [fsBold];
lbCtaBanco.Font.Style := [fsBold];
end;

if not QChequesNegritas.Value = True then begin
lbCheque.Font.Style := [];
lbDia.Font.Style := [];
lbMes.Font.Style := [];
lbAno.Font.Style := [];
lbBenef.Font.Style := [];
lbMontoLetra.Font.Style := [];
lbMonto.Font.Style := [];
lbNombreCia.Font.Style := [];
lbNomBanco.Font.Style := [];
lbCtaBanco.Font.Style := [];
end;


end;

end.
