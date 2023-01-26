unit PVENTA245;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ECRti_Framework_TLB, DB, ADODB, uJSON, vmaxFiscal,
  iFiscal, OCXFISLib_TLB, ExtCtrls ;

type
  TfrmCierreDiaCardnet = class(TForm)
    BitBtn2: TBitBtn;
    btClose: TBitBtn;
    StaticText1: TStaticText;
    Edit1: TEdit;
    pnMsgImpresion: TPanel;
    lblWait: TLabel;
    qImpCardNet: TADOQuery;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ImpCCierreCardNet;
    Procedure ImpTicketFiscalCardNet(aCopia:byte = 0);
  private
    { Private declarations }
    core : TCore;
      result : string;
      response: String;
      codigoabre : String;

      ipLocal: string;
      ipRemote: String;

      timeout : Integer;
      portLocal: Integer;
      portRemote: Integer;
      ID        : Integer;
  public
    { Public declarations }
  end;

var
  frmCierreDiaCardnet: TfrmCierreDiaCardnet;

implementation

uses SIGMA01, DateUtils;

{$R *.dfm}

procedure TfrmCierreDiaCardnet.BitBtn2Click(Sender: TObject);
  var
    b : myJSONItem;
  begin
   if MessageDlg('DESEA EJECUTAR EL CIERRE',mtConfirmation,[mbyes, mbno],0) = mryes then
    begin


  codigoabre := Trim(DM.QParametrosPAR_CODIGO_ABRE_CAJA.Value);

        response := core.Initialice;
        pnMsgImpresion.visible :=true;
        lblWait.Caption:='Generando Cierre Cardnet...';
        Application.ProcessMessages();
        response := core.ProcessClose();
        //response := Edit1.Text;
        b := myJSONItem.Create;
        b.Code :=  response;


        if Length(response)>=80 then begin
        With dm.adoMultiUso do begin
        Close;
        SQL.Clear;
        SQL.Add('INSERT INTO [dbo].[CierreCardNet]');
        SQL.Add('([IDVerif],[FechaCierre],[Lote],[responde],[usu_codigo])');
        SQL.Add('SELECT :ID, :FechaCierre, :Lote, :responde, :usu');
        Parameters.ParamByName('ID').DataType          :=  ftInteger;
        Parameters.ParamByName('FechaCierre').DataType :=  ftDateTime;
        Parameters.ParamByName('Lote').DataType        :=  ftString;
        Parameters.ParamByName('responde').DataType    :=  ftString;
        Parameters.ParamByName('Usu').DataType         :=  ftString;

        Parameters.ParamByName('ID').Value             :=  ID;
        Parameters.ParamByName('FechaCierre').Value    :=  FormatDateTime('dd/mm/yyyy hh:mm:ss',DM.getFechaBDA);
        Parameters.ParamByName('Lote').Value           :=  'NO APLICA';
        Parameters.ParamByName('responde').Value       :=  response;
        Parameters.ParamByName('Usu').Value            :=  DM.vp_usuario;
        ExecSQL;
        end;
        end;
        lblWait.Caption:='Imprimiento Cierre Cardnet...';
        Application.ProcessMessages();
         CASE Impresora.IDPrinter OF
                        0 : {NO FISCAL}            ImpCCierreCardNet;
                        1 : {EPSON (TMU-220)}      ImpTicketFiscalCardNet(impresora.copia);
								        //2 : {CITIZEN ( CT-S310 )}  ImpTicketVmaxFiscalCardNet(impresora.puerto,impresora.velocidad,impresora.copia,impresora.Tipo,impresora.Precioconitbis);
								        //3 : {CITIZEN (GSX-190)}    ImpTicketVmaxFiscalCardNet(impresora.puerto,impresora.velocidad,impresora.copia,impresora.Tipo,impresora.Precioconitbis);
                        //4 : {STAR (TSP650FP)}      ImpTicketVmaxFiscalCardNet(impresora.puerto,impresora.velocidad,impresora.copia,impresora.Tipo,impresora.Precioconitbis);
                        //5 : {Bixolon SRP-350iiHG}  ImpTicketFiscalBixolon(Impresora);
         end;
        pnMsgImpresion.visible :=False;
        MessageDlg('PROCESO DE CIERRE EJECUTADO',mtInformation,[mbok],0);

end;
end;

procedure TfrmCierreDiaCardnet.FormCreate(Sender: TObject);
begin
WITH DM.Query1 do begin
  Close;
  SQL.Clear;
  SQL.Add('SELECT ID, IP, PORTCAJA, PORTPOS, TIMEOUT, CAJA FROM VerifoneEnCaja WHERE CAJA ='+QuotedStr(DM.GetIPAddress));
  Open;
  IF not IsEmpty THEN
  BEGIN
  core := TCore.Create(Self);

  ipLocal     := DM.Query1.FieldByName('CAJA').Text;
  portLocal   := DM.Query1.FieldByName('PORTCAJA').Value;
  ipRemote    := DM.Query1.FieldByName('IP').Text;
  portRemote  := DM.Query1.FieldByName('PORTPOS').Value;
  timeout     := DM.Query1.FieldByName('TIMEOUT').Value;
  ID          := DM.Query1.FieldByName('ID').Value;

  result := core.SetTimeOut(timeOut);
  result := core.SetLocalEndPoint(ipLocal, portLocal);
  result := core.SetRemoteEndPoint(ipRemote, portRemote);
  DM.getParametrosPrinterFiscal;
end;
end;
end;

procedure TfrmCierreDiaCardnet.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCierreDiaCardnet.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmCierreDiaCardnet.ImpCCierreCardNet;
var
  arch, puertopeq : textfile;
  s, s1, s2, s3, s4, s5,s6 : array [0..20] of char;
  Tfac, Saldo : double;
  puerto, lbitbis, impcodigo,
  param1, param2, param3, param4, param5, param6, param7, param8, param9, param10,
  param11, param12, param13, param14, param15, param16, param17, param18, param19,
  Unidad, codigoabre : string;
  a,x, vCant : integer;
  b, c : myJSONItem;
  vTotal, vTax : Currency;

begin
if Length(response) > 80 then begin
  codigoabre := Trim(DM.QParametrosPAR_CODIGO_ABRE_CAJA.Value);

  if FileExists('.\puerto.txt') then
  begin
    assignfile(puertopeq, '.\puerto.txt');
    reset(puertopeq);
    readln(puertopeq, puerto);
  end
  else
    puerto := 'PRN';

  closefile(puertopeq);

  AssignFile(arch, '.\impcverifone.bat');
  rewrite(arch);
  writeln(arch, 'type .\cverifone.txt > '+puerto);
  closefile(arch);


  AssignFile(arch, '.\cverifone.txt');
  rewrite(arch);
  param1 := DM.QEmpresasEMP_NOMBRE.Text;
  writeln(arch,dm.centro(param1));
  param1 := DM.QEmpresasEMP_RNC.Text;
  writeln(arch,dm.centro(param1));
  param1 := DM.QEmpresasEMP_LOCALIDAD.Text;
  writeln(arch,dm.centro(param1));
  param1 := DM.QEmpresasEMP_DIRECCION.Text;
  writeln(arch,dm.centro(param1));
  writeln(arch,'');
  writeln(arch,'');

  b := myJSONItem.Create;
  b.Code :=  response;

    with qImpCardNet do begin
    Close;
    Parameters.ParamByName('emp').Value :=  dm.vp_cia;
    Parameters.ParamByName('usu').Value :=  DM.Usuario;
    Open;
    end;
    if qImpCardNet.RecordCount > 0 then begin
    c := myJSONItem.Create;
    c.Code :=  qImpCardNet.fieldByName('JSON').Value;
    end;



  param1 := 'HOST: '+ b['Closures']['0']['Host'].getStr;
  param2 := 'LOTE: '+ b['Closures']['0']['Batch'].getStr;
  param3 := DM.FillSpaces(param2,40-Length(param1));
  writeln(arch,param1+PARAM3);
  param4 := 'FECHA: '+trim(copy(b['Closures']['0']['DataTime'].getStr,1,9));
  param5 := 'HORA: '+trim(copy(b['Closures']['0']['DataTime'].getStr,10,15));
  param6 := DM.FillSpaces(param5,40-Length(param4));
  writeln(arch,param4+PARAM6);
  writeln(arch,'');
  writeln(arch,'');

  
  writeln(arch,dm.centro('T O T A L  D E  V E N T A S'));
  writeln(arch,dm.centro('======================================='));
  writeln(arch,dm.centro(''));

  //Ventas
  param7 := 'Ventas: ';
  param8 := b['Closures']['0']['Purchase']['Quantity'].getStr+'  RD$';
  param9 := DM.FillSpaces(param8,20-Length(param7));
  vTotal := 0;
  vTax   := 0;
  param10:= FormatCurr('#,0.00',StrToCurr(b['Closures']['0']['Purchase']['Amount'].getStr));
  param11:= DM.FillSpaces(param10,20);
  writeln(arch,param7+PARAM9+param11);

  param12 := 'ITBIS: ';
  param13 := 'RD$';
  param14 := DM.FillSpaces(param13,20-Length(param12));
  param15:= FormatCurr('#,0.00',StrToCurr(b['Closures']['0']['Purchase']['Tax'].getStr));
  param16:= DM.FillSpaces(param15,20);
  writeln(arch,param12+PARAM14+param16);

  vCant  := StrToInt(b['Closures']['0']['Purchase']['Quantity'].getStr);
  vTotal := StrToCurr(b['Closures']['0']['Purchase']['Amount'].getStr);
  vTax   := StrToCurr(b['Closures']['0']['Purchase']['Tax'].getStr);

  //Devolucion
  param7 := 'Devolucion: ';
  param8 := b['Closures']['0']['Return']['Quantity'].getStr+'  RD$';
  param9 := DM.FillSpaces(param8,20-Length(param7));
  param10:= FormatCurr('#,0.00',StrToCurr(b['Closures']['0']['Return']['Amount'].getStr));
  param11:= DM.FillSpaces(param10,20);
  writeln(arch,param7+PARAM9+param11);

  param12 := 'ITBIS: ';
  param13 := 'RD$';
  param14 := DM.FillSpaces(param13,20-Length(param12));
  param15:= FormatCurr('#,0.00',StrToCurr(b['Closures']['0']['Return']['Tax'].getStr));
  param16:= DM.FillSpaces(param15,20);
  writeln(arch,param12+PARAM14+param16);

  vCant  := vCant - StrToInt(b['Closures']['0']['Return']['Quantity'].getStr);
  vTotal := vTotal - StrToCurr(b['Closures']['0']['Return']['Amount'].getStr);
  vTax   := vTax - StrToCurr(b['Closures']['0']['Return']['Tax'].getStr);


  //Totales
  param7 := 'Total: ';
  param8 := IntToStr(vCant)+'  RD$';
  param9 := DM.FillSpaces(param8,20-Length(param7));
  param10:= FormatCurr('#,0.00',vTotal);
  param11:= DM.FillSpaces(param10,20);
  writeln(arch,param7+PARAM9+param11);

  param12 := 'TOTAL ITBIS: ';
  param13 := 'RD$';
  param14 := DM.FillSpaces(param13,20-Length(param12));
  param15:= FormatCurr('#,0.00',vTax);
  param16:= DM.FillSpaces(param15,20);
  writeln(arch,param12+PARAM14+param16);

  writeln(arch,dm.centro('======================================='));
  writeln(arch,dm.centro('LOTE TRANSMITIDO'));

  end;

  FOR X:= 0  TO 15 DO BEGIN
  writeln(arch,'');
  end;


  if codigoabre = 'Termica' then
  writeln(arch,chr(27)+chr(109));

  CloseFile(arch);

 winexec('.\impcverifone.bat',0);


end;


procedure TfrmCierreDiaCardnet.ImpTicketFiscalCardNet(aCopia: byte);
var
  arch, ptocaja : textfile;
  s, s1, s2, s3, s4, s5, s6, s7, s8 : array[0..100] of char;
  TFac, MontoItbis, Venta, tCambio : double;
  PuntosPrinc, FactorPrin, TotalPuntos, CalcDesc, NumItbis, TotalDescuento : Double;
  Puntos, a, ln, pg, cantpg : integer;
  Msg1, Msg2, Msg3, Msg4, Forma, ImpItbis, lbItbis : String;
  err, x, vCant: integer;
  puerto, parametro : string;
  DriverFiscal1 : TDriverFiscal;
  b : myJSONItem;
  Saldo, vTotal, vTax : double;
  impcodigo,
  param1, param2, param3, param4, param5, param6, param7, param8, param9, param10,
  param11, param12, param13, param14, param15, param16, param17, param18, param19,
  Unidad, codigoabre : string;

begin


  if FileExists('.\puerto.ini') then
  begin
    assignfile(ptocaja, '.\puerto.ini');
    reset(ptocaja);
    readln(ptocaja, puerto);
  end
  else
    puerto := 'COM1';


  codigoabre := Trim(DM.QParametrosPAR_CODIGO_ABRE_CAJA.Value);

  DriverFiscal1 := TDriverFiscal.Create(Self);
  DriverFiscal1.SerialNumber := '27-0163848-435';
  try
  //Original Comercio
  err := DriverFiscal1.IF_OPEN(puerto, 9600);
  err := DriverFiscal1.IF_WRITE('@OpenNonFiscalReceipt');

  param1 := DM.QEmpresasEMP_NOMBRE.Text;
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+dm.centro(param1));
  param1 := DM.QEmpresasEMP_RNC.Text;
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+dm.centro(param1));
  param1 := DM.QEmpresasEMP_LOCALIDAD.Text;
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+dm.centro(param1));
  param1 := DM.QEmpresasEMP_DIRECCION.Text;
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+dm.centro(param1));
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'');
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'');

  b := myJSONItem.Create;
  b.Code :=  response;

  param1 := 'HOST: '+ b['Closures']['0']['Host'].getStr;
  param2 := 'LOTE: '+ b['Closures']['0']['Batch'].getStr;
  param3 := DM.FillSpaces(param2,40-Length(param1));
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+param1+PARAM3);
  param4 := 'FECHA: '+trim(copy(b['Closures']['0']['DataTime'].getStr,1,9));
  param5 := 'HORA: '+trim(copy(b['Closures']['0']['DataTime'].getStr,10,15));
  param6 := DM.FillSpaces(param5,40-Length(param4));
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+param4+PARAM6);
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'');
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'');
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+dm.centro('T O T A L  D E  V E N T A S'));
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+dm.centro('======================================='));
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+dm.centro(''));

  //Ventas
  param7 := 'Ventas: ';
  param8 := b['Closures']['0']['Purchase']['Quantity'].getStr+'  RD$';
  param9 := DM.FillSpaces(param8,20-Length(param7));
  vTotal := 0;
  vTax   := 0;
  param10:= FormatCurr('#,0.00',StrToCurr(b['Closures']['0']['Purchase']['Amount'].getStr));
  param11:= DM.FillSpaces(param10,20);
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+param7+PARAM9+param11);

  param12 := 'ITBIS: ';
  param13 := 'RD$';
  param14 := DM.FillSpaces(param13,20-Length(param12));
  param15:= FormatCurr('#,0.00',StrToCurr(b['Closures']['0']['Purchase']['Tax'].getStr));
  param16:= DM.FillSpaces(param15,20);
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+param12+PARAM14+param16);

  vCant  := StrToInt(b['Closures']['0']['Purchase']['Quantity'].getStr);
  vTotal := StrToCurr(b['Closures']['0']['Purchase']['Amount'].getStr);
  vTax   := StrToCurr(b['Closures']['0']['Purchase']['Tax'].getStr);

  //Devolucion
  param7 := 'Devolucion: ';
  param8 := b['Closures']['0']['Return']['Quantity'].getStr+'  RD$';
  param9 := DM.FillSpaces(param8,20-Length(param7));
  param10:= FormatCurr('#,0.00',StrToCurr(b['Closures']['0']['Return']['Amount'].getStr));
  param11:= DM.FillSpaces(param10,20);
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+param7+PARAM9+param11);

  param12 := 'ITBIS: ';
  param13 := 'RD$';
  param14 := DM.FillSpaces(param13,20-Length(param12));
  param15:= FormatCurr('#,0.00',StrToCurr(b['Closures']['0']['Return']['Tax'].getStr));
  param16:= DM.FillSpaces(param15,20);
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+param12+PARAM14+param16);

  vCant  := vCant - StrToInt(b['Closures']['0']['Return']['Quantity'].getStr);
  vTotal := vTotal - StrToCurr(b['Closures']['0']['Return']['Amount'].getStr);
  vTax   := vTax - StrToCurr(b['Closures']['0']['Return']['Tax'].getStr);


  //Totales
  param7 := 'Total: ';
  param8 := IntToStr(vCant)+'  RD$';
  param9 := DM.FillSpaces(param8,20-Length(param7));
  param10:= FormatCurr('#,0.00',vTotal);
  param11:= DM.FillSpaces(param10,20);
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+param7+PARAM9+param11);

  param12 := 'TOTAL ITBIS: ';
  param13 := 'RD$';
  param14 := DM.FillSpaces(param13,20-Length(param12));
  param15:= FormatCurr('#,0.00',vTax);
  param16:= DM.FillSpaces(param15,20);
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+param12+PARAM14+param16);

  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+dm.centro('======================================='));
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+dm.centro('LOTE TRANSMITIDO'));



  if codigoabre = 'Termica' then
  err := DriverFiscal1.IF_WRITE('@PaperCut|P');

  err := DriverFiscal1.IF_WRITE('@CloseNonFiscalReceipt|C');
  err := DriverFiscal1.IF_CLOSE;
  pnMsgImpresion.visible :=false;


  finally
    DriverFiscal1.Destroy;
  end;

end;

end.
