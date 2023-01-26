unit PVENTA82;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, IBCustomDataSet, IBQuery, StdCtrls, Buttons,
  ADODB;

type
  TfrmConsBalance = class(TForm)
    QCXC: TADOQuery;
    QCXCSaldo: TFloatField;
    QCXCFAC_FORMA: TIBStringField;
    QCXCMOV_ABONO: TFloatField;
    QCXCMOV_FECHA: TDateTimeField;
    QCXCMOV_MONTO: TFloatField;
    QCXCMOV_NUMERO: TIntegerField;
    QCXCMOV_TIPO: TIBStringField;
    QCXCTFA_CODIGO: TIntegerField;
    dsCXC: TDataSource;
    DBGrid3: TDBGrid;
    btClose: TBitBtn;
    QCXCMOV_FECHAVENCE: TDateTimeField;
    QCXCVencida: TStringField;
    Label1: TLabel;
    lbVencido: TStaticText;
    QCXCDIASFAC: TIntegerField;
    QCXCDIASVENC: TIntegerField;
    procedure QCXCCalcFields(DataSet: TDataSet);
    procedure btCloseClick(Sender: TObject);
    procedure QCXCAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsBalance: TfrmConsBalance;

implementation

uses SIGMA01;


{$R *.dfm}

procedure TfrmConsBalance.QCXCCalcFields(DataSet: TDataSet);
begin
  QCXCSaldo.value := QCXCMOV_MONTO.value - QCXCMOV_ABONO.value;
  if QCXCMOV_FECHAVENCE.Value <= Date then
    QCXCVencida.Value := 'Si'
  else
    QCXCVencida.Value := 'No';
end;

procedure TfrmConsBalance.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmConsBalance.QCXCAfterOpen(DataSet: TDataSet);
var
  TVencido : Double;
begin
  TVencido := 0;
  QCXC.DisableControls;
  QCXC.First;
  while not QCXC.Eof do
  begin
    if QCXCMOV_FECHAVENCE.Value <= Date then
      TVencido := TVencido + QCXCSaldo.Value;
    QCXC.Next;
  end;
  lbVencido.Caption := Format('%n',[TVencido]);
  QCXC.First;
  QCXC.EnableControls;
end;

end.
