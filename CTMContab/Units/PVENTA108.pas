unit PVENTA108;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IBServices, ComCtrls, StdCtrls, Buttons;

type
  TfrmBackup = class(TForm)
    IBBackupService1: TIBBackupService;
    SaveDialog1: TSaveDialog;
    IBRestoreService1: TIBRestoreService;
    OpenDialog1: TOpenDialog;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    btClose: TBitBtn;
    rtBackup: TRichEdit;
    Label2: TLabel;
    edBackup: TEdit;
    rtRestore: TRichEdit;
    Label1: TLabel;
    edRestore: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    SpeedButton1: TSpeedButton;
    procedure btCloseClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBackup: TfrmBackup;

implementation

uses CONT01;

{$R *.dfm}

procedure TfrmBackup.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmBackup.BitBtn1Click(Sender: TObject);
begin
  IBBackupService1.Active := False;
  IBBackupService1.DatabaseName := dm.IBDatabase.DatabaseName;
  IBBackupService1.BackupFile.Append(edBackup.Text);
  IBBackupService1.Active := True;
  IBBackupService1.ServiceStart;
  rtBackup.SetFocus;
  while not IBBackupService1.Eof do
  begin
    Application.ProcessMessages;
    rtBackup.Lines.Add(IBBackupService1.GetNextLine);
  end;
end;

procedure TfrmBackup.BitBtn2Click(Sender: TObject);
begin
  dm.IBDatabase.Connected := False;
  IBRestoreService1.Active := False;
  IBRestoreService1.DatabaseName.Append(dm.IBDatabase.DatabaseName);
  IBRestoreService1.BackupFile.Append(edRestore.text);
  IBRestoreService1.Active := True;
  IBRestoreService1.ServiceStart;
  rtRestore.SetFocus;
  while not IBRestoreService1.Eof do
  begin
    Application.ProcessMessages;
    rtRestore.Lines.Add(IBRestoreService1.GetNextLine);
  end;
  MessageDlg('LA APLICACION SE VA A CERRAR, DEBIDO A QUE SE HA'+#13+
             'ALTERADO LA BASE DE DATOS.',mtInformation,[mbok],0);
  Application.Terminate;
end;

procedure TfrmBackup.SpeedButton1Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
    edRestore.Text := OpenDialog1.FileName;
end;

end.
