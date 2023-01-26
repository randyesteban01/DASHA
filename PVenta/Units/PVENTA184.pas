unit PVENTA184;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, Grids, DBGrids, Buttons, DB, ADODB,
  DBCtrls, DateUtils;

type
  TfrmConsResumenEjecutivo = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    fecha1: TDateTimePicker;
    fecha2: TDateTimePicker;
    btRefresh: TBitBtn;
    BitBtn2: TBitBtn;
    btClose: TBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    DBGrid4: TDBGrid;
    sgoperaciones: TStringGrid;
    sgcontabilidad: TStringGrid;
    QResumen: TADOQuery;
    dsResumen: TDataSource;
    QOperaciones: TADOQuery;
    QOperacionesid: TAutoIncField;
    QOperacionesdescrip: TStringField;
    QOperacionescant: TBCDField;
    QOperacionestotal: TBCDField;
    QResumenusu_codigo: TIntegerField;
    QResumenusu_nombre: TStringField;
    QResumencaja: TIntegerField;
    QResumenTotal: TBCDField;
    QResumenefectivo: TBCDField;
    QResumencheque: TBCDField;
    QResumentarjeta: TBCDField;
    QResumencredito: TBCDField;
    QResumenbonos: TBCDField;
    QEmpresas: TADOQuery;
    QEmpresasemp_codigo: TIntegerField;
    QEmpresasemp_nombre: TStringField;
    dsEmpresas: TDataSource;
    cbempresa: TDBLookupComboBox;
    QResumennc: TBCDField;
    QResumenNombreCaja: TStringField;
    QResumendescuento: TBCDField;
    ckdetallado: TCheckBox;
    QEmpresasusu_codigo: TIntegerField;
    QResumenbonos2: TBCDField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormPaint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btCloseClick(Sender: TObject);
    procedure btRefreshClick(Sender: TObject);
    procedure QResumenCalcFields(DataSet: TDataSet);
    procedure sgoperacionesDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure sgcontabilidadDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsResumenEjecutivo: TfrmConsResumenEjecutivo;

implementation

uses SIGMA01, RVENTA94, SIGMA00;

{$R *.dfm}

procedure TfrmConsResumenEjecutivo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmConsResumenEjecutivo.FormPaint(Sender: TObject);
begin
  with frmConsResumenEjecutivo do
  begin
    left := 2;
    Top := 2;
    width := frmMain.Width - 230;
    height := frmMain.Height - 120;
  end;
end;

procedure TfrmConsResumenEjecutivo.FormCreate(Sender: TObject);
begin
  fecha1.Date := StartOfTheMonth(date);
  fecha2.Date := Date;

  sgoperaciones.Cells[0,0] := 'Facturas de Credito';
  sgoperaciones.Cells[0,1] := 'Facturas de Contado';
  sgoperaciones.Cells[0,2] := 'Pedidos de Cliente';
  sgoperaciones.Cells[0,3] := 'Cotizaciones';
  sgoperaciones.Cells[0,4] := 'Notas de Credito Cliente';
  sgoperaciones.Cells[0,5] := 'Notas de Debito Cliente';
  sgoperaciones.Cells[0,6] := 'Devoluciones en Venta';
  sgoperaciones.Cells[0,7] := 'Recibos';
  sgoperaciones.Cells[0,8] := 'Desembolsos de Caja';
  sgoperaciones.Cells[0,9] := 'Ordenes de Compra';
  sgoperaciones.Cells[0,10] := 'Compras';
  sgoperaciones.Cells[3,0] := 'Devoluciones a Proveedor';
  sgoperaciones.Cells[3,1] := 'Cotizaciones Multiples';
  sgoperaciones.Cells[3,2] := 'Liquidaciones de Mercancia';
  sgoperaciones.Cells[3,3] := 'Entradas de Almac�n';
  sgoperaciones.Cells[3,4] := 'Salidas de Almac�n';
  sgoperaciones.Cells[3,5] := 'Conduces';
  sgoperaciones.Cells[3,6] := 'Transferencias';
  sgoperaciones.Cells[3,7] := 'Dep�sitos';
  sgoperaciones.Cells[3,8] := 'Cheques';
  sgoperaciones.Cells[3,9] := 'Cargos Bancarios';
  sgoperaciones.Cells[3,10] := 'Solicitud de Cheque';

  sgcontabilidad.Cells[0,1] := 'Cuentas por Cobrar';
  sgcontabilidad.Cells[0,2] := 'Cuentas por Pagar';
  sgcontabilidad.Cells[1,0] := 'Facturas';
  sgcontabilidad.Cells[2,0] := 'Cobros/Pagos';
  sgcontabilidad.Cells[3,0] := 'Notas DB';
  sgcontabilidad.Cells[4,0] := 'Notas CR';

end;

procedure TfrmConsResumenEjecutivo.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmConsResumenEjecutivo.btRefreshClick(Sender: TObject);
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
  QResumen.Parameters.ParamByName('fec1').Value     := fecha1.Date;
  QResumen.Parameters.ParamByName('fec2').Value     := fecha2.Date;
  QResumen.Parameters.ParamByName('emp').Value      := cbempresa.KeyValue;
  QResumen.Open;

  //Resumen Operaciones
  QOperaciones.Close;
  QOperaciones.Parameters.ParamByName('emp').Value      := cbempresa.KeyValue;
  QOperaciones.Parameters.ParamByName('fec1').DataType  := ftdate;
  QOperaciones.Parameters.ParamByName('fec2').DataType  := ftdate;
  QOperaciones.Parameters.ParamByName('fec1').Value     := fecha1.Date;
  QOperaciones.Parameters.ParamByName('fec2').Value     := fecha2.Date;
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

procedure TfrmConsResumenEjecutivo.QResumenCalcFields(DataSet: TDataSet);
begin
  //QResumenCuadre.Value := QResumenTotal.Value + QResumenExportado.Value;
  //QResumenTGrabado.Value := (QResumenItbis.Value * 100)/dm.QParametrosPAR_ITBIS.Value;
end;

procedure TfrmConsResumenEjecutivo.sgoperacionesDrawCell(Sender: TObject;
  ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
var
  dx: Integer;
  procedure WriteText(StringGrid: TStringGrid; ACanvas: TCanvas; const ARect: TRect;
      const Text: string; Format: Word);
  const
    DX = 2;
    DY = 2;
  var
    S: array[0..255] of Char;
    B, R: TRect;
  begin
    with Stringgrid, ACanvas, ARect do
    begin
      case Format of
      DT_LEFT: ExtTextOut(Handle, Left + DX, Top + DY,
               ETO_OPAQUE or ETO_CLIPPED, @ARect, StrPCopy(S, Text),
               Length(Text), nil);

      DT_RIGHT: ExtTextOut(Handle, Right - TextWidth(Text) - 3, Top + DY,
              ETO_OPAQUE or ETO_CLIPPED, @ARect, StrPCopy(S, Text),
              Length(Text), nil);

      DT_CENTER: ExtTextOut(Handle, Left + (Right - Left - TextWidth(Text)) div 2,
              Top + DY, ETO_OPAQUE or ETO_CLIPPED, @ARect,
              StrPCopy(S, Text), Length(Text), nil);
      end;
    end;
  end;

  procedure Display(StringGrid: TStringGrid; const S: string; Alignment: TAlignment);
  const
    Formats: array[TAlignment] of Word = (DT_LEFT, DT_RIGHT, DT_CENTER);
  begin
    WriteText(StringGrid, StringGrid.Canvas, Rect, S, Formats[Alignment]);
  end;
begin
  if (ACol = 1) or (ACol = 2) or (ACol = 4) or (ACol = 5) then
    Display(sgoperaciones, sgoperaciones.Cells[ACol, ARow], taRightJustify);
end;

procedure TfrmConsResumenEjecutivo.sgcontabilidadDrawCell(Sender: TObject;
  ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
var
  dx: Integer;
  procedure WriteText(StringGrid: TStringGrid; ACanvas: TCanvas; const ARect: TRect;
      const Text: string; Format: Word);
  const
    DX = 2;
    DY = 2;
  var
    S: array[0..255] of Char;
    B, R: TRect;
  begin
    with Stringgrid, ACanvas, ARect do
    begin
      case Format of
      DT_LEFT: ExtTextOut(Handle, Left + DX, Top + DY,
               ETO_OPAQUE or ETO_CLIPPED, @ARect, StrPCopy(S, Text),
               Length(Text), nil);

      DT_RIGHT: ExtTextOut(Handle, Right - TextWidth(Text) - 3, Top + DY,
              ETO_OPAQUE or ETO_CLIPPED, @ARect, StrPCopy(S, Text),
              Length(Text), nil);

      DT_CENTER: ExtTextOut(Handle, Left + (Right - Left - TextWidth(Text)) div 2,
              Top + DY, ETO_OPAQUE or ETO_CLIPPED, @ARect,
              StrPCopy(S, Text), Length(Text), nil);
      end;
    end;
  end;

  procedure Display(StringGrid: TStringGrid; const S: string; Alignment: TAlignment);
  const
    Formats: array[TAlignment] of Word = (DT_LEFT, DT_RIGHT, DT_CENTER);
  begin
    WriteText(StringGrid, StringGrid.Canvas, Rect, S, Formats[Alignment]);
  end;
begin
  if (ACol > 0) then
    Display(sgcontabilidad, sgcontabilidad.Cells[ACol, ARow], taRightJustify);
end;

procedure TfrmConsResumenEjecutivo.BitBtn2Click(Sender: TObject);
var
  ItbisCaja, ItbisFactura, TotalTicket, TotalFactura, Exento, ExentoTic,
  TotalDev, ItbisDev, GrabadoFac, GrabadoTic, GrabadoDev, ExentoDev, ExentoDevTic, ExentoItbisDev,
  TotalDescFT : Double;
begin
  btRefreshClick(Self);
  Exento      := 0;
  GrabadoFac  := 0;
  TotalDescFT := 0;
  Screen.cursor := crHourGlass;



  Application.CreateForm(tRepResumenEjecutivo, RepResumenEjecutivo);
  RepResumenEjecutivo.detallado := ckdetallado.Checked;
  RepResumenEjecutivo.lbFecha.Caption := 'Del ' + DateToStr(Fecha1.Date) + ' Al ' + DateToStr(Fecha2.Date);
  RepResumenEjecutivo.QEmpresas.Parameters.ParamByName('usu').Value := dm.Usuario;
  RepResumenEjecutivo.QEmpresas.Parameters.ParamByName('emp').Value := cbempresa.KeyValue;
  RepResumenEjecutivo.QEmpresas.Open;

  RepResumenEjecutivo.QImpuestos.Close;
  RepResumenEjecutivo.QImpuestos.Parameters.parambyname('fec1').DataType := ftDate;
  RepResumenEjecutivo.QImpuestos.Parameters.parambyname('fec2').DataType := ftDate;
  RepResumenEjecutivo.QImpuestos.Parameters.ParamByName('fec1').Value    := fecha1.Date;
  RepResumenEjecutivo.QImpuestos.Parameters.ParamByName('fec2').Value    := fecha2.Date;
  RepResumenEjecutivo.QImpuestos.Parameters.ParamByName('emp').Value     := cbempresa.KeyValue;
  RepResumenEjecutivo.QImpuestos.Open;

  RepResumenEjecutivo.QImpuestosDEV.Close;
  RepResumenEjecutivo.QImpuestosDEV.Parameters.parambyname('fec1').DataType := ftDate;
  RepResumenEjecutivo.QImpuestosDEV.Parameters.parambyname('fec2').DataType := ftDate;
  RepResumenEjecutivo.QImpuestosDEV.Parameters.ParamByName('fec1').Value    := fecha1.Date;
  RepResumenEjecutivo.QImpuestosDEV.Parameters.ParamByName('fec2').Value    := fecha2.Date;
  RepResumenEjecutivo.QImpuestosDEV.Parameters.ParamByName('emp').Value     := cbempresa.KeyValue;
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
  dm.Query1.Parameters.ParamByName('fec1').Value := fecha1.Date;
  dm.Query1.Parameters.ParamByName('fec2').Value := fecha2.Date;
  dm.Query1.Parameters.ParamByName('emp').Value  := cbempresa.KeyValue;
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
  dm.Query1.Parameters.ParamByName('fec1').Value := fecha1.Date;
  dm.Query1.Parameters.ParamByName('fec2').Value := fecha2.Date;
  dm.Query1.Parameters.ParamByName('emp').Value  := cbempresa.KeyValue;
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
  dm.Query1.Parameters.ParamByName('fec1').Value := fecha1.Date;
  dm.Query1.Parameters.ParamByName('fec2').Value := fecha2.Date;
  dm.Query1.Parameters.ParamByName('emp').Value  := cbempresa.KeyValue;
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
  dm.Query1.Parameters.ParamByName('fec1').Value := fecha1.Date;
  dm.Query1.Parameters.ParamByName('fec2').Value := fecha2.Date;
  dm.Query1.Parameters.ParamByName('emp').Value  := cbempresa.KeyValue;
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
  dm.Query1.Parameters.ParamByName('fec1').Value := fecha1.Date;
  dm.Query1.Parameters.ParamByName('fec2').Value := fecha2.Date;
  dm.Query1.Parameters.ParamByName('emp').Value  := cbempresa.KeyValue;
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
  dm.Query1.Parameters.ParamByName('fec1').Value := fecha1.Date;
  dm.Query1.Parameters.ParamByName('fec2').Value := fecha2.Date;
  dm.Query1.Parameters.ParamByName('emp').Value  := cbempresa.KeyValue;
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
  dm.Query1.Parameters.ParamByName('fec1').Value := fecha1.Date;
  dm.Query1.Parameters.ParamByName('fec2').Value := fecha2.Date;
  dm.Query1.Parameters.ParamByName('emp').Value  := cbempresa.KeyValue;
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
  dm.Query1.Parameters.ParamByName('fec1').Value := fecha1.Date;
  dm.Query1.Parameters.ParamByName('fec2').Value := fecha2.Date;
  dm.Query1.Parameters.ParamByName('emp').Value  := cbempresa.KeyValue;
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
  dm.Query1.Parameters.ParamByName('fec1').Value := fecha1.Date;
  dm.Query1.Parameters.ParamByName('fec2').Value := fecha2.Date;
  dm.Query1.Parameters.ParamByName('emp').Value  := cbempresa.KeyValue;
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
  dm.Query1.Parameters.ParamByName('fec1').Value := fecha1.Date;
  dm.Query1.Parameters.ParamByName('fec2').Value := fecha2.Date;
  dm.Query1.Parameters.ParamByName('emp').Value  := cbempresa.KeyValue;
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
  dm.Query1.Parameters.ParamByName('fec1').Value := fecha1.Date;
  dm.Query1.Parameters.ParamByName('fec2').Value := fecha2.Date;
  dm.Query1.Parameters.ParamByName('emp').Value  := cbempresa.KeyValue;
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
  dm.Query1.Parameters.ParamByName('fec1').Value := fecha1.Date;
  dm.Query1.Parameters.ParamByName('fec2').Value := fecha2.Date;
  dm.Query1.Parameters.ParamByName('emp').Value  := cbempresa.KeyValue;
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
  RepResumenEjecutivo.QResumen.Parameters.ParamByName('fec1').Value := fecha1.Date;
  RepResumenEjecutivo.QResumen.Parameters.ParamByName('fec2').Value := fecha2.Date;
  RepResumenEjecutivo.QResumen.Parameters.ParamByName('emp').Value  := cbempresa.KeyValue;
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
  RepResumenEjecutivo.Preview;
  RepResumenEjecutivo.Destroy;
end;

procedure TfrmConsResumenEjecutivo.FormActivate(Sender: TObject);
begin
  if not QEmpresas.Active then
  begin
    QEmpresas.Parameters.ParamByName('usu').Value := dm.Usuario;
    QEmpresas.Open;
    cbempresa.KeyValue := QEmpresasemp_codigo.Value;
  end;
end;

end.
