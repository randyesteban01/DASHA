unit UProcGlob;

interface

// Declaracion del tipo de datos a usar
uses
  SysUtils, Classes, DB, Forms, Windows, Messages, Dialogs,
  ADODB, Variants, Graphics, Controls, ExtCtrls, Grids,
  DBTables,
  StdCtrls,
  ImgList, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  cxLabel, Menus, cxButtons, cxDBEdit, cxTextEdit, Mask,
  DBCtrls, ComCtrls, ToolWin, dxSkinscxPCPainter, cxPC, Buttons,
  DBGrids, cxMemo, cxBlobEdit, cxCurrencyEdit, cxLookupEdit,
  cxMaskEdit, cxDropDownEdit, cxDBLookupEdit, cxDBLookupComboBox,
  sTooledit, JGSVar;

type
  TProcGlob = class(TDataModule)


// declara el procedimiento para ver de forma Global
procedure RefrescarQT(Nombres:TDataSet);
procedure Mensaje(I:string);
procedure LimpiarCampos(Forma:TForm);
procedure HaDesabilita_campos(modo:boolean);
Function FillCeros(cVar:String;nLen:Integer):String;
Function FillSpaces(cVar:String;nLen:Integer):String;
function Encrypt2(aStr: String; aKey: Integer): String;
function Encrypt(aStr: String; aKey: Integer): String;
function FormActivo(Formulario: string): Boolean;
function GetUserName : String;
function GetComputerName : String;
procedure EliminarRegistro(Tabla,Campo,Parametro:string;Query:TADOQuery;
                           Cia:Integer);
procedure InsertarRegistro(Tabla,Campo,Parametro:string;Query:TADOQuery;
                           Cia:Integer);
procedure EditarRegistro(Tabla,Parametro,Campo_Principal,Parametro_Principal:string;
                        Query:TADOQuery;Cia:Integer);
function ExisteRegistro(Tabla,Campo,Parametro:string;Query:TADOQuery;
                        Cia:Integer):Boolean;
procedure Botones(vl_activar, vl_modo:string;BtnInsert, BtnEditar, BtnGrabar,
                  BtnCancel,BtnBorrar, BtnClose: TBitBtn;TSConsulta: TcxTabSheet);
procedure ConsultarQry(vl_edit:TcxTextEdit;vl_label:TcxLabel;Tabla:string;
                      cia:Integer;Query:TADOQuery);
procedure AuditoriaSistema(Trama:string;Trans:Integer;SProc:TADOStoredProc);
procedure ActualizarEntradas(SProc:TADOStoredProc;EdtUser,EdtPass:TcxTextEdit;LbUser,LbPass:TcxLabel);
procedure Login(SProc:TADOStoredProc;CBCia:TcxComboBox;EdtUser,EdtPass:TcxTextEdit;LbUser,LbPass:TcxLabel);
procedure UsuariosProgramacion(EdtUser,EdtPass:TcxTextEdit);
procedure FormLlenarComboxCia(Qry:TADOQuery;CBCia:TcxComboBox);
procedure LocalizarCampo(Campo,Parametro:string;Table:TDataSet);
function VerificarLavaHotel(Campo:string):Boolean;
function VerificarOceanSplash(Campo:string):Boolean;
function VerificarGuavaberry(Campo:string):Boolean;
function VerificarAladino(Campo:string):Boolean;
function VerificarSDConcerts(Campo:string):Boolean;
function VerificarRATHORE(Campo:string):Boolean;
function VerificarPlayaGrande(Campo:string):Boolean;
function VerificarAltabella(Campo:string):Boolean;
function VerificarBondelic(Campo:string):Boolean;
function VerificarVillasCodevi(Campo:string):Boolean;
function VerificarJaragua(Campo:string):Boolean;
function VerificarIFA(Campo:string):Boolean;
function VerificarMarena(Campo:string):Boolean;
function VerificarFerrer(Campo:string):Boolean;
function VerificarHotech(Campo:string):Boolean;
function VerificarOrox(Campo:string):Boolean;
function VerificarPuertoBahia(Campo:string):Boolean;
function VerificarPlatino(Campo:string):Boolean;
function VerificarBluejacktar(Campo:string):Boolean;
function VerificarCoconut(Campo:string):Boolean;
function  BuscarCodigo(codigo:string;company:integer;DB:TQuery):integer;
function rspace(Atext:string; Long:integer; Spac:char = ' '): String;
function lspace(Atext:string; Long:integer; Spac:char = ' '): String;
procedure CampoVacio(I,T:string;Campo:TcxTextEdit;V:Boolean);
procedure MaskVacio(I,T:string;Campo:TcxMaskEdit;V:Boolean);
procedure CampoIntegerVacio(I,T:string;Campo:Integer;V:Boolean);
procedure CampoFloatVacio(I,T:string;Campo:Double;V:Boolean);
procedure CampoDateVacio(I,T:string;Campo:TDateTime;V:Boolean);
function EnDeCrypt(const Value, Key : String) : String;
function Decrypt(aStr: String; aKey: Integer): String;
  public
  
    { Public declarations }

private

    { Private declarations }
   end;

var
  PG: TProcGlob;

const
    {C1 y C2 are used for encryption of Master Password string}
    {C1 y C2 aon usadas para encriptar la cadena de la clave}
         C1 = 52845;
         C2 = 11719;

implementation

// creacion de los nuevos procedimientos...

// #####1 Refrescar Tablas
procedure TProcGlob.RefrescarQT(Nombres:TDataSet);
begin
Nombres.Close;
Nombres.Open;
end;

function TProcGlob.rspace(Atext: string; Long: integer; Spac: char): String;
var
  X:integer;
begin
  Atext:=trim(Atext);
  if long < 0 then
    long:=0;
  x:=long-Length(AText);
  Result:=StringOfChar(Spac,X)+Atext;
end;

// #####2 Usuario para Programacion
procedure TProcGlob.UsuariosProgramacion(EdtUser,EdtPass:TcxTextEdit);
begin
 //exclusivamente prog
    if GetComputerName = 'SERVER\SQL2005' then

    EdtUser.Text:= 'hfs';
    EdtUser.Text:= '1';
end;

// #####3 Verificar si es la Compañia es LavHotel
function TProcGlob.VerificarLavaHotel(Campo:string): Boolean;
begin
if Trim(Campo) = 'LAVHOTEL,S.A.'
then begin
Result:=True;
end
else
Result:=False;
end;

function TProcGlob.VerificarMarena(Campo: string): Boolean;
begin
if Trim(Campo) = 'Coopnama y/o Coopmarena'
then begin
Result:=True;
end
else
Result:=False;
end;

function TProcGlob.VerificarOceanSplash(Campo: string): Boolean;
begin
if Trim(Campo) = 'OROX INVERSIONES, SRL'
then begin
Result:=True;
end
else
Result:=False;
end;

function TProcGlob.VerificarOrox(Campo: string): Boolean;
begin
if Trim(Campo) = 'OROX INVERSIONES, SRL'
then begin
Result:=True;
end
else
Result:=False;
end;

function TProcGlob.VerificarPlatino(Campo: string): Boolean;
begin
if (Trim(Campo) = 'HOTEL PLATINO')
then begin
Result:=True;
end
else
Result:=False;

end;

function TProcGlob.VerificarPlayaGrande(Campo: string): Boolean;
begin
if (Trim(Campo) = 'OCEANCORP, S.A.') or
   (Trim(Campo) = 'PLAYA GRANDE HOLDINGS, INC')
then begin
Result:=True;
end
else
Result:=False;
end;

function TProcGlob.VerificarPuertoBahia(Campo: string): Boolean;
begin
if Trim(Campo) = 'PLAYA DOSU, S.A.'
then begin
Result:=True;
end
else
Result:=False;
end;

function TProcGlob.VerificarRATHORE(Campo: string): Boolean;
begin
if Trim(Campo) = 'RATHORE'
then begin
Result:=True;
end
else
Result:=False;
end;

function TProcGlob.VerificarSDConcerts(Campo: string): Boolean;
begin
if Trim(Campo) = 'Marketing & Management Group'
then begin
Result:=True;
end
else
Result:=False;
end;

function TProcGlob.VerificarVillasCodevi(Campo: string): Boolean;
begin
if Trim(Campo) = 'GLOBAL AMERICAN COMMERCIAL CORP.'
then begin
Result:=True;
end
else
Result:=False;
end;

// #####4 Verificar si es la Compañia es Hotel Jaragua
function TProcGlob.VerificarJaragua(Campo:string): Boolean;
begin
if Trim(Campo) = 'Hotel Jaragua'
then begin
Result:=True;
end
else
Result:=False;
end;

// #####5 Verificar si es la Compañia es IFA
function TProcGlob.VerificarAladino(Campo: string): Boolean;
begin
if (Trim(Campo) = 'APARTA HOTEL ALADINO')
then begin
Result:=True;
end
else
Result:=False;
end;

function TProcGlob.VerificarAltabella(Campo: string): Boolean;
begin
if (Trim(Campo) = 'CORPORACION HOTELERA INTERNACIONAL DR') or
   (Trim(Campo) = 'CORPORACION HOTELERA DEL MAR')
then begin
Result:=True;
end
else
Result:=False;
end;

function TProcGlob.VerificarBluejacktar(Campo: string): Boolean;
begin
if Trim(Campo) = 'KRAMETRO CONSULTING KRACON, S.R.L'
then begin
Result:=True;
end
else
Result:=False;
end;

function TProcGlob.VerificarBondelic(Campo: string): Boolean;
begin
if Trim(Campo) = 'BONDELIC , S.A.'
then begin
Result:=True;
end
else
Result:=False;
end;

function TProcGlob.VerificarCoconut(Campo: string): Boolean;
begin
if Trim(Campo) = 'THE COCONUT PALMS RESORT'
then begin
Result:=True;
end
else
Result:=False;
end;

function TProcGlob.VerificarFerrer(Campo: string): Boolean;
begin
if Trim(Campo) = 'FRUTOS FERRER, SRL'
then begin
Result:=True;
end
else
Result:=False;
end;


function TProcGlob.VerificarGuavaberry(Campo: string): Boolean;
begin
if Trim(Campo) = 'GUAVABERRY RESORT & COUNTRY CLUB'
then begin
Result:=True;
end
else
Result:=False;
end;

function TProcGlob.VerificarHotech(Campo: string): Boolean;
begin
if ((Trim(Campo) = 'HOTEL TECHNOLOGY DEL CARIBE SRL') or
    (Trim(Campo) = 'HO-TECH DEL CARIBE') or
    (Trim(Campo) = 'HO-TECH DOMINICANA'))
then begin
Result:=True;
end
else
Result:=False;
end;

function TProcGlob.VerificarIFA(Campo:string): Boolean;
begin
if Trim(Campo) = 'INVERSIONES FLORIPES'
then begin
Result:=True;
end
else
Result:=False;
end;

// #####6 Mensajes Personalizados
procedure TProcGlob.MaskVacio(I, T: string; Campo: TcxMaskEdit; V: Boolean);
begin
if ((Trim(Campo.Text)='(   )    -    ') and (V = False) and (T = 'I')) then begin
  ShowMessage('Favor Indicar Campo '+I);
  Campo.SetFocus;
  Abort;
end;
if ((Trim(Campo.Text)='(   )    -    ') and (V = False) and (T = 'E')) then begin
  ShowMessage('Favor Indicar Campo '+I);
  Campo.SetFocus;
  Abort;
end;

end;

procedure TProcGlob.Mensaje(I:string);
begin
//Al insertar Registros
if I = 'I' then
ShowMessage('Datos Insertados Correctamente......');

//Al Editar Registros
if I = 'E' then
ShowMessage('Datos Modificados Correctamente......');

//Al insertar Registros
if I = 'B' then
ShowMessage('Datos Eliminados Correctamente......');

//Error insertar Registros
if I = 'EI' then
ShowMessage('Error al Insertar Registro......');

//Error modificar Registros
if I = 'EE' then
ShowMessage('Error al Modificar Registro......');

//Error Eliminar Registros
if I = 'EB' then
ShowMessage('Error al Eliminar Registro......');

//Error Existe el Registro
if I = 'EX' then
ShowMessage('Error el Registro Existe......');

//Error Existe el Registro
if I = 'ESB' then
ShowMessage('Selecccione datos a borrar....');

//Error Campo Vacio
if I = 'CV' then
ShowMessage('Campo Vacio Favor Suministrar....');

//Error Cliente Vacio
if I = 'IC' then
ShowMessage('Cliente Vacio,  Favor Suministrar....');


//Contraseña Invalida
if I = 'CI' then
ShowMessage('La Contraseña es Invalida....');

//Usuario Invalida
if I = 'UI' then
ShowMessage('El Usuario es Invalido....');

//Usuario Invalida
if I = 'NER' then
ShowMessage('No Existen Registro....');
end;

// #####7 Consultar Datos
procedure TProcGlob.CampoDateVacio(I, T: string; Campo: TDateTime; V: Boolean);
begin
if ((Campo = 0) and (V = False) and (T = 'I')) then begin
  ShowMessage('Favor Indicar Campo '+I);
  Abort;
end;
if ((Campo = 0) and (V = False) and (T = 'E')) then begin
  ShowMessage('Favor Indicar Campo '+I);
  Abort;
end;
if ((Campo = 0) and (V = False) and (T = 'D')) then begin
  ShowMessage('Favor Indicar Campo '+I);
  Abort;
end;
end;

procedure TProcGlob.CampoFloatVacio(I, T: string; Campo: Double; V: Boolean);
begin
if ((Campo = 0) and (V = False) and (T = 'I')) then begin
  ShowMessage('Favor Indicar Campo '+I);
  Abort;
end;
if ((Campo = 0) and (V = False) and (T = 'E')) then begin
  ShowMessage('Favor Indicar Campo '+I);
  Abort;
end;

if ((Campo = 0) and (V = False) and (T = 'D')) then begin
  ShowMessage('Favor Indicar Campo '+I);
  Abort;
end;

end;

procedure TProcGlob.CampoIntegerVacio(I, T: string; Campo: Integer; V: Boolean);
begin
if ((Campo = 0) and (V = False) and (T = 'I')) then begin
  ShowMessage('Favor Indicar Campo '+I);
  Abort;
end;
if ((Campo = 0) and (V = False) and (T = 'E')) then begin
  ShowMessage('Favor Indicar Campo '+I);
  Abort;
end;

if ((Campo = 0) and (V = False) and (T = 'D')) then begin
  ShowMessage('Favor Indicar Campo '+I);
  Abort;
end;
end;

procedure TProcGlob.CampoVacio(I, T: string; Campo: TcxTextEdit; V: Boolean);
begin
if ((Trim(Campo.Text)='') and (V = False) and (T = 'I')) then begin
  ShowMessage('Favor Indicar Campo '+I);
  Campo.SetFocus;
  Abort;
end;
if ((Trim(Campo.Text)='') and (V = False) and (T = 'E')) then begin
  ShowMessage('Favor Indicar Campo '+I);
  Campo.SetFocus;
  Abort;
end;
if ((Trim(Campo.Text)='') and (V = False) and (T = 'D')) then begin
  ShowMessage('Favor Indicar Campo '+I);
  Campo.SetFocus;
  Abort;
end;
end;

procedure TProcGlob.ConsultarQry(vl_edit: TcxTextEdit; vl_label: TcxLabel;
Tabla: string; cia: Integer; Query: TADOQuery);
var
vl_temp:string;
begin
 vl_temp := '"'+Trim(vl_edit.Text)+'"'+'+"%"';
  With Query do begin
    Close;
    Sql.Clear;
    Sql.Add('Select * from '+Tabla);
    Sql.Add('where cia = '+IntToStr(cia));
    Sql.Add('and '+vl_label.caption +' LIKE '+vl_temp);
    Sql.Add('Order by '+vl_label.caption);
    Open;
  end; //end_with;
end;



// #####8 Desencriptar Textos
function TProcGlob.Decrypt(aStr: String; aKey: Integer): String;
begin
   Result:='';
   RandSeed:=aKey;
   for aKey:=1 to Length(aStr) do
       Result:=Result+Chr(Byte(aStr[aKey]) xor random(256));

end;




// #####9 Encriptar Textos
// #####10 Verificar si el Formulario esta Activo
function TProcGlob.FillCeros(cVar: String; nLen: Integer): String;
begin
Result:=StringOfChar('0',nLen - Length(cVar))+cVar;
end;

function TProcGlob.FillSpaces(cVar: String; nLen: Integer): String;
begin
Result:=cVar+StringOfChar(' ',nLen - Length(cVar));
end;

function TProcGlob.FormActivo(Formulario: string): Boolean;
var
i:Integer;
begin
for i:=0 to Screen.FormCount -1  do
if Screen.Forms[i].Name = Formulario then
begin
  Result:=True;
  Exit;
  end;
  Result:=False;

end;

// #####11 Llenar Combo Box para Compañia
procedure TProcGlob.FormLlenarComboxCia(Qry:TADOQuery;CBCia:TcxComboBox);
var
S:string;
begin
with Qry do begin
  if not IsEmpty then begin
  while not Eof do begin
  S:=FieldByName('nombre_com').AsString;
  CBCia.Properties.Items.Append(S);
  Next;
  end;

vp_cia:=FieldByName('Cia').AsInteger;
CBCia.ItemIndex:=0;
  end;
end;
end;

// #####12 Obtener nombre del Equipo Local
function TProcGlob.GetComputerName: String;
var
   pcComputer : PChar;
   dwCSize    : DWORD;
begin
   dwCSize := MAX_COMPUTERNAME_LENGTH + 1;
   GetMem( pcComputer, dwCSize );
   try
      if Windows.GetComputerName( pcComputer, dwCSize ) then
         Result := pcComputer;
   finally
      FreeMem( pcComputer );
   end;

end;


// #####13 Obtener el Usuario de Windows
function TProcGlob.GetUserName: String;
var
   pcUser   : PChar;
   dwUSize : DWORD;
begin
   dwUSize := 21;
   GetMem( pcUser, dwUSize );
   try
      if Windows.GetUserName( pcUser, dwUSize ) then
         Result := pcUser
   finally
      FreeMem( pcUser );
   end;
end;

// #####14 Habilitar y Deshabilitar Botones
procedure TProcGlob.HaDesabilita_campos(modo: boolean);
var vl_i:word;
begin
   for vl_i := 0 to componentcount-1 do
   begin
     if (Components[vl_i] is TcxTextEdit) then
      TcxTextEdit(Components[vl_i]).Enabled := modo;

       if (Components[vl_i] is TcxMemo) then
      TcxMemo(Components[vl_i]).Enabled := modo;

      if (Components[vl_i] is TcxBlobEdit) then
      TcxBlobEdit(Components[vl_i]).Enabled:= modo;

   end;
end;

// #####15 Editar Registros
procedure TProcGlob.EditarRegistro(Tabla, Parametro,Campo_Principal,Parametro_Principal: string;Query:TADOQuery;Cia:Integer);
begin
try
Query.Connection.BeginTrans;
with Query do begin
  Close;
  SQL.Clear;
  SQL.Add('Update '+Tabla);
  SQL.Add('set ');
  SQL.Add(Parametro);
  SQL.Add('Where '+Campo_Principal+'='+Parametro_Principal);
  SQL.Add('And Cia'+IntToStr(Cia));
  ExecSQL;
end;
Query.Connection.CommitTrans;
finally
  Mensaje('E');
  Query.Connection.RollbackTrans;
end;

end;

// #####16 Eliminar Registros
procedure TProcGlob.EliminarRegistro(Tabla, Campo, Parametro: string;Query:TADOQuery;Cia:Integer);
begin
try
Query.Connection.BeginTrans;
with Query do begin
  Close;
  SQL.Add('Delete from '+Tabla);
  SQL.Add('Where '+Campo+'='+Parametro);
  SQL.Add('And Cia='+IntToStr(Cia));
  ExecSQL;
end;
Query.Connection.CommitTrans;
finally
  Query.Connection.RollbackTrans;
end;
end;


function TProcGlob.Encrypt(aStr: String; aKey: Integer): String;
begin
   Result:='';
   RandSeed:=aKey;
   for aKey:=1 to Length(aStr) do
       Result:=Result+Chr(Byte(aStr[aKey]) xor random(256));

end;

function TProcGlob.Encrypt2(aStr: String; aKey: Integer): String;
begin
   Result:='';
   RandSeed:=aKey;
   for aKey:=1 to Length(aStr) do
       Result:=Result+Chr(Byte(aStr[aKey]) xor random(256));
end;

function TProcGlob.EnDeCrypt(const Value, Key: String): String;
var
   i : Integer;
   KeyAlt : Integer;

begin

   KeyAlt := Length(Key);

   for i := 1 to Length(Key) do
      KeyAlt := KeyAlt xor Ord(Key[i]);

   Result := Value;
   for i := 1 to Length(Value) do
   begin
      Result[i] := chr(not(ord(Value[i]) xor Ord(KeyAlt)));
   end

end;

// #####17 Verificar Existencia de Registros
function TProcGlob.ExisteRegistro(Tabla, Campo, Parametro: string;Query:TADOQuery;Cia:Integer): Boolean;
begin
with Query do begin
  Close;
  SQL.Add('Select '+Campo+ 'from '+Tabla);
  SQL.Add('Where '+Campo+'='+Parametro);
  SQL.Add('And Cia='+IntToStr(Cia));
  ExecSQL;
end;

if Query.RecordCount = 0 then
Result:= False
else
Result:=True;
end;

// #####18 Insertar Registros Registros
procedure TProcGlob.InsertarRegistro(Tabla, Campo, Parametro: string;Query:TADOQuery;Cia:Integer);
begin
try
Query.Connection.BeginTrans;
with Query do begin
  Close;
  SQL.Clear;
  SQL.Add('Insert into '+Tabla+'('+Campo+')');
  SQL.Add('Values (');
  SQL.Add(Parametro);
  ExecSQL;
end;
Query.Connection.CommitTrans;
finally
Mensaje('I');
Query.Connection.RollbackTrans;
end;

end;

// #####19 Limpiar Campos
procedure TProcGlob.LimpiarCampos(Forma:TForm);
var vl_i:word;
begin
with Forma do begin
   for vl_i := 0 to componentcount-1 do
   begin
      if (Components[vl_i] is TEdit) then
      TEdit(Components[vl_i]).Clear;

      if (Components[vl_i] is TMaskEdit) then
      TMaskEdit(Components[vl_i]).Clear;

       if (Components[vl_i] is TMemo) then
      TMemo(Components[vl_i]).Clear;

      if (Components[vl_i] is TIntegerField) then
      TIntegerField(Components[vl_i]).Value:=0;

      if (Components[vl_i] is TcxTextEdit) then
      TcxTextEdit(Components[vl_i]).Clear;

       if (Components[vl_i] is TcxMemo) then
      TcxMemo(Components[vl_i]).Clear;

      if (Components[vl_i] is TcxBlobEdit) then
      TcxBlobEdit(Components[vl_i]).Clear;

      if (Components[vl_i] is TcxCurrencyEdit) then
      TcxCurrencyEdit(Components[vl_i]).Value:=0;



   end;

end;
end;

// #####20 Acceso al Sistema
procedure TProcGlob.LocalizarCampo(Campo, Parametro: string; Table: TDataSet);
begin
Table.Locate(Campo,Parametro,[]);
end;

procedure TProcGlob.Login(SProc:TADOStoredProc;CBCia:TcxComboBox;EdtUser,EdtPass:TcxTextEdit;LbUser,LbPass:TcxLabel);
begin
if Trim(CBCia.Text)='' then begin
PG.Mensaje('CV');
CBCia.SetFocus;
Exit;
end;

if Trim(EdtUser.Text)='' then begin
PG.Mensaje('CV');
EdtUser.SetFocus;
Exit;
end;

if Trim(EdtPass.Text)='' then begin
if MessageDlg('La Clave esta En Blanco,'+Char(13)+
               'Desea Registrase así?',mtConfirmation,[mbYes,mbNo],0)=mrNo then
begin
EdtPass.SetFocus;
Exit;
end
else

//Localizar el Usuario
with SProc do begin
  Close;
  Parameters[1].Value:=Trim(EdtUser.Text);
  Parameters[2].Value:=vp_cia;
  Open;
end;

if SProc.IsEmpty then
begin
PG.Mensaje('UI');
EdtUser.Clear;
EdtUser.SetFocus;
Exit;
end;

if PG.Decrypt(Trim(SProc.FieldByName('Password').AsString),6474)<>
              Trim(EdtPass.Text) then
begin
Mensaje('CI');
EdtPass.Clear;
EdtPass.SetFocus;
Exit;
end;

//DAtos del Usuario
vp_user:=SProc.FieldByName('UserID').AsInteger;
vp_userLG:=SProc.FieldByName('LoginName').AsString;
vp_user_pass:=SProc.FieldByName('Password').AsString;


SProc.Close;


end;
end;



function TProcGlob.lspace(Atext: string; Long: integer; Spac: char): String;
var
  X:integer;
begin
  Atext:=trim(Atext);
  if long < 0 then
    long:=0;
  x:=long-Length(AText);
  Result:=Atext+StringOfChar(Spac,X);
end;

// #####21 Actualizar Entradas de Usuarios
procedure TProcGlob.ActualizarEntradas(SProc:TADOStoredProc;EdtUser,EdtPass:TcxTextEdit;LbUser,LbPass:TcxLabel);
begin
try
SProc.Connection.BeginTrans;
with SProc do begin
  Close;
  Parameters[1].Value:=Trim(EdtUser.Text);
  Parameters[2].Value:=vp_cia;
  ExecProc;
end;
SProc.Connection.CommitTrans;
finally
  Mensaje('EI');
  SProc.Connection.RollbackTrans;

end;
end;

// #####22 Auditoria del Sistema
procedure TProcGlob.AuditoriaSistema(Trama:string;Trans:Integer;SProc:TADOStoredProc);
begin
try
SProc.Connection.BeginTrans;
with SProc do begin
  Close;
  Parameters[1].Value:=vp_cia;
  Parameters[2].Value:=Trama;
  Parameters[3].Value:=Trans;
  Parameters[4].Value:=vp_user;
  ExecProc;
end;
SProc.Connection.CommitTrans;
finally
  Mensaje('EI');
  SProc.Connection.RollbackTrans;
end;

end;

// #####23 Botones del Formulario
procedure TProcGlob.Botones(vl_activar, vl_modo:string;BtnInsert, BtnEditar,
BtnGrabar, BtnCancel, BtnBorrar, BtnClose: TBitBtn;TSConsulta: TcxTabSheet);
begin
   btnGrabar.enabled   := (vl_activar= 'I') or (vl_activar = 'E');
   btnInsert.enabled   := (vl_activar = 'A') or (vl_modo = 'E');
   BtnEditar.enabled   := (vl_activar = 'B')or (vl_modo = 'E');
   BtnClose.Enabled   := vl_activar = 'A';
   BtnBorrar.enabled   := (vl_activar = 'B')or (vl_modo = 'E');
   BtnCancel.enabled   := BtnGrabar.Enabled;
   TSConsulta.TabVisible  := BtnInsert.Enabled;
end;


function TProcGlob.BuscarCodigo(codigo: string; company: integer;
  DB: TQuery): integer;
begin
//DMC_.qSelectCodigo
  With DB do
   begin
    Close;
    ParamByName('codigo').AsString   := Codigo;
    ParamByName('company').AsInteger := Company;
    Open;
    result := FieldbyName('Maximo').Value;
   end; //end_with;

end;

end.
