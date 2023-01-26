unit PVENTA152;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, ComCtrls, QuerySearchDlgADO, DB,
  ADODB, AppEvnts;

type
  TfrmConsVentaProvincia = class(TForm)
    Image1: TImage;
    Panel1: TPanel;
    Label6: TLabel;
    Fecha1: TDateTimePicker;
    Fecha2: TDateTimePicker;
    btRefresh: TBitBtn;
    btClose: TBitBtn;
    Label12: TLabel;
    btVendedor: TSpeedButton;
    tVendedor: TEdit;
    edVendedor: TEdit;
    Search: TQrySearchDlgADO;
    QVentas: TADOQuery;
    ApplicationEvents1: TApplicationEvents;
    QVentaspro_nombre: TStringField;
    QVentastotal: TBCDField;
    QCobros: TADOQuery;
    QCobrospro_nombre: TStringField;
    QCobrostotal: TBCDField;
    procedure btCloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btVendedorClick(Sender: TObject);
    procedure edVendedorChange(Sender: TObject);
    procedure edVendedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ApplicationEvents1ShowHint(var HintStr: String;
      var CanShow: Boolean; var HintInfo: THintInfo);
    procedure btRefreshClick(Sender: TObject);
    procedure FormPaint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function EstaEnCoordenada(x, y : integer) : string; 
  end;

var
  frmConsVentaProvincia: TfrmConsVentaProvincia;

implementation

uses SIGMA00, SIGMA01;

{$R *.dfm}

procedure TfrmConsVentaProvincia.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmConsVentaProvincia.FormCreate(Sender: TObject);
begin
  fecha1.date := date;
  fecha2.date := date;
end;

procedure TfrmConsVentaProvincia.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrmConsVentaProvincia.btVendedorClick(Sender: TObject);
begin
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('Código');
  Search.Query.clear;
  Search.Query.add('select ven_nombre, ven_codigo');
  Search.Query.add('from vendedores');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.ResultField := 'ven_Codigo';
  Search.Title := 'Listado de Vendedores';
  if Search.execute then
  begin
    edVendedor.text := Search.ValueField;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select ven_nombre from vendedores');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and ven_codigo = :ven');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('ven').Value := strtoint(trim(edVendedor.text));
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      messagedlg('VENDEDOR NO EXISTE',mterror,[mbok],0)
    else
      tVendedor.text := dm.Query1.fieldbyname('ven_nombre').asstring;
    edVendedor.setfocus;
    //btRefreshClick(self);
  end;
end;

procedure TfrmConsVentaProvincia.edVendedorChange(Sender: TObject);
begin
  if trim(edVendedor.text) = '' then tVendedor.text := '';
end;

procedure TfrmConsVentaProvincia.edVendedorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edVendedor.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select ven_nombre from vendedores');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and ven_codigo = :ven');
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      dm.Query1.Parameters.parambyname('ven').Value := strtoint(trim(edVendedor.text));
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        messagedlg('VENDEDOR NO EXISTE',mterror,[mbok],0);
        edVendedor.SetFocus;
      end
      else
        tVendedor.text := dm.Query1.fieldbyname('ven_nombre').asstring;
      //btRefreshClick(Self);
    end;
  end;
end;

procedure TfrmConsVentaProvincia.Image1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  if EstaEnCoordenada(x, y) <> '' then
  begin
    Image1.Hint := EstaEnCoordenada(x, y);
    Screen.Cursor := crHandPoint;
  end
  else
  begin
    Screen.Cursor := crDefault;
    Application.CancelHint;
  end;
end;

procedure TfrmConsVentaProvincia.ApplicationEvents1ShowHint(
  var HintStr: String; var CanShow: Boolean; var HintInfo: THintInfo);
begin
  // --property ashowhint is set to true
  // --hint must not contain a value
  if (hintinfo.HintControl is TImage) then
  begin
//    gc := Tstringgrid(hintinfo.HintControl).mousecoord(hintinfo.CursorPos.x,hintinfo.CursorPos.y);
    //different hint for each cell
{    hintstr := 'Mouse is over:'+#10+
               'Column '+inttostr(gc.x)+#10+
               'Row '+inttostr(gc.y);}
    hintinfo.ReshowTimeout := 50;  //you can play with this value
  end;
end;

function TfrmConsVentaProvincia.EstaEnCoordenada(x, y: integer): string;
var
  resultado, res : string;
begin
  if ((x >= 65) and (x <= 72)) and ((y >= 20) and (y <= 25)) then //MonteCristi
    resultado := 'MONTE CRISTI'
  else if ((x >= 59) and (x <= 66)) and ((y >= 71) and (y <= 76)) then //Dajabon
    resultado := 'DAJABON'
  else if ((x >= 61) and (x <= 68)) and ((y >= 181) and (y <= 186)) then //La Estrella
    resultado := 'LA ESTRELLA'
  else if ((x >= 35) and (x <= 45)) and ((y >= 246) and (y <= 251)) then //Independencia
    resultado := 'INDEPENDENCIA'
  else if ((x >= 52) and (x <= 59)) and ((y >= 315) and (y <= 320)) then //PEDERNALES
    resultado := 'PEDERNALES'
  else if ((x >= 111) and (x <= 118)) and ((y >= 80) and (y <= 85)) then //SANTIAGO RODRIGUEZ
    resultado := 'SANTIAGO RODRIGUEZ'
  else if ((x >= 130) and (x <= 137)) and ((y >= 192) and (y <= 197)) then //SAN JUAN
    resultado := 'SAN JUAN'
  else if ((x >= 102) and (x <= 109)) and ((y >= 246) and (y <= 251)) then //BAHORUCO
    resultado := 'BAHORUCO'
  else if ((x >= 148) and (x <= 155)) and ((y >= 288) and (y <= 293)) then //BARAHONA
    resultado := 'BARAHONA'
  else if ((x >= 153) and (x <= 160)) and ((y >= 66) and (y <= 71)) then //VALVERDE
    resultado := 'VALVERDE'
  else if ((x >= 212) and (x <= 219)) and ((y >= 32) and (y <= 37)) then //PUERTO PLATA
    resultado := 'PUERTO PLATA'
  else if ((x >= 211) and (x <= 218)) and ((y >= 87) and (y <= 93)) then //SANTIAGO
    resultado := 'SANTIAGO'
  else if ((x >= 208) and (x <= 215)) and ((y >= 247) and (y <= 252)) then //AZUA
    resultado := 'AZUA'
  else if ((x >= 239) and (x <= 246)) and ((y >= 95) and (y <= 100)) then //ESPAILLAT
    resultado := 'ESPAILLAT'
  else if ((x >= 239) and (x <= 246)) and ((y >= 124) and (y <= 129)) then //LA VEGA
    resultado := 'LA VEGA'
  else if ((x >= 257) and (x <= 264)) and ((y >= 100) and (y <= 105)) then //SALCEDO
    resultado := 'SALCEDO'
  else if ((x >= 253) and (x <= 260)) and ((y >= 169) and (y <= 174)) then //MONSEÑOR NOUEL
    resultado := 'MONSEÑOR NOUEL'
  else if ((x >= 237) and (x <= 244)) and ((y >= 231) and (y <= 236)) then //SAN JOSE DE OCOA
    resultado := 'SAN JOSE DE OCOA'
  else if ((x >= 269) and (x <= 276)) and ((y >= 278) and (y <= 283)) then //PERAVIA
    resultado := 'PERAVIA'
  else if ((x >= 278) and (x <= 285)) and ((y >= 111) and (y <= 116)) then //DUARTE
    resultado := 'DUARTE'
  else if ((x >= 295) and (x <= 302)) and ((y >= 151) and (y <= 156)) then //SANCHEZ RAMIREZ
    resultado := 'SANCHEZ RAMIREZ'
  else if ((x >= 305) and (x <= 312)) and ((y >= 253) and (y <= 258)) then //SAN CRISTOBAL
    resultado := 'SAN CRISTOBAL'
  else if ((x >= 343) and (x <= 350)) and ((y >= 101) and (y <= 106)) then //MARIA TRINIDAD SANCHEZ
    resultado := 'MARIA TRINIDAD SANCHEZ'
  else if ((x >= 422) and (x <= 429)) and ((y >= 127) and (y <= 132)) then //SAMANA
    resultado := 'SAMANA'
  else if ((x >= 338) and (x <= 345)) and ((y >= 242) and (y <= 247)) then //DISTRITO NACIONAL
    resultado := 'DISTRITO NACIONAL'
  else if ((x >= 347) and (x <= 352)) and ((y >= 244) and (y <= 249)) then //SANTO DOMINGO
    resultado := 'SANTO DOMINGO'
  else if ((x >= 432) and (x <= 439)) and ((y >= 198) and (y <= 203)) then //HATO MAYOR
    resultado := 'HATO MAYOR'
  else if ((x >= 430) and (x <= 437)) and ((y >= 249) and (y <= 254)) then //SAN PEDRO DE MACORIS
    resultado := 'SAN PEDRO DE MACORIS'
  else if ((x >= 469) and (x <= 476)) and ((y >= 196) and (y <= 201)) then //EL SEIBO
    resultado := 'EL SEIBO'
  else if ((x >= 478) and (x <= 485)) and ((y >= 251) and (y <= 256)) then //LA ROMANA
    resultado := 'LA ROMANA'
  else if ((x >= 522) and (x <= 529)) and ((y >= 219) and (y <= 224)) then //LA ALTAGRACIA
    resultado := 'LA ALTAGRACIA'
  else if ((x >= 359) and (x <= 366)) and ((y >= 187) and (y <= 192)) then //MONTE PLATA
    resultado := 'MONTE PLATA'
  else
    resultado := '';

  if QVentas.Active then
  begin
    res := resultado;
    if QVentas.Locate('pro_nombre',resultado,[]) then
      resultado := resultado + #13 + 'Ventas: RD$'+format('%n',[QVentastotal.Value]);
    if QCobros.Locate('pro_nombre',res,[]) then
      resultado := resultado + #13 + 'Cobros: RD$'+format('%n',[QCobrostotal.Value]);
  end;
  result := resultado;
end;

procedure TfrmConsVentaProvincia.btRefreshClick(Sender: TObject);
begin
  QVentas.Close;
  QVentas.Parameters.ParamByName('fec1').Value := fecha1.Date;
  QVentas.Parameters.ParamByName('fec2').Value := fecha2.Date;
  QVentas.Open;

  QCobros.Close;
  QCobros.Parameters.ParamByName('fec1').Value := fecha1.Date;
  QCobros.Parameters.ParamByName('fec2').Value := fecha2.Date;
  QCobros.Open;
end;

procedure TfrmConsVentaProvincia.FormPaint(Sender: TObject);
begin
  Top := 3
end;

end.
