unit Tfhkaif;

interface

  (*Abre el puerto de comunicaciones indicado por sPort, puede ser: COM1, COM2, etc*)
  function OpenFpctrl(sPort:PChar): Boolean;stdcall;
  (*Cierra el puerto de comunicaciones*)
  function CloseFpctrl(): Boolean;stdcall;
  (*Verifica que la impresora esta conectada*)
  function CheckFprinter(): Boolean;stdcall;
  (*Verifica que la gaveta este conectada a la impresora*)
  function CheckDrawer(): Boolean;stdcall;
  (*Lee el Status y Error de la impresora a las variables por referencia pasadas en Status y Error*)
  function ReadFpStatus(var status, error : Integer): Boolean;stdcall;
  (*Envia el comando contenido en cmd a la impresora VEASE MANUAL DE PROTOCOLOS Y COMANDOS*)
  function SendCmd(var status, error : Integer; cmd : PChar): Integer;stdcall;
  (*Envia un archivo de texto con un comando en cada linea a la impresora, devuelve el numero de lineas enviadas, LAS LINEAS EN BLANCO DAN ERROR*)
  function SendFileCmd(var status, error : Integer; sfile : PChar): Integer;stdcall;
  (*Carga un reporte desde la impresora, el tipo de reporte es especificado por rTipo puede ser U0Z, U1Z, U0X, U1X, el reporte se guarda en la ruta especificada por sFile*)
  function UploadReportCmd(var status, error : Integer; rTipo, sFile : PChar): Boolean;stdcall;
  (*Carga un REPORTE DE STATUS desde la impresora, el tipo de Status es especificado por sTipo puede ser S1 a S5 y S8E y S8P, el reporte se guarda en la ruta especificada por sFile*)
  function UploadStatusCmd(var status, error : Integer; sTipo, sFile : PChar): Boolean;stdcall;
  (*Carga un reporte desde la impresora, el tipo de reporte es especificado por rTipo puede ser U0Z, U1Z, U0X, U1X, el reporte se guarda en la variable por referencia Cadena*)
  function UploadReportDin(var status, error : Integer; rTipo : PChar; Cadena : PChar): Boolean;stdcall;
  (*Carga un REPORTE DE STATUS desde la impresora, el tipo de reporte es especificado por sTipo puede ser S1 a S5 y S8E y S8P, el reporte se guarda en la variable por referencia Cadena*)
  function UploadStatusDin(var status, error : Integer; sTipo : PChar; Cadena : PChar): Boolean;stdcall;
  function
  UltimoNIF: String;
  function getTotalaPagar: double;
const
  DllName = 'TfhkaIf.dll';
  CrLf = Chr(13)+Chr(10);

{Var
  Respuesta: Boolean;
  Stat, Err: Integer;}

implementation

uses SysUtils;

  function OpenFpctrl;external DllName name 'OpenFpctrl';
  function CloseFpctrl;external DllName name 'CloseFpctrl';
  function CheckFprinter;external DllName name 'CheckFprinter';
  function CheckDrawer;external DllName name 'CheckDrawer';
  function ReadFpStatus;external DllName name 'ReadFpStatus';
  function SendCmd;external DllName name 'SendCmd';
  function SendFileCmd;external DllName name 'SendFileCmd';
  function UploadReportCmd;external DllName name 'UploadReportCmd';
  function UploadStatusCmd;external DllName name 'UploadStatusCmd';
  function UploadReportDin;external DllName name 'UploadReportDin';
  function UploadStatusDin;external DllName name 'UploadStatusDin';



function UltimoNIF: String;
Var S: String;
Leido: PChar;
Stat, Err: integer;
begin
  GetMem(Leido, 1024);
  UploadStatusDin(Stat, Err, PChar('S1'), Leido);
  S := StrPas(Leido);
  Result := Copy(s, 118, 6) + Copy(s, 71,10);
end;




function getTotalaPagar: double;
Var S: String;
Leido: PChar;
Stat, Err: integer;
y:string;
begin
  GetMem(Leido, 1024);
  UploadStatusDin(Stat, Err, PChar('S2'), Leido);
  S := StrPas(Leido);
 /// Result := Copy(s, 52, 13);

    //y := Copy(S, 52, 11)+'.'+Copy(S, 52+11,2);
    y:=copy(S,48,13);
    Result := (StrToFloat(y) /100);
  {
    (subtotal,4,13)
    (Itbis,18,6)
    (totalgral,52,13)
  }
end;

end.
