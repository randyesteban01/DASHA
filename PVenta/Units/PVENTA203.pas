unit PVENTA203;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, DBCtrls, DB, ADODB, Grids, Buttons,
  DBGrids;

type
  TfrmCuadreCajasIPDefinitivo = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Fecha: TDateTimePicker;
    edcaja: TEdit;
    cbcajero: TDBLookupComboBox;
    QCajeros: TADOQuery;
    QCajerosusu_codigo: TIntegerField;
    QCajerosusu_nombre: TStringField;
    dsCajeros: TDataSource;
    sgMontos: TStringGrid;
    sgGeneral: TStringGrid;
    btClose: TBitBtn;
    btimprimir: TBitBtn;
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
    QCuadrebonosclub_cajero: TBCDField;
    QCuadrebonosotros_cajero: TBCDField;
    QCuadrecredito_cajero: TBCDField;
    QCuadrecredito_total: TBCDField;
    QCuadredevolucion_total: TBCDField;
    QCuadrestatus: TStringField;
    QDenominacionValor: TFloatField;
    DataSource1: TDataSource;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure sgMontosDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure sgMontosKeyPress(Sender: TObject; var Key: Char);
    procedure sgMontosSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure sgMontosSetEditText(Sender: TObject; ACol, ARow: Integer;
      const Value: String);
    procedure sgGeneralDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure sgGeneralKeyPress(Sender: TObject; var Key: Char);
    procedure sgGeneralSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure edcajaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btimprimirClick(Sender: TObject);
    procedure cbcajeroClick(Sender: TObject);
    procedure QDenominacionCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure seleccion (forma : string);
    procedure buscacuadre;
  end;

var
  frmCuadreCajasIPDefinitivo: TfrmCuadreCajasIPDefinitivo;

implementation

uses SIGMA01, PVENTA119, RVENTA93, RVENTA109;

{$R *.dfm}

procedure TfrmCuadreCajasIPDefinitivo.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
    if ActiveControl.ClassType <> TStringGrid then
    begin
      perform(wm_nextdlgctl, 0, 0);
      key := #0;
    end;
end;

procedure TfrmCuadreCajasIPDefinitivo.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCuadreCajasIPDefinitivo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmCuadreCajasIPDefinitivo.FormCreate(Sender: TObject);
begin
  fecha.Date := Date;

  sgMontos.Cells[0,0]  := '   Monto';
  sgMontos.Cells[1,0]  := 'Cantidad';
  sgMontos.Cells[2,0]  := 'Valor';

  sgMontos.Cells[0,1]  := '2,000.00';
  sgMontos.Cells[0,2]  := '1,000.00';
  sgMontos.Cells[0,3]  := '500.00';
  sgMontos.Cells[0,4]  := '200.00';
  sgMontos.Cells[0,5]  := '100.00';
  sgMontos.Cells[0,6]  := '50.00';
  sgMontos.Cells[0,7]  := '25.00';
  sgMontos.Cells[0,8]  := '20.00';
  sgMontos.Cells[0,9]  := '10.00';
  sgMontos.Cells[0,10] := '5.00';
  sgMontos.Cells[0,11] := '1.00';
  sgMontos.Cells[0,12] := '0.50';
  sgMontos.Cells[0,13] := '0.01';

  sgGeneral.Cells[1,0] := 'Monto';
  sgGeneral.Cells[2,0] := 'Diferencia';

  sgGeneral.Cells[0, 1] := 'EFECTIVO';
  sgGeneral.Cells[0, 2] := 'CHEQUE';
  sgGeneral.Cells[0, 3] := 'TARJETA';
  sgGeneral.Cells[0, 4] := 'BONO CLUB';
  sgGeneral.Cells[0, 5] := 'OTROS BONOS';
  sgGeneral.Cells[0, 6] := 'CREDITO';
  sgGeneral.Cells[0, 7] := 'DEPOSITO CAJA';
  sgGeneral.Cells[0, 8] := 'DEVOLUCIONES';
  sgGeneral.Cells[0, 9] := 'TOTAL EN CAJA';
end;

procedure TfrmCuadreCajasIPDefinitivo.sgMontosDrawCell(Sender: TObject; ACol,
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

procedure TfrmCuadreCajasIPDefinitivo.sgMontosKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    if sgMontos.Row < sgMontos.RowCount-1 then
       sgMontos.Row := sgMontos.Row +1;
end;

procedure TfrmCuadreCajasIPDefinitivo.sgMontosSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
  if ACol = 2 then CanSelect := False else CanSelect := True;
end;

procedure TfrmCuadreCajasIPDefinitivo.sgMontosSetEditText(Sender: TObject; ACol,
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

procedure TfrmCuadreCajasIPDefinitivo.sgGeneralDrawCell(Sender: TObject; ACol,
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
    begin
      Canvas.Font.Style := [fsBold];
      Canvas.Font.Color := clMaroon;
    end;

    Canvas.TextRect(Rect, Rect.Left + 2, Rect.Top + 2, cells[acol, arow]);
    Canvas.FrameRect(Rect);
  end;
  if ACol > 0 then
    Display(sgGeneral, sgGeneral.Cells[ACol, ARow], taRightJustify);
{  if (ACol in[0,1,3]) and (ARow = 0) then
    Display(sGrid, sGrid.Cells[ACol, ARow], taCenter);}
end;

procedure TfrmCuadreCajasIPDefinitivo.sgGeneralKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    if sgGeneral.Row < sgGeneral.RowCount-1 then
      sgGeneral.Row := sgGeneral.Row +1;
end;

procedure TfrmCuadreCajasIPDefinitivo.sgGeneralSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
  if Trim(sgGeneral.Cells[0,ARow]) = 'EFECTIVO' then
    CanSelect := False
  else if Trim(sgGeneral.Cells[0,ARow]) = 'DEPOSITO CAJA' then
    CanSelect := False
  else if Trim(sgGeneral.Cells[0,ARow]) = 'TOTAL EN CAJA' then
    CanSelect := False
  else if Trim(sgGeneral.Cells[0,ARow]) = 'DEVOLUCIONES' then
    CanSelect := False
  else
  begin
    if ACol = 2 then
      CanSelect := False
    else
      CanSelect := True;
  end;
end;

procedure TfrmCuadreCajasIPDefinitivo.edcajaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    QCajeros.Close;
    QCajeros.Parameters.ParamByName('fec').DataType := ftDate;
    QCajeros.Parameters.ParamByName('fec').Value    := Fecha.Date;
    QCajeros.Parameters.ParamByName('caj').Value    := StrToInt(Trim(edcaja.Text));
    QCajeros.Open;

    cbcajero.KeyValue := QCajerosusu_codigo.Value;
    buscacuadre;
  end;

end;

procedure TfrmCuadreCajasIPDefinitivo.seleccion(forma: string);
var
  a : integer;
  monto : double;
begin
  application.CreateForm(tfrmSeleccionEmp, frmSeleccionEmp);

  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select f.ticket, f.forma, f.pagado, (f.pagado-f.devuelta) as monto');
  dm.Query1.SQL.Add('from formas_pago_ticket f');
  dm.Query1.SQL.Add('where f.caja = :caj');
  dm.Query1.SQL.Add('and f.fecha = convert(datetime, :fec, 105)');
  dm.Query1.SQL.Add('and f.usu_codigo = :usu');
  dm.Query1.SQL.Add('and f.forma = :for');
  //dm.Query1.SQL.Add('and m.cuadre is null');
  dm.Query1.SQL.Add('order by f.ticket');
  dm.Query1.Parameters.ParamByName('caj').Value := StrToInt(trim(edcaja.Text));
  dm.Query1.Parameters.ParamByName('fec').DataType := ftDate;
  dm.Query1.Parameters.ParamByName('fec').Value    := Fecha.Date;
  dm.Query1.Parameters.ParamByName('usu').Value    := cbcajero.KeyValue;
  dm.Query1.Parameters.ParamByName('for').Value    := forma;
  dm.Query1.Open;
  monto := 0;
  if dm.Query1.RecordCount > 0 then
  begin
    while not dm.Query1.Eof do
    begin
      if dm.Query1.FieldByName('forma').AsString = 'CRE' then
        frmSeleccionEmp.Lista.items.add('Ticket: '+dm.Query1.FieldByName('ticket').AsString+'  Monto: '+
                                        format('%n',[dm.Query1.FieldByName('monto').AsFloat]))
      else if dm.Query1.FieldByName('forma').AsString = 'CHE' then
        frmSeleccionEmp.Lista.items.add('Ticket: '+dm.Query1.FieldByName('ticket').AsString+'  Monto: '+
                                        format('%n',[dm.Query1.FieldByName('pagado').AsFloat]))
      else
        frmSeleccionEmp.Lista.items.add('Ticket: '+dm.Query1.FieldByName('ticket').AsString+'  Monto: '+
                                        format('%n',[dm.Query1.FieldByName('monto').AsFloat]));

      frmSeleccionEmp.Lista2.items.add(dm.Query1.fieldbyname('ticket').asstring);
      dm.Query1.Next;
    end;

    frmSeleccionEmp.ShowModal;
    for a := 0 to frmSeleccionEmp.Lista.Items.Count -1 do
    begin
      if frmSeleccionEmp.Lista.Checked[a] then
      begin
        dm.Query1.Close;
        dm.Query1.SQL.Clear;
        dm.Query1.SQL.Add('select f.ticket, f.forma, f.pagado, (f.pagado-f.devuelta) as monto');
        dm.Query1.SQL.Add('from formas_pago_ticket f');
        dm.Query1.SQL.Add('where f.caja = :caj');
        dm.Query1.SQL.Add('and f.fecha = convert(datetime, :fec, 105)');
        dm.Query1.SQL.Add('and f.usu_codigo = :usu');
        dm.Query1.SQL.Add('and f.forma = :for');
        dm.Query1.SQL.Add('and f.ticket = :tik');
        //dm.Query1.SQL.Add('and m.cuadre is null');
        dm.Query1.SQL.Add('order by f.ticket');
        dm.Query1.Parameters.ParamByName('caj').Value := StrToInt(trim(edcaja.Text));
        dm.Query1.Parameters.ParamByName('fec').DataType := ftDate;
        dm.Query1.Parameters.ParamByName('fec').Value    := Fecha.Date;
        dm.Query1.Parameters.ParamByName('usu').Value    := cbcajero.KeyValue;
        dm.Query1.Parameters.ParamByName('for').Value    := forma;
        dm.Query1.Parameters.ParamByName('tik').Value    := StrToInt(frmSeleccionEmp.Lista2.Items[a]);
        dm.Query1.Open;
        if dm.Query1.RecordCount > 0 then
          if dm.Query1.FieldByName('forma').AsString = 'CRE' then
            monto := monto + dm.Query1.FieldByName('pagado').AsFloat
          else if dm.Query1.FieldByName('forma').AsString = 'CHE' then
            monto := monto + dm.Query1.FieldByName('pagado').AsFloat
          else
            monto := monto + dm.Query1.FieldByName('monto').AsFloat;
      end;
    end;
  end;
  if forma = 'CHE' then sgGeneral.Cells[1,2] := FloatToStr(monto)
  else if forma = 'TAR' then sgGeneral.Cells[1,3] := FloatToStr(monto)
  else if forma = 'BOC' then sgGeneral.Cells[1,4] := FloatToStr(monto)
  else if forma = 'OBO' then sgGeneral.Cells[1,5] := FloatToStr(monto)
  else if forma = 'CRE' then sgGeneral.Cells[1,6] := FloatToStr(monto);

  frmSeleccionEmp.Release;
end;

procedure TfrmCuadreCajasIPDefinitivo.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f2 then seleccion('CHE');
  if key = vk_f3 then seleccion('TAR');
  if key = vk_f4 then seleccion('BOC');
  if key = vk_f5 then seleccion('OBO');
  if key = vk_f6 then seleccion('CRE');
  if key = vk_f8 then btimprimirClick(Self);
end;

procedure TfrmCuadreCajasIPDefinitivo.btimprimirClick(Sender: TObject);
var
  a, b : integer;
  ar : textfile;
  s, s1, s2 : array[0..50] of char;
  puertopeq : textfile;
  puerto : string;
  TVenta, TCobro, TDesem : Double;
begin
  if dm.QParametrosPAR_FORMATOCUADRE.Value = 2 then
  begin
    application.CreateForm(tRepCuadreCajasIpDefinitivo, RepCuadreCajasIpDefinitivo);
    RepCuadreCajasIpDefinitivo.lbFecha.Caption  := 'Fecha: '+DateToStr(fecha.Date);
    RepCuadreCajasIpDefinitivo.lbcaja.Caption   := 'Caja: '+edcaja.Text;
    RepCuadreCajasIpDefinitivo.lbcajera.Caption := 'Cajero: '+cbcajero.Text;

    RepCuadreCajasIpDefinitivo.lbusuario.Caption := dm.NomUsu;
    RepCuadreCajasIpDefinitivo.lbcajero2.Caption := cbcajero.Text;

    RepCuadreCajasIpDefinitivo.QCuadre.Close;
    RepCuadreCajasIpDefinitivo.QCuadre.Parameters.ParamByName('caj').Value := StrToInt(Trim(edcaja.Text));
    RepCuadreCajasIpDefinitivo.QCuadre.Parameters.ParamByName('usu').Value := cbcajero.KeyValue;
    RepCuadreCajasIpDefinitivo.QCuadre.Parameters.ParamByName('fec').DataType := ftDate;
    RepCuadreCajasIpDefinitivo.QCuadre.Parameters.ParamByName('fec').Value := Fecha.Date;
    RepCuadreCajasIpDefinitivo.QCuadre.Open;
    RepCuadreCajasIpDefinitivo.QDenominacion.Open;
    RepCuadreCajasIpDefinitivo.PrinterSetup;
    RepCuadreCajasIpDefinitivo.Preview;
    RepCuadreCajasIpDefinitivo.Destroy;
  end
  else
  begin
    if FileExists('puerto.txt') then
    begin
      assignfile(puertopeq, 'puerto.txt');
      reset(puertopeq);
      readln(puertopeq, puerto);
    end
    else
      puerto := 'PRN';

    closefile(puertopeq);

    AssignFile(ar, 'c:\imp.bat');
    rewrite(ar);
    writeln(ar, 'type c:\cuadre.txt > '+puerto);
    closefile(ar);

    AssignFile(ar, 'c:\cuadre.txt');
    rewrite(ar);
    writeln(ar, dm.centro(dm.QEmpresasemp_nombre.Value));
    writeln(ar, dm.centro(dm.QEmpresasemp_direccion.Value));
    writeln(ar, dm.centro(dm.QEmpresasEMP_LOCALIDAD.Value));
    writeln(ar, dm.centro(dm.QEmpresasEMP_TELEFONO.Value));
    writeln(ar, dm.centro('RNC:'+dm.QEmpresasEMP_RNC.Value));
    writeln(ar, ' ');
    writeln(ar, dm.centro('C U A D R E   D E L   C A J A'));
    writeln(ar, dm.centro('-----------------------------------'));
    writeln(ar, 'Cajero : '+cbcajero.text);
    writeln(ar, 'Caja   : '+edCaja.text);
    writeln(ar, 'Fecha  : '+DateToStr(Fecha.Date));
    writeln(ar, 'Cuadre#: '+IntToStr(QCuadresecuencia.Value));
    writeln(ar, ' ');

    QDenominacion.Close;
    QDenominacion.Parameters.ParamByName('caj').Value := StrToInt(Trim(edcaja.Text));
    QDenominacion.Parameters.ParamByName('usu').Value := cbcajero.KeyValue;
    QDenominacion.Parameters.ParamByName('fec').DataType := ftDate;
    QDenominacion.Parameters.ParamByName('fec').Value := Fecha.Date;
    QDenominacion.Parameters.ParamByName('sec').Value := QCuadresecuencia.Value;
    QDenominacion.Open;

    writeln(ar, '---------------------------------------');
    writeln(ar, '   M O N T O  CANTIDAD   V A L O R ');
    writeln(ar, '---------------------------------------');
    QDenominacion.First;
    while not QDenominacion.Eof do
    begin
      s := '';
      FillChar(s, 12-length(Format('%n',[QDenominacionmonto.AsFloat])),' ');
      s1 := '';
      FillChar(s1, 5-length(IntToStr(QDenominacioncantidad.AsInteger)),' ');
      s2 := '';
      FillChar(s2, 12-length(Format('%n',[QDenominacionValor.AsFloat])),' ');

      writeln(ar, s+Format('%n',[QDenominacionmonto.AsFloat])+' '+s1+
             IntToStr(QDenominacioncantidad.AsInteger)+'        '+s2+
             Format('%n',[QDenominacionValor.AsFloat]));

      QDenominacion.Next;
    end;
    QDenominacion.First;
    writeln(ar, '---------------------------------------');
    writeln(ar, ' ');
    writeln(ar, ' ');

    s := '';
    FillChar(s, 12-length(FORMAT('%n',[StrToFloat(Trim(sgGeneral.Cells[1,1]))])), ' ');
    writeln(ar, 'EFECTIVO          : '+s+Format('%n',[StrToFloat(Trim(sgGeneral.Cells[1,1]))]));
    
    s := '';
    FillChar(s, 12-length(FORMAT('%n',[StrToFloat(Trim(sgGeneral.Cells[1,2]))])), ' ');
    writeln(ar, 'CHEQUE            : '+s+Format('%n',[StrToFloat(Trim(sgGeneral.Cells[1,2]))]));

    s := '';
    FillChar(s, 12-length(FORMAT('%n',[StrToFloat(Trim(sgGeneral.Cells[1,3]))])), ' ');
    writeln(ar, 'TARJETA           : '+s+Format('%n',[StrToFloat(Trim(sgGeneral.Cells[1,3]))]));

    s := '';
    FillChar(s, 12-length(FORMAT('%n',[StrToFloat(Trim(sgGeneral.Cells[1,4]))])), ' ');
    writeln(ar, 'BONOS DEL CLUB    : '+s+Format('%n',[StrToFloat(Trim(sgGeneral.Cells[1,4]))]));

    s := '';
    FillChar(s, 12-length(FORMAT('%n',[StrToFloat(Trim(sgGeneral.Cells[1,5]))])), ' ');
    writeln(ar, 'OTROS BONOS       : '+s+Format('%n',[StrToFloat(Trim(sgGeneral.Cells[1,5]))]));

    s := '';
    FillChar(s, 12-length(FORMAT('%n',[StrToFloat(Trim(sgGeneral.Cells[1,6]))])), ' ');
    writeln(ar, 'CREDITO           : '+s+Format('%n',[StrToFloat(Trim(sgGeneral.Cells[1,6]))]));

    s := '';
    FillChar(s, 12-length(FORMAT('%n',[StrToFloat(Trim(sgGeneral.Cells[1,7]))])), ' ');
    writeln(ar, 'DEPOSITO EN CAJA  : '+s+Format('%n',[StrToFloat(Trim(sgGeneral.Cells[1,7]))]));

    s := '';
    FillChar(s, 12-length(FORMAT('%n',[StrToFloat(Trim(sgGeneral.Cells[1,8]))*-1])), ' ');
    writeln(ar, 'DEVOLUCIONES      : '+s+Format('%n',[StrToFloat(Trim(sgGeneral.Cells[1,8]))*-1]));

    s := '';
    FillChar(s, 12-length(sgGeneral.Cells[1,9]), ' ');
    writeln(ar, 'TOTAL CAJERO      : '+s+sgGeneral.Cells[1,9]);

    s := '';
    FillChar(s, 12-length(sgGeneral.Cells[2,8]), ' ');
    writeln(ar, 'TOTAL DIFERENCIA  : '+s+sgGeneral.Cells[2,9]);
    writeln(ar, ' ');
    writeln(ar, ' ');
    writeln(ar, ' ');
    writeln(ar, '------------------------ ');
    writeln(ar, 'Firma del Cajero ');
    writeln(ar, ' ');
    writeln(ar, ' ');
    writeln(ar, ' ');
    writeln(ar, ' ');
    writeln(ar, ' ');
    writeln(ar, ' ');

    closefile(ar);
    winexec('c:\imp.bat', 0);
  end; 
end;

procedure TfrmCuadreCajasIPDefinitivo.buscacuadre;
var
  a : integer;
  monto, valor, credito, devoluciones, efectivo : double;
  val : string;
  v2000, v1000, v500, v200, v100, v50, v25, v20, v10, v5, v1, v050, v025, v01 : integer;
begin
  for a:= 1 to sgMontos.RowCount-1 do
  begin
    sgMontos.Cells[1,a] := '0';
    sgMontos.Cells[2,a] := '0.00';
  end;

  for a:= 1 to sgGeneral.RowCount-1 do
  begin
    sgGeneral.Cells[1,a] := '0.00';
    sgGeneral.Cells[2,a] := '0.00';
  end;

  if not QCajerosusu_codigo.IsNull then
  begin
    //Buscando Efectivo
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select sum(f.pagado-f.devuelta) as total from formas_pago_ticket f, montos_ticket m');
    dm.Query1.SQL.Add('where f.caja = :caj');
    dm.Query1.SQL.Add('and f.usu_codigo = :usu');
    dm.Query1.SQL.Add('and f.fecha = convert(datetime, :fec, 105)');
    dm.Query1.SQL.Add('and f.forma = '+QuotedStr('EFE'));
    dm.Query1.SQL.Add('and f.fecha = m.fecha');
    dm.Query1.SQL.Add('and f.caja = m.caja');
    dm.Query1.SQL.Add('and f.usu_codigo = m.usu_codigo');
    dm.Query1.SQL.Add('and f.ticket = m.ticket');
    dm.Query1.SQL.Add('and m.emp_codigo = :emp');
    dm.Query1.Parameters.ParamByName('caj').Value := StrToInt(edcaja.Text);
    dm.Query1.Parameters.ParamByName('usu').Value := cbcajero.KeyValue;
    dm.Query1.Parameters.ParamByName('fec').DataType := ftdate;
    dm.Query1.Parameters.ParamByName('fec').Value    := Fecha.Date;
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Open;
    sgGeneral.Cells[1,1] := format('%10.2F',[dm.Query1.FieldByName('total').AsFloat]);

    efectivo := strtofloat(format('%10.2f',[dm.Query1.FieldByName('total').asFloat]));
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

    sgMontos.Cells[1,1] := inttostr(v2000);
    sgMontos.Cells[1,2] := inttostr(v1000);
    sgMontos.Cells[1,3] := inttostr(v500);
    sgMontos.Cells[1,4] := inttostr(v200);
    sgMontos.Cells[1,5] := inttostr(v100);
    sgMontos.Cells[1,6] := inttostr(v50);
    sgMontos.Cells[1,7] := inttostr(v25);
    sgMontos.Cells[1,8] := inttostr(v20);
    sgMontos.Cells[1,9] := inttostr(v10);
    sgMontos.Cells[1,10] := inttostr(v5);
    sgMontos.Cells[1,11] := inttostr(v1);
    sgMontos.Cells[1,12] := inttostr(v050);
    sgMontos.Cells[1,13] := inttostr(v01);

    sgMontos.Cells[2,1] := format('%n',[(v2000*2000.00)]);
    sgMontos.Cells[2,2] := format('%n',[(v1000*1000.00)]);
    sgMontos.Cells[2,3] := format('%n',[(v500*500.00)]);
    sgMontos.Cells[2,4] := format('%n',[(v200*200.00)]);
    sgMontos.Cells[2,5] := format('%n',[(v100*100.00)]);
    sgMontos.Cells[2,6] := format('%n',[(v50*50.00)]);
    sgMontos.Cells[2,7] := format('%n',[(v25*25.00)]);
    sgMontos.Cells[2,8] := format('%n',[(v20*20.00)]);
    sgMontos.Cells[2,9] := format('%n',[(v10*10.00)]);
    sgMontos.Cells[2,10] := format('%n',[(v5*5.00)]);
    sgMontos.Cells[2,11] := format('%n',[(v1*1.00)]);
    sgMontos.Cells[2,12] := format('%n',[(v050 * 0.50)]);
    sgMontos.Cells[2,13] := format('%n',[(v01 * 0.01)]);

    //Buscando Cheque
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select sum(f.pagado-f.devuelta) as total from formas_pago_ticket f, montos_ticket m');
    dm.Query1.SQL.Add('where f.caja = :caj');
    dm.Query1.SQL.Add('and f.usu_codigo = :usu');
    dm.Query1.SQL.Add('and f.fecha = convert(datetime, :fec, 105)');
    dm.Query1.SQL.Add('and f.forma = '+QuotedStr('CHE'));
    dm.Query1.SQL.Add('and f.fecha = m.fecha');
    dm.Query1.SQL.Add('and f.caja = m.caja');
    dm.Query1.SQL.Add('and f.usu_codigo = m.usu_codigo');
    dm.Query1.SQL.Add('and f.ticket = m.ticket');
    dm.Query1.SQL.Add('and m.emp_codigo = :emp');
    dm.Query1.Parameters.ParamByName('caj').Value := StrToInt(edcaja.Text);
    dm.Query1.Parameters.ParamByName('usu').Value := cbcajero.KeyValue;
    dm.Query1.Parameters.ParamByName('fec').DataType := ftdate;
    dm.Query1.Parameters.ParamByName('fec').Value    := Fecha.Date;
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Open;
    sgGeneral.Cells[1,2] := format('%10.2F',[dm.Query1.FieldByName('total').AsFloat]);

    //Buscando Tarjeta
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select sum(f.pagado-f.devuelta) as total from formas_pago_ticket f, montos_ticket m');
    dm.Query1.SQL.Add('where f.caja = :caj');
    dm.Query1.SQL.Add('and f.usu_codigo = :usu');
    dm.Query1.SQL.Add('and f.fecha = convert(datetime, :fec, 105)');
    dm.Query1.SQL.Add('and f.forma = '+QuotedStr('TAR'));
    dm.Query1.SQL.Add('and f.fecha = m.fecha');
    dm.Query1.SQL.Add('and f.caja = m.caja');
    dm.Query1.SQL.Add('and f.usu_codigo = m.usu_codigo');
    dm.Query1.SQL.Add('and f.ticket = m.ticket');
    dm.Query1.SQL.Add('and m.emp_codigo = :emp');
    dm.Query1.Parameters.ParamByName('caj').Value := StrToInt(edcaja.Text);
    dm.Query1.Parameters.ParamByName('usu').Value := cbcajero.KeyValue;
    dm.Query1.Parameters.ParamByName('fec').DataType := ftdate;
    dm.Query1.Parameters.ParamByName('fec').Value    := Fecha.Date;
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Open;
    sgGeneral.Cells[1,3] := format('%10.2F',[dm.Query1.FieldByName('total').AsFloat]);

    //Buscando Bono Club
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select sum(f.pagado-f.devuelta) as total from formas_pago_ticket f, montos_ticket m');
    dm.Query1.SQL.Add('where f.caja = :caj');
    dm.Query1.SQL.Add('and f.usu_codigo = :usu');
    dm.Query1.SQL.Add('and f.fecha = convert(datetime, :fec, 105)');
    dm.Query1.SQL.Add('and f.forma = '+QuotedStr('BON'));
    dm.Query1.SQL.Add('and f.fecha = m.fecha');
    dm.Query1.SQL.Add('and f.caja = m.caja');
    dm.Query1.SQL.Add('and f.usu_codigo = m.usu_codigo');
    dm.Query1.SQL.Add('and f.ticket = m.ticket');
    dm.Query1.SQL.Add('and m.emp_codigo = :emp');
    dm.Query1.Parameters.ParamByName('caj').Value := StrToInt(edcaja.Text);
    dm.Query1.Parameters.ParamByName('usu').Value := cbcajero.KeyValue;
    dm.Query1.Parameters.ParamByName('fec').DataType := ftdate;
    dm.Query1.Parameters.ParamByName('fec').Value    := Fecha.Date;
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Open;
    sgGeneral.Cells[1,4] := format('%10.2F',[dm.Query1.FieldByName('total').AsFloat]);

    //Buscando Otros Bonos
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select sum(f.pagado-f.devuelta) as total from formas_pago_ticket f, montos_ticket m');
    dm.Query1.SQL.Add('where f.caja = :caj');
    dm.Query1.SQL.Add('and f.usu_codigo = :usu');
    dm.Query1.SQL.Add('and f.fecha = convert(datetime, :fec, 105)');
    dm.Query1.SQL.Add('and f.forma = '+QuotedStr('OBO'));
    dm.Query1.SQL.Add('and f.fecha = m.fecha');
    dm.Query1.SQL.Add('and f.caja = m.caja');
    dm.Query1.SQL.Add('and f.usu_codigo = m.usu_codigo');
    dm.Query1.SQL.Add('and f.ticket = m.ticket');
    dm.Query1.SQL.Add('and m.emp_codigo = :emp');
    dm.Query1.Parameters.ParamByName('caj').Value := StrToInt(edcaja.Text);
    dm.Query1.Parameters.ParamByName('usu').Value := cbcajero.KeyValue;
    dm.Query1.Parameters.ParamByName('fec').DataType := ftdate;
    dm.Query1.Parameters.ParamByName('fec').Value    := Fecha.Date;
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Open;
    sgGeneral.Cells[1,5] := format('%10.2F',[dm.Query1.FieldByName('total').AsFloat]);

    //Buscando Credito
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select sum(f.pagado) as total from formas_pago_ticket f, montos_ticket m');
    dm.Query1.SQL.Add('where f.caja = :caj');
    dm.Query1.SQL.Add('and f.usu_codigo = :usu');
    dm.Query1.SQL.Add('and f.fecha = convert(datetime, :fec, 105)');
    dm.Query1.SQL.Add('and f.forma = '+QuotedStr('CRE'));
    dm.Query1.SQL.Add('and f.fecha = m.fecha');
    dm.Query1.SQL.Add('and f.caja = m.caja');
    dm.Query1.SQL.Add('and f.usu_codigo = m.usu_codigo');
    dm.Query1.SQL.Add('and f.ticket = m.ticket');
    dm.Query1.SQL.Add('and m.emp_codigo = :emp');
    dm.Query1.Parameters.ParamByName('caj').Value := StrToInt(edcaja.Text);
    dm.Query1.Parameters.ParamByName('usu').Value := cbcajero.KeyValue;
    dm.Query1.Parameters.ParamByName('fec').DataType := ftdate;
    dm.Query1.Parameters.ParamByName('fec').Value    := Fecha.Date;
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Open;
    sgGeneral.Cells[1,6] := format('%10.2F',[dm.Query1.FieldByName('total').AsFloat]);

    //Buscando Devoluciones
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select sum(f.pagado) as total from formas_pago_ticket f, montos_ticket m');
    dm.Query1.SQL.Add('where f.caja = :caj');
    dm.Query1.SQL.Add('and f.usu_codigo = :usu');
    dm.Query1.SQL.Add('and f.fecha = convert(datetime, :fec, 105)');
    dm.Query1.SQL.Add('and f.forma = '+QuotedStr('DEV'));
    dm.Query1.SQL.Add('and f.fecha = m.fecha');
    dm.Query1.SQL.Add('and f.caja = m.caja');
    dm.Query1.SQL.Add('and f.usu_codigo = m.usu_codigo');
    dm.Query1.SQL.Add('and f.ticket = m.ticket');
    dm.Query1.SQL.Add('and m.emp_codigo = :emp');
    dm.Query1.Parameters.ParamByName('caj').Value := StrToInt(edcaja.Text);
    dm.Query1.Parameters.ParamByName('usu').Value := cbcajero.KeyValue;
    dm.Query1.Parameters.ParamByName('fec').DataType := ftdate;
    dm.Query1.Parameters.ParamByName('fec').Value    := Fecha.Date;
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Open;
    sgGeneral.Cells[1,7] := format('%10.2F',[dm.Query1.FieldByName('total').AsFloat]);

    monto := 0;
    valor := 0;
    for a := 1 to sgGeneral.RowCount-1 do
    begin
      if Trim(sgGeneral.Cells[0,a]) <> 'TOTAL EN CAJA' then
      begin
        if pos(',',Trim(sgGeneral.Cells[2,a])) > 0 then
        begin
          val := copy(Trim(sgGeneral.Cells[2,a]),1,pos(',',Trim(sgGeneral.Cells[2,a]))-1) +
                 copy(Trim(sgGeneral.Cells[2,a]),pos(',',Trim(sgGeneral.Cells[2,a]))+1,length(Trim(sgGeneral.Cells[2,a])));
          monto := monto + strtofloat(trim(val));
        end
        else
          monto := monto + StrToFloat(Trim(sgGeneral.Cells[2,a]));

        if pos(',',Trim(sgGeneral.Cells[2,a])) > 0 then
        begin
          val := copy(Trim(sgGeneral.Cells[1,a]),1,pos(',',Trim(sgGeneral.Cells[1,a]))-1) +
                 copy(Trim(sgGeneral.Cells[1,a]),pos(',',Trim(sgGeneral.Cells[1,a]))+1,length(Trim(sgGeneral.Cells[1,a])));
          valor := valor + strtofloat(trim(val));
        end
        else
          valor := valor + StrToFloat(Trim(sgGeneral.Cells[1,a]));
      end;
    end;
    sgGeneral.Cells[1,sgGeneral.RowCount-1] := format('%n',[valor]);
    sgGeneral.Cells[2,sgGeneral.RowCount-1] := format('%n',[monto]);
  end;
end;

procedure TfrmCuadreCajasIPDefinitivo.cbcajeroClick(Sender: TObject);
begin
  buscacuadre;
end;

procedure TfrmCuadreCajasIPDefinitivo.QDenominacionCalcFields(DataSet: TDataSet);
begin
  QDenominacionValor.Value := QDenominacioncantidad.Value * QDenominacionmonto.Value;
end;

end.
