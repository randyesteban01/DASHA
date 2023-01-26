unit CONT77;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ToolWin, ComCtrls, DB, ADODB;

type
  TfrmInformacionNCF = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    lbrnc: TLabel;
    lbrazon: TLabel;
    lbnombre: TLabel;
    lbactividad: TLabel;
    lbdireccion: TLabel;
    lbnumero: TLabel;
    lburbanizacion: TLabel;
    lbtelefono: TLabel;
    lbestatus: TLabel;
    ToolBar1: TToolBar;
    btsalir: TSpeedButton;
    Query1: TADOQuery;
    procedure btsalirClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    rnc : string;
  end;

var
  frmInformacionNCF: TfrmInformacionNCF;

implementation

uses SIGMA01, SIGMA00;


{$R *.dfm}

procedure TfrmInformacionNCF.btsalirClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmInformacionNCF.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_escape then btsalirClick(Self);
end;

procedure TfrmInformacionNCF.FormActivate(Sender: TObject);
begin
  Query1.Close;
  Query1.SQL.Clear;
  Query1.SQL.Add('select rnc_cedula, razon_social, nombre_comercial,');
  Query1.SQL.Add('actividad_economica, direccion, numero, urbanizacion,');
  Query1.SQL.Add('telefono, estatus from rnc');
  Query1.SQL.Add('where rnc_cedula = :rnc');
  Query1.Parameters.ParamByName('rnc').Value := rnc;
  Query1.Open;
  lbrnc.Caption          := rnc;
  lbrazon.Caption        := Query1.FieldByName('razon_social').AsString;
  lbnombre.Caption       := Query1.FieldByName('nombre_comercial').AsString;
  lbactividad.Caption    := Query1.FieldByName('actividad_economica').AsString;
  lbdireccion.Caption    := Query1.FieldByName('direccion').AsString;
  lbnumero.Caption       := Query1.FieldByName('numero').AsString;
  lburbanizacion.Caption := Query1.FieldByName('urbanizacion').AsString;
  lbtelefono.Caption     := Query1.FieldByName('telefono').AsString;
  lbestatus.Caption      := Query1.FieldByName('estatus').AsString;
end;

end.
