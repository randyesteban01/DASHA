unit SIGMA05;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleCtrls, SHDocVw;

type
  TfrmWeb = class(TForm)
    WebBrowser1: TWebBrowser;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmWeb: TfrmWeb;

implementation

uses SIGMA00;

{$R *.dfm}

procedure TfrmWeb.FormCreate(Sender: TObject);
var
  arch : textfile;
  s : string;
begin
  assignfile(arch,'web.ini');
  reset(arch);
  readln(arch,s);
  closefile(arch);
  WebBrowser1.Navigate(s);
end;

procedure TfrmWeb.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmWeb.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  NewHeight := frmMain.ClientHeight;
  NewWidth  := frmMain.ClientWidth;
  frmWeb.WindowState := wsMaximized;
  //resize := false;
end;

end.
