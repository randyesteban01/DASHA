unit SERV06;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, DBCtrls, Mask;

type
  TfrmDetalleTecnicoOS = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel1: TPanel;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    tTecnico: TEdit;
    Label9: TLabel;
    DBRichEdit2: TDBRichEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDetalleTecnicoOS: TfrmDetalleTecnicoOS;

implementation
    uses SERV02, SIGMA01;
{$R *.dfm}

procedure TfrmDetalleTecnicoOS.BitBtn2Click(Sender: TObject);
begin
  frmOrdenServicio.QDetalle.Cancel;
  Close;

end;

procedure TfrmDetalleTecnicoOS.BitBtn1Click(Sender: TObject);
begin
  frmOrdenServicio.QDetalle.Post;
  Close;
end;

end.
