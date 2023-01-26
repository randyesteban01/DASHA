unit PVENTA157;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DIMime;

type
  TfrmClaveSupervisor = class(TForm)
    Label1: TLabel;
    edUsuario: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    btAnula: TBitBtn;
    btClose: TBitBtn;
    edNueva: TEdit;
    edClave: TEdit;
    BitBtn1: TBitBtn;
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btAnulaClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmClaveSupervisor: TfrmClaveSupervisor;

implementation

uses SIGMA01;

{$R *.dfm}

procedure TfrmClaveSupervisor.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmClaveSupervisor.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
     begin
       perform(wm_nextdlgctl, 0, 0);
       key := #0;
     end;
end;

procedure TfrmClaveSupervisor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmClaveSupervisor.btAnulaClick(Sender: TObject);
var
  CodUsuario : integer;
begin
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select usu_clave, usu_codigo from usuarios');
  dm.Query1.SQL.Add('where usu_nombre = :usu');
  dm.Query1.Parameters.ParamByName('usu').Value := TRim(edUsuario.Text);
  dm.Query1.Open;

  if dm.Query1.RecordCount = 0 then
    MessageDlg('Este usuario no existe',mtError,[mbok],0)
  else if dm.Query1.FieldByName('usu_clave').AsString <> MimeEncodeString(Trim(edClave.text)) then
    MessageDlg('Clave de usuario ERRONEA',mtError,[mbok],0)
  else
  begin
    CodUsuario := dm.Query1.FieldByName('usu_codigo').AsInteger;
    dm.Query1.close;
    dm.Query1.SQL.clear;
    dm.Query1.SQL.add('select clave from clave_supervisor_caja where usu_codigo = :usu');
    dm.Query1.Parameters.ParamByName('usu').Value := CodUsuario;
    dm.Query1.Open;
    if dm.Query1.recordcount > 0 then
      edNueva.text := dm.Query1.fieldbyname('clave').asstring
    else
      MessageDlg('Usted no es SUPERVISOR',mtError,[mbok],0);
  end;
end;

procedure TfrmClaveSupervisor.BitBtn1Click(Sender: TObject);
var
  ar : textfile;
  Lote, a : Integer;
  s : array[0..20] of char;
  Relleno, IniBarra : String;
begin
    if not FileExists('.\barra.ini') then
    begin
      AssignFile(ar, '.\barra.ini');
      rewrite(ar);
      writeln(ar,'prn');
      IniBarra := 'prn';
      closefile(ar);
    end
    else
    begin
      AssignFile(ar, '.\barra.ini');
      reset(ar);
      read(ar,IniBarra);
      closefile(ar);
    end;

    assignfile(ar, '.\t.txt');
    rewrite(ar);

    writeln(ar,'q288');
    writeln(ar,'Q152,40');
    writeln(ar,'N');
    writeln(ar,'ZT');
    writeln(ar,'A35,02,0,1,1,2,N,'+'"'+copy(dm.QEmpresasemp_nombre.AsString,1,24)+'"');
    writeln(ar,'A35,25,0,1,1,1,N,'+'"'+dm.QEmpresasemp_telefono.AsString+'"');
    writeln(ar,'B35,45,0,1,2,1,80,N,'+'"'+edNueva.text+'"');
    writeln(ar,'P1');
    writeln(ar,'FK');
    closefile(ar);

    AssignFile(AR, '.\imp.bat');
    rewrite(ar);
    writeln(ar,'type .\t.txt > '+IniBarra);
    closefile(ar);
    WinExec('.\imp.bat',0);
end;

end.
