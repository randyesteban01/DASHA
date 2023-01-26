unit PVENTA97;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Grids, DBGrids, IBCustomDataSet,
  IBUpdateSQL, DB, IBQuery, Buttons, ADODB;

type
  TfrmDevDinero = class(TForm)
    GridForma: TDBGrid;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    QFormasPago: TADOQuery;
    QFormasPagoForma: TStringField;
    QFormasPagoEMP_CODIGO: TIntegerField;
    QFormasPagoFOR_DESCRIPCION: TIBStringField;
    QFormasPagoFOR_MONTO: TFloatField;
    QFormasPagoFPA_CODIGO: TIntegerField;
    QFormasPagoDES_NUMERO: TIntegerField;
    dsFormaPago: TDataSource;
    QForma: TADOQuery;
    QFormaFPA_CODIGO: TIntegerField;
    QFormaFPA_NOMBRE: TIBStringField;
    dsForma: TDataSource;
    btClose: TBitBtn;
    Query1: TADOQuery;
    QFormasPagosuc_codigo: TIntegerField;
    procedure btCloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure QFormasPagoAfterInsert(DataSet: TDataSet);
    procedure QFormasPagoAfterPost(DataSet: TDataSet);
    procedure QFormasPagoBeforeDelete(DataSet: TDataSet);
    procedure QFormasPagoNewRecord(DataSet: TDataSet);
    procedure GridFormaColEnter(Sender: TObject);
    procedure GridFormaEnter(Sender: TObject);
    procedure GridFormaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    Total : Double;
    Ins, Totaliza : Boolean;
    procedure totalizar;
  end;

var
  frmDevDinero: TfrmDevDinero;

implementation

uses PVENTA23, SIGMA01;

{$R *.dfm}

procedure TfrmDevDinero.btCloseClick(Sender: TObject);
begin
  if StrToFloat(Format('%10.2f',[frmDevolucion.QDevolucionDEV_TOTAL.value])) <>
  StrToFloat(Format('%10.2f',[Total])) then
  begin
    MessageDlg('EL MONTO DIFIERE DEL TOTAL DE LA DEVOLUCION '+Format('%n',[frmDevolucion.QDevolucionDEV_TOTAL.value]),mtError,[mbok],0);
    GridForma.SetFocus;
  end
  else
    if MessageDlg('DESEA SALIR?',mtConfirmation,[mbyes,mbno],0) = mryes then
    begin
      btClose.SetFocus;
      Close;
    end
    else
      DBEdit1.SetFocus;
end;

procedure TfrmDevDinero.FormCreate(Sender: TObject);
begin
  Ins := True;
  Totaliza := True;
end;

procedure TfrmDevDinero.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if ssAlt in shift then key := 0;
end;

procedure TfrmDevDinero.QFormasPagoAfterInsert(DataSet: TDataSet);
begin
  if Ins = false then QFormasPago.cancel;
end;

procedure TfrmDevDinero.QFormasPagoAfterPost(DataSet: TDataSet);
begin
  if Totaliza = True then
    Totalizar;
end;

procedure TfrmDevDinero.QFormasPagoBeforeDelete(DataSet: TDataSet);
begin
  abort;
end;

procedure TfrmDevDinero.QFormasPagoNewRecord(DataSet: TDataSet);
begin
  QFormasPagoEMP_CODIGO.Value := dm.vp_cia;
  QFormasPagosuc_codigo.Value := frmDevolucion.QDevolucionsuc_codigo.Value;
end;

procedure TfrmDevDinero.GridFormaColEnter(Sender: TObject);
begin
  if GridForma.selectedindex = 0 then
     GridForma.selectedindex := 1;
end;

procedure TfrmDevDinero.GridFormaEnter(Sender: TObject);
begin
  GridForma.selectedindex := 1;
end;

procedure TfrmDevDinero.GridFormaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    QFormasPago.edit;
    QFormasPago.post;
  end;
end;

procedure TfrmDevDinero.totalizar;
var
  punt : TBookmark;
begin
  Total := 0;
  punt := QFormasPago.GetBookmark;
  QFormasPago.DisableControls;
  QFormasPago.first;
  while not QFormasPago.Eof do
  begin
    Total := Total + QFormasPagoFOR_MONTO.Value;
    QFormasPago.Next;
  end;
  QFormasPago.EnableControls;
  QFormasPago.GotoBookmark(punt);
  frmDevolucion.MontoDesem := Total;
end;

end.
