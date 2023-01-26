unit PVENTA90;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Buttons, DateUtils, ExtCtrls, DB, ADODB, DBCtrls,
  Grids, DBGrids, IBCustomDataSet;

type
  TfrmCierreDia = class(TForm)
    StaticText1: TStaticText;
    Label1: TLabel;
    Fecha: TDateTimePicker;
    btClose: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid4: TDBGrid;
    TabSheet2: TTabSheet;
    sgoperaciones: TStringGrid;
    TabSheet3: TTabSheet;
    sgcontabilidad: TStringGrid;
    QEmpresas: TADOQuery;
    QEmpresasemp_codigo: TIntegerField;
    QEmpresasemp_nombre: TStringField;
    QEmpresasusu_codigo: TIntegerField;
    dsEmpresas: TDataSource;
    QOperaciones: TADOQuery;
    QOperacionesid: TAutoIncField;
    QOperacionesdescrip: TStringField;
    QOperacionescant: TBCDField;
    QOperacionestotal: TBCDField;
    QResumen: TADOQuery;
    QResumenusu_codigo: TIntegerField;
    QResumenusu_nombre: TStringField;
    QResumencaja: TIntegerField;
    QResumenTotal: TBCDField;
    QResumenefectivo: TBCDField;
    QResumencheque: TBCDField;
    QResumentarjeta: TBCDField;
    QResumencredito: TBCDField;
    QResumenbonos2: TBCDField;
    QResumenbonos: TBCDField;
    QResumennc: TBCDField;
    QResumenNombreCaja: TStringField;
    QResumendescuento: TBCDField;
    dsResumen: TDataSource;
    btnRefreshResEje: TBitBtn;
    btnImprimirResEje: TBitBtn;
    btnRefrescarCuadCaj: TBitBtn;
    btnImprimirCuadCaj: TBitBtn;
    Query1: TADOQuery;
    QFormas: TADOQuery;
    QFormasCODIGO: TIntegerField;
    QFormasFORMA: TIBStringField;
    QFormasMONTO: TFloatField;
    QFormasid: TAutoIncField;
    QFormasfpa_sumaefectivocuadre: TStringField;
    QFacturas: TADOQuery;
    QFacturasTFA_NOMBRE: TIBStringField;
    QFacturasMONTO: TFloatField;
    QFacturasEMP_CODIGO: TIntegerField;
    QFacturasSUC_CODIGO: TIntegerField;
    QFacturasFAC_FORMA: TStringField;
    QFacturasTFA_CODIGO: TIntegerField;
    QFacturasTFA_ACTBALANCE: TStringField;
    QDetalleFactura: TADOQuery;
    QDetalleFacturafac_numero: TIntegerField;
    QDetalleFacturafecha: TDateTimeField;
    QDetalleFacturafac_total: TBCDField;
    QDetalleFacturafac_status: TStringField;
    QRecibos: TADOQuery;
    QRecibosrec_numero: TIntegerField;
    QRecibosrec_fecha: TDateTimeField;
    QRecibosrec_monto: TBCDField;
    QRecibosrec_status: TStringField;
    QRecibosrec_retencion: TBCDField;
    QDesembolsos: TADOQuery;
    QDesembolsosdes_numero: TIntegerField;
    QDesembolsosdes_fecha: TDateTimeField;
    QDesembolsosdes_monto: TBCDField;
    QDesembolsosdes_status: TStringField;
    QItbis: TADOQuery;
    QItbisitbis: TBCDField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnRefreshResEjeClick(Sender: TObject);
    procedure btnImprimirResEjeClick(Sender: TObject);
    procedure btnRefrescarCuadCajClick(Sender: TObject);
  private
    Efectivo, Total, Ret : Currency;
    { Private declarations }

  public
    { Public declarations }
  end;

var
  frmCierreDia: TfrmCierreDia;

implementation

uses SIGMA01, RVENTA94, SIGMA00;


{$R *.dfm}

procedure TfrmCierreDia.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmCierreDia.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCierreDia.BitBtn2Click(Sender: TObject);
begin
  if MessageDlg('DESEA EJECUTAR EL CIERRE',mtConfirmation,[mbyes, mbno],0) = mryes then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cie_fecha from cierre');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cie_fecha = :fec');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('fec').Value    := Fecha.Date;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
      MessageDlg('YA FUE REALIZADO EL CIERRE PARA ESTA FECHA',mtError,[mbok],0)
    else
    begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('insert into cierre (emp_codigo, cie_fecha)');
      dm.Query1.SQL.Add('values (:emp, :fec)');
      dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
      dm.Query1.Parameters.ParamByName('fec').Value    := Fecha.Date;
      dm.Query1.ExecSQL;
      MessageDlg('PROCESO DE CIERRE EJECUTADO',mtInformation,[mbok],0);
      
    end;
  end;
end;

procedure TfrmCierreDia.BitBtn1Click(Sender: TObject);
begin
  if MessageDlg('DESEA CANCELAR EL CIERRE DE ESTA FECHA',mtConfirmation,[mbyes,mbno],0) = mryes then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cie_fecha from cierre');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cie_fecha = :fec');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('fec').Value    := Fecha.Date;
    dm.Query1.Open;
    if dm.Query1.RecordCount = 0 then
      MessageDlg('NO SE REALIZADO EL CIERRE PARA ESTA FECHA',mtError,[mbok],0)
    else
    begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('delete from cierre');
      dm.Query1.SQL.Add('where emp_codigo = :emp');
      dm.Query1.SQL.Add('and cie_fecha = :fec');
      dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
      dm.Query1.Parameters.ParamByName('fec').Value    := Fecha.Date;
      dm.Query1.ExecSQL;
      MessageDlg('PROCESO DE CIERRE FUE REVERSADO',mtInformation,[mbok],0);
    end;
  end;
end;

procedure TfrmCierreDia.FormCreate(Sender: TObject);
begin
  Fecha.Date := Date;
end;


procedure TfrmCierreDia.btnRefreshResEjeClick(Sender: TObject);
var
  a : integer;
  vEf,vCk,vDesembPagado,vCKPagado : currency; //pagoDesc,pagoCK
begin
  vEf := 0; vCk := 0;
//{fernando 2017 05 15
  sgcontabilidad.Cells[1,1] := '0.00';
  sgcontabilidad.Cells[1,2] := '0.00';
  sgcontabilidad.Cells[2,1] := '0.00';
  sgcontabilidad.Cells[2,2] := '0.00';
  sgcontabilidad.Cells[3,1] := '0.00';
  sgcontabilidad.Cells[3,2] := '0.00';
  sgcontabilidad.Cells[4,1] := '0.00';
  sgcontabilidad.Cells[4,2] := '0.00';

  screen.Cursor := crHourGlass;

  //Resumen
  QResumen.Close;
  QResumen.Parameters.parambyname('fec1').DataType  := ftDate;
  QResumen.Parameters.parambyname('fec2').DataType  := ftDate;
  QResumen.Parameters.ParamByName('fec1').Value     := Date;
  QResumen.Parameters.ParamByName('fec2').Value     := Date;
  QResumen.Parameters.ParamByName('emp').Value      := dm.vp_cia;
  QResumen.Open;

  //Resumen Operaciones
  QOperaciones.Close;
  QOperaciones.Parameters.ParamByName('emp').Value      := dm.vp_cia;
  QOperaciones.Parameters.ParamByName('fec1').DataType  := ftdate;
  QOperaciones.Parameters.ParamByName('fec2').DataType  := ftdate;
  QOperaciones.Parameters.ParamByName('fec1').Value     := Date;
  QOperaciones.Parameters.ParamByName('fec2').Value     := Date;
  QOperaciones.Open;

  while not QOperaciones.Eof do
  begin
    for a := 0 to sgoperaciones.RowCount-1 do
    begin
      if Trim(sgoperaciones.Cells[0,a]) = QOperacionesdescrip.Value then
      begin
        sgoperaciones.Cells[1,a] := QOperacionescant.AsString;
        sgoperaciones.Cells[2,a] := FormatCurr('#,0.00',QOperacionestotal.AsFloat);
      end
      else if Trim(sgoperaciones.Cells[3,a]) = QOperacionesdescrip.Value then
      begin
        sgoperaciones.Cells[4,a] := QOperacionescant.AsString;
        sgoperaciones.Cells[5,a] := FormatCurr('#,0.00',QOperacionestotal.AsFloat);
      end;
    end;
    if QOperacionesid.Value = 1 then
      sgcontabilidad.Cells[1,1] := FormatCurr('#,0.00',QOperacionestotal.AsFloat)
    else if QOperacionesid.Value = 8 then
      sgcontabilidad.Cells[2,1] := FormatCurr('#,0.00',QOperacionestotal.AsFloat)
    else if QOperacionesid.Value = 6 then
      sgcontabilidad.Cells[3,1] := FormatCurr('#,0.00',QOperacionestotal.AsFloat)
    else if QOperacionesid.Value = 5 then
      sgcontabilidad.Cells[4,1] := FormatCurr('#,0.00',QOperacionestotal.AsFloat)
    else if QOperacionesid.Value = 11 then //10  old
      sgcontabilidad.Cells[1,2] := FormatCurr('#,0.00',QOperacionestotal.AsFloat)
    else if QOperacionesid.Value = 23 then  //Desembolsos pagados
      //sgcontabilidad.Cells[2,2] := FormatCurr('#,0.00',[QOperacionestotal.AsFloat]);
      vDesembPagado := QOperacionestotal.AsFloat
    else if QOperacionesid.Value = 24 then //Desembolsos pagados
      vCKPagado := QOperacionestotal.AsFloat

//    else if QOperacionesid.Value = 19 then
//      sgcontabilidad.Cells[2,2] := FormatCurr('#,0.00',[QOperacionestotal.AsFloat])
{2017.09.08    else if QOperacionesid.Value =9 then
      vEf := QOperacionestotal.AsFloat
    else if QOperacionesid.Value = 20 then
      vCk := QOperacionestotal.AsFloat //}

    else if QOperacionesid.Value = 10 then //11 old
      sgcontabilidad.Cells[4,2] := FormatCurr('#,0.00',QOperacionestotal.AsFloat);
    QOperaciones.Next;
  end;
//2017.09.08  sgcontabilidad.Cells[2,2] := FormatCurr('#,0.00',[vEf+vCk]);
  sgcontabilidad.Cells[2,2] := FormatCurr('#,0.00',vDesembPagado+vCKPagado);
  screen.Cursor := crDefault;


end;

procedure TfrmCierreDia.btnImprimirResEjeClick(Sender: TObject);
var
  ItbisCaja, ItbisFactura, TotalTicket, TotalFactura, Exento, ExentoTic,
  TotalDev, ItbisDev, GrabadoFac, GrabadoTic, GrabadoDev, ExentoDev, ExentoDevTic, ExentoItbisDev,
  TotalDescFT : Double;
begin
  btnRefreshResEjeClick(Self);
  Exento      := 0;
  GrabadoFac  := 0;
  TotalDescFT := 0;
  Screen.cursor := crHourGlass;



  Application.CreateForm(tRepResumenEjecutivo, RepResumenEjecutivo);
  RepResumenEjecutivo.detallado := True;
  RepResumenEjecutivo.lbFecha.Caption := 'Del ' + DateToStr(Date) + ' Al ' + DateToStr(Date);
  RepResumenEjecutivo.QEmpresas.Parameters.ParamByName('usu').Value := dm.Usuario;
  RepResumenEjecutivo.QEmpresas.Parameters.ParamByName('emp').Value := DM.vp_cia;
  RepResumenEjecutivo.QEmpresas.Open;

  RepResumenEjecutivo.QImpuestos.Close;
  RepResumenEjecutivo.QImpuestos.Parameters.parambyname('fec1').DataType := ftDate;
  RepResumenEjecutivo.QImpuestos.Parameters.parambyname('fec2').DataType := ftDate;
  RepResumenEjecutivo.QImpuestos.Parameters.ParamByName('fec1').Value    := Date;
  RepResumenEjecutivo.QImpuestos.Parameters.ParamByName('fec2').Value    := Date;
  RepResumenEjecutivo.QImpuestos.Parameters.ParamByName('emp').Value     := dm.vp_cia;
  RepResumenEjecutivo.QImpuestos.Open;

  RepResumenEjecutivo.QImpuestosDEV.Close;
  RepResumenEjecutivo.QImpuestosDEV.Parameters.parambyname('fec1').DataType := ftDate;
  RepResumenEjecutivo.QImpuestosDEV.Parameters.parambyname('fec2').DataType := ftDate;
  RepResumenEjecutivo.QImpuestosDEV.Parameters.ParamByName('fec1').Value    := Date;
  RepResumenEjecutivo.QImpuestosDEV.Parameters.ParamByName('fec2').Value    := Date;
  RepResumenEjecutivo.QImpuestosDEV.Parameters.ParamByName('emp').Value     := dm.vp_cia;
  RepResumenEjecutivo.QImpuestosDEV.Open;


  //Total de las Caja
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select sum(m.total) as total, sum(m.itbis) as itbis');
  dm.Query1.SQL.Add('from montos_ticket m');
  dm.Query1.SQL.Add('inner join cajas_ip c on m.caja = c.caja');
  dm.Query1.SQL.Add('where m.fecha between convert(datetime, :fec1, 105) and convert(datetime, :fec2, 105)');
  dm.Query1.SQL.Add('and m.status = '+QuotedStr('FAC'));
  dm.Query1.SQL.Add('and m.emp_codigo = :emp');
  dm.Query1.Parameters.ParamByName('fec1').DataType := ftDate;
  dm.Query1.Parameters.ParamByName('fec2').DataType := ftDate;
  dm.Query1.Parameters.ParamByName('fec1').Value := Date;
  dm.Query1.Parameters.ParamByName('fec2').Value := Date;
  dm.Query1.Parameters.ParamByName('emp').Value  := dm.vp_cia;
  dm.Query1.Open;
  Itbiscaja   := dm.Query1.FieldbyName('itbis').AsFloat;
  TotalTicket := dm.Query1.FieldbyName('total').AsFloat;

  //Grabado de las Caja
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select SUM(m.grabado) grabado');
  dm.Query1.SQL.Add('from montos_ticket m');
  dm.Query1.SQL.Add('inner join cajas_ip c on m.caja = c.caja');
  dm.Query1.SQL.Add('where m.fecha between convert(datetime, :fec1, 105) and convert(datetime, :fec2, 105)');
  dm.Query1.SQL.Add('and m.status = '+QuotedStr('FAC'));
  dm.Query1.SQL.Add('and m.emp_codigo = :emp');
  dm.Query1.Parameters.ParamByName('fec1').DataType := ftDate;
  dm.Query1.Parameters.ParamByName('fec2').DataType := ftDate;
  dm.Query1.Parameters.ParamByName('fec1').Value := Date;
  dm.Query1.Parameters.ParamByName('fec2').Value := Date;
  dm.Query1.Parameters.ParamByName('emp').Value  := dm.vp_cia;
  dm.Query1.Open;
  GrabadoTic := dm.Query1.FieldbyName('grabado').AsFloat;

  //Exento de las Caja
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select SUM(m.exento) exento');
  dm.Query1.SQL.Add('from montos_ticket m');
  dm.Query1.SQL.Add('inner join cajas_ip c on m.caja = c.caja');
  dm.Query1.SQL.Add('where m.fecha between convert(datetime, :fec1, 105) and convert(datetime, :fec2, 105)');
  dm.Query1.SQL.Add('and m.status = '+QuotedStr('FAC'));
  dm.Query1.SQL.Add('and m.emp_codigo = :emp');
  dm.Query1.Parameters.ParamByName('fec1').DataType := ftDate;
  dm.Query1.Parameters.ParamByName('fec2').DataType := ftDate;
  dm.Query1.Parameters.ParamByName('fec1').Value := Date;
  dm.Query1.Parameters.ParamByName('fec2').Value := Date;
  dm.Query1.Parameters.ParamByName('emp').Value  := dm.vp_cia;
  dm.Query1.Open;
  ExentoTic  := dm.Query1.FieldbyName('exento').AsFloat;

  //Total Facturacion   sum(case d.det_itbis when 0 then (d.det_precio*d.det_cantidad) end)as
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select sum(isnull(case when ((det_itbis > 0) and (p.par_itbisincluido = ''True'')) then (det_cantidad*det_precio)/(1+(det_itbis/100))*(det_itbis/100)');
  dm.Query1.SQL.Add('                       when ((det_itbis > 0) and (p.par_itbisincluido = ''False'') and (fac_itbis > 0)) then (det_cantidad*det_precio)*(det_itbis/100)');
  dm.Query1.SQL.Add('else 0 end,0)) itbis');
  dm.Query1.SQL.Add(',sum(isnull(case when ((p.par_itbisincluido = ''True'')) then (det_cantidad*det_precio)/(1+(det_itbis/100))*(1+(det_itbis/100))');
  dm.Query1.SQL.Add('                       when ((p.par_itbisincluido = ''False'') and (fac_itbis > 0)) then (det_cantidad*det_precio)*(1+(det_itbis/100))');
  dm.Query1.SQL.Add('else 0 end,0)) total');

  dm.Query1.SQL.Add('from facturas f');
  dm.Query1.SQL.Add('inner join parametros p on f.emp_codigo = p.emp_codigo');
  dm.Query1.SQL.Add('inner join det_Factura d on f.emp_codigo = d.emp_codigo and f.suc_codigo = d.suc_codigo and f.tfa_codigo = d.tfa_codigo  and f.fac_forma = d.fac_forma and f.fac_numero = d.fac_numero');
  dm.Query1.SQL.Add('where f.emp_codigo = :emp');
  dm.Query1.SQL.Add('and f.fac_fecha between convert(datetime, :fec1, 105) and convert(datetime, :fec2, 105)');
  dm.Query1.SQL.Add('and f.fac_status <> '+QuotedStr('ANU'));
  dm.Query1.Parameters.ParamByName('fec1').DataType := ftDate;
  dm.Query1.Parameters.ParamByName('fec2').DataType := ftDate;
  dm.Query1.Parameters.ParamByName('fec1').Value := Date;
  dm.Query1.Parameters.ParamByName('fec2').Value := Date;
  dm.Query1.Parameters.ParamByName('emp').Value  := dm.vp_cia;
  dm.Query1.Open;
  ItbisFactura := dm.Query1.FieldbyName('itbis').AsFloat;
  TotalFactura := dm.Query1.FieldbyName('total').AsFloat;

  //Grabado Facturacion
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  //dm.Query1.SQL.Add('select sum(case d.det_itbis when 0 then 0 else ((d.det_precio*d.det_cantidad) / ((d.det_itbis/100)+1)) end)');
  //dm.Query1.SQL.Add(' + sum(case d.det_descuento when 0 then 0 else ((d.det_precio*d.det_cantidad) * d.det_descuento) end) as grabado');
  dm.Query1.SQL.Add('select sum(isnull(case when ((det_itbis > 0) and (p.par_itbisincluido = ''True'')) then (det_cantidad*det_precio)/(1+(det_itbis/100))');
  dm.Query1.SQL.Add('when ((det_itbis > 0) and (p.par_itbisincluido = ''False'') and (fac_itbis > 0)) then (det_cantidad*det_precio)');
  dm.Query1.SQL.Add('else 0 end,0)) grabado ');
  dm.Query1.SQL.Add(' ,sum(d.det_totaldesc) as descuento');
  dm.Query1.SQL.Add('from facturas f');
  dm.Query1.SQL.Add('inner join parametros p on f.emp_codigo = p.emp_codigo');
  dm.Query1.SQL.Add('inner join det_Factura d on f.emp_codigo = d.emp_codigo and f.suc_codigo = d.suc_codigo and f.tfa_codigo = d.tfa_codigo  and f.fac_forma = d.fac_forma and f.fac_numero = d.fac_numero');
  dm.Query1.SQL.Add('where f.emp_codigo = :emp and f.fac_fecha between convert(datetime, :fec1, 105) and convert(datetime, :fec2, 105)');
  dm.Query1.SQL.Add('and f.fac_status <> '+QuotedStr('ANU'));
  dm.Query1.Parameters.ParamByName('fec1').DataType := ftDate;
  dm.Query1.Parameters.ParamByName('fec2').DataType := ftDate;
  dm.Query1.Parameters.ParamByName('fec1').Value := Date;
  dm.Query1.Parameters.ParamByName('fec2').Value := Date;
  dm.Query1.Parameters.ParamByName('emp').Value  := dm.vp_cia;
  dm.Query1.Open;
  GrabadoFac := dm.Query1.FieldbyName('grabado').AsFloat;
  TotalDescFT:= dm.Query1.FieldbyName('descuento').AsFloat;

  //Exento
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select sum(isnull(case when ((p.par_itbisincluido = ''True'') and (det_itbis = 0)) then (det_cantidad*det_precio)');
  dm.Query1.SQL.Add('when ((p.par_itbisincluido = ''False'') and (det_itbis = 0)) then (det_cantidad*det_precio)');
  dm.Query1.SQL.Add('else 0 end,0)) monto_exento');
  dm.Query1.SQL.Add(',sum(d.det_totaldesc) as descuento');
  dm.Query1.SQL.Add('from facturas f');
  dm.Query1.SQL.Add('inner join parametros p on f.emp_codigo = p.emp_codigo');
  dm.Query1.SQL.Add('inner join det_Factura d on f.emp_codigo = d.emp_codigo and f.suc_codigo = d.suc_codigo and f.tfa_codigo = d.tfa_codigo  and f.fac_forma = d.fac_forma and f.fac_numero = d.fac_numero');
  dm.Query1.SQL.Add('where f.emp_codigo = :emp and f.fac_fecha between convert(datetime, :fec1, 105) and convert(datetime, :fec2, 105)');
  dm.Query1.SQL.Add('and d.det_itbis = 0 and f.fac_status <> '+QuotedStr('ANU'));
  dm.Query1.Parameters.ParamByName('fec1').DataType := ftDate;
  dm.Query1.Parameters.ParamByName('fec2').DataType := ftDate;
  dm.Query1.Parameters.ParamByName('fec1').Value := Date;
  dm.Query1.Parameters.ParamByName('fec2').Value := Date;
  dm.Query1.Parameters.ParamByName('emp').Value  := dm.vp_cia;
  dm.Query1.Open;
  Exento := dm.Query1.FieldbyName('monto_exento').AsFloat;
  TotalDescFT:= TotalDescFT+dm.Query1.FieldbyName('descuento').AsFloat;

  //Total Devoluciones y NC con NCF
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select SUM(DEV_TOTAL) total, SUM(D.DEV_ITBIS) itbis');
  dm.Query1.SQL.Add('from devolucion d');
  dm.Query1.SQL.Add('where d.emp_codigo = :emp AND D.DEV_ITBIS > 0 ');
  dm.Query1.SQL.Add('and d.dev_numero in');
  dm.Query1.SQL.Add('(select documento from Formas_Pago_Ticket where fecha between :fec1 and :fec2 and forma = '+QuotedStr('DEV')+')');
  dm.Query1.Parameters.ParamByName('fec1').DataType := ftDate;
  dm.Query1.Parameters.ParamByName('fec2').DataType := ftDate;
  dm.Query1.Parameters.ParamByName('fec1').Value := Date;
  dm.Query1.Parameters.ParamByName('fec2').Value := Date;
  dm.Query1.Parameters.ParamByName('emp').Value  := dm.vp_cia;
  dm.Query1.Open;
  ItbisDev := dm.Query1.FieldbyName('itbis').AsFloat;
  TotalDev := dm.Query1.FieldbyName('total').AsFloat;

  //Total Devoluciones
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select SUM(DEV_TOTAL) total, SUM(D.DEV_ITBIS) itbis');
  dm.Query1.SQL.Add('from devolucion d');
  dm.Query1.SQL.Add('where d.emp_codigo = :emp AND D.DEV_ITBIS > 0 ');
  dm.Query1.SQL.Add('and d.dev_fecha between :fec1 and :fec2');
  dm.Query1.Parameters.ParamByName('fec1').DataType := ftDate;
  dm.Query1.Parameters.ParamByName('fec2').DataType := ftDate;
  dm.Query1.Parameters.ParamByName('fec1').Value := Date;
  dm.Query1.Parameters.ParamByName('fec2').Value := Date;
  dm.Query1.Parameters.ParamByName('emp').Value  := dm.vp_cia;
  dm.Query1.Open;
  ItbisDev := ItbisDev + dm.Query1.FieldbyName('itbis').AsFloat;
  TotalDev := TotalDev + dm.Query1.FieldbyName('total').AsFloat;


  //DEvolucion exento Tic
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select SUM(DEV_TOTAL) total');
  dm.Query1.SQL.Add('from devolucion d');
  dm.Query1.SQL.Add('where d.emp_codigo = :emp AND D.DEV_ITBIS = 0 ');
  dm.Query1.SQL.Add('and d.dev_numero in');
  dm.Query1.SQL.Add('(select documento from Formas_Pago_Ticket where fecha between :fec1 and :fec2 and forma = '+QuotedStr('DEV')+')');
  dm.Query1.Parameters.ParamByName('fec1').DataType := ftDate;
  dm.Query1.Parameters.ParamByName('fec2').DataType := ftDate;
  dm.Query1.Parameters.ParamByName('fec1').Value := Date;
  dm.Query1.Parameters.ParamByName('fec2').Value := Date;
  dm.Query1.Parameters.ParamByName('emp').Value  := dm.vp_cia;
  dm.Query1.Open;
  ExentoDevTic      := dm.Query1.FieldbyName('total').AsFloat;


  //DEvolucion exento
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select sum(case when p.par_itbisincluido = ''True'' then (dt.dev_precio*dt.dev_cantidad)');
  dm.Query1.SQL.Add('else  (dt.dev_precio*dt.dev_cantidad)*(1+(dt.dev_itbis/100)) end) total');
  dm.Query1.SQL.Add('from devolucion d');
  dm.Query1.SQL.Add('inner join Det_Devolucion dt on d.emp_codigo = dt.emp_codigo and d.suc_codigo = dt.suc_codigo and d.dev_numero = dt.dev_numero');
  dm.Query1.SQL.Add('inner join Parametros p on d.emp_codigo = p.emp_codigo');
  dm.Query1.SQL.Add('inner join Productos pr on d.emp_codigo = pr.emp_codigo and dt.pro_codigo = pr.pro_codigo');
  dm.Query1.SQL.Add('where d.emp_codigo = :emp and d.dev_fecha between :fec1 and :fec2 and dt.dev_itbis = 0');
  dm.Query1.Parameters.ParamByName('fec1').DataType := ftDate;
  dm.Query1.Parameters.ParamByName('fec2').DataType := ftDate;
  dm.Query1.Parameters.ParamByName('fec1').Value := Date;
  dm.Query1.Parameters.ParamByName('fec2').Value := Date;
  dm.Query1.Parameters.ParamByName('emp').Value  := dm.vp_cia;
  dm.Query1.Open;
  ExentoDev     := dm.Query1.FieldbyName('total').AsFloat;


  //Grabado Devolucion
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select sum(case when p.par_itbisincluido = ''True'' then (dt.dev_precio*dt.dev_cantidad)');
  dm.Query1.SQL.Add('else  (dt.dev_precio*dt.dev_cantidad)*(1+(dt.dev_itbis/100)) end) total');
  dm.Query1.SQL.Add('from devolucion d');
  dm.Query1.SQL.Add('inner join Det_Devolucion dt on d.emp_codigo = dt.emp_codigo and d.suc_codigo = dt.suc_codigo and d.dev_numero = dt.dev_numero');
  dm.Query1.SQL.Add('inner join Parametros p on d.emp_codigo = p.emp_codigo');
  dm.Query1.SQL.Add('inner join Productos pr on d.emp_codigo = pr.emp_codigo and dt.pro_codigo = pr.pro_codigo');
  dm.Query1.SQL.Add('where d.emp_codigo = :emp and d.dev_fecha between :fec1 and :fec2 and dt.dev_itbis > 0');
  dm.Query1.Parameters.ParamByName('fec1').DataType := ftDate;
  dm.Query1.Parameters.ParamByName('fec2').DataType := ftDate;
  dm.Query1.Parameters.ParamByName('fec1').Value := Date;
  dm.Query1.Parameters.ParamByName('fec2').Value := Date;
  dm.Query1.Parameters.ParamByName('emp').Value  := dm.vp_cia;
  dm.Query1.Open;
  GrabadoDev     := dm.Query1.FieldbyName('total').AsFloat;

  {dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select 0 as itbis, sum(ncr_monto) as total from notascredito');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.SQL.Add('and ncr_fecha between convert(datetime, :fec1, 105) and convert(datetime, :fec2, 105)');
  dm.Query1.SQL.Add('and ncf_fijo is not null');
  dm.Query1.SQL.Add('and (ncr_devolucion is null or ncr_devolucion = 0)');
  dm.Query1.Parameters.ParamByName('fec1').DataType := ftDate;
  dm.Query1.Parameters.ParamByName('fec2').DataType := ftDate;
  dm.Query1.Parameters.ParamByName('fec1').Value := Date;
  dm.Query1.Parameters.ParamByName('fec2').Value := Date;
  dm.Query1.Parameters.ParamByName('emp').Value  := dm.vp_cia;
  dm.Query1.Open;
  ItbisDev := ItbisDev + dm.Query1.FieldbyName('itbis').AsFloat;
  TotalDev := TotalDev + dm.Query1.FieldbyName('total').AsFloat;
  //*******************************
   }
  RepResumenEjecutivo.lbitbis.Caption   := FormatCurr('#,0.00',ItbisCaja+ItbisFactura );
  RepResumenEjecutivo.lbgrabado.Caption := FormatCurr('#,0.00',GrabadoFac + GrabadoTic);
  RepResumenEjecutivo.lbDesc.Caption    := FormatCurr('#,0.00',TotalDescFT);

  RepResumenEjecutivo.lbexento.Caption  := FormatCurr('#,0.00',Exento+ExentoTic);

  RepResumenEjecutivo.lbgrabadodev.Caption := FormatCurr('#,0.00',(GrabadoDev-ItbisDev));
  RepResumenEjecutivo.lbexentodev.Caption  := FormatCurr('#,0.00',ExentoDev+ExentoDevTic);
  RepResumenEjecutivo.lbItbisDevol.Caption := FormatCurr('#,0.00',ItbisDev);

  RepResumenEjecutivo.lbexentototal.Caption  := FormatCurr('#,0.00',(Exento+ExentoTic) - ExentoDev);
  RepResumenEjecutivo.lbgrabadototal.Caption := FormatCurr('#,0.00',(GrabadoFac + GrabadoTic)-(GrabadoDev-ItbisDev));
  RepResumenEjecutivo.lbitbistotal.Caption   := FormatCurr('#,0.00',(ItbisCaja + ItbisFactura) - ItbisDev);

  RepResumenEjecutivo.lbsubttotal1.Caption   := FormatCurr('#,0.00',(GrabadoFac + GrabadoTic + Exento+ExentoTic));
  RepResumenEjecutivo.lbsubttotal2.Caption   := FormatCurr('#,0.00',GrabadoDev-ItbisDev+ExentoDev);
  RepResumenEjecutivo.lbsubttotal3.Caption   := FormatCurr('#,0.00',(GrabadoFac + GrabadoTic + Exento+ExentoTic)-
                                                                     (GrabadoDev-ItbisDev+ExentoDev));

  RepResumenEjecutivo.lbtotal1.Caption    := FormatCurr('#,0.00',(ItbisCaja + ItbisFactura) + ((GrabadoFac + GrabadoTic)-TotalDescFT) + (Exento+ExentoTic));
  RepResumenEjecutivo.lbtotal2.Caption    := FormatCurr('#,0.00',GrabadoDev+ExentoDev);
  RepResumenEjecutivo.lbtotal3.Caption    := FormatCurr('#,0.00',((ItbisCaja + ItbisFactura) + ((GrabadoFac + GrabadoTic)-TotalDescFT) + (Exento+ExentoTic))-
                                                                 (GrabadoDev+ExentoDev));

  RepResumenEjecutivo.QResumen.Close;
  RepResumenEjecutivo.QResumen.Parameters.parambyname('fec1').DataType := ftDate;
  RepResumenEjecutivo.QResumen.Parameters.parambyname('fec2').DataType := ftDate;
  RepResumenEjecutivo.QResumen.Parameters.ParamByName('fec1').Value := Date;
  RepResumenEjecutivo.QResumen.Parameters.ParamByName('fec2').Value := Date;
  RepResumenEjecutivo.QResumen.Parameters.ParamByName('emp').Value  := dm.vp_cia;
  RepResumenEjecutivo.QResumen.Open;

  RepResumenEjecutivo.lbcant1.Caption  := sgoperaciones.Cells[1,0];
  RepResumenEjecutivo.lbcant2.Caption  := sgoperaciones.Cells[1,1];
  RepResumenEjecutivo.lbcant3.Caption  := sgoperaciones.Cells[1,2];
  RepResumenEjecutivo.lbcant4.Caption  := sgoperaciones.Cells[1,3];
  RepResumenEjecutivo.lbcant5.Caption  := sgoperaciones.Cells[1,4];
  RepResumenEjecutivo.lbcant6.Caption  := sgoperaciones.Cells[1,5];
  RepResumenEjecutivo.lbcant7.Caption  := sgoperaciones.Cells[1,6];
  RepResumenEjecutivo.lbcant8.Caption  := sgoperaciones.Cells[1,7];
  RepResumenEjecutivo.lbcant9.Caption  := sgoperaciones.Cells[1,8];
  RepResumenEjecutivo.lbcant10.Caption := sgoperaciones.Cells[1,9];
  RepResumenEjecutivo.lbcant11.Caption := sgoperaciones.Cells[1,10];
  RepResumenEjecutivo.lbcant12.Caption := sgoperaciones.Cells[4,0];
  RepResumenEjecutivo.lbcant13.Caption := sgoperaciones.Cells[4,1];
  RepResumenEjecutivo.lbcant14.Caption := sgoperaciones.Cells[4,2];
  RepResumenEjecutivo.lbcant15.Caption := sgoperaciones.Cells[4,3];
  RepResumenEjecutivo.lbcant16.Caption := sgoperaciones.Cells[4,4];
  RepResumenEjecutivo.lbcant17.Caption := sgoperaciones.Cells[4,5];
  RepResumenEjecutivo.lbcant18.Caption := sgoperaciones.Cells[4,6];
  RepResumenEjecutivo.lbcant19.Caption := sgoperaciones.Cells[4,7];
  RepResumenEjecutivo.lbcant20.Caption := sgoperaciones.Cells[4,8];
  RepResumenEjecutivo.lbcant21.Caption := sgoperaciones.Cells[4,9];
  RepResumenEjecutivo.lbcant22.Caption := sgoperaciones.Cells[4,10];

  RepResumenEjecutivo.lbval1.Caption  := sgoperaciones.Cells[2,0];
  RepResumenEjecutivo.lbval2.Caption  := sgoperaciones.Cells[2,1];
  RepResumenEjecutivo.lbval3.Caption  := sgoperaciones.Cells[2,2];
  RepResumenEjecutivo.lbval4.Caption  := sgoperaciones.Cells[2,3];
  RepResumenEjecutivo.lbval5.Caption  := sgoperaciones.Cells[2,4];
  RepResumenEjecutivo.lbval6.Caption  := sgoperaciones.Cells[2,5];
  RepResumenEjecutivo.lbval7.Caption  := sgoperaciones.Cells[2,6];
  RepResumenEjecutivo.lbval8.Caption  := sgoperaciones.Cells[2,7];
  RepResumenEjecutivo.lbval9.Caption  := sgoperaciones.Cells[2,8];
  RepResumenEjecutivo.lbval10.Caption := sgoperaciones.Cells[2,9];
  RepResumenEjecutivo.lbval11.Caption := sgoperaciones.Cells[2,10];
  RepResumenEjecutivo.lbval12.Caption := sgoperaciones.Cells[5,0];
  RepResumenEjecutivo.lbval13.Caption := sgoperaciones.Cells[5,1];
  RepResumenEjecutivo.lbval14.Caption := sgoperaciones.Cells[5,2];
  RepResumenEjecutivo.lbval15.Caption := sgoperaciones.Cells[5,3];
  RepResumenEjecutivo.lbval16.Caption := sgoperaciones.Cells[5,4];
  RepResumenEjecutivo.lbval17.Caption := sgoperaciones.Cells[5,5];
  RepResumenEjecutivo.lbval18.Caption := sgoperaciones.Cells[5,6];
  RepResumenEjecutivo.lbval19.Caption := sgoperaciones.Cells[5,7];
  RepResumenEjecutivo.lbval20.Caption := sgoperaciones.Cells[5,8];
  RepResumenEjecutivo.lbval21.Caption := sgoperaciones.Cells[5,9];
  RepResumenEjecutivo.lbval22.Caption := sgoperaciones.Cells[5,10];

  RepResumenEjecutivo.lbfac1.Caption   := sgcontabilidad.Cells[1,1];
  RepResumenEjecutivo.lbfac2.Caption   := sgcontabilidad.Cells[1,2];
  RepResumenEjecutivo.lbcobro1.Caption := sgcontabilidad.Cells[2,1];
  RepResumenEjecutivo.lbcobro2.Caption := sgcontabilidad.Cells[2,2];
  RepResumenEjecutivo.lbdb1.Caption    := sgcontabilidad.Cells[3,1];
  RepResumenEjecutivo.lbdb2.Caption    := sgcontabilidad.Cells[3,2];
  RepResumenEjecutivo.lbcr1.Caption    := sgcontabilidad.Cells[4,1];
  RepResumenEjecutivo.lbcr2.Caption    := sgcontabilidad.Cells[4,2];

  Screen.cursor := crDefault;

  RepResumenEjecutivo.PrinterSetup;
  RepResumenEjecutivo.QRPDFFilter1.BeforeDestruction;
  RepResumenEjecutivo.Destroy;
end;

procedure TfrmCierreDia.btnRefrescarCuadCajClick(Sender: TObject);
var
  caja1, caja2, cajero1, cajero2, sucursal1, sucursal2 : integer;
  totalefectivo, totalitbis : double;
begin

    cajero1 := 1;
    cajero2 := 1000;

    caja1 := 1;
    caja2 := 1000;

    sucursal1 := 1;
    sucursal2 := 1000;

  Efectivo := 0;
  Total := 0;
  totalefectivo := 0;
  totalitbis := 0;

  //buscando retenciones
  Query1.Close;
  Query1.SQL.Clear;
  Query1.SQL.Add('select sum(isnull(rec_retencion,0)) as valor from recibos');
  Query1.SQL.Add('where emp_codigo = :emp');
  Query1.SQL.Add('and caj_codigo between :caj1 and :caj2');
  Query1.SQL.Add('and rec_caja between :caja1 and :caja2');
  Query1.SQL.Add('and suc_codigo between :suc1 and :suc2');
  Query1.SQL.Add('and rec_fecha between convert(datetime, :fec1, 105) and convert(datetime, :fec2, 105)');
  Query1.Parameters.ParamByName('emp').Value   := dm.vp_cia;
  Query1.Parameters.ParamByName('caj1').Value  := cajero1;
  Query1.Parameters.ParamByName('caj2').Value  := cajero2;
  Query1.Parameters.ParamByName('caja1').Value := caja1;
  Query1.Parameters.ParamByName('caja2').Value := caja2;
  Query1.Parameters.ParamByName('fec1').DataType := ftDate;
  Query1.Parameters.ParamByName('fec2').DataType := ftDate;
  Query1.Parameters.ParamByName('fec1').Value    := Date;
  Query1.Parameters.ParamByName('fec2').Value    := Date;
  Query1.Parameters.ParamByName('suc1').DataType    := ftInteger;
  Query1.Parameters.ParamByName('suc2').DataType    := ftInteger;
  Query1.Parameters.ParamByName('suc1').Value    := sucursal1;
  Query1.Parameters.ParamByName('suc2').Value    := sucursal2;
  Query1.Open;
  Ret := Query1.FieldByName('valor').AsFloat;

  //buscando efectivo asignado al cajero
  Query1.Close;
  Query1.SQL.Clear;
  Query1.SQL.Add('select caj_efectivo from cajeros');
  Query1.SQL.Add('where emp_codigo = :emp');
  Query1.SQL.Add('and caj_codigo between :caj1 and :caj2');
  Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  Query1.Parameters.ParamByName('caj1').Value := cajero1;
  Query1.Parameters.ParamByName('caj2').Value := cajero2;
  Query1.Open;
  Efectivo := Query1.FieldByName('caj_efectivo').AsFloat;

  for sucursal1:= 1 TO sucursal2 DO begin
  QFormas.Close;
  QFormas.SQL.Clear;
  QFormas.SQL.Add('SELECT a.*, f.fpa_sumaefectivocuadre FROM PR_CUADRE_FORMASPAGO (:EMP, :SUC, :FEC1, :FEC2, :CAJ1, :CAJ2, '+#39+'A'+#39+', :caja) a,');
  QFormas.SQL.Add('formaspago f where f.emp_codigo = :emp2 and f.fpa_codigo = a.codigo');

  QFormas.Parameters.ParamByName('emp2').Value    := dm.vp_cia;
  QFormas.Parameters.ParamByName('emp').Value     := dm.vp_cia;
  QFormas.Parameters.ParamByName('fec1').DataType := ftDate;
  QFormas.Parameters.ParamByName('fec2').DataType := ftDate;
  QFormas.Parameters.ParamByName('fec1').Value    := Date;
  QFormas.Parameters.ParamByName('fec2').Value    := Date;;
  QFormas.Parameters.ParamByName('suc').Value     := sucursal1;
  QFormas.Parameters.ParamByName('caja').Value    := 0;

  QFormas.Parameters.ParamByName('caj1').Value := cajero1;
  QFormas.Parameters.ParamByName('caj2').Value := cajero2;
  QFormas.Open;

  QFormas.DisableControls;
  while not QFormas.Eof do
  begin
    if QFormasfpa_sumaefectivocuadre.Value = 'True' then
      totalefectivo := totalefectivo + QFormasMONTO.Value;
    QFormas.Next;
  end;
  QFormas.First;
  QFormas.EnableControls;
  end;

  for sucursal1:= 1 TO sucursal2 DO begin
  QFacturas.Close;
  QFacturas.SQL.Clear;
  QFacturas.SQL.Add('SELECT F.EMP_CODIGO, F.SUC_CODIGO, F.FAC_FORMA, F.TFA_CODIGO,');
  QFacturas.SQL.Add('T.TFA_NOMBRE, T.TFA_ACTBALANCE, SUM(F.FAC_TOTAL) AS MONTO');
  QFacturas.SQL.Add('FROM FACTURAS F, TIPOSFACTURA T');
  QFacturas.SQL.Add('WHERE F.EMP_CODIGO = T.EMP_CODIGO');
  QFacturas.SQL.Add('AND F.TFA_CODIGO = T.TFA_CODIGO');
  QFacturas.SQL.Add('AND F.FAC_STATUS <> '+#39+'ANU'+#39);
  QFacturas.SQL.Add('AND F.FAC_FECHA between convert(datetime,:FEC1,105) and convert(datetime,:FEC2,105)');
  QFacturas.SQL.Add('AND F.CAJ_CODIGO BETWEEN :CAJ1 AND :CAJ2');
  QFacturas.SQL.Add('AND F.EMP_CODIGO = :EMP');
  QFacturas.SQL.Add('AND (F.FAC_HOLD IS NULL OR F.FAC_HOLD <> '+QuotedStr('True')+')');
  QFacturas.SQL.Add('and f.suc_codigo BETWEEN :suc1 AND :suc2');
  QFacturas.SQL.Add('and f.fac_caja between 1 and 100');
  QFacturas.SQL.Add('and f.fac_forma = '+#39+'A'+#39);
  QFacturas.SQL.Add('GROUP BY F.EMP_CODIGO, F.SUC_CODIGO, F.FAC_FORMA, F.TFA_CODIGO, T.TFA_NOMBRE, T.TFA_ACTBALANCE');
  QFacturas.Parameters.ParamByName('emp').Value := dm.vp_cia;
  QFacturas.Parameters.ParamByName('fec1').DataType := ftDate;
  QFacturas.Parameters.ParamByName('fec2').DataType := ftDate;
  QFacturas.Parameters.ParamByName('fec1').Value    := Date;
  QFacturas.Parameters.ParamByName('fec2').Value    := Date;;
  QFacturas.Parameters.ParamByName('suc').Value := sucursal1;
  QFacturas.Parameters.ParamByName('caj1').Value := cajero1;
  QFacturas.Parameters.ParamByName('caj2').Value := cajero2;
  QFacturas.Open;

  QDetalleFactura.Close;
  QDetalleFactura.Parameters.ParamByName('fec1').Value  := Date;
  QDetalleFactura.Parameters.ParamByName('fec2').Value  := Date;;
  QDetalleFactura.Parameters.ParamByName('caja1').Value := caja1;
  QDetalleFactura.Parameters.ParamByName('caja2').Value := caja2;
  QDetalleFactura.Parameters.ParamByName('cajero1').Value := cajero1;
  QDetalleFactura.Parameters.ParamByName('cajero2').Value := cajero2;
  QDetalleFactura.Parameters.ParamByName('forma1').Value := 'A';
  QDetalleFactura.Parameters.ParamByName('forma2').Value := 'A';
  QDetalleFactura.Open;

  //Itbis
  QItbis.Close;
  QItbis.Parameters.ParamByName('fec1').Value  := Date;
  QItbis.Parameters.ParamByName('fec2').Value  := Date;;
  QItbis.Parameters.ParamByName('caja1').Value := caja1;
  QItbis.Parameters.ParamByName('caja2').Value := caja2;
  QItbis.Parameters.ParamByName('cajero1').Value := cajero1;
  QItbis.Parameters.ParamByName('cajero2').Value := cajero2;
  QItbis.Parameters.ParamByName('emp_codigo').Value := dm.vp_cia;
  QItbis.Parameters.ParamByName('suc_codigo').Value := sucursal1;

  QItbis.Parameters.ParamByName('forma1').Value := 'A';
  QItbis.Parameters.ParamByName('forma2').Value := 'A';
  QItbis.Open;
  totalitbis := totalitbis + QItbisitbis.Value;

  //Desembolsos de caja
  QDesembolsos.Close;
  QDesembolsos.Parameters.ParamByName('emp').Value   := dm.vp_cia;
  QDesembolsos.Parameters.ParamByName('suc').Value   := sucursal1;
  QDesembolsos.Parameters.ParamByName('fec1').Value  := Date;
  QDesembolsos.Parameters.ParamByName('fec2').Value  := Date;;
  QDesembolsos.Parameters.ParamByName('caja1').Value := caja1;
  QDesembolsos.Parameters.ParamByName('caja2').Value := caja2;
  QDesembolsos.Parameters.ParamByName('cajero1').Value := cajero1;
  QDesembolsos.Parameters.ParamByName('cajero2').Value := cajero2;
  QDesembolsos.Open;

  //Recibos
  QRecibos.Close;
  QRecibos.Parameters.ParamByName('emp').Value   := dm.vp_cia;
  QRecibos.Parameters.ParamByName('suc').Value   := sucursal1;
  QRecibos.Parameters.ParamByName('fec1').Value  := Date;
  QRecibos.Parameters.ParamByName('fec2').Value  := Date;;
  QRecibos.Parameters.ParamByName('caja1').Value := caja1;
  QRecibos.Parameters.ParamByName('caja2').Value := caja2;
  QRecibos.Parameters.ParamByName('cajero1').Value := cajero1;
  QRecibos.Parameters.ParamByName('cajero2').Value := cajero2;
  QRecibos.Open;
  end;
end;

end.
