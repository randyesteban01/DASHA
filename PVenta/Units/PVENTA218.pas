unit PVENTA218;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, StdCtrls, Buttons;

type
  TfrmFormaPagoTicket = class(TForm)
    QForma: TADOQuery;
    QFormacaja: TIntegerField;
    QFormausu_codigo: TIntegerField;
    QFormafecha: TDateTimeField;
    QFormaticket: TIntegerField;
    QFormaforma: TStringField;
    QFormapagado: TBCDField;
    QFormadevuelta: TBCDField;
    QFormaempresa: TIntegerField;
    QFormacredito: TStringField;
    QFormacliente: TIntegerField;
    QFormabanco: TStringField;
    QFormadocumento: TStringField;
    dsForma: TDataSource;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure QFormaNewRecord(DataSet: TDataSet);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFormaPagoTicket: TfrmFormaPagoTicket;

implementation

uses SIGMA01, PVENTA151;

{$R *.dfm}

procedure TfrmFormaPagoTicket.BitBtn1Click(Sender: TObject);
begin
  QForma.Edit;
  QForma.Post;
  QForma.UpdateBatch;
  Close;
end;

procedure TfrmFormaPagoTicket.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    if DBGrid1.SelectedIndex <> 2 then
      DBGrid1.SelectedIndex := DBGrid1.SelectedIndex + 1
    else
    begin
      DBGrid1.SelectedIndex := 0;
      QForma.Append;
    end;
  end;
end;

procedure TfrmFormaPagoTicket.QFormaNewRecord(DataSet: TDataSet);
begin
  QFormacaja.Value       := frmConsTicket.QTicketscaja.Value;
  QFormausu_codigo.Value := frmConsTicket.QTicketsusu_codigo.Value;
  QFormafecha.Value      := frmConsTicket.QTicketsfecha.Value;
  QFormaticket.Value     := frmConsTicket.QTicketsticket.Value;
  QFormadevuelta.Value   := 0;
  QFormapagado.Value     := 0;
  QFormaempresa.Value    := frmConsTicket.QTicketsemp_codigo.Value;
  QFormacredito.Value    := 'False';
end;

procedure TfrmFormaPagoTicket.BitBtn2Click(Sender: TObject);
begin
  QForma.Delete;
end;

end.
