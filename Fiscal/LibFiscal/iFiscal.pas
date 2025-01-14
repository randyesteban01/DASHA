unit iFiscal;

interface

  uses Classes;

type

  TImpresora = class(TObject)

    private
    FesFiscal: boolean;
    FCopia: byte;
    FVelocidad: Integer;
    FPuerto: integer;
    FNombre: String;
    FTipo: string;
    FNombrepc: string;
    FID: Integer;
    FPrecioconitbis: string;
    FisConected: boolean;
    FSustituir: boolean;
    FPrinterError: boolean;
    FMecanismoFiscal: String;
    FControladorFiscal: String;
    FError: Integer;
    FStatus: Integer;
    FisPrinted: boolean;
    FisPortConnected: boolean;
    FCantidadIntento: Integer;
    procedure SetesFiscal(const Value: boolean);
    procedure SetNombre(const Value: String);
    procedure SetPuerto(const Value: integer);
    procedure SetVelocidad(const Value: Integer);
    procedure SetCopia(const Value: byte);
    procedure setID(const Value: Integer);
    procedure setNombrepc(const Value: string);
    procedure setTipo(const Value: string);
    procedure setPrecioconitbis(const Value: string);
    procedure setisConected(const Value: boolean);
    procedure setPortConnected(const Value: boolean);
    public
      property NombrePC :string read FNombrepc write setNombrepc;
      property IDPrinter :Integer read FID write setID;
      property Nombre :String read FNombre write SetNombre;
      property Puerto : integer read FPuerto write SetPuerto;
      property Velocidad :Integer read FVelocidad write SetVelocidad;
      property Tipo :string read FTipo write setTipo;
      property Copia : byte  read FCopia write SetCopia;
      property Precioconitbis:string read FPrecioconitbis write setPrecioconitbis;
      property esFiscal :boolean read FesFiscal write SetesFiscal;
      property isConected :boolean read FisConected write setisConected;
      property isPortConnected :boolean read FisPortConnected write setPortConnected;
      property SustituirCopia:boolean read FSustituir write FSustituir;
      property isPrinterError:boolean read FPrinterError write FPrinterError;
      property Error : Integer read FError write FError;
      property Status : Integer read FStatus write FStatus;
      property StatusControladorFiscal:String read FControladorFiscal write FControladorFiscal;
      property StatusMecanismoFiscal :String read FMecanismoFiscal write FMecanismoFiscal;
      property isPrinted :boolean read FisPrinted write FisPrinted;
      function getError(value:byte):String;
      property CantidadIntento :Integer read FCantidadIntento write FCantidadIntento;
      constructor Create(AOwner: TComponent);virtual;
     // constructor Create(Nombre :String;Puerto : integer;Velocidad :Integer; Copia : byte ; esFiscal :boolean);
      destructor Destroy; override;
  end;

  Const
    PuertoSerial : array[0..14] of String     =('COM1', 'COM2', 'COM3','COM4',
                                                'COM5','COM6','COM7','COM8',
                                                'COM9','COM10','COM11','COM12',
                                                'COM13','COM14','COM15');
   var
   ArrayMultiUso : array of string;

implementation

{ TImpresora }

(*constructor TImpresora.Create(Nombre: String; Puerto, Velocidad: Integer;
  Copia: byte; esFiscal: boolean);
begin
 // inherited;
  FNombre := nombre;
  FPuerto := puerto;
  FVelocidad := Velocidad;
  Fcopia := FCopia;
  FesFiscal := esFiscal;
end; *)

constructor TImpresora.Create(AOwner: TComponent);
begin
 //inherited;
  FNombrepc  := '';
  FID        := 0;
  FNombre    := '';
  FPuerto    := 1;
  FVelocidad := 9600;
  FTipo      := 'P';
  FCopia     := 0;
  FesFiscal  := True;
  FCantidadIntento:=0
end;

(*constructor TImpresora.Create(Nombre: String; Puerto, Velocidad: Integer;
  Copia: byte; esFiscal: boolean);
begin
 // inherited;
  FNombre := nombre;
  FPuerto := puerto;
  FVelocidad := Velocidad;
  Fcopia := FCopia;
  FesFiscal := esFiscal;
end;   *)

destructor TImpresora.Destroy;
begin
  inherited Destroy;
end;

function TImpresora.getError(value: byte): String;
begin
case value of
    0 : result :='No hay error.';
    1 : result :='Fin en la entrega de papel.';
    2 : result :='Error de �ndole mec�nico en la entrega de papel.';
    3 : result :='Fin en la entrega de papel y error mec�nico. ';
    80 : result :='Comando invalido o valor invalido.';
    84 : result :=' Tasa invalida.';
    88 : result :=' No hay asignadas directivas.';
    92 : result :=' Comando invalido.';
    96 : result :=' Error fiscal.';
    100 : result :=' Error de la memoria fiscal.';
    108 : result :=' Memoria fiscal llena.';
    112 : result :=' Buffer completo. (debe enviar el comando de reinicio)';
    128 : result :=' Error en la comunicaci�n.';
    137 : result :=' No hay respuesta.';
    144 : result :=' Error LRC.';
    145 : result :=' Error interno api.';
    153 : result :=' Error en la apertura del archivo.';
    else result :='Error desconocido';
  end;
end;

procedure TImpresora.SetCopia(const Value: byte);
begin
  FCopia := Value;
end;

procedure TImpresora.SetesFiscal(const Value: boolean);
begin
  FesFiscal := Value;
end;

procedure TImpresora.setID(const Value: Integer);
begin
  FID := Value;
end;

procedure TImpresora.setisConected(const Value: boolean);
begin
  FisConected := Value;
end;

procedure TImpresora.SetNombre(const Value: String);
begin
  FNombre := Value;
end;

procedure TImpresora.setNombrepc(const Value: string);
begin
  FNombrepc := Value;
end;

procedure TImpresora.setPortConnected(const Value: boolean);
begin
  FisPortConnected := Value;
end;

procedure TImpresora.setPrecioconitbis(const Value: string);
begin
  FPrecioconitbis := Value;
end;

procedure TImpresora.SetPuerto(const Value: integer);
begin
  FPuerto := Value;
end;

procedure TImpresora.setTipo(const Value: string);
begin
  FTipo := Value;
end;

procedure TImpresora.SetVelocidad(const Value: Integer);
begin
  FVelocidad := Value;
end;

end.
