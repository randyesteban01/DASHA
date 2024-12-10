unit PTIKET001;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, dbcgrids, DBCtrls, StdCtrls, DB, ADODB, Grids, DBGrids,
  Buttons, Spin,Barcode, frxClass, frxDBSet, frxBarcode, frxRich,
  OleServer, AccessXP, Mask, ToolEdit;

type
  TfrmBoleteria = class(TForm)
    pTop: TPanel;
    Panel3: TPanel;
    cbSucOrigen: TDBLookupComboBox;
    Panel2: TPanel;
    Label2: TLabel;
    dsSucOrigen: TDataSource;
    QSucOrigen: TADOQuery;
    QSucOrigensuc_codigo: TIntegerField;
    QSucOrigensuc_nombre: TStringField;
    QSucOrigenemp_codigo: TIntegerField;
    QSucOrigensuc_direccion: TStringField;
    QSucOrigensuc_localidad: TStringField;
    QSucOrigensuc_telefono: TStringField;
    QSucOrigensuc_rnc: TStringField;
    dsSucDestino: TDataSource;
    QSucDestino: TADOQuery;
    QSucDestinosuc_codigo: TIntegerField;
    QSucDestinosuc_nombre: TStringField;
    Cantidad: TSpinEdit;
    Label3: TLabel;
    qBoleto: TADOQuery;
    DataSource1: TDataSource;
    qBoletousu_codigo: TIntegerField;
    qBoletofecha: TDateTimeField;
    qBoletoboleto: TIntegerField;
    qBoletocaja: TIntegerField;
    qBoletosuc_cod_origen: TIntegerField;
    qBoletosuc_cod_destino: TIntegerField;
    qBoletoproducto: TIntegerField;
    qBoletodescripcion: TStringField;
    qBoletoprecio: TBCDField;
    qBoletocobrado: TBCDField;
    qBoletodevuelto: TBCDField;
    qBoletoficha_pagado: TStringField;
    qBoletofecha_pagado: TDateTimeField;
    qBoletoemp_codigo: TIntegerField;
    Panel4: TPanel;
    boton1: TStaticText;
    boton2: TStaticText;
    boton3: TStaticText;
    boton4: TStaticText;
    boton5: TStaticText;
    boton6: TStaticText;
    boton7: TStaticText;
    boton8: TStaticText;
    boton9: TStaticText;
    boton10: TStaticText;
    boton11: TStaticText;
    boton12: TStaticText;
    boton13: TStaticText;
    boton14: TStaticText;
    boton15: TStaticText;
    boton16: TStaticText;
    boton17: TStaticText;
    boton18: TStaticText;
    boton19: TStaticText;
    boton20: TStaticText;
    StaticText41: TStaticText;
    StaticText42: TStaticText;
    StaticText43: TStaticText;
    StaticText44: TStaticText;
    StaticText45: TStaticText;
    StaticText46: TStaticText;
    StaticText47: TStaticText;
    StaticText48: TStaticText;
    StaticText49: TStaticText;
    StaticText50: TStaticText;
    StaticText51: TStaticText;
    StaticText52: TStaticText;
    StaticText53: TStaticText;
    StaticText54: TStaticText;
    StaticText55: TStaticText;
    StaticText56: TStaticText;
    StaticText57: TStaticText;
    StaticText58: TStaticText;
    StaticText59: TStaticText;
    StaticText60: TStaticText;
    Label4: TLabel;
    LTotalCobrar: TLabel;
    Panel1: TPanel;
    LTranss: TLabel;
    qry: TADOQuery;
    qryemp_nombre: TStringField;
    qrysuc_telefono: TStringField;
    qrysuc_direccion: TStringField;
    qryTerminal_origen: TStringField;
    qryTerminal_destino: TStringField;
    qryemp_codigo: TIntegerField;
    qryusu_codigo: TIntegerField;
    qryfecha: TDateTimeField;
    qryboleto: TAutoIncField;
    qrycaja: TIntegerField;
    qrysuc_cod_origen: TIntegerField;
    qrysuc_cod_destino: TIntegerField;
    qryproducto: TIntegerField;
    qrydescripcion: TStringField;
    qryprecio: TBCDField;
    qrycobrado: TBCDField;
    qrydevuelto: TBCDField;
    qryficha_pagado: TStringField;
    qryfecha_pagado: TDateTimeField;
    qBoletosecuencia_rando: TWideStringField;
    qrysecuencia_rando: TWideStringField;
    DB_1: TfrxDBDataset;
    Rpt_Ticket: TfrxReport;
    qryusu_nombre: TStringField;
    frxBarCodeObject1: TfrxBarCodeObject;
    qBoletocodbarra: TStringField;
    qEjecutar: TADOQuery;
    qEjecutardescripcion: TStringField;
    qEjecutarprecio: TCurrencyField;
    qEjecutarcodbarra: TStringField;
    qrycodbarra: TStringField;
    frxRichObject1: TfrxRichObject;
    Panel5: TPanel;
    DEdt_ValidoHasta: TDateEdit;
    AccessApplication1: TAccessApplication;
    Label5: TLabel;
    cbbHoraValido: TComboBox;
    Rpt_TicketCopia: TfrxReport;
    GroupBox1: TGroupBox;
    DBGrid2: TDBGrid;
    qBoletoFECHA_VALIDA: TDateField;
    qBoletoHORA_VALIDA: TStringField;
    DS_RESUMEN: TDataSource;
    QRESUMEN: TADOQuery;
    QRESUMENSUCURSAL: TStringField;
    QRESUMENCANT: TIntegerField;
    Label6: TLabel;
    lblTotal: TLabel;
    btnBalance: TBitBtn;
    qBalance: TADOQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    CurrencyField1: TCurrencyField;
    IntegerField1: TIntegerField;
    StringField6: TStringField;
    qBalancePAGADO: TCurrencyField;
    qBalanceTOTAL: TCurrencyField;
    qBalanceBALANCE: TCurrencyField;
    DB_Balance: TfrxDBDataset;
    Rpt_Balance: TfrxReport;
    DB_SUCORIGEN: TfrxDBDataset;
    qryCONTEO: TIntegerField;
    cbbHoraValido2: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qBoletoNewRecord(DataSet: TDataSet);
    procedure ExeButton(bt : TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qBoletosecuencia_randoChange(Sender: TField);
    procedure QSucOrigensuc_nombreChange(Sender: TField);
    procedure Rpt_TicketBeforePrint(Sender: TfrxReportComponent);
    procedure Rpt_TicketCopiaBeforePrint(Sender: TfrxReportComponent);
    procedure QRESUMENAfterOpen(DataSet: TDataSet);
    procedure btnBalanceClick(Sender: TObject);
    procedure Rpt_BalanceBeforePrint(Sender: TfrxReportComponent);
    procedure dsSucOrigenDataChange(Sender: TObject; Field: TField);
    procedure cbbHoraValidoChange(Sender: TObject);
    procedure DEdt_ValidoHastaChange(Sender: TObject);
    procedure qBoletoAfterPost(DataSet: TDataSet);
    procedure tmr1Timer(Sender: TObject);
    procedure qBoletoBeforePost(DataSet: TDataSet);
    procedure cbSucOrigenCloseUp(Sender: TObject);
    function  NumeracionTicket:Integer;

  private
      FechaServer :TDateTime;
      Hora, HoraRetraso, HoraRetraso2:Integer;
      vl_suc_destino :  Integer;
    Barcode1 : TAsBarcode;
    procedure SetBoton;
    procedure CrearBoleto(vTag,vCantidad:integer);
    procedure imprimeTicket(vID:integer; bc:TAsBarcode);
    procedure imprimeTicket2(vID:integer);
    procedure Imp40Columnas;
    procedure BuscarFechaServer;
    procedure BuscarFechaServer2;
  end;

var
  frmBoleteria: TfrmBoleteria;

implementation
   uses SIGMA01, SIGMA00, Printers, barcode2;

{$R *.dfm}

function RamdomValido:string;
var vText:string;
    vB:Boolean;
begin
 // vB := false;
  //while vB = false do begin
    //vText := FormatFloat('00000000',Random(99999999));
    with dm.QQuery1,SQL do
      begin
        Close;
        Clear;
        Add('SELECT FLOOR(RAND()*(9999999-1)+1) random');
        Add('where FLOOR(RAND()*(9999999-1)+1) not in ');
        Add('(select secuencia_rando from boleto)');
        //Add('select * from boleto where secuencia_rando ='+QuotedStr(vText));
        Open;
        Result := fieldbyname('random').Text;
       // vB := IsEmpty;
    //  end;
  end;

  //Result := vText
end;

procedure TfrmBoleteria.FormCreate(Sender: TObject);
begin
   Barcode1       := TAsBarcode.Create(self);
   Barcode1.Top   := 50;
   Barcode1.Left  := 30;
   Barcode1.Typ   := bcCode128A; //bcCodePostNet;
   Barcode1.Modul := 2;
   Barcode1.Ratio := 2.0;
   Barcode1.Height:= 50;
   Barcode1.Angle := 0;
   Panel5.Visible := True;
   BuscarFechaServer;
   DEdt_ValidoHasta.Date := FechaServer;
   cbbHoraValido.ItemIndex := Hora;

   with QRESUMEN DO BEGIN
  Close;
  Parameters.ParamByName('EMP').Value   := DM.vp_cia;
  Parameters.ParamByName('SUC').Value   := cbSucOrigen.KeyValue;
  Parameters.ParamByName('FECHA').Value := DEdt_ValidoHasta.Date;
  Parameters.ParamByName('HORA').Value  := cbbHoraValido.Text;
  Parameters.ParamByName('USUARIO').Value  := DM.Usuario;
  Open;
  end;


  QSucOrigen.close;
  QSucOrigen.Parameters.ParamByName('usu').Value := dm.Usuario;
  QSucOrigen.Open;
  cbSucOrigen.KeyValue := QSucOrigensuc_codigo.Value;
  QSucDestino.close;
  QSucDestino.Open;
  if not qBoleto.Active then
     qBoleto.Active := true;
  SetBoton;
  Random;{para cargar un numero al inicio}

  //Verificar si el usuario tiene sucursal por defecto
  if not VarIsNull(dm.suc_default) and (dm.suc_default > 0) then
  begin
    cbSucOrigen.KeyValue := dm.suc_default;
  end;

end;

procedure TfrmBoleteria.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = '+' then
     Cantidad.Value := Cantidad.Value+1;
  if key = '-' then
     Cantidad.Value := Cantidad.Value-1;
end;

procedure TfrmBoleteria.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_up then QSucDestino.Prior;
  if key = vk_down then QSucDestino.Next;
  //Botones
  if (ssAlt in Shift) and (key = 65) and (boton1.Enabled)  then ExeButton(boton1);
  if (ssAlt in Shift) and (key = 66) and (boton2.Enabled)  then ExeButton(boton2);
  if (ssAlt in Shift) and (key = 67) and (boton3.Enabled)  then ExeButton(boton3);
  if (ssAlt in Shift) and (key = 68) and (boton4.Enabled)  then ExeButton(boton4);
  if (ssAlt in Shift) and (key = 69) and (boton5.Enabled)  then ExeButton(boton5);
  if (ssAlt in Shift) and (key = 70) and (boton6.Enabled)  then ExeButton(boton6);
  if (ssAlt in Shift) and (key = 71) and (boton7.Enabled)  then ExeButton(boton7);
  if (ssAlt in Shift) and (key = 72) and (boton8.Enabled)  then ExeButton(boton8);
  if (ssAlt in Shift) and (key = 73) and (boton9.Enabled)  then ExeButton(boton9);
  if (ssAlt in Shift) and (key = 74) and (boton10.Enabled) then ExeButton(boton10);
  if (ssAlt in Shift) and (key = 75) and (boton11.Enabled) then ExeButton(boton11);
  if (ssAlt in Shift) and (key = 76) and (boton12.Enabled) then ExeButton(boton12);
  if (ssAlt in Shift) and (key = 77) and (boton13.Enabled) then ExeButton(boton13);
  if (ssAlt in Shift) and (key = 78) and (boton14.Enabled) then ExeButton(boton14);
  if (ssAlt in Shift) and (key = 79) and (boton15.Enabled) then ExeButton(boton15);
  if (ssAlt in Shift) and (key = 80) and (boton16.Enabled) then ExeButton(boton16);
  if (ssAlt in Shift) and (key = 81) and (boton17.Enabled) then ExeButton(boton17);
  if (ssAlt in Shift) and (key = 82) and (boton18.Enabled) then ExeButton(boton18);
  if (ssAlt in Shift) and (key = 83) and (boton19.Enabled) then ExeButton(boton19);
  if (ssAlt in Shift) and (key = 84) and (boton20.Enabled) then ExeButton(boton20);
end;

procedure TfrmBoleteria.qBoletoNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('suc_cod_origen').Value     := QSucOrigen.FieldByName('suc_codigo').Value;
  DataSet.FieldByName('secuencia_rando').AsString := RamdomValido;
  DataSet.FieldByName('usu_codigo').Value         := dm.Usuario;
  DataSet.FieldByName('fecha').Value              := FechaServer;
end;

procedure TfrmBoleteria.SetBoton;
var i:integer;
begin
  for i :=1 to 20 do begin
      TStaticText(FindComponent('boton'+IntToStr(i))).Caption := '';
      TStaticText(FindComponent('boton'+IntToStr(i))).tag := 0;
      TStaticText(FindComponent('boton'+IntToStr(i))).Enabled := false;
      TStaticText(FindComponent('StaticText'+IntToStr(i+40))).Visible := false;
  end;

   with QRESUMEN DO BEGIN
  Close;
  Parameters.ParamByName('EMP').Value   := DM.vp_cia;
  Parameters.ParamByName('SUC').Value   := cbSucOrigen.KeyValue;
  Parameters.ParamByName('FECHA').Value := DEdt_ValidoHasta.Date;
  Parameters.ParamByName('HORA').Value  := cbbHoraValido.Text;
  Parameters.ParamByName('USUARIO').Value  := DM.Usuario;
  Open;
  end;

    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select pre_codigo,descripcion,precio from boleto_precio');
    dm.Query1.SQL.Add('where emp_codigo  = :emp');
    dm.Query1.SQL.Add('  and suc_cod_origen  = :origen');
    //dm.Query1.SQL.Add('  and suc_cod_destino = :destino');
    dm.Query1.Parameters.ParamByName('emp').Value     := QSucOrigenemp_codigo.Value;
    dm.Query1.Parameters.ParamByName('origen').Value  := cbSucOrigen.KeyValue;
    //dm.Query1.Parameters.ParamByName('destino').Value := QSucDestinosuc_codigo.Value;
    dm.Query1.Open;

  while not dm.Query1.Eof do
    begin
      TStaticText(FindComponent('boton'+IntToStr(dm.Query1.RecNo))).Caption    := dm.Query1.FieldByName('descripcion').asstring+
            chr(13)+dm.Query1.FieldByName('precio').asstring;
      TStaticText(FindComponent('boton'+IntToStr(dm.Query1.RecNo))).tag        := dm.Query1.FieldByName('pre_codigo').AsInteger;
      TStaticText(FindComponent('boton'+IntToStr(dm.Query1.RecNo))).Enabled    := true;
      TStaticText(FindComponent('StaticText'+IntToStr(dm.Query1.RecNo+40))).Visible := true;
      dm.Query1.Next;
    end;
end;

procedure TfrmBoleteria.ExeButton(bt: TObject);
begin
  vl_suc_destino := TStaticText(bt).Tag;
  CrearBoleto(TStaticText(bt).Tag, Cantidad.Value);
  Cantidad.Value := 1;

end;

procedure TfrmBoleteria.CrearBoleto(vTag, vCantidad: integer);
var i:integer;
begin
  for i := 1 to vCantidad do begin
  WITH qEjecutar DO BEGIN
  Close;
  Parameters.ParamByName('cod').Value := vTag;
  Parameters.ParamByName('emp').Value := qBoletoemp_codigo.Value;
  Open;

  if dm.Query1.FindField('precio') <> nil then
  begin
    LTotalCobrar.Caption := FormatFloat(',0.00', (vCantidad * dm.Query1.FieldByName('precio').AsFloat));
    LTranss.Caption := ' '+IntToStr(vCantidad)+' * '+dm.Query1.FieldByName('precio').AsString;
  end
  else
  begin
    LTotalCobrar.Caption := '0.00';
    LTranss.Caption := '0.00';
  end;   

  with qBoleto do
  begin
    Insert;

    FieldByName('producto').Value := vTag;

    if qEjecutar.FindField('descripcion') <> nil then
      FieldByName('descripcion').Value := qEjecutar.FieldByName('descripcion').Value  ;

    if qEjecutar.FindField('precio') <> nil then
      FieldByName('precio').Value := qEjecutar.FieldByName('precio').Value;

    if qEjecutar.FindField('codbarra') <> nil then
      FieldByName('codbarra').Value := qEjecutar.FieldByName('codbarra').Value;

    FieldByName('fecha_valida').Value := DEdt_ValidoHasta.Date;
    FieldByName('hora_valida').Value := cbbHoraValido.Text;
    FieldByName('suc_cod_destino').Value := vl_suc_destino;

    Post;

    imprimeTicket2(FieldByName('boleto').Value);
    LTotalCobrar.Caption := FormatFloat(',0.00', 0);
    LTranss.Caption := '';
    // imprimeTicket(FieldByName('boleto').Value, Barcode1);
  end;

end;
end;
end;


procedure TfrmBoleteria.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrmBoleteria.imprimeTicket(vID: integer;bc:TAsBarcode);
  procedure CenterAligned(vPrinter: TPrinter; const X, Y: Integer; const s: string);
  begin
    vPrinter.Canvas.TextOut((vPrinter.PageWidth-vPrinter.Canvas.TextWidth(s)) div 2, Y, s);
  end;
var
   tmpbarcode : TAsBarcode;
    pr   : TPrinter;
    x,y  : integer;
    P: TPoint;
begin
 pr := TPrinter.Create;    //  ShowMessage(inttostr(pr.Printers.IndexOf(dm.QParametrospar_impresora_boleto.AsString)));
  if Printer.Printers.IndexOf(dm.QParametrospar_impresora_boleto.AsString) < 0 then
     ShowMessage('ERROR : NO TIENE PRINTER CONFIGURADO PARA ESTE PROCESO'
     +#13+Printer.Printers.Text)
  else
    Printer.PrinterIndex := pr.Printers.IndexOf(dm.QParametrospar_impresora_boleto.asstring);

  qry.close;
  qry.Parameters.ParamByName('boleto').Value := vID;
  qry.Open;

  tmpbarcode := TAsBarcode.Create(nil);
  tmpbarcode.Assign(bc);

  x := 15;  y := 0;
   try
      with printer do
      begin
         BeginDoc;
         P.X:= 15;
         P.Y:= PageHeight div 50;
         Canvas.Font.Size :=  16;
    centerAligned(printer, P.X, P.Y,qryemp_nombre.AsString);
         P.Y := P.Y + Canvas.TextHeight(qryemp_nombre.AsString) + 5;
         Canvas.Font.Size :=  8;
    centerAligned(printer, P.X, P.Y+y,qrysuc_telefono.AsString);
         P.Y := P.Y + Canvas.TextHeight('I') +5;
    centerAligned(printer, P.X, P.Y+y,qrysuc_direccion.AsString);
         P.Y := P.Y + Canvas.TextHeight('I') +16;
         Canvas.Font.Size :=  10;
         Canvas.TextOut(x, P.Y, 'Le atendió '+dm.NomUsu);
         P.Y := P.Y + Canvas.TextHeight('I') +15;
         Canvas.Font.Size :=  8;
         Canvas.TextOut(x, P.Y, 'Emisión : '+FormatDateTime('DD/MM/YYYY hh:mm am/pm',qryfecha.AsDateTime));
         P.Y := P.Y + Canvas.TextHeight('I') + 5;
         Canvas.TextOut(x, P.Y, 'Terminal Origen : '+qryTerminal_origen.AsString);
         P.Y := P.Y + Canvas.TextHeight('I') + 5;
         Canvas.TextOut(x, P.Y, 'Terminal Destino :'+qryTerminal_destino.AsString);
         P.Y := P.Y + Canvas.TextHeight('I') + 5;
         Canvas.Font.Size :=  22;
         Canvas.TextOut(x, P.Y, 'Valor RD$:'+qryprecio.AsString);
         P.Y := P.Y + Canvas.TextHeight('I') +5;
         Canvas.Font.Size :=   8;
         Canvas.TextOut(x, P.Y, 'Validez  : '+FormatDateTime('DD/MM/YYYY',qryfecha.AsDateTime));
         P.Y := P.Y + Canvas.TextHeight('I') + 15;
         //Height of barcode: 40mm
         tmpbarcode.Height := ConvertMmToPixelsY(25.0);
         tmpbarcode.Height := ConvertInchToPixelsY(1.5);
         tmpbarcode.Width  := ConvertMmToPixelsY(20.0);
         tmpbarcode.Width  := ConvertInchToPixelsY(1.5);

         //Modulwidth: 0.5mm }
         tmpbarcode.Modul  := ConvertMmToPixelsX(0.5);
         tmpbarcode.Top    := ConvertMmToPixelsY(55.0); //75 //30.0
         tmpbarcode.Left   := ConvertMmToPixelsX(5.0); //5.0
         tmpbarcode.DrawBarcode(Canvas);
         EndDoc;

      end;
   finally
      tmpbarcode.Free;
   end;
   pr.Free;
end;

procedure TfrmBoleteria.qBoletosecuencia_randoChange(Sender: TField);
begin
  if not qBoletosecuencia_rando.IsNull then
     Barcode1.Text := qBoletosecuencia_rando.AsString;
end;

procedure TfrmBoleteria.Imp40Columnas;
var
  arch, puertopeq : textfile;
  puerto : string;
begin
  if FileExists('puerto.txt') then
  begin
    assignfile(puertopeq, 'puerto.txt');
    reset(puertopeq);
    readln(puertopeq, puerto);
    closefile(puertopeq);
  end
  else
    puerto := 'PRN';

  AssignFile(arch, 'impbol.bat');
  rewrite(arch);
  writeln(arch, 'type boleto.txt > '+puerto);
  closefile(arch);
end;

procedure TfrmBoleteria.imprimeTicket2(vID: integer);
begin
  qry.close;
  qry.Parameters.ParamByName('boleto').Value := vID;
  qry.Open;

if not qry.IsEmpty then begin
Rpt_Ticket.PrintOptions.Printer := DM.QParametrospar_impresora_boleto.Value;
Rpt_Ticket.PrintOptions.Copies := 1;
Rpt_Ticket.PrepareReport(True);
Rpt_Ticket.Print;
if ((dm.QParametrospar_fac_preimpresa.Value = 'True') and (dm.QParametrospar_formato_preimpreso.Value = 'Emtraba')) then BEGIN
Rpt_TicketCopia.PrintOptions.Printer := DM.QParametrospar_impresora_boleto.Value;
Rpt_TicketCopia.PrintOptions.Copies := 1;
Rpt_TicketCopia.PrepareReport(True);
Rpt_TicketCopia.Print;
end;
end;
end;


procedure TfrmBoleteria.QSucOrigensuc_nombreChange(Sender: TField);
begin
SetBoton;
end;

procedure TfrmBoleteria.BuscarFechaServer;
begin
with DM.adoMultiUso do begin
Close;
SQL.Clear;
SQL.Add('select CAST(convert(char(2), getdate(), 108) AS INT)+1 HORA, getdate() Fecha, '+
'CAST(convert(char(2), dateadd(minute,-15,getdate()), 108) AS INT)+1 HORARetraso');
Open;
IF RecordCount > 0 THEN begin
FechaServer := FieldByname('Fecha').Value;
HoraRetraso := FieldByname('HoraRetraso').Value;
Hora := FieldByname('Hora').Value;
end;
end;
end;

procedure TfrmBoleteria.Rpt_TicketBeforePrint(Sender: TfrxReportComponent);
begin
if ((dm.QParametrospar_fac_preimpresa.Value = 'True') and (dm.QParametrospar_formato_preimpreso.Value = 'Emtraba')) then
begin
TfrxMemoView(Rpt_Ticket.FindObject('Memo2')).Text := FormatDateTime('dd/mm/yyyy',DEdt_ValidoHasta.Date)+' '+cbbHoraValido.Text;
end;
end;

procedure TfrmBoleteria.Rpt_TicketCopiaBeforePrint(
  Sender: TfrxReportComponent);
begin
if ((dm.QParametrospar_fac_preimpresa.Value = 'True') and (dm.QParametrospar_formato_preimpreso.Value = 'Emtraba')) then
begin
TfrxMemoView(Rpt_TicketCopia.FindObject('Memo2')).Text := FormatDateTime('dd/mm/yyyy',DEdt_ValidoHasta.Date)+' '+cbbHoraValido.Text;
end;
end;

procedure TfrmBoleteria.QRESUMENAfterOpen(DataSet: TDataSet);
var
cantidad:Integer;
begin
cantidad := 0;
QRESUMEN.DisableControls;
QRESUMEN.First;
while not QRESUMEN.Eof do begin
  cantidad := cantidad+QRESUMENCANT.Value;
  QRESUMEN.Next;
end;
QRESUMEN.First;
QRESUMEN.EnableControls;
lblTotal.Caption := IntToStr(cantidad);
end;

procedure TfrmBoleteria.btnBalanceClick(Sender: TObject);
begin
WITH qBalance DO BEGIN
Close;
Parameters.ParamByName('emp').Value := dm.vp_cia;
Parameters.ParamByName('suc').Value := cbSucOrigen.KeyValue;
Parameters.ParamByName('fecha').Value := DEdt_ValidoHasta.Date;
Parameters.ParamByName('HORA').Value  := cbbHoraValido.Text;
Parameters.ParamByName('USUARIO').Value  := dm.Usuario;
Open;
if not IsEmpty then begin
Rpt_Balance.PrintOptions.Printer := DM.QParametrospar_impresora_boleto.Value;
Rpt_Balance.PrintOptions.Copies := 1;
Rpt_Balance.PrepareReport(True);
Rpt_Balance.Print;
end;
end;
end;

procedure TfrmBoleteria.Rpt_BalanceBeforePrint(
  Sender: TfrxReportComponent);
begin
TfrxMemoView(Rpt_Balance.FindObject('Memo8')).Text := 'FECHA: '+ FormatDateTime('dd/mm/yyyy',DEdt_ValidoHasta.Date) + ' '+cbbHoraValido.Text;
end;

procedure TfrmBoleteria.dsSucOrigenDataChange(Sender: TObject;
  Field: TField);
begin
with QRESUMEN DO BEGIN
  Close;
  Parameters.ParamByName('EMP').Value   := DM.vp_cia;
  Parameters.ParamByName('SUC').Value   := cbSucOrigen.KeyValue;
  Parameters.ParamByName('FECHA').Value := DEdt_ValidoHasta.Date;
  Parameters.ParamByName('HORA').Value  := cbbHoraValido.Text;
  Parameters.ParamByName('USUARIO').Value  := DM.Usuario;
  Open;
  end;
    SetBoton;
end;

procedure TfrmBoleteria.cbbHoraValidoChange(Sender: TObject);
begin
BuscarFechaServer2;
BuscarFechaServer;
    {
if (HoraRetraso2 > cbbHoraValido.ItemIndex) and (StrToDate(FormatDateTime('dd/mm/yyyy',FechaServer)) = DEdt_ValidoHasta.Date) then
cbbHoraValido.ItemIndex := Hora;     }




with QRESUMEN DO BEGIN
  Close;
  Parameters.ParamByName('EMP').Value   := DM.vp_cia;
  Parameters.ParamByName('SUC').Value   := cbSucOrigen.KeyValue;
  Parameters.ParamByName('FECHA').Value := DEdt_ValidoHasta.Date;
  Parameters.ParamByName('HORA').Value  := cbbHoraValido.Text;
  Parameters.ParamByName('USUARIO').Value  := DM.Usuario;
  Open;
  end;
end;

procedure TfrmBoleteria.DEdt_ValidoHastaChange(Sender: TObject);
begin
BuscarFechaServer;
if FechaServer >= DEdt_ValidoHasta.Date then
DEdt_ValidoHasta.Date := FechaServer;

with QRESUMEN DO BEGIN
  Close;
  Parameters.ParamByName('EMP').Value   := DM.vp_cia;
  Parameters.ParamByName('SUC').Value   := cbSucOrigen.KeyValue;
  Parameters.ParamByName('FECHA').Value := DEdt_ValidoHasta.Date;
  Parameters.ParamByName('HORA').Value  := cbbHoraValido.Text;
  Parameters.ParamByName('USUARIO').Value  := DM.Usuario;
  Open;
  end;
end;

procedure TfrmBoleteria.qBoletoAfterPost(DataSet: TDataSet);
begin
with QRESUMEN DO BEGIN
  Close;
  Parameters.ParamByName('EMP').Value   := DM.vp_cia;
  Parameters.ParamByName('SUC').Value   := cbSucOrigen.KeyValue;
  Parameters.ParamByName('FECHA').Value := DEdt_ValidoHasta.Date;
  Parameters.ParamByName('HORA').Value  := cbbHoraValido.Text;
  Parameters.ParamByName('USUARIO').Value  := DM.Usuario;
  Open;
end;
end;

procedure TfrmBoleteria.BuscarFechaServer2;
begin
with DM.adoMultiUso do begin
Close;
SQL.Clear;
SQL.Add('select CAST(convert(char(2), dateadd(minute,-15,getdate()), 108) AS INT)+1 HORARetraso');
Open;
IF RecordCount > 0 THEN begin
HoraRetraso2 := FieldByname('HoraRetraso').Value;
end;
end;

end;

procedure TfrmBoleteria.tmr1Timer(Sender: TObject);
begin
BuscarFechaServer2;
end;

procedure TfrmBoleteria.qBoletoBeforePost(DataSet: TDataSet);
begin
BuscarFechaServer2;
BuscarFechaServer;
cbbHoraValido2.ItemIndex := Hora;
//IF StrToDate(FormatDateTime('dd/mm/yyyy',FechaServer)) = DEdt_ValidoHasta.Date THEN BEGIN
//if (HoraRetraso2 > cbbHoraValido.ItemIndex)  then begin
 // MessageDlg('LA HORA DEL SERVIDOR CAMBIO Y NO PERMITE VENDER BOLETOS DE ESTE HORARIO '+cbbHoraValido.Text+Char(13)+
  //'FAVOR CAMBIAR / REVISAR EL HORARIO'+Char(#13)+
 // 'SOLO SE PERMITE VENDER A PARTIR DE '+FormatDateTime('dd/mm/yyyy',FechaServer)+' '+cbbHoraValido2.Text,mtInformation,[mbOK],0);
 // cbbHoraValido.SetFocus;
 // Abort;
//end;
//end;
end;

procedure TfrmBoleteria.cbSucOrigenCloseUp(Sender: TObject);
begin
with QRESUMEN DO BEGIN
  Close;
  Parameters.ParamByName('EMP').Value   := DM.vp_cia;
  Parameters.ParamByName('SUC').Value   := cbSucOrigen.KeyValue;
  Parameters.ParamByName('FECHA').Value := DEdt_ValidoHasta.Date;
  Parameters.ParamByName('HORA').Value  := cbbHoraValido.Text;
  Parameters.ParamByName('USUARIO').Value  := DM.Usuario;
  Open;
  end;
end;

function TfrmBoleteria.NumeracionTicket: Integer;
begin
with DM.adoMultiUso do begin
  Close;
  SQL.Clear;
  SQL.Add('SELECT COUNT(*) CANT FROM BOLETOS WHERE EMP_CODIGO ='+qBoletoemp_codigo.Text);
  SQL.Add('AND SUC_COD_ORIGEN ='+qBoletosuc_cod_origen.Text);
  Open;

  IF NOT IsEmpty THEN
  Result := FieldByName('CANT').Value else
  Result := 1;
end;
end;

end.
