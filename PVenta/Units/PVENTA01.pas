unit PVENTA01;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, ADODB, IBDatabase, IBCustomDataSet, IBQuery, DBXpress,
  SqlExpr, Provider, DBClient, DBLocal, DBLocalS, FMTBcd, IBUpdateSQL;

type
  TDM = class(TDataModule)
    dsEmpresas: TDataSource;
    IBDatabase: TIBDatabase;
    IBTransaction1: TIBTransaction;
    Query1: TIBQuery;
    QEmpresas: TIBQuery;
    QEmpresasEMP_CODIGO: TIntegerField;
    QEmpresasEMP_DIRECCION: TIBStringField;
    QEmpresasEMP_EMAIL: TIBStringField;
    QEmpresasEMP_FAX: TIBStringField;
    QEmpresasEMP_LOCALIDAD: TIBStringField;
    QEmpresasEMP_LOGO: TIBStringField;
    QEmpresasEMP_NOMBRE: TIBStringField;
    QEmpresasEMP_RNC: TIBStringField;
    QEmpresasEMP_STATUS: TIBStringField;
    QEmpresasEMP_TELEFONO: TIBStringField;
    QEmpresasEMP_WEB: TIBStringField;
    QParametros: TIBQuery;
    UPDParametros: TIBUpdateSQL;
    dsParametros: TDataSource;
    Archivo: TOpenDialog;
    QParametrosEMP_CODIGO: TIntegerField;
    QParametrosPAR_ALMACENVENTA: TIntegerField;
    QParametrosPAR_CODIGOCLIENTE: TIBStringField;
    QParametrosPAR_CODIGOPRODUCTO: TIBStringField;
    QParametrosPAR_FACFORMA: TIBStringField;
    QParametrosPAR_FORMATODES: TIntegerField;
    QParametrosPAR_FORMATODEV: TIntegerField;
    QParametrosPAR_FORMATONC: TIntegerField;
    QParametrosPAR_FORMATOND: TIntegerField;
    QParametrosPAR_FORMATORC: TIntegerField;
    QParametrosPAR_FORMATORI: TIntegerField;
    QParametrosPAR_ITBIS: TFloatField;
    QParametrosPAR_MOVNDE: TIntegerField;
    QParametrosPAR_PUERTODES: TIBStringField;
    QParametrosPAR_PUERTODEV: TIBStringField;
    QParametrosPAR_PUERTONC: TIBStringField;
    QParametrosPAR_PUERTOND: TIBStringField;
    QParametrosPAR_PUERTORC: TIBStringField;
    QParametrosPAR_PUERTORI: TIBStringField;
    QParametrosPAR_TFACODIGO: TIntegerField;
    QParametrosPAR_TIPOPRECIO: TIBStringField;
    QParametrosPAR_CONTROLAMAXIMO: TIBStringField;
    QParametrosPAR_CONTROLAMINIMO: TIBStringField;
    QParametrosPAR_DEBAJOCOSTO: TIBStringField;
    QParametrosPAR_COMBOCOTIZACION: TIBStringField;
    QParametrosPAR_COMBOIMPDETALLE: TIBStringField;
    QParametrosPAR_COMBOREBAJA: TIBStringField;
    QParametrosPAR_VENDIGITOSLOTE: TIntegerField;
    QParametrosPAR_VENPERMITIR: TIBStringField;
    QParametrosPAR_VENVERIFICA: TIBStringField;
    QParametrosPAR_CONTEOLIMPIA: TIBStringField;
    QParametrosPAR_PREDESCGLOBAL: TIBStringField;
    QParametrosPAR_PREDESCRIP1: TIBStringField;
    QParametrosPAR_PREDESCRIP2: TIBStringField;
    QParametrosPAR_PREDESCRIP3: TIBStringField;
    QParametrosPAR_PREDESCRIP4: TIBStringField;
    QParametrosPAR_FACANULA: TIBStringField;
    QParametrosPAR_FACDIASANULA: TIntegerField;
    QParametrosPAR_FACDIASMODIFICA: TIntegerField;
    QParametrosPAR_FACDISPONIBLE: TIBStringField;
    QParametrosPAR_FACMODIFICA: TIBStringField;
    QParametrosPAR_FACSELPRECIO: TIBStringField;
    QParametrosPAR_FACTEMPORAL: TIBStringField;
    QParametrosPAR_DEVDIAS: TIntegerField;
    QParametrosPAR_DEVEFECTIVO: TIBStringField;
    QParametrosPAR_FORMATOCUADRE: TIntegerField;
    QParametrosPAR_AHORA1: TDateTimeField;
    QParametrosPAR_AHORA2: TDateTimeField;
    QParametrosPAR_BHORA1: TDateTimeField;
    QParametrosPAR_BHORA2: TDateTimeField;
    QParametrosPAR_FACMODPRECIO: TIBStringField;
    QParametrosPAR_FORMATOCON: TIntegerField;
    QParametrosPAR_CAJA: TIBStringField;
    QParametrosPAR_IMPCODIGOBARRA: TIBStringField;
    QParametrosCPA_CODIGOCLIENTE: TIntegerField;
    QParametrosPAR_LIMITEINICIAL: TFloatField;
    QParametrosPAR_MOVCK: TIntegerField;
    QParametrosPAR_MOVCARGO: TIntegerField;
    procedure QParametrosAfterPost(DataSet: TDataSet);
    procedure IBDatabaseBeforeConnect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Usuario : integer;
    function  numero2Letras(paNumero: DOUBLE): string;
  end;

var
  DM: TDM;

implementation

{$R *.DFM}

procedure TDM.QParametrosAfterPost(DataSet: TDataSet);
begin
  QParametros.ApplyUpdates;
  IBTransaction1.CommitRetaining;
end;

procedure TDM.IBDatabaseBeforeConnect(Sender: TObject);
var
  ar : textfile;
  db : string;
begin
  if not FileExists('ctmpv.ini') then
  begin
    Archivo.Title := 'Buscar archivo de base de datos';
    Archivo.FileName := 'CTMPV.GDB';
    assignfile(ar, 'ctmpv.ini');
    rewrite(ar);
    if Archivo.Execute then
    begin
      writeln(ar, Archivo.FileName);
      db := Archivo.FileName;
      IBDatabase.DatabaseName := db;
      closefile(ar);
    end
    else
      Application.Terminate;
  end
  else
  begin
    assignfile(ar, 'ctmpv.ini');
    reset(ar);
    read(ar, db);
    IBDatabase.DatabaseName := db;
    closefile(ar);
  end;
end;

function tdm.numero2Letras(paNumero: DOUBLE): string;
var
decimales   : double;
divisor1    : double;
divisor2    : double;

resultado2  : string[8];
j           : integer;
i           : integer;
k           : integer;
salida      : integer;
resto       : integer;
resto2      : integer;
cientos     : integer;
centenas    : integer;
resultado   : string[200];
leido       : string[100];
posicion    : integer;
decim       : double;
numero      : double;

const Apellido   : string[27]  = 'Millones Mil      con      ';
const Exceps     : string[121] = 'Diez       Once       Doce      '+
                                  ' Trece      Catorce    Quince    '+
                                  ' Dieciseis  Diecisiete Dieciocho '+
                                  ' Diecinueve    Veinte     ';

const Letras1    : string[126] = 'Ciento        Doscientos    '+
                                  'Trescientos   Cuatrocientos '+
                                  'Quinientos    Seiscientos   '+
                                  'Setecientos   Ochocientos   '+
                                  'Novecientos   ';

const Letras2    : string[90]  = 'Diez      Veinti    Treinta   '+
                                  'Cuarenta  Cincuenta Sesenta   '+
                                  'Setenta   Ochenta   Noveinta  ';

const Letras3    : string[63]  = 'Un     Dos    Tres   Cuatro '+
                                  'Cinco  Seis   Siete  Ocho   '+
                                  'Nueve  ';

begin
divisor1 := 1000000;


LEIDO :=  FLOATTOSTR(paNUMERO);
RESULTADO := '';
RESULTADO2 := '';
NUMERO := STRTOFLOAT(LEIDO);
DECIM := 0;
K := POS('.',LEIDO);
if k = 0 then
  k := length(leido);
POSICION := K;
WHILE ((K < Length(LEIDO) ) AND (DECIM < 2 ) ) DO
BEGIN
    K := K + 1;
    RESULTADO2 := RESULTADO2 + COPY(LEIDO, K, 1);
    DECIM := DECIM + 1;
END;

IF (POSICION = Length(LEIDO)) THEN
   RESULTADO2 := RESULTADO2 + '00/100'
ELSE IF ( DECIM = 2 ) THEN
    RESULTADO2 := RESULTADO2 + '/100'
ELSE
   RESULTADO2 := RESULTADO2 + '0/100';

IF (numero >= 1) AND (numero <  1000000000 ) THEN
begin
   FOR I := 1 TO 3 DO
      BEGIN
        cientos    := trunc(numero/divisor1);
        centenas   := cientos;
        numero     := numero-(cientos*divisor1);
        divisor1   := divisor1/1000;
        divisor2   := 100;
        if cientos = 0 then  salida := 1 else salida := 0;

        j := 1;
        while (j <= 3) and (salida = 0) do
          BEGIN
            resto := trunc(cientos/divisor2);
            if (i = 3) and (resto = 1) and (j = 3) then
            begin
                 salida := 1;
                 if ( centenas mod 100 ) > 30 then
                 begin
                    resultado := resultado + 'y';
                 end;

                 resultado := resultado + 'Uno ';
           end;

           if (cientos = 100) then
           begin
              resultado := resultado + 'Cien ';
              salida := 1;
           end ;


           if (cientos >= 10) and (cientos <= 20) then
              begin
                 salida := 1;
                 resultado := resultado +
                             TrimRight(copy(exceps,((cientos-10)*11+1),10))+ ' '
              end
            else
              begin
               if (not (resto = 0)) and (salida = 0) then
               begin
                  if (j = 3) and ((centenas mod 100) > 30) then
                      resultado := resultado + 'y ';

                  if (j = 1) then
                     resultado := resultado  +
                                  trimright(copy(letras1,((resto-1)*14+1),13))+ ' ';

                  if (j = 2) then
                     resultado := resultado +
                                  trimright(copy(letras2,
                                            ((resto-1)*10+1),9))+ ' ';

                  if (j = 3) then
                     resultado := resultado +
                                  trimright(copy(letras3,
                                            ((resto-1)*7+1),6))+ ' ';
               end
              end;
          cientos := trunc(cientos - (resto*divisor2));
          divisor2 := divisor2 / 10;
          j := j + 1;

          END;

        if (centenas = 1) and (i = 1 ) then
       resultado :=  resultado + 'Millon '
   else if (not (centenas = 0)) or (i = 3) then
      begin
             resultado := resultado + trimright(copy (apellido, (i-1)*9+1,8))+ ' '
    end ;
      end;

end

ELSE IF (numero < 1) then
   resultado := 'Cero con ';


resultado := resultado + resultado2;
result := '*** '+trim(resultado)+' ***';
end;

end.
