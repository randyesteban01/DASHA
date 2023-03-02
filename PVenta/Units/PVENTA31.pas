unit PVENTA31;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, ComCtrls, ImgList, jpeg, DIMime;

type
  TfrmAcerca = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Panel2: TPanel;
    lblUltActualizacion: TLabel;
    BitBtn1: TBitBtn;
    Image2: TImage;
    Label9: TLabel;
    lcnombre: TLabel;
    lcrnc: TLabel;
    lctelefono: TLabel;
    lcurl: TLabel;
    lccorreo: TLabel;
    Label4: TLabel;
    Label8: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Image1: TImage;
    Label10: TLabel;
    Label11: TLabel;
    Label5: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAcerca: TfrmAcerca;

implementation

uses SIGMA00, SIGMA01;


{$R *.DFM}

procedure TfrmAcerca.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmAcerca.FormCreate(Sender: TObject);
var
   CDate,MDate,ADate : TDateTime;
begin
if dm.GetFileTimes('.\Dasha.exe', CDate, MDate, ADate) then begin
    lblUltActualizacion.Caption := 'DASHA está actualizado a '+ FormatDateTime('dd/mm/yyyy hh:nn',MDate);
end;

  lcnombre.Caption   := MimeDecodeString(dm.lcnombre);
  lcrnc.Caption      := MimeDecodeString(dm.lcrnc);
  lctelefono.Caption := MimeDecodeString(dm.lctelefono);
  lccorreo.Caption   := MimeDecodeString(dm.lccorreo);
  lcurl.Caption      := MimeDecodeString(dm.lcurl);
end;

end.
