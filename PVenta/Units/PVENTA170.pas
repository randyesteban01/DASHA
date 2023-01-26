unit PVENTA170;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, Buttons, ComCtrls, DB, ADODB, DBCtrls;

type
  TfrmCuadreDesgloce = class(TForm)
    sgMontos: TStringGrid;
    sgGeneral: TStringGrid;
    btClose: TBitBtn;
    BitBtn2: TBitBtn;
    ckDetalle: TCheckBox;
    Label1: TLabel;
    edfecha: TDateTimePicker;
    Label2: TLabel;
    Label3: TLabel;
    QCajas: TADOQuery;
    QCajascaj_codigo: TIntegerField;
    QCajascaj_nombre: TStringField;
    dsCajas: TDataSource;
    cbCajeros: TDBLookupComboBox;
    cbCajas: TDBLookupComboBox;
    QCajeros: TADOQuery;
    QCajeroscaj_codigo: TIntegerField;
    QCajeroscaj_nombre: TStringField;
    dsCajeros: TDataSource;
    BitBtn1: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sgMontosDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure sgMontosKeyPress(Sender: TObject; var Key: Char);
    procedure sgGeneralDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure sgGeneralKeyPress(Sender: TObject; var Key: Char);
    procedure btCloseClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure sgMontosSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure sgMontosSetEditText(Sender: TObject; ACol, ARow: Integer;
      const Value: String);
    procedure sgGeneralSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    sEfectivo : String;
  end;

var
  frmCuadreDesgloce: TfrmCuadreDesgloce;

implementation

uses SIGMA01;

{$R *.dfm}

procedure TfrmCuadreDesgloce.FormCreate(Sender: TObject);
begin
  edfecha.Date := Date;

  sgMontos.Cells[0,0]  := '   Monto';
  sgMontos.Cells[1,0]  := 'Cantidad';
  sgMontos.Cells[2,0]  := 'Valor';

  sgMontos.Cells[0,01] := '2,000.00';
  sgMontos.Cells[0,02] := '1,000.00';
  sgMontos.Cells[0,03] := '500.00';
  sgMontos.Cells[0,04] := '200.00';
  sgMontos.Cells[0,05] := '100.00';
  sgMontos.Cells[0,06] := '50.00';
  sgMontos.Cells[0,07] := '25.00';
  sgMontos.Cells[0,08] := '20.00';
  sgMontos.Cells[0,09] := '10.00';
  sgMontos.Cells[0,10] := '5.00';
  sgMontos.Cells[0,11] := '1.00';
  sgMontos.Cells[0,12] := '0.01';

  sgGeneral.Cells[1,0] := 'Monto';
  sgGeneral.Cells[2,0] := 'Diferencia';

  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select fpa_nombre from formaspago');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.SQL.Add('order by fpa_codigo');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Open;
  while not dm.Query1.Eof do
  begin
    sgGeneral.Cells[0,sgGeneral.RowCount-1] := dm.Query1.FieldByName('fpa_nombre').AsString;
    sgGeneral.RowCount := sgGeneral.RowCount +1;
    dm.Query1.Next;
  end;
  sgGeneral.Cells[0,sgGeneral.RowCount-1] := 'DEPOSITO CAJA';
  sgGeneral.RowCount := sgGeneral.RowCount +1;
  sgGeneral.Cells[0,sgGeneral.RowCount-1] := 'DESEMBOLSO CAJA';
  sgGeneral.RowCount := sgGeneral.RowCount +1;
  sgGeneral.Cells[0,sgGeneral.RowCount-1] := 'TOTAL EN CAJA';
  sgGeneral.Row := sgGeneral.RowCount-1;
end;

procedure TfrmCuadreDesgloce.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmCuadreDesgloce.sgMontosDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
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
  //if ACol = 0 then
    Display(sgMontos, sgMontos.Cells[ACol, ARow], taRightJustify);
{  if (ACol in[0,1,3]) and (ARow = 0) then
    Display(sGrid, sGrid.Cells[ACol, ARow], taCenter);}
end;

procedure TfrmCuadreDesgloce.sgMontosKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    if sgMontos.Row < sgMontos.RowCount-1 then
       sgMontos.Row := sgMontos.Row +1;
end;

procedure TfrmCuadreDesgloce.sgGeneralDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
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
  with (Sender as TStringGrid) do
  begin
    if ACol = 2 then
      Canvas.Font.Style := [fsBold];

    Canvas.TextRect(Rect, Rect.Left + 2, Rect.Top + 2, cells[acol, arow]);
    Canvas.FrameRect(Rect);
  end;
  if ACol > 0 then
    Display(sgGeneral, sgGeneral.Cells[ACol, ARow], taRightJustify);
{  if (ACol in[0,1,3]) and (ARow = 0) then
    Display(sGrid, sGrid.Cells[ACol, ARow], taCenter);}
end;

procedure TfrmCuadreDesgloce.sgGeneralKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    if sgGeneral.Row < sgGeneral.RowCount-1 then
      sgGeneral.Row := sgGeneral.Row +1;
end;

procedure TfrmCuadreDesgloce.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCuadreDesgloce.BitBtn2Click(Sender: TObject);
var
  Efectivo : double;
  a, b : integer;
begin
  //Desgloce Efectivo
  Efectivo := 0;
  for a := 1 to sgMontos.RowCount-1 do
  begin
    if Trim(sgMontos.Cells[1,a]) = '' then sgMontos.Cells[1,a] := '0';

    if a = 1 then
      Efectivo := Efectivo + (2000*StrToFloat(sgMontos.Cells[1,a]))
    else if a = 2 then
      Efectivo := Efectivo + (1000*StrToFloat(sgMontos.Cells[1,a]))
    else if a = 3 then
      Efectivo := Efectivo + (500*StrToFloat(sgMontos.Cells[1,a]))
    else if a = 4 then
      Efectivo := Efectivo + (200*StrToFloat(sgMontos.Cells[1,a]))
    else if a = 5 then
      Efectivo := Efectivo + (100*StrToFloat(sgMontos.Cells[1,a]))
    else if a = 6 then
      Efectivo := Efectivo + (50*StrToFloat(sgMontos.Cells[1,a]))
    else if a = 7 then
      Efectivo := Efectivo + (25*StrToFloat(sgMontos.Cells[1,a]))
    else if a = 8 then
      Efectivo := Efectivo + (20*StrToFloat(sgMontos.Cells[1,a]))
    else if a = 9 then
      Efectivo := Efectivo + (10*StrToFloat(sgMontos.Cells[1,a]))
    else if a = 10 then
      Efectivo := Efectivo + (5*StrToFloat(sgMontos.Cells[1,a]))
    else if a = 11 then
      Efectivo := Efectivo + (1*StrToFloat(sgMontos.Cells[1,a]))
    else if a = 12 then
      Efectivo := Efectivo + (0.01*StrToFloat(sgMontos.Cells[1,a]));
  end;
  for a := 1 to sgGeneral.RowCount-1 do
    if Trim(sgGeneral.Cells[0,a]) = sEfectivo then
       sgGeneral.Cells[1,a] := Format('%10.2F',[Efectivo]);

  //Desgloce por Forma de Pago
  for a := 1 to sgGeneral.RowCount-1 do
  begin
    if Trim(sgGeneral.Cells[1,a]) = '' then sgGeneral.Cells[1,a] := '0.00';

    //writeln(arch, sgGeneral.Cells[0,a]+'  '+s+sgGeneral.Cells[1,a]+'     '+s2+format('%n',[Efectivo]));
  end;

  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('SELECT a.*, f.fpa_sumaefectivocuadre FROM PR_CUADRE_FORMASPAGO');
  dm.Query1.SQL.Add('(:emp, :suc, :fec1, :fec2, :caj1, :caj2, :forma, :caja) a,');
  dm.Query1.SQL.Add('formaspago f');
  dm.Query1.SQL.Add('where f.emp_codigo = :emp2 and f.fpa_codigo = a.codigo');
  dm.Query1.Parameters.ParamByName('emp2').Value    := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('emp').Value     := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('fec1').DataType := ftDate;
  dm.Query1.Parameters.ParamByName('fec2').DataType := ftDate;
  dm.Query1.Parameters.ParamByName('fec1').Value    := edfecha.Date;
  dm.Query1.Parameters.ParamByName('fec2').Value    := edfecha.Date;
  dm.Query1.Parameters.ParamByName('suc').Value     := 1;
  dm.Query1.Parameters.ParamByName('caja').Value    := cbCajas.KeyValue;
  dm.Query1.Parameters.ParamByName('caj1').Value    := cbCajeros.KeyValue;
  dm.Query1.Parameters.ParamByName('caj2').Value    := cbCajeros.KeyValue;
  dm.Query1.Parameters.ParamByName('forma').Value   := 'T';
  dm.Query1.Open;

  Efectivo := 0;
  while not dm.Query1.Eof do
  begin
    for a := 1 to sgGeneral.RowCount-1 do
    begin
      if Trim(sgGeneral.Cells[0,a]) = dm.Query1.FieldByName('forma').AsString then
      begin
        sgGeneral.Cells[2,a] := format('%n',[StrToFloat(sgGeneral.Cells[1,a]) - dm.Query1.FieldByName('monto').AsFloat]);
        Efectivo := Efectivo + dm.Query1.FieldByName('monto').AsFloat;
      end;
    end;
    dm.Query1.Next;
  end;

  //************************
  //Deposito en Caja
  //************************
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select caj_efectivo from cajeros');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.SQL.Add('and caj_codigo = '+IntToStr(cbCajeros.KeyValue));
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Open;
  for a := 1 to sgGeneral.RowCount-1 do
  begin
    if Trim(sgGeneral.Cells[0,a]) = 'DEPOSITO CAJA' then
    begin
      sgGeneral.Cells[1,a] := format('%10.2F',[dm.Query1.FieldByName('caj_efectivo').AsFloat]);
      Efectivo := Efectivo + dm.Query1.FieldByName('caj_efectivo').AsFloat;
    end;
  end;

  //************************
  //Desembolsos de Caja
  //************************
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select sum(des_monto) as valor from desembolsos');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.SQL.Add('and caj_codigo = '+IntToStr(cbCajeros.KeyValue));
  dm.Query1.SQL.Add('and des_caja = '+IntToStr(cbCajas.KeyValue));
  dm.Query1.SQL.Add('and des_fecha = convert(datetime, :fec, 105)');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('fec').DataType := ftDate;
  dm.Query1.Parameters.ParamByName('fec').Value    := edfecha.Date;
  dm.Query1.Open;
  for a := 1 to sgGeneral.RowCount-1 do
  begin
    if Trim(sgGeneral.Cells[0,a]) = 'DESEMBOLSO CAJA' then
    begin
      sgGeneral.Cells[1,a] := format('%10.2F',[dm.Query1.FieldByName('valor').AsFloat]);
      Efectivo := Efectivo - dm.Query1.FieldByName('valor').AsFloat;
    end;
  end;

  for a := 1 to sgGeneral.RowCount-1 do
    if Trim(sgGeneral.Cells[0,a]) = 'TOTAL EN CAJA' then
      sgGeneral.Cells[1,a] := format('%n',[Efectivo]);
end;

procedure TfrmCuadreDesgloce.FormActivate(Sender: TObject);
begin
  if not QCajas.Active then
  begin
    QCajas.Open;
    cbCajas.KeyValue := QCajascaj_codigo.Value;

    QCajeros.Open;
    cbCajeros.KeyValue := QCajeroscaj_codigo.Value;

    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select f.fpa_nombre');
    dm.Query1.SQL.Add('from formaspago f, parametros p');
    dm.Query1.SQL.Add('where f.emp_codigo = p.emp_codigo');
    dm.Query1.SQL.Add('and f.fpa_codigo = p.par_fpadesem');
    dm.Query1.SQL.Add('and f.emp_codigo = :emp');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Open;

    sEfectivo := dm.Query1.FieldByName('fpa_nombre').AsString;
  end;
end;

procedure TfrmCuadreDesgloce.sgMontosSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
  if ACol = 2 then CanSelect := False else CanSelect := True;
end;

procedure TfrmCuadreDesgloce.sgMontosSetEditText(Sender: TObject; ACol,
  ARow: Integer; const Value: String);
var
  Valor : Double;
  car : string;
  a : integer;
begin
  if ACol = 1 then
  begin
    if Trim(Value) <> '' then
    begin
      car := '';
      for a := 1 to Length(Trim(sgMontos.Cells[0,ARow])) do
        if Copy(Trim(sgMontos.Cells[0,ARow]),a,1) <> ',' then
           car := car + Copy(Trim(sgMontos.Cells[0,ARow]),a,1);
      Valor := StrToFloat(car);
      sgMontos.Cells[2,ARow] := Format('%n',[Valor * StrToFloat(sgMontos.Cells[1,ARow])]);
    end;
  end;
end;

procedure TfrmCuadreDesgloce.sgGeneralSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
  if Trim(sgGeneral.Cells[0,ARow]) = sEfectivo then
    CanSelect := False
  else if Trim(sgGeneral.Cells[0,ARow]) = 'DEPOSITO CAJA' then
    CanSelect := False
  else if Trim(sgGeneral.Cells[0,ARow]) = 'DESEMBOLSO CAJA' then
    CanSelect := False
  else if Trim(sgGeneral.Cells[0,ARow]) = 'TOTAL EN CAJA' then
    CanSelect := False
  else
  begin
    if ACol = 2 then
      CanSelect := False
    else
      CanSelect := True;
  end;
end;

procedure TfrmCuadreDesgloce.BitBtn1Click(Sender: TObject);
var
  arch, ptocaja, puertopeq : textfile;
  s, s1, s2, s3, s4, s5, s6, s7 : array[0..100] of char;
  TFac, MontoItbis, Venta, Efectivo, Tarjeta, Cheque, Credito, TGrabado,
  TExcento : double;
  PuntosPrinc, FactorPrin, Puntos, TotalPuntos : Double;
  Msg1, Msg2, Msg3, Msg4, NCF, Valor, puerto : String;
  a, b : integer;
begin
  if FileExists('.\puerto.txt') then
  begin
    assignfile(puertopeq, '.\puerto.txt');
    reset(puertopeq);
    readln(puertopeq, puerto);
  end
  else
    puerto := 'PRN';

  closefile(puertopeq);

  assignfile(arch,'.\imp.bat');
  rewrite(arch);

  writeln(arch, 'type .\cuadre.txt > '+ puerto);
  closefile(arch);

  assignfile(arch,'.\cuadre.txt');
  rewrite(arch);
  writeln(arch, dm.centro(dm.QEmpresasEMP_NOMBRE.Value));
  writeln(arch, dm.centro(dm.QEmpresasemp_direccion.Value));
  writeln(arch, dm.centro(dm.QEmpresasEMP_LOCALIDAD.Value));
  writeln(arch, dm.centro(dm.QEmpresasEMP_TELEFONO.Value));
  writeln(arch, dm.centro('RNC:'+dm.QEmpresasEMP_RNC.Value));
  writeln(arch, ' ');
  writeln(arch, dm.centro('CUADRE DE CAJA'));
  writeln(arch, ' ');
  writeln(arch, 'Fecha  : '+DateToStr(edfecha.Date));
  writeln(arch, 'Cajero : '+cbCajeros.Text);
  writeln(arch, 'Caja   : '+cbCajas.Text);
  writeln(arch, ' ');

  Efectivo := 0;
  MontoItbis := 0;
  TGrabado := 0;
  TExcento := 0;

  //Desgloce Efectivo
  writeln(arch, '---------------------------------------');
  writeln(arch, 'Monto      Cantidad     Valor   ');
  writeln(arch, '---------------------------------------');
  TFac := 0;
  for a := 1 to sgMontos.RowCount-1 do
  begin
    s := '';
    FillChar(s, 8-length(sgMontos.Cells[0,a]),' ');
    s1 := '';
    FillChar(s1, 5-length(sgMontos.Cells[1,a]),' ');

    if a = 1 then
      Efectivo := (2000*StrToFloat(sgMontos.Cells[1,a]))
    else if a = 2 then
      Efectivo := (1000*StrToFloat(sgMontos.Cells[1,a]))
    else if a = 3 then
      Efectivo := (500*StrToFloat(sgMontos.Cells[1,a]))
    else if a = 4 then
      Efectivo := (200*StrToFloat(sgMontos.Cells[1,a]))
    else if a = 5 then
      Efectivo := (100*StrToFloat(sgMontos.Cells[1,a]))
    else if a = 6 then
      Efectivo := (50*StrToFloat(sgMontos.Cells[1,a]))
    else if a = 7 then
      Efectivo := (25*StrToFloat(sgMontos.Cells[1,a]))
    else if a = 8 then
      Efectivo := (20*StrToFloat(sgMontos.Cells[1,a]))
    else if a = 9 then
      Efectivo := (10*StrToFloat(sgMontos.Cells[1,a]))
    else if a = 10 then
      Efectivo := (5*StrToFloat(sgMontos.Cells[1,a]))
    else if a = 11 then
      Efectivo := (1*StrToFloat(sgMontos.Cells[1,a]))
    else if a = 12 then
      Efectivo := (0.01*StrToFloat(sgMontos.Cells[1,a]));

    s2 := '';
    FillChar(s2, 12-length(sgMontos.Cells[2,a]),' ');

    TFac := TFac + Efectivo;
    writeln(arch, s+sgMontos.Cells[0,a]+'  '+s1+sgMontos.Cells[1,a]+'     '+s2+sgMontos.Cells[2,a]);
  end;
  s := '';
  FillChar(s, 32-length(format('%n',[TFac])),' ');
  writeln(arch, '---------------------------------------');
  writeln(arch, s+format('%n',[TFac]));

  writeln(arch, ' ');
  //Desgloce por Forma de Pago
  writeln(arch, dm.Centro('POR FORMA DE PAGO'));
  writeln(arch, '---------------------------------------');
  writeln(arch, 'Descripcion            Valor    Dif.   ');
  writeln(arch, '---------------------------------------');

  for a := 1 to sgGeneral.RowCount-1 do
  begin
    if Trim(sgGeneral.Cells[0,a]) <> 'TOTAL EN CAJA' then
    begin
      if Trim(sgGeneral.Cells[1,a]) = '' then sgGeneral.Cells[1,a] := '0.00';

      s := '';
      FillChar(s, 11-length(Format('%n',[StrToFloat(Trim(sgGeneral.Cells[1,a]))])),' ');

      s1 := '';
      FillChar(s1, 11-length(Trim(sgGeneral.Cells[2,a])),' ');

      s2 := '';
      FillChar(s2, 15-length(Trim(sgGeneral.Cells[0,a])),' ');

      writeln(arch, Trim(sgGeneral.Cells[0,a])+' '+s2+s+Format('%n',[StrToFloat(Trim(sgGeneral.Cells[1,a]))])+' '+s1+Trim(sgGeneral.Cells[2,a]));
    end
    else
    begin
      if Trim(sgGeneral.Cells[1,a]) = '' then sgGeneral.Cells[1,a] := '0.00';

      s := '';
      FillChar(s, 11-length(Trim(sgGeneral.Cells[1,a])),' ');

      s1 := '';
      FillChar(s1, 11-length(Trim(sgGeneral.Cells[2,a])),' ');

      s2 := '';
      FillChar(s2, 15-length(Trim(sgGeneral.Cells[0,a])),' ');

      writeln(arch, Trim(sgGeneral.Cells[0,a])+' '+s2+s+Trim(sgGeneral.Cells[1,a])+' '+s1+Trim(sgGeneral.Cells[2,a]));
    end;
  end;

  TFac := 0;
  Efectivo := 0;
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select f.fac_numero, f.ncf_fijo, f.ncf_secuencia, sum(p.for_monto) as monto');
  dm.Query1.SQL.Add('from facturas f, facformapago p');
  dm.Query1.SQL.Add('where f.emp_codigo = p.emp_codigo');
  dm.Query1.SQL.Add('and f.fac_forma = p.fac_forma');
  dm.Query1.SQL.Add('and f.tfa_codigo = p.tfa_codigo');
  dm.Query1.SQL.Add('and f.suc_codigo = p.suc_codigo');
  dm.Query1.SQL.Add('and f.fac_numero = p.fac_numero');
  dm.Query1.SQL.Add('and p.fpa_codigo in (select par_fpadesem');
  dm.Query1.SQL.Add('from parametros where emp_codigo = p.emp_codigo)');
  dm.Query1.SQL.Add('and f.emp_codigo = :emp');
  dm.Query1.SQL.Add('and f.fac_fecha = convert(datetime, :fec, 105)');
  dm.Query1.SQL.Add('and f.fac_status <> '+QuotedStr('ANU'));
  dm.Query1.SQL.Add('and f.fac_caja = '+IntToStr(cbCajas.KeyValue));
  dm.Query1.SQL.Add('and f.caj_codigo = '+IntToStr(cbCajeros.KeyValue));
  dm.Query1.SQL.Add('group by f.fac_numero, f.ncf_fijo, f.ncf_secuencia');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('fec').DataType := ftDate;
  dm.Query1.Parameters.ParamByName('fec').Value    := edfecha.Date;
  dm.Query1.Open;

  if dm.Query1.RecordCount > 0 then
  begin
    if Trim(dm.Query1.FieldByName('ncf_fijo').AsString) <> '' then
      NCF := dm.Query1.FieldByName('ncf_fijo').AsString + FormatFloat('00000000',dm.Query1.FieldByName('ncf_secuencia').AsFloat)
    else
      NCF := '';
    if ckDetalle.Checked then
    begin
      writeln(arch, ' ');
      writeln(arch, dm.Centro('EFECTIVO'));
      writeln(arch, dm.Centro('--------'));
      writeln(arch, '#Factura      N. C. F.         Monto   ');
      writeln(arch, '---------------------------------------');
    end;
    dm.Query1.DisableControls;
    dm.Query1.First;
    while not dm.Query1.eof do
    begin
      s := '';
      FillChar(s, 4-length(inttostr(dm.Query1.FieldByName('fac_numero').AsInteger)),' ');
      s1 := '';
      FillChar(s1, 12-length(FORMAT('%n',[dm.Query1.FieldByName('monto').AsFloat])), ' ');

      if ckDetalle.Checked then
        writeln(arch, '  '+s+floattostr(dm.Query1.FieldByName('fac_numero').AsInteger)+' '+NCF+' '+
        s1+FORMAT('%n',[dm.Query1.FieldByName('monto').AsFloat]));

      Efectivo := Efectivo + dm.Query1.FieldByName('monto').AsFloat;
      dm.Query1.next;
    end;
    dm.Query1.First;
    dm.Query1.EnableControls;
    if ckDetalle.Checked then
    begin
      writeln(arch, '---------------------------------------');
      s2 := '';
      FillChar(s2, 12-length(trim(FORMAT('%n',[Efectivo]))), ' ');
      writeln(arch, 'Total : '+s2+format('%n',[Efectivo]));
    end;
  end;

  s := '';
  FillChar(s, 12-length(trim(FORMAT('%n',[Efectivo]))), ' ');
  s1 := '';
  FillChar(s1, 12-length(trim(FORMAT('%n',[Tarjeta]))), ' ');
  s2 := '';
  FillChar(s2, 12-length(trim(FORMAT('%n',[Cheque]))), ' ');
  s3 := '';
  FillChar(s3, 12-length(trim(FORMAT('%n',[Efectivo + Tarjeta +Cheque]))), ' ');
  s4 := '';
  FillChar(s4, 12-length(trim(FORMAT('%n',[MontoItbis]))), ' ');
  s5 := '';
  FillChar(s5, 12-length(trim(FORMAT('%n',[Credito]))), ' ');
  s6 := '';
  FillChar(s6, 12-length(trim(FORMAT('%n',[TGrabado]))), ' ');
  s7 := '';
  FillChar(s7, 12-length(trim(FORMAT('%n',[TExcento]))), ' ');

  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, '------------------------');
  writeln(arch, 'Firma del Cajero');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');

  closefile(Arch);
  winexec('.\imp.bat',0);

end;

end.
