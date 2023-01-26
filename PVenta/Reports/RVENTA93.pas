unit RVENTA93;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, DB, ADODB;

type
  TRepCuadreCajasIp = class(TQuickRep)
    QRBand1: TQRBand;
    lbTitulo: TQRLabel;
    lbcaja: TQRLabel;
    lbFecha: TQRLabel;
    QRSysData1: TQRSysData;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRBand3: TQRBand;
    QCuadre: TADOQuery;
    QCuadrefecha: TDateTimeField;
    QCuadrecaja: TIntegerField;
    QCuadreusu_codigo: TIntegerField;
    QCuadresecuencia: TAutoIncField;
    QCuadreefectivo_cajero: TBCDField;
    QCuadrecheque_cajero: TBCDField;
    QCuadretarjeta_cajero: TBCDField;
    QCuadreefectivo_total: TBCDField;
    QCuadrecheque_total: TBCDField;
    QCuadretarjeta_total: TBCDField;
    QCuadreefectivo_asignado: TBCDField;
    QCuadrefecha_hora: TDateTimeField;
    QCuadrebonosclub_total: TBCDField;
    QCuadrebonosotros_total: TBCDField;
    QDenominacion: TADOQuery;
    QDenominacionfecha: TDateTimeField;
    QDenominacioncaja: TIntegerField;
    QDenominacionusu_codigo: TIntegerField;
    QDenominacionsecuencia: TIntegerField;
    QDenominacioncantidad: TIntegerField;
    QDenominacionmonto: TBCDField;
    dsCuadre: TDataSource;
    QRLabel17: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    lbcant1: TQRLabel;
    lbcant2: TQRLabel;
    lbcant3: TQRLabel;
    lbcant4: TQRLabel;
    lbcant5: TQRLabel;
    lbcant6: TQRLabel;
    lbcant7: TQRLabel;
    lbcant8: TQRLabel;
    lbcant9: TQRLabel;
    lbcant10: TQRLabel;
    lbcant11: TQRLabel;
    lbcant12: TQRLabel;
    lbval1: TQRLabel;
    lbval2: TQRLabel;
    lbval3: TQRLabel;
    lbval4: TQRLabel;
    lbval5: TQRLabel;
    lbval6: TQRLabel;
    lbval7: TQRLabel;
    lbval8: TQRLabel;
    lbval9: TQRLabel;
    lbval10: TQRLabel;
    lbval11: TQRLabel;
    lbval12: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    lbmto1: TQRLabel;
    lbmto2: TQRLabel;
    lbmto3: TQRLabel;
    lbmto4: TQRLabel;
    lbmto5: TQRLabel;
    lbmto6: TQRLabel;
    lbmto7: TQRLabel;
    lbmto8: TQRLabel;
    lbdif1: TQRLabel;
    lbdif2: TQRLabel;
    lbdif3: TQRLabel;
    lbdif4: TQRLabel;
    lbdif5: TQRLabel;
    lbdif6: TQRLabel;
    lbdif7: TQRLabel;
    lbdif8: TQRLabel;
    QCuadrebonosclub_cajero: TBCDField;
    QCuadrebonosotros_cajero: TBCDField;
    QCuadrecredito_cajero: TBCDField;
    QCuadrecredito_total: TBCDField;
    lbcajera: TQRLabel;
    QRBand2: TQRBand;
    lbcajero2: TQRLabel;
    QRShape1: TQRShape;
    lbusuario: TQRLabel;
    QRShape2: TQRShape;
    lbfacturas: TQRLabel;
    lbmontoemp1: TQRLabel;
    lbmontoemp2: TQRLabel;
    Query1: TADOQuery;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  RepCuadreCajasIp: TRepCuadreCajasIp;

implementation

uses SIGMA01;

{$R *.DFM}

procedure TRepCuadreCajasIp.QuickRepBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
var
  total, devueltack : double;
begin
  //denominaciones
  if QDenominacion.Locate('monto',2000,[]) then
  begin
    lbcant1.Caption := IntToStr(QDenominacioncantidad.Value);
    lbval1.Caption  := format('%n',[QDenominacioncantidad.Value * QDenominacionmonto.Value]);
  end;
  if QDenominacion.Locate('monto',1000,[]) then
  begin
    lbcant2.Caption := IntToStr(QDenominacioncantidad.Value);
    lbval2.Caption  := format('%n',[QDenominacioncantidad.Value * QDenominacionmonto.Value]);
  end;
  if QDenominacion.Locate('monto',500,[]) then
  begin
    lbcant3.Caption := IntToStr(QDenominacioncantidad.Value);
    lbval3.Caption  := format('%n',[QDenominacioncantidad.Value * QDenominacionmonto.Value]);
  end;
  if QDenominacion.Locate('monto',200,[]) then
  begin
    lbcant4.Caption := IntToStr(QDenominacioncantidad.Value);
    lbval4.Caption  := format('%n',[QDenominacioncantidad.Value * QDenominacionmonto.Value]);
  end;
  if QDenominacion.Locate('monto',100,[]) then
  begin
    lbcant5.Caption := IntToStr(QDenominacioncantidad.Value);
    lbval5.Caption  := format('%n',[QDenominacioncantidad.Value * QDenominacionmonto.Value]);
  end;
  if QDenominacion.Locate('monto',50,[]) then
  begin
    lbcant6.Caption := IntToStr(QDenominacioncantidad.Value);
    lbval6.Caption  := format('%n',[QDenominacioncantidad.Value * QDenominacionmonto.Value]);
  end;
  if QDenominacion.Locate('monto',25,[]) then
  begin
    lbcant7.Caption := IntToStr(QDenominacioncantidad.Value);
    lbval7.Caption  := format('%n',[QDenominacioncantidad.Value * QDenominacionmonto.Value]);
  end;
  if QDenominacion.Locate('monto',20,[]) then
  begin
    lbcant8.Caption := IntToStr(QDenominacioncantidad.Value);
    lbval8.Caption  := format('%n',[QDenominacioncantidad.Value * QDenominacionmonto.Value]);
  end;
  if QDenominacion.Locate('monto',10,[]) then
  begin
    lbcant9.Caption := IntToStr(QDenominacioncantidad.Value);
    lbval9.Caption  := format('%n',[QDenominacioncantidad.Value * QDenominacionmonto.Value]);
  end;
  if QDenominacion.Locate('monto',5,[]) then
  begin
    lbcant10.Caption := IntToStr(QDenominacioncantidad.Value);
    lbval10.Caption  := format('%n',[QDenominacioncantidad.Value * QDenominacionmonto.Value]);
  end;
  if QDenominacion.Locate('monto',1,[]) then
  begin
    lbcant11.Caption := IntToStr(QDenominacioncantidad.Value);
    lbval11.Caption  := format('%n',[QDenominacioncantidad.Value * QDenominacionmonto.Value]);
  end;
  if QDenominacion.Locate('monto',0.01,[]) then
  begin
    lbcant12.Caption := IntToStr(QDenominacioncantidad.Value);
    lbval12.Caption  := format('%n',[QDenominacioncantidad.Value * QDenominacionmonto.Value]);
  end;

  //General
  total := QCuadreefectivo_cajero.Value + QCuadrecheque_cajero.Value + QCuadretarjeta_cajero.Value +
           QCuadrebonosclub_cajero.Value + QCuadrebonosotros_cajero.Value + QCuadrecredito_cajero.Value;
                                 
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select sum(devuelta) as devuelta from formas_pago_ticket');
  dm.Query1.SQL.Add('where caja = :caj');
  dm.Query1.SQL.Add('and usu_codigo = :usu');
  dm.Query1.SQL.Add('and fecha = convert(datetime, :fec, 105)');
  dm.Query1.SQL.Add('and forma = '+QuotedStr('CHE'));
  dm.Query1.Parameters.ParamByName('caj').Value := QCuadrecaja.Value;
  dm.Query1.Parameters.ParamByName('usu').Value := QCuadreusu_codigo.Value;
  dm.Query1.Parameters.ParamByName('fec').DataType := ftdate;
  dm.Query1.Parameters.ParamByName('fec').Value    := QCuadrefecha.Value;
  dm.Query1.Open;
  devueltack := dm.Query1.FieldByName('devuelta').AsFloat;
  //devueltack := 0;
  if devueltack = 0 then
  begin
    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Add('select sum(f.devuelta) as monto from formas_pago_ticket f,');
    Query1.SQL.Add('montos_ticket m where f.usu_codigo = m.usu_codigo');
    Query1.SQL.Add('and f.caja = m.caja');
    Query1.SQL.Add('and f.ticket = m.ticket');
    Query1.SQL.Add('and f.fecha = m.fecha');
    Query1.SQL.Add('and f.forma = '+QuotedStr('CHE'));
    Query1.SQL.Add('and f.fecha = convert(datetime, :fec, 105)');
    Query1.SQL.Add('and m.caja_original = :caj');
    Query1.SQL.Add('and m.usuario_original = :usu');
    Query1.Parameters.ParamByName('caj').Value := QCuadrecaja.Value;
    Query1.Parameters.ParamByName('usu').Value := QCuadreusu_codigo.Value;
    Query1.Parameters.ParamByName('fec').DataType := ftdate;
    Query1.Parameters.ParamByName('fec').Value    := QCuadrefecha.Value;
    Query1.Open;
    devueltack := Query1.FieldByName('monto').AsFloat;
  end;

  lbmto1.Caption := format('%n',[QCuadreefectivo_cajero.Value]);
  lbmto2.Caption := format('%n',[QCuadrecheque_cajero.Value]);
  lbmto3.Caption := format('%n',[QCuadretarjeta_cajero.Value]);
  lbmto4.Caption := format('%n',[QCuadrebonosclub_cajero.Value]);
  lbmto5.Caption := format('%n',[QCuadrebonosotros_cajero.Value]);
  lbmto6.Caption := format('%n',[QCuadrecredito_cajero.Value]);
  lbmto7.Caption := format('%n',[QCuadreefectivo_asignado.Value]);
  lbmto8.Caption := format('%n',[total]);
  
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select case f.forma');
  dm.Query1.SQL.Add('when '+QuotedStr('EFE')+' then '+QuotedStr('EFECTIVO'));
  dm.Query1.SQL.Add('when '+QuotedStr('CHE')+' then '+QuotedStr('CHEQUE'));
  dm.Query1.SQL.Add('when '+QuotedStr('TAR')+' then '+QuotedStr('TARJETA'));
  dm.Query1.SQL.Add('when '+QuotedStr('BOC')+' then '+QuotedStr('BONO CLUB'));
  dm.Query1.SQL.Add('when '+QuotedStr('OBO')+' then '+QuotedStr('OTROS BONOS'));
  dm.Query1.SQL.Add('when '+QuotedStr('CRE')+' then '+QuotedStr('CREDITO'));
  dm.Query1.SQL.Add('end as forma, sum(f.pagado) as pagado, sum(f.pagado-f.devuelta) as monto');
  dm.Query1.SQL.Add('from formas_pago_ticket f');
  dm.Query1.SQL.Add('where f.caja = :caj');
  dm.Query1.SQL.Add('and f.usu_codigo = :usu');
  dm.Query1.SQL.Add('and f.fecha = convert(datetime, :fec, 105)');
  dm.Query1.SQL.Add('group by f.forma');
  dm.Query1.Parameters.ParamByName('caj').Value := QCuadrecaja.Value;
  dm.Query1.Parameters.ParamByName('usu').Value := QCuadreusu_codigo.Value;
  dm.Query1.Parameters.ParamByName('fec').DataType := ftdate;
  dm.Query1.Parameters.ParamByName('fec').Value    := QCuadrefecha.Value;
  dm.Query1.Open;

  if dm.Query1.Locate('forma', 'EFECTIVO', []) then
  begin
    lbdif1.caption := format('%n',[dm.Query1.FieldByName('monto').asFloat - QCuadreefectivo_cajero.Value-devueltack]);
    total := total - dm.Query1.FieldByName('monto').asFloat;
  end;

  if dm.Query1.Locate('forma', 'CHEQUE', []) then
  begin
    lbdif2.caption := format('%n',[dm.Query1.FieldByName('pagado').asFloat - QCuadrecheque_cajero.Value]);
    total := total - dm.Query1.FieldByName('pagado').asFloat;
  end;

  if dm.Query1.Locate('forma', 'TARJETA', []) then
  begin
    lbdif3.caption := format('%n',[dm.Query1.FieldByName('monto').asFloat - QCuadretarjeta_cajero.Value]);
    total := total - dm.Query1.FieldByName('monto').asFloat;
  end;

  if dm.Query1.Locate('forma', 'BONOS CLUB', []) then
  begin
    lbdif4.caption := format('%n',[dm.Query1.FieldByName('monto').asFloat - QCuadrebonosclub_cajero.Value]);
    total := total - dm.Query1.FieldByName('monto').asFloat;
  end;  

  if dm.Query1.Locate('forma', 'BONOS OTROS', []) then
  begin
    lbdif5.caption := format('%n',[dm.Query1.FieldByName('monto').asFloat - QCuadrebonosotros_cajero.Value]);
    total := total - dm.Query1.FieldByName('monto').asFloat;
  end;

  if dm.Query1.Locate('forma', 'CREDITO', []) then
  begin
    lbdif6.caption := format('%n',[dm.Query1.FieldByName('pagado').asFloat - QCuadrecredito_cajero.Value]);
    total := total - dm.Query1.FieldByName('pagado').asFloat;
  end;

  if dm.Query1.Locate('forma', 'DEPOSITO CAJA', []) then
  begin
    lbdif7.caption := format('%n',[dm.Query1.FieldByName('monto').asFloat - QCuadreefectivo_asignado.Value]);
    total := total - dm.Query1.FieldByName('monto').asFloat;
  end;
  
  lbdif8.Caption := format('%n',[total+devueltack]);
end;

procedure TRepCuadreCajasIp.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
  empresa1, empresacaja : integer;
  efectivo, cheque, devuelta : double;
begin
  Query1.Close;
  Query1.SQL.Clear;
  Query1.SQL.Add('select emp_codigo from NCF_Ticket_TipoDoc where ncf_numero = 2');
  Query1.Open;
  empresa1 := Query1.FieldByName('emp_codigo').AsInteger;

  Query1.Close;
  Query1.SQL.Clear;
  Query1.SQL.Add('select emp_codigo from cajas_ip where caja = :caj');
  Query1.Parameters.ParamByName('caj').Value := QCuadrecaja.Value;
  Query1.Open;
  empresacaja := Query1.FieldByName('emp_codigo').AsInteger;

  //empresa1
  Query1.Close;
  Query1.SQL.Clear;
  Query1.SQL.Add('select sum(f.pagado-f.devuelta) as monto from formas_pago_ticket f, montos_ticket m');
  Query1.SQL.Add('where f.caja = :caj and f.usu_codigo = :usu and f.fecha = convert(datetime, :fec, 105)');
  Query1.SQL.Add('and f.caja = m.caja and f.fecha = m.fecha and f.usu_codigo = m.usu_codigo');
  Query1.SQL.Add('and f.ticket = m.ticket and m.emp_codigo = :emp');
  Query1.SQL.Add('and f.forma = '+QuotedStr('EFE'));
  Query1.Parameters.ParamByName('caj').Value := QCuadrecaja.Value;
  Query1.Parameters.ParamByName('usu').Value := QCuadreusu_codigo.Value;
  Query1.Parameters.ParamByName('fec').DataType := ftdate;
  Query1.Parameters.ParamByName('fec').Value    := QCuadrefecha.Value;
  Query1.Parameters.ParamByName('emp').Value    := empresa1;
  Query1.Open;
  efectivo := Query1.FieldByName('monto').AsFloat;

  //cheque
  Query1.Close;
  Query1.SQL.Clear;
  Query1.SQL.Add('select sum(pagado-devuelta) as monto from formas_pago_ticket');
  Query1.SQL.Add('where caja = :caj and usu_codigo = :usu and fecha = convert(datetime, :fec, 105)');
  Query1.SQL.Add('and forma = '+QuotedStr('CHE'));
  Query1.Parameters.ParamByName('caj').Value := QCuadrecaja.Value;
  Query1.Parameters.ParamByName('usu').Value := QCuadreusu_codigo.Value;
  Query1.Parameters.ParamByName('fec').DataType := ftdate;
  Query1.Parameters.ParamByName('fec').Value    := QCuadrefecha.Value;
  Query1.Open;
  cheque := Query1.FieldByName('monto').AsFloat;
  lbmontoemp1.Caption := format('%n',[efectivo+cheque]);

  //empresa2
  //efectivo
  Query1.Close;
  Query1.SQL.Clear;
  Query1.SQL.Add('select sum(f.pagado-f.devuelta) as monto from formas_pago_ticket f, montos_ticket m');
  Query1.SQL.Add('where f.caja = :caj and f.usu_codigo = :usu and f.fecha = convert(datetime, :fec, 105)');
  Query1.SQL.Add('and f.caja = m.caja and f.fecha = m.fecha and f.usu_codigo = m.usu_codigo');
  Query1.SQL.Add('and f.ticket = m.ticket and m.emp_codigo <> :emp');
  Query1.SQL.Add('and f.forma = '+QuotedStr('EFE'));
  Query1.Parameters.ParamByName('caj').Value := QCuadrecaja.Value;
  Query1.Parameters.ParamByName('usu').Value := QCuadreusu_codigo.Value;
  Query1.Parameters.ParamByName('fec').DataType := ftdate;
  Query1.Parameters.ParamByName('fec').Value    := QCuadrefecha.Value;
  Query1.Parameters.ParamByName('emp').Value    := empresa1;
  Query1.Open;
  efectivo := Query1.FieldByName('monto').AsFloat;
  lbmontoemp2.Caption := format('%n',[efectivo]);
end;

end.
