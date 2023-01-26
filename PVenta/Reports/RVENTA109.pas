unit RVENTA109;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, DB, ADODB;

type
  TRepCuadreCajasIpDefinitivo = class(TQuickRep)
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
    lbcant13: TQRLabel;
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
    lbval13: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    lbmto1: TQRLabel;
    lbmto2: TQRLabel;
    lbmto3: TQRLabel;
    lbmto4: TQRLabel;
    lbmto5: TQRLabel;
    lbmto6: TQRLabel;
    lbmto7: TQRLabel;
    lbmto8: TQRLabel;
    QCuadrebonosclub_cajero: TBCDField;
    QCuadrebonosotros_cajero: TBCDField;
    QCuadrecredito_cajero: TBCDField;
    QCuadrecredito_total: TBCDField;
    lbcajera: TQRLabel;
    Query1: TADOQuery;
    QRBand2: TQRBand;
    lbcajero2: TQRLabel;
    QRShape1: TQRShape;
    lbusuario: TQRLabel;
    QRShape2: TQRShape;
    QRLabel27: TQRLabel;
    lbdif1: TQRLabel;
    lbdif2: TQRLabel;
    lbdif3: TQRLabel;
    lbdif4: TQRLabel;
    lbdif5: TQRLabel;
    lbdif6: TQRLabel;
    lbdif7: TQRLabel;
    lbdif8: TQRLabel;
    QRLabel28: TQRLabel;
    lbcant12: TQRLabel;
    lbval12: TQRLabel;
    lbmontoemp1: TQRLabel;
    lbmontoemp2: TQRLabel;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  RepCuadreCajasIpDefinitivo: TRepCuadreCajasIpDefinitivo;

implementation

uses SIGMA01;

{$R *.DFM}

procedure TRepCuadreCajasIpDefinitivo.QuickRepBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
var
  total, efectivo : double;
  v2000, v1000, v500, v200, v100, v50, v25, v20, v10, v5, v1, v050, v025, v01 : integer;
begin
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
  dm.Query1.SQL.Add('from formas_pago_ticket f, montos_ticket m');
  dm.Query1.SQL.Add('where f.caja = :caj');
  dm.Query1.SQL.Add('and f.usu_codigo = :usu');
  dm.Query1.SQL.Add('and f.fecha = convert(datetime, :fec, 105)');
  dm.Query1.SQL.Add('and f.caja = m.caja');
  dm.Query1.SQL.Add('and f.usu_codigo = m.usu_codigo');
  dm.Query1.SQL.Add('and f.fecha = m.fecha');
  dm.Query1.SQL.Add('and f.ticket = m.ticket');
  dm.Query1.SQL.Add('and m.emp_codigo = :emp');
  dm.Query1.SQL.Add('group by f.forma');
  dm.Query1.Parameters.ParamByName('caj').Value := QCuadrecaja.Value;
  dm.Query1.Parameters.ParamByName('usu').Value := QCuadreusu_codigo.Value;
  dm.Query1.Parameters.ParamByName('fec').DataType := ftdate;
  dm.Query1.Parameters.ParamByName('fec').Value    := QCuadrefecha.Value;
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Open;

  total := 0;
  if dm.Query1.Locate('forma', 'EFECTIVO', []) then
  begin
    lbmto1.caption := format('%n',[dm.Query1.FieldByName('monto').asFloat]);
    total := total + dm.Query1.FieldByName('monto').asFloat;

    efectivo := strtofloat(format('%10.2f',[dm.Query1.FieldByName('monto').asFloat]));
    v2000 := trunc(efectivo/2000);
    efectivo := efectivo - (v2000 * 2000);
    v1000 := trunc(efectivo/1000);
    efectivo := efectivo - (v1000 * 1000);
    v500  := trunc(efectivo/500);
    efectivo := efectivo - (v500 * 500);
    v200  := trunc(efectivo/200);
    efectivo := efectivo - (v200 * 200);
    v100  := trunc(efectivo/100);
    efectivo := efectivo - (v100 * 100);
    v50   := trunc(efectivo/50);
    efectivo := efectivo - (v50 * 50);
    v25   := trunc(efectivo/25);
    efectivo := efectivo - (v25 * 25);
    v20   := trunc(efectivo/20);
    efectivo := efectivo - (v20 * 20);
    v10   := trunc(efectivo/10);
    efectivo := efectivo - (v10 * 10);
    v5    := trunc(efectivo/5);
    efectivo := efectivo - (v5 * 5);
    v1    := trunc(efectivo/1);
    efectivo := efectivo - (v1 * 1);
    v050  := trunc(efectivo/0.50);
    efectivo := efectivo - (v050 * 0.50);
    v025  := trunc(efectivo/0.25);
    efectivo := efectivo - (v025*0.25);
    v01   := trunc(efectivo/0.01);
    efectivo := efectivo - (v01*0.01);

    lbcant1.Caption := inttostr(v2000);
    lbcant2.Caption := inttostr(v1000);
    lbcant3.Caption := inttostr(v500);
    lbcant4.Caption := inttostr(v200);
    lbcant5.Caption := inttostr(v100);
    lbcant6.Caption := inttostr(v50);
    lbcant7.Caption := inttostr(v25);
    lbcant8.Caption := inttostr(v20);
    lbcant9.Caption := inttostr(v10);
    lbcant10.Caption := inttostr(v5);
    lbcant11.Caption := inttostr(v1);
    lbcant12.Caption := inttostr(v050);
    lbcant13.Caption := inttostr(v01);

    lbval1.Caption := format('%n',[(v2000*2000.00)]);
    lbval2.Caption := format('%n',[(v1000*1000.00)]);
    lbval3.Caption := format('%n',[(v500*500.00)]);
    lbval4.Caption := format('%n',[(v200*200.00)]);
    lbval5.Caption := format('%n',[(v100*100.00)]);
    lbval6.Caption := format('%n',[(v50*50.00)]);
    lbval7.Caption := format('%n',[(v25*25.00)]);
    lbval8.Caption := format('%n',[(v20*20.00)]);
    lbval9.Caption := format('%n',[(v10*10.00)]);
    lbval10.Caption := format('%n',[(v5*5.00)]);
    lbval11.Caption := format('%n',[(v1*1.00)]);
    lbval12.Caption := format('%n',[(v050 * 0.50)]);
    lbval13.Caption := format('%n',[(v01 * 0.01)]);
    
  end;

  if dm.Query1.Locate('forma', 'CHEQUE', []) then
  begin
    lbmto2.caption := format('%n',[dm.Query1.FieldByName('monto').asFloat]);
    total := total + dm.Query1.FieldByName('monto').asFloat;
  end;

  if dm.Query1.Locate('forma', 'TARJETA', []) then
  begin
    lbmto3.caption := format('%n',[dm.Query1.FieldByName('monto').asFloat]);
    total := total + dm.Query1.FieldByName('monto').asFloat;
  end;

  if dm.Query1.Locate('forma', 'BONOS CLUB', []) then
  begin
    lbmto4.caption := format('%n',[dm.Query1.FieldByName('monto').asFloat]);
    total := total + dm.Query1.FieldByName('monto').asFloat;
  end;

  if dm.Query1.Locate('forma', 'BONOS OTROS', []) then
  begin
    lbmto5.caption := format('%n',[dm.Query1.FieldByName('monto').asFloat]);
    total := total + dm.Query1.FieldByName('monto').asFloat;
  end;

  if dm.Query1.Locate('forma', 'CREDITO', []) then
  begin
    lbmto6.caption := format('%n',[dm.Query1.FieldByName('monto').asFloat]);
    total := total + dm.Query1.FieldByName('monto').asFloat;
  end;

  if dm.Query1.Locate('forma', 'DEPOSITO CAJA', []) then
  begin
    lbmto7.caption := format('%n',[dm.Query1.FieldByName('monto').asFloat]);
    total := total + dm.Query1.FieldByName('monto').asFloat;
  end;

  lbmto8.Caption := format('%n',[total]);
end;

procedure TRepCuadreCajasIpDefinitivo.QRBand2BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
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
  {Query1.Close;
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
  lbmontoemp2.Caption := format('%n',[efectivo]);}
end;

end.
