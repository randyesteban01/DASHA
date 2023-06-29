unit USBREG00;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, magwmi, magsubs1, DIMime, DB, ADODB, Spin,
  Mask, ToolEdit;

type
  TForm1 = class(TForm)
    GroupBox2: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    ednombre: TEdit;
    edrnc: TEdit;
    eddir1: TEdit;
    eddir2: TEdit;
    eddir3: TEdit;
    edtelefono: TEdit;
    edcorreo: TEdit;
    edurl: TEdit;
    BitBtn3: TBitBtn;
    ADOSigma: TADOConnection;
    Query1: TADOQuery;
    CB_TIPO: TComboBox;
    LB_1: TLabel;
    CB_TIPOVENC: TComboBox;
    LB_2: TLabel;
    seCant: TSpinEdit;
    seCantCuotas: TSpinEdit;
    CB_Conexion: TComboBox;
    LB_3: TLabel;
    edtSerial: TEdit;
    LB_4: TLabel;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn3Click(Sender: TObject);
    procedure CB_TIPOChange(Sender: TObject);
    //function GetHardDiskSerial(const DriveLetter: Char): string;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation


{$R *.dfm}

procedure TForm1.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
var
  db : string;
  F: TextFile;
  NomFile, VL_ENCABEZADO, VL_DETALLE:string;
  vl_codigo : Integer;
begin
  if trim(edtSerial.Text)='' then begin
  ShowMessage('Debes indicar el Serial del sistema....');
  edtSerial.SetFocus;
  Abort;
  end;
  ADOSigma.Connected := False;
  db := CB_Conexion.Text;
  //db := db + ';User ID=randy;password=dayelcris';
  db := db + ';User ID=admindasha;password=Admin2023$.';
  ADOSigma.ConnectionString := db;
  ADOSigma.Connected := True;
  NomFile := 'LIC'+ADOSigma.DefaultDatabase;

  WITH Query1 DO BEGIN
  Close;
  SQL.Clear;
  SQL.Add('SELECT ID from UsbKey where SN = '+QuotedStr(edtSerial.Text)); //QuotedStr(GetHardDiskSerial('c')));
  Open;
  IF NOT IsEmpty THEN
  vl_codigo := fieldbyname('ID').AsInteger;
  IF IsEmpty THEN begin
  Close;
  SQL.Clear;
  SQL.Add('SELECT ISNULL(MAX(ID),0)+1 ID from UsbKey ');
  Open;
  vl_codigo := fieldbyname('ID').AsInteger;
  end;
  Close;
  end;
  NomFile := '.\'+NomFile+'.ini';
  AssignFile( F, NomFile);
  Rewrite( F );
  //ENCABEZADO
    VL_ENCABEZADO := '[LICENCIA]';
    WriteLn( F, VL_ENCABEZADO);
    //ID
    VL_DETALLE := 'ID='+IntToStr(vl_codigo);
    WriteLn( F, VL_DETALLE);
    //SERIAL NUMBER
    VL_DETALLE := 'SN='+edtSerial.Text;
    WriteLn( F, VL_DETALLE);
    //NOMBRE COMPANY
    VL_DETALLE := 'COMPANY='+MimeEncodeString(ednombre.Text);
    WriteLn( F, VL_DETALLE);
    //RNC
    VL_DETALLE := 'RNC='+MimeEncodeString(edrnc.Text);
	WriteLn( F, VL_DETALLE);
    //DIRECCION 1
    VL_DETALLE := 'DIREC1='+MimeEncodeString(eddir1.Text);
    WriteLn( F, VL_DETALLE);
    //DIRECCION 2
    VL_DETALLE := 'DIREC2='+MimeEncodeString(eddir2.Text);
    WriteLn( F, VL_DETALLE);
    //DIRECCION 3
    VL_DETALLE := 'DIREC3='+MimeEncodeString(eddir3.Text);
    WriteLn( F, VL_DETALLE);
    //TELEFONO
    VL_DETALLE := 'TEL='+MimeEncodeString(edtelefono.Text);
    WriteLn( F, VL_DETALLE);
    //CORREO
    VL_DETALLE := 'EMAIL='+MimeEncodeString(edcorreo.Text);
    WriteLn( F, VL_DETALLE);
    //URL
    VL_DETALLE := 'URL='+MimeEncodeString(edurl.Text);
    WriteLn( F, VL_DETALLE);
    //TIPO LICENCIA
    VL_DETALLE := 'TIPOLIC='+MimeEncodeString(IntToStr(CB_TIPO.ItemIndex));
    WriteLn( F, VL_DETALLE);
    //TIPO LICENCIA DESDE
    with Query1 do begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT CAST(CAST(GETDATE() AS CHAR(11)) AS DATETIME) FECHA');
      Open;
      VL_DETALLE := 'TIPOLICDESDE='+MimeEncodeString(fieldbyname('FECHA').AsString);
    end;
    WriteLn( F, VL_DETALLE);
    //TIPO LICENCIA HASTA
    VL_DETALLE := 'TIPOLICHASTA='+MimeEncodeString(IntToStr(seCantCuotas.Value));
    WriteLn( F, VL_DETALLE);
    //TIPO LICENCIA
    VL_DETALLE := 'TIPOVENC='+MimeEncodeString(IntToStr(CB_TIPOVENC.ItemIndex));
    WriteLn( F, VL_DETALLE);
    //TIPO LICENCIA VENC HASTA
    VL_DETALLE := 'TIPOVENCHASTA='+MimeEncodeString(IntToStr(seCant.Value));
    WriteLn( F, VL_DETALLE);
    CloseFile( F );
  MessageDlg('Proceso Terminado'+Char(13)+
             'Guardado en '+NomFile, mtInformation, [mbok], 0);
end;



procedure TForm1.CB_TIPOChange(Sender: TObject);
begin
case CB_TIPO.ItemIndex of
0:begin
LB_2.Visible         := False;
CB_TIPOVENC.Visible  := False;
seCant.Visible       := False;
seCant.Value         := 0;
seCantCuotas.Visible := False;
seCantCuotas.Value   := 0;
end;
1:begin
LB_2.Visible         := True;
CB_TIPOVENC.Visible  := True;
seCant.Visible       := True;
seCant.Value         := 0;
seCantCuotas.Visible := False;
seCantCuotas.Value   := 0;
end;
2:begin
LB_2.Visible         := True;
CB_TIPOVENC.Visible  := True;
seCant.Visible       := True;
seCant.Value         := 0;
seCantCuotas.Visible := True;
seCantCuotas.Value   := 0;
end;

end;

end;

{
function TForm1.GetHardDiskSerial(const DriveLetter: Char): string;
var
  NotUsed:     DWORD;
  VolumeFlags: DWORD;
  VolumeInfo:  array[0..MAX_PATH] of Char;
  VolumeSerialNumber: DWORD;
begin
  GetVolumeInformation(PChar(DriveLetter + ':\'),
    nil, SizeOf(VolumeInfo), @VolumeSerialNumber, NotUsed,
    VolumeFlags, nil, 0);
  Result := MimeEncodeString(Format('%8.8X',[VolumeSerialNumber]));

end;
 }
procedure TForm1.FormCreate(Sender: TObject);
var
  ar : textfile;
  db : string;
begin
  assignfile(ar, ExtractFilePath(Application.ExeName)+'dashasql.ini');
  reset(ar);
  while not EOF(ar) do
  begin
    readln(ar, db);
    CB_Conexion.Items.Add(db);
  end;
  closefile(ar);
  CB_Conexion.ItemIndex := 0;

end;

end.
