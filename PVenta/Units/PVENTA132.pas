unit PVENTA132;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, Buttons, Grids, DBGrids, DB,
  IBCustomDataSet, IBQuery, ADODB;

type
  TfrmActividadCaja = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Fecha: TDateTimePicker;
    btClose: TBitBtn;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    Timer1: TTimer;
    QCajas: TADOQuery;
    dsCaja: TDataSource;
    QCajasTOTAL: TFloatField;
    QCajasUSU_NOMBRE: TIBStringField;
    btver: TSpeedButton;
    DBGrid2: TDBGrid;
    QTickets: TADOQuery;
    QCajasFECHA: TDateTimeField;
    QTicketsFECHA: TDateTimeField;
    QTicketsTICKET: TIntegerField;
    QTicketsTOTAL: TFloatField;
    dsTickets: TDataSource;
    QCajasUSU_codigo: TIntegerField;
    QTicketsUSU_codigo: TIntegerField;
    QCajasCAJA: TIntegerField;
    QTicketsCAJA: TIntegerField;
    QCajasIP: TStringField;
    procedure btCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btverClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmActividadCaja: TfrmActividadCaja;

implementation

uses SIGMA01;

{$R *.dfm}

procedure TfrmActividadCaja.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmActividadCaja.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmActividadCaja.Timer1Timer(Sender: TObject);
begin
  QCajas.DisableControls;
  QCajas.Close;
  QCajas.Parameters.ParamByName('fecha').DataType := ftDate;
  QCajas.Parameters.ParamByName('fecha').Value := Fecha.Date;
  QCajas.Open;
  QCajas.EnableControls;

  QTickets.Active := btver.Down;
  DBGrid2.Visible := btver.Down;
end;

procedure TfrmActividadCaja.FormCreate(Sender: TObject);
begin
  fecha.Date := date;
end;

procedure TfrmActividadCaja.BitBtn1Click(Sender: TObject);
begin
  Timer1Timer(self);
end;

procedure TfrmActividadCaja.btverClick(Sender: TObject);
begin
  Timer1Timer(self);
  Timer1.Enabled := not btver.Down;
end;

end.
