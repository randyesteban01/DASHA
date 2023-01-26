unit SERV09;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, DBCtrls, Mask, ExtCtrls;

type
  TfrmDetalleTecnicoOS = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel1: TPanel;
    Label7: TLabel;
    Label9: TLabel;
    Label8: TLabel;
    tTecnico: TEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDetalleTecnicoOS: TfrmDetalleTecnicoOS;

implementation
uses SIGMA01,SERV02;
{$R *.dfm}

procedure TfrmDetalleTecnicoOS.BitBtn1Click(Sender: TObject);
begin
  frmOrdenServicio.QDetalle.Post;
  Close; 
end;

procedure TfrmDetalleTecnicoOS.BitBtn2Click(Sender: TObject);
begin        
  frmOrdenServicio.QDetalle.Cancel;
  Close;
end;

procedure TfrmDetalleTecnicoOS.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    if ActiveControl.classtype <> TDBRichEdit then
    begin
      perform(wm_nextdlgctl, 0, 0);
      key := #0;
    end;
  end;
end;

end.
